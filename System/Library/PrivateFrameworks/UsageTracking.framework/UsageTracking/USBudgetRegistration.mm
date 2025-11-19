@interface USBudgetRegistration
+ (USBudgetRegistration)sharedRegistration;
- (BOOL)_fetchAllBudgetedApplications:(id *)a3 webDomains:(id *)a4 error:(id *)a5;
- (BOOL)addBudgetForActivity:(id)a3 withSchedule:(id)a4 events:(id)a5 forClient:(id)a6 withExtension:(id)a7 isPrivateClient:(BOOL)a8 error:(id *)a9;
- (BOOL)removeBudgetsForActivities:(id)a3 withClient:(id)a4 error:(id *)a5;
- (USBudgetRegistration)init;
- (USBudgetRegistration)initWithPersistentContainer:(id)a3;
- (id)_areCategoriesBudgetedWithPredicate:(id)a3 error:(id *)a4;
- (id)_getDeviceActivityContextForClientIdentifier:(id)a3;
- (id)fetchActivitiesForClient:(id)a3 error:(id *)a4;
- (id)fetchAllBudgetedApplicationsAndReturnError:(id *)a3;
- (id)fetchAllBudgetedWebDomainsAndReturnError:(id *)a3;
- (id)fetchEventsForActivity:(id)a3 withClient:(id)a4 error:(id *)a5;
- (id)fetchScheduleForActivity:(id)a3 withClient:(id)a4 error:(id *)a5;
- (id)isCategoryBudgeted:(id)a3 error:(id *)a4;
- (void)_fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:(id)a3 completionHandler:(id)a4;
- (void)_fetchBudgetsWithPredicate:(id)a3 completionHandler:(id)a4;
- (void)_removeBudgetsWithPredicate:(id)a3 completionHandler:(id)a4;
- (void)addBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 clientIdentifier:(id)a6 completionHandler:(id)a7;
- (void)clearPostedNotificationTimesWithCalendarIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchAllDeviceActivityBudgetsWithCompletionHandler:(id)a3;
- (void)fetchBudgetForDeviceActivityWithURI:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
- (void)fetchBudgetForDeviceActivityWithURI:(id)a3 completionHandler:(id)a4;
- (void)fetchBudgetsAndEventsForApplications:(id)a3 completionHandler:(id)a4;
- (void)fetchBudgetsAndEventsForCategories:(id)a3 completionHandler:(id)a4;
- (void)fetchBudgetsAndEventsForWebDomains:(id)a3 completionHandler:(id)a4;
- (void)fetchBudgetsAndEventsWithPostedNotificationsWithCompletionHandler:(id)a3;
- (void)fetchBudgetsWithIdentifier:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
- (void)fetchBudgetsWithIdentifiers:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
- (void)fetchBudgetsWithIdentifiers:(id)a3 clientIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)removeBudgets:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeDeviceActivityBudgetsNotMatchingClients:(id)a3 completionHandler:(id)a4;
@end

@implementation USBudgetRegistration

+ (USBudgetRegistration)sharedRegistration
{
  if (qword_100091C38 != -1)
  {
    sub_100063814();
  }

  v3 = qword_100091C30;

  return v3;
}

- (USBudgetRegistration)initWithPersistentContainer:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = USBudgetRegistration;
  v5 = [(USBudgetRegistration *)&v13 init];
  container = v5->_container;
  v5->_container = v4;
  v7 = v4;

  v8 = objc_opt_new();
  notificationPostingQueue = v5->_notificationPostingQueue;
  v5->_notificationPostingQueue = v8;

  [(NSOperationQueue *)v5->_notificationPostingQueue setName:@"USBudgetRegistration.notificationPostingQueue"];
  v10 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:0];
  addContextsByXPCConnection = v5->_addContextsByXPCConnection;
  v5->_addContextsByXPCConnection = v10;

  return v5;
}

- (USBudgetRegistration)init
{
  v4 = +[USUsageTrackingBundle usageTrackingBundle];
  v5 = [v4 URLForResource:@"UsageTracking" withExtension:@"momd"];

  v6 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v5];
  v7 = [[NSPersistentContainer alloc] initWithName:@"UsageTracking" managedObjectModel:v6];
  v8 = +[NSFileManager defaultManager];
  v23 = 0;
  v9 = [v8 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v23];
  v10 = v23;
  if (!v9)
  {
    sub_100063828(a2, self, v10);
  }

  MainBundle = CFBundleGetMainBundle();
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  v13 = [v9 URLByAppendingPathComponent:CFDictionaryGetValue(InfoDictionary isDirectory:{kCFBundleExecutableKey), 1}];

  v22 = v10;
  v14 = [v8 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v22];
  v15 = v22;

  if ((v14 & 1) == 0)
  {
    sub_10006389C(a2, self, v13, v15);
  }

  v16 = [v13 URLByAppendingPathComponent:@"UsageTracking" isDirectory:0];
  v17 = [v16 URLByAppendingPathExtension:@"sqlite"];

  v18 = [[NSPersistentStoreDescription alloc] initWithURL:v17];
  v24 = v18;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  [v7 setPersistentStoreDescriptions:v19];

  [v7 loadPersistentStoresWithCompletionHandler:&stru_100085CD8];
  v20 = [(USBudgetRegistration *)self initWithPersistentContainer:v7];

  return v20;
}

- (void)addBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 clientIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v15)
  {
    v38 = v16;
    v18 = v14;
    v19 = v12;
    v20 = v15;
    v37 = 0;
  }

  else
  {
    v21 = +[NSXPCConnection currentConnection];
    v20 = [v21 valueForEntitlement:@"application-identifier"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0;
    }

    else
    {

      v22 = sub_100004648(1, @"NoApplicationIdentifierError", 0, v23, v24, v25, v26, v27, @"application-identifier");
      v20 = 0;
    }

    v28 = v22;
    v29 = v28;
    if (!v20)
    {
      (v17)[2](v17, v28);
      goto LABEL_11;
    }

    v37 = v28;
    v38 = v17;
    v18 = v14;
    v19 = v12;
  }

  v30 = +[NSXPCConnection currentConnection];
  v31 = self->_addContextsByXPCConnection;
  objc_sync_enter(v31);
  v32 = [(NSMapTable *)self->_addContextsByXPCConnection objectForKey:v30];
  if (!v32)
  {
    v33 = [(USBudgetRegistration *)self container];
    v32 = [v33 newBackgroundContext];

    [(NSMapTable *)self->_addContextsByXPCConnection setObject:v32 forKey:v30];
  }

  objc_sync_exit(v31);

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100002ADC;
  v39[3] = &unk_100085D28;
  v40 = v19;
  v41 = v20;
  v42 = v13;
  v43 = v18;
  v44 = v32;
  v45 = self;
  v46 = v38;
  v34 = v32;
  v12 = v19;
  v14 = v18;
  v17 = v38;
  v35 = v34;
  v36 = v20;
  [v35 performBlock:v39];

  v29 = v37;
LABEL_11:
}

- (BOOL)addBudgetForActivity:(id)a3 withSchedule:(id)a4 events:(id)a5 forClient:(id)a6 withExtension:(id)a7 isPrivateClient:(BOOL)a8 error:(id *)a9
{
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v15 = a6;
  v16 = a7;
  if (v15)
  {
    goto LABEL_27;
  }

  v58 = 0u;
  v59 = 0u;
  v17 = +[NSXPCConnection currentConnection];
  v18 = v17;
  if (v17)
  {
    [v17 auditToken];
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v62 = 0;
  *buf = v58;
  v67 = v59;
  v19 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v62];
  v20 = v62;
  if (!v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B1C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v19 containingBundleRecord];
    v22 = [v21 applicationIdentifier];
    v23 = [v21 bundleIdentifier];
  }

  else
  {
    v22 = [v19 applicationIdentifier];
    v23 = [v19 bundleIdentifier];
  }

  v24 = v23;
  if (v24)
  {
    v25 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v24];

    if (v25)
    {

      if (v22)
      {
LABEL_25:
        v22 = v22;
        v15 = v22;
        goto LABEL_26;
      }

LABEL_14:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not get application identifier for bundle record %{public}@, falling back to the kSecEntitlementApplicationIdentifier.", buf, 0xCu);
      }

      v26 = +[NSXPCConnection currentConnection];
      v22 = [v26 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (a9)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v27, v28, v29, v30, v31, @"application-identifier");
          *a9 = v22 = 0;
        }

        else
        {
          v22 = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (a9)
  {
    *a9 = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v32, v33, v34, v35, v36, v43);
  }

  v15 = 0;
LABEL_26:

  if (!v15)
  {
    v41 = 0;
    goto LABEL_33;
  }

LABEL_27:
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  *&v58 = 0;
  *(&v58 + 1) = &v58;
  *&v59 = 0x3032000000;
  *(&v59 + 1) = sub_100004DC0;
  v60 = sub_100004DD0;
  v61 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&v67 = 0x3032000000;
  *(&v67 + 1) = sub_100004DC0;
  v68 = sub_100004DD0;
  v69 = 0;
  v37 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:v15];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100004DD8;
  v47[3] = &unk_100085D78;
  v38 = v15;
  v48 = v38;
  v54 = &v58;
  v57 = a8;
  v49 = v44;
  v55 = &v62;
  v50 = v45;
  v51 = v46;
  v52 = v16;
  v39 = v37;
  v53 = v39;
  v56 = buf;
  [v39 performBlockAndWait:v47];
  if (*(*&buf[8] + 40))
  {
    v40 = +[NSNotificationCenter defaultCenter];
    [v40 postNotificationName:@"DeviceActivityBudgetWasAddedOrUpdated" object:self userInfo:*(*&buf[8] + 40)];
  }

  v41 = *(v63 + 24);
  if (a9 && (v63[3] & 1) == 0)
  {
    *a9 = *(*(&v58 + 1) + 40);
    v41 = *(v63 + 24);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v62, 8);
LABEL_33:

  return v41 & 1;
}

- (id)_getDeviceActivityContextForClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(USBudgetRegistration *)self container];
  v6 = [v5 newBackgroundContext];

  [v6 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v6 setTransactionAuthor:v4];

  return v6;
}

- (void)removeBudgets:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
    v11 = 0;
LABEL_7:
    if (v22)
    {
      [NSPredicate predicateWithFormat:@"(%K == %@) && (%K IN %@)", @"clientIdentifier", v10, @"identifier", v22];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K == %@", @"clientIdentifier", v10, v20, v21];
    }
    v19 = ;
    [(USBudgetRegistration *)self _removeBudgetsWithPredicate:v19 completionHandler:v9];

    goto LABEL_11;
  }

  v12 = +[NSXPCConnection currentConnection];
  v10 = [v12 valueForEntitlement:@"application-identifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
  }

  else
  {

    v13 = sub_100004648(1, @"NoApplicationIdentifierError", 0, v14, v15, v16, v17, v18, @"application-identifier");
    v10 = 0;
  }

  v11 = v13;
  if (v10)
  {
    goto LABEL_7;
  }

  v9[2](v9, v11);
LABEL_11:
}

- (BOOL)removeBudgetsForActivities:(id)a3 withClient:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    goto LABEL_27;
  }

  v44 = 0u;
  v45 = 0u;
  v10 = +[NSXPCConnection currentConnection];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v48 = 0;
  *buf = v44;
  v53 = v45;
  v12 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v48];
  v13 = v48;
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B1C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v12 containingBundleRecord];
    v15 = [v14 applicationIdentifier];
    v16 = [v14 bundleIdentifier];
  }

  else
  {
    v15 = [v12 applicationIdentifier];
    v16 = [v12 bundleIdentifier];
  }

  v17 = v16;
  if (v17)
  {
    v18 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v17];

    if (v18)
    {

      if (v15)
      {
LABEL_25:
        v15 = v15;
        v9 = v15;
        goto LABEL_26;
      }

LABEL_14:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not get application identifier for bundle record %{public}@, falling back to the kSecEntitlementApplicationIdentifier.", buf, 0xCu);
      }

      v19 = +[NSXPCConnection currentConnection];
      v15 = [v19 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (a5)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v20, v21, v22, v23, v24, @"application-identifier");
          *a5 = v15 = 0;
        }

        else
        {
          v15 = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (a5)
  {
    *a5 = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v25, v26, v27, v28, v29, v36);
  }

  v9 = 0;
LABEL_26:

  if (!v9)
  {
    v34 = 0;
    goto LABEL_33;
  }

LABEL_27:
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  *&v44 = 0;
  *(&v44 + 1) = &v44;
  *&v45 = 0x3032000000;
  *(&v45 + 1) = sub_100004DC0;
  v46 = sub_100004DD0;
  v47 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&v53 = 0x3032000000;
  *(&v53 + 1) = sub_100004DC0;
  v54 = sub_100004DD0;
  v55 = 0;
  v30 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:v9];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100006B3C;
  v37[3] = &unk_100085DA0;
  v38 = v8;
  v31 = v9;
  v39 = v31;
  v41 = &v44;
  v32 = v30;
  v40 = v32;
  v42 = &v48;
  v43 = buf;
  [v32 performBlockAndWait:v37];
  if (*(*&buf[8] + 40))
  {
    v33 = +[NSNotificationCenter defaultCenter];
    [v33 postNotificationName:@"DeviceActivityBudgetsWereRemoved" object:self userInfo:*(*&buf[8] + 40)];
  }

  v34 = *(v49 + 24);
  if (a5 && (v49[3] & 1) == 0)
  {
    *a5 = *(*(&v44 + 1) + 40);
    v34 = *(v49 + 24);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v48, 8);
LABEL_33:

  return v34 & 1;
}

- (void)_removeBudgetsWithPredicate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(USBudgetRegistration *)self container];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007010;
  v11[3] = &unk_100085DC8;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (void)fetchBudgetsWithIdentifier:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USBudgetRegistration *)self container];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007438;
  v15[3] = &unk_100085DF0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBackgroundTask:v15];
}

- (void)fetchBudgetsWithIdentifiers:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = v8;
    v11 = 0;
LABEL_7:
    if (v22)
    {
      [NSPredicate predicateWithFormat:@"(%K == %@) && (%K IN %@)", @"clientIdentifier", v10, @"identifier", v22];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K == %@", @"clientIdentifier", v10, v20, v21];
    }
    v19 = ;
    [(USBudgetRegistration *)self _fetchBudgetsWithPredicate:v19 completionHandler:v9];

    goto LABEL_11;
  }

  v12 = +[NSXPCConnection currentConnection];
  v10 = [v12 valueForEntitlement:@"application-identifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
  }

  else
  {

    v13 = sub_100004648(1, @"NoApplicationIdentifierError", 0, v14, v15, v16, v17, v18, @"application-identifier");
    v10 = 0;
  }

  v11 = v13;
  if (v10)
  {
    goto LABEL_7;
  }

  v9[2](v9, 0, v11);
LABEL_11:
}

- (void)fetchBudgetsWithIdentifiers:(id)a3 clientIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100008034;
  v18 = &unk_100085E18;
  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v20 = v8;
  v11 = v8;
  v12 = v19;
  [v10 enumerateObjectsUsingBlock:&v15];

  v13 = [NSCompoundPredicate alloc];
  v14 = [v13 initWithType:2 subpredicates:{v12, v15, v16, v17, v18}];
  [(USBudgetRegistration *)self _fetchBudgetsWithPredicate:v14 completionHandler:v9];
}

- (void)_fetchBudgetsWithPredicate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(USBudgetRegistration *)self container];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000081C0;
  v11[3] = &unk_100085E40;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (void)clearPostedNotificationTimesWithCalendarIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(USBudgetRegistration *)self container];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000083E4;
  v11[3] = &unk_100085E40;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (id)fetchAllBudgetedApplicationsAndReturnError:(id *)a3
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100004DC0;
  v44 = sub_100004DD0;
  v45 = 0;
  v38 = 0;
  obj = 0;
  v4 = [(USBudgetRegistration *)self _fetchAllBudgetedApplications:&obj webDomains:&v38 error:a3];
  objc_storeStrong(&v45, obj);
  v5 = v38;
  if (v4)
  {
    v6 = v41[5];
    v7 = [NSConditionLock alloc];
    v8 = 1;
    if (v6)
    {
      v8 = 2;
    }

    if (v5)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }

    v10 = [v7 initWithCondition:v9];
    v11 = +[CTCategories sharedCategories];
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_100004DC0;
    v36 = sub_100004DD0;
    v37 = 0;
    if (v41[5])
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100063F28(v47, [v41[5] count]);
      }

      v13 = [v41[5] array];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100008AA0;
      v28[3] = &unk_100085E90;
      v29 = v10;
      v30 = &v40;
      v31 = &v32;
      [v11 categoriesForBundleIDs:v13 completionHandler:v28];
    }

    if (v5)
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100063F68(v46, [v5 count]);
      }

      v15 = [v5 array];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100008C2C;
      v24 = &unk_100085E90;
      v25 = v10;
      v26 = &v40;
      v27 = &v32;
      [v11 categoriesForDomainNames:v15 completionHandler:&v21];
    }

    [v10 lockWhenCondition:{0, v21, v22, v23, v24}];
    [v10 unlock];
    v16 = v33[5];
    if (!v16)
    {
      _Block_object_dispose(&v32, 8);

      v19 = v41[5];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = objc_opt_new();
      }

      v17 = v20;
      goto LABEL_20;
    }

    if (a3)
    {
      *a3 = v16;
    }

    _Block_object_dispose(&v32, 8);
  }

  v17 = 0;
LABEL_20:

  _Block_object_dispose(&v40, 8);

  return v17;
}

- (void)fetchBudgetsAndEventsForApplications:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSConditionLock alloc] initWithCondition:0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100063FA8(v6);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100004DC0;
  v52 = sub_100004DD0;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100004DC0;
  v46 = sub_100004DD0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100004DC0;
  v40 = sub_100004DD0;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100004DC0;
  v34 = sub_100004DD0;
  v35 = 0;
  v9 = +[CTCategories sharedCategories];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100009250;
  v22 = &unk_100085EE0;
  v25 = &v48;
  v26 = &v42;
  v10 = v6;
  v23 = v10;
  v27 = &v36;
  v28 = &v30;
  v11 = v8;
  v24 = v11;
  v29 = 1;
  [v9 categoriesForBundleIDs:v10 completionHandler:&v19];

  [v11 lockWhenCondition:1];
  [v11 unlock];
  if (v31[5])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    if (v43[5])
    {
      v12 = v43[5];
    }

    else
    {
      v12 = v10;
    }

    v13 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedApplications", @"bundleIdentifier", v12, v19, v20, v21, v22, v23];
    if (v49[5])
    {
      v14 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedCategories", @"categoryIdentifier", v49[5]];
      v15 = v14;
      if (v37[5])
      {
        v16 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedWebDomains", @"webDomain", v37[5]];
        v54[0] = v13;
        v54[1] = v15;
        v54[2] = v16;
        v17 = [NSArray arrayWithObjects:v54 count:3];
      }

      else
      {
        v55[0] = v13;
        v55[1] = v14;
        v17 = [NSArray arrayWithObjects:v55 count:2];
      }

      v18 = [[NSCompoundPredicate alloc] initWithType:2 subpredicates:v17];

      v13 = v18;
    }

    [(USBudgetRegistration *)self _fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:v13 completionHandler:v7];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
}

- (id)fetchAllBudgetedWebDomainsAndReturnError:(id *)a3
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100004DC0;
  v48 = sub_100004DD0;
  v49 = 0;
  v42 = 0;
  v43 = 0;
  v4 = [(USBudgetRegistration *)self _fetchAllBudgetedApplications:&v43 webDomains:&v42 error:a3];
  v5 = v43;
  objc_storeStrong(&v49, v42);
  if (v4)
  {
    v6 = v45[5];
    v7 = [NSConditionLock alloc];
    v8 = 1;
    if (v6)
    {
      v8 = 2;
    }

    if (v5)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }

    v10 = [v7 initWithCondition:v9];
    v11 = +[CTCategories sharedCategories];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = sub_100004DC0;
    v40[4] = sub_100004DD0;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100004DC0;
    v38 = sub_100004DD0;
    v39 = 0;
    if (v45[5])
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100064020(v51, [v45[5] count]);
      }

      v13 = [v45[5] array];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100009AA4;
      v29[3] = &unk_100085F30;
      v30 = v10;
      v31 = v40;
      v32 = &v44;
      v33 = &v34;
      [v11 categoriesForDomainNames:v13 completionHandler:v29];
    }

    if (v5)
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100064060(v50, [v5 count]);
      }

      v15 = [v5 array];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100009D44;
      v24 = &unk_100085F30;
      v25 = v10;
      v26 = v40;
      v27 = &v44;
      v28 = &v34;
      [v11 categoriesForBundleIDs:v15 completionHandler:&v21];
    }

    [v10 lockWhenCondition:{0, v21, v22, v23, v24}];
    [v10 unlock];
    v16 = v35[5];
    if (!v16)
    {
      _Block_object_dispose(&v34, 8);

      _Block_object_dispose(v40, 8);
      v19 = v45[5];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = objc_opt_new();
      }

      v17 = v20;
      goto LABEL_20;
    }

    if (a3)
    {
      *a3 = v16;
    }

    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(v40, 8);
  }

  v17 = 0;
LABEL_20:
  _Block_object_dispose(&v44, 8);

  return v17;
}

- (void)fetchBudgetsAndEventsForWebDomains:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSConditionLock alloc] initWithCondition:0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000640A0(v6);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100004DC0;
  v52 = sub_100004DD0;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100004DC0;
  v46 = sub_100004DD0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100004DC0;
  v40 = sub_100004DD0;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100004DC0;
  v34 = sub_100004DD0;
  v35 = 0;
  v9 = +[CTCategories sharedCategories];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10000A468;
  v22 = &unk_100085F80;
  v25 = &v48;
  v26 = &v42;
  v27 = &v36;
  v10 = v6;
  v23 = v10;
  v28 = &v30;
  v11 = v8;
  v24 = v11;
  v29 = 1;
  [v9 categoriesForDomainNames:v10 completionHandler:&v19];

  [v11 lockWhenCondition:1];
  [v11 unlock];
  if (v31[5])
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    if (v37[5])
    {
      v12 = v37[5];
    }

    else
    {
      v12 = v10;
    }

    v13 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedWebDomains", @"webDomain", v12, v19, v20, v21, v22, v23];
    if (v49[5])
    {
      v14 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedCategories", @"categoryIdentifier", v49[5]];
      v15 = v14;
      if (v43[5])
      {
        v16 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedApplications", @"bundleIdentifier", v43[5]];
        v54[0] = v13;
        v54[1] = v15;
        v54[2] = v16;
        v17 = [NSArray arrayWithObjects:v54 count:3];
      }

      else
      {
        v55[0] = v13;
        v55[1] = v14;
        v17 = [NSArray arrayWithObjects:v55 count:2];
      }

      v18 = [[NSCompoundPredicate alloc] initWithType:2 subpredicates:v17];

      v13 = v18;
    }

    [(USBudgetRegistration *)self _fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:v13 completionHandler:v7];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
}

- (id)isCategoryBudgeted:(id)a3 error:(id *)a4
{
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"categoryIdentifier", a3];
  v7 = [(USBudgetRegistration *)self _areCategoriesBudgetedWithPredicate:v6 error:a4];

  return v7;
}

- (void)fetchBudgetsAndEventsForCategories:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedCategories", @"categoryIdentifier", a3];
  [(USBudgetRegistration *)self _fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:v7 completionHandler:v6];
}

- (id)_areCategoriesBudgetedWithPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100004DC0;
  v27 = sub_100004DD0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100004DC0;
  v21 = sub_100004DD0;
  v22 = 0;
  v7 = [(USBudgetRegistration *)self container];
  v8 = [v7 newBackgroundContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AB64;
  v13[3] = &unk_100085FA8;
  v9 = v6;
  v14 = v9;
  v15 = &v17;
  v16 = &v23;
  [v8 performBlockAndWait:v13];

  v10 = v24[5];
  if (a4 && !v10)
  {
    *a4 = v18[5];
    v10 = v24[5];
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (BOOL)_fetchAllBudgetedApplications:(id *)a3 webDomains:(id *)a4 error:(id *)a5
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100004DC0;
  v24 = sub_100004DD0;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = sub_100004DC0;
  v18[3] = sub_100004DD0;
  v19 = 0;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = sub_100004DC0;
  v15[3] = sub_100004DD0;
  v16 = 0;
  v8 = [(USBudgetRegistration *)self container];
  v9 = [v8 newBackgroundContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B06C;
  v13[3] = &unk_100085FD0;
  v13[4] = &v14;
  v13[5] = &v26;
  v13[6] = &v20;
  v13[7] = &v17;
  [v9 performBlockAndWait:v13];

  if (*(v27 + 24) == 1)
  {
    v10 = v18;
    *a3 = v21[5];
LABEL_5:
    *a4 = *(*v10 + 40);
    goto LABEL_6;
  }

  if (a5)
  {
    v10 = v15;
    a4 = a5;
    goto LABEL_5;
  }

LABEL_6:
  v11 = *(v27 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v11;
}

- (void)fetchBudgetsAndEventsWithPostedNotificationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(USBudgetRegistration *)self container];
  v6 = [v5 newBackgroundContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B4D8;
  v9[3] = &unk_100085FF8;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  v8 = v4;
  [v7 performBlockAndWait:v9];
}

- (void)_fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(USBudgetRegistration *)self container];
  v9 = [v8 newBackgroundContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B8A8;
  v13[3] = &unk_100086020;
  v15 = v9;
  v16 = v7;
  v14 = v6;
  v10 = v9;
  v11 = v7;
  v12 = v6;
  [v10 performBlockAndWait:v13];
}

- (id)fetchActivitiesForClient:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    goto LABEL_27;
  }

  v37 = 0u;
  v38 = 0u;
  v7 = +[NSXPCConnection currentConnection];
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v41 = 0;
  *buf = v37;
  v43 = v38;
  v9 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v41];
  v10 = v41;
  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B1C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 containingBundleRecord];
    v12 = [v11 applicationIdentifier];
    v13 = [v11 bundleIdentifier];
  }

  else
  {
    v12 = [v9 applicationIdentifier];
    v13 = [v9 bundleIdentifier];
  }

  v14 = v13;
  if (v14)
  {
    v15 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v14];

    if (v15)
    {

      if (v12)
      {
LABEL_25:
        v12 = v12;
        v6 = v12;
        goto LABEL_26;
      }

LABEL_14:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not get application identifier for bundle record %{public}@, falling back to the kSecEntitlementApplicationIdentifier.", buf, 0xCu);
      }

      v16 = +[NSXPCConnection currentConnection];
      v12 = [v16 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (a4)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v17, v18, v19, v20, v21, @"application-identifier");
          *a4 = v12 = 0;
        }

        else
        {
          v12 = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (a4)
  {
    *a4 = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v22, v23, v24, v25, v26, v32);
  }

  v6 = 0;
LABEL_26:

  if (!v6)
  {
    v30 = 0;
    goto LABEL_31;
  }

LABEL_27:
  *&v37 = 0;
  *(&v37 + 1) = &v37;
  *&v38 = 0x3032000000;
  *(&v38 + 1) = sub_100004DC0;
  v39 = sub_100004DD0;
  v40 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&v43 = 0x3032000000;
  *(&v43 + 1) = sub_100004DC0;
  v44 = sub_100004DD0;
  v45 = 0;
  v27 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:v6];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000C0AC;
  v33[3] = &unk_100085FA8;
  v28 = v6;
  v34 = v28;
  v35 = buf;
  v36 = &v37;
  [v27 performBlockAndWait:v33];
  v29 = *(*(&v37 + 1) + 40);
  if (a4 && !v29)
  {
    *a4 = *(*&buf[8] + 40);
    v29 = *(*(&v37 + 1) + 40);
  }

  v30 = v29;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v37, 8);

LABEL_31:

  return v30;
}

- (id)fetchScheduleForActivity:(id)a3 withClient:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    goto LABEL_27;
  }

  v41 = 0u;
  v42 = 0u;
  v10 = +[NSXPCConnection currentConnection];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v45 = 0;
  *buf = v41;
  v47 = v42;
  v12 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v45];
  v13 = v45;
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B1C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v12 containingBundleRecord];
    v15 = [v14 applicationIdentifier];
    v16 = [v14 bundleIdentifier];
  }

  else
  {
    v15 = [v12 applicationIdentifier];
    v16 = [v12 bundleIdentifier];
  }

  v17 = v16;
  if (v17)
  {
    v18 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v17];

    if (v18)
    {

      if (v15)
      {
LABEL_25:
        v15 = v15;
        v9 = v15;
        goto LABEL_26;
      }

LABEL_14:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not get application identifier for bundle record %{public}@, falling back to the kSecEntitlementApplicationIdentifier.", buf, 0xCu);
      }

      v19 = +[NSXPCConnection currentConnection];
      v15 = [v19 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (a5)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v20, v21, v22, v23, v24, @"application-identifier");
          *a5 = v15 = 0;
        }

        else
        {
          v15 = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (a5)
  {
    *a5 = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v25, v26, v27, v28, v29, v35);
  }

  v9 = 0;
LABEL_26:

  if (!v9)
  {
    v33 = 0;
    goto LABEL_31;
  }

LABEL_27:
  *&v41 = 0;
  *(&v41 + 1) = &v41;
  *&v42 = 0x3032000000;
  *(&v42 + 1) = sub_100004DC0;
  v43 = sub_100004DD0;
  v44 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&v47 = 0x3032000000;
  *(&v47 + 1) = sub_100004DC0;
  v48 = sub_100004DD0;
  v49 = 0;
  v30 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:v9];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000C690;
  v36[3] = &unk_100086048;
  v31 = v9;
  v37 = v31;
  v38 = v8;
  v39 = buf;
  v40 = &v41;
  [v30 performBlockAndWait:v36];
  v32 = *(*(&v41 + 1) + 40);
  if (a5 && !v32)
  {
    *a5 = *(*&buf[8] + 40);
    v32 = *(*(&v41 + 1) + 40);
  }

  v33 = v32;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v41, 8);

LABEL_31:

  return v33;
}

- (id)fetchEventsForActivity:(id)a3 withClient:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    goto LABEL_27;
  }

  v41 = 0u;
  v42 = 0u;
  v10 = +[NSXPCConnection currentConnection];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v45 = 0;
  *buf = v41;
  v47 = v42;
  v12 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v45];
  v13 = v45;
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B1C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v12 containingBundleRecord];
    v15 = [v14 applicationIdentifier];
    v16 = [v14 bundleIdentifier];
  }

  else
  {
    v15 = [v12 applicationIdentifier];
    v16 = [v12 bundleIdentifier];
  }

  v17 = v16;
  if (v17)
  {
    v18 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v17];

    if (v18)
    {

      if (v15)
      {
LABEL_25:
        v15 = v15;
        v9 = v15;
        goto LABEL_26;
      }

LABEL_14:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not get application identifier for bundle record %{public}@, falling back to the kSecEntitlementApplicationIdentifier.", buf, 0xCu);
      }

      v19 = +[NSXPCConnection currentConnection];
      v15 = [v19 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (a5)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v20, v21, v22, v23, v24, @"application-identifier");
          *a5 = v15 = 0;
        }

        else
        {
          v15 = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (a5)
  {
    *a5 = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v25, v26, v27, v28, v29, v35);
  }

  v9 = 0;
LABEL_26:

  if (!v9)
  {
    v33 = 0;
    goto LABEL_31;
  }

LABEL_27:
  *&v41 = 0;
  *(&v41 + 1) = &v41;
  *&v42 = 0x3032000000;
  *(&v42 + 1) = sub_100004DC0;
  v43 = sub_100004DD0;
  v44 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&v47 = 0x3032000000;
  *(&v47 + 1) = sub_100004DC0;
  v48 = sub_100004DD0;
  v49 = 0;
  v30 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:v9];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000CD18;
  v36[3] = &unk_100086048;
  v31 = v9;
  v37 = v31;
  v38 = v8;
  v39 = buf;
  v40 = &v41;
  [v30 performBlockAndWait:v36];
  v32 = *(*(&v41 + 1) + 40);
  if (a5 && !v32)
  {
    *a5 = *(*&buf[8] + 40);
    v32 = *(*(&v41 + 1) + 40);
  }

  v33 = v32;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v41, 8);

LABEL_31:

  return v33;
}

- (void)fetchBudgetForDeviceActivityWithURI:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100004DC0;
  v25 = sub_100004DD0;
  v26 = 0;
  v8 = [(USBudgetRegistration *)self container];
  v9 = [v8 newBackgroundContext];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000D958;
  v16 = &unk_100086070;
  v10 = v8;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v20 = &v21;
  [v12 performBlockAndWait:&v13];
  [(USBudgetRegistration *)self fetchBudgetForDeviceActivityWithURI:v11 clientIdentifier:v22[5] completionHandler:v7, v13, v14, v15, v16];

  _Block_object_dispose(&v21, 8);
}

- (void)fetchBudgetForDeviceActivityWithURI:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(USBudgetRegistration *)self container];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"com.apple.UsageTrackingAgent";
  }

  v13 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:v12];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000DB60;
  v18[3] = &unk_100086098;
  v19 = v11;
  v20 = v8;
  v21 = v13;
  v22 = v9;
  v14 = v9;
  v15 = v13;
  v16 = v8;
  v17 = v11;
  [v15 performBlockAndWait:v18];
}

- (void)fetchAllDeviceActivityBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(USBudgetRegistration *)self container];
  v6 = [v5 newBackgroundContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DD60;
  v9[3] = &unk_100085FF8;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  v8 = v4;
  [v7 performBlockAndWait:v9];
}

- (void)removeDeviceActivityBudgetsNotMatchingClients:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(USBudgetRegistration *)self container];
  v9 = [v8 newBackgroundContext];

  [v9 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000DFD0;
  v13[3] = &unk_1000860E8;
  v14 = v6;
  v15 = v9;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
  [v11 performBlock:v13];
}

@end