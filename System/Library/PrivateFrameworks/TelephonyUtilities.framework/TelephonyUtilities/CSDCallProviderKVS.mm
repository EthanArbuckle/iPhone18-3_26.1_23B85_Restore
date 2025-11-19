@interface CSDCallProviderKVS
+ (CSDCallProviderKVS)sharedInstance;
- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)a3;
- (BOOL)removeCallProviderForIdentifier:(id)a3;
- (BOOL)updateCallProvider:(id)a3 forIdentifier:(id)a4;
- (CSDCallProviderKVS)initWithCallProviderStore:(id)a3 queue:(id)a4 currentDeviceIdentifier:(id)a5;
- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)a3;
- (id)keyForCurrentDeviceCallProviderWithIdentifier:(id)a3;
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
  block[4] = a1;
  if (qword_1006ACE60 != -1)
  {
    dispatch_once(&qword_1006ACE60, block);
  }

  v2 = qword_1006ACE58;

  return v2;
}

- (CSDCallProviderKVS)initWithCallProviderStore:(id)a3 queue:(id)a4 currentDeviceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSDCallProviderKVS;
  v12 = [(CSDCallProviderKVS *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a4);
    objc_storeStrong(&v13->_callProviderStore, a3);
    objc_storeStrong(&v13->_currentDeviceIdsIdentifier, a5);
    v13->_deviceSupportsPrimaryCalling = +[TUCallCapabilities supportsPrimaryCalling];
  }

  return v13;
}

- (BOOL)updateCallProvider:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling])
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request to update call provider for identifier %@", buf, 0xCu);
    }

    v9 = [v6 identifier];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      v23 = 0;
      v11 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v23];
      v12 = v23;
      if (v11)
      {
        v13 = [(CSDCallProviderKVS *)self keyForCurrentDeviceCallProviderWithIdentifier:v7];
        if (v13)
        {
          v14 = [(CSDCallProviderKVS *)self queue];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1001B8D38;
          v20[3] = &unk_100619E58;
          v20[4] = self;
          v21 = v11;
          v13 = v13;
          v22 = v13;
          dispatch_sync(v14, v20);

          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v7;
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

- (BOOL)removeCallProviderForIdentifier:(id)a3
{
  v4 = a3;
  if ([(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to remove call provider for identifier %@", buf, 0xCu);
    }

    v6 = [(CSDCallProviderKVS *)self keyForCurrentDeviceCallProviderWithIdentifier:v4];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [(CSDCallProviderKVS *)self queue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001B8F80;
      v12[3] = &unk_100619D88;
      v12[4] = self;
      v13 = v6;
      dispatch_sync(v8, v12);

      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v4;
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

- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling];
  if (v5)
  {
    v6 = [(CSDCallProviderKVS *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B909C;
    v8[3] = &unk_100619D88;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v6, v8);
  }

  return v5;
}

- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to fetch call provider for IDS identifier %@", buf, 0xCu);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = [(CSDCallProviderKVS *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B93C8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v8 = v4;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  dispatch_sync(v7, block);

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
  v3 = [(CSDCallProviderKVS *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B96E4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)keyForCurrentDeviceCallProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderKVS *)self currentDeviceIdsIdentifier];
  v6 = 63 - [v5 length];
  if ([v4 length] <= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - v6}];
  }

  v8 = v7;
  v9 = [NSString stringWithFormat:@"%@/%@", v5, v7];

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