@interface ICDAccountManagerStateChange
+ (id)stateChangeFromState:(id)a3 toState:(id)a4 computation:(int64_t)a5;
- (BOOL)activeConfigurationChanged;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportedConfigurationsChanged;
- (id)_initWithInitialState:(id)a3 finalState:(id)a4 computation:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ICDAccountManagerStateChange

- (id)_initWithInitialState:(id)a3 finalState:(id)a4 computation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ICDAccountManagerStateChange;
  v10 = [(ICDAccountManagerStateChange *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    initialState = v10->_initialState;
    v10->_initialState = v11;

    v13 = [v9 copy];
    finalState = v10->_finalState;
    v10->_finalState = v13;

    v10->_computation = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(ICDAccountManagerStateChange *)self initialState];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[1];
    v5[1] = v7;

    v9 = [(ICDAccountManagerStateChange *)self finalState];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    v5[3] = [(ICDAccountManagerStateChange *)self computation];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICDAccountManagerStateChange *)v5 initialState];
      v7 = [(ICDAccountManagerStateChange *)self initialState];
      if ([v6 isEqual:v7])
      {
        v8 = [(ICDAccountManagerStateChange *)v5 finalState];
        v9 = [(ICDAccountManagerStateChange *)self finalState];
        if ([v8 isEqual:v9])
        {
          v10 = [(ICDAccountManagerStateChange *)v5 computation];
          v11 = v10 == [(ICDAccountManagerStateChange *)self computation];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = [(ICDAccountManagerStateChange *)self initialState];
  v4 = [(ICDAccountManagerStateChange *)self finalState];
  v5 = [NSString stringWithFormat:@"ICDAccountManagerStateChange %p: %@ -> %@ - [active changed=%u] [supported changed=%u]", self, v3, v4, [(ICDAccountManagerStateChange *)self activeConfigurationChanged], [(ICDAccountManagerStateChange *)self supportedConfigurationsChanged]];

  return v5;
}

- (BOOL)supportedConfigurationsChanged
{
  v3 = [(ICDAccountManagerStateChange *)self computation];
  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 2) != 0)
  {
    if (v5)
    {
      v7 = [(ICDAccountManagerStateChange *)self initialState];
      v8 = [v7 supportedConfigurationsDSIDs];
      v9 = [(ICDAccountManagerStateChange *)self finalState];
      v10 = [v9 supportedConfigurationsDSIDs];
      v19 = 134218498;
      v20 = self;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - Initial configurations [%@] -> Final configurations [%@]", &v19, 0x20u);
    }

    v4 = [(ICDAccountManagerStateChange *)self initialState];
    v11 = [v4 supportedConfigurationsDSIDs];
    v12 = [(ICDAccountManagerStateChange *)self finalState];
    v13 = [v12 supportedConfigurationsDSIDs];
    if (v11 == v13)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v14 = [(ICDAccountManagerStateChange *)self initialState];
      v15 = [v14 supportedConfigurationsDSIDs];
      v16 = [(ICDAccountManagerStateChange *)self finalState];
      v17 = [v16 supportedConfigurationsDSIDs];
      v6 = [v15 isEqualToSet:v17] ^ 1;
    }
  }

  else
  {
    if (v5)
    {
      v19 = 134217984;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - supportedConfigurationsChanged: NO [computation option driven]", &v19, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)activeConfigurationChanged
{
  v3 = [(ICDAccountManagerStateChange *)self computation];
  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = [(ICDAccountManagerStateChange *)self initialState];
      v8 = [v7 activeConfigurationDSID];
      v9 = [(ICDAccountManagerStateChange *)self finalState];
      v10 = [v9 activeConfigurationDSID];
      v15 = 134218498;
      v16 = self;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - Initial configuration [%@] -> Final configuration [%@]", &v15, 0x20u);
    }

    v4 = [(ICDAccountManagerStateChange *)self initialState];
    v11 = [v4 activeConfigurationDSID];
    v12 = [(ICDAccountManagerStateChange *)self finalState];
    v13 = [v12 activeConfigurationDSID];
    if (v11 == v13)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [v11 isEqual:v13] ^ 1;
    }
  }

  else
  {
    if (v5)
    {
      v15 = 134217984;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - configurationChanged: NO [computation option driven]", &v15, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (id)stateChangeFromState:(id)a3 toState:(id)a4 computation:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] _initWithInitialState:v9 finalState:v8 computation:a5];

  return v10;
}

@end