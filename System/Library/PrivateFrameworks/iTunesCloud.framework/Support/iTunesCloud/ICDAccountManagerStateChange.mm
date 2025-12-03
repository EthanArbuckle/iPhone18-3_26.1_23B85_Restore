@interface ICDAccountManagerStateChange
+ (id)stateChangeFromState:(id)state toState:(id)toState computation:(int64_t)computation;
- (BOOL)activeConfigurationChanged;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportedConfigurationsChanged;
- (id)_initWithInitialState:(id)state finalState:(id)finalState computation:(int64_t)computation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ICDAccountManagerStateChange

- (id)_initWithInitialState:(id)state finalState:(id)finalState computation:(int64_t)computation
{
  stateCopy = state;
  finalStateCopy = finalState;
  v16.receiver = self;
  v16.super_class = ICDAccountManagerStateChange;
  v10 = [(ICDAccountManagerStateChange *)&v16 init];
  if (v10)
  {
    v11 = [stateCopy copy];
    initialState = v10->_initialState;
    v10->_initialState = v11;

    v13 = [finalStateCopy copy];
    finalState = v10->_finalState;
    v10->_finalState = v13;

    v10->_computation = computation;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    initialState = [(ICDAccountManagerStateChange *)self initialState];
    v7 = [initialState copyWithZone:zone];
    v8 = v5[1];
    v5[1] = v7;

    finalState = [(ICDAccountManagerStateChange *)self finalState];
    v10 = [finalState copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    v5[3] = [(ICDAccountManagerStateChange *)self computation];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      initialState = [(ICDAccountManagerStateChange *)v5 initialState];
      initialState2 = [(ICDAccountManagerStateChange *)self initialState];
      if ([initialState isEqual:initialState2])
      {
        finalState = [(ICDAccountManagerStateChange *)v5 finalState];
        finalState2 = [(ICDAccountManagerStateChange *)self finalState];
        if ([finalState isEqual:finalState2])
        {
          computation = [(ICDAccountManagerStateChange *)v5 computation];
          v11 = computation == [(ICDAccountManagerStateChange *)self computation];
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
  initialState = [(ICDAccountManagerStateChange *)self initialState];
  finalState = [(ICDAccountManagerStateChange *)self finalState];
  v5 = [NSString stringWithFormat:@"ICDAccountManagerStateChange %p: %@ -> %@ - [active changed=%u] [supported changed=%u]", self, initialState, finalState, [(ICDAccountManagerStateChange *)self activeConfigurationChanged], [(ICDAccountManagerStateChange *)self supportedConfigurationsChanged]];

  return v5;
}

- (BOOL)supportedConfigurationsChanged
{
  computation = [(ICDAccountManagerStateChange *)self computation];
  initialState2 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v5 = os_log_type_enabled(initialState2, OS_LOG_TYPE_DEFAULT);
  if ((computation & 2) != 0)
  {
    if (v5)
    {
      initialState = [(ICDAccountManagerStateChange *)self initialState];
      supportedConfigurationsDSIDs = [initialState supportedConfigurationsDSIDs];
      finalState = [(ICDAccountManagerStateChange *)self finalState];
      supportedConfigurationsDSIDs2 = [finalState supportedConfigurationsDSIDs];
      v19 = 134218498;
      selfCopy2 = self;
      v21 = 2112;
      v22 = supportedConfigurationsDSIDs;
      v23 = 2112;
      v24 = supportedConfigurationsDSIDs2;
      _os_log_impl(&_mh_execute_header, initialState2, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - Initial configurations [%@] -> Final configurations [%@]", &v19, 0x20u);
    }

    initialState2 = [(ICDAccountManagerStateChange *)self initialState];
    supportedConfigurationsDSIDs3 = [initialState2 supportedConfigurationsDSIDs];
    finalState2 = [(ICDAccountManagerStateChange *)self finalState];
    supportedConfigurationsDSIDs4 = [finalState2 supportedConfigurationsDSIDs];
    if (supportedConfigurationsDSIDs3 == supportedConfigurationsDSIDs4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      initialState3 = [(ICDAccountManagerStateChange *)self initialState];
      supportedConfigurationsDSIDs5 = [initialState3 supportedConfigurationsDSIDs];
      finalState3 = [(ICDAccountManagerStateChange *)self finalState];
      supportedConfigurationsDSIDs6 = [finalState3 supportedConfigurationsDSIDs];
      v6 = [supportedConfigurationsDSIDs5 isEqualToSet:supportedConfigurationsDSIDs6] ^ 1;
    }
  }

  else
  {
    if (v5)
    {
      v19 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, initialState2, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - supportedConfigurationsChanged: NO [computation option driven]", &v19, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)activeConfigurationChanged
{
  computation = [(ICDAccountManagerStateChange *)self computation];
  initialState2 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v5 = os_log_type_enabled(initialState2, OS_LOG_TYPE_DEFAULT);
  if (computation)
  {
    if (v5)
    {
      initialState = [(ICDAccountManagerStateChange *)self initialState];
      activeConfigurationDSID = [initialState activeConfigurationDSID];
      finalState = [(ICDAccountManagerStateChange *)self finalState];
      activeConfigurationDSID2 = [finalState activeConfigurationDSID];
      v15 = 134218498;
      selfCopy2 = self;
      v17 = 2112;
      v18 = activeConfigurationDSID;
      v19 = 2112;
      v20 = activeConfigurationDSID2;
      _os_log_impl(&_mh_execute_header, initialState2, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - Initial configuration [%@] -> Final configuration [%@]", &v15, 0x20u);
    }

    initialState2 = [(ICDAccountManagerStateChange *)self initialState];
    activeConfigurationDSID3 = [initialState2 activeConfigurationDSID];
    finalState2 = [(ICDAccountManagerStateChange *)self finalState];
    activeConfigurationDSID4 = [finalState2 activeConfigurationDSID];
    if (activeConfigurationDSID3 == activeConfigurationDSID4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = [activeConfigurationDSID3 isEqual:activeConfigurationDSID4] ^ 1;
    }
  }

  else
  {
    if (v5)
    {
      v15 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, initialState2, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerStateChange %p - configurationChanged: NO [computation option driven]", &v15, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (id)stateChangeFromState:(id)state toState:(id)toState computation:(int64_t)computation
{
  toStateCopy = toState;
  stateCopy = state;
  v10 = [[self alloc] _initWithInitialState:stateCopy finalState:toStateCopy computation:computation];

  return v10;
}

@end