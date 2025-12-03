@interface FedStatsCohortQueryInstalledApps
+ (id)cohortInstance;
+ (void)initialize;
- (BOOL)_isSupportedIntentMediaApp:(id)app :(id)a4 :(id)a5;
- (FedStatsCohortQueryInstalledApps)init;
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
- (void)applyFilteringForMediaDomain;
- (void)lsAppRecords;
- (void)lsPluginKitExtensions;
- (void)resolveDomainToBundleIds;
@end

@implementation FedStatsCohortQueryInstalledApps

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [NSSet setWithArray:&off_100030418];
    v3 = qword_1000395C8;
    qword_1000395C8 = v2;

    v4 = objc_opt_class();
    v13 = NSStringFromClass(v4);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [NSSet setWithObjects:v13, v6, v8, v10, 0];
    v12 = qword_1000395D0;
    qword_1000395D0 = v11;
  }
}

- (FedStatsCohortQueryInstalledApps)init
{
  v10.receiver = self;
  v10.super_class = FedStatsCohortQueryInstalledApps;
  v2 = [(FedStatsCohortQueryInstalledApps *)&v10 init];
  if (v2)
  {
    v11[0] = @"media";
    v3 = +[NSMutableSet set];
    v11[1] = @"phone";
    v12[0] = v3;
    v4 = +[NSMutableSet set];
    v12[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    domainToInstalledApps = v2->_domainToInstalledApps;
    v2->_domainToInstalledApps = v5;

    [(FedStatsCohortQueryInstalledApps *)v2 resolveDomainToBundleIds];
    v7 = [(NSDictionary *)v2->_domainToInstalledApps objectForKeyedSubscript:@"media"];
    v2->_numOfMediaApps = [v7 count];

    v8 = [(NSDictionary *)v2->_domainToInstalledApps objectForKeyedSubscript:@"phone"];
    v2->_numOfPhoneApps = [v8 count];
  }

  return v2;
}

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  v5 = [NSString stringWithFormat:@"Invalid call to FedStatsCohortQueryInstalledApps#.cohortKeyForParameters"];
  v6 = [FedStatsError errorWithCode:900 description:v5];
  v7 = *error;
  *error = v6;

  return 0;
}

+ (id)cohortInstance
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)resolveDomainToBundleIds
{
  v3 = +[_PFLLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "FedStatsCohortQueryInstalledApps#resolveDomainToBundleIds start.", &v11, 2u);
  }

  v4 = +[NSDate date];
  [(FedStatsCohortQueryInstalledApps *)self lsAppRecords];
  [(FedStatsCohortQueryInstalledApps *)self lsPluginKitExtensions];
  [(FedStatsCohortQueryInstalledApps *)self applyFilteringForMediaDomain];
  v5 = +[_PFLLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    domainToInstalledApps = self->_domainToInstalledApps;
    v11 = 138412290;
    v12 = domainToInstalledApps;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "FedStatsCohortQueryInstalledApps#resolveDomainToBundleIds resolved domain to bundle ids: %@", &v11, 0xCu);
  }

  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:v4];
  v9 = v8;

  v10 = +[_PFLLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "FedStatsCohortQueryInstalledApps#resolveDomainToBundleIds complete in %fms", &v11, 0xCu);
  }
}

- (void)lsAppRecords
{
  v3 = [LSApplicationRecord enumeratorWithOptions:0];
  nextObject = [v3 nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    v7 = &selRef_typesInCombination;
    *&v5 = 138412802;
    v22 = v5;
    v23 = v3;
    do
    {
      bundleIdentifier = [v6 bundleIdentifier];
      if (bundleIdentifier)
      {
        supportedIntentMediaCategories = [v6 supportedIntentMediaCategories];
        framework2 = [NSSet setWithArray:supportedIntentMediaCategories];

        supportedIntents = [v6 supportedIntents];
        if ([(FedStatsCohortQueryInstalledApps *)self _isSupportedIntentMediaApp:bundleIdentifier])
        {
          v12 = [InstalledApp alloc];
          supportedIntentMediaCategories2 = [v6 supportedIntentMediaCategories];
          [v6 localizedName];
          selfCopy = self;
          v16 = v15 = v7;
          v17 = [(InstalledApp *)v12 initWithBundleIdentifier:bundleIdentifier supportedMediaCategories:supportedIntentMediaCategories2 supportedIntents:supportedIntents appName:v16];

          v7 = v15;
          self = selfCopy;

          v18 = [(NSDictionary *)selfCopy->_domainToInstalledApps objectForKeyedSubscript:@"media"];
          [v18 addObject:v17];

          framework = [v7 + 454 framework];
          if (os_log_type_enabled(framework, OS_LOG_TYPE_DEBUG))
          {
            supportedIntentMediaCategories3 = [v6 supportedIntentMediaCategories];
            *buf = v22;
            v25 = bundleIdentifier;
            v26 = 2112;
            v27 = supportedIntents;
            v28 = 2112;
            v29 = supportedIntentMediaCategories3;
            _os_log_debug_impl(&_mh_execute_header, framework, OS_LOG_TYPE_DEBUG, "bundle record: %@ has supported intent %@ and supported media categories: %@", buf, 0x20u);
          }

          v3 = v23;
        }
      }

      else
      {
        framework2 = [v7 + 454 framework];
        if (os_log_type_enabled(framework2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_error_impl(&_mh_execute_header, framework2, OS_LOG_TYPE_ERROR, "Error enumerating app records; app record: %@ has nil bundle identifier", buf, 0xCu);
        }
      }

      nextObject2 = [v3 nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }
}

- (void)lsPluginKitExtensions
{
  allObjects = [qword_1000395D0 allObjects];
  v10[0] = NSExtensionPointName;
  v10[1] = INExtensionAttributesIntentsSupportedKey;
  v11[0] = INIntentsServiceExtensionPointName;
  v11[1] = allObjects;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B098;
  v7[3] = &unk_10002C920;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [v5 enumeratePluginsMatchingQuery:v6 withBlock:v7];
}

- (BOOL)_isSupportedIntentMediaApp:(id)app :(id)a4 :(id)a5
{
  appCopy = app;
  v8 = a4;
  v9 = a5;
  if ([appCopy isEqualToString:@"com.apple.Music"] & 1) != 0 || (objc_msgSend(appCopy, "isEqualToString:", @"com.apple.podcasts"))
  {
    v10 = 1;
  }

  else if ([v8 count])
  {
    v12 = [NSMutableSet setWithSet:qword_1000395C8];
    [v12 intersectSet:v8];
    if ([v12 count] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [NSMutableSet setWithSet:qword_1000395D0];
      v14 = [NSSet setWithArray:v9];
      [v13 intersectSet:v14];

      v10 = [v13 count] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applyFilteringForMediaDomain
{
  domainToInstalledApps = [(FedStatsCohortQueryInstalledApps *)self domainToInstalledApps];
  v6 = [domainToInstalledApps objectForKeyedSubscript:@"media"];

  v3 = [v6 objectsPassingTest:&stru_10002C960];
  v4 = [v3 objectsPassingTest:&stru_10002C980];

  v5 = [v4 objectsPassingTest:&stru_10002C9A0];

  [v6 setSet:v5];
}

@end