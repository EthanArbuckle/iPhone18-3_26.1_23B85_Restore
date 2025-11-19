@interface PKiCloudDataController
- (PKiCloudDataController)init;
- (id)createiCloudPrinterInfo:(id)a3 newPrinterInfo:(id)a4;
- (id)getiCloudPrintersList;
- (id)log_iCloudPrinters;
- (void)addPrinterToiCloudWithInfo:(id)a3;
- (void)removePrinterFromiCloudWithInfo:(id)a3;
- (void)resetiCloudData;
- (void)setiCloudPrintersList:(id)a3;
- (void)synchronizeiCloudData;
- (void)ubiquitousKeyValueStoreDidChange:(id)a3;
- (void)updateiCloudPrinter:(id)a3 newInfo:(id)a4 newInfoKey:(id)a5;
@end

@implementation PKiCloudDataController

- (PKiCloudDataController)init
{
  v7.receiver = self;
  v7.super_class = PKiCloudDataController;
  v2 = [(PKiCloudDataController *)&v7 init];
  if (v2)
  {
    v3 = +[NSUbiquitousKeyValueStore defaultStore];
    [(PKiCloudDataController *)v2 setUbiquitousKeyValueStore:v3];

    v4 = +[NSNotificationCenter defaultCenter];
    v5 = [(PKiCloudDataController *)v2 ubiquitousKeyValueStore];
    [v4 addObserver:v2 selector:"ubiquitousKeyValueStoreDidChange:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:v5];

    [(PKiCloudDataController *)v2 synchronizeiCloudData];
  }

  return v2;
}

- (void)synchronizeiCloudData
{
  v3 = [(PKiCloudDataController *)self ubiquitousKeyValueStore];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043228;
  v4[3] = &unk_1000A2218;
  v4[4] = self;
  [v3 synchronizeWithCompletionHandler:v4];
}

- (id)getiCloudPrintersList
{
  v2 = [(PKiCloudDataController *)self ubiquitousKeyValueStore];
  v3 = [v2 objectForKey:@"com.apple.printing.iCloudPrinters"];

  return v3;
}

- (void)setiCloudPrintersList:(id)a3
{
  v6 = a3;
  v4 = [(PKiCloudDataController *)self ubiquitousKeyValueStore];
  [v4 setArray:v6 forKey:@"com.apple.printing.iCloudPrinters"];

  [(PKiCloudDataController *)self synchronizeiCloudData];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, PrinterTooliCloudPrintersChangedNotification, 0, 0, 1u);
}

- (void)addPrinterToiCloudWithInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:PKPrinterUUIDKey];
  v6 = [(PKiCloudDataController *)self getiCloudPrintersList];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = +[NSMutableArray array];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100043584;
  v12[3] = &unk_1000A32B8;
  v8 = v5;
  v13 = v8;
  v9 = [v7 indexOfObjectPassingTest:v12];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndex:v9];
    [v7 removeObjectAtIndex:v9];
  }

  v11 = [(PKiCloudDataController *)self createiCloudPrinterInfo:v10 newPrinterInfo:v4];
  if (v11)
  {
    [v7 insertObject:v11 atIndex:0];
  }

  [(PKiCloudDataController *)self setiCloudPrintersList:v7];
}

- (void)removePrinterFromiCloudWithInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:PKPrinterUUIDKey];
  v6 = [(PKiCloudDataController *)self getiCloudPrintersList];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = +[NSMutableArray array];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004374C;
  v10[3] = &unk_1000A32B8;
  v8 = v5;
  v11 = v8;
  v9 = [v7 indexOfObjectPassingTest:v10];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 removeObjectAtIndex:v9];
    [(PKiCloudDataController *)self setiCloudPrintersList:v7];
  }
}

- (void)updateiCloudPrinter:(id)a3 newInfo:(id)a4 newInfoKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:PKPrinterUUIDKey];
  v12 = [(PKiCloudDataController *)self getiCloudPrintersList];
  v13 = [v12 mutableCopy];

  if (!v13)
  {
    v13 = +[NSMutableArray array];
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000439B0;
  v18[3] = &unk_1000A32B8;
  v14 = v11;
  v19 = v14;
  v15 = [v13 indexOfObjectPassingTest:v18];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v13 objectAtIndex:v15];
    v17 = [v16 mutableCopy];

    [v13 removeObjectAtIndex:v15];
    [v17 setObject:v9 forKeyedSubscript:v10];
    [v13 insertObject:v17 atIndex:0];
    [(PKiCloudDataController *)self setiCloudPrintersList:v13];
  }
}

- (void)resetiCloudData
{
  v3 = [(PKiCloudDataController *)self ubiquitousKeyValueStore];
  [v3 removeObjectForKey:@"com.apple.printing.iCloudPrinters"];

  [(PKiCloudDataController *)self synchronizeiCloudData];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = PrinterTooliCloudPrintersChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

- (void)ubiquitousKeyValueStoreDidChange:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NSUbiquitousKeyValueStoreChangeReasonKey];
  v6 = [v5 unsignedIntegerValue];

  if (v6 >= 4)
  {
    v7 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NSUbiquitousKeyValueStoreDidChangeExternallyNotification ignoring unknown notification: %ld", &v9, 0xCu);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, PrinterTooliCloudPrintersChangedNotification, 0, 0, 0);
}

- (id)createiCloudPrinterInfo:(id)a3 newPrinterInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v52 = v5;
  v49 = v6;
  if (v5)
  {
    v7 = [NSMutableDictionary dictionaryWithDictionary:v5];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = PKPrinterUUIDKey;
    v9 = [v6 objectForKeyedSubscript:PKPrinterUUIDKey];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }

  v10 = PKPrinterNameKey;
  v53 = v7;
  v11 = [v6 objectForKeyedSubscript:PKPrinterNameKey];
  v48 = v11;
  if (v11)
  {
    [v7 setObject:v11 forKeyedSubscript:v10];
  }

  v12 = PKPrinterDisplayNameKey;
  v13 = [v6 objectForKeyedSubscript:PKPrinterDisplayNameKey];
  v47 = v13;
  if (v13)
  {
    [v7 setObject:v13 forKeyedSubscript:v12];
  }

  v14 = PKPrinterCustomNameKey;
  v15 = [v6 objectForKeyedSubscript:PKPrinterCustomNameKey];
  v45 = v15;
  if (v15)
  {
    [v7 setObject:v15 forKeyedSubscript:v14];
  }

  v16 = PKPrinterLocationKey;
  v17 = [v6 objectForKeyedSubscript:PKPrinterLocationKey];
  v44 = v17;
  if (v17)
  {
    [v7 setObject:v17 forKeyedSubscript:v16];
  }

  v18 = PKPrinterCustomLocationKey;
  v19 = [v6 objectForKeyedSubscript:PKPrinterCustomLocationKey];
  v43 = v19;
  if (v19)
  {
    [v7 setObject:v19 forKeyedSubscript:v18];
  }

  v20 = PKPrinterImageDataKey;
  v50 = [v6 objectForKeyedSubscript:PKPrinterImageDataKey];
  if (v50)
  {
    [v7 setObject:v50 forKeyedSubscript:v20];
  }

  v21 = +[NSDate date];
  [v7 setObject:v21 forKeyedSubscript:PKPrinterLastUsedDateKey];

  v46 = [v6 objectForKeyedSubscript:PKPrinterEndpointKey];
  v22 = PKPrinterEndPointsKey;
  v23 = [v5 objectForKeyedSubscript:PKPrinterEndPointsKey];
  v51 = v23;
  if (v23)
  {
    v54 = [v23 mutableCopy];
  }

  else
  {
    v54 = +[NSMutableArray array];
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100044340;
  v59[3] = &unk_1000A32E0;
  v24 = v46;
  v60 = v24;
  v25 = [v51 indexesOfObjectsPassingTest:v59];
  if (v25)
  {
    [v54 removeObjectsAtIndexes:v25];
  }

  if (v24)
  {
    [v54 insertObject:v24 atIndex:0];
  }

  [v7 setObject:v54 forKeyedSubscript:v22];
  v26 = [v6 objectForKeyedSubscript:PKPrinterURLKey];
  v27 = PKPrinterURLsKey;
  v28 = [v5 objectForKeyedSubscript:PKPrinterURLsKey];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 mutableCopy];
  }

  else
  {
    v30 = +[NSMutableArray array];
  }

  v31 = v30;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10004434C;
  v57[3] = &unk_1000A3308;
  v32 = v26;
  v58 = v32;
  v33 = [v29 indexesOfObjectsPassingTest:v57];

  if (v33)
  {
    [v31 removeObjectsAtIndexes:v33];
  }

  if (v32)
  {
    [v31 insertObject:v32 atIndex:0];
  }

  [v53 setObject:v31 forKeyedSubscript:v27];
  v34 = liteGetCurrentNetwork();
  v35 = PKPrinterNetworksKey;
  v36 = [v52 objectForKeyedSubscript:{PKPrinterNetworksKey, v34}];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 mutableCopy];
  }

  else
  {
    v38 = +[NSMutableArray array];
  }

  v39 = v38;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100044468;
  v55[3] = &unk_1000A3308;
  v40 = v34;
  v56 = v40;
  v41 = [v37 indexesOfObjectsPassingTest:v55];

  if (v41)
  {
    [v39 removeObjectsAtIndexes:v41];
  }

  [v39 insertObject:v40 atIndex:0];
  [v53 setObject:v39 forKeyedSubscript:v35];

  return v53;
}

- (id)log_iCloudPrinters
{
  v28 = objc_opt_new();
  v30 = liteGetPrintersForCurrentNetwork();
  v23 = [(PKiCloudDataController *)self getiCloudPrintersList];
  v3 = [v23 count];
  v4 = [v30 networkName];
  NSLog(@"************************** log_iCloudPrinters numPrinters:%ld, Network '%@'", v3, v4);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v23;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v5)
  {
    v27 = *v39;
    v6 = PKPrinterCustomNameKey;
    v7 = PKPrinterCustomLocationKey;
    v26 = PKPrinterDisplayNameKey;
    v25 = PKPrinterUUIDKey;
    do
    {
      v29 = v5;
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = sub_100044A70;
        v36 = sub_100044A80;
        v37 = 0;
        v10 = [v30 printers];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100044A88;
        v31[3] = &unk_1000A3330;
        v31[4] = v9;
        v31[5] = &v32;
        [v10 enumerateObjectsUsingBlock:v31];

        if (v33[5])
        {
          v11 = [v30 networkName];
          v12 = [NSString stringWithFormat:@" network:'%@'", v11];
        }

        else
        {
          v12 = &stru_1000A4BB0;
        }

        v13 = [v9 objectForKeyedSubscript:v6];
        if (v13)
        {
          v14 = [v9 objectForKeyedSubscript:v6];
          v15 = [NSString stringWithFormat:@" customName:'%@'", v14];
        }

        else
        {
          v15 = &stru_1000A4BB0;
        }

        v16 = [v9 objectForKeyedSubscript:v7];
        if (v16)
        {
          v17 = [v9 objectForKeyedSubscript:v7];
          v18 = [NSString stringWithFormat:@" customLocation:'%@'", v17];
        }

        else
        {
          v18 = &stru_1000A4BB0;
        }

        v19 = [v9 objectForKeyedSubscript:v26];
        v20 = [v9 objectForKeyedSubscript:v25];
        v21 = [NSString stringWithFormat:@"name:%@ UUID:%@%@%@%@", v19, v20, v15, v18, v12];

        [v28 addObject:v21];
        NSLog(@"**************************      %@", v21);

        _Block_object_dispose(&v32, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v5);
  }

  return v28;
}

@end