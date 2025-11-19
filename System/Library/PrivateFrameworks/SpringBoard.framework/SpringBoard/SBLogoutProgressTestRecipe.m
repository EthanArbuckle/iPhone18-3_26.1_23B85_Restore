@interface SBLogoutProgressTestRecipe
- (id)_defaultBlockingTasks;
- (id)_defaultPendingApplications;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBLogoutProgressTestRecipe

- (void)handleVolumeIncrease
{
  if (self->_logoutProgressTransientOverlayViewController)
  {
    v16 = [(SBLogoutProgressTestRecipe *)self remainingApplications];
    if ([v16 count] < 2)
    {
      if (v16)
      {
        [(SBLogoutProgressTestRecipe *)self setRemainingApplications:0];
      }
    }

    else
    {
      v3 = [v16 subarrayWithRange:{1, objc_msgSend(v16, "count") - 1}];
      [(SBLogoutProgressTestRecipe *)self setRemainingApplications:v3];
    }

    v12 = [(SBLogoutProgressTestRecipe *)self remainingBlockingTasks];
    if ([v12 count])
    {
      v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
      v14 = [v13 allKeys];
      v15 = [v14 firstObject];
      [v13 removeObjectForKey:v15];

      [(SBLogoutProgressTestRecipe *)self setRemainingBlockingTasks:v13];
    }

    else
    {
      [(SBLogoutProgressTestRecipe *)self setRemainingBlockingTasks:0];
    }

    [(SBLogoutProgressTransientOverlayViewController *)self->_logoutProgressTransientOverlayViewController refreshData];
  }

  else
  {
    v4 = [SBLogoutProgressTransientOverlayViewController alloc];
    v5 = [SBApp userSessionController];
    v6 = [v5 user];
    v7 = [(SBLogoutProgressTransientOverlayViewController *)v4 initWithUserAccount:v6];
    logoutProgressTransientOverlayViewController = self->_logoutProgressTransientOverlayViewController;
    self->_logoutProgressTransientOverlayViewController = v7;

    v9 = [(SBLogoutProgressTestRecipe *)self _defaultPendingApplications];
    [(SBLogoutProgressTestRecipe *)self setRemainingApplications:v9];

    v10 = [(SBLogoutProgressTestRecipe *)self _defaultBlockingTasks];
    [(SBLogoutProgressTestRecipe *)self setRemainingBlockingTasks:v10];

    [(SBLogoutProgressTransientOverlayViewController *)self->_logoutProgressTransientOverlayViewController setDataSource:self];
    v11 = +[SBWorkspace mainWorkspace];
    [v11 presentTransientOverlayViewController:self->_logoutProgressTransientOverlayViewController animated:1 completion:0];

    v16 = [SBApp userSessionController];
    [v16 setLoggingOut:1];
  }
}

- (void)handleVolumeDecrease
{
  if (self->_logoutProgressTransientOverlayViewController)
  {
    v3 = +[SBWorkspace mainWorkspace];
    [v3 dismissTransientOverlayViewController:self->_logoutProgressTransientOverlayViewController animated:1 completion:0];

    logoutProgressTransientOverlayViewController = self->_logoutProgressTransientOverlayViewController;
    self->_logoutProgressTransientOverlayViewController = 0;

    [(SBLogoutProgressTestRecipe *)self setRemainingApplications:0];
    v5 = [SBApp userSessionController];
    [v5 setLoggingOut:0];
  }
}

- (id)_defaultBlockingTasks
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D77C20] taskWithName:@"name1" reason:@"reason1"];
  v3 = [MEMORY[0x277D77C20] taskWithName:@"name2" reason:@"reason2"];
  v9[0] = v2;
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7[0] = @"com.apple.MobileSafari";
  v7[1] = @"com.apple.MobilePhone";
  v8[0] = v4;
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)_defaultPendingApplications
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = +[SBApplicationController sharedInstance];
  v4 = [v3 applicationWithBundleIdentifier:@"com.apple.mobilesafari"];

  if (v4)
  {
    [v2 addObject:v4];
  }

  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:@"com.apple.Maps"];

  if (v6)
  {
    [v2 addObject:v6];
  }

  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:@"com.apple.mobiletimer"];

  if (v8)
  {
    [v2 addObject:v8];
  }

  v9 = [v2 copy];

  return v9;
}

@end