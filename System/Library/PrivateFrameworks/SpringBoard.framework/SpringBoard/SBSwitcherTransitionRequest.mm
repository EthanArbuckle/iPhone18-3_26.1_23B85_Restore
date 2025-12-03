@interface SBSwitcherTransitionRequest
+ (id)requestForActivatingAppLayout:(id)layout;
+ (id)requestForActivatingAppSwitcher;
+ (id)requestForActivatingFloatingSwitcher;
+ (id)requestForActivatingHomeScreen;
+ (id)requestForDeactivatingFloatingSwitcher;
+ (id)requestForStashingFloatingApplicationWithFloatingConfiguration:(int64_t)configuration;
+ (id)requestForTapAppLayoutEvent:(id)event;
+ (id)requestForTapAppLayoutHeaderEvent:(id)event;
- (SBSwitcherTransitionRequest)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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

+ (id)requestForActivatingAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = objc_alloc_init(self);
  [v5 setAppLayout:layoutCopy];

  return v5;
}

+ (id)requestForActivatingHomeScreen
{
  v2 = objc_alloc_init(self);
  v3 = +[SBAppLayout homeScreenAppLayout];
  [v2 setAppLayout:v3];

  return v2;
}

+ (id)requestForActivatingAppSwitcher
{
  v2 = objc_alloc_init(self);
  [v2 setUnlockedEnvironmentMode:2];

  return v2;
}

+ (id)requestForActivatingFloatingSwitcher
{
  v2 = objc_alloc_init(self);
  [v2 setFloatingSwitcherVisible:1];

  return v2;
}

+ (id)requestForDeactivatingFloatingSwitcher
{
  v2 = objc_alloc_init(self);
  [v2 setFloatingSwitcherVisible:0];

  return v2;
}

+ (id)requestForStashingFloatingApplicationWithFloatingConfiguration:(int64_t)configuration
{
  v4 = objc_alloc_init(self);
  [v4 setFloatingConfiguration:configuration];

  return v4;
}

+ (id)requestForTapAppLayoutEvent:(id)event
{
  eventCopy = event;
  appLayout = [eventCopy appLayout];
  layoutRole = [eventCopy layoutRole];
  v7 = objc_alloc_init(self);
  [v7 setAppLayout:appLayout];
  v8 = [appLayout itemForLayoutRole:layoutRole];
  [v7 setActivatingDisplayItem:v8];

  source = [eventCopy source];
  if (source == 1)
  {
    [v7 setSource:51];
  }

  return v7;
}

+ (id)requestForTapAppLayoutHeaderEvent:(id)event
{
  eventCopy = event;
  appLayout = [eventCopy appLayout];
  layoutRole = [eventCopy layoutRole];

  v7 = objc_alloc_init(self);
  [v7 setAppLayout:appLayout];
  v8 = [appLayout itemForLayoutRole:layoutRole];
  [v7 setActivatingDisplayItem:v8];

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherTransitionRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSwitcherTransitionRequest *)self succinctDescriptionBuilder];
  unlockedEnvironmentMode = self->_unlockedEnvironmentMode;
  if (unlockedEnvironmentMode)
  {
    v6 = SBStringForUnlockedEnvironmentMode(unlockedEnvironmentMode);
    [succinctDescriptionBuilder appendString:v6 withName:@"environmentMode"];
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
  [succinctDescriptionBuilder appendString:v8 withName:@"preferredOrientation"];
LABEL_15:
  floatingConfiguration = self->_floatingConfiguration;
  if (floatingConfiguration)
  {
    v10 = SBStringForFloatingConfiguration(floatingConfiguration);
    [succinctDescriptionBuilder appendString:v10 withName:@"floatingConfiguration"];
  }

  displayItemLayoutAttributesMap = self->_displayItemLayoutAttributesMap;
  if (displayItemLayoutAttributesMap)
  {
    v12 = [(NSDictionary *)displayItemLayoutAttributesMap description];
    [succinctDescriptionBuilder appendString:v12 withName:@"displayItemLayoutAttributesMap"];
  }

  if (self->_floatingSwitcherVisible != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = BSSettingFlagDescription();
    [succinctDescriptionBuilder appendString:v13 withName:@"floatingSwitcherVisible"];
  }

  if (self->_animationDisabled != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = BSSettingFlagDescription();
    [succinctDescriptionBuilder appendString:v14 withName:@"animationDisabled"];
  }

  if (self->_autoPIPDisabled != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = BSSettingFlagDescription();
    [succinctDescriptionBuilder appendString:v15 withName:@"autoPIPDisabled"];
  }

  appLayout = self->_appLayout;
  if (appLayout)
  {
    succinctDescription = [(SBAppLayout *)appLayout succinctDescription];
    v18 = [succinctDescriptionBuilder appendObject:succinctDescription withName:@"appLayout"];
  }

  activatingDisplayItem = self->_activatingDisplayItem;
  if (activatingDisplayItem)
  {
    succinctDescription2 = [(SBDisplayItem *)activatingDisplayItem succinctDescription];
    v21 = [succinctDescriptionBuilder appendObject:succinctDescription2 withName:@"activatingDisplayItem"];
  }

  appLayoutEnvironment = self->_appLayoutEnvironment;
  if (appLayoutEnvironment)
  {
    v23 = SBStringForAppLayoutEnvironment(appLayoutEnvironment);
    [succinctDescriptionBuilder appendString:v23 withName:@"appLayoutEnvironment"];
  }

  source = self->_source;
  if (source)
  {
    v25 = SBMainWorkspaceTransitionSourceDescription(source);
    [succinctDescriptionBuilder appendString:v25 withName:@"source"];
  }

  if (SBPeekConfigurationIsValid(self->_peekConfiguration))
  {
    v26 = SBStringForPeekConfiguration(self->_peekConfiguration);
    [succinctDescriptionBuilder appendString:v26 withName:@"peekConfiguration"];
  }

  bundleIdentifierForAppExpose = self->_bundleIdentifierForAppExpose;
  if (bundleIdentifierForAppExpose)
  {
    [succinctDescriptionBuilder appendString:bundleIdentifierForAppExpose withName:@"bundleIdentifierForAppExpose"];
  }

  v28 = [succinctDescriptionBuilder appendBool:self->_settlesMultiAppFullScreenSpacesImmediately withName:@"settlesMultiAppFullScreenSpacesImmediately" ifEqualTo:1];
  v29 = [succinctDescriptionBuilder appendBool:self->_sceneUpdatesOnly withName:@"sceneUpdatesOnly" ifEqualTo:1];
  v30 = [succinctDescriptionBuilder appendBool:self->_fenceSceneUpdate withName:@"fenceSceneUpdate" ifEqualTo:1];
  v31 = [succinctDescriptionBuilder appendBool:self->_appLaunchDuringWindowDragGesture withName:@"appLaunchDuringWindowDragGesture" ifEqualTo:1];
  animationSettings = self->_animationSettings;
  if (animationSettings)
  {
    v33 = [succinctDescriptionBuilder appendObject:animationSettings withName:@"animationSettings"];
  }

  v34 = [succinctDescriptionBuilder appendBool:self->_retainsSiri withName:@"retainsSiri" ifEqualTo:1];
  v35 = [succinctDescriptionBuilder appendBool:self->_prefersZoomDownAnimation withName:@"prefersZoomDownAnimation" ifEqualTo:1];
  v36 = [succinctDescriptionBuilder appendObject:self->_minimizingDisplayItem withName:@"minimizingDisplayItem" skipIfNil:1];

  return succinctDescriptionBuilder;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherTransitionRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  appLayout = [(SBSwitcherTransitionRequest *)self appLayout];
  [(SBSwitcherTransitionRequest *)v4 setAppLayout:appLayout];

  activatingDisplayItem = [(SBSwitcherTransitionRequest *)self activatingDisplayItem];
  [(SBSwitcherTransitionRequest *)v4 setActivatingDisplayItem:activatingDisplayItem];

  [(SBSwitcherTransitionRequest *)v4 setAppLayoutEnvironment:[(SBSwitcherTransitionRequest *)self appLayoutEnvironment]];
  [(SBSwitcherTransitionRequest *)v4 setPreferredInterfaceOrientation:[(SBSwitcherTransitionRequest *)self preferredInterfaceOrientation]];
  [(SBSwitcherTransitionRequest *)v4 setUnlockedEnvironmentMode:[(SBSwitcherTransitionRequest *)self unlockedEnvironmentMode]];
  [(SBSwitcherTransitionRequest *)v4 setFloatingConfiguration:[(SBSwitcherTransitionRequest *)self floatingConfiguration]];
  displayItemLayoutAttributesMap = [(SBSwitcherTransitionRequest *)self displayItemLayoutAttributesMap];
  [(SBSwitcherTransitionRequest *)v4 setDisplayItemLayoutAttributesMap:displayItemLayoutAttributesMap];

  [(SBSwitcherTransitionRequest *)v4 setFloatingSwitcherVisible:[(SBSwitcherTransitionRequest *)self floatingSwitcherVisible]];
  [(SBSwitcherTransitionRequest *)v4 setAnimationDisabled:[(SBSwitcherTransitionRequest *)self animationDisabled]];
  [(SBSwitcherTransitionRequest *)v4 setAutoPIPDisabled:[(SBSwitcherTransitionRequest *)self autoPIPDisabled]];
  [(SBSwitcherTransitionRequest *)v4 setSource:[(SBSwitcherTransitionRequest *)self source]];
  [(SBSwitcherTransitionRequest *)v4 setPeekConfiguration:[(SBSwitcherTransitionRequest *)self peekConfiguration]];
  bundleIdentifierForAppExpose = [(SBSwitcherTransitionRequest *)self bundleIdentifierForAppExpose];
  [(SBSwitcherTransitionRequest *)v4 setBundleIdentifierForAppExpose:bundleIdentifierForAppExpose];

  [(SBSwitcherTransitionRequest *)v4 setEntityInsertionPolicy:[(SBSwitcherTransitionRequest *)self entityInsertionPolicy]];
  [(SBSwitcherTransitionRequest *)v4 setSceneUpdatesOnly:[(SBSwitcherTransitionRequest *)self sceneUpdatesOnly]];
  [(SBSwitcherTransitionRequest *)v4 setFenceSceneUpdate:[(SBSwitcherTransitionRequest *)self fenceSceneUpdate]];
  [(SBSwitcherTransitionRequest *)v4 setPreventSwitcherRecencyModelUpdates:[(SBSwitcherTransitionRequest *)self preventSwitcherRecencyModelUpdates]];
  animationSettings = [(SBSwitcherTransitionRequest *)self animationSettings];
  [(SBSwitcherTransitionRequest *)v4 setAnimationSettings:animationSettings];

  [(SBSwitcherTransitionRequest *)v4 setAppLaunchDuringWindowDragGesture:[(SBSwitcherTransitionRequest *)self isAppLaunchDuringWindowDragGesture]];
  [(SBSwitcherTransitionRequest *)v4 setRetainsSiri:[(SBSwitcherTransitionRequest *)self retainsSiri]];
  displayConfiguration = [(SBSwitcherTransitionRequest *)self displayConfiguration];
  [(SBSwitcherTransitionRequest *)v4 setDisplayConfiguration:displayConfiguration];

  [(SBSwitcherTransitionRequest *)v4 setSettlesMultiAppFullScreenSpacesImmediately:[(SBSwitcherTransitionRequest *)self settlesMultiAppFullScreenSpacesImmediately]];
  minimizingDisplayItem = [(SBSwitcherTransitionRequest *)self minimizingDisplayItem];
  [(SBSwitcherTransitionRequest *)v4 setMinimizingDisplayItem:minimizingDisplayItem];

  [(SBSwitcherTransitionRequest *)v4 setPrefersZoomDownAnimation:[(SBSwitcherTransitionRequest *)self prefersZoomDownAnimation]];
  return v4;
}

@end