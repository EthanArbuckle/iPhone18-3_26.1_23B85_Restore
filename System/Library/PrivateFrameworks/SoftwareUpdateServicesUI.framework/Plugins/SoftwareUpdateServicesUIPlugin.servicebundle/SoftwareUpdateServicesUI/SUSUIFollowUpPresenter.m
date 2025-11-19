@interface SUSUIFollowUpPresenter
+ (id)sharedInstance;
- (BOOL)FollowUpWithIdentifierIsPresented:(id)a3;
- (BOOL)clearAllFollowUps;
- (BOOL)clearFollowUpWithIdentifiers:(id)a3;
- (BOOL)presentFollowUp:(id)a3 error:(id *)a4;
- (SUSUIFollowUpPresenter)init;
- (id)_followUpItemForSUSUIFollowUp:(id)a3;
@end

@implementation SUSUIFollowUpPresenter

+ (id)sharedInstance
{
  v5 = &unk_6F960;
  location = 0;
  objc_storeStrong(&location, &stru_61740);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F958;

  return v2;
}

- (SUSUIFollowUpPresenter)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = SUSUIFollowUpPresenter;
  v8 = [(SUSUIFollowUpPresenter *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v2 = dispatch_queue_create("com.apple.susui.followUpPresenterQueue", 0);
    queue = v11->_queue;
    v11->_queue = v2;

    v4 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.softwareupdateservicesui.followupclient"];
    followUpController = v11->_followUpController;
    v11->_followUpController = v4;
  }

  v7 = v11;
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)presentFollowUp:(id)a3 error:(id *)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 0;
  queue = v22->_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_405D4;
  v12 = &unk_61768;
  v13 = v22;
  v14[0] = location[0];
  v14[1] = &v15;
  v14[2] = v20;
  dispatch_sync(queue, &v8);
  v7 = *(v16 + 24);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)clearFollowUpWithIdentifiers:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  queue = v19->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_40894;
  v10 = &unk_61790;
  v12[1] = &v13;
  v11 = v19;
  v12[0] = location[0];
  dispatch_sync(queue, &v6);
  v5 = *(v14 + 24);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)clearAllFollowUps
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_40AF0;
  v9 = &unk_5FFA0;
  v10[1] = &v11;
  v10[0] = self;
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (BOOL)FollowUpWithIdentifierIsPresented:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  queue = v19->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_40D94;
  v10 = &unk_617B8;
  v11 = v19;
  v12[0] = location[0];
  v12[1] = &v13;
  dispatch_sync(queue, &v6);
  v5 = *(v14 + 24);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (id)_followUpItemForSUSUIFollowUp:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v26 = objc_alloc_init(FLFollowUpItem);
    v14 = [location[0] title];
    [v26 setTitle:?];

    v15 = [location[0] informativeText];
    [v26 setInformativeText:?];

    v16 = [location[0] informativeFooterText];
    [v26 setInformativeFooterText:?];

    v17 = [objc_opt_class() uniqueIdentifier];
    [v26 setUniqueIdentifier:?];

    v18 = [location[0] groupIdentifier];
    [v26 setGroupIdentifier:?];

    v19 = [location[0] targetBundleIdentifier];
    [v26 setTargetBundleIdentifier:?];

    v20 = [location[0] userInfo];
    [v26 setUserInfo:?];

    [v26 setDisplayStyle:{objc_msgSend(location[0], "displayStyle")}];
    v21 = [location[0] actions];
    [v26 setActions:?];

    if ([location[0] allowNotification])
    {
      v25 = objc_alloc_init(FLFollowUpNotification);
      v8 = [location[0] notificationTitle];
      [v25 setTitle:?];

      v9 = [location[0] notificationInformativeText];
      [v25 setInformativeText:?];

      v10 = [location[0] notificationUnlockActionLabel];
      [v25 setUnlockActionLabel:?];

      [location[0] notificationFrequency];
      [v25 setFrequency:?];
      v11 = [location[0] notificationActivateAction];
      [v25 setActivateAction:?];

      v12 = [location[0] notificationClearAction];
      [v25 setClearAction:?];

      v13 = [location[0] notificationOptions];
      if (v13)
      {
        v5 = +[FLFollowUpNotification defaultOptions];
        v24 = [NSMutableSet setWithSet:?];

        v6 = v24;
        v7 = [location[0] notificationOptions];
        [(NSMutableSet *)v6 addObjectsFromArray:?];

        [v25 setOptions:v24];
        objc_storeStrong(&v24, 0);
      }

      [v26 setNotification:v25];
      objc_storeStrong(&v25, 0);
    }

    v32 = v26;
    v27 = 1;
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v30 = SUSUILog();
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v30;
      v23 = v29;
      sub_2544(v28);
      _os_log_impl(&dword_0, v22, v23, "Unable to create FLFollowUpItem with nil SUSUIFollowUpBase", v28, 2u);
    }

    objc_storeStrong(&v30, 0);
    v32 = 0;
    v27 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v32;

  return v3;
}

@end