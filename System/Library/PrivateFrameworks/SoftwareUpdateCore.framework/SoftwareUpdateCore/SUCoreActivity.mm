@interface SUCoreActivity
+ (id)_predicateForKeyPath:(id)path equalToValue:(id)value;
+ (id)batteryLevelPredicateGreaterThan:(id)than;
+ (id)batteryLevelPredicateLessThan:(id)than;
+ (id)systemDatePredicate:(id)predicate;
- (BOOL)_BOOLForTriState:(int)state defaultValue:(BOOL)value;
- (BOOL)_mustWake;
- (BOOL)isEqual:(id)equal;
- (SUCoreActivity)initWithActivityName:(id)name options:(id)options;
- (SUCoreActivity)initWithCoder:(id)coder;
- (id)_clientIdentifier;
- (id)_stringForTriState:(int)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createContextualPredicate;
- (id)createRegistrationWithHandler:(id)handler;
- (id)description;
- (unsigned)_qualityOfService;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreActivity

- (SUCoreActivity)initWithActivityName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v24.receiver = self;
  v24.super_class = SUCoreActivity;
  v9 = [(SUCoreActivity *)&v24 init];
  if (v9)
  {
    if (objc_opt_class())
    {
      objc_storeStrong(&v9->_activityName, name);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      UUID = v9->_UUID;
      v9->_UUID = uUIDString;

      runDate = [optionsCopy runDate];
      runDate = v9->_runDate;
      v9->_runDate = runDate;

      batteryLevelGreaterThan = [optionsCopy batteryLevelGreaterThan];
      batteryLevelGreaterThan = v9->_batteryLevelGreaterThan;
      v9->_batteryLevelGreaterThan = batteryLevelGreaterThan;

      batteryLevelLessThan = [optionsCopy batteryLevelLessThan];
      batteryLevelLessThan = v9->_batteryLevelLessThan;
      v9->_batteryLevelLessThan = batteryLevelLessThan;

      if (optionsCopy)
      {
        v9->_plugInState = [optionsCopy plugInState];
        v9->_screenOnState = [optionsCopy screenOnState];
        v9->_networkState = [optionsCopy networkState];
        v9->_wifiState = [optionsCopy wifiState];
        v9->_phoneCallState = [optionsCopy phoneCallState];
        v9->_carplayState = [optionsCopy carplayState];
        v9->_mediaPlayingState = [optionsCopy mediaPlayingState];
        waking = [optionsCopy waking];
      }

      else
      {
        waking = 0;
        *&v9->_plugInState = 0;
        *&v9->_networkState = 0;
        v9->_mediaPlayingState = 0;
        *&v9->_phoneCallState = 0;
      }

      v9->_waking = waking;
    }

    else
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "CoreDuet Context Store symbols not recognized. Returning null SUCoreActivity", v23, 2u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)createRegistrationWithHandler:(id)handler
{
  v4 = MEMORY[0x277CFE348];
  handlerCopy = handler;
  activityName = [(SUCoreActivity *)self activityName];
  createContextualPredicate = [(SUCoreActivity *)self createContextualPredicate];
  _dismissalPredicate = [(SUCoreActivity *)self _dismissalPredicate];
  _deviceSet = [(SUCoreActivity *)self _deviceSet];
  _clientIdentifier = [(SUCoreActivity *)self _clientIdentifier];
  _mustWake = [(SUCoreActivity *)self _mustWake];
  LODWORD(v16) = [(SUCoreActivity *)self _qualityOfService];
  v12 = [v4 registrationWithIdentifier:activityName contextualPredicate:createContextualPredicate dismissalPolicy:_dismissalPredicate deviceSet:_deviceSet clientIdentifier:_clientIdentifier mustWake:_mustWake qualityOfService:v16 callback:handlerCopy];

  if (!v12)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create registration", buf, 2u);
    }
  }

  return v12;
}

- (BOOL)_mustWake
{
  waking = [(SUCoreActivity *)self waking];

  return [(SUCoreActivity *)self _BOOLForTriState:waking defaultValue:0];
}

- (unsigned)_qualityOfService
{
  runDate = [(SUCoreActivity *)self runDate];
  if (runDate)
  {
    v3 = 25;
  }

  else
  {
    v3 = 9;
  }

  return v3;
}

- (id)_clientIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)_BOOLForTriState:(int)state defaultValue:(BOOL)value
{
  if (state == 1)
  {
    value = 0;
  }

  return state == 2 || value;
}

- (id)createContextualPredicate
{
  v29 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  runDate = [(SUCoreActivity *)self runDate];

  if (runDate)
  {
    runDate2 = [(SUCoreActivity *)self runDate];
    v6 = [SUCoreActivity systemDatePredicate:runDate2];
    [array addObject:v6];
  }

  batteryLevelGreaterThan = [(SUCoreActivity *)self batteryLevelGreaterThan];

  if (batteryLevelGreaterThan)
  {
    batteryLevelGreaterThan2 = [(SUCoreActivity *)self batteryLevelGreaterThan];
    v9 = [SUCoreActivity batteryLevelPredicateGreaterThan:batteryLevelGreaterThan2];
    [array addObject:v9];
  }

  batteryLevelLessThan = [(SUCoreActivity *)self batteryLevelLessThan];

  if (batteryLevelLessThan)
  {
    batteryLevelLessThan2 = [(SUCoreActivity *)self batteryLevelLessThan];
    v12 = [SUCoreActivity batteryLevelPredicateLessThan:batteryLevelLessThan2];
    [array addObject:v12];
  }

  if ([(SUCoreActivity *)self plugInState])
  {
    v13 = [SUCoreActivity pluggedInPredicate:[(SUCoreActivity *)self plugInState]== 2];
    [array addObject:v13];
  }

  if ([(SUCoreActivity *)self screenOnState])
  {
    v14 = [SUCoreActivity backlightOnPredicate:[(SUCoreActivity *)self screenOnState]!= 0];
    [array addObject:v14];
  }

  if ([(SUCoreActivity *)self networkState])
  {
    v15 = [SUCoreActivity networkPredicate:[(SUCoreActivity *)self networkState]!= 0];
    [array addObject:v15];
  }

  if ([(SUCoreActivity *)self wifiState])
  {
    v16 = [SUCoreActivity wifiAvailablePredicate:[(SUCoreActivity *)self wifiState]!= 0];
    [array addObject:v16];
  }

  if ([(SUCoreActivity *)self phoneCallState])
  {
    v17 = [SUCoreActivity phoneCallPredicate:[(SUCoreActivity *)self phoneCallState]!= 0];
    [array addObject:v17];
  }

  if ([(SUCoreActivity *)self carplayState])
  {
    v18 = [SUCoreActivity carplayPredicate:[(SUCoreActivity *)self carplayState]!= 0];
    [array addObject:v18];
  }

  if ([(SUCoreActivity *)self mediaPlayingState])
  {
    v19 = [SUCoreActivity mediaPlayingPredicate:[(SUCoreActivity *)self mediaPlayingState]!= 0];
    [array addObject:v19];
  }

  v20 = [MEMORY[0x277CFE368] andPredicateWithSubpredicates:array];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create _CDContextualPredicate for SUActivity: %{public}@", &v27, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_stringForTriState:(int)state
{
  if (state > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27892DE50[state];
  }
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  activityName = [(SUCoreActivity *)self activityName];
  uUID = [(SUCoreActivity *)self UUID];
  v3 = MEMORY[0x277CCA968];
  runDate = [(SUCoreActivity *)self runDate];
  v18 = [v3 localizedStringFromDate:runDate dateStyle:1 timeStyle:2];
  batteryLevelLessThan = [(SUCoreActivity *)self batteryLevelLessThan];
  batteryLevelLessThan2 = [(SUCoreActivity *)self batteryLevelLessThan];
  v5 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self plugInState]];
  v6 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self screenOnState]];
  v7 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self networkState]];
  v8 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self wifiState]];
  v9 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self phoneCallState]];
  v10 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self carplayState]];
  v11 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self mediaPlayingState]];
  v12 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self waking]];
  v16 = [v15 stringWithFormat:@"\n            ActivityName:       %@\n            UUID:               %@\n            runDate:            %@\n            batteryLevelGT:     %@\n            batteryLevelLT:     %@\n            plugInState:        %@\n            screenOnState:      %@\n            networkState:       %@\n            wifiState:          %@\n            phonecallState:     %@\n            carplayState:       %@\n            mediaPlayingState:  %@\n            waking:             %@\n", activityName, uUID, v18, batteryLevelLessThan, batteryLevelLessThan2, v5, v6, v7, v8, v9, v10, v11, v12];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x277D643F8];
      activityName = [(SUCoreActivity *)self activityName];
      activityName2 = [(SUCoreActivity *)v5 activityName];
      if ([v6 stringIsEqual:activityName to:activityName2])
      {
        v9 = MEMORY[0x277D643F8];
        uUID = [(SUCoreActivity *)self UUID];
        uUID2 = [(SUCoreActivity *)v5 UUID];
        if ([v9 stringIsEqual:uUID to:uUID2])
        {
          v12 = MEMORY[0x277D643F8];
          runDate = [(SUCoreActivity *)self runDate];
          runDate2 = [(SUCoreActivity *)v5 runDate];
          v34 = runDate;
          if ([v12 dateIsEqual:runDate to:runDate2])
          {
            v14 = MEMORY[0x277D643F8];
            batteryLevelGreaterThan = [(SUCoreActivity *)self batteryLevelGreaterThan];
            batteryLevelGreaterThan2 = [(SUCoreActivity *)v5 batteryLevelGreaterThan];
            v32 = batteryLevelGreaterThan;
            v17 = batteryLevelGreaterThan;
            v18 = batteryLevelGreaterThan2;
            if ([v14 numberIsEqual:v17 to:batteryLevelGreaterThan2])
            {
              v19 = MEMORY[0x277D643F8];
              batteryLevelLessThan = [(SUCoreActivity *)self batteryLevelLessThan];
              batteryLevelLessThan2 = [(SUCoreActivity *)v5 batteryLevelLessThan];
              if ([v19 numberIsEqual:batteryLevelLessThan to:?] && (v21 = -[SUCoreActivity plugInState](self, "plugInState"), v21 == -[SUCoreActivity plugInState](v5, "plugInState")) && (v22 = -[SUCoreActivity screenOnState](self, "screenOnState"), v22 == -[SUCoreActivity screenOnState](v5, "screenOnState")) && (v23 = -[SUCoreActivity networkState](self, "networkState"), v23 == -[SUCoreActivity networkState](v5, "networkState")) && (v24 = -[SUCoreActivity wifiState](self, "wifiState"), v24 == -[SUCoreActivity wifiState](v5, "wifiState")) && (v25 = -[SUCoreActivity waking](self, "waking"), v25 == -[SUCoreActivity waking](v5, "waking")) && (v26 = -[SUCoreActivity phoneCallState](self, "phoneCallState"), v26 == -[SUCoreActivity phoneCallState](v5, "phoneCallState")) && (v27 = -[SUCoreActivity carplayState](self, "carplayState"), v27 == -[SUCoreActivity carplayState](v5, "carplayState")))
              {
                mediaPlayingState = [(SUCoreActivity *)self mediaPlayingState];
                v29 = mediaPlayingState == [(SUCoreActivity *)v5 mediaPlayingState];
              }

              else
              {
                v29 = 0;
              }
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

+ (id)batteryLevelPredicateGreaterThan:(id)than
{
  v3 = MEMORY[0x277CFE368];
  v4 = MEMORY[0x277CFE330];
  thanCopy = than;
  keyPathForBatteryLevel = [v4 keyPathForBatteryLevel];
  keyPathForBatteryLevel2 = [MEMORY[0x277CFE330] keyPathForBatteryLevel];
  thanCopy = [v3 predicateForKeyPath:keyPathForBatteryLevel withFormat:@"self.%@.value > %@", keyPathForBatteryLevel2, thanCopy];

  if (thanCopy)
  {
    v9 = thanCopy;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create battery level greater than _CDContextualPredicate", buf, 2u);
    }
  }

  return thanCopy;
}

+ (id)batteryLevelPredicateLessThan:(id)than
{
  v3 = MEMORY[0x277CFE368];
  v4 = MEMORY[0x277CFE330];
  thanCopy = than;
  keyPathForBatteryLevel = [v4 keyPathForBatteryLevel];
  keyPathForBatteryLevel2 = [MEMORY[0x277CFE330] keyPathForBatteryLevel];
  thanCopy = [v3 predicateForKeyPath:keyPathForBatteryLevel withFormat:@"self.%@.value < %@", keyPathForBatteryLevel2, thanCopy];

  if (thanCopy)
  {
    v9 = thanCopy;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create battery level less than _CDContextualPredicate", buf, 2u);
    }
  }

  return thanCopy;
}

+ (id)systemDatePredicate:(id)predicate
{
  v3 = [MEMORY[0x277CFE330] predicateForSystemTime:predicate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create system date _CDContextualPredicate", v9, 2u);
    }
  }

  return v4;
}

+ (id)_predicateForKeyPath:(id)path equalToValue:(id)value
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = [MEMORY[0x277CFE368] predicateForKeyPath:pathCopy equalToValue:value];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [pathCopy description];
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Failed to create _CDContextualPredicate for keyPath: %{public}@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SUCoreActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SUCoreActivity;
  v5 = [(SUCoreActivity *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"activityKey"];
    [(SUCoreActivity *)v5 setActivityName:v6];

    v7 = [coderCopy decodeObjectForKey:@"uuid"];
    [(SUCoreActivity *)v5 setUUID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runDate"];
    [(SUCoreActivity *)v5 setRunDate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryLessThan"];
    [(SUCoreActivity *)v5 setBatteryLevelGreaterThan:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryGreaterThan"];
    [(SUCoreActivity *)v5 setBatteryLevelLessThan:v10];

    -[SUCoreActivity setWaking:](v5, "setWaking:", [coderCopy decodeIntegerForKey:@"waking"]);
    -[SUCoreActivity setPlugInState:](v5, "setPlugInState:", [coderCopy decodeIntegerForKey:@"plugInState"]);
    -[SUCoreActivity setScreenOnState:](v5, "setScreenOnState:", [coderCopy decodeIntegerForKey:@"screenOn"]);
    -[SUCoreActivity setNetworkState:](v5, "setNetworkState:", [coderCopy decodeIntegerForKey:@"network"]);
    -[SUCoreActivity setWifiState:](v5, "setWifiState:", [coderCopy decodeIntegerForKey:@"wifi"]);
    -[SUCoreActivity setPhoneCallState:](v5, "setPhoneCallState:", [coderCopy decodeIntegerForKey:@"phoneCall"]);
    -[SUCoreActivity setCarplayState:](v5, "setCarplayState:", [coderCopy decodeIntegerForKey:@"carplay"]);
    -[SUCoreActivity setMediaPlayingState:](v5, "setMediaPlayingState:", [coderCopy decodeIntegerForKey:@"media"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityName = [(SUCoreActivity *)self activityName];
  [coderCopy encodeObject:activityName forKey:@"activityKey"];

  uUID = [(SUCoreActivity *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"uuid"];

  runDate = [(SUCoreActivity *)self runDate];
  [coderCopy encodeObject:runDate forKey:@"runDate"];

  batteryLevelGreaterThan = [(SUCoreActivity *)self batteryLevelGreaterThan];
  [coderCopy encodeObject:batteryLevelGreaterThan forKey:@"batteryGreaterThan"];

  batteryLevelLessThan = [(SUCoreActivity *)self batteryLevelLessThan];
  [coderCopy encodeObject:batteryLevelLessThan forKey:@"batteryLessThan"];

  [coderCopy encodeInteger:-[SUCoreActivity waking](self forKey:{"waking"), @"waking"}];
  [coderCopy encodeInteger:-[SUCoreActivity plugInState](self forKey:{"plugInState"), @"plugInState"}];
  [coderCopy encodeInteger:-[SUCoreActivity screenOnState](self forKey:{"screenOnState"), @"screenOn"}];
  [coderCopy encodeInteger:-[SUCoreActivity networkState](self forKey:{"networkState"), @"network"}];
  [coderCopy encodeInteger:-[SUCoreActivity wifiState](self forKey:{"wifiState"), @"wifi"}];
  [coderCopy encodeInteger:-[SUCoreActivity phoneCallState](self forKey:{"phoneCallState"), @"phoneCall"}];
  [coderCopy encodeInteger:-[SUCoreActivity carplayState](self forKey:{"carplayState"), @"carplay"}];
  [coderCopy encodeInteger:-[SUCoreActivity mediaPlayingState](self forKey:{"mediaPlayingState"), @"media"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  activityName = [(SUCoreActivity *)self activityName];
  v7 = [activityName copyWithZone:zone];
  [v5 setActivityName:v7];

  uUID = [(SUCoreActivity *)self UUID];
  v9 = [uUID copyWithZone:zone];
  [v5 setUUID:v9];

  runDate = [(SUCoreActivity *)self runDate];
  v11 = [runDate copyWithZone:zone];
  [v5 setRunDate:v11];

  batteryLevelGreaterThan = [(SUCoreActivity *)self batteryLevelGreaterThan];
  v13 = [batteryLevelGreaterThan copyWithZone:zone];
  [v5 setBatteryLevelGreaterThan:v13];

  batteryLevelLessThan = [(SUCoreActivity *)self batteryLevelLessThan];
  v15 = [batteryLevelLessThan copyWithZone:zone];
  [v5 setBatteryLevelLessThan:v15];

  [v5 setWaking:{-[SUCoreActivity waking](self, "waking")}];
  [v5 setPlugInState:{-[SUCoreActivity plugInState](self, "plugInState")}];
  [v5 setScreenOnState:{-[SUCoreActivity screenOnState](self, "screenOnState")}];
  [v5 setNetworkState:{-[SUCoreActivity networkState](self, "networkState")}];
  [v5 setWifiState:{-[SUCoreActivity wifiState](self, "wifiState")}];
  [v5 setPhoneCallState:{-[SUCoreActivity phoneCallState](self, "phoneCallState")}];
  [v5 setCarplayState:{-[SUCoreActivity carplayState](self, "carplayState")}];
  [v5 setMediaPlayingState:{-[SUCoreActivity mediaPlayingState](self, "mediaPlayingState")}];
  return v5;
}

@end