@interface UIScreen
+ (BOOL)_isProbablyBeingRecorded;
+ (BOOL)_shouldDisableJail;
+ (CGAffineTransform)transformForScreenOriginRotation:(SEL)rotation;
+ (CGAffineTransform)transformToRotateScreen:(SEL)screen;
+ (CGPoint)convertPoint:(CGPoint)point fromView:(id)view;
+ (CGPoint)convertPoint:(CGPoint)point toView:(id)view;
+ (CGRect)convertRect:(CGRect)rect fromView:(id)view;
+ (CGRect)convertRect:(CGRect)rect toView:(id)view;
+ (UIScreen)mainScreen;
+ (id)__displayConfigurationsForViewService;
+ (id)_carScreen;
+ (id)_embeddedScreen;
+ (id)_mainScreenThreadSafeTraitCollection;
+ (id)_screenForScene:(id)scene;
+ (id)_screenWithDisplayName:(id)name;
+ (id)_screenWithEventDisplay:(id)display;
+ (id)_screenWithFBSDisplayIdentity:(id)identity;
+ (id)_screenWithIntegerDisplayID:(unsigned int)d;
+ (id)_screens;
+ (id)_shortScreensDescription;
+ (uint64_t)_mainScreen;
+ (void)_FBSDisplayConfigurationConnected:(id)connected forInitialDisplayContext:(id)context andNotify:(BOOL)notify forceMain:(BOOL)main;
+ (void)_FBSDisplayDidPossiblyConnect:(id)connect withScene:(id)scene andPost:(BOOL)post;
+ (void)_FBSDisplayDidPossiblyDisconnect:(id)disconnect;
+ (void)_FBSDisplayDidPossiblyDisconnect:(id)disconnect forSceneDestruction:(id)destruction;
+ (void)_FBSDisplayIdentityDisconnected:(id)disconnected;
+ (void)_enumerateScreensWithBlock:(id)block;
+ (void)_prepareScreensForAppResume;
+ (void)initialize;
- (BOOL)_expectsSecureRendering;
- (BOOL)_hasWindows;
- (BOOL)_isCarInstrumentsScreen;
- (BOOL)_isCarPlayNightModeEnabled;
- (BOOL)_isCarScreen;
- (BOOL)_isEmbeddedScreen;
- (BOOL)_isExternal;
- (BOOL)_isForceTouchCapable;
- (BOOL)_isMainLikeScreen;
- (BOOL)_isMainScreen;
- (BOOL)_isOverscanned;
- (BOOL)_isRightHandDrive;
- (BOOL)_isUserInterfaceLimited:(unint64_t)limited;
- (BOOL)_isWorkspaceCapable;
- (BOOL)_supportsDragging;
- (BOOL)_wantsWideContentMargins;
- (BOOL)supportsFocus;
- (CADisplayLink)displayLinkWithTarget:(id)target selector:(SEL)sel;
- (CFTimeInterval)calibratedLatency;
- (CGFloat)brightness;
- (CGFloat)currentEDRHeadroom;
- (CGFloat)nativeScale;
- (CGFloat)potentialEDRHeadroom;
- (CGFloat)scale;
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)_applicationFrame;
- (CGRect)_applicationFrameForInterfaceOrientation:(int64_t)orientation;
- (CGRect)_applicationFrameForInterfaceOrientation:(int64_t)orientation usingStatusbarHeight:(double)height;
- (CGRect)_applicationFrameForInterfaceOrientation:(int64_t)orientation usingStatusbarHeight:(double)height ignoreStatusBar:(BOOL)bar;
- (CGRect)_applicationFrameWithoutOverscanForInterfaceOrientation:(int64_t)orientation usingStatusbarHeight:(double)height ignoreStatusBar:(BOOL)bar;
- (CGRect)_boundsForInterfaceOrientation:(int64_t)orientation;
- (CGRect)_interfaceOrientedMainSceneBounds;
- (CGRect)_mainSceneBoundsForInterfaceOrientation:(int64_t)orientation;
- (CGRect)_mainSceneFrame;
- (CGRect)_mainSceneReferenceBounds;
- (CGRect)_nativeDisplayBounds;
- (CGRect)_referenceBounds;
- (CGRect)_unjailedReferenceBounds;
- (CGRect)_unjailedReferenceBoundsForInterfaceOrientation:(int64_t)orientation;
- (CGRect)_unjailedReferenceBoundsInPixels;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect fromMaskingCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toMaskingCoordinateSpace:(id)space;
- (FBSDisplayConfiguration)displayConfiguration;
- (NSArray)availableModes;
- (NSArray)preferredFocusEnvironments;
- (NSInteger)maximumFramesPerSecond;
- (UIEdgeInsets)_displayPeripheryInsets;
- (UIEdgeInsets)_peripheryInsets;
- (UIEdgeInsets)overscanCompensationInsets;
- (UIFocusItemContainer)focusItemContainer;
- (UIFocusSystem)_focusSystem;
- (UIScreen)initWithDisplayConfiguration:(id)configuration;
- (UIScreen)initWithDisplayConfiguration:(id)configuration forceMainScreen:(BOOL)screen;
- (UIScreen)mirroredScreen;
- (UIScreenMode)currentMode;
- (UIScreenMode)preferredMode;
- (UIScreenOverscanCompensation)overscanCompensation;
- (UITraitCollection)traitCollection;
- (UIView)focusedView;
- (UIWindow)_preferredFocusedWindow;
- (_UIDragManager)_dragManager;
- (_UIInteractiveHighlightEnvironment)_interactiveHighlightEnvironment;
- (_UIScreenBoundingPathUtilities)_boundingPathUtilities;
- (_UITypedStorage)_typedStorage;
- (double)_displayCornerRadius;
- (double)_displayCornerRadiusIgnoringZoom;
- (double)_nativeScaleWithLevel:(unint64_t)level;
- (double)_refreshRate;
- (double)_rotation;
- (double)_touchRadiusScaleFactor;
- (double)resolvedCornerRadiusForDescedant:(id)descedant context:(id)context corner:(unint64_t)corner;
- (float)rawBrightnessForBacklightLevel:(float)level;
- (id)_appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:(void *)needed;
- (id)_capabilities;
- (id)_capabilityForKey:(id)key;
- (id)_defaultTraitCollectionForInterfaceOrientation:(int64_t)orientation;
- (id)_defaultTraitCollectionForInterfaceOrientation:(int64_t)orientation inBounds:(CGRect)bounds;
- (id)_display;
- (id)_displayID;
- (id)_displayInfoProvider;
- (id)_eventDisplay;
- (id)_exclusionArea;
- (id)_lazySoftwareDimmingWindow;
- (id)_name;
- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix;
- (id)_preferredFocusedWindowScene;
- (id)_preventDisconnectionForReason:(uint64_t)reason;
- (id)_snapshotDisplaySystemIdentifier;
- (id)_snapshotExcludingWindows:(id)windows withRect:(CGRect)rect;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayIdentity;
- (id)fbsDisplay;
- (id)fixedCoordinateSpace;
- (id)focusItemsInRect:(CGRect)rect;
- (id)focusedItem;
- (id)registerDescendant:(id)descendant forGeometryOrMaskingConfigurationChanges:(id)changes;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_effectiveUserInterfaceStyle;
- (int64_t)_forceTouchCapability;
- (int64_t)_imageOrientation;
- (int64_t)_maximumFramesPerSecond;
- (int64_t)_screenType;
- (unsigned)_integerDisplayID;
- (unsigned)_seed;
- (void)_applyDefaultViewMaskingTraits:(id)traits;
- (void)_beginObservingBacklightLevelNotifications;
- (void)_computeMetrics:(BOOL)metrics;
- (void)_connectScreen;
- (void)_disconnectScreen;
- (void)_endObservingBacklightLevelNotifications;
- (void)_ensureComputedMainScreenDPI;
- (void)_evaluateCapturedStateForReason:(void *)reason;
- (void)_externalDeviceNightModeDidChange:(id)change;
- (void)_fetchInitialCarPlayHumanPresenceStatusIfNeeded;
- (void)_invalidate;
- (void)_limitedUIDidChange:(id)change;
- (void)_notifyTraitsChangedAndPropagate;
- (void)_postBrightnessDidChangeNotificationIfAppropriate;
- (void)_prepareForWindow;
- (void)_resetUserInterfaceIdiom;
- (void)_setCapability:(id)capability forKey:(id)key;
- (void)_setCarPlayHumanPresenceInRange:(BOOL)range;
- (void)_setDefaultTraitCollection:(id)collection;
- (void)_setExternalDeviceShouldInputText:(BOOL)text;
- (void)_setInterfaceOrientation:(int64_t)orientation andNotify:(BOOL)notify;
- (void)_setNeedsNonDeferredFocusUpdate;
- (void)_setOverrideTraitCollection:(id)collection;
- (void)_setReferenceDisplayModeStatus:(int64_t)status;
- (void)_setUserInterfaceIdiom:(int64_t)idiom;
- (void)_setUserInterfaceStyleIfNecessary:(int64_t)necessary firstTimeOnly:(BOOL)only;
- (void)_updateAvailableDisplayModes;
- (void)_updateCapabilities;
- (void)_updateCarPlayCapabilitiesWithInteractionModels:(unint64_t)models primaryInteractionModel:(unint64_t)model touchLevel:(int64_t)level;
- (void)_updateCornerProviderWithTraitCollection:(id)collection;
- (void)_updateDisplayConfiguration:(id)configuration;
- (void)_updateTraits;
- (void)_updateTraitsForWindowScenesCallingParentWillTransition:(BOOL)transition;
- (void)_updateUserInterfaceIdiom;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setBrightness:(CGFloat)brightness;
- (void)setCurrentMode:(UIScreenMode *)currentMode;
- (void)setFocusEnabled:(BOOL)enabled;
- (void)setNeedsFocusUpdate;
- (void)setOverscanCompensation:(UIScreenOverscanCompensation)overscanCompensation;
- (void)updateFocusIfNeeded;
@end

@implementation UIScreen

- (id)displayIdentity
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  identity = [(FBSDisplayConfiguration *)v3 identity];

  return identity;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);

  return v3;
}

void __22__UIScreen_mainScreen__block_invoke(uint64_t a1)
{
  if (qword_1ED49AB80 != -1)
  {
    dispatch_once(&qword_1ED49AB80, &__block_literal_global_926);
  }

  v5 = qword_1ED49AB88;
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (UIScreen)mainScreen
{
  if (qword_1ED49AB00)
  {
    v2 = qword_1ED49AB00;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__115;
    v17 = __Block_byref_object_dispose__115;
    v18 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __22__UIScreen_mainScreen__block_invoke;
    v11 = &unk_1E70F2F20;
    v12 = &v13;
    v5 = v9;
    os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
    v10(v5);

    os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
    if (!v14[5])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIScreen.m" lineNumber:763 description:@"returning nil screen from mainScreen is not allowed!"];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScreen.m" lineNumber:764 description:{@"firstObject in screens array (%@) is not a UIScreen object", v14[5]}];
    }

    v2 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return v2;
}

- (CGRect)_nativeDisplayBounds
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v5 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  [(FBSDisplayConfiguration *)v5 pixelSize];
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v4;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGFloat)scale
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FakeMainScreen, @"FakeMainScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1EC && self->_isFakeScreen)
  {
    v3 = _UIInternalPreferenceUsesDefault(&unk_1ED48B228, @"FakeMainScreenScale", _UIInternalPreferenceUpdateInteger);
    result = qword_1ED48B230;
    if (v3)
    {
      return 2.0;
    }
  }

  else if ([(UIScreen *)self _isMainScreen])
  {
    return _UIScreenForcedMainScreenScale(1);
  }

  else
  {
    return self->_scale;
  }

  return result;
}

- (BOOL)_isMainScreen
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (v3)
  {
    identity = [(FBSDisplayConfiguration *)v3 identity];
    v5 = identity;
    if (self->_mainScreen)
    {
      rootIdentity = [identity rootIdentity];
      v7 = rootIdentity == v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)fixedCoordinateSpace
{
  fixedCoordinateSpace = self->_fixedCoordinateSpace;
  if (!fixedCoordinateSpace)
  {
    v4 = objc_alloc_init(_UIScreenFixedCoordinateSpace);
    v5 = self->_fixedCoordinateSpace;
    self->_fixedCoordinateSpace = v4;

    [(_UIScreenFixedCoordinateSpace *)self->_fixedCoordinateSpace _setScreen:self];
    fixedCoordinateSpace = self->_fixedCoordinateSpace;
  }

  return fixedCoordinateSpace;
}

- (CGRect)bounds
{
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [(UIScreen *)self _boundsForInterfaceOrientation:[(UIScreen *)self _interfaceOrientation]];
  }

  else
  {
    x = self->_referenceBounds.origin.x;
    y = self->_referenceBounds.origin.y;
    width = self->_referenceBounds.size.width;
    height = self->_referenceBounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)_isExternal
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (v3)
  {
    isExternal = [(FBSDisplayConfiguration *)v3 isExternal];
  }

  else
  {
    isExternal = 1;
  }

  return isExternal;
}

- (BOOL)_wantsWideContentMargins
{
  mainScreen = [objc_opt_self() mainScreen];
  v4 = mainScreen;
  if (mainScreen != self)
  {

LABEL_7:
    LOBYTE(v8) = 0;
    return v8;
  }

  v5 = dyld_program_sdk_at_least();

  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  screenFlags = self->_screenFlags;
  if ((*&screenFlags & 0x800) == 0)
  {
    if (_UIDeviceNativeUserInterfaceIdiom())
    {
      MGGetBoolAnswer();
      v7 = 2048;
    }

    else
    {
      v9 = MGGetBoolAnswer();
      v10 = MGGetBoolAnswer();
      v7 = 2048;
      if (v9 && v10)
      {
        if (self->_referenceBounds.size.width <= 375.0)
        {
          v7 = 2048;
        }

        else
        {
          v7 = 3072;
        }
      }
    }

    screenFlags = (*&self->_screenFlags & 0xFFFFF3FF | v7);
    self->_screenFlags = screenFlags;
  }

  return (*&screenFlags >> 10) & 1;
}

- (BOOL)_isEmbeddedScreen
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FakeMainScreen, @"FakeMainScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1EC && self->_isFakeScreen || !self->_mainScreen)
  {
    return 0;
  }

  else
  {
    return ![(UIScreen *)self _isExternal];
  }
}

- (CGRect)_referenceBounds
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_displayCornerRadiusIgnoringZoom
{
  _screenType = [(UIScreen *)self _screenType];
  if (_screenType == -1)
  {

    [(UIScreen *)self _displayCornerRadius];
  }

  else
  {

    return _UIScreenCornerRadiusForTypeIgnoringZoom(_screenType);
  }

  return result;
}

- (id)_exclusionArea
{
  _displayInfoProvider = [(UIScreen *)self _displayInfoProvider];
  exclusionArea = [_displayInfoProvider exclusionArea];

  return exclusionArea;
}

- (id)_displayInfoProvider
{
  displayInfoProvider = self->_displayInfoProvider;
  if (!displayInfoProvider)
  {
    if (UIApplicationSceneClassicModeWantsSafeAreaInsets(+[UIApplication _classicMode]))
    {
      [UIApp isFrontBoard];
      if (![(UIScreen *)self _UIIBAlwaysProvidePeripheryInsets]&& ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceIOSDeviceInsets, @"ForceIOSDeviceInsets", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48A8BC))
      {
        v8 = +[_UIScreenInitialDisplayConfigurationLoader sharedLoader];
        initialDisplayContext = [v8 initialDisplayContext];

        displayEdgeInfo = [initialDisplayContext displayEdgeInfo];
        exclusionArea = [initialDisplayContext exclusionArea];

        if (displayEdgeInfo)
        {
          goto LABEL_16;
        }

LABEL_10:
        v6 = _UIDisplayInfoNullProvider();
        displayEdgeInfo = self->_displayInfoProvider;
        self->_displayInfoProvider = v6;
LABEL_11:

        displayInfoProvider = self->_displayInfoProvider;
        goto LABEL_12;
      }

      if ([(UIScreen *)self _isEmbeddedScreen])
      {
        displayEdgeInfo = [MEMORY[0x1E69DEBC0] defaultDisplayEdgeInfoForceInsets:{(byte_1ED48A8BC != 0) & ~_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceIOSDeviceInsets, @"ForceIOSDeviceInsets", _UIInternalPreferenceUpdateBool)}];
        exclusionArea = 0;
        if (!displayEdgeInfo)
        {
          goto LABEL_10;
        }

LABEL_16:
        v10 = objc_alloc(MEMORY[0x1E69DEBE8]);
        os_unfair_lock_lock(&unk_1ED49AAE8);
        v11 = self->__displayConfiguration;
        os_unfair_lock_unlock(&unk_1ED49AAE8);
        v12 = [v10 initWithDisplayConfiguration:v11 displayEdgeInfo:displayEdgeInfo exclusionArea:exclusionArea];
        v13 = self->_displayInfoProvider;
        self->_displayInfoProvider = v12;

        goto LABEL_11;
      }
    }

    exclusionArea = 0;
    goto LABEL_10;
  }

LABEL_12:

  return displayInfoProvider;
}

- (int64_t)_screenType
{
  result = self->_screenType;
  if (result == -1)
  {
    result = _UIScreenTypeForScreen(self);
    self->_screenType = result;
  }

  return result;
}

- (CGRect)_unjailedReferenceBounds
{
  x = self->_unjailedReferenceBounds.origin.x;
  y = self->_unjailedReferenceBounds.origin.y;
  width = self->_unjailedReferenceBounds.size.width;
  height = self->_unjailedReferenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)_isCarScreen
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  isCarDisplay = [(FBSDisplayConfiguration *)v3 isCarDisplay];

  return isCarDisplay;
}

- (UIScreenOverscanCompensation)overscanCompensation
{
  v28 = *MEMORY[0x1E69E9840];
  screenFlags = self->_screenFlags;
  if ((screenFlags & 0x80) != 0)
  {
    return (screenFlags >> 8) & 3;
  }

  os_unfair_lock_lock(&unk_1ED49AAE8);
  v4 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  v5 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:self];
  if (v5)
  {
    v6 = v5;
    goto LABEL_4;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [UIScene _scenesIncludingInternal:1];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {

LABEL_27:
    os_unfair_lock_lock(&unk_1ED49AAE8);
    v19 = self->__displayConfiguration;
    os_unfair_lock_unlock(&unk_1ED49AAE8);
    overscanCompensation = [(FBSDisplayConfiguration *)v19 overscanCompensation];

    v6 = 0;
    if (overscanCompensation)
    {
      v9 = (overscanCompensation == 2);
    }

    else
    {
      v9 = UIScreenOverscanCompensationNone;
    }

    goto LABEL_30;
  }

  v12 = v11;
  v22 = v4;
  v6 = 0;
  v13 = *v24;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v23 + 1) + 8 * i);
      if ([v15 _hostsWindows])
      {
        v16 = v15;
        _screen = [v16 _screen];
        if (_screen == self && [v16 _isConnecting])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            _screen = v6;
            v6 = v16;
            goto LABEL_20;
          }
        }

        else
        {
LABEL_20:
        }

        continue;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);

  v4 = v22;
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_4:
  _screenRequestedOverscanCompensation = [(UIScreen *)v6 _screenRequestedOverscanCompensation];
  v8 = _screenRequestedOverscanCompensation == 2;
  if (!_screenRequestedOverscanCompensation)
  {
    v8 = 2;
  }

  if (_screenRequestedOverscanCompensation == -1)
  {
    v9 = UIScreenOverscanCompensationNone;
  }

  else
  {
    v9 = v8;
  }

LABEL_30:

  return v9;
}

- (BOOL)_isOverscanned
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  isOverscanned = [(FBSDisplayConfiguration *)v3 isOverscanned];

  return isOverscanned;
}

- (UIEdgeInsets)overscanCompensationInsets
{
  v3 = 0.0;
  if ([(UIScreen *)self overscanCompensation])
  {
    _isOverscanned = [(UIScreen *)self _isOverscanned];
    v5 = 0.0;
    if (_isOverscanned)
    {
      [(UIScreen *)self _applicationFrameWithoutOverscanForInterfaceOrientation:[(UIScreen *)self _interfaceOrientation] usingStatusbarHeight:0 ignoreStatusBar:0.0];
      v7 = v6;
      v9 = v8;
      os_unfair_lock_lock(&unk_1ED49AAE8);
      v10 = self->__displayConfiguration;
      os_unfair_lock_unlock(&unk_1ED49AAE8);
      [(FBSDisplayConfiguration *)v10 safeOverscanRatio];
      v12 = v11;
      v14 = v13;

      v15 = ceil(v7 * v12);
      v16 = ceil(v9 * v14);
      v17 = vcvtpd_s64_f64(v7 * v12);
      if (v17 >= 0)
      {
        v18 = v17 & 1;
      }

      else
      {
        v18 = -(v17 & 1);
      }

      v19 = v18;
      v20 = vcvtpd_s64_f64(v9 * v14);
      v21 = v15 + v19;
      if (v20 >= 0)
      {
        v22 = v20 & 1;
      }

      else
      {
        v22 = -(v20 & 1);
      }

      v5 = (v7 - v21) * 0.5;
      v3 = (v9 - (v16 + v22)) * 0.5;
    }
  }

  else
  {
    v5 = 0.0;
  }

  v23 = v3;
  v24 = v3;
  v25 = v5;
  result.right = v25;
  result.bottom = v24;
  result.left = v5;
  result.top = v23;
  return result;
}

+ (id)_screens
{
  v0 = objc_opt_self();
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__UIScreen__screens__block_invoke;
  v4[3] = &unk_1E710CD40;
  v2 = v1;
  v5 = v2;
  [v0 _enumerateScreensWithBlock:v4];

  return v2;
}

- (UITraitCollection)traitCollection
{
  overrideTraitCollection = self->_overrideTraitCollection;
  if (!overrideTraitCollection)
  {
    overrideTraitCollection = self->_defaultTraitCollection;
  }

  return overrideTraitCollection;
}

+ (id)_mainScreenThreadSafeTraitCollection
{
  mainScreen = [objc_opt_self() mainScreen];
  os_unfair_lock_lock(&_UIMainScreenTraitCollectionLock);
  v3 = mainScreen[29];
  if (!v3)
  {
    v3 = mainScreen[28];
  }

  v4 = v3;
  os_unfair_lock_unlock(&_UIMainScreenTraitCollectionLock);

  return v4;
}

- (CGFloat)nativeScale
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FakeMainScreen, @"FakeMainScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1EC && self->_isFakeScreen)
  {
    v3 = _UIInternalPreferenceUsesDefault(&unk_1ED48B228, @"FakeMainScreenScale", _UIInternalPreferenceUpdateInteger);
    result = qword_1ED48B230;
    if (v3)
    {
      return 2.0;
    }
  }

  else
  {
    [(UIScreen *)self _nativeScaleWithLevel:2];
    v6 = v5;
    [(UIScreen *)self _isMainScreen];
    return v6;
  }

  return result;
}

- (BOOL)_isMainLikeScreen
{
  if (self->_mainScreen)
  {
    return 1;
  }

  os_unfair_lock_lock(&unk_1ED49AAE8);
  v4 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  isUIKitMainLike = [(FBSDisplayConfiguration *)v4 isUIKitMainLike];

  return isUIKitMainLike;
}

- (void)_connectScreen
{
  [(UIScreen *)self _updateUserInterfaceIdiom];
  [(UIScreen *)self _updateCapabilities];
  if ([(UIScreen *)self _isExternal]&& [(UIScreen *)self _isMainLikeScreen])
  {
    [(UIScreen *)self _setInterfaceOrientation:1 andNotify:0];
  }

  else
  {
    [(UIScreen *)self _updateTraits];
  }

  *&self->_screenFlags |= 0x20u;
}

- (void)_updateUserInterfaceIdiom
{
  if ([(UIScreen *)self _isMainLikeScreen])
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];
  }

  else if ([(UIScreen *)self _isCarScreen]|| [(UIScreen *)self _isCarInstrumentsScreen])
  {
    userInterfaceIdiom = 3;
  }

  else
  {
    userInterfaceIdiom = -1;
  }

  [(UIScreen *)self _setUserInterfaceIdiom:userInterfaceIdiom];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (qword_1ED49AB90 != -1)
    {
      dispatch_once(&qword_1ED49AB90, &__block_literal_global_928);
    }

    v2 = byte_1ED49AAE2;
    if (qword_1ED49AB98 != -1)
    {
      dispatch_once(&qword_1ED49AB98, &__block_literal_global_937_0);
    }

    v3 = byte_1ED49AAE3;
    v4 = +[_UIScreenInitialDisplayConfigurationLoader sharedLoader];
    initialDisplayContext = [v4 initialDisplayContext];

    if (initialDisplayContext)
    {
      if ((v2 & 1) == 0)
      {
        displayConfiguration = [initialDisplayContext displayConfiguration];
        [UIScreen _FBSDisplayConfigurationConnected:displayConfiguration forInitialDisplayContext:initialDisplayContext andNotify:0 forceMain:1];

        dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_164);
      }
    }

    else if (!v2 || v3)
    {
      v6 = [[UIScreen alloc] initWithDisplayConfiguration:0 forceMainScreen:1];
      _UIScreenAddScreen(v6, 1);
      [(UIScreen *)v6 _connectScreen];
    }
  }
}

- (void)_beginObservingBacklightLevelNotifications
{
  if ([(UIScreen *)self _isEmbeddedScreen])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _UIScreenBacklightLevelDidChangeCallback, @"UIBacklightLevelChangedNotification", 0, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = *MEMORY[0x1E69E4DD8];

    CFNotificationCenterAddObserver(v4, self, _UIScreenAccessibilityInvertColorsDidChangeCallback, v5, 0, 0);
  }
}

- (BOOL)_isCarInstrumentsScreen
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  isCarInstrumentsDisplay = [(FBSDisplayConfiguration *)v3 isCarInstrumentsDisplay];

  return isCarInstrumentsDisplay;
}

void __32__UIScreen__displayCornerRadius__block_invoke()
{
  v0 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_DisplayCornerRadiusOverride, @"DisplayCornerRadiusOverride", _UIInternalPreferenceUpdateDouble);
  v1 = qword_1ED48B1E0;
  if (v0)
  {
    *&v1 = -1.0;
  }

  _displayCornerRadius_embeddedDisplayCornerRadius = v1;
  if (*&v1 < 0.0)
  {
    v2 = +[_UIDeviceInitialDeviceConfigurationLoader sharedLoader];
    v3 = [v2 initialDeviceContext];
    v4 = v3;
    if (v3)
    {
      [v3 deviceInfoFloatValueForKey:*MEMORY[0x1E69DECB8]];
      _displayCornerRadius_embeddedDisplayCornerRadius = v5;
    }

    v1 = _displayCornerRadius_embeddedDisplayCornerRadius;
  }

  if (*&v1 < 0.0)
  {
    v6 = MGCopyAnswer();
    if (v6)
    {
      v9 = v6;
      [v6 floatValue];
      v6 = v9;
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    _displayCornerRadius_embeddedDisplayCornerRadius = *&v8;
  }
}

- (int64_t)_effectiveUserInterfaceStyle
{
  if (![(UIScreen *)self _isMainLikeScreen])
  {
    if ([(UIScreen *)self _isCarScreen])
    {
      if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B200, @"ApplySceneUserInterfaceStyleToCarScreen", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48B204)
      {
        if (!dyld_program_sdk_at_least())
        {
LABEL_16:
          if ([(UIScreen *)self _isCarPlayNightModeEnabled])
          {
            return 2;
          }

          else
          {
            return 1;
          }
        }

        configuration = [(CARSession *)self->_carSession configuration];
        userInterfaceStyle = [configuration userInterfaceStyle];

        if (userInterfaceStyle != 1)
        {
          if (userInterfaceStyle)
          {
            return 2;
          }

          goto LABEL_16;
        }

        return 1;
      }
    }

    else
    {
      if (![(UIScreen *)self _isCarInstrumentsScreen])
      {
        return 1;
      }

      v6 = _UIInternalPreferenceUsesDefault(&dword_1ED48B200, @"ApplySceneUserInterfaceStyleToCarScreen", _UIInternalPreferenceUpdateBool);
      result = 2;
      if ((v6 & 1) != 0 || !byte_1ED48B204)
      {
        return result;
      }
    }

    if (self->_lastUpdatedSceneUserInterfaceStyle)
    {
      return self->_lastUpdatedSceneUserInterfaceStyle;
    }

    else
    {
      return 2;
    }
  }

  result = [UIApp _effectiveUserInterfaceStyle];
  if (!result && ((_UIInternalPreferenceUsesDefault(&dword_1ED48B1F8, @"ApplySceneUserInterfaceStyleToScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1ED48B1FC || (result = self->_lastUpdatedSceneUserInterfaceStyle) == 0))
  {
    result = [(UISDisplayContext *)self->_initialDisplayContext userInterfaceStyle];
    if (!result)
    {
      if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B1F8, @"ApplySceneUserInterfaceStyleToScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1ED48B1FC)
      {
        return 0;
      }

      if ([UIApp isFrontBoard])
      {
        v7 = +[UIUserInterfaceStyleArbiter sharedInstance];
        if (v7)
        {
          v8 = v7;
          currentStyle = [v7 currentStyle];

          return currentStyle;
        }
      }

      return 1;
    }
  }

  return result;
}

- (void)_updateCapabilities
{
  v54[2] = *MEMORY[0x1E69E9840];
  if ([(UIScreen *)self _isMainLikeScreen])
  {
    v3 = +[UIDevice currentDevice];
    if ([v3 userInterfaceIdiom] == 2)
    {
    }

    else
    {
      v21 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v21 userInterfaceIdiom];

      if (userInterfaceIdiom != 8)
      {
        v51[0] = @"UIScreenCapabilityInteractionModelsKey";
        v51[1] = @"UIScreenCapabilityTouchLevelsKey";
        v52[0] = &unk_1EFE30C28;
        v52[1] = &unk_1EFE30C10;
        v23 = MEMORY[0x1E695DF20];
        v24 = v52;
        v25 = v51;
        goto LABEL_23;
      }
    }

    v53[0] = @"UIScreenCapabilityInteractionModelsKey";
    v53[1] = @"UIScreenCapabilityTouchLevelsKey";
    v54[0] = &unk_1EFE30BF8;
    v54[1] = &unk_1EFE30C10;
    v23 = MEMORY[0x1E695DF20];
    v24 = v54;
    v25 = v53;
LABEL_23:
    v27 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
    goto LABEL_43;
  }

  if ([(UIScreen *)self _isCarScreen]|| [(UIScreen *)self _isCarInstrumentsScreen])
  {
    configuration = [(CARSession *)self->_carSession configuration];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    screens = [configuration screens];
    v6 = [screens countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(screens);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          identifier = [v10 identifier];
          _displayID = [(UIScreen *)self _displayID];
          v13 = [identifier isEqualToString:_displayID];

          if (v13)
          {
            availableInteractionModels = [v10 availableInteractionModels];
            v18 = (availableInteractionModels >> 1) & 2 | availableInteractionModels & 8;
            if ((availableInteractionModels & 2) != 0)
            {
              v18 |= 1uLL;
              v20 = [v10 supportsHighFidelityTouch] ^ 1;
            }

            else
            {
              v20 = 2;
            }

            primaryInteractionModel = [v10 primaryInteractionModel];
            v29 = 8;
            if ((primaryInteractionModel & 8) == 0)
            {
              v29 = (primaryInteractionModel >> 1) & 1;
            }

            if ((primaryInteractionModel & 4) != 0)
            {
              v19 = 2;
            }

            else
            {
              v19 = v29;
            }

            goto LABEL_31;
          }
        }

        v7 = [screens countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = *(__UILogGetCategoryCachedImpl("UIScreen", &_updateCapabilities___s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      _displayID2 = [(UIScreen *)self _displayID];
      screenIDs = [configuration screenIDs];
      *buf = 138543618;
      v47 = _displayID2;
      v48 = 2114;
      v49 = screenIDs;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Failed to find matching car screen. Expected: %{public}@; Found: %{public}@", buf, 0x16u);
    }

    v18 = 0;
    v19 = 0;
    v20 = -1;
LABEL_31:
    v30 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_CarPlayPrimaryInteractionModel, @"CarPlayPrimaryInteractionModel", _UIInternalPreferenceUpdateInteger);
    v31 = qword_1EA95E4D0;
    if (v30)
    {
      v31 = 0;
    }

    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v19;
    }

    v44[0] = @"UIScreenCapabilityInteractionModelsKey";
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
    v45[0] = v33;
    v44[1] = @"UIScreenCapabilityTouchLevelsKey";
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
    v45[1] = v34;
    v44[2] = @"UIScreenCapabilityPrimaryInteractionModelKey";
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
    v45[2] = v35;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

    if ([configuration rightHandDrive])
    {
      v36 = 0x2000;
    }

    else
    {
      v36 = 0;
    }

    self->_screenFlags = (*&self->_screenFlags & 0xFFFFDFFF | v36);
    nightMode = [(CARSession *)self->_carSession nightMode];
    if ([nightMode BOOLValue])
    {
      v38 = 0x4000;
    }

    else
    {
      v38 = 0;
    }

    self->_screenFlags = (*&self->_screenFlags & 0xFFFFBFFF | v38);
  }

  else
  {
    v27 = 0;
  }

LABEL_43:
  capabilities = self->_capabilities;
  self->_capabilities = v27;
}

- (void)_updateTraits
{
  v3 = [(UIScreen *)self _defaultTraitCollectionForInterfaceOrientation:[(UIScreen *)self _interfaceOrientation]];
  [(UIScreen *)self _setDefaultTraitCollection:v3];
}

- (id)_capabilities
{
  v2 = [(NSDictionary *)self->_capabilities copy];

  return v2;
}

- (int64_t)_forceTouchCapability
{
  if (![(UIScreen *)self _isForceTouchCapable])
  {
    return 1;
  }

  if (_AXSForceTouchEnabled())
  {
    return 2;
  }

  return 1;
}

- (BOOL)_isForceTouchCapable
{
  _isEmbeddedScreen = [(UIScreen *)self _isEmbeddedScreen];
  if (_isEmbeddedScreen)
  {
    v3 = +[UIDevice currentDevice];
    _supportsForceTouch = [v3 _supportsForceTouch];

    LOBYTE(_isEmbeddedScreen) = _supportsForceTouch;
  }

  return _isEmbeddedScreen;
}

- (double)_displayCornerRadius
{
  if ([(UIScreen *)self _isEmbeddedScreen])
  {
    if (_displayCornerRadius_onceToken != -1)
    {
      dispatch_once(&_displayCornerRadius_onceToken, &__block_literal_global_302);
    }

    return *&_displayCornerRadius_embeddedDisplayCornerRadius;
  }

  else
  {
    displayIdentity = [(UIScreen *)self displayIdentity];
    isUIKitMainLike = [displayIdentity isUIKitMainLike];

    result = 0.0;
    if (isUIKitMainLike)
    {
      return self->_sceneProvidedCornerRadius;
    }
  }

  return result;
}

- (void)_applyDefaultViewMaskingTraits:(id)traits
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188AC50F4();
  swift_unknownObjectRelease();
}

- (CGFloat)potentialEDRHeadroom
{
  displayIdentity = [(UIScreen *)self displayIdentity];
  v3 = displayIdentity;
  if (displayIdentity)
  {
    [displayIdentity displayID];
    CADisplayGetPotentialHeadroom();
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (void)_notifyTraitsChangedAndPropagate
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = self->_lastNotifiedTraitCollection;
  traitCollection = [(UIScreen *)self traitCollection];
  v5 = traitCollection;
  if (v3 != traitCollection && ![(UITraitCollection *)traitCollection isEqual:v3])
  {
    if ([(UIScreen *)self _isMainScreen])
    {
      [UITraitCollection _setBackgroundThreadFallbackTraitCollection:v5];
    }

    [(UIScreen *)self _setLastNotifiedTraitCollection:v5];
    v6 = objc_opt_self();
    v7 = _UIShouldLogTraitCollectionChangeForInstanceAndMethod(v6, self, sel_traitCollectionDidChange_);

    if (v7)
    {
      v10 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_notifyTraitsChangedAndPropagate___s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = NSStringFromSelector(sel_traitCollectionDidChange_);
        v13 = [UITraitCollection _descriptionForChangeFromTraitCollection:v3 toTraitCollection:v5];
        v14 = 138413314;
        v15 = v12;
        v16 = 2112;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v3;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Sending -%@ to %@\n\t► trait changes: %@\n\t► previous: %@\n\t► current: %@", &v14, 0x34u);
      }
    }

    [(UIScreen *)self traitCollectionDidChange:v3];
    [(UIScreen *)self _updateTraitsForWindowScenesCallingParentWillTransition:1];
    userInterfaceStyle = [(UITraitCollection *)v3 userInterfaceStyle];
    if (userInterfaceStyle != [(UITraitCollection *)v5 userInterfaceStyle])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIScreenUserInterfaceStyleDidChangeForSmartInvertNotification" object:self];
    }
  }
}

- (UIEdgeInsets)_displayPeripheryInsets
{
  _displayInfoProvider = [(UIScreen *)self _displayInfoProvider];
  [_displayInfoProvider peripheryInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

uint64_t __34__UIScreen_maximumFramesPerSecond__block_invoke()
{
  result = _UIVariableFrameDurationEnabled();
  if (result)
  {
    result = dyld_program_sdk_at_least();
    v1 = result ^ 1;
  }

  else
  {
    v1 = 0;
  }

  byte_1ED49AAE1 = v1;
  return result;
}

- (NSInteger)maximumFramesPerSecond
{
  if (qword_1ED49AB30 != -1)
  {
    dispatch_once(&qword_1ED49AB30, &__block_literal_global_235);
  }

  if (byte_1ED49AAE1)
  {
    return 60;
  }

  return [(UIScreen *)self _maximumFramesPerSecond];
}

- (int64_t)_maximumFramesPerSecond
{
  [(UIScreen *)self _refreshRate];
  if (v2 <= 0.0)
  {
    return 60;
  }

  else
  {
    return llround(1.0 / v2);
  }
}

- (double)_refreshRate
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  [(FBSDisplayConfiguration *)v3 refreshRate];
  v5 = v4;

  return 1.0 / v5;
}

- (void)_ensureComputedMainScreenDPI
{
  if ((*(&self->_screenFlags + 1) & 0x10) == 0)
  {
    if ([(UIScreen *)self _isEmbeddedScreen])
    {
      self->_pointsPerInch = 0.0;
      self->_nativePointsPerMillimeter = 0.0;
      v3 = MGCopyAnswer();
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFNumberGetTypeID())
        {
          [v4 floatValue];
          v7 = v6;
          [(UIScreen *)self scale];
          self->_pointsPerInch = v7 / v8;
          [(UIScreen *)self nativeScale];
          self->_nativePointsPerMillimeter = v7 / 25.4 / v9;
          *&self->_screenFlags |= 0x1000u;
        }

        CFRelease(v4);
      }
    }
  }
}

- (_UIScreenBoundingPathUtilities)_boundingPathUtilities
{
  boundingPathUtilities = self->_boundingPathUtilities;
  if (!boundingPathUtilities)
  {
    v4 = [_UIScreenBoundingPathUtilities boundingPathUtilitiesForScreen:self];
    v5 = self->_boundingPathUtilities;
    self->_boundingPathUtilities = v4;

    boundingPathUtilities = self->_boundingPathUtilities;
  }

  return boundingPathUtilities;
}

void __22__UIScreen_initialize__block_invoke()
{
  if (!UIApp)
  {
    v1 = objc_alloc_init(MEMORY[0x1E699FB10]);
    v2 = _UIInternalPreference_FakeMainScreenScale_block_invoke_liveForeverMonitor;
    _UIInternalPreference_FakeMainScreenScale_block_invoke_liveForeverMonitor = v1;

    v3 = _UIInternalPreference_FakeMainScreenScale_block_invoke_liveForeverMonitor;
    v4 = +[_UIDisplayObserver sharedObserver];
    [v3 addObserver:v4];

    v8 = +[_UIDisplayObserver sharedObserver];
    v5 = _UIInternalPreference_FakeMainScreenScale_block_invoke_liveForeverMonitor;
    v6 = [_UIInternalPreference_FakeMainScreenScale_block_invoke_liveForeverMonitor mainIdentity];
    v7 = [_UIInternalPreference_FakeMainScreenScale_block_invoke_liveForeverMonitor mainConfiguration];
    [v8 displayMonitor:v5 didUpdateIdentity:v6 withConfiguration:v7];
  }
}

- (CGRect)_mainSceneReferenceBounds
{
  if (([UIApp _appAdoptsUISceneLifecycle] & 1) != 0 || -[UIScreen _isExternal](self, "_isExternal"))
  {
    if (qword_1ED49AB90 != -1)
    {
      dispatch_once(&qword_1ED49AB90, &__block_literal_global_928);
    }

    if (byte_1ED49AAE2 == 1)
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      x = self->_unjailedReferenceBounds.origin.x;
      y = self->_unjailedReferenceBounds.origin.y;
      width = self->_unjailedReferenceBounds.size.width;
      height = self->_unjailedReferenceBounds.size.height;
    }
  }

  else
  {
    _findUISceneForLegacyInterfaceOrientation = [UIApp _findUISceneForLegacyInterfaceOrientation];
    [_findUISceneForLegacyInterfaceOrientation _referenceBounds];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIScreen)mirroredScreen
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  isCloningSupported = [(FBSDisplayConfiguration *)v3 isCloningSupported];

  if (isCloningSupported && ![(UIScreen *)self _hasWindows])
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  else
  {
    mainScreen = 0;
  }

  return mainScreen;
}

- (double)resolvedCornerRadiusForDescedant:(id)descedant context:(id)context corner:(unint64_t)corner
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [(UIScreen *)selfCopy _displayCornerRadius];
  sub_188BE1190(selfCopy, descedant, corner, v9);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

- (CGRect)_mainSceneFrame
{
  if ([(UIScreen *)self _isMainScreen]&& !+[UIApplication _isClassic])
  {
    _mainScene = [UIApp _mainScene];
    settings = [_mainScene settings];
    [settings frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(UIScreen *)self _referenceBounds];
    v3 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace([(UIScreen *)self _interfaceOrientation], v10, v12, v14, v16, v17, v18);
  }

  else if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [(UIScreen *)self _interfaceOrientedMainSceneBounds];
  }

  else
  {
    [(UIScreen *)self _mainSceneReferenceBounds];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_name
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (v3)
  {
    name = [(FBSDisplayConfiguration *)v3 name];
  }

  else
  {
    name = @"LCD";
  }

  return name;
}

- (UIEdgeInsets)_peripheryInsets
{
  [(UIScreen *)self _displayPeripheryInsets];
  v6 = v5;
  v7 = v4;
  v8 = self->_interfaceOrientation - 2;
  if (v8 > 2)
  {
    goto LABEL_8;
  }

  v9 = dbl_18A67CEC8[v8];
  if (fabs(v9 + -1.57079633) >= 0.00000011920929)
  {
    if (fabs(v9 + -3.14159265) < 0.00000011920929)
    {
      v4 = v3;
      v10 = v6;
      v11 = v7;
LABEL_9:
      v7 = v6;
      goto LABEL_10;
    }

    if (fabs(v9 + 1.57079633) < 0.00000011920929)
    {
      v4 = v6;
      v10 = v3;
      v11 = v6;
      goto LABEL_10;
    }

LABEL_8:
    v10 = v6;
    v11 = v3;
    goto LABEL_9;
  }

  v4 = v6;
  v10 = v7;
  v11 = v6;
  v7 = v3;
LABEL_10:
  v12 = v11;
  result.right = v4;
  result.bottom = v10;
  result.left = v12;
  result.top = v7;
  return result;
}

- (id)registerDescendant:(id)descendant forGeometryOrMaskingConfigurationChanges:(id)changes
{
  v6[4] = signpost_c2_entryLock_start;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_188A4A8F0;
  v6[3] = &block_descriptor_132;
  v4 = _Block_copy(v6);

  return v4;
}

- (UIScreenMode)currentMode
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (v3)
  {
    currentMode = [(FBSDisplayConfiguration *)v3 currentMode];
    v5 = [UIScreenMode _screenModeForDisplayMode:currentMode mainScreen:[(UIScreen *)self _isMainScreen] actualDisplayScale:self->_scale];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_carScreen
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__115;
  v11 = __Block_byref_object_dispose__115;
  v12 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__115;
  v21 = __Block_byref_object_dispose__115;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = ___UIScreenAllScreens_block_invoke;
  v15 = &unk_1E70F2F20;
  v16 = &v17;
  v2 = v13;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v14(v2);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v3 = v18[5];
  _Block_object_dispose(&v17, 8);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __22__UIScreen__carScreen__block_invoke;
  v6[3] = &unk_1E710CD68;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __22__UIScreen__carScreen__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 displayConfiguration];
  v8 = [v7 isCarDisplay];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (double)_touchRadiusScaleFactor
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (os_variant_has_internal_diagnostics())
  {
    if (!v3)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "displayConfiguration should not be nil", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AB28) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "displayConfiguration should not be nil", v12, 2u);
    }
  }

  [(FBSDisplayConfiguration *)v3 pixelSize];
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [(UIScreen *)self scale];
  v8 = v6 / v7;

  return v8;
}

- (void)_postBrightnessDidChangeNotificationIfAppropriate
{
  if ([UIApp _isSpringBoard])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIScreenBrightnessDidChangeNotification" object:self];
  }

  else
  {
    v3 = +[UIDevice currentDevice];
    [v3 _backlightLevel];
    v5 = v4;

    [(UIScreen *)self _lastNotifiedBacklightLevel];
    if (*&v6 != v5)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"UIScreenBrightnessDidChangeNotification" object:self];
    }

    *&v6 = v5;

    [(UIScreen *)self _setLastNotifiedBacklightLevel:v6];
  }
}

- (id)_displayID
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  hardwareIdentifier = [(FBSDisplayConfiguration *)v3 hardwareIdentifier];
  if (!hardwareIdentifier)
  {
    if (![(FBSDisplayConfiguration *)v3 isExternal])
    {
LABEL_8:
      hardwareIdentifier = 0;
      goto LABEL_9;
    }

    cADisplay = [(FBSDisplayConfiguration *)v3 CADisplay];
    [cADisplay update];

    cADisplay2 = [(FBSDisplayConfiguration *)v3 CADisplay];
    hardwareIdentifier = [cADisplay2 uniqueId];

    if (!v3)
    {
      goto LABEL_9;
    }

    if (!os_variant_has_internal_diagnostics())
    {
      if (hardwareIdentifier)
      {
        goto LABEL_9;
      }

      v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AB58) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Could not obtain unique identifier for attached screen %@", &v10, 0xCu);
      }

      goto LABEL_8;
    }

    if (!hardwareIdentifier)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Could not obtain unique identifier for attached screen %@", &v10, 0xCu);
      }

      goto LABEL_8;
    }
  }

LABEL_9:

  return hardwareIdentifier;
}

- (void)_prepareForWindow
{
  screenFlags = self->_screenFlags;
  if ((*&screenFlags & 0x10) == 0)
  {
    self->_screenFlags = (*&screenFlags | 0x10);
  }
}

+ (BOOL)_shouldDisableJail
{
  if (qword_1ED49AB20 != -1)
  {
    dispatch_once(&qword_1ED49AB20, &__block_literal_global_220_0);
  }

  return _MergedGlobals_53_0;
}

- (UIWindow)_preferredFocusedWindow
{
  if (_screenBasedFocusUnsupported())
  {
    v3 = 0;
  }

  else
  {
    v3 = [UIApp _keyWindowForScreen:self];
  }

  return v3;
}

- (void)_fetchInitialCarPlayHumanPresenceStatusIfNeeded
{
  if ([(UIScreen *)self _isCarScreen])
  {
    if ((*&self->_carPlayHumanPresenceStatus & 1) == 0)
    {
      os_unfair_lock_lock(&unk_1ED49AAE8);
      v3 = self->__displayConfiguration;
      os_unfair_lock_unlock(&unk_1ED49AAE8);
      hardwareIdentifier = [(FBSDisplayConfiguration *)v3 hardwareIdentifier];

      HIBYTE(v5) = 0;
      LODWORD(v5) = 0;
      BKSHIDServicesGetHumanPresenceStatus();
      *&self->_carPlayHumanPresenceStatus = *&self->_carPlayHumanPresenceStatus & 0xFC | 1;
      [(UIScreen *)self _setCarPlayHumanPresenceInRange:0, v5];
    }
  }
}

+ (id)_shortScreensDescription
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[UIScreen _screens];
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu screen(s): ", objc_msgSend(v3, "count")];
  v6 = [v4 initWithString:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = +[UIScreen _screens];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_opt_class();
        [v11 bounds];
        v27.width = v13;
        v27.height = v14;
        v15 = NSStringFromCGSize(v27);
        _isMainLikeScreen = [v11 _isMainLikeScreen];
        v17 = @"NO";
        if (_isMainLikeScreen)
        {
          v17 = @"YES";
        }

        [v6 appendFormat:@"<%@: %p; bounds = %@; mainLike=%@> ", v12, self, v15, v17];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v6;
}

- (BOOL)_isRightHandDrive
{
  if ([(UIScreen *)self _userInterfaceIdiom]== 3)
  {
    return (*(&self->_screenFlags + 1) >> 5) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateCornerProviderWithTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188F0E438(collection);
  swift_unknownObjectRelease();
}

- (CGRect)convertRect:(CGRect)rect toMaskingCoordinateSpace:(id)space
{
  v4 = sub_189170CD8(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, space, &selRef_convertRect_toCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromMaskingCoordinateSpace:(id)space
{
  v4 = sub_189170CD8(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, space, &selRef_convertRect_fromCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (uint64_t)_mainScreen
{
  v0 = objc_opt_self();

  return [v0 mainScreen];
}

+ (CGAffineTransform)transformForScreenOriginRotation:(SEL)rotation
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
  v8 = v7;
  v10 = v9;

  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v12, v8 * 0.5, v10 * 0.5);
  CGAffineTransformRotate(&v13, &v12, a4);
  v12 = v13;
  return CGAffineTransformTranslate(retstr, &v12, v8 * -0.5, v10 * -0.5);
}

+ (CGAffineTransform)transformToRotateScreen:(SEL)screen
{
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeRotation(&v11, -a4);
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
  t2 = v11;
  v13 = CGRectApplyAffineTransform(v12, &t2);
  x = v13.origin.x;
  y = v13.origin.y;

  CGAffineTransformMakeTranslation(&t2, -x, -y);
  v9 = v11;
  return CGAffineTransformConcat(retstr, &v9, &t2);
}

+ (void)_enumerateScreensWithBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__115;
  v22 = __Block_byref_object_dispose__115;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v15 = ___UIScreenAllScreens_block_invoke;
  v16 = &unk_1E70F2F20;
  v17 = &v18;
  v4 = v14;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v15(v4);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v5 = v19[5];
  _Block_object_dispose(&v18, 8);

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v24 count:16];
  if (v6)
  {
    v7 = *v11;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v10 + 1) + 8 * v8);
      LOBYTE(v18) = 0;
      blockCopy[2](blockCopy, v9, &v18);
      if (v18)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (id)_screenWithFBSDisplayIdentity:(id)identity
{
  v30 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__115;
  v27 = __Block_byref_object_dispose__115;
  v28 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = ___UIScreenAllScreens_block_invoke;
  v21 = &unk_1E70F2F20;
  v22 = &v23;
  v4 = v19;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v20(v4);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v5 = v24[5];
  _Block_object_dispose(&v23, 8);

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v29 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        displayIdentity = [v9 displayIdentity];
        if ([displayIdentity isEqual:identityCopy])
        {

LABEL_15:
          v13 = v9;
          goto LABEL_16;
        }

        v11 = identityCopy == 0;
        displayIdentity2 = [v9 displayIdentity];
        if (displayIdentity2)
        {
          v11 = 0;
        }

        if (v11)
        {
          goto LABEL_15;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v29 count:16];
      v13 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  return v13;
}

+ (id)_screenWithDisplayName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__115;
  v26 = __Block_byref_object_dispose__115;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = ___UIScreenAllScreens_block_invoke;
  v20 = &unk_1E70F2F20;
  v21 = &v22;
  v4 = v18;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v19(v4);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v5 = v23[5];
  _Block_object_dispose(&v22, 8);

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v28 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        os_unfair_lock_lock(&unk_1ED49AAE8);
        v10 = v9[20];
        os_unfair_lock_unlock(&unk_1ED49AAE8);
        name = [v10 name];

        LOBYTE(v10) = [name isEqualToString:nameCopy];
        if (v10)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)_screenWithEventDisplay:(id)display
{
  v29 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__115;
    v26 = __Block_byref_object_dispose__115;
    v27 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v19 = ___UIScreenAllScreens_block_invoke;
    v20 = &unk_1E70F2F20;
    v21 = &v22;
    v4 = v18;
    os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
    v19(v4);

    os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
    v5 = v23[5];
    _Block_object_dispose(&v22, 8);

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v28 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          _eventDisplay = [v9 _eventDisplay];
          v11 = _eventDisplay;
          if (_eventDisplay == displayCopy || ([_eventDisplay isEqual:displayCopy] & 1) != 0)
          {
            mainScreen = v9;

            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    mainScreen = 0;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

LABEL_14:

  return mainScreen;
}

+ (id)_screenWithIntegerDisplayID:(unsigned int)d
{
  v29 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__115;
  v26 = __Block_byref_object_dispose__115;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = ___UIScreenAllScreens_block_invoke;
  v20 = &unk_1E70F2F20;
  v21 = &v22;
  v4 = v18;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v19(v4);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v5 = v23[5];
  _Block_object_dispose(&v22, 8);

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v28 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        displayIdentity = [v9 displayIdentity];
        v11 = [displayIdentity displayID] == d;

        if (v11)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)_embeddedScreen
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__115;
  v21 = __Block_byref_object_dispose__115;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = ___UIScreenAllScreens_block_invoke;
  v15 = &unk_1E70F2F20;
  v16 = &v17;
  v2 = v13;
  os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
  v14(v2);

  os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
  v3 = v18[5];
  _Block_object_dispose(&v17, 8);

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v23 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 _isEmbeddedScreen])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (void)_prepareScreensForAppResume
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = +[UIScreen _screens];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _computeMetrics];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)_screenForScene:(id)scene
{
  settings = [scene settings];
  displayIdentity = [settings displayIdentity];
  v6 = [self _screenWithFBSDisplayIdentity:displayIdentity];

  return v6;
}

+ (void)_FBSDisplayDidPossiblyConnect:(id)connect withScene:(id)scene andPost:(BOOL)post
{
  postCopy = post;
  settings = [scene settings];
  displayConfiguration = [settings displayConfiguration];
  [self _FBSDisplayConfigurationConnected:displayConfiguration andNotify:postCopy];
}

+ (void)_FBSDisplayConfigurationConnected:(id)connected forInitialDisplayContext:(id)context andNotify:(BOOL)notify forceMain:(BOOL)main
{
  mainCopy = main;
  notifyCopy = notify;
  v32 = *MEMORY[0x1E69E9840];
  connectedCopy = connected;
  contextCopy = context;
  identity = [connectedCopy identity];
  v13 = [self _screenWithFBSDisplayIdentity:identity];

  if (v13)
  {
    [v13 _updateDisplayConfiguration:connectedCopy];
    _UIScreenAddScreen(v13, contextCopy != 0);
  }

  else
  {
    v14 = [[UIScreen alloc] initWithDisplayConfiguration:connectedCopy forceMainScreen:mainCopy];
    v13 = v14;
    if (contextCopy)
    {
      [(UIScreen *)v14 _setInitialDisplayContext:contextCopy];
    }

    _UIScreenAddScreen(v13, contextCopy != 0);
    [v13 _connectScreen];
    if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FakeMainScreen, @"FakeMainScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1EC)
    {
      if (qword_1ED49AB90 != -1)
      {
        dispatch_once(&qword_1ED49AB90, &__block_literal_global_928);
      }

      if ((byte_1ED49AAE2 & 1) == 0 && (_UIApplicationIsExtension() & 1) == 0 && [v13 _isEmbeddedScreen] && (!_UIApplicationMayVendViews() || (_UIInternalPreferenceUsesDefault(&_MergedGlobals_941, @"FakeMainScreenIncludeViewServices", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1F4))
      {
        if (_UIInternalPreferenceUsesDefault(&unk_1ED48B208, @"FakeMainScreenWidth", _UIInternalPreferenceUpdateInteger))
        {
          v15 = 1920.0;
        }

        else
        {
          v15 = qword_1ED48B210;
        }

        if (_UIInternalPreferenceUsesDefault(algn_1ED48B218, @"FakeMainScreenHeight", _UIInternalPreferenceUpdateInteger))
        {
          v16 = 1080.0;
        }

        else
        {
          v16 = qword_1ED48B220;
        }

        currentMode = [connectedCopy currentMode];
        v18 = [currentMode _copyWithOverrideSize:{v15, v16}];

        v19 = [connectedCopy copyWithOverrideMode:v18];
        v20 = [[UIScreen alloc] initWithDisplayConfiguration:v19 forceMainScreen:mainCopy];
        v20->_isFakeScreen = 1;
        [(UIScreen *)v20 _connectScreen];
        objc_storeStrong(&qword_1ED49AB00, v20);
        v21 = *(__UILogGetCategoryCachedImpl("UIScreen", algn_1ED49AB08) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          v23 = _UIInternalPreferenceUsesDefault(&unk_1ED48B228, @"FakeMainScreenScale", _UIInternalPreferenceUpdateInteger);
          v24 = qword_1ED48B230;
          if (v23)
          {
            v24 = 2;
          }

          v26 = 134218496;
          v27 = v15;
          v28 = 2048;
          v29 = v16;
          v30 = 1024;
          v31 = v24;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Created fake [UIScreen _mainScreen] with size %f x %f and scale @%ix", &v26, 0x1Cu);
        }
      }
    }

    if (notifyCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIScreenDidConnectNotification" object:v13 userInfo:0];
      [defaultCenter postNotificationName:@"UIScreenDidConnectNotification" object:v13 userInfo:0];
    }
  }
}

+ (void)_FBSDisplayDidPossiblyDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  [objc_opt_class() _FBSDisplayDidPossiblyDisconnect:disconnectCopy forSceneDestruction:0];
}

+ (void)_FBSDisplayDidPossiblyDisconnect:(id)disconnect forSceneDestruction:(id)destruction
{
  identity = [disconnect identity];
  [self _FBSDisplayIdentityDisconnected:identity];
}

+ (void)_FBSDisplayIdentityDisconnected:(id)disconnected
{
  v33 = *MEMORY[0x1E69E9840];
  disconnectedCopy = disconnected;
  v4 = [UIScreen _screenWithFBSDisplayIdentity:disconnectedCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = ___UIScreenRemoveScreen_block_invoke;
    v22 = &unk_1E70FE3F8;
    v7 = v6;
    v23 = v7;
    v24 = &v25;
    v8 = &v19;
    os_unfair_lock_lock(&__UIScreenMutableScreensArrayAccessLock);
    v21(v8);

    os_unfair_lock_unlock(&__UIScreenMutableScreensArrayAccessLock);
    if (qword_1ED49AB90 != -1)
    {
      dispatch_once(&qword_1ED49AB90, &__block_literal_global_928);
    }

    if (byte_1ED49AAE2 == 1 && os_variant_has_internal_diagnostics())
    {
      v10 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED49ABC8) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v7;
        v12 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11, v19, v20];

        v16 = v15;
        v17 = +[UIScreen _shortScreensDescription];
        *buf = 138412546;
        v30 = v16;
        v31 = 2112;
        v18 = v17;
        v32 = v17;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Removing screen %@, now we have %@", buf, 0x16u);
      }
    }

    v9 = *(v26 + 24);

    _Block_object_dispose(&v25, 8);
    if (v9)
    {
      if (*(v7 + 33))
      {
        *(v7 + 50) |= 0x40u;
      }

      else
      {
        [v7 _disconnectScreen];
      }
    }
  }
}

- (UIScreen)initWithDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = -[UIScreen initWithDisplayConfiguration:forceMainScreen:](self, "initWithDisplayConfiguration:forceMainScreen:", configurationCopy, [configurationCopy isMainDisplay]);

  return v5;
}

- (UIScreen)initWithDisplayConfiguration:(id)configuration forceMainScreen:(BOOL)screen
{
  v41 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v32.receiver = self;
  v32.super_class = UIScreen;
  v7 = [(UIScreen *)&v32 init];
  if (v7)
  {
    if (screen)
    {
      isMainDisplay = 1;
    }

    else
    {
      isMainDisplay = [configurationCopy isMainDisplay];
    }

    v7->_mainScreen = isMainDisplay;
    _UIScreenWriteDisplayConfiguration(v7, configurationCopy);
    v7->_userInterfaceIdiom = -1;
    v7->_screenType = -1;
    if (dyld_program_sdk_at_least())
    {
      v9 = +[UITraitCollection _emptyTraitCollection];
      defaultTraitCollection = v7->_defaultTraitCollection;
      v7->_defaultTraitCollection = v9;

      objc_storeStrong(&v7->_lastNotifiedTraitCollection, v7->_defaultTraitCollection);
    }

    [(UIScreen *)v7 _computeMetrics];
    v7->_screenFlags = (*&v7->_screenFlags & 0xFFFFFFF0 | 8);
    [(UIScreen *)v7 _beginObservingBacklightLevelNotifications];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__accessibilityForceTouchEnabledChanged_ name:@"UIAccessibilityForceTouchStatusChangedNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__accessibilityBoldTextChanged_ name:@"UIAccessibilityBoldTextStatusDidChangeNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__accessibilityBoldTextChanged_ name:@"UIAccessibilityCarPlayBoldTextStatusDidChangeNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__handleEffectiveUserInterfaceStyleChanged_ name:0x1EFB8EF50 object:0];
    [defaultCenter addObserver:v7 selector:sel__accessibilityTraitFlagsChanged_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__handleForcedUserInterfaceLayoutDirectionChanged_ name:0x1EFB8EF70 object:0];
    _isCarScreen = [(UIScreen *)v7 _isCarScreen];
    if (!_isCarScreen && ![(UIScreen *)v7 _isCarInstrumentsScreen])
    {
      goto LABEL_24;
    }

    v13 = +[_UICarPlaySession sharedInstance];
    currentSession = [(_UICarPlaySession *)v13 currentSession];
    carSession = v7->_carSession;
    v7->_carSession = currentSession;

    if (!v7->_carSession)
    {
      v16 = *(__UILogGetCategoryCachedImpl("UIScreen", &qword_1ED49AB10) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        _displayID = [(UIScreen *)v7 _displayID];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = _displayID;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Failed to load car session on display: %{public}@", &buf, 0xCu);
      }
    }

    if (!_isCarScreen)
    {
      goto LABEL_24;
    }

    [defaultCenter addObserver:v7 selector:sel__clearCarPlayHumanPresenceState name:@"UIApplicationWillResignActiveNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__fetchInitialCarPlayHumanPresenceStatusIfNeeded name:@"UIApplicationWillEnterForegroundNotification" object:0];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v19 = qword_1ED49ABD0;
    v36 = qword_1ED49ABD0;
    if (!qword_1ED49ABD0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v38 = __getCARSessionLimitUserInterfacesChangedNotificationSymbolLoc_block_invoke;
      v39 = &unk_1E70F2F20;
      v40 = &v33;
      v20 = CarKitLibrary();
      v21 = dlsym(v20, "CARSessionLimitUserInterfacesChangedNotification");
      *(v40[1] + 24) = v21;
      qword_1ED49ABD0 = *(v40[1] + 24);
      v19 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (v19)
    {
      [defaultCenter addObserver:v7 selector:sel__limitedUIDidChange_ name:*v19 object:0];
      v22 = _UIInternalPreferenceUsesDefault(&dword_1ED48B200, @"ApplySceneUserInterfaceStyleToCarScreen", _UIInternalPreferenceUpdateBool);
      if (byte_1ED48B204)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1;
      }

      if (v23 != 1)
      {
        goto LABEL_24;
      }

      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v24 = qword_1ED49ABD8;
      v36 = qword_1ED49ABD8;
      if (!qword_1ED49ABD8)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v38 = __getCARSessionNightModeChangedNotificationSymbolLoc_block_invoke;
        v39 = &unk_1E70F2F20;
        v40 = &v33;
        v25 = CarKitLibrary();
        v26 = dlsym(v25, "CARSessionNightModeChangedNotification");
        *(v40[1] + 24) = v26;
        qword_1ED49ABD8 = *(v40[1] + 24);
        v24 = v34[3];
      }

      _Block_object_dispose(&v33, 8);
      if (v24)
      {
        [defaultCenter addObserver:v7 selector:sel__externalDeviceNightModeDidChange_ name:*v24 object:0];
LABEL_24:

        goto LABEL_25;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCARSessionNightModeChangedNotification(void)"];
      [currentHandler handleFailureInFunction:v31 file:@"UIScreen.m" lineNumber:109 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCARSessionLimitUserInterfacesChangedNotification(void)"];
      [currentHandler2 handleFailureInFunction:v29 file:@"UIScreen.m" lineNumber:108 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_25:

  return v7;
}

- (_UITypedStorage)_typedStorage
{
  if (self)
  {
    v2 = *(self + 248);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      v3 = *(self + 248);
      *(self + 248) = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_invalidate
{
  *&self->_screenFlags &= 0xFFFFFFCF;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIScreen *)self _endObservingBacklightLevelNotifications];
  [(UIScreen *)self _setSoftwareDimmingWindow:0];
  fixedCoordinateSpace = self->_fixedCoordinateSpace;

  [(_UIScreenFixedCoordinateSpace *)fixedCoordinateSpace _setScreen:0];
}

- (void)dealloc
{
  [(UIScreen *)self _invalidate];
  _UIScreenWriteDisplayConfiguration(self, 0);
  v3.receiver = self;
  v3.super_class = UIScreen;
  [(UIScreen *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &__UIScreenCapturedKey)
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __59__UIScreen_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v17 = &unk_1E70F5A28;
    objc_copyWeak(&v18, &location);
    BSDispatchMain();
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIScreen;
    [(UIScreen *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __59__UIScreen_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(UIScreen *)WeakRetained _evaluateCapturedStateForReason:?];
}

- (void)_evaluateCapturedStateForReason:(void *)reason
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason)
  {
    if (qword_1ED49ABE0 != -1)
    {
      dispatch_once(&qword_1ED49ABE0, &__block_literal_global_981_0);
    }

    v4 = qword_1ED49ABE8;
    v5 = v4;
    if (v4)
    {
      bOOLValue = [v4 BOOLValue];
    }

    else
    {
      displayConfiguration = [reason displayConfiguration];
      cADisplay = [displayConfiguration CADisplay];
      isCloned = [cADisplay isCloned];

      if (isCloned)
      {
        bOOLValue = 1;
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v10 = [UIScene _scenesIncludingInternal:1];
        v11 = [v10 countByEnumeratingWithState:&v32 objects:buf count:16];
        if (v11)
        {
          v12 = v11;
          v30 = v3;
          v13 = 0;
          v14 = 0;
          v31 = 0;
          v15 = *v33;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v32 + 1) + 8 * i);
              if ([v17 _hostsWindows])
              {
                if (([v17 _hasSettingsScene] & 1) == 0)
                {
                  _screen = [v17 _screen];

                  if (_screen == reason)
                  {
                    renderingEnvironment = [v17 renderingEnvironment];
                    isCapturingContentForAdditionalRenderingDestination = [renderingEnvironment isCapturingContentForAdditionalRenderingDestination];

                    if (v17 && (![v17 activationState] || objc_msgSend(v17, "activationState") == 1))
                    {
                      LOBYTE(v21) = 1;
                    }

                    else
                    {
                      v21 = [v17 _hasLifecycle] ^ 1;
                    }

                    v31 |= v21 & isCapturingContentForAdditionalRenderingDestination;
                    v14 |= (v21 ^ 1) & isCapturingContentForAdditionalRenderingDestination;
                    v13 |= v21;
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v32 objects:buf count:16];
          }

          while (v12);

          if (v13 & 1 | ((v14 & 1) == 0))
          {
            bOOLValue = v13 & v31;
          }

          else
          {
            bOOLValue = [reason isCaptured];
          }

          v5 = 0;
          v3 = v30;
        }

        else
        {

          bOOLValue = 0;
        }
      }
    }

    v22 = *(__UILogGetCategoryCachedImpl("UIScreen", &qword_1ED49AB18) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = MEMORY[0x1E696AEC0];
      reasonCopy = reason;
      v25 = v22;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      reasonCopy = [v23 stringWithFormat:@"<%@: %p>", v27, reasonCopy];

      *buf = 67240706;
      v37 = bOOLValue & 1;
      v38 = 2114;
      v39 = reasonCopy;
      v40 = 2114;
      v41 = v3;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated capturing state as %{public}d on %{public}@ for %{public}@", buf, 0x1Cu);
    }

    if ((bOOLValue & 1) != [reason isCaptured])
    {
      [reason _setCaptured:?];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIScreenCapturedDidChangeNotification" object:reason userInfo:0];

      [reason _updateTraitsForWindowScenesCallingParentWillTransition:0];
    }
  }
}

- (void)_updateTraitsForWindowScenesCallingParentWillTransition:(BOOL)transition
{
  transitionCopy = transition;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [UIScene _scenesIncludingInternal:1, 0];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 _hostsWindows])
        {
          _screen = [v10 _screen];

          if (_screen == self)
          {
            [v10 _updateSceneTraitsAndPushTraitsToScreen:0 callParentWillTransitionToTraitCollection:transitionCopy];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_updateAvailableDisplayModes
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1ED49AAE8);
  selfCopy = self;
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  availableModes = [(FBSDisplayConfiguration *)v3 availableModes];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(availableModes, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = availableModes;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 hdrMode] == 1)
        {
          [v11 pixelSize];
LABEL_12:
          if (!dyld_program_sdk_at_least())
          {
            continue;
          }

          goto LABEL_13;
        }

        hdrMode = [v11 hdrMode];
        [v11 pixelSize];
        if (hdrMode == 2 || v13 > 1920.0)
        {
          goto LABEL_12;
        }

LABEL_13:
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __40__UIScreen__updateAvailableDisplayModes__block_invoke;
        v21[3] = &unk_1E710CD98;
        v21[4] = v11;
        v15 = [MEMORY[0x1E696AE18] predicateWithBlock:v21];
        v16 = [v5 filteredArrayUsingPredicate:v15];

        if (![v16 count])
        {
          v17 = [UIScreenMode _screenModeForDisplayMode:v11 mainScreen:[(UIScreen *)selfCopy _isMainScreen] actualDisplayScale:selfCopy->_scale];
          [v5 addObject:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = [v5 sortedArrayUsingComparator:&__block_literal_global_215_1];
  availableDisplayModes = selfCopy->_availableDisplayModes;
  selfCopy->_availableDisplayModes = v18;
}

BOOL __40__UIScreen__updateAvailableDisplayModes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 pixelSize];
  v5 = v4;
  v7 = v6;
  v8 = [v3 _displayMode];

  [v8 pixelSize];
  v11 = v7 == v10 && v5 == v9;

  return v11;
}

uint64_t __40__UIScreen__updateAvailableDisplayModes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 size];
  v7 = v6;
  [v5 size];
  v9 = v8;

  v10 = v7 * v9;
  [v4 size];
  v12 = v11;
  [v4 size];
  v14 = v13;

  v15 = -1;
  if (v10 >= v12 * v14)
  {
    v15 = 1;
  }

  if (v10 == v12 * v14)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

- (void)_updateDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v5 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (([(FBSDisplayConfiguration *)v5 isEqual:configurationCopy]& 1) != 0)
  {
    goto LABEL_33;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  hardwareIdentifier = [(FBSDisplayConfiguration *)v5 hardwareIdentifier];
  hardwareIdentifier2 = [configurationCopy hardwareIdentifier];
  v49 = hardwareIdentifier;
  v50 = defaultCenter;
  v48 = hardwareIdentifier2;
  if (hardwareIdentifier == hardwareIdentifier2 || (v9 = hardwareIdentifier2, ([hardwareIdentifier isEqualToString:hardwareIdentifier2] & 1) != 0))
  {
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v10 = objc_opt_new();
    v11 = v10;
    if (hardwareIdentifier)
    {
      [v10 setObject:hardwareIdentifier forKey:@"_UIScreenOldUniqueIdUserInfoKey"];
    }

    if (v9)
    {
      [v11 setObject:v9 forKey:@"_UIScreenNewUniqueIdUserInfoKey"];
    }

    v47 = v11;
    [defaultCenter postNotificationName:@"_UIScreenUniqueIdWillChangeNotification" object:self userInfo:v11];
    objc_storeStrong(&self->_previousHardwareIdentifier, hardwareIdentifier);
    v46 = 1;
  }

  _UIScreenWriteDisplayConfiguration(self, configurationCopy);
  availableModes = [(FBSDisplayConfiguration *)v5 availableModes];
  availableModes2 = [configurationCopy availableModes];
  v14 = [availableModes isEqualToSet:availableModes2];

  currentMode = [(FBSDisplayConfiguration *)v5 currentMode];
  currentMode2 = [configurationCopy currentMode];
  v45 = [currentMode isEqual:currentMode2];

  LODWORD(currentMode) = [(FBSDisplayConfiguration *)v5 isOverscanned];
  v17 = currentMode ^ [configurationCopy isOverscanned];
  overscanCompensation = [(FBSDisplayConfiguration *)v5 overscanCompensation];
  overscanCompensation2 = [configurationCopy overscanCompensation];
  isCloningSupported = [(FBSDisplayConfiguration *)v5 isCloningSupported];
  isCloningSupported2 = [configurationCopy isCloningSupported];
  [(FBSDisplayConfiguration *)v5 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [configurationCopy bounds];
  v53.origin.x = v28;
  v53.origin.y = v29;
  v53.size.width = v30;
  v53.size.height = v31;
  v52.origin.x = v21;
  v52.origin.y = v23;
  v52.size.width = v25;
  v52.size.height = v27;
  v32 = CGRectEqualToRect(v52, v53);
  [(FBSDisplayConfiguration *)v5 scale];
  v34 = v33;
  [configurationCopy scale];
  v36 = v35;
  v37 = [(FBSDisplayConfiguration *)v5 colorGamut]!= 0;
  v38 = [configurationCopy colorGamut] == 0;
  if ((v14 & 1) == 0)
  {
    [(UIScreen *)self _updateAvailableDisplayModes];
  }

  v39 = v37 ^ v38;
  v40 = vabdd_f64(v34, v36);
  if (overscanCompensation == overscanCompensation2)
  {
    v41 = v17;
  }

  else
  {
    v41 = 1;
  }

  if ((v41 & 1) != 0 || !v32 || v40 >= 2.22044605e-16 || v39 != 1)
  {
    [(UIScreen *)self _computeMetrics];
  }

  if (v40 < 2.22044605e-16)
  {
    if (v39)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __40__UIScreen__updateDisplayConfiguration___block_invoke;
    v51[3] = &unk_1E70F4440;
    v51[4] = self;
    [UIScene _enumerateAllWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 asCopy:0 withBlock:v51];
  }

  [(UIScreen *)self _updateTraits];
LABEL_24:
  if (v17 & 1 | ((v45 & 1) == 0) || overscanCompensation != overscanCompensation2)
  {
    [v50 postNotificationName:@"UIScreenModeDidChangeNotification" object:self userInfo:0];
  }

  if (isCloningSupported != isCloningSupported2 && ![(UIScreen *)self _hasWindows])
  {
    [v50 postNotificationName:@"UIScreenMirroredScreenDidChangeNotification" object:self];
  }

  if (v46)
  {
    [v50 postNotificationName:@"_UIScreenUniqueIdDidChangeNotification" object:self userInfo:v47];
  }

  displayInfoProvider = self->_displayInfoProvider;
  self->_displayInfoProvider = 0;

  [v50 postNotificationName:@"_UIScreenDisplayConfigurationUpdatedNotification" object:self];
LABEL_33:
}

void __40__UIScreen__updateDisplayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 screen];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 _updateTransformLayer];
  }
}

- (BOOL)_hasWindows
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        screen = [*(*(&v11 + 1) + 8 * i) screen];

        if (screen == self)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (BOOL)_isProbablyBeingRecorded
{
  if (qword_1ED49ABE0 != -1)
  {
    dispatch_once(&qword_1ED49ABE0, &__block_literal_global_981_0);
  }

  v2 = qword_1ED49ABE8;
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
LABEL_9:

    return bOOLValue;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = off_1ED49ABF0;
  v13 = off_1ED49ABF0;
  if (!off_1ED49ABF0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getFigOutputMonitorIsScreenProbablyBeingRecordedSymbolLoc_block_invoke;
    v9[3] = &unk_1E70F2F20;
    v9[4] = &v10;
    __getFigOutputMonitorIsScreenProbablyBeingRecordedSymbolLoc_block_invoke(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v5)
  {
    bOOLValue = v5() != 0;
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean __FigOutputMonitorIsScreenProbablyBeingRecorded(void)"];
  [currentHandler handleFailureInFunction:v8 file:@"UIScreen.m" lineNumber:132 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

void __30__UIScreen__shouldDisableJail__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 infoDictionary];
  v1 = [v0 objectForKey:@"UIApplicationShouldDisableScreenJail"];
  _MergedGlobals_53_0 = [v1 BOOLValue];
}

- (void)_setInterfaceOrientation:(int64_t)orientation andNotify:(BOOL)notify
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != orientation)
  {
    screenFlags = self->_screenFlags;
    if ((*&screenFlags & 0x8000) != 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v14 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "[UIScreen _setInterfaceOrientation:] re-entry detected.", buf, 2u);
        }
      }

      else
      {
        v13 = *(__UILogGetCategoryCachedImpl("Assert", &_setInterfaceOrientation_andNotify____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "[UIScreen _setInterfaceOrientation:] re-entry detected.", v15, 2u);
        }
      }
    }

    else
    {
      notifyCopy = notify;
      self->_screenFlags = (*&screenFlags | 0x8000);
      self->_interfaceOrientation = orientation;
      [(UIScreen *)self _updateTraits];
      [(UIScreen *)self _computeMetrics];
      if (notifyCopy)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"_UIScreenInterfaceOrientationDidChangeNotification" object:self];
        if ((interfaceOrientation - 1) < 2 != (self->_interfaceOrientation - 1) < 2)
        {
          [(UIScreen *)self _displayPeripheryInsets];
          if (v12 != 0.0 || v9 != 0.0 || v11 != 0.0 || v10 != 0.0)
          {
            [defaultCenter postNotificationName:@"_UIScreenDidChangePeripheryInsetsNotification" object:self];
          }
        }
      }

      *&self->_screenFlags &= ~0x8000u;
    }
  }
}

- (CGRect)_applicationFrameForInterfaceOrientation:(int64_t)orientation usingStatusbarHeight:(double)height ignoreStatusBar:(BOOL)bar
{
  [(UIScreen *)self _applicationFrameWithoutOverscanForInterfaceOrientation:orientation usingStatusbarHeight:bar ignoreStatusBar:height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(UIScreen *)self overscanCompensation]== UIScreenOverscanCompensationNone && _UIDeviceNativeUserInterfaceIdiom() != 2)
  {
    [(UIScreen *)self overscanCompensationInsets];
    v7 = v7 + v14;
    v9 = v9 + v15;
    v11 = v11 - (v14 + v16);
    v13 = v13 - (v15 + v17);
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_applicationFrameWithoutOverscanForInterfaceOrientation:(int64_t)orientation usingStatusbarHeight:(double)height ignoreStatusBar:(BOOL)bar
{
  barCopy = bar;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [(UIScreen *)self _mainSceneBoundsForInterfaceOrientation:orientation];
  }

  else
  {
    [(UIScreen *)self _referenceBounds];
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if (barCopy)
  {
    height = 0.0;
  }

  if ([(UIScreen *)self _userInterfaceIdiom]== 3 && +[UIScreen _shouldDisableJail])
  {
    [(UIStatusBar_Base *)UIStatusBar heightForStyle:400 orientation:1 inWindow:0];
    v16 = v16 - v17;
    height = 0.0;
  }

  v18 = __UIStatusBarManagerForWindow(0);
  isStatusBarHidden = [v18 isStatusBarHidden];

  if ((isStatusBarHidden & 1) == 0 && [(UIScreen *)self _isMainLikeScreen])
  {
    if (height <= 0.0 && !barCopy)
    {
      [UIApp statusBarHeightForOrientation:orientation];
      height = v20;
    }

    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      goto LABEL_15;
    }

    if (orientation > 2)
    {
      if (orientation != 3)
      {
        if (orientation != 4)
        {
          goto LABEL_25;
        }

        v13 = v13 + height;
      }

      v15 = v15 - height;
      goto LABEL_25;
    }

    if (orientation == 1)
    {
LABEL_15:
      v14 = v14 + height;
    }

    else if (orientation != 2)
    {
      goto LABEL_25;
    }

    v16 = v16 - height;
  }

LABEL_25:
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)_applicationFrameForInterfaceOrientation:(int64_t)orientation usingStatusbarHeight:(double)height
{
  [(UIScreen *)self _applicationFrameForInterfaceOrientation:orientation usingStatusbarHeight:0 ignoreStatusBar:height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_applicationFrameForInterfaceOrientation:(int64_t)orientation
{
  [(UIScreen *)self _applicationFrameForInterfaceOrientation:orientation usingStatusbarHeight:0.0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_computeMetrics:(BOOL)metrics
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v10 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  v4 = v10;
  if (v10)
  {
    [(FBSDisplayConfiguration *)v10 scale];
    v4 = v10;
  }

  else
  {
    v5 = 1.0;
  }

  self->_scale = v5;
  self->_gamut = [(FBSDisplayConfiguration *)v4 colorGamut]!= 0;
  if ([UIApp _fakingRequiresHighResolution] && self->_scale == 1.0)
  {
    self->_scale = 2.0;
  }

  [(FBSDisplayConfiguration *)v10 bounds];
  self->_unjailedReferenceBounds.origin.x = v6;
  self->_unjailedReferenceBounds.origin.y = v7;
  self->_unjailedReferenceBounds.size.width = v8;
  self->_unjailedReferenceBounds.size.height = v9;
  self->_referenceBounds.origin = self->_unjailedReferenceBounds.origin;
  self->_referenceBounds.size = self->_unjailedReferenceBounds.size;
  *&self->_screenFlags &= ~0x1000u;
}

- (CGRect)_unjailedReferenceBoundsInPixels
{
  scale = self->_scale;
  v3 = self->_unjailedReferenceBounds.origin.x * scale;
  v4 = scale * self->_unjailedReferenceBounds.origin.y;
  v5 = scale * self->_unjailedReferenceBounds.size.width;
  v6 = scale * self->_unjailedReferenceBounds.size.height;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_unjailedReferenceBoundsForInterfaceOrientation:(int64_t)orientation
{
  x = self->_unjailedReferenceBounds.origin.x;
  y = self->_unjailedReferenceBounds.origin.y;
  width = self->_unjailedReferenceBounds.size.width;
  height = self->_unjailedReferenceBounds.size.height;
  if (![(UIScreen *)self _isExternal]|| ![(UIScreen *)self _isMainLikeScreen])
  {
    if ((orientation - 3) > 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v9 = CGRectGetWidth(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    width = CGRectGetHeight(v15);
    height = v9;
    goto LABEL_8;
  }

  if ((orientation - 3) <= 1 && (*&self->_screenFlags & 0x10000) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_boundsForInterfaceOrientation:(int64_t)orientation
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  if (![(UIScreen *)self _isExternal]|| ![(UIScreen *)self _isMainLikeScreen])
  {
    if ((orientation - 3) > 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v9 = CGRectGetWidth(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    width = CGRectGetHeight(v15);
    height = v9;
    goto LABEL_8;
  }

  if ((orientation - 3) <= 1 && (*&self->_screenFlags & 0x10000) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_mainSceneBoundsForInterfaceOrientation:(int64_t)orientation
{
  [(UIScreen *)self _mainSceneReferenceBounds];
  v6 = v5;
  v8 = v7;
  Height = v9;
  v12 = v11;
  if (!self || ![(UIScreen *)self _isExternal]|| ![(UIScreen *)self _isMainLikeScreen])
  {
    if ((orientation - 3) > 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = Height;
    v18.size.height = v12;
    Width = CGRectGetWidth(v18);
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = Height;
    v19.size.height = v12;
    Height = CGRectGetHeight(v19);
    v12 = Width;
    goto LABEL_9;
  }

  if ((orientation - 3) <= 1 && (*&self->_screenFlags & 0x10000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v14 = v6;
  v15 = v8;
  v16 = Height;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_interfaceOrientedMainSceneBounds
{
  _interfaceOrientation = [(UIScreen *)self _interfaceOrientation];

  [(UIScreen *)self _mainSceneBoundsForInterfaceOrientation:_interfaceOrientation];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_applicationFrame
{
  _interfaceOrientation = [(UIScreen *)self _interfaceOrientation];

  [(UIScreen *)self _applicationFrameForInterfaceOrientation:_interfaceOrientation];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)_rotation
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  [(FBSDisplayConfiguration *)v3 nativeOrientation];
  v5 = v4;

  result = 6.28318531 - v5;
  if (v5 == 0.0)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)_imageOrientation
{
  [(UIScreen *)self _rotation];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(UIScreen *)self _rotation];
  *&v5 = v5;
  if (fabsf(*&v5 + -1.5708) < 0.00000011921)
  {
    return 3;
  }

  [(UIScreen *)self _rotation];
  *&v6 = v6;
  if (fabsf(*&v6 + -4.7124) >= 0.00000011921)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D920];
    [(UIScreen *)self _rotation];
    [v7 raise:v8 format:{@"Unsupported screen orientation: %f", v9}];
    return 0;
  }

  return 2;
}

- (CFTimeInterval)calibratedLatency
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  [(FBSDisplayConfiguration *)v3 latency];
  v5 = v4;

  return v5;
}

- (UIScreenMode)preferredMode
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (v3)
  {
    preferredMode = [(FBSDisplayConfiguration *)v3 preferredMode];
    v5 = [UIScreenMode _screenModeForDisplayMode:preferredMode mainScreen:[(UIScreen *)self _isMainScreen] actualDisplayScale:self->_scale];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCurrentMode:(UIScreenMode *)currentMode
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = currentMode;
  *&self->_screenFlags |= 0x10u;
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v5 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (!v4 || !v5)
  {
    goto LABEL_22;
  }

  v6 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:self];
  if (v6)
  {
    goto LABEL_21;
  }

  v17 = v4;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [UIScene _scenesIncludingInternal:1];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    v6 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v6 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      if ([v12 _hostsWindows])
      {
        v13 = v12;
        _screen = [v13 _screen];
        if (_screen == self && [v13 _isConnecting])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            _screen = v6;
            v6 = v13;
            goto LABEL_14;
          }
        }

        else
        {
LABEL_14:
        }

        continue;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
LABEL_20:

  v4 = v17;
LABEL_21:
  _displayMode = [(UIScreenMode *)v4 _displayMode];
  [_displayMode nativePixelSize];
  [(UIScreen *)v6 _setScreenRequestedDisplayNativePixelSize:?];

LABEL_22:
}

- (NSArray)availableModes
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  displayConfiguration = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (displayConfiguration)
  {
    availableDisplayModes = self->_availableDisplayModes;
    if (!availableDisplayModes)
    {
      [(UIScreen *)self _updateAvailableDisplayModes];
      availableDisplayModes = self->_availableDisplayModes;
    }

    array = [(NSArray *)availableDisplayModes copy];
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (void)setOverscanCompensation:(UIScreenOverscanCompensation)overscanCompensation
{
  v3 = overscanCompensation;
  v25 = *MEMORY[0x1E69E9840];
  self->_screenFlags = (*&self->_screenFlags & 0xFFFFFC7F | ((overscanCompensation & 3) << 8) | 0x80);
  v5 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:self];
  if (v5)
  {
    v6 = v5;
LABEL_3:
    v7 = 1;
    if (v3 == UIScreenOverscanCompensationInsetBounds)
    {
      v7 = 2;
    }

    if (v3 == UIScreenOverscanCompensationNone)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    [(UIScreen *)v6 _setScreenRequestedOverscanCompensation:v8];
    goto LABEL_29;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [UIScene _scenesIncludingInternal:1];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:buf count:16];
  if (!v10)
  {

    goto LABEL_26;
  }

  v11 = v10;
  v19 = v3;
  v6 = 0;
  v12 = *v21;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      if ([v14 _hostsWindows])
      {
        v15 = v14;
        _screen = [v15 _screen];
        if (_screen == self && [v15 _isConnecting])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            _screen = v6;
            v6 = v15;
            goto LABEL_19;
          }
        }

        else
        {
LABEL_19:
        }

        continue;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v20 objects:buf count:16];
  }

  while (v11);

  v3 = v19;
  if (v6)
  {
    goto LABEL_3;
  }

LABEL_26:
  v18 = *(__UILogGetCategoryCachedImpl("OverscanCompensation", &setOverscanCompensation____s_category) + 8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Requesting to set overscan compensation when we do not have a window scene", buf, 2u);
  }

  v6 = 0;
LABEL_29:
}

- (unsigned)_integerDisplayID
{
  displayIdentity = [(UIScreen *)self displayIdentity];
  displayID = [displayIdentity displayID];

  return displayID;
}

- (unsigned)_seed
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  cADisplay = [(FBSDisplayConfiguration *)v3 CADisplay];

  LODWORD(v3) = [cADisplay seed];
  return v3;
}

- (void)_limitedUIDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__UIScreen__limitedUIDidChange___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __32__UIScreen__limitedUIDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

- (void)_externalDeviceNightModeDidChange:(id)change
{
  nightMode = [(CARSession *)self->_carSession nightMode];
  bOOLValue = [nightMode BOOLValue];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__UIScreen__externalDeviceNightModeDidChange___block_invoke;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  v7 = bOOLValue;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_setCarPlayHumanPresenceInRange:(BOOL)range
{
  v11[1] = *MEMORY[0x1E69E9840];
  carPlayHumanPresenceStatus = self->_carPlayHumanPresenceStatus;
  if (((((carPlayHumanPresenceStatus & 4) == 0) ^ range) & 1) == 0)
  {
    rangeCopy = range;
    if (range)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_carPlayHumanPresenceStatus = carPlayHumanPresenceStatus & 0xFB | v6;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"IsCarPlayHumanPresenceInRange";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:rangeCopy];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"UIScreenCarPlayHumanPresenceDidChangeNotification" object:self userInfo:v9];
  }
}

- (void)_updateCarPlayCapabilitiesWithInteractionModels:(unint64_t)models primaryInteractionModel:(unint64_t)model touchLevel:(int64_t)level
{
  v15[3] = *MEMORY[0x1E69E9840];
  if ([(UIScreen *)self _isCarScreen]|| [(UIScreen *)self _isCarInstrumentsScreen])
  {
    v14[0] = @"UIScreenCapabilityInteractionModelsKey";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:models];
    v15[0] = v9;
    v14[1] = @"UIScreenCapabilityPrimaryInteractionModelKey";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:model];
    v15[1] = v10;
    v14[2] = @"UIScreenCapabilityTouchLevelsKey";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:level];
    v15[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

    capabilities = self->_capabilities;
    self->_capabilities = v12;
  }
}

- (BOOL)_expectsSecureRendering
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  expectsSecureRendering = [(FBSDisplayConfiguration *)v3 expectsSecureRendering];

  return expectsSecureRendering;
}

- (CADisplayLink)displayLinkWithTarget:(id)target selector:(SEL)sel
{
  v6 = target;
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v7 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  if (v7)
  {
    v8 = MEMORY[0x1E6979330];
    cADisplay = [(FBSDisplayConfiguration *)v7 CADisplay];
    v10 = [v8 displayLinkWithDisplay:cADisplay target:v6 selector:sel];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setReferenceDisplayModeStatus:(int64_t)status
{
  if ([(UIScreen *)self _isEmbeddedScreen])
  {
    referenceDisplayModeStatus = self->_referenceDisplayModeStatus;
    if (status || !referenceDisplayModeStatus)
    {
      self->_referenceDisplayModeStatus = status;
      if (referenceDisplayModeStatus != status)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"UIScreenReferenceDisplayModeStatusDidChangeNotification" object:self userInfo:0];
      }
    }
  }
}

- (CGFloat)currentEDRHeadroom
{
  displayIdentity = [(UIScreen *)self displayIdentity];
  v3 = displayIdentity;
  if (displayIdentity)
  {
    [displayIdentity displayID];
    CADisplayGetCurrentHeadroom();
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (void)_disconnectScreen
{
  v13 = *MEMORY[0x1E69E9840];
  *&self->_screenFlags &= ~0x40u;
  v3 = *(__UILogGetCategoryCachedImpl("UIScreen", &_disconnectScreen___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v6 = v3;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    selfCopy = [v4 stringWithFormat:@"<%@: %p>", v8, selfCopy];

    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting screen: %{public}@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIScreenDidDisconnectNotification" object:self userInfo:0];
  [defaultCenter postNotificationName:@"UIScreenDidDisconnectNotification" object:self userInfo:0];
  [(UIScreen *)self _invalidate];
}

- (id)_preventDisconnectionForReason:(uint64_t)reason
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason && (*(reason + 200) & 0x60) == 0x20)
  {
    if (!*(reason + 264))
    {
      v4 = objc_opt_new();
      v5 = *(reason + 264);
      *(reason + 264) = v4;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIScreen-%p-%lu", reason, ++qword_1ED49AB38];
    v7 = objc_alloc(MEMORY[0x1E698E778]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__UIScreen__preventDisconnectionForReason___block_invoke;
    v20[3] = &unk_1E710CDE0;
    v20[4] = reason;
    v8 = [v7 initWithIdentifier:v6 forReason:v3 queue:MEMORY[0x1E69E96A0] invalidationBlock:v20];
    [*(reason + 264) addObject:v8];
    v9 = *(__UILogGetCategoryCachedImpl("UIScreen", &qword_1ED49AB40) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AEC0];
      reasonCopy = reason;
      v12 = v9;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      reasonCopy = [v10 stringWithFormat:@"<%@: %p>", v14, reasonCopy];

      v16 = *(reason + 264);
      v17 = reasonCopy;
      v18 = [v16 count];
      *buf = 138543874;
      v22 = reasonCopy;
      v23 = 2048;
      v24 = v18;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Preventing disconnection of screen: %{public}@; assertionsCount: %lu; assertion: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __43__UIScreen__preventDisconnectionForReason___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    if (([*(v2 + 264) containsObject:v3] & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v16 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v17 = *(v2 + 264);
          *buf = 138412546;
          v19 = v3;
          v20 = 2112;
          v21 = v17;
          _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Attempting to remove untracked disconnectionPreventionAssertion: %@; _disconnectionPreventionAssertions: %@", buf, 0x16u);
        }
      }

      else
      {
        v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AB48) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v2 + 264);
          *buf = 138412546;
          v19 = v3;
          v20 = 2112;
          v21 = v15;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Attempting to remove untracked disconnectionPreventionAssertion: %@; _disconnectionPreventionAssertions: %@", buf, 0x16u);
        }
      }
    }

    v4 = *(__UILogGetCategoryCachedImpl("UIScreen", &qword_1ED49AB50) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v2;
      v7 = v4;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 stringWithFormat:@"<%@: %p>", v9, v6];

      v11 = *(v2 + 264);
      v12 = v10;
      v13 = [v11 count];
      *buf = 138543874;
      v19 = v10;
      v20 = 2048;
      v21 = v13;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Removing disconnectionPreventionAssertion from screen: %{public}@; assertionsCount: %lu; assertion: %{public}@; ", buf, 0x20u);
    }

    [*(v2 + 264) removeObject:v3];
    if (![*(v2 + 264) count] && (*(v2 + 200) & 0x40) != 0)
    {
      [v2 _disconnectScreen];
    }
  }
}

- (void)_resetUserInterfaceIdiom
{
  [(UIScreen *)self _updateUserInterfaceIdiom];

  [(UIScreen *)self _updateTraits];
}

- (void)_setUserInterfaceIdiom:(int64_t)idiom
{
  if ((idiom - 11) <= 0xFFFFFFFFFFFFFFF3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScreen.m" lineNumber:2488 description:{@"Invalid parameter not satisfying: %@", @"UIUserInterfaceIdiomFirst <= idiom && idiom <= UIUserInterfaceIdiomLast"}];
  }

  self->_userInterfaceIdiom = idiom;
  [UIView _performInitializationForIdiomIfNeccessary:idiom];

  [(UIScreen *)self _computeMetrics];
}

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  [(UIScreen *)self convertRect:space toCoordinateSpace:point.x, point.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  [(UIScreen *)self convertRect:space fromCoordinateSpace:point.x, point.y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v38 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  v10 = spaceCopy;
  if (spaceCopy && spaceCopy != self)
  {
    v11 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _screen = [(UIScreen *)v10 _screen];

      if (_screen != self)
      {
LABEL_7:
        if (os_variant_has_internal_diagnostics())
        {
          v14 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_13;
          }

          v40.origin.x = x;
          v40.origin.y = y;
          v40.size.width = width;
          v40.size.height = height;
          v15 = NSStringFromCGRect(v40);
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (oriented)", self];
          v29 = MEMORY[0x1E696AEC0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v31 = @"fixed";
          if (isKindOfClass)
          {
            v31 = @"oriented";
          }

          v20 = [v29 stringWithFormat:@"%@ (%@)", v10, v31];
          *buf = 138412802;
          v33 = v15;
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v20;
          _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Attempting to convert rect: %@ from %@ to %@, which is not a valid conversion; returning CGRectNull.", buf, 0x20u);
        }

        else
        {
          v13 = *(__UILogGetCategoryCachedImpl("Assert", &convertRect_toCoordinateSpace____s_category) + 8);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_14:
            x = *MEMORY[0x1E695F050];
            y = *(MEMORY[0x1E695F050] + 8);
            width = *(MEMORY[0x1E695F050] + 16);
            height = *(MEMORY[0x1E695F050] + 24);
            goto LABEL_17;
          }

          v14 = v13;
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v15 = NSStringFromCGRect(v39);
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (oriented)", self];
          v17 = MEMORY[0x1E696AEC0];
          objc_opt_class();
          v18 = objc_opt_isKindOfClass();
          v19 = @"fixed";
          if (v18)
          {
            v19 = @"oriented";
          }

          v20 = [v17 stringWithFormat:@"%@ (%@)", v10, v19];
          *buf = 138412802;
          v33 = v15;
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Attempting to convert rect: %@ from %@ to %@, which is not a valid conversion; returning CGRectNull.", buf, 0x20u);
        }

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
    }

    [(UIScreen *)v10 convertRect:self fromCoordinateSpace:x, y, width, height];
    x = v21;
    y = v22;
    width = v23;
    height = v24;
  }

LABEL_17:

  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v10 = spaceCopy;
  if (spaceCopy && spaceCopy != self)
  {
    v11 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {

LABEL_7:
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _screen = [(UIScreen *)v10 _screen];

      if (_screen != self)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [(UIScreen *)v10 convertRect:self toCoordinateSpace:x, y, width, height];
    x = v13;
    y = v14;
    width = v15;
    height = v16;
  }

LABEL_10:

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_defaultTraitCollectionForInterfaceOrientation:(int64_t)orientation
{
  [(UIScreen *)self _boundsForInterfaceOrientation:?];

  return [(UIScreen *)self _defaultTraitCollectionForInterfaceOrientation:orientation inBounds:?];
}

- (id)_defaultTraitCollectionForInterfaceOrientation:(int64_t)orientation inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = +[UIDevice currentDevice];
  v11 = +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [v10 userInterfaceIdiom]);

  v12 = [UITraitCollection _traitCollectionWithTintColor:v11];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__UIScreen__defaultTraitCollectionForInterfaceOrientation_inBounds___block_invoke;
  v15[3] = &unk_1E710CE08;
  v15[4] = self;
  v15[5] = orientation;
  *&v15[6] = x;
  *&v15[7] = y;
  *&v15[8] = width;
  *&v15[9] = height;
  v13 = [v12 traitCollectionByModifyingTraits:v15];

  return v13;
}

void __68__UIScreen__defaultTraitCollectionForInterfaceOrientation_inBounds___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  [v19 setUserInterfaceIdiom:*(*(a1 + 32) + 96)];
  v3 = *(a1 + 32);
  v4 = v3[12];
  [v3 scale];
  [v19 setDisplayScale:?];
  [v19 setDisplayGamut:*(*(a1 + 32) + 88)];
  if (*(a1 + 40))
  {
    [v19 setHorizontalSizeClass:{_UIUserInterfaceSizeClassForWidthAndUserInterfaceIdiomWithHomeButton(*(*(a1 + 32) + 96), +[UIDevice _hasHomeButton](UIDevice, "_hasHomeButton"), *(a1 + 64))}];
    v5 = *(*(a1 + 32) + 96);
    if (v5 <= 8)
    {
      if (((1 << v5) & 0x126) != 0)
      {
        v6 = 2;
LABEL_5:
        [v19 setVerticalSizeClass:v6];
        goto LABEL_6;
      }

      if (!v5)
      {
        v17 = *(a1 + 72);
        _UIScreenReferenceBoundsSizeForType(1uLL);
        if (v18 > v17)
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }

        goto LABEL_5;
      }
    }

    v6 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v7 = [*(a1 + 32) _capabilityForKey:@"UIScreenCapabilityInteractionModelsKey"];
  [v19 _setNSUIntegerValue:objc_msgSend(v7 forTraitToken:{"integerValue"), 0x1EFE32500}];

  v8 = [*(a1 + 32) _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
  [v19 _setNSIntegerValue:objc_msgSend(v8 forTraitToken:{"integerValue"), 0x1EFE324E8}];

  v9 = [*(a1 + 32) _capabilityForKey:@"UIScreenCapabilityPrimaryInteractionModelKey"];
  [v19 _setNSUIntegerValue:objc_msgSend(v9 forTraitToken:{"integerValue"), 0x1EFE32518}];

  [v19 _setNSIntegerValue:objc_msgSend(*(a1 + 32) forTraitToken:{"_artworkSubtype"), 0x1EFE32530}];
  [v19 setUserInterfaceStyle:{objc_msgSend(*(a1 + 32), "_effectiveUserInterfaceStyle")}];
  [v19 setLayoutDirection:{objc_msgSend(UIApp, "userInterfaceLayoutDirection")}];
  [v19 setForceTouchCapability:{objc_msgSend(*(a1 + 32), "_forceTouchCapability")}];
  v10 = +[UIContentSizeCategoryPreference system];
  v11 = [v10 preferredContentSizeCategory];

  if (v4 == 3)
  {
    v12 = +[UIContentSizeCategoryPreference system];
    v13 = [v12 preferredContentSizeCategoryCarPlay];

    v11 = v13;
  }

  [v19 setPreferredContentSizeCategory:v11];
  [*(a1 + 32) _traitCollectionDisplayCornerRadius];
  [v19 _setCGFloatValue:0x1EFE32548 forTraitToken:?];
  v14 = _AXSEnhanceTextLegibilityEnabled();
  if (v4 == 3)
  {
    v14 = _AXSCarPlayEnhanceTextLegibilityEnabled();
  }

  [v19 setLegibilityWeight:v14 != 0];
  [v19 _setNSIntegerValue:1 forTraitToken:0x1EFE32560];
  [v19 _setNSIntegerValue:1 forTraitToken:0x1EFE32578];
  [v19 _setNSIntegerValue:0 forTraitToken:0x1EFE32590];
  [v19 setAccessibilityContrast:_AXDarkenSystemColors() != 0];
  [v19 _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];
  [v19 setUserInterfaceLevel:0];
  [v19 setActiveAppearance:1];
  [v19 _setNSIntegerValue:-1 forTraitToken:0x1EFE32608];
  [*(a1 + 32) _updateCornerProviderWithTraitCollection:v19];
  [*(a1 + 32) _applyDefaultViewMaskingTraits:v19];
  v15 = +[_UIHDRUsageCoordinator sharedInstance];
  [*(a1 + 32) potentialEDRHeadroom];
  [(_UIHDRUsageCoordinator *)v15 applyRangeForHeadroom:v19 toMutableTraits:v16];

  [v19 _setNSIntegerValue:0 forTraitToken:0x1EFE325D8];
}

- (void)_setUserInterfaceStyleIfNecessary:(int64_t)necessary firstTimeOnly:(BOOL)only
{
  onlyCopy = only;
  if (![(UIScreen *)self _isMainLikeScreen]|| ((v7 = _UIInternalPreferenceUsesDefault(&dword_1ED48B1F8, @"ApplySceneUserInterfaceStyleToScreen", _UIInternalPreferenceUpdateBool), byte_1ED48B1FC) ? (v8 = 1) : (v8 = v7), !necessary || !v8))
  {
    if ((_UIInternalPreferenceUsesDefault(&dword_1ED48B200, @"ApplySceneUserInterfaceStyleToCarScreen", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48B204)
    {
      return;
    }

    if ([(UIScreen *)self _isCarScreen])
    {
      if (!necessary)
      {
        return;
      }
    }

    else
    {
      _isCarInstrumentsScreen = [(UIScreen *)self _isCarInstrumentsScreen];
      if (!necessary || !_isCarInstrumentsScreen)
      {
        return;
      }
    }
  }

  if (!onlyCopy || !self->_lastUpdatedSceneUserInterfaceStyle)
  {
    self->_lastUpdatedSceneUserInterfaceStyle = necessary;

    [(UIScreen *)self _updateTraits];
  }
}

- (void)_setDefaultTraitCollection:(id)collection
{
  collectionCopy = collection;
  defaultTraitCollection = self->_defaultTraitCollection;
  if (defaultTraitCollection != collectionCopy)
  {
    v11 = collectionCopy;
    v7 = [(UITraitCollection *)defaultTraitCollection isEqual:collectionCopy];
    collectionCopy = v11;
    if (!v7)
    {
      overrideTraitCollection = self->_overrideTraitCollection;
      if (!overrideTraitCollection)
      {
        overrideTraitCollection = v11;
      }

      v9 = overrideTraitCollection;
      if ([(UIScreen *)self _isMainScreen])
      {
        os_unfair_lock_lock(&_UIMainScreenTraitCollectionLock);
        objc_storeStrong(&self->_defaultTraitCollection, collection);
        os_unfair_lock_unlock(&_UIMainScreenTraitCollectionLock);
      }

      else
      {
        objc_storeStrong(&self->_defaultTraitCollection, collection);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"_UIScreenDefaultTraitCollectionDidChangeNotification" object:self userInfo:0];
      [(UIScreen *)self _notifyTraitsChangedAndPropagate];
      collectionCopy = v11;
    }
  }
}

- (void)_setOverrideTraitCollection:(id)collection
{
  collectionCopy = collection;
  overrideTraitCollection = self->_overrideTraitCollection;
  if (overrideTraitCollection != collectionCopy)
  {
    v10 = collectionCopy;
    v7 = [(UITraitCollection *)overrideTraitCollection isEqual:collectionCopy];
    collectionCopy = v10;
    if (!v7)
    {
      defaultTraitCollection = v10;
      if (!v10)
      {
        defaultTraitCollection = self->_defaultTraitCollection;
      }

      v9 = defaultTraitCollection;
      if ([(UIScreen *)self _isMainScreen])
      {
        os_unfair_lock_lock(&_UIMainScreenTraitCollectionLock);
        objc_storeStrong(&self->_overrideTraitCollection, collection);
        os_unfair_lock_unlock(&_UIMainScreenTraitCollectionLock);
      }

      else
      {
        objc_storeStrong(&self->_overrideTraitCollection, collection);
      }

      [(UIScreen *)self _notifyTraitsChangedAndPropagate];

      collectionCopy = v10;
    }
  }
}

- (id)_capabilityForKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    _capabilities = [(UIScreen *)self _capabilities];
    v6 = [_capabilities objectForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setCapability:(id)capability forKey:(id)key
{
  if (capability && key)
  {
    keyCopy = key;
    capabilityCopy = capability;
    _capabilities = [(UIScreen *)self _capabilities];
    v12 = _capabilities;
    if (_capabilities)
    {
      v9 = [_capabilities mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = v9;
    [(NSDictionary *)v9 setObject:capabilityCopy forKey:keyCopy];

    capabilities = self->_capabilities;
    self->_capabilities = v10;

    [(UIScreen *)self _computeMetrics];
  }
}

- (void)_setExternalDeviceShouldInputText:(BOOL)text
{
  textCopy = text;
  v18 = *MEMORY[0x1E69E9840];
  if ([(UIScreen *)self _userInterfaceIdiom]== 3)
  {
    traitCollection = [(UIScreen *)self traitCollection];
    primaryInteractionModel = [traitCollection primaryInteractionModel];

    if (primaryInteractionModel != 8)
    {
      inputDeviceManager = [(CARSession *)self->_carSession inputDeviceManager];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      inputDevices = [inputDeviceManager inputDevices];
      v9 = [inputDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(inputDevices);
            }

            [(CARSession *)self->_carSession setInputMode:textCopy forInputDevice:*(*(&v13 + 1) + 8 * v12++)];
          }

          while (v10 != v12);
          v10 = [inputDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

+ (id)__displayConfigurationsForViewService
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = +[UIScreen _screens];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 _isMainScreen] & 1) == 0 && (!objc_msgSend(UIApp, "_isSpringBoard") || (objc_msgSend(v8, "_isCarScreen") & 1) == 0))
        {
          displayConfiguration = [v8 displayConfiguration];
          [array addObject:displayConfiguration];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [array copy];

  return v10;
}

- (id)fbsDisplay
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);

  return v3;
}

- (id)_eventDisplay
{
  eventDisplay = self->__eventDisplay;
  if (!eventDisplay)
  {
    _displayID = [(UIScreen *)self _displayID];
    if (_displayID)
    {
      [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:_displayID];
    }

    else
    {
      [MEMORY[0x1E698E3C8] builtinDisplay];
    }
    v5 = ;
    v6 = self->__eventDisplay;
    self->__eventDisplay = v5;

    eventDisplay = self->__eventDisplay;
  }

  return eventDisplay;
}

- (BOOL)_isWorkspaceCapable
{
  if ([(UIScreen *)self _isMainLikeScreen])
  {
    return 1;
  }

  os_unfair_lock_lock(&unk_1ED49AAE8);
  v4 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  isCarDisplay = [(FBSDisplayConfiguration *)v4 isCarDisplay];

  return isCarDisplay;
}

- (BOOL)_isUserInterfaceLimited:(unint64_t)limited
{
  if ([(UIScreen *)self _userInterfaceIdiom]!= 3)
  {
    return 0;
  }

  limitUserInterfaces = [(CARSession *)self->_carSession limitUserInterfaces];
  bOOLValue = [limitUserInterfaces BOOLValue];

  if (!bOOLValue)
  {
    return 0;
  }

  configuration = [(CARSession *)self->_carSession configuration];
  limitableUserInterfaces = [configuration limitableUserInterfaces];

  return (limitableUserInterfaces & limited) != 0;
}

- (BOOL)_isCarPlayNightModeEnabled
{
  if ([(UIScreen *)self _userInterfaceIdiom]== 3)
  {
    return (*(&self->_screenFlags + 1) >> 6) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)_display
{
  os_unfair_lock_lock(&unk_1ED49AAE8);
  v3 = self->__displayConfiguration;
  os_unfair_lock_unlock(&unk_1ED49AAE8);
  cADisplay = [(FBSDisplayConfiguration *)v3 CADisplay];

  return cADisplay;
}

- (id)_lazySoftwareDimmingWindow
{
  _softwareDimmingWindow = [(UIScreen *)self _softwareDimmingWindow];
  if (!_softwareDimmingWindow)
  {
    v4 = [UISoftwareDimmingWindow alloc];
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    _softwareDimmingWindow = [(UISoftwareDimmingWindow *)v4 initWithFrame:?];

    [(UIScreen *)self _setSoftwareDimmingWindow:_softwareDimmingWindow];
    [(UIWindow *)_softwareDimmingWindow setHidden:0];
  }

  return _softwareDimmingWindow;
}

- (float)rawBrightnessForBacklightLevel:(float)level
{
  _softwareDimmingWindow = [(UIScreen *)self _softwareDimmingWindow];
  [_softwareDimmingWindow overlayLevel];
  v6 = v5 + level;

  return v6;
}

- (void)_endObservingBacklightLevelNotifications
{
  if ([(UIScreen *)self _isEmbeddedScreen])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"UIBacklightLevelChangedNotification", 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = *MEMORY[0x1E69E4DD8];

    CFNotificationCenterRemoveObserver(v4, self, v5, 0);
  }
}

- (void)setBrightness:(CGFloat)brightness
{
  v36[3] = *MEMORY[0x1E69E9840];
  if ([(UIScreen *)self _supportsBrightness])
  {
    v5 = brightness;
    v6 = 0.0;
    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    if (v5 <= 1.0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = +[UIDevice currentDevice];
    [v8 _backlightLevel];
    v10 = v9;

    v11 = +[UIDevice currentDevice];
    [v11 _softwareDimmingAlpha];
    v13 = v12;

    *&v14 = v10;
    [(UIScreen *)self rawBrightnessForBacklightLevel:v14];
    v16 = v13 + 1.0;
    v17 = (v13 + v15) / v16;
    if (v7 != v17)
    {
      v18 = v16 * v7 - v13;
      *&v18 = v18;
      if (self->_wantsSoftwareDimming)
      {
        v19 = *&v18;
      }

      else
      {
        v19 = v7;
      }

      if (v19 >= 0.0)
      {
        v6 = v19;
      }

      if (v6 != v10)
      {
        *&v18 = v6;
        [(UIScreen *)self _setLastNotifiedBacklightLevel:v18];
        v20 = +[UIDevice currentDevice];
        *&v21 = v6;
        [v20 _setBacklightLevel:v21];

        v35[0] = @"CurrLevel";
        *&v22 = v6;
        v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
        v36[0] = v23;
        v35[1] = @"PrevLevel";
        *&v24 = v10;
        v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        v36[1] = v25;
        v35[2] = @"Timestamp";
        date = [MEMORY[0x1E695DF00] date];
        v36[2] = date;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

        PLLogRegisteredEvent();
      }

      if (v19 < 0.0)
      {
        _lazySoftwareDimmingWindow = [(UIScreen *)self _lazySoftwareDimmingWindow];
        *&v29 = v19;
        [_lazySoftwareDimmingWindow setOverlayLevel:v29];

        _lazySoftwareDimmingWindow2 = [(UIScreen *)self _lazySoftwareDimmingWindow];
        [_lazySoftwareDimmingWindow2 setHidden:0];
LABEL_17:

        return;
      }

      _softwareDimmingWindow = [(UIScreen *)self _softwareDimmingWindow];

      if (_softwareDimmingWindow)
      {
        _softwareDimmingWindow2 = [(UIScreen *)self _softwareDimmingWindow];
        [_softwareDimmingWindow2 setHidden:1];

        [(UIScreen *)self _setSoftwareDimmingWindow:0];
      }
    }
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      _lazySoftwareDimmingWindow2 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(_lazySoftwareDimmingWindow2, OS_LOG_TYPE_FAULT))
      {
        *v34 = 0;
        _os_log_fault_impl(&dword_188A29000, _lazySoftwareDimmingWindow2, OS_LOG_TYPE_FAULT, "The brightness property is only supported by the main screen.", v34, 2u);
      }

      goto LABEL_17;
    }

    v31 = *(__UILogGetCategoryCachedImpl("Assert", &setBrightness____s_category) + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v34 = 0;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "The brightness property is only supported by the main screen.", v34, 2u);
    }
  }
}

- (CGFloat)brightness
{
  if ([(UIScreen *)self _supportsBrightness])
  {
    wantsSoftwareDimming = self->_wantsSoftwareDimming;
    v4 = +[UIDevice currentDevice];
    [v4 _backlightLevel];
    if (wantsSoftwareDimming)
    {
      [(UIScreen *)self rawBrightnessForBacklightLevel:?];
      v7 = v6;
      v8 = +[UIDevice currentDevice];
      [v8 _softwareDimmingAlpha];
      v10 = (v7 + v9) / (v9 + 1.0);
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v14 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "The brightness property is only supported by the main screen.", buf, 2u);
    }

    return -1.0;
  }

  else
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &brightness___s_category) + 8);
    v11 = -1.0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "The brightness property is only supported by the main screen.", v15, 2u);
    }
  }

  return v11;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIScreen *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(UIScreen *)self bounds];
  v4 = [v3 appendRect:@"bounds" withName:?];
  currentMode = [(UIScreen *)self currentMode];
  if (currentMode)
  {
    v6 = [v3 appendObject:currentMode withName:@"mode"];
  }

  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FakeMainScreen, @"FakeMainScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1EC)
  {
    v7 = [v3 appendBool:-[UIScreen _isMainScreen](self withName:{"_isMainScreen"), @"isMainScreen"}];
    v8 = [v3 appendBool:self->_isFakeScreen withName:@"isFakeScreen"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIScreen *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIScreen *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  [(UIScreen *)self bounds];
  v7 = [v6 appendRect:@"bounds" withName:?];
  currentMode = [(UIScreen *)self currentMode];
  if (currentMode)
  {
    v9 = [v6 appendObject:currentMode withName:@"mode"];
  }

  if (has_internal_diagnostics)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__UIScreen_descriptionBuilderWithMultilinePrefix___block_invoke;
    v12[3] = &unk_1E70F35B8;
    v13 = v6;
    selfCopy = self;
    v10 = [v13 modifyBody:v12];
  }

  return v6;
}

void __50__UIScreen_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIScreen_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __50__UIScreen_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayIdentity];
  v4 = [v2 appendObject:v3 withName:@"displayIdentity"];

  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"_isMainLikeScreen"), @"isMainLikeScreen"}];
  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"_isExternal"), @"isExternal"}];
  v7 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 200) >> 5) & 1 withName:@"connected"];
  v8 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 200) >> 6) & 1 withName:@"needsDisconnection"];
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FakeMainScreen, @"FakeMainScreen", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48B1EC)
  {
    v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 208) withName:@"isFakeScreen"];
  }

  v10 = [*(a1 + 32) ui_appendReferenceDisplayModeStatus:objc_msgSend(*(a1 + 40) withName:"referenceDisplayModeStatus") skipIfNotSupported:{@"referenceDisplayModeStatus", 1}];
  v11 = [*(a1 + 32) ui_appendUserInterfaceIdiom:objc_msgSend(*(a1 + 40) withName:{"_userInterfaceIdiom"), @"userInterfaceIdiom"}];
  v12 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"_interfaceOrientation"), @"interfaceOrientation"}];
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v14 && [*(a1 + 40) _isExternal] && objc_msgSend(v14, "_isMainLikeScreen") && (v14[202] & 1) == 0;
  v16 = [v13 appendBool:v15 withName:@"ignoresOrientationForBounds"];
  v17 = *(a1 + 40);
  if (v17[33])
  {
    v18 = *(a1 + 32);
    v19 = [v18 activeMultilinePrefix];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __50__UIScreen_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v26 = &unk_1E70F35B8;
    v22 = *(a1 + 32);
    v20 = v22.i64[0];
    v27 = vextq_s8(v22, v22, 8uLL);
    [v18 appendBodySectionWithName:@"disconnectionPreventionAssertions" multilinePrefix:v19 block:&v23];

    v17 = *(a1 + 40);
  }

  return [*(a1 + 32) appendBool:objc_msgSend(v17 withName:"isCaptured" ifEqualTo:{*&v22, v23, v24, v25, v26), @"captured", 1}];
}

void __50__UIScreen_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 264);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) appendObject:*(*(&v8 + 1) + 8 * v6++) withName:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (CGPoint)convertPoint:(CGPoint)point toView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v8 = window;
  [window convertPoint:0 fromWindow:{x, y}];
  [viewCopy convertPoint:0 fromView:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

+ (CGPoint)convertPoint:(CGPoint)point fromView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v8 = window;
  [viewCopy convertPoint:0 toView:{x, y}];
  [v8 convertPoint:0 toWindow:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

+ (CGRect)convertRect:(CGRect)rect toView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v10 = window;
  [window convertRect:0 fromWindow:{x, y, width, height}];
  [viewCopy convertRect:0 fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (CGRect)convertRect:(CGRect)rect fromView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = viewCopy;
  }

  else
  {
    window = [viewCopy window];
  }

  v10 = window;
  [viewCopy convertRect:0 toView:{x, y, width, height}];
  [v10 convertRect:0 toWindow:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)_snapshotExcludingWindows:(id)windows withRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  windowsCopy = windows;
  v10 = MEMORY[0x1E695DF70];
  v11 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:self];
  v12 = [v10 arrayWithArray:v11];

  if (windowsCopy && [windowsCopy count])
  {
    [v12 removeObjectsInArray:windowsCopy];
  }

  v13 = _UISnapshotWindowsCompatibilityRect(v12, self, x, y, width, height);

  return v13;
}

- (double)_nativeScaleWithLevel:(unint64_t)level
{
  if ([(UIScreen *)self _isMainScreen]|| self && (*(&self->_screenFlags + 2) & 1) != 0)
  {
    [(UIScreen *)self _nativeDisplayBounds];
    return v5 / self->_unjailedReferenceBounds.size.width;
  }

  else
  {

    [(UIScreen *)self scale];
  }

  return result;
}

- (id)_preferredFocusedWindowScene
{
  _preferredFocusedWindow = [(UIScreen *)self _preferredFocusedWindow];
  windowScene = [_preferredFocusedWindow windowScene];

  return windowScene;
}

- (UIFocusSystem)_focusSystem
{
  selfCopy = self;
  if (_screenBasedFocusUnsupported())
  {
    focusSystem = 0;
  }

  else
  {
    _preferredFocusedWindowScene = [(UIScreen *)selfCopy _preferredFocusedWindowScene];
    focusSystem = [_preferredFocusedWindowScene focusSystem];
  }

  return focusSystem;
}

- (void)setFocusEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  if (_screenBasedFocusUnsupported())
  {
    focusSystem = 0;
  }

  else
  {
    _preferredFocusedWindowScene = [(UIScreen *)selfCopy _preferredFocusedWindowScene];
    focusSystem = [_preferredFocusedWindowScene focusSystem];
  }

  [focusSystem _setEnabled:enabledCopy];
}

- (id)focusedItem
{
  selfCopy = self;
  if (_screenBasedFocusUnsupported())
  {
    focusSystem = 0;
  }

  else
  {
    _preferredFocusedWindowScene = [(UIScreen *)selfCopy _preferredFocusedWindowScene];
    focusSystem = [_preferredFocusedWindowScene focusSystem];
  }

  focusedItem = [focusSystem focusedItem];

  return focusedItem;
}

- (UIView)focusedView
{
  selfCopy = self;
  if (_screenBasedFocusUnsupported())
  {
    focusSystem = 0;
  }

  else
  {
    _preferredFocusedWindowScene = [(UIScreen *)selfCopy _preferredFocusedWindowScene];
    focusSystem = [_preferredFocusedWindowScene focusSystem];
  }

  focusedItem = [focusSystem focusedItem];
  v6 = _UIFocusEnvironmentContainingView(focusedItem);

  return v6;
}

- (BOOL)supportsFocus
{
  if (_screenBasedFocusUnsupported())
  {
    return 0;
  }

  _preferredFocusedWindowScene = [(UIScreen *)self _preferredFocusedWindowScene];
  if (!_preferredFocusedWindowScene)
  {
    _preferredFocusedWindowScene = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:self];
  }

  v5 = _UIFocusBehaviorForScene(_preferredFocusedWindowScene);
  v6 = [v5 wantsFocusSystemForScene:_preferredFocusedWindowScene];

  return v6;
}

- (NSArray)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = __UIFocusEnvironmentPreferredFocusedView(self, 0);
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (UIFocusItemContainer)focusItemContainer
{
  if (_screenBasedFocusUnsupported())
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setNeedsFocusUpdate
{
  v4 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
  _focusSystem = [(UIScreen *)self _focusSystem];
  [_focusSystem _requestFocusUpdate:v4];
}

- (void)updateFocusIfNeeded
{
  _focusSystem = [(UIScreen *)self _focusSystem];
  [_focusSystem updateFocusIfNeeded];
}

- (void)_setNeedsNonDeferredFocusUpdate
{
  v3 = [_UIFocusUpdateRequest alloc];
  _focusSystem = [(UIScreen *)self _focusSystem];
  v6 = [(_UIFocusUpdateRequest *)v3 initWithEnvironment:_focusSystem];

  [(_UIFocusUpdateRequest *)v6 setAllowsDeferral:0];
  _focusSystem2 = [(UIScreen *)self _focusSystem];
  [_focusSystem2 _requestFocusUpdate:v6];
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  if (_screenBasedFocusUnsupported())
  {
    array = MEMORY[0x1E695E0F0];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(UIScreen *)self _userInterfaceIdiom]== 3)
    {
      _preferredFocusedWindow = [(UIScreen *)self _preferredFocusedWindow];
      if (_preferredFocusedWindow)
      {
        [array addObject:_preferredFocusedWindow];
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            screen = [v15 screen];

            if (screen == self)
            {
              _focusSystemSceneComponent = [v15 _focusSystemSceneComponent];
              v18 = _focusSystemSceneComponent;
              if (_focusSystemSceneComponent)
              {
                focusSystem = [_focusSystemSceneComponent focusSystem];
                focusItemContainer = [focusSystem focusItemContainer];
                v21 = [focusItemContainer focusItemsInRect:{x, y, width, height}];
                [array addObjectsFromArray:v21];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }
    }
  }

  return array;
}

- (_UIDragManager)_dragManager
{
  if (!self->_dragManager && [(UIScreen *)self _supportsDragging])
  {
    v3 = [[_UIDragManager alloc] initWithScreen:self];
    dragManager = self->_dragManager;
    self->_dragManager = v3;
  }

  v5 = self->_dragManager;

  return v5;
}

- (BOOL)_supportsDragging
{
  _userInterfaceIdiom = [(UIScreen *)self _userInterfaceIdiom];
  if (_userInterfaceIdiom - 5 < 2)
  {
    return 1;
  }

  if (_userInterfaceIdiom > 1)
  {
    return 0;
  }

  return [(UIScreen *)self _isMainLikeScreen];
}

- (_UIInteractiveHighlightEnvironment)_interactiveHighlightEnvironment
{
  interactiveHighlightEnvironment = self->_interactiveHighlightEnvironment;
  if (!interactiveHighlightEnvironment)
  {
    v4 = [[_UIInteractiveHighlightEnvironment alloc] initWithContainerScreen:self];
    v5 = self->_interactiveHighlightEnvironment;
    self->_interactiveHighlightEnvironment = v4;

    interactiveHighlightEnvironment = self->_interactiveHighlightEnvironment;
  }

  return interactiveHighlightEnvironment;
}

- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v7 = [v6 ui_appendInterfaceOrientation:-[UIScreen _interfaceOrientation](self withName:{"_interfaceOrientation"), @"orientation"}];
  [(UIScreen *)self applicationFrame];
  v8 = [v6 appendRect:@"applicationFrame" withName:?];

  return v6;
}

- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIScreen *)self _orientationDebugDescriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)_appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:(void *)needed
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (needed)
  {
    _snapshotDisplaySystemIdentifier = [(UIScreen *)needed _snapshotDisplaySystemIdentifier];
    if (_snapshotDisplaySystemIdentifier)
    {
      v5 = *MEMORY[0x1E6979F70];
      v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6979F70]];

      if (!v6)
      {
        v10 = v5;
        v11[0] = _snapshotDisplaySystemIdentifier;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
        v8 = [v3 bs_dictionaryByAddingEntriesFromDictionary:v7];

        v3 = v8;
      }
    }

    v3 = v3;

    needed = v3;
  }

  return needed;
}

- (id)_snapshotDisplaySystemIdentifier
{
  if (self)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__UIScreen_SnapshottingSupport___snapshotDisplaySystemIdentifier__block_invoke;
    v5[3] = &unk_1E70F44A8;
    v5[4] = self;
    v1 = [_UISceneLifecycleMultiplexer mostActiveSceneIncludingInternal:1 withTest:v5];
    renderingEnvironment = [v1 renderingEnvironment];
    systemDisplayIdentifier = [renderingEnvironment systemDisplayIdentifier];
  }

  else
  {
    systemDisplayIdentifier = 0;
  }

  return systemDisplayIdentifier;
}

BOOL __65__UIScreen_SnapshottingSupport___snapshotDisplaySystemIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _hostsWindows])
  {
    v4 = v3;
    v5 = [v4 _screen];
    if (v5 == *(a1 + 32))
    {
      v7 = [v4 renderingEnvironment];
      v8 = [v7 systemDisplayIdentifier];
      v6 = v8 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end