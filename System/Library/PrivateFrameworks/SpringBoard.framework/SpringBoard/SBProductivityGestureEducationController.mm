@interface SBProductivityGestureEducationController
- (SBProductivityGestureEducationController)initWithBannerPoster:(id)poster;
- (int64_t)_itemTypeForType:(int64_t)type;
- (void)_dismissBanner:(id)banner;
- (void)_dismissBannerTimerWithInterval:(double)interval reason:(id)reason;
- (void)_invalidateBannerTimer;
- (void)_itemMapUpdated;
- (void)_loadItemMap;
- (void)_presentBannerWithEducationItem:(id)item;
- (void)_resetPillViewController:(id)controller;
- (void)dealloc;
- (void)gestureActivatedForType:(int64_t)type;
- (void)gestureEducationPillViewControllerDidReceiveUserTap:(id)tap;
- (void)gestureEducationPillViewControllerMarqueeStarted:(id)started duration:(double)duration;
- (void)gestureEducationPillViewControllerWillAppear:(id)appear;
@end

@implementation SBProductivityGestureEducationController

- (void)dealloc
{
  [(SBProductivityGestureEducationController *)self _invalidateBannerTimer];
  v3.receiver = self;
  v3.super_class = SBProductivityGestureEducationController;
  [(SBProductivityGestureEducationController *)&v3 dealloc];
}

- (SBProductivityGestureEducationController)initWithBannerPoster:(id)poster
{
  posterCopy = poster;
  v9.receiver = self;
  v9.super_class = SBProductivityGestureEducationController;
  v6 = [(SBProductivityGestureEducationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bannerPoster, poster);
  }

  return v7;
}

- (void)gestureActivatedForType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(SBProductivityGestureEducationController *)self _itemTypeForType:?];
  v6 = SBLogSystemGesture();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218240;
    typeCopy2 = type;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Received education suggestion for education type %lu, itemType %lu", &v14, 0x16u);
  }

  if (v5)
  {
    item = [(SBProductivityGestureEducationPillViewController *)self->_educationPillViewController item];
    type = [item type];

    if (type == v5)
    {
      v9 = SBLogSystemGesture();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        typeCopy2 = type;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring education suggestion because currently showing education suggestion for education type %lu", &v14, 0xCu);
      }
    }

    else
    {
      [(SBProductivityGestureEducationController *)self _loadItemMap];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      v10 = [(NSDictionary *)self->_educationItemMap objectForKeyedSubscript:v9];
      if (!v10)
      {
        v10 = [[SBProductivityGestureEducationItem alloc] initWithType:v5];
        v11 = [(NSDictionary *)self->_educationItemMap mutableCopy];
        [v11 setObject:v10 forKeyedSubscript:v9];
        v12 = [v11 copy];
        educationItemMap = self->_educationItemMap;
        self->_educationItemMap = v12;

        [(SBProductivityGestureEducationController *)self _itemMapUpdated];
      }

      if ([(SBProductivityGestureEducationItem *)v10 isValidWithActivationForType:type])
      {
        [(SBProductivityGestureEducationController *)self _presentBannerWithEducationItem:v10];
      }
    }
  }
}

- (void)_invalidateBannerTimer
{
  [(BSAbsoluteMachTimer *)self->_bannerDismissTimer invalidate];
  bannerDismissTimer = self->_bannerDismissTimer;
  self->_bannerDismissTimer = 0;
}

- (int64_t)_itemTypeForType:(int64_t)type
{
  if ((type - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6E78[type - 1];
  }
}

- (void)_loadItemMap
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_educationItemMap)
  {
    return;
  }

  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults objectForKey:@"SBProductivityGestureEducationItemMap"];

  v17 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v8 error:&v17];
  v10 = v17;
  educationItemMap = self->_educationItemMap;
  self->_educationItemMap = v9;

  v12 = SBLogSystemGesture();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v19 = v14;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_ERROR, "%{public}@ error unarchive educationItemMap: %{public}@", buf, 0x16u);
LABEL_7:
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v19 = v14;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "%{public}@ successfully unarchive educationItemMap", buf, 0xCu);
    goto LABEL_7;
  }

  if (!self->_educationItemMap)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    v16 = self->_educationItemMap;
    self->_educationItemMap = dictionary;
  }
}

- (void)_itemMapUpdated
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ successfully archived educationItemMap", &v5, 0xCu);
}

- (void)_presentBannerWithEducationItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  educationPillViewController = self->_educationPillViewController;
  itemCopy = item;
  [(SBProductivityGestureEducationController *)self _resetPillViewController:educationPillViewController];
  v6 = [[SBProductivityGestureEducationPillViewController alloc] initWithItem:itemCopy];

  v7 = self->_educationPillViewController;
  self->_educationPillViewController = v6;

  [(SBProductivityGestureEducationPillViewController *)self->_educationPillViewController setDelegate:self];
  bannerPoster = self->_bannerPoster;
  v9 = self->_educationPillViewController;
  v13 = 0;
  [(BNPosting *)bannerPoster postPresentable:v9 withOptions:1 userInfo:0 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = SBLogSystemGesture();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "%{public}@ error while presenting gesture education banner: %{public}@", buf, 0x16u);
    }

    [(SBProductivityGestureEducationController *)self _resetPillViewController:self->_educationPillViewController];
  }
}

- (void)_dismissBanner:(id)banner
{
  bannerCopy = banner;
  bannerPoster = self->_bannerPoster;
  v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:self->_educationPillViewController];
  v6 = [(BNPosting *)bannerPoster revokePresentablesWithIdentification:v5 reason:bannerCopy options:0 userInfo:0 error:0];
}

- (void)_resetPillViewController:(id)controller
{
  controllerCopy = controller;
  item = [(SBProductivityGestureEducationPillViewController *)controllerCopy item];
  [item resetActivations];

  v5 = controllerCopy;
  if (controllerCopy && self->_educationPillViewController == controllerCopy)
  {
    [(SBProductivityGestureEducationController *)self _invalidateBannerTimer];
    educationPillViewController = self->_educationPillViewController;
    self->_educationPillViewController = 0;

    v5 = controllerCopy;
  }
}

- (void)_dismissBannerTimerWithInterval:(double)interval reason:(id)reason
{
  reasonCopy = reason;
  [(SBProductivityGestureEducationController *)self _invalidateBannerTimer];
  v7 = objc_alloc(MEMORY[0x277CF0B50]);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBProductivityGestureEducation.bannerDismissTimer"];
  v9 = [v7 initWithIdentifier:v8];
  bannerDismissTimer = self->_bannerDismissTimer;
  self->_bannerDismissTimer = v9;

  objc_initWeak(&location, self);
  v11 = self->_bannerDismissTimer;
  v12 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__SBProductivityGestureEducationController__dismissBannerTimerWithInterval_reason___block_invoke;
  v15[3] = &unk_2783B79D0;
  objc_copyWeak(&v17, &location);
  v14 = reasonCopy;
  v16 = v14;
  [(BSAbsoluteMachTimer *)v11 scheduleWithFireInterval:v12 leewayInterval:v15 queue:interval handler:0.05];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __83__SBProductivityGestureEducationController__dismissBannerTimerWithInterval_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dismissBanner:*(a1 + 32)];
}

- (void)gestureEducationPillViewControllerWillAppear:(id)appear
{
  item = [appear item];
  [item contentDidAppear];

  [(SBProductivityGestureEducationController *)self _itemMapUpdated];

  [(SBProductivityGestureEducationController *)self _dismissBannerTimerWithInterval:@"Timer" reason:5.0];
}

- (void)gestureEducationPillViewControllerDidReceiveUserTap:(id)tap
{
  v8 = *MEMORY[0x277D85DE8];
  actionURL = [tap actionURL];
  v5 = SBLogSystemGesture();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionURL;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Productivity banner tapped, launching to %@", &v6, 0xCu);
  }

  SBWorkspaceActivateApplicationFromURL(actionURL, 0, 0);
  [(SBProductivityGestureEducationController *)self _dismissBanner:@"User Interaction"];
}

- (void)gestureEducationPillViewControllerMarqueeStarted:(id)started duration:(double)duration
{
  if (duration > 0.0 && self->_educationPillViewController == started)
  {
    [(SBProductivityGestureEducationController *)self _dismissBannerTimerWithInterval:@"Marquee Ended" reason:?];
  }
}

@end