@interface SBExternalDisplayEducationSession
- (SBExternalDisplayEducationSession)initWithDisplayIdentity:(id)identity hardwareAvailability:(BOOL)availability bannerPoster:(id)poster;
- (void)_dismissBanner:(id)banner;
- (void)_presentBanner;
- (void)dealloc;
- (void)displayConnected;
- (void)displayDisconnected;
- (void)pillViewControllerDidReceiveUserTap:(id)tap;
- (void)updateHardwareAvailability:(BOOL)availability withinDisplayConnectionWindow:(BOOL)window;
@end

@implementation SBExternalDisplayEducationSession

- (SBExternalDisplayEducationSession)initWithDisplayIdentity:(id)identity hardwareAvailability:(BOOL)availability bannerPoster:(id)poster
{
  identityCopy = identity;
  posterCopy = poster;
  v20.receiver = self;
  v20.super_class = SBExternalDisplayEducationSession;
  v11 = [(SBExternalDisplayEducationSession *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayIdentity, identity);
    v12->_isHardwareAvailable = availability;
    v12->_isHardwareAvailableDuringDisplayConnectionWindow = availability;
    objc_storeStrong(&v12->_bannerPoster, poster);
    v13 = objc_alloc(MEMORY[0x277CF0B50]);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBExternalDisplayEducationSession-%@.bannerDismissTimer", v12->_displayIdentity];
    v15 = [v13 initWithIdentifier:v14];
    bannerDismissTimer = v12->_bannerDismissTimer;
    v12->_bannerDismissTimer = v15;

    v17 = objc_alloc_init(MEMORY[0x277CF0B80]);
    displayDisconnectSignal = v12->_displayDisconnectSignal;
    v12->_displayDisconnectSignal = v17;
  }

  return v12;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_bannerDismissTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBExternalDisplayEducationSession;
  [(SBExternalDisplayEducationSession *)&v3 dealloc];
}

- (void)displayConnected
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_isPresenting)
  {
    v3 = SBLogDisplayEducation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = _SBFLoggingMethodProem();
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ display connected, presenting education banner now.", &v5, 0xCu);
    }

    [(SBExternalDisplayEducationSession *)self _presentBanner];
  }
}

- (void)updateHardwareAvailability:(BOOL)availability withinDisplayConnectionWindow:(BOOL)window
{
  v9 = *MEMORY[0x277D85DE8];
  if (availability && !self->_isHardwareAvailable)
  {
    self->_isHardwareAvailable = availability;
    if (window)
    {
      if (!self->_isHardwareAvailableDuringDisplayConnectionWindow)
      {
        self->_isHardwareAvailableDuringDisplayConnectionWindow = availability;
      }
    }

    else if (!self->_isHardwareAvailableDuringDisplayConnectionWindow)
    {
      return;
    }

    if (!self->_isPresenting)
    {
      v5 = SBLogDisplayEducation();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = _SBFLoggingMethodProem();
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ hardware become available during display connection window, presenting banner now.", &v7, 0xCu);
      }

      [(SBExternalDisplayEducationSession *)self _presentBanner];
    }
  }
}

- (void)displayDisconnected
{
  v7 = *MEMORY[0x277D85DE8];
  [(BSAtomicSignal *)self->_displayDisconnectSignal signal];
  if (self->_isPresenting)
  {
    v3 = SBLogDisplayEducation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = _SBFLoggingMethodProem();
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ display disconnected, dismissing education banner now.", &v5, 0xCu);
    }

    [(SBExternalDisplayEducationSession *)self _dismissBanner:@"Display Disconnected"];
  }
}

- (void)_presentBanner
{
  v18 = *MEMORY[0x277D85DE8];
  self->_isPresenting = 1;
  v3 = objc_alloc_init(SBExternalDisplayEducationPillViewController);
  educationBannerViewController = self->_educationBannerViewController;
  self->_educationBannerViewController = v3;

  [(SBExternalDisplayEducationPillViewController *)self->_educationBannerViewController setDelegate:self];
  bannerPoster = self->_bannerPoster;
  v6 = self->_educationBannerViewController;
  v14 = 0;
  [(BNPosting *)bannerPoster postPresentable:v6 withOptions:1 userInfo:0 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = SBLogDisplayEducation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = _SBFLoggingMethodProem();
      *location = 138543618;
      *&location[4] = v11;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_ERROR, "%{public}@ error while presenting education banner: %{public}@", location, 0x16u);
    }
  }

  objc_initWeak(location, self);
  bannerDismissTimer = self->_bannerDismissTimer;
  v10 = MEMORY[0x277D85CD0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SBExternalDisplayEducationSession__presentBanner__block_invoke;
  v12[3] = &unk_2783A9918;
  objc_copyWeak(&v13, location);
  [(BSAbsoluteMachTimer *)bannerDismissTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v12 queue:3.0 handler:0.05];

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
}

void __51__SBExternalDisplayEducationSession__presentBanner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissBanner:@"Timer Expired"];
}

- (void)_dismissBanner:(id)banner
{
  bannerCopy = banner;
  self->_isPresenting = 0;
  bannerPoster = self->_bannerPoster;
  v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:self->_educationBannerViewController];
  v6 = [(BNPosting *)bannerPoster revokePresentablesWithIdentification:v5 reason:bannerCopy options:0 userInfo:0 error:0];
}

- (void)pillViewControllerDidReceiveUserTap:(id)tap
{
  [(BSAbsoluteMachTimer *)self->_bannerDismissTimer invalidate];
  bannerDismissTimer = self->_bannerDismissTimer;
  self->_bannerDismissTimer = 0;

  [(SBExternalDisplayEducationSession *)self _dismissBanner:@"User Interaction"];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=DISPLAY&path=DISPLAY_ARRANGEMENT"];
  SBWorkspaceActivateApplicationFromURL(v5, 0, 0);
}

@end