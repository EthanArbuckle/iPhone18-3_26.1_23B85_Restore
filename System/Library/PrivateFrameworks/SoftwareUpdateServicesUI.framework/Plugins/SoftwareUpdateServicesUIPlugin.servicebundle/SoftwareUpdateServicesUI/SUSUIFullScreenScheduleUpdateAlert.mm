@interface SUSUIFullScreenScheduleUpdateAlert
- (SUSUIFullScreenScheduleUpdateAlert)initWithDescriptor:(id)a3 completionBlock:(id)a4;
- (id)configurationContext;
@end

@implementation SUSUIFullScreenScheduleUpdateAlert

- (SUSUIFullScreenScheduleUpdateAlert)initWithDescriptor:(id)a3 completionBlock:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v4 = v19;
  v19 = 0;
  v16.receiver = v4;
  v16.super_class = SUSUIFullScreenScheduleUpdateAlert;
  v15 = [(SUSUIFullScreenScheduleUpdateAlert *)&v16 init];
  v19 = v15;
  objc_storeStrong(&v19, v15);
  if (v15)
  {
    v12 = [SBSRemoteAlertDefinition alloc];
    v13 = [(SUSUIFullScreenScheduleUpdateAlert *)v19 viewControllerClassName];
    v5 = [v12 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = v19->_definition;
    v19->_definition = v5;

    v7 = [SUSUILaggardsUIAlertAction alloc];
    v8 = [v7 initWithDescriptor:location[0] completionBlock:v17];
    alertAction = v19->_alertAction;
    v19->_alertAction = v8;
  }

  v11 = v19;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v11;
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