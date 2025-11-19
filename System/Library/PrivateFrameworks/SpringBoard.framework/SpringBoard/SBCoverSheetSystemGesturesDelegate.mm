@interface SBCoverSheetSystemGesturesDelegate
- (BOOL)_areAnyGesturesRecognizedInSet:(id)a3;
- (BOOL)_canDismissGestureBegin;
- (BOOL)_canPresentGestureBegin;
- (BOOL)_isGestureActivelyRecognized:(id)a3;
- (BOOL)_isGestureAllowedByTransientOverlaysOrTopmostApp;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isAnyGestureActivelyRecognized;
- (BOOL)isDismissGestureActive;
- (BOOL)isDismissGestureAllowedToBegin;
- (BOOL)isPresentGestureActive;
- (BOOL)isPresentGestureAllowedToBegin;
- (SBCoverSheetSystemGestureDelegateContextProviding)contextProvider;
- (SBCoverSheetSystemGesturesDelegate)initWithViewController:(id)a3 dismissGestureRecognizer:(id)a4 dismissAddendumGestureRecognizer:(id)a5 dismissalPreemptingGestureRecognizer:(id)a6;
- (UIGestureRecognizer)dismissAddendumGestureRecognizer;
- (UIGestureRecognizer)dismissGestureRecognizer;
- (UIGestureRecognizer)preemptingGestureRecognizer;
- (UIViewController)viewController;
- (id)dismissGestures;
- (id)presentGestures;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (void)setPresentGestureRecognizer:(id)a3;
@end

@implementation SBCoverSheetSystemGesturesDelegate

- (BOOL)isAnyGestureActivelyRecognized
{
  v3 = [(SBCoverSheetSystemGesturesDelegate *)self presentGestures];
  if ([(SBCoverSheetSystemGesturesDelegate *)self _areAnyGesturesRecognizedInSet:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SBCoverSheetSystemGesturesDelegate *)self dismissGestures];
    v4 = [(SBCoverSheetSystemGesturesDelegate *)self _areAnyGesturesRecognizedInSet:v5];
  }

  return v4;
}

- (id)dismissGestures
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  WeakRetained = objc_loadWeakRetained(&self->_dismissGestureRecognizer);
  v11[0] = WeakRetained;
  v5 = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);
  indirectDismissGestureRecognizer = self->_indirectDismissGestureRecognizer;
  scrunchDismissGestureRecognizer = self->_scrunchDismissGestureRecognizer;
  v11[1] = v5;
  v11[2] = indirectDismissGestureRecognizer;
  v11[3] = scrunchDismissGestureRecognizer;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v9 = [v3 initWithArray:v8];

  return v9;
}

- (id)presentGestures
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 bs_safeAddObject:self->_presentGestureRecognizer];
  [v3 bs_safeAddObject:self->_indirectPresentGestureRecognizer];

  return v3;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (SBCoverSheetSystemGesturesDelegate)initWithViewController:(id)a3 dismissGestureRecognizer:(id)a4 dismissAddendumGestureRecognizer:(id)a5 dismissalPreemptingGestureRecognizer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = SBCoverSheetSystemGesturesDelegate;
  v14 = [(SBCoverSheetSystemGesturesDelegate *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(SBCoverSheetSystemGesturesDelegate *)v14 setViewController:v10];
    [(SBCoverSheetSystemGesturesDelegate *)v15 setDismissGestureRecognizer:v11];
    [(SBCoverSheetSystemGesturesDelegate *)v15 setDismissAddendumGestureRecognizer:v12];
    [(SBCoverSheetSystemGesturesDelegate *)v15 setPreemptingGestureRecognizer:v13];
    v16 = [MEMORY[0x277D02C20] rootSettings];
    v17 = [v16 coverSheetDismissGestureSettings];
    dismissGestureSettings = v15->_dismissGestureSettings;
    v15->_dismissGestureSettings = v17;
  }

  return v15;
}

- (BOOL)isPresentGestureActive
{
  v2 = self;
  v3 = [(SBCoverSheetSystemGesturesDelegate *)self _canPresentGestureBegin];
  v4 = [(SBCoverSheetSystemGesturesDelegate *)v2 presentGestures];
  LOBYTE(v2) = [(SBCoverSheetSystemGesturesDelegate *)v2 _areAnyGesturesRecognizedInSet:v4];

  return (v3 | v2) & 1;
}

- (BOOL)isPresentGestureAllowedToBegin
{
  self->_checkingGestureAvailabilityForNoninteractiveReason = 1;
  result = [(SBCoverSheetSystemGesturesDelegate *)self gestureRecognizerShouldBegin:self->_presentGestureRecognizer];
  self->_checkingGestureAvailabilityForNoninteractiveReason = 0;
  return result;
}

- (BOOL)isDismissGestureActive
{
  v2 = self;
  v3 = [(SBCoverSheetSystemGesturesDelegate *)self _canDismissGestureBegin];
  v4 = [(SBCoverSheetSystemGesturesDelegate *)v2 dismissGestures];
  LOBYTE(v2) = [(SBCoverSheetSystemGesturesDelegate *)v2 _areAnyGesturesRecognizedInSet:v4];

  return (v3 | v2) & 1;
}

- (BOOL)isDismissGestureAllowedToBegin
{
  self->_checkingGestureAvailabilityForNoninteractiveReason = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dismissGestureRecognizer);
  v4 = [(SBCoverSheetSystemGesturesDelegate *)self gestureRecognizerShouldBegin:WeakRetained];

  self->_checkingGestureAvailabilityForNoninteractiveReason = 0;
  return v4;
}

- (void)setPresentGestureRecognizer:(id)a3
{
  p_presentGestureRecognizer = &self->_presentGestureRecognizer;
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_presentGestureRecognizer, a3);
  }
}

- (BOOL)_areAnyGesturesRecognizedInSet:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SBCoverSheetSystemGesturesDelegate__areAnyGesturesRecognizedInSet___block_invoke;
  v6[3] = &unk_2783BF5C8;
  v6[4] = self;
  v3 = [a3 bs_filter:v6];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  v3 = [(SBCoverSheetSystemGesturesDelegate *)self viewController];
  v4 = [v3 view];

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);

  if (WeakRetained != v5)
  {
    return 1;
  }

  dismissGestureSettings = self->_dismissGestureSettings;

  return [(CSCoverSheetDismissGestureSettings *)dismissGestureSettings extendSwipeUpRegion];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemGestureCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(UIPanGestureRecognizer *)v4 sb_briefDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBCoverSheetSystemGesturesDelegate gestureRecognizerShouldBegin - %{public}@", &buf, 0xCu);
  }

  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v63 = [v7 policyAggregator];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__106;
  v72 = __Block_byref_object_dispose__106;
  v73 = 0;
  v8 = [(UIPanGestureRecognizer *)v4 view];
  v9 = [v8 _sbWindowScene];

  if (!v9)
  {
    v10 = [SBApp windowSceneManager];
    v9 = [v10 embeddedDisplayWindowScene];
  }

  v62 = [v9 controlCenterController];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __67__SBCoverSheetSystemGesturesDelegate_gestureRecognizerShouldBegin___block_invoke;
  v66[3] = &unk_2783BF5F0;
  v66[4] = &buf;
  v11 = MEMORY[0x223D6F7F0](v66);
  v12 = [(SBCoverSheetSystemGesturesDelegate *)self presentGestures];
  v13 = [v12 containsObject:v4];

  if (v13)
  {
    v65 = 0;
    v14 = [v63 allowsCapability:13 explanation:&v65];
    v15 = v65;
    if (v14)
    {
      v16 = +[SBSystemGestureManager mainDisplayManager];
      v17 = [v16 isGestureWithTypeAllowed:1];

      v18 = [(SBCoverSheetSystemGesturesDelegate *)self _canPresentGestureBegin];
      v19 = [(SBCoverSheetSystemGesturesDelegate *)self _isGestureAllowedByTransientOverlaysOrTopmostApp];
      v60 = [v62 allowGestureForContentBelow];
      v20 = [v9 menuBarManager];
      if (v20 && !self->_checkingGestureAvailabilityForNoninteractiveReason)
      {
        indirectPresentGestureRecognizer = self->_indirectPresentGestureRecognizer;
        if (indirectPresentGestureRecognizer == v4)
        {
          [(SBIndirectPanGestureRecognizer *)indirectPresentGestureRecognizer origin];
          v38 = v53;
          v40 = v54;
        }

        else
        {
          v58 = [v9 statusBarManager];
          v36 = [v58 statusBar];
          _UISystemGestureLocationInView();
          v38 = v37;
          v40 = v39;
        }

        v21 = [v20 shouldAllowCoverSheetPresentationGestureAtLocation:self->_presentGestureRecognizer == v4 isTouchGesture:{v38, v40}];
      }

      else
      {
        v21 = 1;
      }

      if ((v18 && v19) & v60 & v17) == 1 && (v21)
      {

LABEL_43:
        v55 = 1;
        goto LABEL_59;
      }

      if ((v17 & 1) == 0)
      {
        (v11)[2](v11, @"gesture with type SBSystemGestureTypeShowCoverSheet is not allowed by SBSystemGestureManager");
      }

      if (!v18)
      {
        (v11)[2](v11, @"_canPresentGestureBegin is NO");
      }

      if (!v19)
      {
        (v11)[2](v11, @"Not allowed by transient overlays or topmost app");
      }

      if ((v60 & 1) == 0)
      {
        (v11)[2](v11, @"Not allowed by control center");
      }

      if ((v21 & 1) == 0)
      {
        (v11)[2](v11, @"Not allowed by menu bar");
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"CoverSheet capability disallowed by policy aggregator: %@", v15];
      (v11)[2](v11, v20);
    }

    goto LABEL_54;
  }

  v22 = [(SBCoverSheetSystemGesturesDelegate *)self dismissGestures];
  v23 = [v22 containsObject:v4];

  if (v23)
  {
    v64 = 0;
    v24 = [v63 allowsCapability:14 explanation:&v64];
    v15 = v64;
    if (v24)
    {
      v25 = [(CSCoverSheetDismissGestureSettings *)self->_dismissGestureSettings extendSwipeUpRegion];
      WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);
      v27 = WeakRetained == v4;

      if ((v27 & v25) == 1)
      {
        [(CSCoverSheetDismissGestureSettings *)self->_dismissGestureSettings extendedRegionInsetX];
        v29 = v28;
        v30 = [(SBCoverSheetSystemGesturesDelegate *)self viewForSystemGestureRecognizer:v4];
        [v30 bounds];
        v76 = CGRectInset(v75, v29, 0.0);
        x = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
        _UISystemGestureLocationInView();
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        CGRectGetMinX(v77);
        if (BSFloatGreaterThanOrEqualToFloat())
        {
          v78.origin.x = x;
          v78.origin.y = y;
          v78.size.width = width;
          v78.size.height = height;
          CGRectGetMaxX(v78);
          v61 = BSFloatLessThanOrEqualToFloat();
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        v61 = 1;
      }

      v41 = +[SBSystemGestureManager mainDisplayManager];
      v59 = [v41 isGestureWithTypeAllowed:2];

      v42 = +[SBWorkspace mainWorkspace];
      v43 = [v42 transientOverlayPresentationManager];
      v44 = [v43 hasActivePresentation];

      v45 = [v62 isPresented];
      if ((self->_indirectDismissGestureRecognizer != v4) | v45 & 1)
      {
        v46 = (self->_indirectDismissGestureRecognizer == v4) | v45;
      }

      else
      {
        v46 = [v62 isVisible];
      }

      v47 = +[SBCoverSheetPresentationManager sharedInstance];
      v48 = [v47 hasBeenDismissedSinceKeybagLock];

      v49 = SBHomeGestureEnabled();
      v50 = [(SBCoverSheetSystemGesturesDelegate *)self _canDismissGestureBegin];
      if (!(v49 & 1 | ((v50 & 1) == 0)))
      {
        v51 = [SBApp authenticationController];
        v52 = [v51 isAuthenticated];

        v50 = v52 & v48;
      }

      if (v50 & v59 & (v46 ^ 1) & (v44 ^ 1) & v61)
      {
        goto LABEL_43;
      }

      if (!(v50 & 1 | ((v49 & 1) == 0)))
      {
        (v11)[2](v11, @"either _canDismissGestureBegin is NO or can't pull up when not authenticated and not in notification center mode");
      }

      if ((v59 & 1) == 0)
      {
        (v11)[2](v11, @"gesture with type SBSystemGestureTypeDismissCoverSheet is not allowed by SBSystemGestureManager");
      }

      if (v44)
      {
        (v11)[2](v11, @"transient overlay is visible");
      }

      if (v46)
      {
        (v11)[2](v11, @"control center is visible");
      }

      if ((v61 & 1) == 0)
      {
        (v11)[2](v11, @"isn't within X margin");
      }

      goto LABEL_55;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dismiss CoverSheet capability disallowed by policy aggregator: %@", v15];
    (v11)[2](v11, v20);
LABEL_54:

LABEL_55:
  }

  v15 = SBLogSystemGestureCoverSheet();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(*(&buf + 1) + 40);
    *v67 = 138543362;
    v68 = v56;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "should not begin for reason: %{public}@", v67, 0xCu);
  }

  v55 = 0;
LABEL_59:

  _Block_object_dispose(&buf, 8);
  return v55;
}

void __67__SBCoverSheetSystemGesturesDelegate_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  if (v3)
  {
    [v3 appendFormat:@" | "];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  [*(*(*(a1 + 32) + 8) + 40) appendString:a2];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBCoverSheetSystemGesturesDelegate *)self dismissGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);

  if (WeakRetained == v6 && v8 == v7)
  {
    v10 = 1;
  }

  else if (v8 == v6)
  {
    v11 = objc_loadWeakRetained(&self->_preemptingGestureRecognizer);
    v10 = v11 == v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isGestureAllowedByTransientOverlaysOrTopmostApp
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[SBWorkspace mainWorkspace];
  v3 = [v2 transientOverlayPresentationManager];

  if ([v3 shouldDisableCoverSheetGesture])
  {
    v4 = SBLogSystemGestureCoverSheet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Not allowing transition because transient overlays suppress CoverSheet.", buf, 2u);
    }

LABEL_18:
    v7 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v5 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v6 = [v5 isAnySwitcherVisible];

  if ((v6 & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
    v8 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) application];
          v13 = [v12 suppressesCoverSheetGesture];

          if (v13)
          {
            v14 = SBLogSystemGestureCoverSheet();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Not allowing transition because the top app suppresses CoverSheet.", buf, 2u);
            }

            goto LABEL_18;
          }
        }

        v9 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
        v7 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_19;
  }

  v7 = 1;
LABEL_20:

  return v7;
}

- (BOOL)_canDismissGestureBegin
{
  if ([(SBCoverSheetSystemGesturesDelegate *)self syntheticAppearState]- 3 > 0xFFFFFFFD)
  {
    return ![(SBCoverSheetSystemGesturesDelegate *)self isAnyGestureActivelyRecognized];
  }

  else
  {
    v3 = [(SBCoverSheetSystemGesturesDelegate *)self contextProvider];
    if ([v3 isPresentingDismissableOffScreenInterstitial])
    {
      v4 = ![(SBCoverSheetSystemGesturesDelegate *)self isAnyGestureActivelyRecognized];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)_canPresentGestureBegin
{
  v3 = [(SBCoverSheetSystemGesturesDelegate *)self syntheticAppearState];
  if (v3 != 3 && v3)
  {
    return 0;
  }

  else
  {
    return ![(SBCoverSheetSystemGesturesDelegate *)self isAnyGestureActivelyRecognized];
  }
}

- (BOOL)_isGestureActivelyRecognized:(id)a3
{
  v3 = a3;
  v4 = [v3 state] == 1 || objc_msgSend(v3, "state") == 2;

  return v4;
}

- (SBCoverSheetSystemGestureDelegateContextProviding)contextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contextProvider);

  return WeakRetained;
}

- (UIGestureRecognizer)dismissGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissGestureRecognizer);

  return WeakRetained;
}

- (UIGestureRecognizer)dismissAddendumGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissAddendumGestureRecognizer);

  return WeakRetained;
}

- (UIGestureRecognizer)preemptingGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_preemptingGestureRecognizer);

  return WeakRetained;
}

@end