@interface SUCoreActivityOptions
- (SUCoreActivityOptions)init;
- (SUCoreActivityOptions)initWithCoder:(id)a3;
- (id)_stringForPriority:(int)a3;
- (id)_stringForTriState:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreActivityOptions

- (SUCoreActivityOptions)init
{
  v8.receiver = self;
  v8.super_class = SUCoreActivityOptions;
  v2 = [(SUCoreActivityOptions *)&v8 init];
  v3 = v2;
  if (v2)
  {
    runDate = v2->_runDate;
    v2->_runDate = 0;

    batteryLevelGreaterThan = v3->_batteryLevelGreaterThan;
    v3->_batteryLevelGreaterThan = 0;

    batteryLevelLessThan = v3->_batteryLevelLessThan;
    v3->_batteryLevelLessThan = 0;

    v3->_priority = 0;
    *&v3->_plugInState = 0u;
    *&v3->_waking = 0u;
  }

  return v3;
}

- (SUCoreActivityOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUCoreActivityOptions;
  v5 = [(SUCoreActivityOptions *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runDate"];
    runDate = v5->_runDate;
    v5->_runDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevelGreaterThan"];
    batteryLevelGreaterThan = v5->_batteryLevelGreaterThan;
    v5->_batteryLevelGreaterThan = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevelLessThan"];
    batteryLevelLessThan = v5->_batteryLevelLessThan;
    v5->_batteryLevelLessThan = v10;

    v5->_plugInState = [v4 decodeIntForKey:@"pluginState"];
    v5->_screenOnState = [v4 decodeIntForKey:@"screenOnState"];
    v5->_networkState = [v4 decodeIntForKey:@"networkState"];
    v5->_wifiState = [v4 decodeIntForKey:@"wifiState"];
    v5->_waking = [v4 decodeIntForKey:@"waking"];
    v5->_phoneCallState = [v4 decodeIntForKey:@"phoneCallState"];
    v5->_carplayState = [v4 decodeIntForKey:@"carplayState"];
    v5->_mediaPlayingState = [v4 decodeIntForKey:@"mediaPlayingState"];
    v5->_priority = [v4 decodeIntForKey:@"priority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  runDate = self->_runDate;
  v5 = a3;
  [v5 encodeObject:runDate forKey:@"runDate"];
  [v5 encodeObject:self->_batteryLevelGreaterThan forKey:@"batteryLevelGreaterThan"];
  [v5 encodeObject:self->_batteryLevelLessThan forKey:@"batteryLevelLessThan"];
  [v5 encodeInt:self->_plugInState forKey:@"pluginState"];
  [v5 encodeInt:self->_screenOnState forKey:@"screenOnState"];
  [v5 encodeInt:self->_networkState forKey:@"networkState"];
  [v5 encodeInt:self->_wifiState forKey:@"wifiState"];
  [v5 encodeInt:self->_waking forKey:@"waking"];
  [v5 encodeInt:self->_phoneCallState forKey:@"phoneCallState"];
  [v5 encodeInt:self->_carplayState forKey:@"carplayState"];
  [v5 encodeInt:self->_mediaPlayingState forKey:@"mediaPlayingState"];
  [v5 encodeInt:self->_mediaPlayingState forKey:@"priority"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SUCoreActivityOptions *)self runDate];
  v7 = [v6 copyWithZone:a3];
  [v5 setRunDate:v7];

  v8 = [(SUCoreActivityOptions *)self batteryLevelGreaterThan];
  v9 = [v8 copyWithZone:a3];
  [v5 setBatteryLevelGreaterThan:v9];

  v10 = [(SUCoreActivityOptions *)self batteryLevelLessThan];
  v11 = [v10 copyWithZone:a3];
  [v5 setBatteryLevelLessThan:v11];

  [v5 setPlugInState:{-[SUCoreActivityOptions plugInState](self, "plugInState")}];
  [v5 setScreenOnState:{-[SUCoreActivityOptions screenOnState](self, "screenOnState")}];
  [v5 setNetworkState:{-[SUCoreActivityOptions networkState](self, "networkState")}];
  [v5 setWifiState:{-[SUCoreActivityOptions wifiState](self, "wifiState")}];
  [v5 setWaking:{-[SUCoreActivityOptions waking](self, "waking")}];
  [v5 setPhoneCallState:{-[SUCoreActivityOptions phoneCallState](self, "phoneCallState")}];
  [v5 setCarplayState:{-[SUCoreActivityOptions carplayState](self, "carplayState")}];
  [v5 setMediaPlayingState:{-[SUCoreActivityOptions mediaPlayingState](self, "mediaPlayingState")}];
  [v5 setPriority:{-[SUCoreActivityOptions priority](self, "priority")}];
  return v5;
}

- (id)_stringForTriState:(int)a3
{
  if (a3 > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27892D178[a3];
  }
}

- (id)_stringForPriority:(int)a3
{
  v3 = @"Default(Utility)";
  if (a3 == 1)
  {
    v3 = @"Maintenance";
  }

  if (a3 == 2)
  {
    return @"Utility";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277D643F8] stringFromDate:self->_runDate];
  batteryLevelGreaterThan = self->_batteryLevelGreaterThan;
  if (!batteryLevelGreaterThan)
  {
    batteryLevelGreaterThan = @"NOT_SET";
  }

  v16 = batteryLevelGreaterThan;
  if (self->_batteryLevelLessThan)
  {
    batteryLevelLessThan = self->_batteryLevelLessThan;
  }

  else
  {
    batteryLevelLessThan = @"NOT_SET";
  }

  v15 = [(SUCoreActivityOptions *)self _stringForTriState:self->_plugInState];
  v5 = [(SUCoreActivityOptions *)self _stringForTriState:self->_screenOnState];
  v6 = [(SUCoreActivityOptions *)self _stringForTriState:self->_networkState];
  v7 = [(SUCoreActivityOptions *)self _stringForTriState:self->_wifiState];
  v8 = [(SUCoreActivityOptions *)self _stringForTriState:self->_waking];
  v9 = [(SUCoreActivityOptions *)self _stringForTriState:self->_phoneCallState];
  v10 = [(SUCoreActivityOptions *)self _stringForTriState:self->_carplayState];
  v11 = [(SUCoreActivityOptions *)self _stringForTriState:self->_mediaPlayingState];
  v12 = [(SUCoreActivityOptions *)self _stringForPriority:self->_priority];
  v13 = [v18 stringWithFormat:@"RunDate: %@ BatteryLevelGreaterThan: %@ BatteryLevelLessThan: %@ PluginState: %@ ScreenOnState: %@ NetworkState: %@ WifiState: %@ Waking: %@ PhoneCallState: %@ CarplayState: %@ MediaPlayingState: %@ Priority: %@", v17, v16, batteryLevelLessThan, v15, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end