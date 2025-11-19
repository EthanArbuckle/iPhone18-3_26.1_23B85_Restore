@interface CSDRelayCallProviderManagerDataSource
- (BOOL)_relayHostDeviceIdentifierChanged;
- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)a3;
- (BOOL)removeCallProviderForIdentifier:(id)a3;
- (BOOL)updateCallProvider:(id)a3 forIdentifier:(id)a4;
- (CSDRelayCallProviderManagerDataSource)initWithSerialQueue:(id)a3;
- (CSDRelayCallProviderManagerDataSourceDelegate)delegate;
- (id)_getIdsIdentifierForHostRelayDevice;
- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)a3;
- (void)handleCallProviderKVSChange:(id)a3;
- (void)handleIDSDeviceListChange:(id)a3;
- (void)handleOutgoingCallerIDChange:(id)a3;
- (void)registerForCallProviderKVSNotification;
- (void)syncRelayCallProvidersWithKVS;
@end

@implementation CSDRelayCallProviderManagerDataSource

- (CSDRelayCallProviderManagerDataSource)initWithSerialQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDRelayCallProviderManagerDataSource;
  v6 = [(CSDRelayCallProviderManagerDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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

- (void)handleCallProviderKVSChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  v6 = [v5 unsignedIntValue];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithUnsignedInteger:v6];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Relay call providers changed due to reason = %@", buf, 0xCu);
  }

  if (v6 <= 1)
  {
    if (!v6)
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

    if (v6 == 1)
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

  if (v6 != 2)
  {
    if (v6 == 3)
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
    v11 = [(CSDRelayCallProviderManagerDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B37E0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(v11, block);

    return;
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreQuotaViolationChange", buf, 2u);
  }
}

- (void)handleOutgoingCallerIDChange:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification indicating change in outgoing caller ID", buf, 2u);
  }

  v5 = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B38EC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)handleIDSDeviceListChange:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification indicating change in IDS device list", buf, 2u);
  }

  v5 = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3A30;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v5, block);
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

    v7 = [(CSDRelayCallProviderManagerDataSource *)self _getIdsIdentifierForHostRelayDevice];
    if (v7 && ([v6 isEqualToString:v7] & 1) == 0)
    {
      v8 = +[NSUserDefaults tu_defaults];
      [v8 setObject:v7 forKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

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
  v3 = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3C44;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)_getIdsIdentifierForHostRelayDevice
{
  v2 = +[TUCallCapabilities outgoingRelayCallerID];
  v3 = +[CSDRelayIDSService sharedInstance];
  v4 = [v3 devices];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4;
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
      v9 = [v8 linkedUserURIs];
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v22 + 1) + 8 * j) _stripFZIDPrefix];
            v15 = [v2 isEqualToString:v14];

            if (v15)
            {
              v16 = [v8 uniqueIDOverride];

              v6 = v16;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 fetchCallProvidersForIDSDeviceIdentifier:v3];

  return v5;
}

- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 removeAllCallProvidersForIDSDeviceIdentifier:v3];

  return v5;
}

- (BOOL)removeCallProviderForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 removeCallProviderForIdentifier:v3];

  return v5;
}

- (BOOL)updateCallProvider:(id)a3 forIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CSDCallProviderKVS sharedInstance];
  v8 = [v7 updateCallProvider:v6 forIdentifier:v5];

  return v8;
}

- (CSDRelayCallProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end