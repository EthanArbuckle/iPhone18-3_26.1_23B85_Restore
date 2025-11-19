@interface W5DebugConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDebugConfiguration:(id)a3;
- (W5DebugConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initDiagnosticsMode:(id)a3 wifiState:(int64_t)a4 megaWiFiProfileState:(int64_t)a5 noLoggingWiFiProfileState:(int64_t)a6 eapolState:(int64_t)a7 bluetoothState:(int64_t)a8;
- (id)initDiagnosticsMode:(id)a3 wifiState:(int64_t)a4 megaWiFiProfileState:(int64_t)a5 noLoggingWiFiProfileState:(int64_t)a6 eapolState:(int64_t)a7 bluetoothState:(int64_t)a8 stbcState:(int64_t)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5DebugConfiguration

- (id)initDiagnosticsMode:(id)a3 wifiState:(int64_t)a4 megaWiFiProfileState:(int64_t)a5 noLoggingWiFiProfileState:(int64_t)a6 eapolState:(int64_t)a7 bluetoothState:(int64_t)a8
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v21.receiver = self;
  v21.super_class = W5DebugConfiguration;
  v15 = [(W5DebugConfiguration *)&v21 init];
  if (v15)
  {
    v16 = [v14 copy];
    diagnosticsMode = v15->_diagnosticsMode;
    v15->_diagnosticsMode = v16;

    v15->_wifi = a4;
    v15->_megaWiFiProfile = a5;
    v15->_noLoggingWiFiProfile = a6;
    v15->_eapol = a7;
    v15->_bluetooth = a8;
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

- (id)initDiagnosticsMode:(id)a3 wifiState:(int64_t)a4 megaWiFiProfileState:(int64_t)a5 noLoggingWiFiProfileState:(int64_t)a6 eapolState:(int64_t)a7 bluetoothState:(int64_t)a8 stbcState:(int64_t)a9
{
  v29 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v22.receiver = self;
  v22.super_class = W5DebugConfiguration;
  v16 = [(W5DebugConfiguration *)&v22 init];
  if (v16)
  {
    v17 = [v15 copy];
    diagnosticsMode = v16->_diagnosticsMode;
    v16->_diagnosticsMode = v17;

    v16->_wifi = a4;
    v16->_megaWiFiProfile = a5;
    v16->_noLoggingWiFiProfile = a6;
    v16->_eapol = a7;
    v16->_bluetooth = a8;
    v16->_stbc = a9;
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

- (BOOL)isEqualToDebugConfiguration:(id)a3
{
  v4 = a3;
  wifi = self->_wifi;
  if (wifi == [v4 wifi] && (megaWiFiProfile = self->_megaWiFiProfile, megaWiFiProfile == objc_msgSend(v4, "megaWiFiProfile")) && (noLoggingWiFiProfile = self->_noLoggingWiFiProfile, noLoggingWiFiProfile == objc_msgSend(v4, "noLoggingWiFiProfile")) && (eapol = self->_eapol, eapol == objc_msgSend(v4, "eapol")) && (bluetooth = self->_bluetooth, bluetooth == objc_msgSend(v4, "bluetooth")))
  {
    stbc = self->_stbc;
    v11 = stbc == [v4 stbc];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5DebugConfiguration *)self isEqualToDebugConfiguration:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  wifi = self->_wifi;
  v5 = a3;
  [v5 encodeInteger:wifi forKey:@"_wifi"];
  [v5 encodeInteger:self->_megaWiFiProfile forKey:@"_megaWiFiProfile"];
  [v5 encodeInteger:self->_noLoggingWiFiProfile forKey:@"_noLoggingWiFiProfile"];
  [v5 encodeInteger:self->_eapol forKey:@"_eapol"];
  [v5 encodeInteger:self->_bluetooth forKey:@"_bluetooth"];
  [v5 encodeInteger:self->_stbc forKey:@"_stbc"];
  [v5 encodeObject:self->_diagnosticsMode forKey:@"_diagnosticsMode"];
}

- (W5DebugConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = W5DebugConfiguration;
  v5 = [(W5DebugConfiguration *)&v16 init];
  if (v5)
  {
    v5->_wifi = [v4 decodeIntegerForKey:@"_wifi"];
    v5->_megaWiFiProfile = [v4 decodeIntegerForKey:@"_megaWiFiProfile"];
    v5->_noLoggingWiFiProfile = [v4 decodeIntegerForKey:@"_noLoggingWiFiProfile"];
    v5->_eapol = [v4 decodeIntegerForKey:@"_eapol"];
    v5->_bluetooth = [v4 decodeIntegerForKey:@"_bluetooth"];
    v5->_stbc = [v4 decodeIntegerForKey:@"_stbc"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_diagnosticsMode"];
    diagnosticsMode = v5->_diagnosticsMode;
    v5->_diagnosticsMode = v13;
  }

  return v5;
}

@end