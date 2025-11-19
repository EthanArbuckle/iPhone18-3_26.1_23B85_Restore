@interface RMClientCapabilitiesController
+ (RMClientCapabilitiesController)sharedController;
+ (void)start;
- (RMClientCapabilitiesController)initWithSubscribedStatusKeyPathUpdater:(id)a3;
- (id)queryForStatusWithKeyPaths:(id)a3 onBehalfOfManagementChannel:(id)a4 error:(id *)a5;
- (void)_notifyChangesIfNeeded;
@end

@implementation RMClientCapabilitiesController

+ (RMClientCapabilitiesController)sharedController
{
  if (qword_1000E6730 != -1)
  {
    sub_100010DFC();
  }

  v3 = qword_1000E6728;

  return v3;
}

- (RMClientCapabilitiesController)initWithSubscribedStatusKeyPathUpdater:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMClientCapabilitiesController;
  v6 = [(RMClientCapabilitiesController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscribedStatusUpdater, a3);
  }

  return v7;
}

+ (void)start
{
  if (qword_1000E6738 != -1)
  {
    sub_100010E10();
  }
}

- (void)_notifyChangesIfNeeded
{
  v3 = objc_opt_new();
  v4 = +[RMPersistentController sharedController];
  v5 = [v4 persistentContainer];
  v6 = [v5 newBackgroundContext];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000108C8;
  v13 = &unk_1000D1270;
  v7 = v3;
  v14 = v7;
  v8 = v6;
  v15 = v8;
  [v8 performBlockAndWait:&v10];
  if ([v7 count])
  {
    v9 = [(RMClientCapabilitiesController *)self subscribedStatusUpdater];
    [v9 notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:v7];
  }

  else
  {
    v9 = +[RMLog clientCapabilitiesController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100010E24(v9);
    }
  }
}

- (id)queryForStatusWithKeyPaths:(id)a3 onBehalfOfManagementChannel:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = RMModelStatusItemManagementClientCapabilities;
  if ([a3 containsObject:RMModelStatusItemManagementClientCapabilities])
  {
    v8 = +[RMCapabilities capabilitiesForEnrollmentType:scope:protocolType:](RMCapabilities, "capabilitiesForEnrollmentType:scope:protocolType:", [v6 type], +[RMBundle managementScope](RMBundle, "managementScope"), objc_msgSend(v6, "protocolType"));
    v13 = v7;
    v9 = [v8 status];
    v10 = [v9 serializeWithType:1];
    v14 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  return v11;
}

@end