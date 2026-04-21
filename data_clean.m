% g = 9.80665;                            % m/s^2
% plate = 0.134 * g;                      % N
% nuts = 5;                               % N
% m = plate + (nuts * (0.038 * g));       % N
% c = 0.00002;                              % N/
% k = 34;                                 % N/m
% init_mills = 30;                        % mm
% init = init_mills * 1e-3;               % m


% % --- Physical Constants (Millimeter Scale) ---
% g = 9806.65;                            % mm/s^2 (multiplied by 1000)
% 
% % --- Mass Calculation (kg) ---
% m_plate = 0.134; 
% m_nut   = 0.038;
% m = m_plate + (5 * m_nut);  % Result: 0.324 kg
% 
% % --- System Properties ---
% % k [N/m] / 1000 = [N/mm]
% k = 34 / 1000;                          % 0.034 N/mm
% 
% % c [N*s/m] / 1000 = [N*s/mm]
% c = 0.00002 / 1000;                     % 2e-8 N*s/mm
% 
% % --- Initial Conditions ---
% init = 30;                              % 30 mm


% --- Mass (Standard kg) ---
m_plate = 0.134;                        
m_nut   = 0.038;                        
m = m_plate + (5 * m_nut);              % 0.324 kg

% --- Gravity (Scaled to mm/s^2) ---
g_accel = 9806.65;                      % mm/s^2
F_gravity = m * g_accel;                % 3177.35 scaled force units
ext_force = F_gravity;

% --- Coefficients (Scaled for mm output) ---
% These values result in forces of [kg * mm/s^2]
k = 29.32750224;                        
c = 0.008;

% --- Initial Conditions ---
init = 30;                              % 30 mm