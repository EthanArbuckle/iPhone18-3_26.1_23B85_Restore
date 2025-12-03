@interface SUSUIFullScreenAuthenticationAlert
- (SUSUIFullScreenAuthenticationAlert)initWithDescriptor:(id)descriptor autoInstallForecast:(id)forecast forInstallTonight:(BOOL)tonight canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block;
- (SUSUIFullScreenAuthenticationAlert)initWithRollbackDescriptor:(id)descriptor canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block;
- (id)configurationContext;
@end

@implementation SUSUIFullScreenAuthenticationAlert

- (SUSUIFullScreenAuthenticationAlert)initWithDescriptor:(id)descriptor autoInstallForecast:(id)forecast forInstallTonight:(BOOL)tonight canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v29 = 0;
  objc_storeStrong(&v29, forecast);
  tonightCopy = tonight;
  installationCopy = installation;
  v26 = 0;
  objc_storeStrong(&v26, queue);
  v25 = 0;
  objc_storeStrong(&v25, block);
  v8 = selfCopy;
  selfCopy = 0;
  v24.receiver = v8;
  v24.super_class = SUSUIFullScreenAuthenticationAlert;
  v23 = [(SUSUIFullScreenAuthenticationAlert *)&v24 init];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    v16 = [SBSRemoteAlertDefinition alloc];
    viewControllerClassName = [(SUSUIFullScreenAuthenticationAlert *)selfCopy viewControllerClassName];
    v9 = [v16 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = selfCopy->_definition;
    selfCopy->_definition = v9;

    v11 = [SUSUIAuthenticationAlertAction alloc];
    v12 = [v11 initWithDescriptor:location[0] autoInstallForecast:v29 forInstallTonight:tonightCopy canDeferInstallation:installationCopy completionQueue:v26 completionBlock:v25];
    alertAction = selfCopy->_alertAction;
    selfCopy->_alertAction = v12;
  }

  v15 = selfCopy;
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (SUSUIFullScreenAuthenticationAlert)initWithRollbackDescriptor:(id)descriptor canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  installationCopy = installation;
  v22 = 0;
  objc_storeStrong(&v22, queue);
  v21 = 0;
  objc_storeStrong(&v21, block);
  v6 = selfCopy;
  selfCopy = 0;
  v20.receiver = v6;
  v20.super_class = SUSUIFullScreenAuthenticationAlert;
  v19 = [(SUSUIFullScreenAuthenticationAlert *)&v20 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    v14 = [SBSRemoteAlertDefinition alloc];
    viewControllerClassName = [(SUSUIFullScreenAuthenticationAlert *)selfCopy viewControllerClassName];
    v7 = [v14 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = selfCopy->_definition;
    selfCopy->_definition = v7;

    v9 = [SUSUIAuthenticationAlertAction alloc];
    v10 = [v9 initWithRollbackDescriptor:location[0] canDeferInstallation:installationCopy completionQueue:v22 completionBlock:v21];
    alertAction = selfCopy->_alertAction;
    selfCopy->_alertAction = v10;
  }

  v13 = selfCopy;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
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