@interface SUSUIFullScreenEmergencyCallAlert
- (SUSUIFullScreenEmergencyCallAlert)initWithCompletionBlock:(id)a3;
- (id)configurationContext;
@end

@implementation SUSUIFullScreenEmergencyCallAlert

- (SUSUIFullScreenEmergencyCallAlert)initWithCompletionBlock:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v21;
  v21 = 0;
  v19.receiver = v3;
  v19.super_class = SUSUIFullScreenEmergencyCallAlert;
  v15 = [(SUSUIFullScreenEmergencyCallAlert *)&v19 init];
  v21 = v15;
  objc_storeStrong(&v21, v15);
  if (v15)
  {
    v18 = SUSUILogEmergencyCallUI();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      type = v17;
      sub_2544(v16);
      _os_log_impl(&dword_0, log, type, "initializing SUSUIFullScreenEmergencyCallAlert", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    v11 = [SBSRemoteAlertDefinition alloc];
    v12 = [(SUSUIFullScreenEmergencyCallAlert *)v21 viewControllerClassName];
    v4 = [v11 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = v21->_definition;
    v21->_definition = v4;

    v6 = [SUSUIRemoteEmergencyCallAlertAction alloc];
    v7 = [v6 initWithCompletionBlock:location[0]];
    alertAction = v21->_alertAction;
    v21->_alertAction = v7;
  }

  v10 = v21;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v10;
}

- (id)configurationContext
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v3 = v6[0];
  v4 = [NSSet setWithObject:v7->_alertAction];
  [v3 setActions:?];

  v5 = v6[0];
  objc_storeStrong(v6, 0);

  return v5;
}

@end