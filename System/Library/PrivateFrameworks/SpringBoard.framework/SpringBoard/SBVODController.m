@interface SBVODController
+ (id)sharedInstance;
- (SBVODController)init;
- (void)_launchIPodIfNecessary;
- (void)dealloc;
@end

@implementation SBVODController

- (SBVODController)init
{
  v5.receiver = self;
  v5.super_class = SBVODController;
  v2 = [(SBVODController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _RentalMovieAdded, @"com.apple.itunesstored.RentalAdded", 0, CFNotificationSuspensionBehaviorDrop);
    [(SBVODController *)v2 _launchIPodIfNecessary];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.RentalAdded", 0);
  v4.receiver = self;
  v4.super_class = SBVODController;
  [(SBVODController *)&v4 dealloc];
}

+ (id)sharedInstance
{
  v2 = sharedInstance_sController;
  if (!sharedInstance_sController)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBVODController);
    v4 = sharedInstance_sController;
    sharedInstance_sController = v3;

    kdebug_trace();
    v2 = sharedInstance_sController;
  }

  return v2;
}

- (void)_launchIPodIfNecessary
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"iTunes_Control", @"iTunes", @"Rentals.plist", 0}];
  v3 = [MEMORY[0x277CCACA8] pathWithComponents:v2];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v3];
    v5 = [v4 objectForKey:@"Rentals"];
    v6 = [v5 count];

    if (v6)
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Launching iPod for rentals", buf, 2u);
      }

      SBWorkspaceLaunchMusicSuspended();
    }
  }
}

@end