@interface SUCoreActivity
+ (id)_predicateForKeyPath:(id)a3 equalToValue:(id)a4;
+ (id)batteryLevelPredicateGreaterThan:(id)a3;
+ (id)batteryLevelPredicateLessThan:(id)a3;
+ (id)systemDatePredicate:(id)a3;
- (BOOL)_BOOLForTriState:(int)a3 defaultValue:(BOOL)a4;
- (BOOL)_mustWake;
- (BOOL)isEqual:(id)a3;
- (SUCoreActivity)initWithActivityName:(id)a3 options:(id)a4;
- (SUCoreActivity)initWithCoder:(id)a3;
- (id)_clientIdentifier;
- (id)_stringForTriState:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createContextualPredicate;
- (id)createRegistrationWithHandler:(id)a3;
- (id)description;
- (unsigned)_qualityOfService;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreActivity

- (SUCoreActivity)initWithActivityName:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = SUCoreActivity;
  v9 = [(SUCoreActivity *)&v24 init];
  if (v9)
  {
    if (objc_opt_class())
    {
      objc_storeStrong(&v9->_activityName, a3);
      v10 = [MEMORY[0x277CCAD78] UUID];
      v11 = [v10 UUIDString];
      UUID = v9->_UUID;
      v9->_UUID = v11;

      v13 = [v8 runDate];
      runDate = v9->_runDate;
      v9->_runDate = v13;

      v15 = [v8 batteryLevelGreaterThan];
      batteryLevelGreaterThan = v9->_batteryLevelGreaterThan;
      v9->_batteryLevelGreaterThan = v15;

      v17 = [v8 batteryLevelLessThan];
      batteryLevelLessThan = v9->_batteryLevelLessThan;
      v9->_batteryLevelLessThan = v17;

      if (v8)
      {
        v9->_plugInState = [v8 plugInState];
        v9->_screenOnState = [v8 screenOnState];
        v9->_networkState = [v8 networkState];
        v9->_wifiState = [v8 wifiState];
        v9->_phoneCallState = [v8 phoneCallState];
        v9->_carplayState = [v8 carplayState];
        v9->_mediaPlayingState = [v8 mediaPlayingState];
        v19 = [v8 waking];
      }

      else
      {
        v19 = 0;
        *&v9->_plugInState = 0;
        *&v9->_networkState = 0;
        v9->_mediaPlayingState = 0;
        *&v9->_phoneCallState = 0;
      }

      v9->_waking = v19;
    }

    else
    {
      v20 = [MEMORY[0x277D64460] sharedLogger];
      v21 = [v20 oslog];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_23193C000, v21, OS_LOG_TYPE_DEFAULT, "CoreDuet Context Store symbols not recognized. Returning null SUCoreActivity", v23, 2u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)createRegistrationWithHandler:(id)a3
{
  v4 = MEMORY[0x277CFE348];
  v5 = a3;
  v6 = [(SUCoreActivity *)self activityName];
  v7 = [(SUCoreActivity *)self createContextualPredicate];
  v8 = [(SUCoreActivity *)self _dismissalPredicate];
  v9 = [(SUCoreActivity *)self _deviceSet];
  v10 = [(SUCoreActivity *)self _clientIdentifier];
  v11 = [(SUCoreActivity *)self _mustWake];
  LODWORD(v16) = [(SUCoreActivity *)self _qualityOfService];
  v12 = [v4 registrationWithIdentifier:v6 contextualPredicate:v7 dismissalPolicy:v8 deviceSet:v9 clientIdentifier:v10 mustWake:v11 qualityOfService:v16 callback:v5];

  if (!v12)
  {
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create registration", buf, 2u);
    }
  }

  return v12;
}

- (BOOL)_mustWake
{
  v3 = [(SUCoreActivity *)self waking];

  return [(SUCoreActivity *)self _BOOLForTriState:v3 defaultValue:0];
}

- (unsigned)_qualityOfService
{
  v2 = [(SUCoreActivity *)self runDate];
  if (v2)
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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (BOOL)_BOOLForTriState:(int)a3 defaultValue:(BOOL)a4
{
  if (a3 == 1)
  {
    a4 = 0;
  }

  return a3 == 2 || a4;
}

- (id)createContextualPredicate
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SUCoreActivity *)self runDate];

  if (v4)
  {
    v5 = [(SUCoreActivity *)self runDate];
    v6 = [SUCoreActivity systemDatePredicate:v5];
    [v3 addObject:v6];
  }

  v7 = [(SUCoreActivity *)self batteryLevelGreaterThan];

  if (v7)
  {
    v8 = [(SUCoreActivity *)self batteryLevelGreaterThan];
    v9 = [SUCoreActivity batteryLevelPredicateGreaterThan:v8];
    [v3 addObject:v9];
  }

  v10 = [(SUCoreActivity *)self batteryLevelLessThan];

  if (v10)
  {
    v11 = [(SUCoreActivity *)self batteryLevelLessThan];
    v12 = [SUCoreActivity batteryLevelPredicateLessThan:v11];
    [v3 addObject:v12];
  }

  if ([(SUCoreActivity *)self plugInState])
  {
    v13 = [SUCoreActivity pluggedInPredicate:[(SUCoreActivity *)self plugInState]== 2];
    [v3 addObject:v13];
  }

  if ([(SUCoreActivity *)self screenOnState])
  {
    v14 = [SUCoreActivity backlightOnPredicate:[(SUCoreActivity *)self screenOnState]!= 0];
    [v3 addObject:v14];
  }

  if ([(SUCoreActivity *)self networkState])
  {
    v15 = [SUCoreActivity networkPredicate:[(SUCoreActivity *)self networkState]!= 0];
    [v3 addObject:v15];
  }

  if ([(SUCoreActivity *)self wifiState])
  {
    v16 = [SUCoreActivity wifiAvailablePredicate:[(SUCoreActivity *)self wifiState]!= 0];
    [v3 addObject:v16];
  }

  if ([(SUCoreActivity *)self phoneCallState])
  {
    v17 = [SUCoreActivity phoneCallPredicate:[(SUCoreActivity *)self phoneCallState]!= 0];
    [v3 addObject:v17];
  }

  if ([(SUCoreActivity *)self carplayState])
  {
    v18 = [SUCoreActivity carplayPredicate:[(SUCoreActivity *)self carplayState]!= 0];
    [v3 addObject:v18];
  }

  if ([(SUCoreActivity *)self mediaPlayingState])
  {
    v19 = [SUCoreActivity mediaPlayingPredicate:[(SUCoreActivity *)self mediaPlayingState]!= 0];
    [v3 addObject:v19];
  }

  v20 = [MEMORY[0x277CFE368] andPredicateWithSubpredicates:v3];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = [MEMORY[0x277D64460] sharedLogger];
    v24 = [v23 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = self;
      _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "Failed to create _CDContextualPredicate for SUActivity: %{public}@", &v27, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_stringForTriState:(int)a3
{
  if (a3 > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27892DE50[a3];
  }
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v20 = [(SUCoreActivity *)self activityName];
  v19 = [(SUCoreActivity *)self UUID];
  v3 = MEMORY[0x277CCA968];
  v17 = [(SUCoreActivity *)self runDate];
  v18 = [v3 localizedStringFromDate:v17 dateStyle:1 timeStyle:2];
  v4 = [(SUCoreActivity *)self batteryLevelLessThan];
  v14 = [(SUCoreActivity *)self batteryLevelLessThan];
  v5 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self plugInState]];
  v6 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self screenOnState]];
  v7 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self networkState]];
  v8 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self wifiState]];
  v9 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self phoneCallState]];
  v10 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self carplayState]];
  v11 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self mediaPlayingState]];
  v12 = [(SUCoreActivity *)self _stringForTriState:[(SUCoreActivity *)self waking]];
  v16 = [v15 stringWithFormat:@"\n            ActivityName:       %@\n            UUID:               %@\n            runDate:            %@\n            batteryLevelGT:     %@\n            batteryLevelLT:     %@\n            plugInState:        %@\n            screenOnState:      %@\n            networkState:       %@\n            wifiState:          %@\n            phonecallState:     %@\n            carplayState:       %@\n            mediaPlayingState:  %@\n            waking:             %@\n", v20, v19, v18, v4, v14, v5, v6, v7, v8, v9, v10, v11, v12];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x277D643F8];
      v7 = [(SUCoreActivity *)self activityName];
      v8 = [(SUCoreActivity *)v5 activityName];
      if ([v6 stringIsEqual:v7 to:v8])
      {
        v9 = MEMORY[0x277D643F8];
        v10 = [(SUCoreActivity *)self UUID];
        v11 = [(SUCoreActivity *)v5 UUID];
        if ([v9 stringIsEqual:v10 to:v11])
        {
          v12 = MEMORY[0x277D643F8];
          v13 = [(SUCoreActivity *)self runDate];
          v33 = [(SUCoreActivity *)v5 runDate];
          v34 = v13;
          if ([v12 dateIsEqual:v13 to:v33])
          {
            v14 = MEMORY[0x277D643F8];
            v15 = [(SUCoreActivity *)self batteryLevelGreaterThan];
            v16 = [(SUCoreActivity *)v5 batteryLevelGreaterThan];
            v32 = v15;
            v17 = v15;
            v18 = v16;
            if ([v14 numberIsEqual:v17 to:v16])
            {
              v19 = MEMORY[0x277D643F8];
              v20 = [(SUCoreActivity *)self batteryLevelLessThan];
              v31 = [(SUCoreActivity *)v5 batteryLevelLessThan];
              if ([v19 numberIsEqual:v20 to:?] && (v21 = -[SUCoreActivity plugInState](self, "plugInState"), v21 == -[SUCoreActivity plugInState](v5, "plugInState")) && (v22 = -[SUCoreActivity screenOnState](self, "screenOnState"), v22 == -[SUCoreActivity screenOnState](v5, "screenOnState")) && (v23 = -[SUCoreActivity networkState](self, "networkState"), v23 == -[SUCoreActivity networkState](v5, "networkState")) && (v24 = -[SUCoreActivity wifiState](self, "wifiState"), v24 == -[SUCoreActivity wifiState](v5, "wifiState")) && (v25 = -[SUCoreActivity waking](self, "waking"), v25 == -[SUCoreActivity waking](v5, "waking")) && (v26 = -[SUCoreActivity phoneCallState](self, "phoneCallState"), v26 == -[SUCoreActivity phoneCallState](v5, "phoneCallState")) && (v27 = -[SUCoreActivity carplayState](self, "carplayState"), v27 == -[SUCoreActivity carplayState](v5, "carplayState")))
              {
                v28 = [(SUCoreActivity *)self mediaPlayingState];
                v29 = v28 == [(SUCoreActivity *)v5 mediaPlayingState];
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

+ (id)batteryLevelPredicateGreaterThan:(id)a3
{
  v3 = MEMORY[0x277CFE368];
  v4 = MEMORY[0x277CFE330];
  v5 = a3;
  v6 = [v4 keyPathForBatteryLevel];
  v7 = [MEMORY[0x277CFE330] keyPathForBatteryLevel];
  v8 = [v3 predicateForKeyPath:v6 withFormat:@"self.%@.value > %@", v7, v5];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create battery level greater than _CDContextualPredicate", buf, 2u);
    }
  }

  return v8;
}

+ (id)batteryLevelPredicateLessThan:(id)a3
{
  v3 = MEMORY[0x277CFE368];
  v4 = MEMORY[0x277CFE330];
  v5 = a3;
  v6 = [v4 keyPathForBatteryLevel];
  v7 = [MEMORY[0x277CFE330] keyPathForBatteryLevel];
  v8 = [v3 predicateForKeyPath:v6 withFormat:@"self.%@.value < %@", v7, v5];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create battery level less than _CDContextualPredicate", buf, 2u);
    }
  }

  return v8;
}

+ (id)systemDatePredicate:(id)a3
{
  v3 = [MEMORY[0x277CFE330] predicateForSystemTime:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x277D64460] sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create system date _CDContextualPredicate", v9, 2u);
    }
  }

  return v4;
}

+ (id)_predicateForKeyPath:(id)a3 equalToValue:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CFE368] predicateForKeyPath:v5 equalToValue:a4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 description];
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "Failed to create _CDContextualPredicate for keyPath: %{public}@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SUCoreActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUCoreActivity;
  v5 = [(SUCoreActivity *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"activityKey"];
    [(SUCoreActivity *)v5 setActivityName:v6];

    v7 = [v4 decodeObjectForKey:@"uuid"];
    [(SUCoreActivity *)v5 setUUID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runDate"];
    [(SUCoreActivity *)v5 setRunDate:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryLessThan"];
    [(SUCoreActivity *)v5 setBatteryLevelGreaterThan:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryGreaterThan"];
    [(SUCoreActivity *)v5 setBatteryLevelLessThan:v10];

    -[SUCoreActivity setWaking:](v5, "setWaking:", [v4 decodeIntegerForKey:@"waking"]);
    -[SUCoreActivity setPlugInState:](v5, "setPlugInState:", [v4 decodeIntegerForKey:@"plugInState"]);
    -[SUCoreActivity setScreenOnState:](v5, "setScreenOnState:", [v4 decodeIntegerForKey:@"screenOn"]);
    -[SUCoreActivity setNetworkState:](v5, "setNetworkState:", [v4 decodeIntegerForKey:@"network"]);
    -[SUCoreActivity setWifiState:](v5, "setWifiState:", [v4 decodeIntegerForKey:@"wifi"]);
    -[SUCoreActivity setPhoneCallState:](v5, "setPhoneCallState:", [v4 decodeIntegerForKey:@"phoneCall"]);
    -[SUCoreActivity setCarplayState:](v5, "setCarplayState:", [v4 decodeIntegerForKey:@"carplay"]);
    -[SUCoreActivity setMediaPlayingState:](v5, "setMediaPlayingState:", [v4 decodeIntegerForKey:@"media"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(SUCoreActivity *)self activityName];
  [v9 encodeObject:v4 forKey:@"activityKey"];

  v5 = [(SUCoreActivity *)self UUID];
  [v9 encodeObject:v5 forKey:@"uuid"];

  v6 = [(SUCoreActivity *)self runDate];
  [v9 encodeObject:v6 forKey:@"runDate"];

  v7 = [(SUCoreActivity *)self batteryLevelGreaterThan];
  [v9 encodeObject:v7 forKey:@"batteryGreaterThan"];

  v8 = [(SUCoreActivity *)self batteryLevelLessThan];
  [v9 encodeObject:v8 forKey:@"batteryLessThan"];

  [v9 encodeInteger:-[SUCoreActivity waking](self forKey:{"waking"), @"waking"}];
  [v9 encodeInteger:-[SUCoreActivity plugInState](self forKey:{"plugInState"), @"plugInState"}];
  [v9 encodeInteger:-[SUCoreActivity screenOnState](self forKey:{"screenOnState"), @"screenOn"}];
  [v9 encodeInteger:-[SUCoreActivity networkState](self forKey:{"networkState"), @"network"}];
  [v9 encodeInteger:-[SUCoreActivity wifiState](self forKey:{"wifiState"), @"wifi"}];
  [v9 encodeInteger:-[SUCoreActivity phoneCallState](self forKey:{"phoneCallState"), @"phoneCall"}];
  [v9 encodeInteger:-[SUCoreActivity carplayState](self forKey:{"carplayState"), @"carplay"}];
  [v9 encodeInteger:-[SUCoreActivity mediaPlayingState](self forKey:{"mediaPlayingState"), @"media"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SUCoreActivity *)self activityName];
  v7 = [v6 copyWithZone:a3];
  [v5 setActivityName:v7];

  v8 = [(SUCoreActivity *)self UUID];
  v9 = [v8 copyWithZone:a3];
  [v5 setUUID:v9];

  v10 = [(SUCoreActivity *)self runDate];
  v11 = [v10 copyWithZone:a3];
  [v5 setRunDate:v11];

  v12 = [(SUCoreActivity *)self batteryLevelGreaterThan];
  v13 = [v12 copyWithZone:a3];
  [v5 setBatteryLevelGreaterThan:v13];

  v14 = [(SUCoreActivity *)self batteryLevelLessThan];
  v15 = [v14 copyWithZone:a3];
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