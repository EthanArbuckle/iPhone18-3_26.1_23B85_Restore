@interface SUSUIFullScreenEmergencyCallAlert
- (SUSUIFullScreenEmergencyCallAlert)initWithCompletionBlock:(id)block;
- (id)configurationContext;
@end

@implementation SUSUIFullScreenEmergencyCallAlert

- (SUSUIFullScreenEmergencyCallAlert)initWithCompletionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v3 = selfCopy;
  selfCopy = 0;
  v19.receiver = v3;
  v19.super_class = SUSUIFullScreenEmergencyCallAlert;
  v15 = [(SUSUIFullScreenEmergencyCallAlert *)&v19 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
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
    viewControllerClassName = [(SUSUIFullScreenEmergencyCallAlert *)selfCopy viewControllerClassName];
    v4 = [v11 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = selfCopy->_definition;
    selfCopy->_definition = v4;

    v6 = [SUSUIRemoteEmergencyCallAlertAction alloc];
    v7 = [v6 initWithCompletionBlock:location[0]];
    alertAction = selfCopy->_alertAction;
    selfCopy->_alertAction = v7;
  }

  v10 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (id)configurationContext
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v3 = v6[0];
  v4 = [NSSet setWithObject:selfCopy->_alertAction];
  [v3 setActions:?];

  v5 = v6[0];
  objc_storeStrong(v6, 0);

  return v5;
}

@end