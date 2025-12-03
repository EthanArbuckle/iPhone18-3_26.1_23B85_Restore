@interface CSDRelayCallProviderManagerDataSource
- (BOOL)_relayHostDeviceIdentifierChanged;
- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (BOOL)removeCallProviderForIdentifier:(id)identifier;
- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier;
- (CSDRelayCallProviderManagerDataSource)initWithSerialQueue:(id)queue;
- (CSDRelayCallProviderManagerDataSourceDelegate)delegate;
- (id)_getIdsIdentifierForHostRelayDevice;
- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (void)handleCallProviderKVSChange:(id)change;
- (void)handleIDSDeviceListChange:(id)change;
- (void)handleOutgoingCallerIDChange:(id)change;
- (void)registerForCallProviderKVSNotification;
- (void)syncRelayCallProvidersWithKVS;
@end

@implementation CSDRelayCallProviderManagerDataSource

- (CSDRelayCallProviderManagerDataSource)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CSDRelayCallProviderManagerDataSource;
  v6 = [(CSDRelayCallProviderManagerDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)registerForCallProviderKVSNotification
{
  v7 = objc_alloc_init(TUFeatureFlags);
  if ([v7 isDualSimParityEnabled])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"handleCallProviderKVSChange:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"handleOutgoingCallerIDChange:" name:TUCallCapabilitiesOutgoingRelayCallerIDChangedNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"handleIDSDeviceListChange:" name:@"CSDIDSDeviceListChangedNotification" object:0];

    v6 = +[CSDCallProviderKVS sharedInstance];
    [v6 synchronize];

    [(CSDRelayCallProviderManagerDataSource *)self syncRelayCallProvidersWithKVS];
  }
}

- (void)handleCallProviderKVSChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithUnsignedInteger:unsignedIntValue];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Relay call providers changed due to reason = %@", buf, 0xCu);
  }

  if (unsignedIntValue <= 1)
  {
    if (!unsignedIntValue)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreServerChange";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (unsignedIntValue == 1)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreInitialSyncChange";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (unsignedIntValue != 2)
  {
    if (unsignedIntValue == 3)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreAccountChange";
        goto LABEL_14;
      }

LABEL_15:
    }

LABEL_16:
    queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B37E0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue, block);

    return;
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreQuotaViolationChange", buf, 2u);
  }
}

- (void)handleOutgoingCallerIDChange:(id)change
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification indicating change in outgoing caller ID", buf, 2u);
  }

  queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B38EC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleIDSDeviceListChange:(id)change
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification indicating change in IDS device list", buf, 2u);
  }

  queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3A30;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_relayHostDeviceIdentifierChanged
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not updating call providers on primary calling device", v10, 2u);
    }

    return 0;
  }

  else
  {
    v5 = +[NSUserDefaults tu_defaults];
    v6 = [v5 stringForKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

    _getIdsIdentifierForHostRelayDevice = [(CSDRelayCallProviderManagerDataSource *)self _getIdsIdentifierForHostRelayDevice];
    if (_getIdsIdentifierForHostRelayDevice && ([v6 isEqualToString:_getIdsIdentifierForHostRelayDevice] & 1) == 0)
    {
      v8 = +[NSUserDefaults tu_defaults];
      [v8 setObject:_getIdsIdentifierForHostRelayDevice forKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)syncRelayCallProvidersWithKVS
{
  queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3C44;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_getIdsIdentifierForHostRelayDevice
{
  v2 = +[TUCallCapabilities outgoingRelayCallerID];
  v3 = +[CSDRelayIDSService sharedInstance];
  devices = [v3 devices];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = devices;
  v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v21)
  {

LABEL_21:
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100479214(v2, v5, v17);
    }

    v6 = 0;
    goto LABEL_24;
  }

  v6 = 0;
  obj = v5;
  v20 = *v27;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v26 + 1) + 8 * i);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      linkedUserURIs = [v8 linkedUserURIs];
      v10 = [linkedUserURIs countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        while (2)
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(linkedUserURIs);
            }

            _stripFZIDPrefix = [*(*(&v22 + 1) + 8 * j) _stripFZIDPrefix];
            v15 = [v2 isEqualToString:_stripFZIDPrefix];

            if (v15)
            {
              uniqueIDOverride = [v8 uniqueIDOverride];

              v6 = uniqueIDOverride;
              goto LABEL_16;
            }
          }

          v11 = [linkedUserURIs countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v5 = obj;
    v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v21);

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_24:

  return v6;
}

- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 fetchCallProvidersForIDSDeviceIdentifier:identifierCopy];

  return v5;
}

- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 removeAllCallProvidersForIDSDeviceIdentifier:identifierCopy];

  return v5;
}

- (BOOL)removeCallProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 removeCallProviderForIdentifier:identifierCopy];

  return v5;
}

- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerCopy = provider;
  v7 = +[CSDCallProviderKVS sharedInstance];
  v8 = [v7 updateCallProvider:providerCopy forIdentifier:identifierCopy];

  return v8;
}

- (CSDRelayCallProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end