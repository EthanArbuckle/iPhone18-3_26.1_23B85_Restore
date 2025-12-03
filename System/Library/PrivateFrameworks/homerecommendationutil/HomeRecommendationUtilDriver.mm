@interface HomeRecommendationUtilDriver
- (HomeRecommendationUtilDriver)initWithArgs:(id)args homeID:(id)d templateName:(id)name serviceID:(id)iD accessoryID:(id)accessoryID;
- (id)commit:(id)commit;
- (id)loadRecommendations;
- (id)run;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)logError:(id)error;
- (void)start;
@end

@implementation HomeRecommendationUtilDriver

- (HomeRecommendationUtilDriver)initWithArgs:(id)args homeID:(id)d templateName:(id)name serviceID:(id)iD accessoryID:(id)accessoryID
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  accessoryIDCopy = accessoryID;
  v40.receiver = self;
  v40.super_class = HomeRecommendationUtilDriver;
  v16 = [(HomeRecommendationUtilDriver *)&v40 init];
  if (v16)
  {
    v39 = accessoryIDCopy;
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [v17 stringForKey:@"home"];
    homeID = v16->_homeID;
    v16->_homeID = v18;

    v20 = +[NSUserDefaults standardUserDefaults];
    v21 = [v20 stringForKey:@"template"];
    templateName = v16->_templateName;
    v16->_templateName = v21;

    v23 = +[NSUserDefaults standardUserDefaults];
    v16->_autoCommit = [v23 BOOLForKey:@"auto-commit"];

    v24 = +[NSUserDefaults standardUserDefaults];
    v25 = [v24 stringForKey:@"serviceID"];
    serviceID = v16->_serviceID;
    v16->_serviceID = v25;

    v27 = +[NSUserDefaults standardUserDefaults];
    v28 = [v27 stringForKey:@"recommendationID"];
    recommendationID = v16->_recommendationID;
    v16->_recommendationID = v28;

    [(HomeRecommendationUtilDriver *)v16 setShowTriggerSummary:1];
    [(HomeRecommendationUtilDriver *)v16 setShowTriggerEnableSwitch:1];
    [(HomeRecommendationUtilDriver *)v16 setShowTriggerDeleteButton:1];
    [(HomeRecommendationUtilDriver *)v16 setShowActionSetsInstructions:1];
    [(HomeRecommendationUtilDriver *)v16 setShowConditionTriggers:1];
    [(HomeRecommendationUtilDriver *)v16 setAllowDurationEditing:1];
    [(HomeRecommendationUtilDriver *)v16 setAllowConvertToShortcut:1];
    [(HomeRecommendationUtilDriver *)v16 setFiltersEmptyActionSets:0];
    [(HomeRecommendationUtilDriver *)v16 setTestActionsInstructionDescription:&stru_1000087A8];
    [(HomeRecommendationUtilDriver *)v16 setServiceActionsInstructionDescription:&stru_1000087A8];
    [(HomeRecommendationUtilDriver *)v16 setDeleteInstructionDescription:&stru_1000087A8];
    [(HomeRecommendationUtilDriver *)v16 setActionEditorInstructionsDescription:&stru_1000087A8];
    v30 = +[NSSet set];
    [(HomeRecommendationUtilDriver *)v16 setUnsupportedTriggers:v30];

    if (dCopy)
    {
      objc_storeStrong(&v16->_homeID, d);
    }

    if (nameCopy)
    {
      objc_storeStrong(&v16->_templateName, name);
    }

    if (iDCopy)
    {
      objc_storeStrong(&v16->_serviceID, iD);
    }

    objc_storeStrong(&v16->_accessoryID, accessoryID);
    v31 = [[HMHomeManagerConfiguration alloc] initWithOptions:-1 cachePolicy:0];
    v32 = [[HMHomeManager alloc] initWithHomeMangerConfiguration:v31];
    homeManager = v16->_homeManager;
    v16->_homeManager = v32;

    [(HMHomeManager *)v16->_homeManager setDelegate:v16];
    v34 = dispatch_group_create();
    dispatchGroup = v16->_dispatchGroup;
    v16->_dispatchGroup = v34;

    homeManager = [(HomeRecommendationUtilDriver *)v16 homeManager];
    v37 = +[_TtC13HomeDataModel9DataModel shared];
    [v37 setHomeManager:homeManager];

    accessoryIDCopy = v39;
  }

  return v16;
}

- (void)start
{
  dispatchGroup = [(HomeRecommendationUtilDriver *)self dispatchGroup];
  dispatch_group_enter(dispatchGroup);

  v4 = [(HomeRecommendationUtilDriver *)self run];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000170C;
  v14[3] = &unk_100008258;
  v14[4] = self;
  v5 = [v4 addCompletionBlock:v14];

  dispatchGroup2 = [(HomeRecommendationUtilDriver *)self dispatchGroup];
  v7 = dispatch_time(0, 10000000);
  v8 = dispatch_group_wait(dispatchGroup2, v7);

  if (v8)
  {
    do
    {
      v9 = +[NSRunLoop currentRunLoop];
      v10 = +[NSDate distantPast];
      [v9 runMode:NSDefaultRunLoopMode beforeDate:v10];

      dispatchGroup3 = [(HomeRecommendationUtilDriver *)self dispatchGroup];
      v12 = dispatch_time(0, 10000000);
      v13 = dispatch_group_wait(dispatchGroup3, v12);
    }

    while (v13);
  }
}

- (id)run
{
  v3 = objc_opt_new();
  [(HomeRecommendationUtilDriver *)self setHomeFuture:v3];

  homeManager = [(HomeRecommendationUtilDriver *)self homeManager];
  homes = [homeManager homes];
  v6 = [homes count];

  if (v6)
  {
    homeManager2 = [(HomeRecommendationUtilDriver *)self homeManager];
    [(HomeRecommendationUtilDriver *)self homeManagerDidUpdateHomes:homeManager2];
  }

  homeFuture = [(HomeRecommendationUtilDriver *)self homeFuture];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001920;
  v15[3] = &unk_100008310;
  v15[4] = self;
  v9 = [homeFuture flatMap:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001DF4;
  v14[3] = &unk_1000083D8;
  v14[4] = self;
  v10 = [v9 flatMap:v14];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002294;
  v13[3] = &unk_100008258;
  v13[4] = self;
  v11 = [v10 addCompletionBlock:v13];

  return v11;
}

- (id)loadRecommendations
{
  extraOptions = [(HomeRecommendationUtilDriver *)self extraOptions];

  if (extraOptions)
  {
    extraOptions2 = [(HomeRecommendationUtilDriver *)self extraOptions];
    unsignedIntegerValue = [extraOptions2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 39;
  }

  v6 = objc_alloc_init(HRERecommendationEngine);
  [(HomeRecommendationUtilDriver *)self setRecommendationEngine:v6];

  service = [(HomeRecommendationUtilDriver *)self service];

  if (service)
  {
    service2 = [(HomeRecommendationUtilDriver *)self service];
    v9 = objc_alloc_init(HFNullValueSource);
    service = [HFServiceItem serviceItemForService:service2 valueSource:v9];
  }

  v10 = service;
  accessory = [(HomeRecommendationUtilDriver *)self accessory];

  v12 = v10;
  if (accessory)
  {
    v13 = [HFAccessoryItem alloc];
    accessory2 = [(HomeRecommendationUtilDriver *)self accessory];
    v15 = objc_opt_new();
    v12 = [v13 initWithAccessory:accessory2 valueSource:v15];
  }

  template = [(HomeRecommendationUtilDriver *)self template];

  if (template)
  {
    v17 = [HRETemplateRecommendationGenerator alloc];
    template2 = [(HomeRecommendationUtilDriver *)self template];
    v27 = template2;
    v19 = [NSArray arrayWithObjects:&v27 count:1];
    recommendationEngine = [v17 initWithTemplates:v19];

    home = [(HomeRecommendationUtilDriver *)self home];
    typeGroup2 = [NSArray na_arrayWithSafeObject:v10];
    typeGroup = [(HomeRecommendationUtilDriver *)self typeGroup];
    v24 = [recommendationEngine recommendationsForHome:home withServiceLikeItems:typeGroup2 accessoryTypeGroup:typeGroup options:unsignedIntegerValue];
    v25 = [v24 flatMap:&stru_100008418];
  }

  else
  {
    recommendationEngine = [(HomeRecommendationUtilDriver *)self recommendationEngine];
    home = [NSArray na_arrayWithSafeObject:v12];
    typeGroup2 = [(HomeRecommendationUtilDriver *)self typeGroup];
    typeGroup = [(HomeRecommendationUtilDriver *)self home];
    v25 = [recommendationEngine generateRecommendationsForServiceLikeItems:home accessoryTypeGroup:typeGroup2 inHome:typeGroup options:unsignedIntegerValue];
  }

  return v25;
}

- (id)commit:(id)commit
{
  commitCopy = commit;
  objc_opt_class();
  v4 = commitCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v6)
  {
    selectedTriggerBuilder = [v6 selectedTriggerBuilder];
LABEL_11:
    v11 = selectedTriggerBuilder;
    goto LABEL_12;
  }

  if (v9)
  {
    selectedTriggerBuilder = [v9 selectedActionSetBuilder];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:
  commitItem = [v11 commitItem];
  v13 = [commitItem recover:&stru_100008458];

  return v13;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  [homes setDelegate:0];
  homeID = [(HomeRecommendationUtilDriver *)self homeID];

  if (homeID)
  {
    homeManager = [(HomeRecommendationUtilDriver *)self homeManager];
    homes = [homeManager homes];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100002CBC;
    v21[3] = &unk_100008480;
    v21[4] = self;
    v7 = [homes na_firstObjectPassingTest:v21];
    [(HomeRecommendationUtilDriver *)self setHome:v7];

    home = [(HomeRecommendationUtilDriver *)self home];

    if (!home)
    {
      homeManager2 = [(HomeRecommendationUtilDriver *)self homeManager];
      homes2 = [homeManager2 homes];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100002D30;
      v20[3] = &unk_100008480;
      v20[4] = self;
      v11 = [homes2 na_firstObjectPassingTest:v20];
      [(HomeRecommendationUtilDriver *)self setHome:v11];
    }
  }

  home2 = [(HomeRecommendationUtilDriver *)self home];

  if (home2)
  {
    home3 = [(HomeRecommendationUtilDriver *)self home];
    v14 = +[_TtC13HomeDataModel9DataModel shared];
    [v14 setCurrentHome:home3];

    NSLog(@"Waiting 10 seconds for DataModel snapshots to settle");
    v15 = +[NAScheduler mainThreadScheduler];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002D94;
    v19[3] = &unk_1000084A8;
    v19[4] = self;
    v16 = [v15 afterDelay:v19 performBlock:10.0];
  }

  else
  {
    homeFuture = [(HomeRecommendationUtilDriver *)self homeFuture];
    v18 = [NSError errorWithDomain:@"HomeRecommendationUtilDriver" code:0 userInfo:0];
    [homeFuture finishWithError:v18];
  }
}

- (void)logError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v10 = errorCopy;
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"HomeRecommendationUtilDriver"];

    if (v6)
    {
      code = [v10 code];
      if (code > 1)
      {
        if (code == 2)
        {
          serviceID = [(HomeRecommendationUtilDriver *)self serviceID];
          NSLog(@"Service uuid '%@' not found", serviceID);
        }

        else
        {
          if (code != 4)
          {
            goto LABEL_10;
          }

          serviceID = [v10 userInfo];
          v9 = [serviceID objectForKey:@"error"];
          NSLog(@"Failed to commit recommendation with error: %@", v9);
        }

        goto LABEL_11;
      }

      if (!code)
      {
        NSLog(@"Home not found");
        goto LABEL_11;
      }

      if (code == 1)
      {
        NSLog(@"Template not found");
LABEL_11:
        errorCopy = v10;
        goto LABEL_12;
      }
    }

LABEL_10:
    NSLog(@"Unknown error: %@", v10);
    goto LABEL_11;
  }

LABEL_12:
}

@end