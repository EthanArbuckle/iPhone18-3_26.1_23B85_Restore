@interface SBMainScreenActiveInterfaceOrientationWindow
+ (BOOL)_traitsArbiterOrientationActuationEnabled;
- (BOOL)_canBecomeKeyWindow;
- (SBMainScreenActiveInterfaceOrientationWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)rootViewController;
- (id)succinctDescription;
- (unint64_t)effectiveRootViewControllerSupportedInterfaceOrientations;
- (void)_updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:(double)a3;
- (void)_updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5;
- (void)disableInterfaceOrientationChangesForReason:(id)a3;
- (void)enableInterfaceOrientationChangesForReason:(id)a3;
- (void)setContentViewController:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SBMainScreenActiveInterfaceOrientationWindow

- (SBMainScreenActiveInterfaceOrientationWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277D759A0];
  v11 = a5;
  v12 = a4;
  v13 = [v10 mainScreen];
  v14 = [v13 displayIdentity];
  v15 = [v9 stringWithFormat:@"%@-%@", v11, v14];

  v30.receiver = self;
  v30.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  v16 = [(SBWindow *)&v30 initWithWindowScene:v8 rootViewController:0 layoutStrategy:0 role:v12 debugName:v15];

  if (v16)
  {
    v17 = objc_alloc_init(_SBMainScreenActiveInterfaceOrientationWindowRootViewController);
    v18 = [v8 screen];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = [(_SBMainScreenActiveInterfaceOrientationWindowRootViewController *)v17 view];
    [v27 setFrame:{v20, v22, v24, v26}];

    v29.receiver = v16;
    v29.super_class = SBMainScreenActiveInterfaceOrientationWindow;
    [(SBMainScreenActiveInterfaceOrientationWindow *)&v29 setRootViewController:v17];
  }

  return v16;
}

- (id)rootViewController
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  v4 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v7 rootViewController];
  v5 = SBSafeCast(v3, v4);

  return v5;
}

- (BOOL)_canBecomeKeyWindow
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  [(SBWindow *)&v5 setHidden:?];
  if (v3)
  {
    [SBApp removeActiveOrientationObserver:self];
  }

  else
  {
    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:0.0];
    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];
    [SBApp addActiveOrientationObserver:self];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  v5 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if ([(SBMainScreenActiveInterfaceOrientationWindow *)self passesTouchesThrough])
  {
    if (v5 == self || (-[SBMainScreenActiveInterfaceOrientationWindow rootViewController](self, "rootViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v23 = v5;
    v6 = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
    v7 = v6;
    if (self->_contentViewController)
    {
      [v6 bs_removeChildViewController:?];
      [v7 setContentViewController:0];
    }

    objc_storeStrong(&self->_contentViewController, a3);
    if (self->_contentViewController)
    {
      v8 = [v7 view];
      v9 = [(UIViewController *)self->_contentViewController view];
      v10 = [objc_opt_class() layoutContentViewControllerWithConstraints];
      if (v10)
      {
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      else
      {
        [v8 bounds];
        [v9 setFrame:?];
        [v9 setAutoresizingMask:18];
      }

      [v7 bs_addChildViewController:self->_contentViewController];
      [v7 setContentViewController:self->_contentViewController];
      if (v10)
      {
        v11 = [v9 leftAnchor];
        v12 = [v8 leftAnchor];
        v13 = [v11 constraintEqualToAnchor:v12];
        [v13 setActive:1];

        v14 = [v9 rightAnchor];
        v15 = [v8 rightAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];
        [v16 setActive:1];

        v17 = [v9 topAnchor];
        v18 = [v8 topAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        [v19 setActive:1];

        v20 = [v9 bottomAnchor];
        v21 = [v8 bottomAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
        [v22 setActive:1];
      }
    }

    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];

    v5 = v23;
  }
}

- (void)disableInterfaceOrientationChangesForReason:(id)a3
{
  v4 = a3;
  orientationUpdateDisableReasons = self->_orientationUpdateDisableReasons;
  v8 = v4;
  if (!orientationUpdateDisableReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_orientationUpdateDisableReasons;
    self->_orientationUpdateDisableReasons = v6;

    v4 = v8;
    orientationUpdateDisableReasons = self->_orientationUpdateDisableReasons;
  }

  [(NSCountedSet *)orientationUpdateDisableReasons addObject:v4];
  [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];
}

- (void)enableInterfaceOrientationChangesForReason:(id)a3
{
  [(NSCountedSet *)self->_orientationUpdateDisableReasons removeObject:a3];
  if (![(NSCountedSet *)self->_orientationUpdateDisableReasons count])
  {
    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:0.0];

    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];
  }
}

- (id)succinctDescription
{
  v2 = [(SBMainScreenActiveInterfaceOrientationWindow *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBMainScreenActiveInterfaceOrientationWindow *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBMainScreenActiveInterfaceOrientationWindow *)self succinctDescriptionBuilder];
  v5 = [(SBMainScreenActiveInterfaceOrientationWindow *)self _debugName];
  v6 = [v4 appendObject:v5 withName:0];

  [(SBMainScreenActiveInterfaceOrientationWindow *)self frame];
  v11 = _SBWindowFrameDescription(v7, v8, v9, v10);
  v12 = [v4 appendObject:v11 withName:@"frame"];

  v13 = [v4 appendBool:-[SBMainScreenActiveInterfaceOrientationWindow isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  v14 = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
  [v14 supportedInterfaceOrientations];
  v15 = BSInterfaceOrientationMaskDescription();
  [v4 appendString:v15 withName:@"rootVCSupportedInterfaceOrientations"];

  [(SBMainScreenActiveInterfaceOrientationWindow *)self interfaceOrientation];
  v16 = BSInterfaceOrientationDescription();
  [v4 appendString:v16 withName:@"interfaceOrientation"];

  v17 = [(NSCountedSet *)self->_orientationUpdateDisableReasons allObjects];
  v18 = [v4 activeMultilinePrefix];
  [v4 appendArraySection:v17 withName:@"updateDisableReasons" multilinePrefix:v18 skipIfEmpty:1];

  v19 = [(SBMainScreenActiveInterfaceOrientationWindow *)self layer];
  v20 = [v4 appendObject:v19 withName:@"layer"];

  return v4;
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = BKLogOrientationClient();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = BSInterfaceOrientationDescription();
    v11 = BSInterfaceOrientationDescription();
    v12 = 138543874;
    v13 = self;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Attempting to rotate active interface orientation following window (%{public}@) from orientation: %{public}@ to orientation %{public}@.", &v12, 0x20u);
  }

  [SBAnimationUtilities adjustedRotationAnimationDurationForDuration:a5 fromOrientation:a3 toOrientation:a4];
  [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:?];
}

- (void)_updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(NSCountedSet *)self->_orientationUpdateDisableReasons count])
  {
    v5 = [(SBMainScreenActiveInterfaceOrientationWindow *)self _roleHint];
    v6 = SBTraitsArbiterOrientationActuationEnabledForRole(v5);

    if ((v6 & 1) == 0)
    {
      [(SBMainScreenActiveInterfaceOrientationWindow *)self effectiveRootViewControllerSupportedInterfaceOrientations];
      v7 = [SBApp activeInterfaceOrientation];
      if (SBFInterfaceOrientationMaskContainsInterfaceOrientation())
      {
        v8 = XBInterfaceOrientationMaskForInterfaceOrientation();
        v9 = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
        [v9 setSupportedInterfaceOrientations:v8];

        v10 = BKLogOrientationClient();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = BSInterfaceOrientationDescription();
          v13 = 138543618;
          v14 = self;
          v15 = 2114;
          v16 = v11;
          v12 = "Really rotating active interface orientation following window (%{public}@) to orientation: %{public}@.";
LABEL_8:
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, v12, &v13, 0x16u);
        }
      }

      else
      {
        v7 = SBFFirstInterfaceOrientationInInterfaceOrientationMask();
        v10 = BKLogOrientationClient();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = BSInterfaceOrientationDescription();
          v13 = 138543618;
          v14 = self;
          v15 = 2114;
          v16 = v11;
          v12 = "Overriding orientation of window (%{public}@) to orientation: %{public}@, because the root view controller does not support the active interface orientation.";
          goto LABEL_8;
        }
      }

      [(SBMainScreenActiveInterfaceOrientationWindow *)self _legacySetRotatableViewOrientation:v7 duration:a3];
    }
  }
}

- (unint64_t)effectiveRootViewControllerSupportedInterfaceOrientations
{
  v2 = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  v3 = [v2 supportedInterfaceOrientations];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

+ (BOOL)_traitsArbiterOrientationActuationEnabled
{
  v2 = [a1 _traitsArbiterOrientationActuationRole];
  v3 = SBTraitsArbiterOrientationActuationEnabledForRole(v2);

  return v3;
}

- (void)_updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded
{
  if ([objc_opt_class() _traitsArbiterOrientationActuationEnabled])
  {
    if ([(SBMainScreenActiveInterfaceOrientationWindow *)self isDisablingInterfaceOrientationChanges])
    {
      [(SBMainScreenActiveInterfaceOrientationWindow *)self _windowInterfaceOrientation];
      v3 = XBInterfaceOrientationMaskForInterfaceOrientation();
    }

    else
    {
      v3 = [(SBMainScreenActiveInterfaceOrientationWindow *)self effectiveRootViewControllerSupportedInterfaceOrientations];
    }

    v4 = v3;
    v5 = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
    [v5 setSupportedInterfaceOrientations:v4];
  }
}

@end