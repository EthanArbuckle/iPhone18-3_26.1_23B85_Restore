@interface HomeRecommendationUtilDriver
- (HomeRecommendationUtilDriver)initWithArgs:(id)a3 homeID:(id)a4 templateName:(id)a5 serviceID:(id)a6 accessoryID:(id)a7;
- (id)commit:(id)a3;
- (id)loadRecommendations;
- (id)run;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)logError:(id)a3;
- (void)start;
@end

@implementation HomeRecommendationUtilDriver

- (HomeRecommendationUtilDriver)initWithArgs:(id)a3 homeID:(id)a4 templateName:(id)a5 serviceID:(id)a6 accessoryID:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v40.receiver = self;
  v40.super_class = HomeRecommendationUtilDriver;
  v16 = [(HomeRecommendationUtilDriver *)&v40 init];
  if (v16)
  {
    v39 = v15;
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

    if (v12)
    {
      objc_storeStrong(&v16->_homeID, a4);
    }

    if (v13)
    {
      objc_storeStrong(&v16->_templateName, a5);
    }

    if (v14)
    {
      objc_storeStrong(&v16->_serviceID, a6);
    }

    objc_storeStrong(&v16->_accessoryID, a7);
    v31 = [[HMHomeManagerConfiguration alloc] initWithOptions:-1 cachePolicy:0];
    v32 = [[HMHomeManager alloc] initWithHomeMangerConfiguration:v31];
    homeManager = v16->_homeManager;
    v16->_homeManager = v32;

    [(HMHomeManager *)v16->_homeManager setDelegate:v16];
    v34 = dispatch_group_create();
    dispatchGroup = v16->_dispatchGroup;
    v16->_dispatchGroup = v34;

    v36 = [(HomeRecommendationUtilDriver *)v16 homeManager];
    v37 = +[_TtC13HomeDataModel9DataModel shared];
    [v37 setHomeManager:v36];

    v15 = v39;
  }

  return v16;
}

- (void)start
{
  v3 = [(HomeRecommendationUtilDriver *)self dispatchGroup];
  dispatch_group_enter(v3);

  v4 = [(HomeRecommendationUtilDriver *)self run];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000170C;
  v14[3] = &unk_100008258;
  v14[4] = self;
  v5 = [v4 addCompletionBlock:v14];

  v6 = [(HomeRecommendationUtilDriver *)self dispatchGroup];
  v7 = dispatch_time(0, 10000000);
  v8 = dispatch_group_wait(v6, v7);

  if (v8)
  {
    do
    {
      v9 = +[NSRunLoop currentRunLoop];
      v10 = +[NSDate distantPast];
      [v9 runMode:NSDefaultRunLoopMode beforeDate:v10];

      v11 = [(HomeRecommendationUtilDriver *)self dispatchGroup];
      v12 = dispatch_time(0, 10000000);
      v13 = dispatch_group_wait(v11, v12);
    }

    while (v13);
  }
}

- (id)run
{
  v3 = objc_opt_new();
  [(HomeRecommendationUtilDriver *)self setHomeFuture:v3];

  v4 = [(HomeRecommendationUtilDriver *)self homeManager];
  v5 = [v4 homes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(HomeRecommendationUtilDriver *)self homeManager];
    [(HomeRecommendationUtilDriver *)self homeManagerDidUpdateHomes:v7];
  }

  v8 = [(HomeRecommendationUtilDriver *)self homeFuture];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001920;
  v15[3] = &unk_100008310;
  v15[4] = self;
  v9 = [v8 flatMap:v15];
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
  v3 = [(HomeRecommendationUtilDriver *)self extraOptions];

  if (v3)
  {
    v4 = [(HomeRecommendationUtilDriver *)self extraOptions];
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 39;
  }

  v6 = objc_alloc_init(HRERecommendationEngine);
  [(HomeRecommendationUtilDriver *)self setRecommendationEngine:v6];

  v7 = [(HomeRecommendationUtilDriver *)self service];

  if (v7)
  {
    v8 = [(HomeRecommendationUtilDriver *)self service];
    v9 = objc_alloc_init(HFNullValueSource);
    v7 = [HFServiceItem serviceItemForService:v8 valueSource:v9];
  }

  v10 = v7;
  v11 = [(HomeRecommendationUtilDriver *)self accessory];

  v12 = v10;
  if (v11)
  {
    v13 = [HFAccessoryItem alloc];
    v14 = [(HomeRecommendationUtilDriver *)self accessory];
    v15 = objc_opt_new();
    v12 = [v13 initWithAccessory:v14 valueSource:v15];
  }

  v16 = [(HomeRecommendationUtilDriver *)self template];

  if (v16)
  {
    v17 = [HRETemplateRecommendationGenerator alloc];
    v18 = [(HomeRecommendationUtilDriver *)self template];
    v27 = v18;
    v19 = [NSArray arrayWithObjects:&v27 count:1];
    v20 = [v17 initWithTemplates:v19];

    v21 = [(HomeRecommendationUtilDriver *)self home];
    v22 = [NSArray na_arrayWithSafeObject:v10];
    v23 = [(HomeRecommendationUtilDriver *)self typeGroup];
    v24 = [v20 recommendationsForHome:v21 withServiceLikeItems:v22 accessoryTypeGroup:v23 options:v5];
    v25 = [v24 flatMap:&stru_100008418];
  }

  else
  {
    v20 = [(HomeRecommendationUtilDriver *)self recommendationEngine];
    v21 = [NSArray na_arrayWithSafeObject:v12];
    v22 = [(HomeRecommendationUtilDriver *)self typeGroup];
    v23 = [(HomeRecommendationUtilDriver *)self home];
    v25 = [v20 generateRecommendationsForServiceLikeItems:v21 accessoryTypeGroup:v22 inHome:v23 options:v5];
  }

  return v25;
}

- (id)commit:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
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
    v10 = [v6 selectedTriggerBuilder];
LABEL_11:
    v11 = v10;
    goto LABEL_12;
  }

  if (v9)
  {
    v10 = [v9 selectedActionSetBuilder];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:
  v12 = [v11 commitItem];
  v13 = [v12 recover:&stru_100008458];

  return v13;
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  [a3 setDelegate:0];
  v4 = [(HomeRecommendationUtilDriver *)self homeID];

  if (v4)
  {
    v5 = [(HomeRecommendationUtilDriver *)self homeManager];
    v6 = [v5 homes];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100002CBC;
    v21[3] = &unk_100008480;
    v21[4] = self;
    v7 = [v6 na_firstObjectPassingTest:v21];
    [(HomeRecommendationUtilDriver *)self setHome:v7];

    v8 = [(HomeRecommendationUtilDriver *)self home];

    if (!v8)
    {
      v9 = [(HomeRecommendationUtilDriver *)self homeManager];
      v10 = [v9 homes];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100002D30;
      v20[3] = &unk_100008480;
      v20[4] = self;
      v11 = [v10 na_firstObjectPassingTest:v20];
      [(HomeRecommendationUtilDriver *)self setHome:v11];
    }
  }

  v12 = [(HomeRecommendationUtilDriver *)self home];

  if (v12)
  {
    v13 = [(HomeRecommendationUtilDriver *)self home];
    v14 = +[_TtC13HomeDataModel9DataModel shared];
    [v14 setCurrentHome:v13];

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
    v17 = [(HomeRecommendationUtilDriver *)self homeFuture];
    v18 = [NSError errorWithDomain:@"HomeRecommendationUtilDriver" code:0 userInfo:0];
    [v17 finishWithError:v18];
  }
}

- (void)logError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:@"HomeRecommendationUtilDriver"];

    if (v6)
    {
      v7 = [v10 code];
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v8 = [(HomeRecommendationUtilDriver *)self serviceID];
          NSLog(@"Service uuid '%@' not found", v8);
        }

        else
        {
          if (v7 != 4)
          {
            goto LABEL_10;
          }

          v8 = [v10 userInfo];
          v9 = [v8 objectForKey:@"error"];
          NSLog(@"Failed to commit recommendation with error: %@", v9);
        }

        goto LABEL_11;
      }

      if (!v7)
      {
        NSLog(@"Home not found");
        goto LABEL_11;
      }

      if (v7 == 1)
      {
        NSLog(@"Template not found");
LABEL_11:
        v4 = v10;
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