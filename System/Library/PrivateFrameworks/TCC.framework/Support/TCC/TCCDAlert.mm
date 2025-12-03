@interface TCCDAlert
- (BOOL)isDisplayableForCondition:(int64_t)condition;
- (TCCDAlert)initWithCondition:(int64_t)condition platformName:(id)name service:(id)service displayPolicy:(int64_t)policy persistentStateType:(unint64_t)type displayCountlimit:(int)countlimit configuration:(id)configuration;
- (void)display;
@end

@implementation TCCDAlert

- (TCCDAlert)initWithCondition:(int64_t)condition platformName:(id)name service:(id)service displayPolicy:(int64_t)policy persistentStateType:(unint64_t)type displayCountlimit:(int)countlimit configuration:(id)configuration
{
  nameCopy = name;
  serviceCopy = service;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = TCCDAlert;
  v18 = [(TCCDAlert *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_persistentStateType = type;
    v18->_condition = condition;
    if (serviceCopy)
    {
      objc_storeStrong(&v18->_service, service);
    }

    if (nameCopy)
    {
      v20 = [nameCopy copy];
      platformName = v19->_platformName;
      v19->_platformName = v20;
    }

    v19->_displayPolicy = policy;
    v19->_displayCountlimit = countlimit;
    v22 = [configurationCopy copy];
    configuration = v19->_configuration;
    v19->_configuration = v22;
  }

  return v19;
}

- (BOOL)isDisplayableForCondition:(int64_t)condition
{
  platformName = [(TCCDAlert *)self platformName];
  result = (!platformName || (v6 = platformName, +[TCCDPlatform currentPlatform](TCCDPlatform, "currentPlatform"), v7 = objc_claimAutoreleasedReturnValue(), [v7 name], v8 = objc_claimAutoreleasedReturnValue(), -[TCCDAlert platformName](self, "platformName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v7, v6, v10)) && -[TCCDAlert condition](self, "condition") == condition;
  return result;
}

- (void)display
{
  if ([(TCCDAlert *)self displayPolicy])
  {
    persistentStateType = [(TCCDAlert *)self persistentStateType];
    service = [(TCCDAlert *)self service];
    name = [service name];
    value = db_persistent_state_get_value(persistentStateType, name);

    if ([(TCCDAlert *)self displayPolicy]== 1)
    {
      if (value == -1)
      {
        value = 0;
      }

      else if (value >= [(TCCDAlert *)self displayCountlimit])
      {
        return;
      }
    }

    else if ([(TCCDAlert *)self displayPolicy]== 2 && value <= 0)
    {
      if (value)
      {
        return;
      }

      goto LABEL_19;
    }

    [(TCCDAlert *)self setPersistentStateValue:value];
  }

  v7 = +[TCCDPlatform currentPlatform];
  v8 = [v7 displayAlert:self];

  if (!v8 || ![(TCCDAlert *)self displayPolicy])
  {
    return;
  }

  if ([(TCCDAlert *)self displayPolicy]== 1)
  {
    persistentStateValue = [(TCCDAlert *)self persistentStateValue];
    if (persistentStateValue >= [(TCCDAlert *)self displayCountlimit])
    {
      return;
    }

    persistentStateType2 = [(TCCDAlert *)self persistentStateType];
    service2 = [(TCCDAlert *)self service];
    name2 = [service2 name];
    v12 = [(TCCDAlert *)self persistentStateValue]+ 1;
    v13 = persistentStateType2;
    v14 = name2;
    goto LABEL_22;
  }

  if ([(TCCDAlert *)self displayPolicy]!= 2)
  {
    return;
  }

  persistentStateValue2 = [(TCCDAlert *)self persistentStateValue];
  v16 = (persistentStateValue2 - 1);
  if (persistentStateValue2 > 1)
  {
    persistentStateType3 = [(TCCDAlert *)self persistentStateType];
    service2 = [(TCCDAlert *)self service];
    name2 = [service2 name];
    v13 = persistentStateType3;
    v14 = name2;
    v12 = v16;
LABEL_22:
    db_persistent_state_set_value(v13, v14, v12);
    goto LABEL_23;
  }

LABEL_19:
  persistentStateType4 = [(TCCDAlert *)self persistentStateType];
  service2 = [(TCCDAlert *)self service];
  name2 = [service2 name];
  db_persistent_state_reset(persistentStateType4, name2);
LABEL_23:
}

@end