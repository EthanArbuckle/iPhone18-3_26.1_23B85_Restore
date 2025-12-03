@interface SBMainScreenActiveInterfaceOrientationWindow
+ (BOOL)_traitsArbiterOrientationActuationEnabled;
- (BOOL)_canBecomeKeyWindow;
- (SBMainScreenActiveInterfaceOrientationWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)rootViewController;
- (id)succinctDescription;
- (unint64_t)effectiveRootViewControllerSupportedInterfaceOrientations;
- (void)_updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:(double)duration;
- (void)_updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)disableInterfaceOrientationChangesForReason:(id)reason;
- (void)enableInterfaceOrientationChangesForReason:(id)reason;
- (void)setContentViewController:(id)controller;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SBMainScreenActiveInterfaceOrientationWindow

- (SBMainScreenActiveInterfaceOrientationWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name
{
  sceneCopy = scene;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277D759A0];
  nameCopy = name;
  roleCopy = role;
  mainScreen = [v10 mainScreen];
  displayIdentity = [mainScreen displayIdentity];
  v15 = [v9 stringWithFormat:@"%@-%@", nameCopy, displayIdentity];

  v30.receiver = self;
  v30.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  v16 = [(SBWindow *)&v30 initWithWindowScene:sceneCopy rootViewController:0 layoutStrategy:0 role:roleCopy debugName:v15];

  if (v16)
  {
    v17 = objc_alloc_init(_SBMainScreenActiveInterfaceOrientationWindowRootViewController);
    screen = [sceneCopy screen];
    [screen bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    view = [(_SBMainScreenActiveInterfaceOrientationWindowRootViewController *)v17 view];
    [view setFrame:{v20, v22, v24, v26}];

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
  rootViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)&v7 rootViewController];
  v5 = SBSafeCast(v3, rootViewController);

  return v5;
}

- (BOOL)_canBecomeKeyWindow
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  [(SBWindow *)&v5 setHidden:?];
  if (hiddenCopy)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBMainScreenActiveInterfaceOrientationWindow;
  v5 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  if ([(SBMainScreenActiveInterfaceOrientationWindow *)self passesTouchesThrough])
  {
    if (v5 == self || (-[SBMainScreenActiveInterfaceOrientationWindow rootViewController](self, "rootViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v23 = controllerCopy;
    rootViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
    v7 = rootViewController;
    if (self->_contentViewController)
    {
      [rootViewController bs_removeChildViewController:?];
      [v7 setContentViewController:0];
    }

    objc_storeStrong(&self->_contentViewController, controller);
    if (self->_contentViewController)
    {
      view = [v7 view];
      view2 = [(UIViewController *)self->_contentViewController view];
      layoutContentViewControllerWithConstraints = [objc_opt_class() layoutContentViewControllerWithConstraints];
      if (layoutContentViewControllerWithConstraints)
      {
        [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      else
      {
        [view bounds];
        [view2 setFrame:?];
        [view2 setAutoresizingMask:18];
      }

      [v7 bs_addChildViewController:self->_contentViewController];
      [v7 setContentViewController:self->_contentViewController];
      if (layoutContentViewControllerWithConstraints)
      {
        leftAnchor = [view2 leftAnchor];
        leftAnchor2 = [view leftAnchor];
        v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        [v13 setActive:1];

        rightAnchor = [view2 rightAnchor];
        rightAnchor2 = [view rightAnchor];
        v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        [v16 setActive:1];

        topAnchor = [view2 topAnchor];
        topAnchor2 = [view topAnchor];
        v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v19 setActive:1];

        bottomAnchor = [view2 bottomAnchor];
        bottomAnchor2 = [view bottomAnchor];
        v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v22 setActive:1];
      }
    }

    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];

    controllerCopy = v23;
  }
}

- (void)disableInterfaceOrientationChangesForReason:(id)reason
{
  reasonCopy = reason;
  orientationUpdateDisableReasons = self->_orientationUpdateDisableReasons;
  v8 = reasonCopy;
  if (!orientationUpdateDisableReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_orientationUpdateDisableReasons;
    self->_orientationUpdateDisableReasons = v6;

    reasonCopy = v8;
    orientationUpdateDisableReasons = self->_orientationUpdateDisableReasons;
  }

  [(NSCountedSet *)orientationUpdateDisableReasons addObject:reasonCopy];
  [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];
}

- (void)enableInterfaceOrientationChangesForReason:(id)reason
{
  [(NSCountedSet *)self->_orientationUpdateDisableReasons removeObject:reason];
  if (![(NSCountedSet *)self->_orientationUpdateDisableReasons count])
  {
    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:0.0];

    [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBMainScreenActiveInterfaceOrientationWindow *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBMainScreenActiveInterfaceOrientationWindow *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBMainScreenActiveInterfaceOrientationWindow *)self succinctDescriptionBuilder];
  _debugName = [(SBMainScreenActiveInterfaceOrientationWindow *)self _debugName];
  v6 = [succinctDescriptionBuilder appendObject:_debugName withName:0];

  [(SBMainScreenActiveInterfaceOrientationWindow *)self frame];
  v11 = _SBWindowFrameDescription(v7, v8, v9, v10);
  v12 = [succinctDescriptionBuilder appendObject:v11 withName:@"frame"];

  v13 = [succinctDescriptionBuilder appendBool:-[SBMainScreenActiveInterfaceOrientationWindow isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  rootViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
  [rootViewController supportedInterfaceOrientations];
  v15 = BSInterfaceOrientationMaskDescription();
  [succinctDescriptionBuilder appendString:v15 withName:@"rootVCSupportedInterfaceOrientations"];

  [(SBMainScreenActiveInterfaceOrientationWindow *)self interfaceOrientation];
  v16 = BSInterfaceOrientationDescription();
  [succinctDescriptionBuilder appendString:v16 withName:@"interfaceOrientation"];

  allObjects = [(NSCountedSet *)self->_orientationUpdateDisableReasons allObjects];
  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  [succinctDescriptionBuilder appendArraySection:allObjects withName:@"updateDisableReasons" multilinePrefix:activeMultilinePrefix skipIfEmpty:1];

  layer = [(SBMainScreenActiveInterfaceOrientationWindow *)self layer];
  v20 = [succinctDescriptionBuilder appendObject:layer withName:@"layer"];

  return succinctDescriptionBuilder;
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = BKLogOrientationClient();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = BSInterfaceOrientationDescription();
    v11 = BSInterfaceOrientationDescription();
    v12 = 138543874;
    selfCopy = self;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Attempting to rotate active interface orientation following window (%{public}@) from orientation: %{public}@ to orientation %{public}@.", &v12, 0x20u);
  }

  [SBAnimationUtilities adjustedRotationAnimationDurationForDuration:fromOrientation fromOrientation:orientation toOrientation:duration];
  [(SBMainScreenActiveInterfaceOrientationWindow *)self _updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:?];
}

- (void)_updateInterfaceOrientationToCurrentActiveInterfaceOrientationWithDuration:(double)duration
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(NSCountedSet *)self->_orientationUpdateDisableReasons count])
  {
    _roleHint = [(SBMainScreenActiveInterfaceOrientationWindow *)self _roleHint];
    v6 = SBTraitsArbiterOrientationActuationEnabledForRole(_roleHint);

    if ((v6 & 1) == 0)
    {
      [(SBMainScreenActiveInterfaceOrientationWindow *)self effectiveRootViewControllerSupportedInterfaceOrientations];
      activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
      if (SBFInterfaceOrientationMaskContainsInterfaceOrientation())
      {
        v8 = XBInterfaceOrientationMaskForInterfaceOrientation();
        rootViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
        [rootViewController setSupportedInterfaceOrientations:v8];

        v10 = BKLogOrientationClient();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = BSInterfaceOrientationDescription();
          v13 = 138543618;
          selfCopy2 = self;
          v15 = 2114;
          v16 = v11;
          v12 = "Really rotating active interface orientation following window (%{public}@) to orientation: %{public}@.";
LABEL_8:
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, v12, &v13, 0x16u);
        }
      }

      else
      {
        activeInterfaceOrientation = SBFFirstInterfaceOrientationInInterfaceOrientationMask();
        v10 = BKLogOrientationClient();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = BSInterfaceOrientationDescription();
          v13 = 138543618;
          selfCopy2 = self;
          v15 = 2114;
          v16 = v11;
          v12 = "Overriding orientation of window (%{public}@) to orientation: %{public}@, because the root view controller does not support the active interface orientation.";
          goto LABEL_8;
        }
      }

      [(SBMainScreenActiveInterfaceOrientationWindow *)self _legacySetRotatableViewOrientation:activeInterfaceOrientation duration:duration];
    }
  }
}

- (unint64_t)effectiveRootViewControllerSupportedInterfaceOrientations
{
  contentViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  supportedInterfaceOrientations = [contentViewController supportedInterfaceOrientations];
  if (supportedInterfaceOrientations)
  {
    v4 = supportedInterfaceOrientations;
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

+ (BOOL)_traitsArbiterOrientationActuationEnabled
{
  _traitsArbiterOrientationActuationRole = [self _traitsArbiterOrientationActuationRole];
  v3 = SBTraitsArbiterOrientationActuationEnabledForRole(_traitsArbiterOrientationActuationRole);

  return v3;
}

- (void)_updateSupportedInterfaceOrientationsForTraitArbiterActuationIfNeeded
{
  if ([objc_opt_class() _traitsArbiterOrientationActuationEnabled])
  {
    if ([(SBMainScreenActiveInterfaceOrientationWindow *)self isDisablingInterfaceOrientationChanges])
    {
      [(SBMainScreenActiveInterfaceOrientationWindow *)self _windowInterfaceOrientation];
      effectiveRootViewControllerSupportedInterfaceOrientations = XBInterfaceOrientationMaskForInterfaceOrientation();
    }

    else
    {
      effectiveRootViewControllerSupportedInterfaceOrientations = [(SBMainScreenActiveInterfaceOrientationWindow *)self effectiveRootViewControllerSupportedInterfaceOrientations];
    }

    v4 = effectiveRootViewControllerSupportedInterfaceOrientations;
    rootViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
    [rootViewController setSupportedInterfaceOrientations:v4];
  }
}

@end