@interface CSDCallProviderKVS
+ (CSDCallProviderKVS)sharedInstance;
- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (BOOL)removeCallProviderForIdentifier:(id)identifier;
- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier;
- (CSDCallProviderKVS)initWithCallProviderStore:(id)store queue:(id)queue currentDeviceIdentifier:(id)identifier;
- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (id)keyForCurrentDeviceCallProviderWithIdentifier:(id)identifier;
- (id)unarchivedObjectClasses;
- (void)synchronize;
@end

@implementation CSDCallProviderKVS

+ (CSDCallProviderKVS)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B88C4;
  block[3] = &unk_10061A860;
  block[4] = self;
  if (qword_1006ACE60 != -1)
  {
    dispatch_once(&qword_1006ACE60, block);
  }

  v2 = qword_1006ACE58;

  return v2;
}

- (CSDCallProviderKVS)initWithCallProviderStore:(id)store queue:(id)queue currentDeviceIdentifier:(id)identifier
{
  storeCopy = store;
  queueCopy = queue;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CSDCallProviderKVS;
  v12 = [(CSDCallProviderKVS *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_callProviderStore, store);
    objc_storeStrong(&v13->_currentDeviceIdsIdentifier, identifier);
    v13->_deviceSupportsPrimaryCalling = +[TUCallCapabilities supportsPrimaryCalling];
  }

  return v13;
}

- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  if ([(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling])
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request to update call provider for identifier %@", buf, 0xCu);
    }

    identifier = [providerCopy identifier];
    v10 = [identifier isEqualToString:identifierCopy];

    if (v10)
    {
      v23 = 0;
      v11 = [NSKeyedArchiver archivedDataWithRootObject:providerCopy requiringSecureCoding:1 error:&v23];
      v12 = v23;
      if (v11)
      {
        v13 = [(CSDCallProviderKVS *)self keyForCurrentDeviceCallProviderWithIdentifier:identifierCopy];
        if (v13)
        {
          queue = [(CSDCallProviderKVS *)self queue];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1001B8D38;
          v20[3] = &unk_100619E58;
          v20[4] = self;
          v21 = v11;
          v13 = v13;
          v22 = v13;
          dispatch_sync(queue, v20);

          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = identifierCopy;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Successfully updated call provider for identifier %@", buf, 0xCu);
          }

          v16 = sub_100004778();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_100479324(self, v16);
          }

          v17 = 1;
          goto LABEL_19;
        }

        v18 = sub_100004778();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1004793D0();
        }
      }

      else
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100479438();
        }
      }

      v17 = 0;
LABEL_19:

      goto LABEL_20;
    }
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (BOOL)removeCallProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to remove call provider for identifier %@", buf, 0xCu);
    }

    v6 = [(CSDCallProviderKVS *)self keyForCurrentDeviceCallProviderWithIdentifier:identifierCopy];
    v7 = v6 != 0;
    if (v6)
    {
      queue = [(CSDCallProviderKVS *)self queue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001B8F80;
      v12[3] = &unk_100619D88;
      v12[4] = self;
      v13 = v6;
      dispatch_sync(queue, v12);

      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed call provider for identifier %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1004793D0();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceSupportsPrimaryCalling = [(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling];
  if (deviceSupportsPrimaryCalling)
  {
    queue = [(CSDCallProviderKVS *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B909C;
    v8[3] = &unk_100619D88;
    v8[4] = self;
    v9 = identifierCopy;
    dispatch_sync(queue, v8);
  }

  return deviceSupportsPrimaryCalling;
}

- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to fetch call provider for IDS identifier %@", buf, 0xCu);
  }

  v6 = +[NSMutableDictionary dictionary];
  queue = [(CSDCallProviderKVS *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B93C8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v8 = identifierCopy;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  dispatch_sync(queue, block);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully fetched call provider for IDS identifier %@ as %@", buf, 0x16u);
  }

  v11 = [v9 copy];

  return v11;
}

- (void)synchronize
{
  queue = [(CSDCallProviderKVS *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B96E4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)keyForCurrentDeviceCallProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentDeviceIdsIdentifier = [(CSDCallProviderKVS *)self currentDeviceIdsIdentifier];
  v6 = 63 - [currentDeviceIdsIdentifier length];
  if ([identifierCopy length] <= v6)
  {
    v7 = identifierCopy;
  }

  else
  {
    v7 = [identifierCopy substringFromIndex:{objc_msgSend(identifierCopy, "length") - v6}];
  }

  v8 = v7;
  v9 = [NSString stringWithFormat:@"%@/%@", currentDeviceIdsIdentifier, v7];

  return v9;
}

- (id)unarchivedObjectClasses
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
}

@end