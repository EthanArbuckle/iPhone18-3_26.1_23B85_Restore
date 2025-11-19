void start()
{
  signal(15, 1);
  v0 = dispatch_get_global_queue(21, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  dispatch_source_set_event_handler(v1, &stru_100004110);
  dispatch_activate(v1);
  v2 = objc_autoreleasePoolPush();
  v3 = [NSString stringWithFormat:@"adprivacyd launched"];
  _ADLog();

  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v4 = [NSString stringWithFormat:@"ERROR: Unable to set the temp directory. Please file a radar..."];
    _ADLog();
  }

  v5 = +[APOdmlDatabaseConfiguration sharedInstance];
  [v5 setProcessToDaemon];

  if (MKBDeviceUnlockedSinceBoot())
  {
    v6 = +[APOdmlStoreServerContainer sharedInstance];
    [v6 startListening];
  }

  v7 = +[ADAttributionService sharedInstance];
  v8 = +[ADAdTrackingSchedulingManager sharedInstance];
  if (MGGetBoolAnswer())
  {
    v9 = +[ADCoreDefaults sharedInstance];
    v10 = [v9 BOOLForKey:@"ResetiAdIDs"];

    if (v10)
    {
      v11 = +[ADIDManager sharedInstance];
      [v11 clearDSIDRecords];

      v12 = +[ADCoreDefaults sharedInstance];
      [v12 setBool:0 forKey:@"ResetiAdIDs"];

      v13 = [NSString stringWithFormat:@"Reset all iAd ID records."];
      _ADLog();
    }
  }

  v14 = +[ADIDManager sharedInstance];
  v15 = [v14 activeDSIDRecord];

  if (!v15)
  {
    v16 = +[ADIDManager sharedInstance];
    v17 = +[ADCoreSettings sharedInstance];
    v18 = [v17 iTunesAccountDSID];
    [v16 setDSID:v18 completionHandler:&stru_100004130];
  }

  v19 = [NSString stringWithFormat:@"adprivacyd starting"];
  _ADLog();

  objc_autoreleasePoolPop(v2);
  dispatch_main();
}

void sub_100000E5C(id a1)
{
  v1 = +[ADIDManager sharedInstance];
  v7 = [v1 activeDSIDRecord];

  if (v7)
  {
    v2 = [v7 DSID];
    v3 = [NSString stringWithFormat:@"Set DSID to %@", v2];
    _ADLog();

    v4 = +[ADIDManager sharedInstance];
    v5 = [v4 activeDSIDRecord];
    [NSString stringWithFormat:@"%@", v5];
  }

  else
  {
    v4 = +[ADCoreSettings sharedInstance];
    v5 = [v4 iTunesAccountDSID];
    [NSString stringWithFormat:@"Unable to set DSID to %@", v5];
  }
  v6 = ;
  _ADLog();
}