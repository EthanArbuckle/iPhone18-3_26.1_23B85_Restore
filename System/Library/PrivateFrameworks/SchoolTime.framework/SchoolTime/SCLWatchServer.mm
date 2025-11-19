@interface SCLWatchServer
+ (id)sharedWatchServer;
- (void)run;
@end

@implementation SCLWatchServer

+ (id)sharedWatchServer
{
  if (sharedWatchServer_onceToken != -1)
  {
    +[SCLWatchServer sharedWatchServer];
  }

  v3 = sharedWatchServer___sharedWatchServer;

  return v3;
}

uint64_t __35__SCLWatchServer_sharedWatchServer__block_invoke()
{
  sharedWatchServer___sharedWatchServer = objc_alloc_init(SCLWatchServer);

  return MEMORY[0x2821F96F8]();
}

- (void)run
{
  v8 = objc_alloc_init(SCLSchoolModeManagerConfiguration);
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  [(SCLSchoolModeManagerConfiguration *)v8 setDeviceRegistry:v3];

  v4 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.tinker.school"];
  [(SCLSchoolModeManagerConfiguration *)v8 setService:v4];
  [(SCLSchoolModeManagerConfiguration *)v8 setManagesSchoolTimeSession:1];
  [(SCLSchoolModeManagerConfiguration *)v8 setAllowsNonTinkerPairing:1];
  v5 = dispatch_workloop_create("com.apple.schooltime");
  [(SCLSchoolModeManagerConfiguration *)v8 setWorkloop:v5];
  v6 = [[SCLSchoolModeManager alloc] initWithConfiguration:v8];
  schoolModeManager = self->_schoolModeManager;
  self->_schoolModeManager = v6;

  [(SCLSchoolModeManager *)self->_schoolModeManager start];
}

@end