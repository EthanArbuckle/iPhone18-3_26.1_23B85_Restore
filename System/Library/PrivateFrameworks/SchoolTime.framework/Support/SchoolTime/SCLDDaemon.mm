@interface SCLDDaemon
- (void)start;
@end

@implementation SCLDDaemon

- (void)start
{
  [(SCLDDaemon *)self registerForLaunchEvents];
  v9 = objc_alloc_init(SCLSchoolModeManagerConfiguration);
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  [v9 setDeviceRegistry:v3];

  v4 = [IDSService alloc];
  v5 = [v4 initWithService:SCLIDSServiceName];
  [v9 setService:v5];
  [v9 setManagesSchoolTimeSession:0];
  v6 = dispatch_workloop_create("com.apple.schooltimed");
  [v9 setWorkloop:v6];

  v7 = [[SCLSchoolModeManager alloc] initWithConfiguration:v9];
  schoolModeManager = self->_schoolModeManager;
  self->_schoolModeManager = v7;

  [(SCLSchoolModeManager *)self->_schoolModeManager start];
}

@end