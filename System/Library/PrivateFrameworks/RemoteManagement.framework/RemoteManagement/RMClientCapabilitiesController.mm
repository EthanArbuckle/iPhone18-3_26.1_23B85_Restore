@interface RMClientCapabilitiesController
+ (RMClientCapabilitiesController)sharedController;
+ (void)start;
- (RMClientCapabilitiesController)initWithSubscribedStatusKeyPathUpdater:(id)updater;
- (id)queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementChannel:(id)channel error:(id *)error;
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

- (RMClientCapabilitiesController)initWithSubscribedStatusKeyPathUpdater:(id)updater
{
  updaterCopy = updater;
  v9.receiver = self;
  v9.super_class = RMClientCapabilitiesController;
  v6 = [(RMClientCapabilitiesController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscribedStatusUpdater, updater);
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
  persistentContainer = [v4 persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000108C8;
  v13 = &unk_1000D1270;
  v7 = v3;
  v14 = v7;
  v8 = newBackgroundContext;
  v15 = v8;
  [v8 performBlockAndWait:&v10];
  if ([v7 count])
  {
    subscribedStatusUpdater = [(RMClientCapabilitiesController *)self subscribedStatusUpdater];
    [subscribedStatusUpdater notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:v7];
  }

  else
  {
    subscribedStatusUpdater = +[RMLog clientCapabilitiesController];
    if (os_log_type_enabled(subscribedStatusUpdater, OS_LOG_TYPE_DEBUG))
    {
      sub_100010E24(subscribedStatusUpdater);
    }
  }
}

- (id)queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementChannel:(id)channel error:(id *)error
{
  channelCopy = channel;
  v7 = RMModelStatusItemManagementClientCapabilities;
  if ([paths containsObject:RMModelStatusItemManagementClientCapabilities])
  {
    v8 = +[RMCapabilities capabilitiesForEnrollmentType:scope:protocolType:](RMCapabilities, "capabilitiesForEnrollmentType:scope:protocolType:", [channelCopy type], +[RMBundle managementScope](RMBundle, "managementScope"), objc_msgSend(channelCopy, "protocolType"));
    v13 = v7;
    status = [v8 status];
    v10 = [status serializeWithType:1];
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