@interface Browse_MDM
- (Browse_MDM)initWithQueue:(id)a3;
- (void)start;
@end

@implementation Browse_MDM

- (Browse_MDM)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Browse_MDM;
  v6 = [(Browse_MDM *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)start
{
  v3 = [(objc_class *)off_1000C7B48() sharedConnection];
  v20 = [v3 knownAirPrintIPPURLStrings];

  v4 = [(Browse_Implementation *)self session];
  v5 = [v4 clientBundleIdentifier];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v20;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = PKURLWithString(*(*(&v23 + 1) + 8 * v9));
        queue = self->_queue;
        v12 = [(Browse_Implementation *)self addEntity];
        sub_10005A93C(v10, v5, queue, v12);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = [v13 stringForKey:@"PrintKitManualPrinter"];

  if (v14)
  {
    v15 = PKURLWithString(v14);
    v16 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Manual printer from preferences: %@, checking reachability", buf, 0xCu);
    }

    if (v15)
    {
      v17 = [(Browse_Implementation *)self addEntity];
      v18 = self->_queue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10005ADEC;
      v21[3] = &unk_1000A3C00;
      v22 = v17;
      v19 = v17;
      sub_10005A93C(v15, v5, v18, v21);
    }
  }
}

@end