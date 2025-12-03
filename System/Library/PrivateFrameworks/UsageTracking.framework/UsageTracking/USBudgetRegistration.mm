@interface USBudgetRegistration
+ (USBudgetRegistration)sharedRegistration;
- (BOOL)_fetchAllBudgetedApplications:(id *)applications webDomains:(id *)domains error:(id *)error;
- (BOOL)addBudgetForActivity:(id)activity withSchedule:(id)schedule events:(id)events forClient:(id)client withExtension:(id)extension isPrivateClient:(BOOL)privateClient error:(id *)error;
- (BOOL)removeBudgetsForActivities:(id)activities withClient:(id)client error:(id *)error;
- (USBudgetRegistration)init;
- (USBudgetRegistration)initWithPersistentContainer:(id)container;
- (id)_areCategoriesBudgetedWithPredicate:(id)predicate error:(id *)error;
- (id)_getDeviceActivityContextForClientIdentifier:(id)identifier;
- (id)fetchActivitiesForClient:(id)client error:(id *)error;
- (id)fetchAllBudgetedApplicationsAndReturnError:(id *)error;
- (id)fetchAllBudgetedWebDomainsAndReturnError:(id *)error;
- (id)fetchEventsForActivity:(id)activity withClient:(id)client error:(id *)error;
- (id)fetchScheduleForActivity:(id)activity withClient:(id)client error:(id *)error;
- (id)isCategoryBudgeted:(id)budgeted error:(id *)error;
- (void)_fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:(id)predicate completionHandler:(id)handler;
- (void)_fetchBudgetsWithPredicate:(id)predicate completionHandler:(id)handler;
- (void)_removeBudgetsWithPredicate:(id)predicate completionHandler:(id)handler;
- (void)addBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)clearPostedNotificationTimesWithCalendarIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchAllDeviceActivityBudgetsWithCompletionHandler:(id)handler;
- (void)fetchBudgetForDeviceActivityWithURI:(id)i clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchBudgetForDeviceActivityWithURI:(id)i completionHandler:(id)handler;
- (void)fetchBudgetsAndEventsForApplications:(id)applications completionHandler:(id)handler;
- (void)fetchBudgetsAndEventsForCategories:(id)categories completionHandler:(id)handler;
- (void)fetchBudgetsAndEventsForWebDomains:(id)domains completionHandler:(id)handler;
- (void)fetchBudgetsAndEventsWithPostedNotificationsWithCompletionHandler:(id)handler;
- (void)fetchBudgetsWithIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completionHandler:(id)handler;
- (void)fetchBudgetsWithIdentifiers:(id)identifiers clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchBudgetsWithIdentifiers:(id)identifiers clientIdentifiers:(id)clientIdentifiers completionHandler:(id)handler;
- (void)removeBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeDeviceActivityBudgetsNotMatchingClients:(id)clients completionHandler:(id)handler;
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

- (USBudgetRegistration)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v13.receiver = self;
  v13.super_class = USBudgetRegistration;
  v5 = [(USBudgetRegistration *)&v13 init];
  container = v5->_container;
  v5->_container = containerCopy;
  v7 = containerCopy;

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

- (void)addBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times clientIdentifier:(id)identifier completionHandler:(id)handler
{
  budgetsCopy = budgets;
  nameCopy = name;
  timesCopy = times;
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (identifierCopy)
  {
    v38 = handlerCopy;
    v18 = timesCopy;
    v19 = budgetsCopy;
    v20 = identifierCopy;
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
    v18 = timesCopy;
    v19 = budgetsCopy;
  }

  v30 = +[NSXPCConnection currentConnection];
  v31 = self->_addContextsByXPCConnection;
  objc_sync_enter(v31);
  newBackgroundContext = [(NSMapTable *)self->_addContextsByXPCConnection objectForKey:v30];
  if (!newBackgroundContext)
  {
    container = [(USBudgetRegistration *)self container];
    newBackgroundContext = [container newBackgroundContext];

    [(NSMapTable *)self->_addContextsByXPCConnection setObject:newBackgroundContext forKey:v30];
  }

  objc_sync_exit(v31);

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100002ADC;
  v39[3] = &unk_100085D28;
  v40 = v19;
  v41 = v20;
  v42 = nameCopy;
  v43 = v18;
  v44 = newBackgroundContext;
  selfCopy = self;
  v46 = v38;
  v34 = newBackgroundContext;
  budgetsCopy = v19;
  timesCopy = v18;
  v17 = v38;
  v35 = v34;
  v36 = v20;
  [v35 performBlock:v39];

  v29 = v37;
LABEL_11:
}

- (BOOL)addBudgetForActivity:(id)activity withSchedule:(id)schedule events:(id)events forClient:(id)client withExtension:(id)extension isPrivateClient:(BOOL)privateClient error:(id *)error
{
  activityCopy = activity;
  scheduleCopy = schedule;
  eventsCopy = events;
  clientCopy = client;
  extensionCopy = extension;
  if (clientCopy)
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
    containingBundleRecord = [v19 containingBundleRecord];
    applicationIdentifier = [containingBundleRecord applicationIdentifier];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    applicationIdentifier = [v19 applicationIdentifier];
    bundleIdentifier = [v19 bundleIdentifier];
  }

  v24 = bundleIdentifier;
  if (v24)
  {
    v25 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v24];

    if (v25)
    {

      if (applicationIdentifier)
      {
LABEL_25:
        applicationIdentifier = applicationIdentifier;
        clientCopy = applicationIdentifier;
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
      applicationIdentifier = [v26 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (error)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v27, v28, v29, v30, v31, @"application-identifier");
          *error = applicationIdentifier = 0;
        }

        else
        {
          applicationIdentifier = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (error)
  {
    *error = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v32, v33, v34, v35, v36, v43);
  }

  clientCopy = 0;
LABEL_26:

  if (!clientCopy)
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
  v37 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:clientCopy];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100004DD8;
  v47[3] = &unk_100085D78;
  v38 = clientCopy;
  v48 = v38;
  v54 = &v58;
  privateClientCopy = privateClient;
  v49 = activityCopy;
  v55 = &v62;
  v50 = scheduleCopy;
  v51 = eventsCopy;
  v52 = extensionCopy;
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
  if (error && (v63[3] & 1) == 0)
  {
    *error = *(*(&v58 + 1) + 40);
    v41 = *(v63 + 24);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v62, 8);
LABEL_33:

  return v41 & 1;
}

- (id)_getDeviceActivityContextForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [newBackgroundContext setTransactionAuthor:identifierCopy];

  return newBackgroundContext;
}

- (void)removeBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler
{
  budgetsCopy = budgets;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    v10 = identifierCopy;
    v11 = 0;
LABEL_7:
    if (budgetsCopy)
    {
      [NSPredicate predicateWithFormat:@"(%K == %@) && (%K IN %@)", @"clientIdentifier", v10, @"identifier", budgetsCopy];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K == %@", @"clientIdentifier", v10, v20, v21];
    }
    v19 = ;
    [(USBudgetRegistration *)self _removeBudgetsWithPredicate:v19 completionHandler:handlerCopy];

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

  handlerCopy[2](handlerCopy, v11);
LABEL_11:
}

- (BOOL)removeBudgetsForActivities:(id)activities withClient:(id)client error:(id *)error
{
  activitiesCopy = activities;
  clientCopy = client;
  if (clientCopy)
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
    containingBundleRecord = [v12 containingBundleRecord];
    applicationIdentifier = [containingBundleRecord applicationIdentifier];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    applicationIdentifier = [v12 applicationIdentifier];
    bundleIdentifier = [v12 bundleIdentifier];
  }

  v17 = bundleIdentifier;
  if (v17)
  {
    v18 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v17];

    if (v18)
    {

      if (applicationIdentifier)
      {
LABEL_25:
        applicationIdentifier = applicationIdentifier;
        clientCopy = applicationIdentifier;
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
      applicationIdentifier = [v19 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (error)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v20, v21, v22, v23, v24, @"application-identifier");
          *error = applicationIdentifier = 0;
        }

        else
        {
          applicationIdentifier = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (error)
  {
    *error = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v25, v26, v27, v28, v29, v36);
  }

  clientCopy = 0;
LABEL_26:

  if (!clientCopy)
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
  v30 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:clientCopy];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100006B3C;
  v37[3] = &unk_100085DA0;
  v38 = activitiesCopy;
  v31 = clientCopy;
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
  if (error && (v49[3] & 1) == 0)
  {
    *error = *(*(&v44 + 1) + 40);
    v34 = *(v49 + 24);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v48, 8);
LABEL_33:

  return v34 & 1;
}

- (void)_removeBudgetsWithPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007010;
  v11[3] = &unk_100085DC8;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = predicateCopy;
  v9 = handlerCopy;
  v10 = predicateCopy;
  [container performBackgroundTask:v11];
}

- (void)fetchBudgetsWithIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007438;
  v15[3] = &unk_100085DF0;
  v16 = identifierCopy;
  v17 = clientIdentifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = clientIdentifierCopy;
  v14 = identifierCopy;
  [container performBackgroundTask:v15];
}

- (void)fetchBudgetsWithIdentifiers:(id)identifiers clientIdentifier:(id)identifier completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    v10 = identifierCopy;
    v11 = 0;
LABEL_7:
    if (identifiersCopy)
    {
      [NSPredicate predicateWithFormat:@"(%K == %@) && (%K IN %@)", @"clientIdentifier", v10, @"identifier", identifiersCopy];
    }

    else
    {
      [NSPredicate predicateWithFormat:@"%K == %@", @"clientIdentifier", v10, v20, v21];
    }
    v19 = ;
    [(USBudgetRegistration *)self _fetchBudgetsWithPredicate:v19 completionHandler:handlerCopy];

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

  handlerCopy[2](handlerCopy, 0, v11);
LABEL_11:
}

- (void)fetchBudgetsWithIdentifiers:(id)identifiers clientIdentifiers:(id)clientIdentifiers completionHandler:(id)handler
{
  clientIdentifiersCopy = clientIdentifiers;
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100008034;
  v18 = &unk_100085E18;
  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v20 = clientIdentifiersCopy;
  v11 = clientIdentifiersCopy;
  v12 = v19;
  [identifiersCopy enumerateObjectsUsingBlock:&v15];

  v13 = [NSCompoundPredicate alloc];
  v14 = [v13 initWithType:2 subpredicates:{v12, v15, v16, v17, v18}];
  [(USBudgetRegistration *)self _fetchBudgetsWithPredicate:v14 completionHandler:handlerCopy];
}

- (void)_fetchBudgetsWithPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000081C0;
  v11[3] = &unk_100085E40;
  v12 = predicateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predicateCopy;
  [container performBackgroundTask:v11];
}

- (void)clearPostedNotificationTimesWithCalendarIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000083E4;
  v11[3] = &unk_100085E40;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  [container performBackgroundTask:v11];
}

- (id)fetchAllBudgetedApplicationsAndReturnError:(id *)error
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100004DC0;
  v44 = sub_100004DD0;
  v45 = 0;
  v38 = 0;
  obj = 0;
  v4 = [(USBudgetRegistration *)self _fetchAllBudgetedApplications:&obj webDomains:&v38 error:error];
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

      array = [v41[5] array];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100008AA0;
      v28[3] = &unk_100085E90;
      v29 = v10;
      v30 = &v40;
      v31 = &v32;
      [v11 categoriesForBundleIDs:array completionHandler:v28];
    }

    if (v5)
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100063F68(v46, [v5 count]);
      }

      array2 = [v5 array];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100008C2C;
      v24 = &unk_100085E90;
      v25 = v10;
      v26 = &v40;
      v27 = &v32;
      [v11 categoriesForDomainNames:array2 completionHandler:&v21];
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

    if (error)
    {
      *error = v16;
    }

    _Block_object_dispose(&v32, 8);
  }

  v17 = 0;
LABEL_20:

  _Block_object_dispose(&v40, 8);

  return v17;
}

- (void)fetchBudgetsAndEventsForApplications:(id)applications completionHandler:(id)handler
{
  applicationsCopy = applications;
  handlerCopy = handler;
  v8 = [[NSConditionLock alloc] initWithCondition:0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100063FA8(applicationsCopy);
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
  v10 = applicationsCopy;
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
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

    [(USBudgetRegistration *)self _fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:v13 completionHandler:handlerCopy];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
}

- (id)fetchAllBudgetedWebDomainsAndReturnError:(id *)error
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100004DC0;
  v48 = sub_100004DD0;
  v49 = 0;
  v42 = 0;
  v43 = 0;
  v4 = [(USBudgetRegistration *)self _fetchAllBudgetedApplications:&v43 webDomains:&v42 error:error];
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

      array = [v45[5] array];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100009AA4;
      v29[3] = &unk_100085F30;
      v30 = v10;
      v31 = v40;
      v32 = &v44;
      v33 = &v34;
      [v11 categoriesForDomainNames:array completionHandler:v29];
    }

    if (v5)
    {
      v14 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100064060(v50, [v5 count]);
      }

      array2 = [v5 array];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100009D44;
      v24 = &unk_100085F30;
      v25 = v10;
      v26 = v40;
      v27 = &v44;
      v28 = &v34;
      [v11 categoriesForBundleIDs:array2 completionHandler:&v21];
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

    if (error)
    {
      *error = v16;
    }

    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(v40, 8);
  }

  v17 = 0;
LABEL_20:
  _Block_object_dispose(&v44, 8);

  return v17;
}

- (void)fetchBudgetsAndEventsForWebDomains:(id)domains completionHandler:(id)handler
{
  domainsCopy = domains;
  handlerCopy = handler;
  v8 = [[NSConditionLock alloc] initWithCondition:0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000640A0(domainsCopy);
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
  v10 = domainsCopy;
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
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

    [(USBudgetRegistration *)self _fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:v13 completionHandler:handlerCopy];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
}

- (id)isCategoryBudgeted:(id)budgeted error:(id *)error
{
  budgeted = [NSPredicate predicateWithFormat:@"%K == %@", @"categoryIdentifier", budgeted];
  v7 = [(USBudgetRegistration *)self _areCategoriesBudgetedWithPredicate:budgeted error:error];

  return v7;
}

- (void)fetchBudgetsAndEventsForCategories:(id)categories completionHandler:(id)handler
{
  handlerCopy = handler;
  categories = [NSPredicate predicateWithFormat:@"ANY %K.%K IN %@", @"budgetedCategories", @"categoryIdentifier", categories];
  [(USBudgetRegistration *)self _fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:categories completionHandler:handlerCopy];
}

- (id)_areCategoriesBudgetedWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AB64;
  v13[3] = &unk_100085FA8;
  v9 = predicateCopy;
  v14 = v9;
  v15 = &v17;
  v16 = &v23;
  [newBackgroundContext performBlockAndWait:v13];

  v10 = v24[5];
  if (error && !v10)
  {
    *error = v18[5];
    v10 = v24[5];
  }

  v11 = v10;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (BOOL)_fetchAllBudgetedApplications:(id *)applications webDomains:(id *)domains error:(id *)error
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
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B06C;
  v13[3] = &unk_100085FD0;
  v13[4] = &v14;
  v13[5] = &v26;
  v13[6] = &v20;
  v13[7] = &v17;
  [newBackgroundContext performBlockAndWait:v13];

  if (*(v27 + 24) == 1)
  {
    v10 = v18;
    *applications = v21[5];
LABEL_5:
    *domains = *(*v10 + 40);
    goto LABEL_6;
  }

  if (error)
  {
    v10 = v15;
    domains = error;
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

- (void)fetchBudgetsAndEventsWithPostedNotificationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B4D8;
  v9[3] = &unk_100085FF8;
  v10 = newBackgroundContext;
  v11 = handlerCopy;
  v7 = newBackgroundContext;
  v8 = handlerCopy;
  [v7 performBlockAndWait:v9];
}

- (void)_fetchBudgetsAndEventsMatchingBudgetedUsagePredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B8A8;
  v13[3] = &unk_100086020;
  v15 = newBackgroundContext;
  v16 = handlerCopy;
  v14 = predicateCopy;
  v10 = newBackgroundContext;
  v11 = handlerCopy;
  v12 = predicateCopy;
  [v10 performBlockAndWait:v13];
}

- (id)fetchActivitiesForClient:(id)client error:(id *)error
{
  clientCopy = client;
  if (clientCopy)
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
    containingBundleRecord = [v9 containingBundleRecord];
    applicationIdentifier = [containingBundleRecord applicationIdentifier];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    applicationIdentifier = [v9 applicationIdentifier];
    bundleIdentifier = [v9 bundleIdentifier];
  }

  v14 = bundleIdentifier;
  if (v14)
  {
    v15 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v14];

    if (v15)
    {

      if (applicationIdentifier)
      {
LABEL_25:
        applicationIdentifier = applicationIdentifier;
        clientCopy = applicationIdentifier;
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
      applicationIdentifier = [v16 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (error)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v17, v18, v19, v20, v21, @"application-identifier");
          *error = applicationIdentifier = 0;
        }

        else
        {
          applicationIdentifier = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (error)
  {
    *error = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v22, v23, v24, v25, v26, v32);
  }

  clientCopy = 0;
LABEL_26:

  if (!clientCopy)
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
  v27 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:clientCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000C0AC;
  v33[3] = &unk_100085FA8;
  v28 = clientCopy;
  v34 = v28;
  v35 = buf;
  v36 = &v37;
  [v27 performBlockAndWait:v33];
  v29 = *(*(&v37 + 1) + 40);
  if (error && !v29)
  {
    *error = *(*&buf[8] + 40);
    v29 = *(*(&v37 + 1) + 40);
  }

  v30 = v29;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v37, 8);

LABEL_31:

  return v30;
}

- (id)fetchScheduleForActivity:(id)activity withClient:(id)client error:(id *)error
{
  activityCopy = activity;
  clientCopy = client;
  if (clientCopy)
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
    containingBundleRecord = [v12 containingBundleRecord];
    applicationIdentifier = [containingBundleRecord applicationIdentifier];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    applicationIdentifier = [v12 applicationIdentifier];
    bundleIdentifier = [v12 bundleIdentifier];
  }

  v17 = bundleIdentifier;
  if (v17)
  {
    v18 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v17];

    if (v18)
    {

      if (applicationIdentifier)
      {
LABEL_25:
        applicationIdentifier = applicationIdentifier;
        clientCopy = applicationIdentifier;
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
      applicationIdentifier = [v19 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (error)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v20, v21, v22, v23, v24, @"application-identifier");
          *error = applicationIdentifier = 0;
        }

        else
        {
          applicationIdentifier = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (error)
  {
    *error = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v25, v26, v27, v28, v29, v35);
  }

  clientCopy = 0;
LABEL_26:

  if (!clientCopy)
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
  v30 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:clientCopy];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000C690;
  v36[3] = &unk_100086048;
  v31 = clientCopy;
  v37 = v31;
  v38 = activityCopy;
  v39 = buf;
  v40 = &v41;
  [v30 performBlockAndWait:v36];
  v32 = *(*(&v41 + 1) + 40);
  if (error && !v32)
  {
    *error = *(*&buf[8] + 40);
    v32 = *(*(&v41 + 1) + 40);
  }

  v33 = v32;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v41, 8);

LABEL_31:

  return v33;
}

- (id)fetchEventsForActivity:(id)activity withClient:(id)client error:(id *)error
{
  activityCopy = activity;
  clientCopy = client;
  if (clientCopy)
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
    containingBundleRecord = [v12 containingBundleRecord];
    applicationIdentifier = [containingBundleRecord applicationIdentifier];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    applicationIdentifier = [v12 applicationIdentifier];
    bundleIdentifier = [v12 bundleIdentifier];
  }

  v17 = bundleIdentifier;
  if (v17)
  {
    v18 = [_TtC18UsageTrackingAgent29USDeviceActivityAuthorization isAuthorized:v17];

    if (v18)
    {

      if (applicationIdentifier)
      {
LABEL_25:
        applicationIdentifier = applicationIdentifier;
        clientCopy = applicationIdentifier;
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
      applicationIdentifier = [v19 valueForEntitlement:@"application-identifier"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        if (error)
        {
          sub_100004648(1, @"NoApplicationIdentifierError", 0, v20, v21, v22, v23, v24, @"application-identifier");
          *error = applicationIdentifier = 0;
        }

        else
        {
          applicationIdentifier = 0;
        }
      }

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063AD8();
  }

  if (error)
  {
    *error = sub_100004648(2, @"NotAuthorizedError", @"SeeFamilyControls", v25, v26, v27, v28, v29, v35);
  }

  clientCopy = 0;
LABEL_26:

  if (!clientCopy)
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
  v30 = [(USBudgetRegistration *)self _getDeviceActivityContextForClientIdentifier:clientCopy];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000CD18;
  v36[3] = &unk_100086048;
  v31 = clientCopy;
  v37 = v31;
  v38 = activityCopy;
  v39 = buf;
  v40 = &v41;
  [v30 performBlockAndWait:v36];
  v32 = *(*(&v41 + 1) + 40);
  if (error && !v32)
  {
    *error = *(*&buf[8] + 40);
    v32 = *(*(&v41 + 1) + 40);
  }

  v33 = v32;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v41, 8);

LABEL_31:

  return v33;
}

- (void)fetchBudgetForDeviceActivityWithURI:(id)i completionHandler:(id)handler
{
  iCopy = i;
  handlerCopy = handler;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100004DC0;
  v25 = sub_100004DD0;
  v26 = 0;
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000D958;
  v16 = &unk_100086070;
  v10 = container;
  v17 = v10;
  v11 = iCopy;
  v18 = v11;
  v12 = newBackgroundContext;
  v19 = v12;
  v20 = &v21;
  [v12 performBlockAndWait:&v13];
  [(USBudgetRegistration *)self fetchBudgetForDeviceActivityWithURI:v11 clientIdentifier:v22[5] completionHandler:handlerCopy, v13, v14, v15, v16];

  _Block_object_dispose(&v21, 8);
}

- (void)fetchBudgetForDeviceActivityWithURI:(id)i clientIdentifier:(id)identifier completionHandler:(id)handler
{
  iCopy = i;
  handlerCopy = handler;
  identifierCopy = identifier;
  container = [(USBudgetRegistration *)self container];
  if (identifierCopy)
  {
    v12 = identifierCopy;
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
  v19 = container;
  v20 = iCopy;
  v21 = v13;
  v22 = handlerCopy;
  v14 = handlerCopy;
  v15 = v13;
  v16 = iCopy;
  v17 = container;
  [v15 performBlockAndWait:v18];
}

- (void)fetchAllDeviceActivityBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DD60;
  v9[3] = &unk_100085FF8;
  v10 = newBackgroundContext;
  v11 = handlerCopy;
  v7 = newBackgroundContext;
  v8 = handlerCopy;
  [v7 performBlockAndWait:v9];
}

- (void)removeDeviceActivityBudgetsNotMatchingClients:(id)clients completionHandler:(id)handler
{
  clientsCopy = clients;
  handlerCopy = handler;
  container = [(USBudgetRegistration *)self container];
  newBackgroundContext = [container newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000DFD0;
  v13[3] = &unk_1000860E8;
  v14 = clientsCopy;
  v15 = newBackgroundContext;
  selfCopy = self;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = newBackgroundContext;
  v12 = clientsCopy;
  [v11 performBlock:v13];
}

@end