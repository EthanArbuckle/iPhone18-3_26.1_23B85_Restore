@interface SUSUIFullScreenAuthenticationAlert
- (SUSUIFullScreenAuthenticationAlert)initWithDescriptor:(id)a3 autoInstallForecast:(id)a4 forInstallTonight:(BOOL)a5 canDeferInstallation:(BOOL)a6 completionQueue:(id)a7 completionBlock:(id)a8;
- (SUSUIFullScreenAuthenticationAlert)initWithRollbackDescriptor:(id)a3 canDeferInstallation:(BOOL)a4 completionQueue:(id)a5 completionBlock:(id)a6;
- (id)configurationContext;
@end

@implementation SUSUIFullScreenAuthenticationAlert

- (SUSUIFullScreenAuthenticationAlert)initWithDescriptor:(id)a3 autoInstallForecast:(id)a4 forInstallTonight:(BOOL)a5 canDeferInstallation:(BOOL)a6 completionQueue:(id)a7 completionBlock:(id)a8
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = a5;
  v27 = a6;
  v26 = 0;
  objc_storeStrong(&v26, a7);
  v25 = 0;
  objc_storeStrong(&v25, a8);
  v8 = v31;
  v31 = 0;
  v24.receiver = v8;
  v24.super_class = SUSUIFullScreenAuthenticationAlert;
  v23 = [(SUSUIFullScreenAuthenticationAlert *)&v24 init];
  v31 = v23;
  objc_storeStrong(&v31, v23);
  if (v23)
  {
    v16 = [SBSRemoteAlertDefinition alloc];
    v17 = [(SUSUIFullScreenAuthenticationAlert *)v31 viewControllerClassName];
    v9 = [v16 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = v31->_definition;
    v31->_definition = v9;

    v11 = [SUSUIAuthenticationAlertAction alloc];
    v12 = [v11 initWithDescriptor:location[0] autoInstallForecast:v29 forInstallTonight:v28 canDeferInstallation:v27 completionQueue:v26 completionBlock:v25];
    alertAction = v31->_alertAction;
    v31->_alertAction = v12;
  }

  v15 = v31;
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v31, 0);
  return v15;
}

- (SUSUIFullScreenAuthenticationAlert)initWithRollbackDescriptor:(id)a3 canDeferInstallation:(BOOL)a4 completionQueue:(id)a5 completionBlock:(id)a6
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a4;
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v6 = v25;
  v25 = 0;
  v20.receiver = v6;
  v20.super_class = SUSUIFullScreenAuthenticationAlert;
  v19 = [(SUSUIFullScreenAuthenticationAlert *)&v20 init];
  v25 = v19;
  objc_storeStrong(&v25, v19);
  if (v19)
  {
    v14 = [SBSRemoteAlertDefinition alloc];
    v15 = [(SUSUIFullScreenAuthenticationAlert *)v25 viewControllerClassName];
    v7 = [v14 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = v25->_definition;
    v25->_definition = v7;

    v9 = [SUSUIAuthenticationAlertAction alloc];
    v10 = [v9 initWithRollbackDescriptor:location[0] canDeferInstallation:v23 completionQueue:v22 completionBlock:v21];
    alertAction = v25->_alertAction;
    v25->_alertAction = v10;
  }

  v13 = v25;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v25, 0);
  return v13;
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