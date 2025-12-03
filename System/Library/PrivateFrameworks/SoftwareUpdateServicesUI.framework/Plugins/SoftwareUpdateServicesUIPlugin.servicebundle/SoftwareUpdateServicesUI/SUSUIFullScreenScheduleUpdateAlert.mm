@interface SUSUIFullScreenScheduleUpdateAlert
- (SUSUIFullScreenScheduleUpdateAlert)initWithDescriptor:(id)descriptor completionBlock:(id)block;
- (id)configurationContext;
@end

@implementation SUSUIFullScreenScheduleUpdateAlert

- (SUSUIFullScreenScheduleUpdateAlert)initWithDescriptor:(id)descriptor completionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v17 = 0;
  objc_storeStrong(&v17, block);
  v4 = selfCopy;
  selfCopy = 0;
  v16.receiver = v4;
  v16.super_class = SUSUIFullScreenScheduleUpdateAlert;
  v15 = [(SUSUIFullScreenScheduleUpdateAlert *)&v16 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  if (v15)
  {
    v12 = [SBSRemoteAlertDefinition alloc];
    viewControllerClassName = [(SUSUIFullScreenScheduleUpdateAlert *)selfCopy viewControllerClassName];
    v5 = [v12 initWithServiceName:@"com.apple.susuiservice" viewControllerClassName:?];
    definition = selfCopy->_definition;
    selfCopy->_definition = v5;

    v7 = [SUSUILaggardsUIAlertAction alloc];
    v8 = [v7 initWithDescriptor:location[0] completionBlock:v17];
    alertAction = selfCopy->_alertAction;
    selfCopy->_alertAction = v8;
  }

  v11 = selfCopy;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
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