@interface W5DebugConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDebugConfiguration:(id)configuration;
- (W5DebugConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initDiagnosticsMode:(id)mode wifiState:(int64_t)state megaWiFiProfileState:(int64_t)profileState noLoggingWiFiProfileState:(int64_t)fiProfileState eapolState:(int64_t)eapolState bluetoothState:(int64_t)bluetoothState;
- (id)initDiagnosticsMode:(id)mode wifiState:(int64_t)state megaWiFiProfileState:(int64_t)profileState noLoggingWiFiProfileState:(int64_t)fiProfileState eapolState:(int64_t)eapolState bluetoothState:(int64_t)bluetoothState stbcState:(int64_t)stbcState;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5DebugConfiguration

- (id)initDiagnosticsMode:(id)mode wifiState:(int64_t)state megaWiFiProfileState:(int64_t)profileState noLoggingWiFiProfileState:(int64_t)fiProfileState eapolState:(int64_t)eapolState bluetoothState:(int64_t)bluetoothState
{
  v28 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v21.receiver = self;
  v21.super_class = W5DebugConfiguration;
  v15 = [(W5DebugConfiguration *)&v21 init];
  if (v15)
  {
    v16 = [modeCopy copy];
    diagnosticsMode = v15->_diagnosticsMode;
    v15->_diagnosticsMode = v16;

    v15->_wifi = state;
    v15->_megaWiFiProfile = profileState;
    v15->_noLoggingWiFiProfile = fiProfileState;
    v15->_eapol = eapolState;
    v15->_bluetooth = bluetoothState;
    v15->_stbc = 0;
  }

  else
  {
    v20 = W5GetOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315650;
      v23 = "[W5DebugConfiguration initDiagnosticsMode:wifiState:megaWiFiProfileState:noLoggingWiFiProfileState:eapolState:bluetoothState:]";
      v24 = 2080;
      v25 = "W5DebugConfiguration.m";
      v26 = 1024;
      v27 = 31;
      _os_log_send_and_compose_impl();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)initDiagnosticsMode:(id)mode wifiState:(int64_t)state megaWiFiProfileState:(int64_t)profileState noLoggingWiFiProfileState:(int64_t)fiProfileState eapolState:(int64_t)eapolState bluetoothState:(int64_t)bluetoothState stbcState:(int64_t)stbcState
{
  v29 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v22.receiver = self;
  v22.super_class = W5DebugConfiguration;
  v16 = [(W5DebugConfiguration *)&v22 init];
  if (v16)
  {
    v17 = [modeCopy copy];
    diagnosticsMode = v16->_diagnosticsMode;
    v16->_diagnosticsMode = v17;

    v16->_wifi = state;
    v16->_megaWiFiProfile = profileState;
    v16->_noLoggingWiFiProfile = fiProfileState;
    v16->_eapol = eapolState;
    v16->_bluetooth = bluetoothState;
    v16->_stbc = stbcState;
  }

  else
  {
    v21 = W5GetOSLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[W5DebugConfiguration initDiagnosticsMode:wifiState:megaWiFiProfileState:noLoggingWiFiProfileState:eapolState:bluetoothState:stbcState:]";
      v25 = 2080;
      v26 = "W5DebugConfiguration.m";
      v27 = 1024;
      v28 = 55;
      _os_log_send_and_compose_impl();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v4 = W5DescriptionForLogState(self->_wifi);
  [v3 appendFormat:@"WiFi: %@\n", v4];

  v5 = W5DescriptionForLogState(self->_megaWiFiProfile);
  [v3 appendFormat:@"Mega WiFi Profile: %@\n", v5];

  v6 = W5DescriptionForLogState(self->_noLoggingWiFiProfile);
  [v3 appendFormat:@"No Logging WiFi Profile: %@\n", v6];

  v7 = W5DescriptionForLogState(self->_eapol);
  [v3 appendFormat:@"EAPOL: %@\n", v7];

  v8 = W5DescriptionForLogState(self->_bluetooth);
  [v3 appendFormat:@"Bluetooth: %@\n", v8];

  v9 = W5DescriptionForDiagnosticsState([(W5DiagnosticsMode *)self->_diagnosticsMode state]);
  [v3 appendFormat:@"STBC: %@\n", v9];

  v10 = W5DescriptionForDiagnosticsState([(W5DiagnosticsMode *)self->_diagnosticsMode state]);
  [v3 appendFormat:@"Diagnostics Mode: %@\n", v10];

  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqualToDebugConfiguration:(id)configuration
{
  configurationCopy = configuration;
  wifi = self->_wifi;
  if (wifi == [configurationCopy wifi] && (megaWiFiProfile = self->_megaWiFiProfile, megaWiFiProfile == objc_msgSend(configurationCopy, "megaWiFiProfile")) && (noLoggingWiFiProfile = self->_noLoggingWiFiProfile, noLoggingWiFiProfile == objc_msgSend(configurationCopy, "noLoggingWiFiProfile")) && (eapol = self->_eapol, eapol == objc_msgSend(configurationCopy, "eapol")) && (bluetooth = self->_bluetooth, bluetooth == objc_msgSend(configurationCopy, "bluetooth")))
  {
    stbc = self->_stbc;
    v11 = stbc == [configurationCopy stbc];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5DebugConfiguration *)self isEqualToDebugConfiguration:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_wifi];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_megaWiFiProfile];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_noLoggingWiFiProfile];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_eapol];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_bluetooth];
  v12 = [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_stbc];
  v14 = v12 ^ [v13 hash];
  v15 = v14 ^ [(W5DiagnosticsMode *)self->_diagnosticsMode hash];

  return v10 ^ v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5DebugConfiguration allocWithZone:?]];
  [(W5DebugConfiguration *)v4 setWifi:self->_wifi];
  [(W5DebugConfiguration *)v4 setMegaWiFiProfile:self->_megaWiFiProfile];
  [(W5DebugConfiguration *)v4 setNoLoggingWiFiProfile:self->_noLoggingWiFiProfile];
  [(W5DebugConfiguration *)v4 setEapol:self->_eapol];
  [(W5DebugConfiguration *)v4 setBluetooth:self->_bluetooth];
  [(W5DebugConfiguration *)v4 setDiagnosticsMode:self->_diagnosticsMode];
  [(W5DebugConfiguration *)v4 setStbc:self->_stbc];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  wifi = self->_wifi;
  coderCopy = coder;
  [coderCopy encodeInteger:wifi forKey:@"_wifi"];
  [coderCopy encodeInteger:self->_megaWiFiProfile forKey:@"_megaWiFiProfile"];
  [coderCopy encodeInteger:self->_noLoggingWiFiProfile forKey:@"_noLoggingWiFiProfile"];
  [coderCopy encodeInteger:self->_eapol forKey:@"_eapol"];
  [coderCopy encodeInteger:self->_bluetooth forKey:@"_bluetooth"];
  [coderCopy encodeInteger:self->_stbc forKey:@"_stbc"];
  [coderCopy encodeObject:self->_diagnosticsMode forKey:@"_diagnosticsMode"];
}

- (W5DebugConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = W5DebugConfiguration;
  v5 = [(W5DebugConfiguration *)&v16 init];
  if (v5)
  {
    v5->_wifi = [coderCopy decodeIntegerForKey:@"_wifi"];
    v5->_megaWiFiProfile = [coderCopy decodeIntegerForKey:@"_megaWiFiProfile"];
    v5->_noLoggingWiFiProfile = [coderCopy decodeIntegerForKey:@"_noLoggingWiFiProfile"];
    v5->_eapol = [coderCopy decodeIntegerForKey:@"_eapol"];
    v5->_bluetooth = [coderCopy decodeIntegerForKey:@"_bluetooth"];
    v5->_stbc = [coderCopy decodeIntegerForKey:@"_stbc"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_diagnosticsMode"];
    diagnosticsMode = v5->_diagnosticsMode;
    v5->_diagnosticsMode = v13;
  }

  return v5;
}

@end