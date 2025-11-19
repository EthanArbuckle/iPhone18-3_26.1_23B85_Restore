@interface SBSwitcherTransitionRequest
+ (id)requestForActivatingAppLayout:(id)a3;
+ (id)requestForActivatingAppSwitcher;
+ (id)requestForActivatingFloatingSwitcher;
+ (id)requestForActivatingHomeScreen;
+ (id)requestForDeactivatingFloatingSwitcher;
+ (id)requestForStashingFloatingApplicationWithFloatingConfiguration:(int64_t)a3;
+ (id)requestForTapAppLayoutEvent:(id)a3;
+ (id)requestForTapAppLayoutHeaderEvent:(id)a3;
- (SBSwitcherTransitionRequest)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
@end

@implementation SBSwitcherTransitionRequest

- (SBSwitcherTransitionRequest)init
{
  v10.receiver = self;
  v10.super_class = SBSwitcherTransitionRequest;
  v2 = [(SBSwitcherTransitionRequest *)&v10 init];
  v3 = v2;
  if (v2)
  {
    appLayout = v2->_appLayout;
    v2->_appLayout = 0;

    *&v3->_unlockedEnvironmentMode = 0u;
    displayItemLayoutAttributesMap = v3->_displayItemLayoutAttributesMap;
    *&v3->_floatingConfiguration = 0u;

    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    *&v3->_floatingSwitcherVisible = vnegq_f64(v6);
    v3->_autoPIPDisabled = 0x7FFFFFFFFFFFFFFFLL;
    v3->_source = 0;
    bundleIdentifierForAppExpose = v3->_bundleIdentifierForAppExpose;
    v3->_peekConfiguration = 0;
    v3->_bundleIdentifierForAppExpose = 0;

    v3->_entityInsertionPolicy = 0;
    displayConfiguration = v3->_displayConfiguration;
    v3->_displayConfiguration = 0;

    v3->_settlesMultiAppFullScreenSpacesImmediately = 1;
  }

  return v3;
}

+ (id)requestForActivatingAppLayout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAppLayout:v4];

  return v5;
}

+ (id)requestForActivatingHomeScreen
{
  v2 = objc_alloc_init(a1);
  v3 = +[SBAppLayout homeScreenAppLayout];
  [v2 setAppLayout:v3];

  return v2;
}

+ (id)requestForActivatingAppSwitcher
{
  v2 = objc_alloc_init(a1);
  [v2 setUnlockedEnvironmentMode:2];

  return v2;
}

+ (id)requestForActivatingFloatingSwitcher
{
  v2 = objc_alloc_init(a1);
  [v2 setFloatingSwitcherVisible:1];

  return v2;
}

+ (id)requestForDeactivatingFloatingSwitcher
{
  v2 = objc_alloc_init(a1);
  [v2 setFloatingSwitcherVisible:0];

  return v2;
}

+ (id)requestForStashingFloatingApplicationWithFloatingConfiguration:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setFloatingConfiguration:a3];

  return v4;
}

+ (id)requestForTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 appLayout];
  v6 = [v4 layoutRole];
  v7 = objc_alloc_init(a1);
  [v7 setAppLayout:v5];
  v8 = [v5 itemForLayoutRole:v6];
  [v7 setActivatingDisplayItem:v8];

  v9 = [v4 source];
  if (v9 == 1)
  {
    [v7 setSource:51];
  }

  return v7;
}

+ (id)requestForTapAppLayoutHeaderEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 appLayout];
  v6 = [v4 layoutRole];

  v7 = objc_alloc_init(a1);
  [v7 setAppLayout:v5];
  v8 = [v5 itemForLayoutRole:v6];
  [v7 setActivatingDisplayItem:v8];

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSwitcherTransitionRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSwitcherTransitionRequest *)self succinctDescriptionBuilder];
  unlockedEnvironmentMode = self->_unlockedEnvironmentMode;
  if (unlockedEnvironmentMode)
  {
    v6 = SBStringForUnlockedEnvironmentMode(unlockedEnvironmentMode);
    [v4 appendString:v6 withName:@"environmentMode"];
  }

  preferredInterfaceOrientation = self->_preferredInterfaceOrientation;
  if (preferredInterfaceOrientation > 2)
  {
    if (preferredInterfaceOrientation == 3)
    {
      v8 = @"UIInterfaceOrientationLandscapeRight";
      goto LABEL_14;
    }

    if (preferredInterfaceOrientation == 4)
    {
      v8 = @"UIInterfaceOrientationLandscapeLeft";
      goto LABEL_14;
    }

LABEL_10:
    if (preferredInterfaceOrientation == 2)
    {
      v8 = @"UIInterfaceOrientationPortraitUpsideDown";
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_14;
  }

  if (!preferredInterfaceOrientation)
  {
    goto LABEL_15;
  }

  if (preferredInterfaceOrientation != 1)
  {
    goto LABEL_10;
  }

  v8 = @"UIInterfaceOrientationPortrait";
LABEL_14:
  [v4 appendString:v8 withName:@"preferredOrientation"];
LABEL_15:
  floatingConfiguration = self->_floatingConfiguration;
  if (floatingConfiguration)
  {
    v10 = SBStringForFloatingConfiguration(floatingConfiguration);
    [v4 appendString:v10 withName:@"floatingConfiguration"];
  }

  displayItemLayoutAttributesMap = self->_displayItemLayoutAttributesMap;
  if (displayItemLayoutAttributesMap)
  {
    v12 = [(NSDictionary *)displayItemLayoutAttributesMap description];
    [v4 appendString:v12 withName:@"displayItemLayoutAttributesMap"];
  }

  if (self->_floatingSwitcherVisible != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = BSSettingFlagDescription();
    [v4 appendString:v13 withName:@"floatingSwitcherVisible"];
  }

  if (self->_animationDisabled != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = BSSettingFlagDescription();
    [v4 appendString:v14 withName:@"animationDisabled"];
  }

  if (self->_autoPIPDisabled != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = BSSettingFlagDescription();
    [v4 appendString:v15 withName:@"autoPIPDisabled"];
  }

  appLayout = self->_appLayout;
  if (appLayout)
  {
    v17 = [(SBAppLayout *)appLayout succinctDescription];
    v18 = [v4 appendObject:v17 withName:@"appLayout"];
  }

  activatingDisplayItem = self->_activatingDisplayItem;
  if (activatingDisplayItem)
  {
    v20 = [(SBDisplayItem *)activatingDisplayItem succinctDescription];
    v21 = [v4 appendObject:v20 withName:@"activatingDisplayItem"];
  }

  appLayoutEnvironment = self->_appLayoutEnvironment;
  if (appLayoutEnvironment)
  {
    v23 = SBStringForAppLayoutEnvironment(appLayoutEnvironment);
    [v4 appendString:v23 withName:@"appLayoutEnvironment"];
  }

  source = self->_source;
  if (source)
  {
    v25 = SBMainWorkspaceTransitionSourceDescription(source);
    [v4 appendString:v25 withName:@"source"];
  }

  if (SBPeekConfigurationIsValid(self->_peekConfiguration))
  {
    v26 = SBStringForPeekConfiguration(self->_peekConfiguration);
    [v4 appendString:v26 withName:@"peekConfiguration"];
  }

  bundleIdentifierForAppExpose = self->_bundleIdentifierForAppExpose;
  if (bundleIdentifierForAppExpose)
  {
    [v4 appendString:bundleIdentifierForAppExpose withName:@"bundleIdentifierForAppExpose"];
  }

  v28 = [v4 appendBool:self->_settlesMultiAppFullScreenSpacesImmediately withName:@"settlesMultiAppFullScreenSpacesImmediately" ifEqualTo:1];
  v29 = [v4 appendBool:self->_sceneUpdatesOnly withName:@"sceneUpdatesOnly" ifEqualTo:1];
  v30 = [v4 appendBool:self->_fenceSceneUpdate withName:@"fenceSceneUpdate" ifEqualTo:1];
  v31 = [v4 appendBool:self->_appLaunchDuringWindowDragGesture withName:@"appLaunchDuringWindowDragGesture" ifEqualTo:1];
  animationSettings = self->_animationSettings;
  if (animationSettings)
  {
    v33 = [v4 appendObject:animationSettings withName:@"animationSettings"];
  }

  v34 = [v4 appendBool:self->_retainsSiri withName:@"retainsSiri" ifEqualTo:1];
  v35 = [v4 appendBool:self->_prefersZoomDownAnimation withName:@"prefersZoomDownAnimation" ifEqualTo:1];
  v36 = [v4 appendObject:self->_minimizingDisplayItem withName:@"minimizingDisplayItem" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBSwitcherTransitionRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  v5 = [(SBSwitcherTransitionRequest *)self appLayout];
  [(SBSwitcherTransitionRequest *)v4 setAppLayout:v5];

  v6 = [(SBSwitcherTransitionRequest *)self activatingDisplayItem];
  [(SBSwitcherTransitionRequest *)v4 setActivatingDisplayItem:v6];

  [(SBSwitcherTransitionRequest *)v4 setAppLayoutEnvironment:[(SBSwitcherTransitionRequest *)self appLayoutEnvironment]];
  [(SBSwitcherTransitionRequest *)v4 setPreferredInterfaceOrientation:[(SBSwitcherTransitionRequest *)self preferredInterfaceOrientation]];
  [(SBSwitcherTransitionRequest *)v4 setUnlockedEnvironmentMode:[(SBSwitcherTransitionRequest *)self unlockedEnvironmentMode]];
  [(SBSwitcherTransitionRequest *)v4 setFloatingConfiguration:[(SBSwitcherTransitionRequest *)self floatingConfiguration]];
  v7 = [(SBSwitcherTransitionRequest *)self displayItemLayoutAttributesMap];
  [(SBSwitcherTransitionRequest *)v4 setDisplayItemLayoutAttributesMap:v7];

  [(SBSwitcherTransitionRequest *)v4 setFloatingSwitcherVisible:[(SBSwitcherTransitionRequest *)self floatingSwitcherVisible]];
  [(SBSwitcherTransitionRequest *)v4 setAnimationDisabled:[(SBSwitcherTransitionRequest *)self animationDisabled]];
  [(SBSwitcherTransitionRequest *)v4 setAutoPIPDisabled:[(SBSwitcherTransitionRequest *)self autoPIPDisabled]];
  [(SBSwitcherTransitionRequest *)v4 setSource:[(SBSwitcherTransitionRequest *)self source]];
  [(SBSwitcherTransitionRequest *)v4 setPeekConfiguration:[(SBSwitcherTransitionRequest *)self peekConfiguration]];
  v8 = [(SBSwitcherTransitionRequest *)self bundleIdentifierForAppExpose];
  [(SBSwitcherTransitionRequest *)v4 setBundleIdentifierForAppExpose:v8];

  [(SBSwitcherTransitionRequest *)v4 setEntityInsertionPolicy:[(SBSwitcherTransitionRequest *)self entityInsertionPolicy]];
  [(SBSwitcherTransitionRequest *)v4 setSceneUpdatesOnly:[(SBSwitcherTransitionRequest *)self sceneUpdatesOnly]];
  [(SBSwitcherTransitionRequest *)v4 setFenceSceneUpdate:[(SBSwitcherTransitionRequest *)self fenceSceneUpdate]];
  [(SBSwitcherTransitionRequest *)v4 setPreventSwitcherRecencyModelUpdates:[(SBSwitcherTransitionRequest *)self preventSwitcherRecencyModelUpdates]];
  v9 = [(SBSwitcherTransitionRequest *)self animationSettings];
  [(SBSwitcherTransitionRequest *)v4 setAnimationSettings:v9];

  [(SBSwitcherTransitionRequest *)v4 setAppLaunchDuringWindowDragGesture:[(SBSwitcherTransitionRequest *)self isAppLaunchDuringWindowDragGesture]];
  [(SBSwitcherTransitionRequest *)v4 setRetainsSiri:[(SBSwitcherTransitionRequest *)self retainsSiri]];
  v10 = [(SBSwitcherTransitionRequest *)self displayConfiguration];
  [(SBSwitcherTransitionRequest *)v4 setDisplayConfiguration:v10];

  [(SBSwitcherTransitionRequest *)v4 setSettlesMultiAppFullScreenSpacesImmediately:[(SBSwitcherTransitionRequest *)self settlesMultiAppFullScreenSpacesImmediately]];
  v11 = [(SBSwitcherTransitionRequest *)self minimizingDisplayItem];
  [(SBSwitcherTransitionRequest *)v4 setMinimizingDisplayItem:v11];

  [(SBSwitcherTransitionRequest *)v4 setPrefersZoomDownAnimation:[(SBSwitcherTransitionRequest *)self prefersZoomDownAnimation]];
  return v4;
}

@end