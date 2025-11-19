@interface TCCDAlert
- (BOOL)isDisplayableForCondition:(int64_t)a3;
- (TCCDAlert)initWithCondition:(int64_t)a3 platformName:(id)a4 service:(id)a5 displayPolicy:(int64_t)a6 persistentStateType:(unint64_t)a7 displayCountlimit:(int)a8 configuration:(id)a9;
- (void)display;
@end

@implementation TCCDAlert

- (TCCDAlert)initWithCondition:(int64_t)a3 platformName:(id)a4 service:(id)a5 displayPolicy:(int64_t)a6 persistentStateType:(unint64_t)a7 displayCountlimit:(int)a8 configuration:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = TCCDAlert;
  v18 = [(TCCDAlert *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_persistentStateType = a7;
    v18->_condition = a3;
    if (v16)
    {
      objc_storeStrong(&v18->_service, a5);
    }

    if (v15)
    {
      v20 = [v15 copy];
      platformName = v19->_platformName;
      v19->_platformName = v20;
    }

    v19->_displayPolicy = a6;
    v19->_displayCountlimit = a8;
    v22 = [v17 copy];
    configuration = v19->_configuration;
    v19->_configuration = v22;
  }

  return v19;
}

- (BOOL)isDisplayableForCondition:(int64_t)a3
{
  v5 = [(TCCDAlert *)self platformName];
  result = (!v5 || (v6 = v5, +[TCCDPlatform currentPlatform](TCCDPlatform, "currentPlatform"), v7 = objc_claimAutoreleasedReturnValue(), [v7 name], v8 = objc_claimAutoreleasedReturnValue(), -[TCCDAlert platformName](self, "platformName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v7, v6, v10)) && -[TCCDAlert condition](self, "condition") == a3;
  return result;
}

- (void)display
{
  if ([(TCCDAlert *)self displayPolicy])
  {
    v3 = [(TCCDAlert *)self persistentStateType];
    v4 = [(TCCDAlert *)self service];
    v5 = [v4 name];
    value = db_persistent_state_get_value(v3, v5);

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
    v9 = [(TCCDAlert *)self persistentStateValue];
    if (v9 >= [(TCCDAlert *)self displayCountlimit])
    {
      return;
    }

    v10 = [(TCCDAlert *)self persistentStateType];
    v19 = [(TCCDAlert *)self service];
    v11 = [v19 name];
    v12 = [(TCCDAlert *)self persistentStateValue]+ 1;
    v13 = v10;
    v14 = v11;
    goto LABEL_22;
  }

  if ([(TCCDAlert *)self displayPolicy]!= 2)
  {
    return;
  }

  v15 = [(TCCDAlert *)self persistentStateValue];
  v16 = (v15 - 1);
  if (v15 > 1)
  {
    v18 = [(TCCDAlert *)self persistentStateType];
    v19 = [(TCCDAlert *)self service];
    v11 = [v19 name];
    v13 = v18;
    v14 = v11;
    v12 = v16;
LABEL_22:
    db_persistent_state_set_value(v13, v14, v12);
    goto LABEL_23;
  }

LABEL_19:
  v17 = [(TCCDAlert *)self persistentStateType];
  v19 = [(TCCDAlert *)self service];
  v11 = [v19 name];
  db_persistent_state_reset(v17, v11);
LABEL_23:
}

@end