@interface STXPCStoreServer
- (void)resume;
@end

@implementation STXPCStoreServer

- (void)resume
{
  v15[0] = STPersistenceXPCStoreServiceName;
  v14[0] = NSXPCStoreServiceNameKey;
  v14[1] = NSXPCStoreEntitlementNamesKey;
  v13 = @"com.apple.private.screen-time.persistence";
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v15[1] = v3;
  v15[2] = &__kCFBooleanTrue;
  v14[2] = NSXPCStoreDaemonizeKey;
  v14[3] = NSPersistentStoreRemoteChangeNotificationOptionKey;
  v14[4] = NSPersistentHistoryTrackingKey;
  v15[3] = &__kCFBooleanTrue;
  v15[4] = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  v5 = [STPersistenceConfiguration persistentStoreURLForConfigurationName:STPersistenceConfigurationNameLocal];
  v6 = +[STPersistenceConfiguration managedObjectModelURL];
  v7 = [NSXPCStoreServer alloc];
  v8 = objc_opt_new();
  v9 = [v7 initForStoreWithURL:v5 usingModelAtURL:v6 options:v4 policy:v8];
  [(STXPCStoreServer *)self setStoreServer:v9];

  v10 = [(STXPCStoreServer *)self storeServer];
  v11 = [(STXPCStoreServer *)self listener];
  [v11 setDelegate:v10];

  v12 = [(STXPCStoreServer *)self storeServer];
  [v12 startListening];
}

@end