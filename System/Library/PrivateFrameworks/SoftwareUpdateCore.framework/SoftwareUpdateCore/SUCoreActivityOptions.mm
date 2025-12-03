@interface SUCoreActivityOptions
- (SUCoreActivityOptions)init;
- (SUCoreActivityOptions)initWithCoder:(id)coder;
- (id)_stringForPriority:(int)priority;
- (id)_stringForTriState:(int)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (SUCoreActivityOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SUCoreActivityOptions;
  v5 = [(SUCoreActivityOptions *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runDate"];
    runDate = v5->_runDate;
    v5->_runDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevelGreaterThan"];
    batteryLevelGreaterThan = v5->_batteryLevelGreaterThan;
    v5->_batteryLevelGreaterThan = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryLevelLessThan"];
    batteryLevelLessThan = v5->_batteryLevelLessThan;
    v5->_batteryLevelLessThan = v10;

    v5->_plugInState = [coderCopy decodeIntForKey:@"pluginState"];
    v5->_screenOnState = [coderCopy decodeIntForKey:@"screenOnState"];
    v5->_networkState = [coderCopy decodeIntForKey:@"networkState"];
    v5->_wifiState = [coderCopy decodeIntForKey:@"wifiState"];
    v5->_waking = [coderCopy decodeIntForKey:@"waking"];
    v5->_phoneCallState = [coderCopy decodeIntForKey:@"phoneCallState"];
    v5->_carplayState = [coderCopy decodeIntForKey:@"carplayState"];
    v5->_mediaPlayingState = [coderCopy decodeIntForKey:@"mediaPlayingState"];
    v5->_priority = [coderCopy decodeIntForKey:@"priority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  runDate = self->_runDate;
  coderCopy = coder;
  [coderCopy encodeObject:runDate forKey:@"runDate"];
  [coderCopy encodeObject:self->_batteryLevelGreaterThan forKey:@"batteryLevelGreaterThan"];
  [coderCopy encodeObject:self->_batteryLevelLessThan forKey:@"batteryLevelLessThan"];
  [coderCopy encodeInt:self->_plugInState forKey:@"pluginState"];
  [coderCopy encodeInt:self->_screenOnState forKey:@"screenOnState"];
  [coderCopy encodeInt:self->_networkState forKey:@"networkState"];
  [coderCopy encodeInt:self->_wifiState forKey:@"wifiState"];
  [coderCopy encodeInt:self->_waking forKey:@"waking"];
  [coderCopy encodeInt:self->_phoneCallState forKey:@"phoneCallState"];
  [coderCopy encodeInt:self->_carplayState forKey:@"carplayState"];
  [coderCopy encodeInt:self->_mediaPlayingState forKey:@"mediaPlayingState"];
  [coderCopy encodeInt:self->_mediaPlayingState forKey:@"priority"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  runDate = [(SUCoreActivityOptions *)self runDate];
  v7 = [runDate copyWithZone:zone];
  [v5 setRunDate:v7];

  batteryLevelGreaterThan = [(SUCoreActivityOptions *)self batteryLevelGreaterThan];
  v9 = [batteryLevelGreaterThan copyWithZone:zone];
  [v5 setBatteryLevelGreaterThan:v9];

  batteryLevelLessThan = [(SUCoreActivityOptions *)self batteryLevelLessThan];
  v11 = [batteryLevelLessThan copyWithZone:zone];
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

- (id)_stringForTriState:(int)state
{
  if (state > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27892D178[state];
  }
}

- (id)_stringForPriority:(int)priority
{
  v3 = @"Default(Utility)";
  if (priority == 1)
  {
    v3 = @"Maintenance";
  }

  if (priority == 2)
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