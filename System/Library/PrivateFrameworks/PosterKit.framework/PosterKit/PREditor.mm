@interface PREditor
- (BOOL)_cancelAndAcceptButtonsRequireNavigationBar;
- (BOOL)_editorDynamicRotationIsActive;
- (BOOL)allowsHitTestingInRootViewController;
- (BOOL)areComplicationsAllowed;
- (BOOL)areControlsHidden;
- (BOOL)areMotionEffectsDisabled;
- (BOOL)displaysHeaderElements;
- (BOOL)displaysRootViewController;
- (BOOL)displaysSubtitleElement;
- (BOOL)fontAndColorPickerViewController:(id)controller shouldShowFontConfiguration:(id)configuration;
- (BOOL)fontAndContentStylePickerViewController:(id)controller shouldShowFontConfiguration:(id)configuration;
- (BOOL)isDepthEffectDisabled;
- (BOOL)isDepthEffectDisallowedForReason:(id)reason;
- (BOOL)isDepthEffectEffectivelyDisabled;
- (BOOL)isDepthEffectEnabled;
- (BOOL)isLifecycleTiedToInitiallyPresentedViewController;
- (BOOL)needsCustomViewControllerPresentationManager;
- (BOOL)presentsViewControllersRemotely;
- (BOOL)shouldApplyTitleStyleAcrossAllLooksFromConfiguredTitleStyleConfiguration:(id)configuration;
- (BOOL)shouldIgnorePreviouslyConfiguredTitleStyleConfiguration;
- (BOOL)viewsHaveASubview;
- (CGRect)horizontalTitleBoundingRect;
- (CGRect)leadingTopButtonFrame;
- (CGRect)safeAreaBounds;
- (CGRect)trailingTopButtonFrame;
- (CGRect)verticalTitleBoundingRect;
- (NSMutableSet)depthEffectDisallowedReasons;
- (NSString)debugDescription;
- (PREditor)initWithDelegate:(id)delegate;
- (PREditor)initWithScene:(id)scene;
- (UIAction)togglingMotionEffectsAction;
- (UIAction)togglingPerspectiveZoomAction;
- (UIEdgeInsets)_windowSafeAreaInsets;
- (UIEdgeInsets)editingChromeDodgingInsets;
- (UIMenu)appearanceMenu;
- (UIMenu)depthEffectMenu;
- (id)_acquireModalPresentationAssertionForReason:(id)reason;
- (id)_contentLuminanceValuesForCurrentLooks;
- (id)_defaultLuminanceValuesForLooks:(id)looks initialLook:(id)look initialLookLuminanceValue:(double)value;
- (id)_hostProcessHandle;
- (id)_refetchLooks;
- (id)_refetchLooksForProperties;
- (id)_refreshLuminanceValuesForCurrentPerLookLuminanceValues:(id)values;
- (id)_selectableTimeFontConfigurationForProposedTimeFontConfiguration:(id)configuration;
- (id)_settingsDiffActionsForScene:(id)scene;
- (id)actionsMenuWithChildren:(id)children;
- (id)additionalFontConfigurationsForFontAndColorPickerViewController:(id)controller;
- (id)additionalFontConfigurationsForFontAndContentStylePickerViewController:(id)controller;
- (id)coordinatorForContentStyle:(id)style forAmbientStylePicker:(id)picker;
- (id)defaultTitleStyleConfigurationForLook:(id)look;
- (id)delegateSafeForCallbackType:(int64_t)type;
- (id)disableSwitchingLooksForReason:(id)reason;
- (id)effectiveTitleStyleConfigurationForLook:(id)look;
- (id)extensionBundle;
- (id)extensionBundleURL;
- (id)homeScreenConfigurationWithPosterProvidedColorConfigurations;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)viewControllerForPresentingViewControllersCreatingIfNecessary:(BOOL)necessary;
- (int64_t)editingIdiom;
- (unint64_t)backgroundTypeForLuminance:(double)luminance;
- (unint64_t)effectiveMotionEffectsMode;
- (unint64_t)supportedMotionEffectsMode;
- (unint64_t)timeViewControllerDisplayedElements;
- (void)_acquireModalPresentationAssertionForViewController:(id)controller;
- (void)_applyStylePropertiesFromConfiguredProperties:(id)properties toConfiguredProperties:(id)configuredProperties forLook:(id)look;
- (void)_finalizeAdaptiveTimeParameters:(id)parameters;
- (void)_handleTitleStyleEditorChange:(id)change;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_preferencesDidUpdateFrom:(id)from to:(id)to;
- (void)_presentFontAndColorPickerWithPrompt:(id)prompt titleStyleConfiguration:(id)configuration colorPickerConfiguration:(id)pickerConfiguration usingPopoverPresentation:(BOOL)presentation popoverSourceItem:(id)item popoverDirection:(unint64_t)direction changeHandler:(id)handler;
- (void)_presentFontAndContentStylePickerWithPrompt:(id)prompt titleStyleConfiguration:(id)configuration contentStylePickerConfiguration:(id)pickerConfiguration usingPopoverPresentation:(BOOL)presentation popoverSourceItem:(id)item popoverDirection:(unint64_t)direction changeHandler:(id)handler;
- (void)_rebuildRootViewController;
- (void)_refetchLooksAndBuildUI;
- (void)_refetchLooksForProperties;
- (void)_refreshDefaultTitleStyleConfigurationsForLooks:(id)looks luminanceForLooks:(id)forLooks initialLook:(id)look configuredTitleStyleConfiguration:(id)configuration;
- (void)_setDepthEffectDisallowed:(BOOL)disallowed;
- (void)_toggleMotionEffects;
- (void)_updateAppearance:(int64_t)appearance;
- (void)_updateConfiguredProperties:(id)properties forPreferredTimeMaxY:(double)y orientations:(unint64_t)orientations;
- (void)_updateForPreferredTimeMaxY:(double)y orientations:(unint64_t)orientations;
- (void)_updatePresentingModalViewController;
- (void)_updateUserInterfaceStyleIfNeeded;
- (void)ambientEditingTitledViewControllerWantsToClose:(id)close;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)createColorVariationStoreIfNeeded;
- (void)dealloc;
- (void)didFinishTransitionToLook:(id)look;
- (void)didPresentViewController:(id)controller;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)fontAndColorPickerViewController:(id)controller didUpdateDesiredDetent:(double)detent;
- (void)fontAndColorPickerViewControllerDidFinish:(id)finish;
- (void)fontAndContentStylePickerViewController:(id)controller didUpdateDesiredDetent:(double)detent;
- (void)fontAndContentStylePickerViewControllerDidFinish:(id)finish;
- (void)handleNotificationForwardAction:(id)action;
- (void)handleRenderingServiceEndpointDidChangeAction:(id)action;
- (void)invalidateAllLookSwitchingAssertions;
- (void)invalidateAllPresentationAssertionsByViewController;
- (void)makeViewControllerForRemoteViewControllerPresentations;
- (void)presentAmbientColorPickerWithConfiguration:(id)configuration changeHandler:(id)handler;
- (void)presentAmbientContentStylePickerWithConfiguration:(id)configuration changeHandler:(id)handler;
- (void)presentColorPickerWithConfiguration:(id)configuration changeHandler:(id)handler;
- (void)presentColorPickerWithPrompt:(id)prompt suggestedColors:(id)colors selectedColor:(id)color changeHandler:(id)handler;
- (void)presentContentStylePickerWithConfiguration:(id)configuration changeHandler:(id)handler;
- (void)presentTimeStyleEditor;
- (void)presentTitledViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentedViewControllerDismissalDidEnd:(id)end;
- (void)presentedViewControllerDismissalWillBegin:(id)begin;
- (void)removeLookSwitchingAssertion:(id)assertion;
- (void)requestDismissalWithAction:(int64_t)action;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setAlternateDateEnabled:(BOOL)enabled;
- (void)setComplicationRowAtBottom:(BOOL)bottom;
- (void)setComplicationsVibrancyConfiguration:(id)configuration;
- (void)setCoveredByHostModalPresentation:(BOOL)presentation;
- (void)setCurrentLook:(id)look;
- (void)setDepthEffectDisallowed:(BOOL)disallowed forReason:(id)reason;
- (void)setDepthEffectEnabled:(BOOL)enabled;
- (void)setEditingFocusActive:(BOOL)active;
- (void)setHorizontalTitleBoundingRect:(CGRect)rect;
- (void)setInlineComplicationConfigured:(BOOL)configured;
- (void)setLooksScrollingDecelerationRate:(double)rate;
- (void)setOverrideDate:(id)date;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)setPerspectiveZoomEnabled:(BOOL)enabled;
- (void)setPresentingComplicationGallery:(BOOL)gallery;
- (void)setPresentingModalViewController:(BOOL)controller;
- (void)setRootViewController:(id)controller;
- (void)setShowsEditingReticles:(BOOL)reticles;
- (void)setTitleString:(id)string;
- (void)setUserInterfaceStyleLuminanceThreshold:(id)threshold;
- (void)setVerticalTitleBoundingRect:(CGRect)rect;
- (void)toggleDepthEffect;
- (void)updateActions;
- (void)updateEditorWithInjectedEditingSettings:(id)settings;
- (void)updateHostForTitleReticleFrameChanged:(CGRect)changed;
- (void)updateInjectedEditingClientSettings;
- (void)updateLookProperties;
- (void)updateLooks;
- (void)updateLooksWithoutBuilding;
- (void)updateLuminanceValuesForLooks;
- (void)updatePreferences:(id)preferences;
- (void)updateRootViewControllerMenus;
- (void)updateScrollViewDecelerationRate:(id)rate;
@end

@implementation PREditor

- (PREditor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PREditor;
  v6 = [(PREditor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v7->_looksScrollingDecelerationRate = *MEMORY[0x1E69DE3A8];
    v8 = objc_alloc_init(PROverridableDateProvider);
    dateProvider = v7->_dateProvider;
    v7->_dateProvider = v8;

    posterRole = v7->_posterRole;
    v7->_posterRole = 0;

    v11 = objc_opt_new();
    preferences = v7->_preferences;
    v7->_preferences = v11;

    v7->_adaptiveTimeHeightUserConfigured = 1;
    [*MEMORY[0x1E69DDA98] _stopHangTracer];
  }

  return v7;
}

- (void)dealloc
{
  rootViewController = [(PREditor *)self rootViewController];
  [rootViewController invalidate];

  rootViewController2 = [(PREditor *)self rootViewController];
  overlayHostViewController = [rootViewController2 overlayHostViewController];
  [overlayHostViewController invalidate];

  [(PREditor *)self invalidateAllLookSwitchingAssertions];
  [(PREditor *)self invalidateAllPresentationAssertionsByViewController];
  [(PRDeviceMotionRenderer *)self->_deviceMotionRenderer invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = PREditor;
  [(PREditor *)&v7 dealloc];
}

- (BOOL)areControlsHidden
{
  if (self->_controlsHidden)
  {
    return 1;
  }

  posterRole = [(PREditor *)self posterRole];
  v5 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  return (v5 & 1) != 0 || [(PREditor *)self editingIdiom]== 2;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (!controllerCopy)
  {
    [PREditor presentViewController:a2 animated:self completion:?];
  }

  if (!self->_window)
  {
    [PREditor presentViewController:a2 animated:? completion:?];
  }

  if ([(PREditor *)self needsCustomViewControllerPresentationManager])
  {
    [controllerCopy setTransitioningDelegate:self];
    [controllerCopy setModalPresentationStyle:4];
  }

  rootViewController = [(PREditor *)self rootViewController];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:controllerCopy];
  [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:controllerCopy];
  v13 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__PREditor_presentViewController_animated_completion___block_invoke;
  v16[3] = &unk_1E7843688;
  v17 = rootViewController;
  v14 = rootViewController;
  [v13 animateWithDuration:v16 animations:0.3];
  [(PREditor *)self _acquireModalPresentationAssertionForViewController:controllerCopy];
  v15 = [(PREditor *)self viewControllerForPresentingViewControllersCreatingIfNecessary:1];
  [v15 presentViewController:controllerCopy animated:-[PREditor isViewControllerPresentationAnimationAllowed](self completion:{"isViewControllerPresentationAnimationAllowed") & animatedCopy, completionCopy}];
  [(PREditor *)self didPresentViewController:controllerCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  rootViewController = [(PREditor *)self rootViewController];
  v8 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PREditor_dismissViewControllerAnimated_completion___block_invoke;
  v11[3] = &unk_1E7843688;
  v12 = rootViewController;
  v9 = rootViewController;
  [v8 animateWithDuration:v11 animations:0.3];
  [(PREditor *)self setEditingFocusActive:0];
  v10 = [(PREditor *)self viewControllerForPresentingViewControllersCreatingIfNecessary:0];
  [v10 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)presentedViewControllerDismissalWillBegin:(id)begin
{
  object = [begin object];
  v5 = [(PREditor *)self viewControllerForPresentingViewControllersCreatingIfNecessary:0];
  presentedViewController = [v5 presentedViewController];

  if (object == presentedViewController)
  {
    rootViewController = [(PREditor *)self rootViewController];

    if (v5 == rootViewController)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__PREditor_presentedViewControllerDismissalWillBegin___block_invoke;
      v11[3] = &unk_1E7843688;
      v11[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:0.3];
    }

    modalPresentationAssertionsByViewController = [(PREditor *)self modalPresentationAssertionsByViewController];
    v9 = [modalPresentationAssertionsByViewController objectForKey:object];

    [v9 invalidate];
    modalPresentationAssertionsByViewController2 = [(PREditor *)self modalPresentationAssertionsByViewController];
    [modalPresentationAssertionsByViewController2 removeObjectForKey:object];

    [(PREditor *)self setEditingFocusActive:0];
  }
}

void __54__PREditor_presentedViewControllerDismissalWillBegin___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 setTopButtonsHidden:0];
}

- (void)presentedViewControllerDismissalDidEnd:(id)end
{
  endCopy = end;
  object = [endCopy object];
  rootViewController = [(PREditor *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (object == presentedViewController)
  {
    userInfo = [endCopy userInfo];
    v9 = [userInfo objectForKey:*MEMORY[0x1E69DE2C0]];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2D0] object:object];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2C8] object:object];
      [(PREditor *)self setEditingFocusActive:0];
    }

    else
    {
      [(PREditor *)self _acquireModalPresentationAssertionForViewController:object];
      [(PREditor *)self setEditingFocusActive:1];
      v12 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__PREditor_presentedViewControllerDismissalDidEnd___block_invoke;
      v13[3] = &unk_1E7843688;
      v14 = rootViewController;
      [v12 animateWithDuration:v13 animations:0.3];
    }
  }
}

- (void)presentTitledViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  posterRole = [(PREditor *)self posterRole];
  v11 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  if (v11)
  {
    v15 = [[PRAmbientEditingTitledViewController alloc] initWithContentViewController:controllerCopy];

    [(PRAmbientEditingTitledViewController *)v15 setDelegate:self];
    [(PREditor *)self presentViewController:v15 animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:controllerCopy];

    navigationBar = [(PRAmbientEditingTitledViewController *)v15 navigationBar];
    topItem = [navigationBar topItem];

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__closeButtonTapped_];
    [topItem setRightBarButtonItem:v14];
    [(PREditor *)self presentViewController:v15 animated:animatedCopy completion:completionCopy];

    completionCopy = topItem;
  }
}

- (void)updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  BSDispatchQueueAssertMain();
  v6 = [(PRPosterPreferencesImpl *)self->_preferences copy];
  v5 = objc_opt_new();
  preferencesCopy[2](preferencesCopy, self->_preferences, v5);

  if (([(PRPosterPreferencesImpl *)self->_preferences isEqual:v6]& 1) == 0)
  {
    [(PREditor *)self _preferencesDidUpdateFrom:v6 to:self->_preferences];
  }

  [(UIWindowScene *)self->_scene pr_updatePreferences:self->_preferences withTransition:v5];
}

- (void)_preferencesDidUpdateFrom:(id)from to:(id)to
{
  v53 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v8 = [toCopy adaptiveTimeMode] == 2 && !-[PREditor isComplicationRowAtBottom](self, "isComplicationRowAtBottom") && -[PREditor isComplicationsRowConfigured](self, "isComplicationsRowConfigured");
  if ([toCopy adaptiveTimeMode] == 4)
  {
    titleStyleConfiguration = [(PRPosterConfiguredProperties *)self->_configuredProperties titleStyleConfiguration];
    isAdaptiveTimeHeightUserConfigured = [titleStyleConfiguration isAdaptiveTimeHeightUserConfigured];
  }

  else
  {
    isAdaptiveTimeHeightUserConfigured = 0;
  }

  [fromCopy preferredSalientContentRectangle];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [toCopy preferredSalientContentRectangle];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v54.origin.x = v12;
  v54.origin.y = v14;
  v54.size.width = v16;
  v54.size.height = v18;
  v57.origin.x = v20;
  v57.origin.y = v22;
  v57.size.width = v24;
  v57.size.height = v26;
  v27 = CGRectEqualToRect(v54, v57);
  if (!v27)
  {
    v28 = PRLogEditing();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v55.origin.x = v12;
      v55.origin.y = v14;
      v55.size.width = v16;
      v55.size.height = v18;
      v29 = NSStringFromCGRect(v55);
      v56.origin.x = v20;
      v56.origin.y = v22;
      v56.size.width = v24;
      v56.size.height = v26;
      v30 = NSStringFromCGRect(v56);
      *buf = 138412546;
      v50 = v29;
      v51 = 2112;
      v52 = v30;
      _os_log_impl(&dword_1A8AA7000, v28, OS_LOG_TYPE_DEFAULT, "Preferred salient content rectangle changed. Old = %@  New = %@", buf, 0x16u);
    }
  }

  adaptiveTimeMode = [fromCopy adaptiveTimeMode];
  adaptiveTimeMode2 = [toCopy adaptiveTimeMode];
  v33 = v27;
  if (adaptiveTimeMode != adaptiveTimeMode2)
  {
    v34 = PRLogEditing();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v50 = adaptiveTimeMode;
      v51 = 2048;
      v52 = adaptiveTimeMode2;
      _os_log_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_DEFAULT, "Adaptive time mode preference changed. Old = %lu  New = %lu", buf, 0x16u);
    }

    v33 = 0;
  }

  if (((v33 | v8 | isAdaptiveTimeHeightUserConfigured) & 1) == 0)
  {
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __41__PREditor__preferencesDidUpdateFrom_to___block_invoke;
    v42 = &unk_1E7843BB8;
    v43 = toCopy;
    selfCopy = self;
    v45 = v20;
    v46 = v22;
    v47 = v24;
    v48 = v26;
    v35 = MEMORY[0x1AC574C60](&v39);
    v36 = v35;
    if (v27)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v35 animations:{0.3, v39, v40, v41, v42}];
    }

    else
    {
      (*(v35 + 16))(v35);
    }
  }

  if (adaptiveTimeMode != adaptiveTimeMode2)
  {
    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController updateForChangedAdaptiveTimeMode];
  }

  isDepthEffectEnabled = [fromCopy isDepthEffectEnabled];
  if (isDepthEffectEnabled != [toCopy isDepthEffectEnabled])
  {
    [(PREditor *)self setDepthEffectUserConfigured:1];
    -[PREditor setDepthEffectEnabled:](self, "setDepthEffectEnabled:", [toCopy isDepthEffectEnabled]);
  }
}

void __41__PREditor__preferencesDidUpdateFrom_to___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) adaptiveTimeMode] == 2 || objc_msgSend(*(a1 + 32), "adaptiveTimeMode") == 4)
  {
    v2 = [*(a1 + 40) rootViewController];
    v3 = [v2 interfaceOrientation];

    v4 = [*(a1 + 40) rootViewController];
    [v4 updateForDesiredTimeMaxY:v3 orientation:CGRectGetMinY(*(a1 + 48))];
  }

  v5 = [*(a1 + 40) rootViewController];
  [v5 updateReticleViewFrames];
}

- (id)disableSwitchingLooksForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[PREditorLookSwitchingAssertion alloc] initWithEditor:self reason:reasonCopy];

  lookSwitchingAssertions = self->_lookSwitchingAssertions;
  if (!lookSwitchingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v8 = self->_lookSwitchingAssertions;
    self->_lookSwitchingAssertions = weakObjectsHashTable;

    lookSwitchingAssertions = self->_lookSwitchingAssertions;
  }

  [(NSHashTable *)lookSwitchingAssertions addObject:v5];
  editingIdiom = [(PREditor *)self editingIdiom];
  rootViewController = [(PREditor *)self rootViewController];
  v11 = rootViewController;
  if (editingIdiom == 2)
  {
    lookMenuButton = [rootViewController lookMenuButton];

    [lookMenuButton setEnabled:0];
  }

  else
  {
    lookMenuButton = [rootViewController scrollView];

    [lookMenuButton setScrollEnabled:0];
  }

  return v5;
}

- (void)invalidateAllLookSwitchingAssertions
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSHashTable *)self->_lookSwitchingAssertions copy];
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

        [*(*(&v7 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)invalidateAllPresentationAssertionsByViewController
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  modalPresentationAssertionsByViewController = [(PREditor *)self modalPresentationAssertionsByViewController];
  v3 = [modalPresentationAssertionsByViewController copy];
  objectEnumerator = [v3 objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeLookSwitchingAssertion:(id)assertion
{
  [(NSHashTable *)self->_lookSwitchingAssertions removeObject:assertion];
  if (![(NSHashTable *)self->_lookSwitchingAssertions count])
  {
    editingIdiom = [(PREditor *)self editingIdiom];
    rootViewController = [(PREditor *)self rootViewController];
    v6 = rootViewController;
    if (editingIdiom == 2)
    {
      lookMenuButton = [rootViewController lookMenuButton];

      [lookMenuButton setEnabled:1];
    }

    else
    {
      lookMenuButton = [rootViewController scrollView];

      [lookMenuButton setScrollEnabled:1];
    }

    rootViewController = self->_rootViewController;

    [(PREditorRootViewController *)rootViewController lookPropertiesDidChange];
  }
}

- (void)setLooksScrollingDecelerationRate:(double)rate
{
  if (self->_looksScrollingDecelerationRate != rate)
  {
    self->_looksScrollingDecelerationRate = rate;
    rootViewController = [(PREditor *)self rootViewController];
    scrollView = [rootViewController scrollView];

    [(PREditor *)self updateScrollViewDecelerationRate:scrollView];
  }
}

- (void)updateScrollViewDecelerationRate:(id)rate
{
  rateCopy = rate;
  [(PREditor *)self looksScrollingDecelerationRate];
  v5 = v4;
  v6 = *MEMORY[0x1E69DE3A0];
  if (v5 != *MEMORY[0x1E69DE3A0])
  {
    v6 = *MEMORY[0x1E69DE3A8];
  }

  [rateCopy setDecelerationRate:v6];
  [rateCopy setPagingEnabled:v5 != -100.0];
}

- (void)setCurrentLook:(id)look
{
  lookCopy = look;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [lookCopy copy];
    currentLook = self->_currentLook;
    self->_currentLook = v4;

    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController currentLookDidChange];
  }
}

- (void)updateLooks
{
  if ([(PREditor *)self displaysRootViewController])
  {
    [(PREditor *)self setHasUpdatedLooks:1];
    [(PREditor *)self _rebuildRootViewController];
    [(UIWindow *)self->_window layoutIfNeeded];

    [(PREditor *)self _refetchLooksAndBuildUI];
  }
}

- (void)updateLooksWithoutBuilding
{
  if ([(PREditor *)self displaysRootViewController])
  {
    [(PREditor *)self setHasUpdatedLooks:1];

    [(PREditor *)self _refetchLooksAndBuildUI];
  }
}

- (void)updateLookProperties
{
  if ([(PREditor *)self displaysRootViewController])
  {
    [(PREditor *)self setHasUpdatedLookProperties:1];
    _refetchLooksForProperties = [(PREditor *)self _refetchLooksForProperties];
    targetConfiguredProperties = [(PRPosterEditingEnvironment *)self->_environment targetConfiguredProperties];
    titleStyleConfiguration = [targetConfiguredProperties titleStyleConfiguration];
    _contentLuminanceValuesForCurrentLooks = [(PREditor *)self _contentLuminanceValuesForCurrentLooks];
    initialLook = [(PREditor *)self initialLook];
    [(PREditor *)self _refreshDefaultTitleStyleConfigurationsForLooks:_refetchLooksForProperties luminanceForLooks:_contentLuminanceValuesForCurrentLooks initialLook:initialLook configuredTitleStyleConfiguration:titleStyleConfiguration];

    currentLook = [(PREditor *)self currentLook];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__PREditor_updateLookProperties__block_invoke;
    v22[3] = &unk_1E7843BE0;
    v23 = currentLook;
    v9 = currentLook;
    v10 = [_refetchLooksForProperties bs_firstObjectPassingTest:v22];
    configuredProperties = [(PREditor *)self configuredProperties];
    v12 = configuredProperties;
    if (configuredProperties)
    {
      v20 = v9;
      v21 = targetConfiguredProperties;
      titleStyleConfiguration2 = [configuredProperties titleStyleConfiguration];
      titleColor = [titleStyleConfiguration2 titleColor];
      isSuggested = [titleColor isSuggested];

      if (isSuggested)
      {
        v16 = [(PREditor *)self defaultTitleStyleConfigurationForLook:v10];
        v17 = [titleStyleConfiguration2 mutableCopy];
        titleColor2 = [v16 titleColor];
        [v17 setTitleColor:titleColor2];

        [v12 setTitleStyleConfiguration:v17];
      }

      v9 = v20;
      targetConfiguredProperties = v21;
    }

    [(PREditor *)self setCurrentLook:v10];
    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController setLooks:_refetchLooksForProperties forUpdatingProperties:1];
  }
}

uint64_t __32__PREditor_updateLookProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)_defaultLuminanceValuesForLooks:(id)looks initialLook:(id)look initialLookLuminanceValue:(double)value
{
  v24 = *MEMORY[0x1E69E9840];
  looksCopy = looks;
  lookCopy = look;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(looksCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = looksCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        valueCopy = value;
        if (v15 != lookCopy)
        {
          [PRPosterTitleStyleConfiguration defaultContentsLuminance:value];
        }

        v17 = [MEMORY[0x1E696AD98] numberWithDouble:{valueCopy, v19}];
        [v9 setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)updateLuminanceValuesForLooks
{
  rootViewController = [(PREditor *)self rootViewController];

  if (rootViewController)
  {
    _contentLuminanceValuesForCurrentLooks = [(PREditor *)self _contentLuminanceValuesForCurrentLooks];
    v4 = [(PREditor *)self _refreshLuminanceValuesForCurrentPerLookLuminanceValues:?];
    rootViewController2 = [(PREditor *)self rootViewController];
    looks = [rootViewController2 looks];

    targetConfiguredProperties = [(PRPosterEditingEnvironment *)self->_environment targetConfiguredProperties];
    titleStyleConfiguration = [targetConfiguredProperties titleStyleConfiguration];
    initialLook = [(PREditor *)self initialLook];
    [(PREditor *)self _refreshDefaultTitleStyleConfigurationsForLooks:looks luminanceForLooks:v4 initialLook:initialLook configuredTitleStyleConfiguration:titleStyleConfiguration];

    configuredProperties = [(PREditor *)self configuredProperties];
    titleStyleConfiguration2 = [configuredProperties titleStyleConfiguration];
    currentLook = [(PREditor *)self currentLook];
    v13 = [v4 objectForKeyedSubscript:currentLook];
    [v13 doubleValue];
    v15 = v14;

    if (titleStyleConfiguration2)
    {
      v16 = [titleStyleConfiguration2 mutableCopy];
      [v16 setContentsLuminance:v15];
      [configuredProperties setTitleStyleConfiguration:v16];
    }

    [(PREditingFontAndContentStylePickerViewController *)self->_fontAndContentStylePickerViewController setContentsLuminance:v15];
    [(PREditingFontAndColorPickerViewController *)self->_fontAndColorPickerViewController setContentsLuminance:v15];
    [(PREditor *)self _updateUserInterfaceStyleIfNeeded];
    rootViewController3 = [(PREditor *)self rootViewController];
    [rootViewController3 lookBackgroundTypesDidChange];
  }
}

- (id)_contentLuminanceValuesForCurrentLooks
{
  rootViewController = [(PREditor *)self rootViewController];
  looks = [rootViewController looks];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PREditor__contentLuminanceValuesForCurrentLooks__block_invoke;
  v8[3] = &unk_1E7843C08;
  v8[4] = self;
  v5 = [looks bs_map:v8];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:looks];

  return v6;
}

id __50__PREditor__contentLuminanceValuesForCurrentLooks__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) defaultTitleStyleConfigurationForLook:a2];
  v3 = MEMORY[0x1E696AD98];
  [v2 contentsLuminance];
  v4 = [v3 numberWithDouble:?];

  return v4;
}

- (id)_refreshLuminanceValuesForCurrentPerLookLuminanceValues:(id)values
{
  v46 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v5 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v6 = [PREditorElementLayoutController alloc];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    v8 = [(PREditorElementLayoutController *)v6 initWithTraitEnvironment:mainScreen];

    posterRole = [(PREditor *)self posterRole];
    v10 = [posterRole isEqualToString:@"PRPosterRoleIncomingCall"];

    v39 = v8;
    if (v10)
    {
      configuredProperties = [(PREditor *)self configuredProperties];
      titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
      titleString = [(PREditor *)self titleString];
      v14 = [titleStyleConfiguration effectiveTitleLayoutForText:titleString];

      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 bounds];
      v16 = v8;
      v17 = 1;
      v18 = v14;
    }

    else
    {
      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 bounds];
      v16 = v8;
      v17 = 15;
      v18 = 0;
    }

    v20 = [v16 frameAttributesForElements:v17 variant:0 titleLayout:v18 withBoundingRect:?];

    v38 = v20;
    [v20 rect];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v19 = [valuesCopy mutableCopy];
    v40 = valuesCopy;
    allKeys = [valuesCopy allKeys];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = [allKeys countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(allKeys);
          }

          v34 = *(*(&v41 + 1) + 8 * i);
          [v5 editor:self luminanceForLook:v34 inRect:{v22, v24, v26, v28}];
          if (v35 <= 1.0 && v35 >= 0.0)
          {
            v36 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            [v19 setObject:v36 forKeyedSubscript:v34];
          }
        }

        v31 = [allKeys countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v31);
    }

    valuesCopy = v40;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)backgroundTypeForLuminance:(double)luminance
{
  PRPosterContentsBackgroundTypeForLuminance(luminance);

  return PRPosterContentsBackgroundTypeForLuminance(luminance);
}

- (void)updateActions
{
  v6 = [(PREditor *)self delegateSafeForCallbackType:3];
  rootViewController = [(PREditor *)self rootViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v6 leadingMenuElementsForEditor:self];
  }

  else
  {
    v4 = 0;
  }

  [rootViewController setLeadingMenuElements:v4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 trailingMenuElementsForEditor:self];
  }

  else
  {
    v5 = 0;
  }

  [rootViewController setTrailingMenuElements:v5];
  [rootViewController _updateMenuElements];
}

- (id)actionsMenuWithChildren:(id)children
{
  v3 = MEMORY[0x1E69DCAB8];
  childrenCopy = children;
  v5 = [v3 systemImageNamed:@"ellipsis.circle.fill"];
  v6 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1C13D90 image:v5 identifier:@"PREditor.ActionsMenu" options:0 children:childrenCopy];

  return v6;
}

- (id)defaultTitleStyleConfigurationForLook:(id)look
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_defaultTitleStyleConfigurationPerLook objectForKey:look];
  if (!v4)
  {
    v5 = PRLogEditing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      defaultTitleStyleConfigurationPerLook = self->_defaultTitleStyleConfigurationPerLook;
      v8 = 134218240;
      v9 = defaultTitleStyleConfigurationPerLook;
      v10 = 2048;
      v11 = [(NSMutableDictionary *)defaultTitleStyleConfigurationPerLook count];
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "defaultTitleStyleConfigurationForLook: failed. _defaultTitleStyleConfigurationPerLook=%p, count=%lu", &v8, 0x16u);
    }
  }

  return v4;
}

- (id)effectiveTitleStyleConfigurationForLook:(id)look
{
  lookCopy = look;
  configuredProperties = [(PREditor *)self configuredProperties];
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  v7 = [(PREditor *)self defaultTitleStyleConfigurationForLook:lookCopy];

  if (!titleStyleConfiguration || ![(PREditor *)self shouldApplyTitleStyleAcrossAllLooksFromConfiguredTitleStyleConfiguration:titleStyleConfiguration])
  {
    delegate = [v7 mutableCopy];
    [titleStyleConfiguration preferredTimeMaxYPortrait];
    [delegate setPreferredTimeMaxYPortrait:?];
    [titleStyleConfiguration preferredTimeMaxYLandscape];
    [delegate setPreferredTimeMaxYLandscape:?];
    v10 = [delegate copy];
    goto LABEL_13;
  }

  delegate = [(PREditor *)self delegate];
  if (!delegate)
  {
    v9 = 1;
LABEL_11:
    v14 = 1;
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate editorShouldAllowUserToAdjustTimeColor:self];
  }

  else
  {
    v9 = 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  timeFontConfiguration = [titleStyleConfiguration timeFontConfiguration];
  extensionBundleURL = [(PREditor *)self extensionBundleURL];
  v13 = [timeFontConfiguration timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];

  v14 = [delegate editor:self shouldAllowUserToSelectTimeFontConfiguration:v13];
LABEL_12:
  v10 = [titleStyleConfiguration resolvedWithLookDefaultTitleStyleConfiguration:v7 allowTitleColorUpdates:v9 allowTitleFontUpdates:v14];
LABEL_13:
  v15 = v10;

  return v15;
}

- (void)createColorVariationStoreIfNeeded
{
  if (!self->_colorVariationStore)
  {
    configuredProperties = [(PREditor *)self configuredProperties];
    colorVariationsConfiguration = [configuredProperties colorVariationsConfiguration];
    variationStorage = [colorVariationsConfiguration variationStorage];
    v6 = -[PREditingColorVariationStore initWithVariationStorage:version:]([PREditingColorVariationStore alloc], "initWithVariationStorage:version:", variationStorage, [colorVariationsConfiguration version]);
    colorVariationStore = self->_colorVariationStore;
    self->_colorVariationStore = v6;
  }
}

- (void)presentColorPickerWithPrompt:(id)prompt suggestedColors:(id)colors selectedColor:(id)color changeHandler:(id)handler
{
  handlerCopy = handler;
  colorCopy = color;
  colorsCopy = colors;
  promptCopy = prompt;
  v14 = objc_alloc_init(PREditorColorPickerConfiguration);
  [(PREditorColorPickerConfiguration *)v14 setPrompt:promptCopy];

  [(PREditorColorPickerConfiguration *)v14 setSelectedColor:colorCopy];
  [(PREditorColorPickerConfiguration *)v14 setSuggestedColors:colorsCopy];

  [(PREditor *)self presentColorPickerWithConfiguration:v14 changeHandler:handlerCopy];
}

- (void)presentColorPickerWithConfiguration:(id)configuration changeHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  posterRole = [(PREditor *)self posterRole];
  v9 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  if (v9)
  {
    [(PREditor *)self presentAmbientColorPickerWithConfiguration:configurationCopy changeHandler:handlerCopy];
  }

  else
  {
    colorPickerSourceItem = [configurationCopy colorPickerSourceItem];
    prompt = [configurationCopy prompt];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [currentDevice userInterfaceIdiom] == 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__PREditor_presentColorPickerWithConfiguration_changeHandler___block_invoke;
    v14[3] = &unk_1E7843C30;
    v15 = configurationCopy;
    v16 = handlerCopy;
    [(PREditor *)self _presentFontAndColorPickerWithPrompt:prompt titleStyleConfiguration:0 colorPickerConfiguration:v15 usingPopoverPresentation:v13 popoverSourceItem:colorPickerSourceItem popoverDirection:2 changeHandler:v14];
  }
}

void __62__PREditor_presentColorPickerWithConfiguration_changeHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = [a9 color];
  v10 = v11;
  if (([*(a1 + 32) includesObjectsOfTypePRPickerColor] & 1) == 0)
  {
    v10 = [v11 color];
  }

  if (v10)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)presentContentStylePickerWithConfiguration:(id)configuration changeHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  posterRole = [(PREditor *)self posterRole];
  v9 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  if (v9)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__PREditor_presentContentStylePickerWithConfiguration_changeHandler___block_invoke;
    v17[3] = &unk_1E7843C58;
    v18 = handlerCopy;
    contentStylePickerSourceItem = handlerCopy;
    [(PREditor *)self presentAmbientContentStylePickerWithConfiguration:configurationCopy changeHandler:v17];
    v11 = v18;
  }

  else
  {
    contentStylePickerSourceItem = [configurationCopy contentStylePickerSourceItem];
    prompt = [configurationCopy prompt];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v14 = [currentDevice userInterfaceIdiom] == 1;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PREditor_presentContentStylePickerWithConfiguration_changeHandler___block_invoke_2;
    v15[3] = &unk_1E7843C80;
    v16 = handlerCopy;
    v11 = handlerCopy;
    [(PREditor *)self _presentFontAndContentStylePickerWithPrompt:prompt titleStyleConfiguration:0 contentStylePickerConfiguration:configurationCopy usingPopoverPresentation:v14 popoverSourceItem:contentStylePickerSourceItem popoverDirection:2 changeHandler:v15];
  }
}

void __69__PREditor_presentContentStylePickerWithConfiguration_changeHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 contentStyle];
  v4 = [v3 isSuggestedContentStyle];

  (*(v2 + 16))(v2, v5, [v4 BOOLValue]);
}

- (void)_presentFontAndContentStylePickerWithPrompt:(id)prompt titleStyleConfiguration:(id)configuration contentStylePickerConfiguration:(id)pickerConfiguration usingPopoverPresentation:(BOOL)presentation popoverSourceItem:(id)item popoverDirection:(unint64_t)direction changeHandler:(id)handler
{
  presentationCopy = presentation;
  v98[1] = *MEMORY[0x1E69E9840];
  pickerConfigurationCopy = pickerConfiguration;
  itemCopy = item;
  handlerCopy = handler;
  configurationCopy = configuration;
  promptCopy = prompt;
  posterRole = [(PREditor *)self posterRole];
  if ([posterRole isEqual:@"PRPosterRoleIncomingCall"])
  {
    titleString = [(PREditor *)self titleString];
    if ([titleString pr_isSuitableForArabicJustification])
    {
      v17 = _os_feature_enabled_impl();
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  posterRole2 = [(PREditor *)self posterRole];
  if ([posterRole2 isEqual:@"PRPosterRoleIncomingCall"])
  {
    titleString2 = [(PREditor *)self titleString];
    pr_isSuitableForVerticalLayout = [titleString2 pr_isSuitableForVerticalLayout];
  }

  else
  {
    pr_isSuitableForVerticalLayout = 0;
  }

  posterRole3 = [(PREditor *)self posterRole];
  v22 = [posterRole3 isEqual:@"PRPosterRoleIncomingCall"] ^ 1;
  if (pickerConfigurationCopy)
  {
    v23 = configuration != 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = (v23 & v22) == 0;
  v25 = 2;
  if (v24)
  {
    v25 = 0;
  }

  if (configuration)
  {
    ++v25;
  }

  if (pickerConfigurationCopy)
  {
    v25 |= 4uLL;
  }

  v26 = v25 | 8;
  if (((configuration != 0) & pr_isSuitableForVerticalLayout) == 0)
  {
    v26 = v25;
  }

  if (v17)
  {
    v26 |= 0x10uLL;
  }

  if (configuration)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  selectedStyle = [pickerConfigurationCopy selectedStyle];
  v29 = objc_opt_class();
  v30 = selectedStyle;
  if (v29)
  {
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32 && [v32 allowsVariation] && objc_msgSend(v32, "needsToResolveVariationFromColorStore"))
  {
    [(PREditor *)self createColorVariationStoreIfNeeded];
    identifier = [pickerConfigurationCopy identifier];
    colors = [v32 colors];
    firstObject = [colors firstObject];

    v95 = 0.0;
    v35 = -[PREditingColorVariationStore baseColorForVariedColor:forContextIdentifier:variation:forDataLayerPicker:](self->_colorVariationStore, "baseColorForVariedColor:forContextIdentifier:variation:forDataLayerPicker:", firstObject, identifier, &v95, [pickerConfigurationCopy isForTitleStylePicker]);
    if (v35)
    {
      v81 = v35;
      isVibrant = [v32 isVibrant];
      v37 = [PRPosterContentDiscreteColorsStyle alloc];
      if (isVibrant)
      {
        v98[0] = v81;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
        v39 = v37;
        v40 = v38;
        v41 = [(PRPosterContentDiscreteColorsStyle *)v39 initWithVibrantColors:v38 variation:v95];
      }

      else
      {
        v97 = v81;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
        v43 = v37;
        v40 = v42;
        v41 = [(PRPosterContentDiscreteColorsStyle *)v43 initWithOpaqueColors:v42 variation:v95];
      }

      v44 = v41;

      [pickerConfigurationCopy setSelectedStyle:v44];
      v35 = v81;
    }
  }

  v87 = v30;
  v45 = [PREditingFontAndContentStylePickerViewController alloc];
  posterRole4 = [(PREditor *)self posterRole];
  titleString3 = [(PREditor *)self titleString];
  v48 = [(PREditingFontAndContentStylePickerViewController *)v45 initWithComponents:v27 role:posterRole4 titleString:titleString3];

  [(PREditingFontAndContentStylePickerViewController *)v48 setDelegate:self];
  [(PREditingFontAndContentStylePickerViewController *)v48 setTitle:promptCopy];

  [(PREditingFontAndContentStylePickerViewController *)v48 setContentStylePickerConfiguration:pickerConfigurationCopy];
  [(PREditingFontAndContentStylePickerViewController *)v48 setTitleStyleConfiguration:configurationCopy];

  extensionBundleURL = [(PREditor *)self extensionBundleURL];
  [(PREditingFontAndContentStylePickerViewController *)v48 setExtensionBundleURL:extensionBundleURL];

  [(PREditingFontAndContentStylePickerViewController *)v48 setChangeHandler:handlerCopy];
  navigationItem = [(PREditingFontAndContentStylePickerViewController *)v48 navigationItem];
  [navigationItem _setBackgroundHidden:1];

  currentLook = [(PREditor *)self currentLook];
  v52 = [(PREditor *)self effectiveTitleStyleConfigurationForLook:currentLook];
  [v52 contentsLuminance];
  v54 = v53;

  [(PREditingFontAndContentStylePickerViewController *)v48 setContentsLuminance:v54];
  objc_storeStrong(&self->_fontAndContentStylePickerViewController, v48);
  v55 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v48];
  v56 = v55;
  v57 = itemCopy;
  if (itemCopy && presentationCopy)
  {
    [v55 setModalPresentationStyle:7];
    popoverPresentationController = [v56 popoverPresentationController];
    [popoverPresentationController setSourceItem:itemCopy];
    [popoverPresentationController setPermittedArrowDirections:direction];
    [popoverPresentationController popoverLayoutMargins];
    [popoverPresentationController setPopoverLayoutMargins:{90.0, v59, 5.0, 5.0}];
    [popoverPresentationController setDelegate:v48];
    traitOverrides = [popoverPresentationController traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];

    if (configuration)
    {
      [(PREditor *)self setPopoverPresentationController:popoverPresentationController];
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [v56 setModalPresentationStyle:2];
    }

    popoverPresentationController = [v56 sheetPresentationController];
    rootViewController = [(PREditor *)self rootViewController];
    view = [rootViewController view];
    window = [view window];
    safeAreaLayoutGuide = [window safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v75 = MEMORY[0x1E69DCF58];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __186__PREditor__presentFontAndContentStylePickerWithPrompt_titleStyleConfiguration_contentStylePickerConfiguration_usingPopoverPresentation_popoverSourceItem_popoverDirection_changeHandler___block_invoke;
    v89[3] = &unk_1E7843CA8;
    v91 = v68;
    v92 = v70;
    v93 = v72;
    v94 = v74;
    v76 = v48;
    v90 = v76;
    v77 = [v75 customDetentWithIdentifier:@"FontAndContentStylePickerDodge" resolver:v89];
    v96 = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
    [popoverPresentationController setDetents:v78];

    [popoverPresentationController setLargestUndimmedDetentIdentifier:@"FontAndContentStylePickerDodge"];
    [popoverPresentationController setDelegate:v76];
    v79 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:1];
    [v79 setSubvariant:@"customizeSheet"];
    [popoverPresentationController _setNonLargeBackground:v79];
    [popoverPresentationController _setLargeBackground:v79];
    traitOverrides2 = [v56 traitOverrides];
    [traitOverrides2 setUserInterfaceStyle:2];

    v57 = itemCopy;
  }

  [(PREditor *)self presentViewController:v56 animated:1 completion:0];
}

double __186__PREditor__presentFontAndContentStylePickerWithPrompt_titleStyleConfiguration_contentStylePickerConfiguration_usingPopoverPresentation_popoverSourceItem_popoverDirection_changeHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 0.0)
  {
    v1 = 36.0;
  }

  else
  {
    v1 = 0.0;
  }

  [*(a1 + 32) desiredDetent];
  return v2 + v1;
}

- (void)_presentFontAndColorPickerWithPrompt:(id)prompt titleStyleConfiguration:(id)configuration colorPickerConfiguration:(id)pickerConfiguration usingPopoverPresentation:(BOOL)presentation popoverSourceItem:(id)item popoverDirection:(unint64_t)direction changeHandler:(id)handler
{
  presentationCopy = presentation;
  v58[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  pickerConfigurationCopy = pickerConfiguration;
  configurationCopy = configuration;
  promptCopy = prompt;
  posterRole = [(PREditor *)self posterRole];
  if ([posterRole isEqual:@"PRPosterRoleIncomingCall"])
  {
    titleString = [(PREditor *)self titleString];
    if ([titleString pr_isSuitableForArabicJustification])
    {
      v18 = _os_feature_enabled_impl();
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  posterRole2 = [(PREditor *)self posterRole];
  if ([posterRole2 isEqual:@"PRPosterRoleIncomingCall"])
  {
    titleString2 = [(PREditor *)self titleString];
    pr_isSuitableForVerticalLayout = [titleString2 pr_isSuitableForVerticalLayout];
  }

  else
  {
    pr_isSuitableForVerticalLayout = 0;
  }

  posterRole3 = [(PREditor *)self posterRole];
  v23 = [posterRole3 isEqual:@"PRPosterRoleIncomingCall"] ^ 1;
  if (pickerConfigurationCopy)
  {
    v24 = configuration != 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = (v24 & v23) == 0;
  v26 = 2;
  if (v25)
  {
    v26 = 0;
  }

  if (configuration)
  {
    ++v26;
  }

  if (pickerConfigurationCopy)
  {
    v26 |= 4uLL;
  }

  v27 = v26 | 8;
  if (((configuration != 0) & pr_isSuitableForVerticalLayout) == 0)
  {
    v27 = v26;
  }

  if (v18)
  {
    v27 |= 0x10uLL;
  }

  if (configuration)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  [(PREditor *)self createColorVariationStoreIfNeeded];
  v29 = [PREditingFontAndColorPickerViewController alloc];
  posterRole4 = [(PREditor *)self posterRole];
  titleString3 = [(PREditor *)self titleString];
  v32 = [(PREditingFontAndColorPickerViewController *)v29 initWithComponents:v28 role:posterRole4 titleString:titleString3];

  [(PREditingFontAndColorPickerViewController *)v32 setDelegate:self];
  [(PREditingFontAndColorPickerViewController *)v32 setTitle:promptCopy];

  [(PREditingFontAndColorPickerViewController *)v32 setColorPickerConfiguration:pickerConfigurationCopy];
  [(PREditingFontAndColorPickerViewController *)v32 setTitleStyleConfiguration:configurationCopy];

  extensionBundleURL = [(PREditor *)self extensionBundleURL];
  [(PREditingFontAndColorPickerViewController *)v32 setExtensionBundleURL:extensionBundleURL];

  [(PREditingFontAndColorPickerViewController *)v32 setColorVariationStore:self->_colorVariationStore];
  [(PREditingFontAndColorPickerViewController *)v32 setChangeHandler:handlerCopy];

  navigationItem = [(PREditingFontAndColorPickerViewController *)v32 navigationItem];
  [navigationItem _setBackgroundHidden:1];

  currentLook = [(PREditor *)self currentLook];
  v36 = [(PREditor *)self effectiveTitleStyleConfigurationForLook:currentLook];
  [v36 contentsLuminance];
  v38 = v37;

  [(PREditingFontAndColorPickerViewController *)v32 setContentsLuminance:v38];
  objc_storeStrong(&self->_fontAndColorPickerViewController, v32);
  v39 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v32];
  v40 = v39;
  if (itemCopy && presentationCopy)
  {
    [v39 setModalPresentationStyle:7];
    popoverPresentationController = [v40 popoverPresentationController];
    [popoverPresentationController setSourceItem:itemCopy];
    [popoverPresentationController setPermittedArrowDirections:direction];
    [popoverPresentationController popoverLayoutMargins];
    [popoverPresentationController setPopoverLayoutMargins:{90.0, v42, 5.0, 5.0}];
    [popoverPresentationController setDelegate:v32];
    if (configuration)
    {
      [(PREditor *)self setPopoverPresentationController:popoverPresentationController];
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [v40 setModalPresentationStyle:2];
    }

    sheetPresentationController = [v40 sheetPresentationController];
    v46 = MEMORY[0x1E69DCF58];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __172__PREditor__presentFontAndColorPickerWithPrompt_titleStyleConfiguration_colorPickerConfiguration_usingPopoverPresentation_popoverSourceItem_popoverDirection_changeHandler___block_invoke;
    v56[3] = &unk_1E7843CD0;
    v47 = v32;
    v57 = v47;
    v48 = [v46 customDetentWithIdentifier:@"FontAndColorPickerDodge" resolver:v56];
    v58[0] = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [sheetPresentationController setDetents:v49];

    [sheetPresentationController setLargestUndimmedDetentIdentifier:@"FontAndColorPickerDodge"];
    [sheetPresentationController setDelegate:v47];
    v50 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:1];
    [v50 setSubvariant:@"customizeSheet"];
    [sheetPresentationController _setNonLargeBackground:v50];
    [sheetPresentationController _setLargeBackground:v50];
    traitOverrides = [sheetPresentationController traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];
  }

  [(PREditor *)self presentViewController:v40 animated:1 completion:0];
}

- (void)presentAmbientColorPickerWithConfiguration:(id)configuration changeHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  [(PREditor *)self safeAreaBounds];
  v16 = CGRectInset(v15, 50.0, 0.0);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v12 = [PREditingAmbientColorPickerViewController alloc];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v13 = [(PREditingAmbientColorPickerViewController *)v12 initWithColorPickerConfiguration:configurationCopy width:handlerCopy changeHandler:CGRectGetWidth(v17)];

  [(PREditor *)self presentTitledViewController:v13 animated:1 completion:0];
}

- (void)presentAmbientContentStylePickerWithConfiguration:(id)configuration changeHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  [(PREditor *)self safeAreaBounds];
  v16 = CGRectInset(v15, 50.0, 0.0);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v12 = [PREditingAmbientContentStylePickerViewController alloc];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v13 = [(PREditingAmbientContentStylePickerViewController *)v12 initWithContentStylePickerConfiguration:configurationCopy width:handlerCopy changeHandler:CGRectGetWidth(v17)];

  [(PREditor *)self presentTitledViewController:v13 animated:1 completion:0];
}

- (void)presentTimeStyleEditor
{
  if ([(PREditor *)self isCoveredByHostModalPresentation])
  {
    return;
  }

  configuredProperties = [(PREditor *)self configuredProperties];
  currentLook = [(PREditor *)self currentLook];
  v4 = [(PREditor *)self defaultTitleStyleConfigurationForLook:?];
  v57 = configuredProperties;
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  v6 = [titleStyleConfiguration copy];

  if (!v6)
  {
    v6 = v4;
  }

  v7 = [(PREditor *)self delegateSafeForCallbackType:3];
  v59 = v4;
  v60 = v6;
  v55 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v8 editorShouldAllowUserToAdjustTimeColor:self])
    {
      goto LABEL_15;
    }

LABEL_10:
    v9 = [(PREditor *)self delegateSafeForCallbackType:3];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 titleContentStylePickerConfigurationForEditor:self];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [v9 timeColorPickerConfigurationForEditor:self];
        selectedColor = [v11 selectedColor];
        contentStyle = [selectedColor contentStyle];

        v58 = v11;
        colorPalette = [v11 colorPalette];
        v53 = colorPalette;
        if (colorPalette)
        {
          v14 = colorPalette;
          colors = [colorPalette colors];
          posterRole = [(PREditor *)self posterRole];
          v17 = [PRPosterTitleStyleConfiguration defaultTitleContentStyleAdditionsForRole:posterRole];

          v18 = [colors bs_map:&__block_literal_global_16];
          v19 = [v17 arrayByAddingObjectsFromArray:v18];

          v20 = [PREditorContentStylePalette alloc];
          posterRole2 = [(PREditor *)self posterRole];
          localizedName = [v14 localizedName];
          v23 = [(PREditorContentStylePalette *)v20 initWithContentStyles:v19 context:2 role:posterRole2 localizedName:localizedName defaultPalette:0];
        }

        else
        {
          v23 = 0;
        }

        colorWellDisplayMode = [v58 colorWellDisplayMode];
        if (colorWellDisplayMode == 2)
        {
          v26 = 2;
        }

        else
        {
          v26 = colorWellDisplayMode == 1;
        }

        v27 = [PREditorContentStylePickerConfiguration alloc];
        identifier = [v58 identifier];
        prompt = [v58 prompt];
        v30 = v23;
        v10 = [(PREditorContentStylePickerConfiguration *)v27 initWithIdentifier:identifier prompt:prompt selectedStyle:contentStyle stylePalette:v23 colorWellDisplayMode:v26];

        -[PREditorContentStylePickerConfiguration setShowsSuggestedContentStyleItem:](v10, "setShowsSuggestedContentStyleItem:", [v58 showsSuggestedColorItem]);
        v4 = v59;
        v6 = v60;
        goto LABEL_23;
      }

      v10 = objc_alloc_init(PREditorContentStylePickerConfiguration);
      [(PREditorContentStylePickerConfiguration *)v10 setColorWellDisplayMode:1];
    }

    v58 = 0;
LABEL_23:
    [(PREditorContentStylePickerConfiguration *)v10 setForTitleStylePicker:1];
    posterRole3 = [(PREditor *)self posterRole];
    v32 = [v6 effectiveTitleContentStyleForRole:posterRole3];

    [(PREditorContentStylePickerConfiguration *)v10 setSelectedStyle:v32];
    if ([v32 conformsToProtocol:&unk_1F1C8ED30])
    {
      if ([v32 supportsGlassAppearance])
      {
        v33 = 0;
      }

      else
      {
        v33 = 2;
      }
    }

    else
    {
      v33 = 0;
    }

    titleContentStyle = [v4 titleContentStyle];
    if (titleContentStyle && [(PREditorContentStylePickerConfiguration *)v10 showsSuggestedContentStyleItem])
    {
      if ([titleContentStyle conformsToProtocol:&unk_1F1C8ED30])
      {
        v35 = [titleContentStyle copyWithPreferredMaterial:v33];

        titleContentStyle = v35;
      }

      [(PREditorContentStylePickerConfiguration *)v10 setSuggestedStyle:titleContentStyle];
    }

    stylePalette = [(PREditorContentStylePickerConfiguration *)v10 stylePalette];

    if (stylePalette)
    {
      stylePalette2 = [(PREditorContentStylePickerConfiguration *)v10 stylePalette];
      v38 = [stylePalette2 withPreferredMaterialType:v33];
      [(PREditorContentStylePickerConfiguration *)v10 setStylePalette:v38];
    }

    else
    {
      role = [(PFServerPosterPath *)self->_sourceContents role];
      stylePalette2 = [PREditorContentStylePalette defaultPaletteForContext:2 preferredMaterialType:v33 role:role];

      [(PREditorContentStylePickerConfiguration *)v10 setStylePalette:stylePalette2];
      [(PREditorContentStylePickerConfiguration *)v10 setIdentifier:@"timeEditor"];
    }

    v24 = @"EDIT_TIME_PROMPT";
    goto LABEL_37;
  }

  if ([v8 editorShouldAllowUserToAdjustTitleContentStyle:self])
  {
    goto LABEL_10;
  }

LABEL_15:
  v58 = 0;
  v10 = 0;
  v24 = @"EDIT_TIME_PROMPT_FONT_ONLY";
LABEL_37:
  v40 = PRBundle();
  v41 = [v40 localizedStringForKey:v24 value:&stru_1F1C13D90 table:@"PosterKit"];

  rootViewController = [(PREditor *)self rootViewController];
  titlePopoverLayoutGuide = [rootViewController titlePopoverLayoutGuide];

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v44 = 8;
  }

  else
  {
    v44 = 4;
  }

  rootViewController2 = [(PREditor *)self rootViewController];
  view = [rootViewController2 view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if ((interfaceOrientation - 1) < 2)
  {
    v50 = 1;
  }

  else
  {
    v50 = v44;
  }

  objc_initWeak(&location, self);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v52 = [currentDevice userInterfaceIdiom] == 1;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __34__PREditor_presentTimeStyleEditor__block_invoke_2;
  v61[3] = &unk_1E7843D18;
  objc_copyWeak(&v62, &location);
  [(PREditor *)self _presentFontAndContentStylePickerWithPrompt:v41 titleStyleConfiguration:v60 contentStylePickerConfiguration:v10 usingPopoverPresentation:v52 popoverSourceItem:titlePopoverLayoutGuide popoverDirection:v50 changeHandler:v61];

  [(PREditor *)self setEditingFocusActive:1];
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
}

id __34__PREditor_presentTimeStyleEditor__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contentStylePreferringVibrancy:1];
  if ([v2 allowsVariation])
  {
    v3 = [v2 copyWithVariation:0.0];

    v2 = v3;
  }

  return v2;
}

void __34__PREditor_presentTimeStyleEditor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTitleStyleEditorChange:v3];
}

- (void)_handleTitleStyleEditorChange:(id)change
{
  changeCopy = change;
  configuredProperties = [(PREditor *)self configuredProperties];
  if (!configuredProperties)
  {
    configuredProperties = objc_alloc_init(PRPosterMutableConfiguredProperties);
    [(PREditor *)self setConfiguredProperties:configuredProperties];
  }

  titleStyleConfiguration = [(PRPosterConfiguredProperties *)configuredProperties titleStyleConfiguration];
  v6 = [titleStyleConfiguration mutableCopy];
  if (!v6)
  {
    currentLook = [(PREditor *)self currentLook];
    v8 = [(PREditor *)self defaultTitleStyleConfigurationForLook:currentLook];
    v6 = [v8 mutableCopy];
  }

  timeFontIdentifier = [changeCopy timeFontIdentifier];
  if (timeFontIdentifier)
  {
    isSystemItem = [changeCopy isSystemItem];
    bOOLValue = [isSystemItem BOOLValue];

    v12 = [[PRPosterSystemTimeFontConfiguration alloc] initWithTimeFontIdentifier:timeFontIdentifier systemItem:bOOLValue];
    [v6 setTimeFontConfiguration:v12];
    [v6 setUserConfigured:1];
  }

  timeFontConfiguration = [v6 timeFontConfiguration];
  v14 = objc_opt_class();
  v15 = timeFontConfiguration;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  fontWeight = [changeCopy fontWeight];
  if (fontWeight && v17)
  {
    v19 = [PRPosterSystemTimeFontConfiguration alloc];
    timeFontIdentifier2 = [v17 timeFontIdentifier];
    [fontWeight floatValue];
    v22 = -[PRPosterSystemTimeFontConfiguration initWithTimeFontIdentifier:weight:systemItem:](v19, "initWithTimeFontIdentifier:weight:systemItem:", timeFontIdentifier2, [v17 isSystemItem], v21);

    [v6 setTimeFontConfiguration:v22];
    [v6 setUserConfigured:1];
  }

  extensionBundleURL = [(PREditor *)self extensionBundleURL];
  customFont = [changeCopy customFont];
  if (customFont)
  {
    v25 = [[PRPosterCustomTimeFontConfiguration alloc] initWithFont:customFont extensionBundleURL:extensionBundleURL];
    if (v25)
    {
      [v6 setTimeFontConfiguration:v25];
      [v6 setUserConfigured:1];
    }
  }

  preferredTitleAlignment = [changeCopy preferredTitleAlignment];
  v27 = preferredTitleAlignment;
  if (preferredTitleAlignment)
  {
    [v6 setPreferredTitleAlignment:{objc_msgSend(preferredTitleAlignment, "unsignedIntegerValue")}];
    [v6 setUserConfigured:1];
  }

  v43 = customFont;
  preferredTitleLayout = [changeCopy preferredTitleLayout];
  v29 = preferredTitleLayout;
  if (preferredTitleLayout)
  {
    [v6 setPreferredTitleLayout:{objc_msgSend(preferredTitleLayout, "unsignedIntegerValue")}];
    [v6 setUserConfigured:1];
  }

  v42 = v29;
  v44 = fontWeight;
  numberingSystem = [changeCopy numberingSystem];
  if (numberingSystem)
  {
    [v6 setTimeNumberingSystem:numberingSystem];
    [v6 setUserConfigured:1];
  }

  v45 = v17;
  contentStyle = [changeCopy contentStyle];
  if (contentStyle)
  {
    [v6 setTitleContentStyle:contentStyle];
    [v6 setUserConfigured:1];
  }

  [(PRPosterConfiguredProperties *)configuredProperties setTitleStyleConfiguration:v6];
  v32 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    [v6 timeFontConfiguration];
    v40 = configuredProperties;
    v33 = v41 = titleStyleConfiguration;
    [(PREditor *)self extensionBundleURL];
    v34 = v27;
    v36 = v35 = extensionBundleURL;
    [v33 timeFontConfigurationWithExtensionBundleURL:v36];
    v39 = timeFontIdentifier;
    v38 = v37 = self;

    extensionBundleURL = v35;
    v27 = v34;
    [v32 editor:v37 didUpdateSelectedTimeFontConfiguration:v38];

    self = v37;
    timeFontIdentifier = v39;

    configuredProperties = v40;
    titleStyleConfiguration = v41;
  }

  [(PREditingFontAndContentStylePickerViewController *)self->_fontAndContentStylePickerViewController setTitleStyleConfiguration:v6, v39];
  [(PREditorRootViewController *)self->_rootViewController lookPropertiesDidChange];
}

- (void)requestDismissalWithAction:(int64_t)action
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = PRLogEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"accept";
    if (action != 1)
    {
      v6 = 0;
    }

    if (!action)
    {
      v6 = @"cancel";
    }

    v7 = v6;
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Requesting dismissal with action '%{public}@'", &v13, 0xCu);
  }

  if (action != 1)
  {
    rootViewController = [(PREditor *)self rootViewController];
    goto LABEL_13;
  }

  if ([(PREditor *)self status]== 2)
  {
    rootViewController = [(PREditor *)self rootViewController];
    scrollView = [(PREditor *)self delegateSafeForCallbackType:3];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([scrollView editorShouldBeginFinalization:self] & 1) == 0)
    {
      v10 = PRLogEditing();
      if (os_log_type_enabled(&v10->super.super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A8AA7000, &v10->super.super, OS_LOG_TYPE_DEFAULT, "Canceling dismissal due to delegate", &v13, 2u);
      }

      goto LABEL_14;
    }

LABEL_13:
    scrollView = [rootViewController scrollView];
    [scrollView _forcePanGestureToEndImmediately];
    [scrollView setUserInteractionEnabled:0];
    [rootViewController setIgnoresScrolling:1];
    [rootViewController forciblyFinishLookTransition];
    v10 = [[PREditingRequestDismissalAction alloc] initWithUserAcceptedChanges:action == 1 completion:0];
    _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
    [_FBSScene sendActions:v12];

LABEL_14:
    goto LABEL_15;
  }

  rootViewController = PRLogEditing();
  if (os_log_type_enabled(rootViewController, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1A8AA7000, rootViewController, OS_LOG_TYPE_DEFAULT, "Ignoring request to dismiss and accept changes because the UI is not running", &v13, 2u);
  }

LABEL_15:
}

- (BOOL)allowsHitTestingInRootViewController
{
  posterRole = [(PREditor *)self posterRole];
  v3 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  return v3 ^ 1;
}

- (BOOL)isLifecycleTiedToInitiallyPresentedViewController
{
  posterRole = [(PREditor *)self posterRole];
  v3 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  return v3;
}

- (BOOL)presentsViewControllersRemotely
{
  posterRole = [(PREditor *)self posterRole];
  v3 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  return v3;
}

- (BOOL)needsCustomViewControllerPresentationManager
{
  posterRole = [(PREditor *)self posterRole];
  v3 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  return v3;
}

- (id)viewControllerForPresentingViewControllersCreatingIfNecessary:(BOOL)necessary
{
  if ([(PREditor *)self presentsViewControllersRemotely])
  {
    remoteViewControllerPresentationWindow = [(PREditor *)self remoteViewControllerPresentationWindow];
    rootViewController = [remoteViewControllerPresentationWindow rootViewController];

    if (!rootViewController)
    {
      [(PREditor *)self makeViewControllerForRemoteViewControllerPresentations];
      remoteViewControllerPresentationWindow2 = [(PREditor *)self remoteViewControllerPresentationWindow];
      rootViewController = [remoteViewControllerPresentationWindow2 rootViewController];
    }

    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "will present view controller remotely", v9, 2u);
    }
  }

  else
  {
    rootViewController = [(PREditor *)self rootViewController];
  }

  return rootViewController;
}

- (void)makeViewControllerForRemoteViewControllerPresentations
{
  scene = [(PREditor *)self scene];
  v3 = [[PRPosterWindow alloc] initWithWindowScene:scene];
  [(PRPosterWindow *)v3 setWindowLevel:-100.0];
  [(PRPosterWindow *)v3 setHidden:0];
  v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [(PRPosterWindow *)v3 setRootViewController:v4];
  [(PREditor *)self setRemoteViewControllerPresentationWindow:v3];
}

- (void)didPresentViewController:(id)controller
{
  controllerCopy = controller;
  remoteViewControllerPresentationWindow = [(PREditor *)self remoteViewControllerPresentationWindow];
  if (remoteViewControllerPresentationWindow)
  {
    scene = [(PREditor *)self scene];
    v7 = *MEMORY[0x1E69DDA98];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__PREditor_didPresentViewController___block_invoke;
    v9[3] = &unk_1E7843D40;
    v10 = controllerCopy;
    v11 = scene;
    v12 = remoteViewControllerPresentationWindow;
    v8 = scene;
    [v7 _performBlockAfterCATransactionCommits:v9];
  }
}

void __37__PREditor_didPresentViewController___block_invoke(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [a1[5] coordinateSpace];
  [v2 convertRect:v11 toCoordinateSpace:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [a1[6] _contextId];
  v21 = [a1[6] layer];
  RenderId = CALayerGetRenderId();

  v23 = [[PREditingRequestRemoteViewControllerPresentationAction alloc] initWithSourceLayerRenderId:RenderId sourceContextId:v20 presentedViewScreenRect:v13, v15, v17, v19];
  v24 = PRLogEditing();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v34.origin.x = v13;
    v34.origin.y = v15;
    v34.size.width = v17;
    v34.size.height = v19;
    v25 = NSStringFromCGRect(v34);
    v28[0] = 67109634;
    v28[1] = v20;
    v29 = 2048;
    v30 = RenderId;
    v31 = 2114;
    v32 = v25;
    _os_log_impl(&dword_1A8AA7000, v24, OS_LOG_TYPE_DEFAULT, "sending action to PosterBoard to present view contorller remotely with contextId %u and layerRenderId %llu in rect %{public}@", v28, 0x1Cu);
  }

  v26 = [a1[5] _FBSScene];
  v27 = [MEMORY[0x1E695DFD8] setWithObject:v23];
  [v26 sendActions:v27];
}

- (void)setShowsEditingReticles:(BOOL)reticles
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PREditor_setShowsEditingReticles___block_invoke;
  v5[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  reticlesCopy = reticles;
  [_FBSScene updateClientSettingsWithBlock:v5];
}

- (void)setEditingFocusActive:(BOOL)active
{
  view = [(PREditorRootViewController *)self->_rootViewController view];
  window = [view window];
  windowScene = [window windowScene];

  v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __34__PREditor_setEditingFocusActive___block_invoke;
  v16[3] = &unk_1E78437A0;
  v16[4] = self;
  activeCopy = active;
  [MEMORY[0x1E698E7D0] animateWithSettings:v8 actions:v16];
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__PREditor_setEditingFocusActive___block_invoke_2;
  v12[3] = &unk_1E7843D88;
  activeCopy2 = active;
  v13 = windowScene;
  v14 = v8;
  v10 = v8;
  v11 = windowScene;
  [_FBSScene updateClientSettingsWithTransitionBlock:v12];
}

uint64_t __34__PREditor_setEditingFocusActive___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 176) setTitleReticleActive:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 176);

  return [v2 updateReticleVisibilityIfNeeded];
}

id __34__PREditor_setEditingFocusActive___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 pr_setEditingFocusActive:*(a1 + 48)];
  v3 = [MEMORY[0x1E69DC6A0] transitionContext];
  v4 = [*(a1 + 32) _synchronizedDrawingFence];
  [v3 setAnimationFence:v4];

  [v3 setAnimationSettings:*(a1 + 40)];

  return v3;
}

- (void)updateInjectedEditingClientSettings
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  rootViewController = [(PREditor *)self rootViewController];
  looks = [rootViewController looks];

  currentLook = [(PREditor *)self currentLook];
  v7 = [PRInjectedEditingLook injectedEditingLookFromLook:currentLook];

  v8 = [looks bs_mapNoNulls:&__block_literal_global_256];
  v9 = objc_alloc_init(PRInjectedEditingClientSettings);
  [(PRInjectedEditingClientSettings *)v9 setInitialEditingLook:v7];
  [(PRInjectedEditingClientSettings *)v9 setEditingLooks:v8];
  v10 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 initialColorsForEditor:self];
    [(PRInjectedEditingClientSettings *)v9 setInitialColors:v11];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__PREditor_updateInjectedEditingClientSettings__block_invoke_2;
  v13[3] = &unk_1E7843DD0;
  v14 = v9;
  v12 = v9;
  [_FBSScene updateClientSettingsWithBlock:v13];
}

- (void)didFinishTransitionToLook:(id)look
{
  v4 = [(PREditor *)self effectiveTitleStyleConfigurationForLook:look];
  [v4 contentsLuminance];
  v6 = v5;

  [(PREditingFontAndColorPickerViewController *)self->_fontAndColorPickerViewController setContentsLuminance:v6];

  [(PREditor *)self _updateUserInterfaceStyleIfNeeded];
}

- (CGRect)safeAreaBounds
{
  v2 = self->_window;
  [(UIWindow *)v2 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIWindow *)v2 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v6 + v12;
  v20 = v4 + v14;
  v21 = v16 - (v6 + v10);
  v22 = v18 - (v4 + v8);
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (UIEdgeInsets)editingChromeDodgingInsets
{
  [(PREditorRootViewController *)self->_rootViewController editingChromeDodgingInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateHostForTitleReticleFrameChanged:(CGRect)changed
{
  height = changed.size.height;
  width = changed.size.width;
  y = changed.origin.y;
  x = changed.origin.x;
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PREditor_updateHostForTitleReticleFrameChanged___block_invoke;
  v8[3] = &__block_descriptor_64_e39_v16__0__FBSMutableSceneClientSettings_8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [_FBSScene updateClientSettingsWithBlock:v8];
}

- (NSMutableSet)depthEffectDisallowedReasons
{
  depthEffectDisallowedReasons = self->_depthEffectDisallowedReasons;
  if (!depthEffectDisallowedReasons)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = self->_depthEffectDisallowedReasons;
    self->_depthEffectDisallowedReasons = v4;

    depthEffectDisallowedReasons = self->_depthEffectDisallowedReasons;
  }

  return depthEffectDisallowedReasons;
}

- (void)setDepthEffectDisallowed:(BOOL)disallowed forReason:(id)reason
{
  disallowedCopy = disallowed;
  reasonCopy = reason;
  depthEffectDisallowedReasons = [(PREditor *)self depthEffectDisallowedReasons];
  v8 = depthEffectDisallowedReasons;
  if (disallowedCopy)
  {
    [depthEffectDisallowedReasons addObject:reasonCopy];
  }

  else
  {
    [depthEffectDisallowedReasons removeObject:reasonCopy];
  }

  -[PREditor _setDepthEffectDisallowed:](self, "_setDepthEffectDisallowed:", [v8 count] != 0);
}

- (BOOL)isDepthEffectDisallowedForReason:(id)reason
{
  reasonCopy = reason;
  depthEffectDisallowedReasons = [(PREditor *)self depthEffectDisallowedReasons];
  v6 = [depthEffectDisallowedReasons containsObject:reasonCopy];

  return v6;
}

- (void)_setDepthEffectDisallowed:(BOOL)disallowed
{
  if (self->_depthEffectDisallowed != disallowed)
  {
    disallowedCopy = disallowed;
    self->_depthEffectDisallowed = disallowed;
    if (disallowed || (-[PREditor preferences](self, "preferences"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 complicationRowMode], v6, v7 == 1))
    {
      [(PREditor *)self setDepthEffectEnabled:disallowedCopy ^ 1];
    }

    v8 = [(PREditor *)self delegateSafeForCallbackType:3];
    if (objc_opt_respondsToSelector())
    {
      [v8 editor:self depthEffectDisallowedDidChange:disallowedCopy];
    }
  }
}

- (BOOL)isDepthEffectEnabled
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_isDepthEffectDisabled = [clientSettings pr_isDepthEffectDisabled];

  return pr_isDepthEffectDisabled ^ 1;
}

- (void)setDepthEffectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_isDepthEffectDisabled = [clientSettings pr_isDepthEffectDisabled];

  if (pr_isDepthEffectDisabled == enabledCopy)
  {
    if ([(PREditor *)self isDepthEffectUserConfigured]&& enabledCopy)
    {
      self->_complicationRowAtBottom = 1;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__PREditor_setDepthEffectEnabled___block_invoke;
    v11[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
    v12 = enabledCopy;
    [_FBSScene updateClientSettingsWithBlock:v11];
    [(PRPosterPreferencesImpl *)self->_preferences updateDepthEffectEnabled:enabledCopy];
    [(PRPosterEditingEnvironment *)self->_environment setDepthEffectDisabled:enabledCopy ^ 1];
    v8 = [(PREditor *)self delegateSafeForCallbackType:2];
    [v8 editor:self didUpdateEnvironment:self->_environment withTransition:0];
    rootViewController = [(PREditor *)self rootViewController];
    isDepthEffectEffectivelyDisabled = [(PREditor *)self isDepthEffectEffectivelyDisabled];
    [rootViewController setDepthEffectDisabled:isDepthEffectEffectivelyDisabled];
    if ([(PREditor *)self isComplicationRowAtBottom])
    {
      [(PREditor *)self setRollbackDepthEffectEnabled:isDepthEffectEffectivelyDisabled ^ 1];
    }

    [(PREditor *)self updateRootViewControllerMenus];
  }
}

- (void)setComplicationRowAtBottom:(BOOL)bottom
{
  if (self->_complicationRowAtBottom != bottom)
  {
    v13[9] = v3;
    v13[10] = v4;
    bottomCopy = bottom;
    self->_complicationRowAtBottom = bottom;
    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController setComplicationRowAtBottom:bottomCopy];

    [(PREditor *)self setIgnoringSalientContentForTimeHeight:1];
    if (self->_complicationRowAtBottom)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39__PREditor_setComplicationRowAtBottom___block_invoke;
      v13[3] = &unk_1E7843688;
      v13[4] = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__PREditor_setComplicationRowAtBottom___block_invoke_2;
      v12[3] = &unk_1E7843E18;
      v12[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:v12 completion:0.2];
    }

    else
    {
      currentLook = [(PREditor *)self currentLook];
      v9 = [(PREditor *)self effectiveTitleStyleConfigurationForLook:currentLook];

      [v9 preferredTimeMaxYPortrait];
      [(PREditor *)self setRollbackTimeMaxY:?];
      [(PREditor *)self setRollbackDepthEffectEnabled:[(PREditor *)self isDepthEffectEnabled]];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __39__PREditor_setComplicationRowAtBottom___block_invoke_3;
      v11[3] = &unk_1E7843688;
      v11[4] = self;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __39__PREditor_setComplicationRowAtBottom___block_invoke_4;
      v10[3] = &unk_1E7843E18;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:v10 completion:0.2];
    }
  }
}

uint64_t __39__PREditor_setComplicationRowAtBottom___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isTimeMaxYRollBackCapable];
  if (result)
  {
    v3 = *(a1 + 32);
    [v3 rollbackTimeMaxY];

    return [v3 _updateForPreferredTimeMaxY:1 orientation:?];
  }

  return result;
}

uint64_t __39__PREditor_setComplicationRowAtBottom___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDepthEffectRollBackCapable];
  if (result)
  {
    [*(a1 + 32) setDepthEffectEnabled:{objc_msgSend(*(a1 + 32), "isRollbackDepthEffectEnabled")}];
    v3 = *(a1 + 32);

    return [v3 setDepthEffectUserConfigured:0];
  }

  return result;
}

void __39__PREditor_setComplicationRowAtBottom___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) preferences];
  v3 = [v2 complicationRowMode];

  if (!v3)
  {
    [*(a1 + 32) setDepthEffectUserConfigured:0];
    [*(a1 + 32) setDepthEffectEnabled:0];
    [*(a1 + 32) setDepthEffectRollBackCapable:1];
    v4 = *(a1 + 32);

    [v4 setTimeMaxYRollBackCapable:1];
  }
}

- (BOOL)isDepthEffectEffectivelyDisabled
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_isDepthEffectDisabled = [clientSettings pr_isDepthEffectDisabled];

  isDepthEffectDisallowed = [(PREditor *)self isDepthEffectDisallowed];
  posterRole = [(PREditor *)self posterRole];
  v8 = [posterRole isEqual:@"PRPosterRoleIncomingCall"];

  configuredProperties = [(PREditor *)self configuredProperties];
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  prefersVerticalTitleLayout = [titleStyleConfiguration prefersVerticalTitleLayout];

  if (pr_isDepthEffectDisabled)
  {
    v12 = 1;
  }

  else
  {
    v12 = isDepthEffectDisallowed | v8 & prefersVerticalTitleLayout;
  }

  return v12 & 1;
}

- (BOOL)isDepthEffectDisabled
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_isDepthEffectDisabled = [clientSettings pr_isDepthEffectDisabled];

  return pr_isDepthEffectDisabled;
}

- (UIMenu)depthEffectMenu
{
  v33[1] = *MEMORY[0x1E69E9840];
  depthEffectMenu = self->_depthEffectMenu;
  if (!depthEffectMenu)
  {
    rootViewController = [(PREditor *)self rootViewController];
    v5 = [rootViewController imageForDepthEffectActionTopLevelAction:0];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DC628];
    v7 = PRBundle();
    v8 = [v7 localizedStringForKey:@"DEPTH_EFFECT_ON" value:&stru_1F1C13D90 table:@"PosterKit"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __27__PREditor_depthEffectMenu__block_invoke;
    v30[3] = &unk_1E7843E40;
    v30[4] = self;
    objc_copyWeak(&v31, &location);
    v9 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:v30];

    v10 = MEMORY[0x1E69DC628];
    v11 = PRBundle();
    v12 = [v11 localizedStringForKey:@"DEPTH_EFFECT_OFF" value:&stru_1F1C13D90 table:@"PosterKit"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __27__PREditor_depthEffectMenu__block_invoke_2;
    v28[3] = &unk_1E7843E40;
    v28[4] = self;
    objc_copyWeak(&v29, &location);
    v13 = [v10 actionWithTitle:v12 image:0 identifier:0 handler:v28];

    v14 = MEMORY[0x1E69DC928];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __27__PREditor_depthEffectMenu__block_invoke_3;
    v25[3] = &unk_1E7843E68;
    v25[4] = self;
    v15 = v9;
    v26 = v15;
    v16 = v13;
    v27 = v16;
    v17 = [v14 elementWithUncachedProvider:v25];
    v18 = MEMORY[0x1E69DCC60];
    v19 = PREditorDepthEffectActionIdentifier;
    v33[0] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v21 = [v18 menuWithTitle:&stru_1F1C13D90 image:v5 identifier:v19 options:0 children:v20];
    v23 = self->_depthEffectMenu;
    p_depthEffectMenu = &self->_depthEffectMenu;
    *p_depthEffectMenu = v21;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);

    depthEffectMenu = *p_depthEffectMenu;
  }

  return depthEffectMenu;
}

void __27__PREditor_depthEffectMenu__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDepthEffectUserConfigured:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDepthEffectEnabled:1];
}

void __27__PREditor_depthEffectMenu__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDepthEffectUserConfigured:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDepthEffectEnabled:0];
}

void __27__PREditor_depthEffectMenu__block_invoke_3(id *a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a2;
  LODWORD(v3) = [v3 isDepthEffectDisallowed];
  v5 = [a1[4] isDepthEffectDisallowedForReason:@"complications"];
  [a1[5] setAttributes:v3];
  v6 = a1[5];
  if (v5)
  {
    v7 = PRBundle();
    v8 = [v7 localizedStringForKey:@"DEPTH_EFFECT_DISALLOWED" value:&stru_1F1C13D90 table:@"PosterKit"];
    [v6 setSubtitle:v8];
  }

  else
  {
    [a1[5] setSubtitle:0];
  }

  v9 = [a1[4] isDepthEffectEnabled];
  [a1[5] setState:v9];
  [a1[6] setState:v9 ^ 1];
  v10 = a1[5];
  v12[0] = a1[6];
  v12[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v4[2](v4, v11);
}

- (void)toggleDepthEffect
{
  v3 = [(PREditor *)self isDepthEffectEnabled]^ 1;

  [(PREditor *)self setDepthEffectEnabled:v3];
}

- (BOOL)areMotionEffectsDisabled
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_areMotionEffectsDisabled = [clientSettings pr_areMotionEffectsDisabled];

  return pr_areMotionEffectsDisabled;
}

- (unint64_t)effectiveMotionEffectsMode
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  settings = [_FBSScene settings];
  pr_effectiveMotionEffectsMode = [settings pr_effectiveMotionEffectsMode];

  return pr_effectiveMotionEffectsMode;
}

- (unint64_t)supportedMotionEffectsMode
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_supportedMotionEffectsMode = [clientSettings pr_supportedMotionEffectsMode];

  return pr_supportedMotionEffectsMode;
}

- (UIAction)togglingMotionEffectsAction
{
  supportedMotionEffectsMode = [(PREditor *)self supportedMotionEffectsMode];
  if (supportedMotionEffectsMode)
  {
    togglingMotionEffectsAction = self->_togglingMotionEffectsAction;
    if (!togglingMotionEffectsAction)
    {
      areMotionEffectsDisabled = [(PREditor *)self areMotionEffectsDisabled];
      v6 = PRBundle();
      v7 = [v6 localizedStringForKey:@"MOTION_EFFECTS" value:&stru_1F1C13D90 table:@"PosterKit"];

      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69DC628];
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gyroscope"];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __39__PREditor_togglingMotionEffectsAction__block_invoke;
      v16 = &unk_1E7843448;
      objc_copyWeak(&v17, &location);
      v10 = [v8 actionWithTitle:v7 image:v9 identifier:@"PREditor.ToggleMotionEffects" handler:&v13];
      v11 = self->_togglingMotionEffectsAction;
      self->_togglingMotionEffectsAction = v10;

      [(UIAction *)self->_togglingMotionEffectsAction setState:!areMotionEffectsDisabled, v13, v14, v15, v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);

      togglingMotionEffectsAction = self->_togglingMotionEffectsAction;
    }

    supportedMotionEffectsMode = togglingMotionEffectsAction;
  }

  return supportedMotionEffectsMode;
}

void __39__PREditor_togglingMotionEffectsAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleMotionEffects];
}

- (void)_toggleMotionEffects
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_areMotionEffectsDisabled = [clientSettings pr_areMotionEffectsDisabled];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PREditor__toggleMotionEffects__block_invoke;
  v6[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v7 = pr_areMotionEffectsDisabled ^ 1;
  [_FBSScene updateClientSettingsWithBlock:v6];
  [(PRPosterPreferencesImpl *)self->_preferences updateMotionEffectsEnabled:pr_areMotionEffectsDisabled];
  [(UIAction *)self->_togglingMotionEffectsAction setState:[(PREditor *)self areMotionEffectsDisabled]^ 1];
  [(PREditor *)self updateRootViewControllerMenus];
}

- (void)setPerspectiveZoomEnabled:(BOOL)enabled
{
  if ([(PREditor *)self isPerspectiveZoomEnabled]!= enabled)
  {

    [(PREditor *)self _togglePerspectiveZoom];
  }
}

- (UIAction)togglingPerspectiveZoomAction
{
  togglingPerspectiveZoomAction = self->_togglingPerspectiveZoomAction;
  if (!togglingPerspectiveZoomAction)
  {
    isPerspectiveZoomEnabled = [(PREditor *)self isPerspectiveZoomEnabled];
    v5 = PRBundle();
    v6 = [v5 localizedStringForKey:@"PERSPECTIVE_ZOOM" value:&stru_1F1C13D90 table:@"PosterKit"];

    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69DC628];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"perspective"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__PREditor_togglingPerspectiveZoomAction__block_invoke;
    v15 = &unk_1E7843448;
    objc_copyWeak(&v16, &location);
    v9 = [v7 actionWithTitle:v6 image:v8 identifier:@"PREditor.ToggleParallax" handler:&v12];
    v10 = self->_togglingPerspectiveZoomAction;
    self->_togglingPerspectiveZoomAction = v9;

    [(UIAction *)self->_togglingPerspectiveZoomAction setState:isPerspectiveZoomEnabled, v12, v13, v14, v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);

    togglingPerspectiveZoomAction = self->_togglingPerspectiveZoomAction;
  }

  return togglingPerspectiveZoomAction;
}

void __41__PREditor_togglingPerspectiveZoomAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _togglePerspectiveZoom];
}

- (UIMenu)appearanceMenu
{
  v42[1] = *MEMORY[0x1E69E9840];
  appearanceMenu = self->_appearanceMenu;
  if (!appearanceMenu)
  {
    v4 = PRBundle();
    v30 = [v4 localizedStringForKey:@"APPEARANCE" value:&stru_1F1C13D90 table:@"PosterKit"];

    v29 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"appearance"];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69DC628];
    v6 = PRBundle();
    v7 = [v6 localizedStringForKey:@"AUTOMATIC" value:&stru_1F1C13D90 table:@"PosterKit"];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __26__PREditor_appearanceMenu__block_invoke;
    v39[3] = &unk_1E7843448;
    objc_copyWeak(&v40, &location);
    v8 = [v5 actionWithTitle:v7 image:0 identifier:0 handler:v39];

    v9 = MEMORY[0x1E69DC628];
    v10 = PRBundle();
    v11 = [v10 localizedStringForKey:@"LIGHT" value:&stru_1F1C13D90 table:@"PosterKit"];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __26__PREditor_appearanceMenu__block_invoke_2;
    v37[3] = &unk_1E7843448;
    objc_copyWeak(&v38, &location);
    v12 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v37];

    v13 = MEMORY[0x1E69DC628];
    v14 = PRBundle();
    v15 = [v14 localizedStringForKey:@"DARK" value:&stru_1F1C13D90 table:@"PosterKit"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __26__PREditor_appearanceMenu__block_invoke_3;
    v35[3] = &unk_1E7843448;
    objc_copyWeak(&v36, &location);
    v16 = [v13 actionWithTitle:v15 image:0 identifier:0 handler:v35];

    v17 = MEMORY[0x1E69DC928];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __26__PREditor_appearanceMenu__block_invoke_4;
    v31[3] = &unk_1E7843E90;
    v31[4] = self;
    v18 = v8;
    v32 = v18;
    v19 = v12;
    v33 = v19;
    v20 = v16;
    v34 = v20;
    v21 = [v17 elementWithUncachedProvider:v31];
    v22 = MEMORY[0x1E69DCC60];
    v23 = PREditorAppearanceMenuIdentifier;
    v42[0] = v21;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v25 = [v22 menuWithTitle:v30 image:v29 identifier:v23 options:0 children:v24];
    v27 = self->_appearanceMenu;
    p_appearanceMenu = &self->_appearanceMenu;
    *p_appearanceMenu = v25;

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    appearanceMenu = *p_appearanceMenu;
  }

  return appearanceMenu;
}

void __26__PREditor_appearanceMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAppearance:0];
}

void __26__PREditor_appearanceMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAppearance:1];
}

void __26__PREditor_appearanceMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAppearance:2];
}

void __26__PREditor_appearanceMenu__block_invoke_4(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 activeAppearanceMenuSelectionForEditor:*(a1 + 32)];
    [*(a1 + 40) setState:v6 == 0];
    [*(a1 + 48) setState:v6 == 1];
    [*(a1 + 56) setState:v6 == 2];
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v10[0] = *(a1 + 56);
  v10[1] = v7;
  v10[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v4[2](v4, v9);
}

- (void)_updateAppearance:(int64_t)appearance
{
  v5 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    [v5 editor:self appearanceMenuDidChangeSelectedStyle:appearance];
  }
}

- (void)setComplicationsVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  pr_vibrancyConfiguration = [clientSettings pr_vibrancyConfiguration];

  if ((BSEqualObjects() & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PREditor_setComplicationsVibrancyConfiguration___block_invoke;
    v8[3] = &unk_1E7843DD0;
    v9 = configurationCopy;
    [_FBSScene updateClientSettingsWithBlock:v8];
  }
}

- (void)_rebuildRootViewController
{
  allowsHitTestingInRootViewController = [(PREditor *)self allowsHitTestingInRootViewController];
  [(UIWindow *)self->_window setUserInteractionEnabled:allowsHitTestingInRootViewController];
  layer = [(UIWindow *)self->_window layer];
  [layer setAllowsHitTesting:allowsHitTestingInRootViewController];

  if ([(PREditor *)self displaysRootViewController])
  {
    rootViewController = [(PREditor *)self rootViewController];
    [(PREditor *)self areViewsSharedBetweenLooks];
    v5 = objc_alloc_init(objc_opt_self());
    [v5 setEditor:self];
    dateProvider = [(PREditor *)self dateProvider];
    [v5 setDateProvider:dateProvider];
    [v5 setDepthEffectDisabled:{-[PREditor isDepthEffectEffectivelyDisabled](self, "isDepthEffectEffectivelyDisabled")}];
    [v5 setUsesEditingLayout:{-[PREditor usesEditingLayout](self, "usesEditingLayout")}];
    [v5 setControlsHidden:{-[PREditor areControlsHidden](self, "areControlsHidden")}];
    [v5 setComplicationsRowConfigured:{-[PREditor isComplicationsRowConfigured](self, "isComplicationsRowConfigured")}];
    [v5 setComplicationSidebarConfigured:{-[PREditor isComplicationSidebarConfigured](self, "isComplicationSidebarConfigured")}];
    [v5 setComplicationRowAtBottom:{-[PREditor isComplicationRowAtBottom](self, "isComplicationRowAtBottom")}];
    [v5 setFocusedComplicationElement:{-[PREditor focusedComplicationElement](self, "focusedComplicationElement")}];
    [v5 setSubtitleHidden:{-[PREditor isInlineComplicationConfigured](self, "isInlineComplicationConfigured")}];
    [v5 setFocusedQuickActionPosition:{-[PREditor focusedQuickActionPosition](self, "focusedQuickActionPosition")}];
    [(PREditor *)self setRootViewController:v5];
    contentOverlayView = [rootViewController contentOverlayView];
    if (contentOverlayView)
    {
      [v5 setContentOverlayView:contentOverlayView];
    }

    overlayHostViewController = [rootViewController overlayHostViewController];
    if (overlayHostViewController)
    {
      [v5 setOverlayHostViewController:overlayHostViewController];
    }

    [v5 loadViewIfNeeded];
    scrollView = [v5 scrollView];
    [(PREditor *)self updateScrollViewDecelerationRate:scrollView];
    v10 = v5;
    v11 = v10;
    if ([(PREditor *)self _cancelAndAcceptButtonsRequireNavigationBar])
    {
      v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v10];
      navigationBar = [v11 navigationBar];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [navigationBar setBackgroundColor:clearColor];

      navigationBar2 = [v11 navigationBar];
      [navigationBar2 _setBackgroundOpacity:0.0];
    }

    [(UIWindow *)self->_window setRootViewController:v11];
    _rootSheetPresentationController = [(UIWindow *)self->_window _rootSheetPresentationController];
    [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];
  }

  else
  {
    [(UIWindow *)self->_window setRootViewController:0];

    [(PREditor *)self setRootViewController:0];
  }
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  rootViewController = [(UIWindow *)self->_window rootViewController];
  rootViewController2 = [(PREditor *)self rootViewController];
  [rootViewController setOverrideUserInterfaceStyle:style];
  if (rootViewController != rootViewController2)
  {
    [rootViewController2 setOverrideUserInterfaceStyle:style];
  }
}

- (id)_refetchLooks
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PREditor *)self delegateSafeForCallbackType:3];
  v4 = [v3 looksForEditor:self];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        identifier = [v12 identifier];
        if ([v5 containsObject:identifier])
        {
          v15 = MEMORY[0x1E695DF30];
          v16 = *MEMORY[0x1E695D940];
          v17 = @"Look identifiers must be unique";
LABEL_15:
          v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
          objc_exception_throw(v18);
        }

        [v5 addObject:identifier];
        if ([v6 containsObject:v12])
        {
          v15 = MEMORY[0x1E695DF30];
          v16 = *MEMORY[0x1E695D940];
          v17 = @"Looks must be unique";
          goto LABEL_15;
        }

        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)_refetchLooksForProperties
{
  _refetchLooks = [(PREditor *)self _refetchLooks];
  rootViewController = [(PREditor *)self rootViewController];
  looks = [rootViewController looks];

  v7 = [_refetchLooks count];
  v25 = looks;
  if (v7 != [looks count])
  {
    [(PREditor *)a2 _refetchLooksForProperties];
  }

  v24 = a2;
  v8 = [_refetchLooks count];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_refetchLooks, "count")}];
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [_refetchLooks objectAtIndexedSubscript:i];
      v12 = [v25 objectAtIndexedSubscript:i];
      identifier = [v11 identifier];
      identifier2 = [v12 identifier];
      v15 = [identifier isEqualToString:identifier2];

      if ((v15 & 1) == 0)
      {
        [(PREditor *)v24 _refetchLooksForProperties];
      }

      displayName = [v11 displayName];
      displayName2 = [v12 displayName];
      v18 = [displayName isEqualToString:displayName2];

      if ((v18 & 1) == 0)
      {
        [(PREditor *)v24 _refetchLooksForProperties];
      }

      v19 = [v12 mutableCopy];
      initialTimeFontConfiguration = [v11 initialTimeFontConfiguration];
      if (initialTimeFontConfiguration)
      {
        [v19 setInitialTimeFontConfiguration:initialTimeFontConfiguration];
      }

      initialTitleColor = [v11 initialTitleColor];
      if (initialTitleColor)
      {
        [v19 setInitialTitleColor:initialTitleColor];
      }

      v22 = [v19 copy];
      [v9 addObject:v22];
    }
  }

  return v9;
}

- (void)_refreshDefaultTitleStyleConfigurationsForLooks:(id)looks luminanceForLooks:(id)forLooks initialLook:(id)look configuredTitleStyleConfiguration:(id)configuration
{
  v61 = *MEMORY[0x1E69E9840];
  looksCopy = looks;
  forLooksCopy = forLooks;
  lookCopy = look;
  configurationCopy = configuration;
  posterRole = [(PREditor *)self posterRole];
  v14 = PFPosterRoleSupportsTitleStyleConfigurations();

  if (v14)
  {
    v15 = [(PREditor *)self shouldApplyTitleStyleAcrossAllLooksFromConfiguredTitleStyleConfiguration:configurationCopy];
    shouldIgnorePreviouslyConfiguredTitleStyleConfiguration = [(PREditor *)self shouldIgnorePreviouslyConfiguredTitleStyleConfiguration];
    v45 = [(PREditor *)self delegateSafeForCallbackType:3];
    if (v45)
    {
      v48 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    }

    else
    {
      v48 = 0;
    }

    v51 = [(NSMutableDictionary *)self->_defaultTitleStyleConfigurationPerLook mutableCopy];
    defaultTitleStyleConfigurationPerLook = self->_defaultTitleStyleConfigurationPerLook;
    v20 = PRLogEditing();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (defaultTitleStyleConfigurationPerLook)
    {
      if (v21)
      {
        *buf = 134217984;
        v60 = [looksCopy count];
        _os_log_impl(&dword_1A8AA7000, v20, OS_LOG_TYPE_INFO, "Rebuilding _defaultTitleStyleConfigurationPerLook for %lu looks", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_defaultTitleStyleConfigurationPerLook removeAllObjects];
    }

    else
    {
      if (v21)
      {
        *buf = 134217984;
        v60 = [looksCopy count];
        _os_log_impl(&dword_1A8AA7000, v20, OS_LOG_TYPE_INFO, "Building _defaultTitleStyleConfigurationPerLook for %lu looks", buf, 0xCu);
      }

      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v23 = self->_defaultTitleStyleConfigurationPerLook;
      self->_defaultTitleStyleConfigurationPerLook = v22;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v47 = looksCopy;
    obj = looksCopy;
    v24 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v52 = *v55;
      v50 = v15 || shouldIgnorePreviouslyConfiguredTitleStyleConfiguration;
      v26 = lookCopy;
      do
      {
        v27 = 0;
        do
        {
          if (*v55 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v54 + 1) + 8 * v27);
          v29 = [forLooksCopy objectForKeyedSubscript:v28];
          [v29 doubleValue];
          v31 = v30;

          if (!lookCopy || (configurationCopy == 0) | (([v28 isEqual:lookCopy] & 1) == 0) | v50)
          {
            v32 = [v51 objectForKey:v28];
            if (v32 && (!configurationCopy || [configurationCopy isEqual:v32]))
            {
              v33 = v32;
              goto LABEL_25;
            }

            initialTimeFontConfiguration = [v28 initialTimeFontConfiguration];
            if (initialTimeFontConfiguration)
            {

              goto LABEL_28;
            }

            initialTitleColor = [v28 initialTitleColor];

            if (!configurationCopy || initialTitleColor)
            {
LABEL_28:
              timeNumberingSystem = [configurationCopy timeNumberingSystem];
              v34 = [v28 titleStyleConfigurationWithExtensionBundle:v48 luminance:timeNumberingSystem timeNumberingSystem:v31];
            }

            else
            {
              v33 = configurationCopy;
LABEL_25:
              v34 = v33;
            }

            goto LABEL_31;
          }

          v34 = configurationCopy;
LABEL_31:
          v37 = [v34 mutableCopy];
          timeFontConfiguration = [v34 timeFontConfiguration];
          v39 = [(PREditor *)self _selectableTimeFontConfigurationForProposedTimeFontConfiguration:timeFontConfiguration];
          [v37 setTimeFontConfiguration:v39];

          groupName = [v37 groupName];

          if (!groupName)
          {
            groupName2 = [v28 groupName];
            [v37 setGroupName:groupName2];
          }

          [v37 setContentsLuminance:v31];
          v42 = [v37 copy];

          [(NSMutableDictionary *)self->_defaultTitleStyleConfigurationPerLook setObject:v42 forKey:v28];
          ++v27;
          lookCopy = v26;
        }

        while (v25 != v27);
        v44 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        v25 = v44;
      }

      while (v44);
    }

    v17 = v46;
    looksCopy = v47;
  }

  else
  {
    v17 = PRLogEditing();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      posterRole2 = [(PREditor *)self posterRole];
      *buf = 138543362;
      v60 = posterRole2;
      _os_log_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEFAULT, "Role %{public}@ does not support title style configurations, not populating the defaults", buf, 0xCu);
    }
  }
}

- (id)_selectableTimeFontConfigurationForProposedTimeFontConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PREditor *)self delegateSafeForCallbackType:3];
  posterRole = [(PREditor *)self posterRole];
  v7 = [PREditingFontAndColorPickerViewController defaultFontIdentifiersForRole:posterRole titleString:self->_titleString];

  v34 = v7;
  v8 = [v7 bs_map:&__block_literal_global_340];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_2;
  v43[3] = &unk_1E7843EF8;
  v9 = v5;
  v44 = v9;
  selfCopy = self;
  v10 = [v8 bs_filter:v43];

  posterRole2 = [(PREditor *)self posterRole];
  v12 = [posterRole2 isEqualToString:@"PRPosterRoleIncomingCall"];

  v32 = v9;
  if ((v12 & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v13 = [v9 additionalTimeFontConfigurationsForEditor:{self, v9}];
  }

  extensionBundleURL = [(PREditor *)self extensionBundleURL];
  v15 = [configurationCopy timeFontConfigurationWithExtensionBundleURL:extensionBundleURL];

  v16 = [v10 arrayByAddingObjectsFromArray:v13];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_3;
  v39[3] = &unk_1E7843F20;
  v17 = v15;
  v40 = v17;
  v18 = v13;
  v41 = v18;
  v19 = configurationCopy;
  v42 = v19;
  v20 = [v16 bs_firstObjectPassingTest:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_4;
  v37[3] = &unk_1E7843F48;
  v21 = v17;
  v38 = v21;
  firstObject = [v16 bs_firstObjectPassingTest:v37];

  if (firstObject || (v35[0] = MEMORY[0x1E69E9820], v35[1] = 3221225472, v35[2] = __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_5, v35[3] = &unk_1E7843F48, v23 = v21, v36 = v23, [v16 bs_firstObjectPassingTest:v35], firstObject = objc_claimAutoreleasedReturnValue(), v36, firstObject))
  {
    v24 = [v18 containsObject:firstObject];
LABEL_8:
    v25 = v24 ^ 1u;
    goto LABEL_9;
  }

  firstObject = [v16 firstObject];
  v24 = [v18 containsObject:firstObject];
  if (firstObject)
  {
    goto LABEL_8;
  }

  firstObject = v23;
  v25 = 0;
LABEL_9:
  if ([v10 containsObject:firstObject])
  {
    v26 = [PRTimeFontConfiguration alloc];
    timeFontIdentifier = [firstObject timeFontIdentifier];
    [v21 weight];
    v28 = [(PRTimeFontConfiguration *)v26 initWithTimeFontIdentifier:timeFontIdentifier weight:?];

    firstObject = v28;
  }

  extensionBundleURL2 = [(PREditor *)self extensionBundleURL];
  v30 = [PRPosterTimeFontConfiguration configurationWithTimeFontConfiguration:firstObject extensionBundleURL:extensionBundleURL2 systemItem:v25];

  return v30;
}

PRTimeFontConfiguration *__77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v2];

  return v3;
}

uint64_t __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) editor:*(a1 + 40) shouldAllowUserToSelectTimeFontConfiguration:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BSEqualObjects();
  [*(a1 + 40) containsObject:v3];

  [*(a1 + 48) isSystemItem];
  return v4 & BSEqualBools();
}

uint64_t __77__PREditor__selectableTimeFontConfigurationForProposedTimeFontConfiguration___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 timeFontIdentifier];
  v4 = [*(a1 + 32) timeFontIdentifier];
  v5 = BSEqualObjects();

  return v5;
}

- (void)_refetchLooksAndBuildUI
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v1 object:v0 file:@"PREditor.m" lineNumber:2044 description:@"initial look not found in looks array"];
}

uint64_t __35__PREditor__refetchLooksAndBuildUI__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)viewsHaveASubview
{
  rootViewController = [(PREditor *)self rootViewController];
  if ([(PREditor *)self areViewsSharedBetweenLooks])
  {
    views = [rootViewController views];
  }

  else
  {
    currentLook = [(PREditor *)self currentLook];
    views = [rootViewController viewsForLook:currentLook];
  }

  backgroundView = [views backgroundView];
  subviews = [backgroundView subviews];
  if ([subviews count])
  {
    v8 = 1;
  }

  else
  {
    foregroundView = [views foregroundView];
    subviews2 = [foregroundView subviews];
    if ([subviews2 count])
    {
      v8 = 1;
    }

    else
    {
      floatingView = [views floatingView];
      subviews3 = [floatingView subviews];
      v8 = [subviews3 count] != 0;
    }
  }

  return v8;
}

- (void)_applyStylePropertiesFromConfiguredProperties:(id)properties toConfiguredProperties:(id)configuredProperties forLook:(id)look
{
  propertiesCopy = properties;
  configuredPropertiesCopy = configuredProperties;
  v9 = [(PREditor *)self defaultTitleStyleConfigurationForLook:look];
  titleStyleConfiguration = [propertiesCopy titleStyleConfiguration];
  [v9 contentsLuminance];
  v12 = v11;
  [titleStyleConfiguration contentsLuminance];
  if (v12 != v13)
  {
    v14 = [titleStyleConfiguration mutableCopy];
    [v9 contentsLuminance];
    [v14 setContentsLuminance:?];

    titleStyleConfiguration = v14;
  }

  [configuredPropertiesCopy setTitleStyleConfiguration:titleStyleConfiguration];
  colorVariationsConfiguration = [propertiesCopy colorVariationsConfiguration];
  [configuredPropertiesCopy setColorVariationsConfiguration:colorVariationsConfiguration];
}

- (BOOL)shouldApplyTitleStyleAcrossAllLooksFromConfiguredTitleStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(PREditor *)self editingContext])
  {
    isUserConfigured = [configurationCopy isUserConfigured];
  }

  else
  {
    isUserConfigured = 1;
  }

  return isUserConfigured;
}

- (BOOL)shouldIgnorePreviouslyConfiguredTitleStyleConfiguration
{
  if ([(PREditor *)self editingContext]== 2 || [(PREditor *)self hasUpdatedLooks])
  {
    return 1;
  }

  return [(PREditor *)self hasUpdatedLookProperties];
}

- (void)updateRootViewControllerMenus
{
  rootViewController = [(PREditor *)self rootViewController];
  [rootViewController _updateMenuElements];
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  rootViewController = self->_rootViewController;
  p_rootViewController = &self->_rootViewController;
  v6 = rootViewController;
  if (rootViewController != controllerCopy)
  {
    v9 = controllerCopy;
    [(PREditorRootViewController *)v6 invalidate];
    objc_storeStrong(p_rootViewController, controller);
    controllerCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v6, controllerCopy);
}

- (void)setInlineComplicationConfigured:(BOOL)configured
{
  if (self->_inlineComplicationConfigured != configured)
  {
    configuredCopy = configured;
    self->_inlineComplicationConfigured = configured;
    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController setSubtitleHidden:configuredCopy];
  }
}

- (void)setAlternateDateEnabled:(BOOL)enabled
{
  if (self->_alternateDateEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_alternateDateEnabled = enabled;
    configuredProperties = [(PREditor *)self configuredProperties];
    if (!configuredProperties)
    {
      v11 = objc_alloc_init(PRPosterMutableConfiguredProperties);
      [(PREditor *)self setConfiguredProperties:v11];
      configuredProperties = v11;
    }

    v12 = configuredProperties;
    titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
    v8 = [titleStyleConfiguration mutableCopy];

    if (!v8)
    {
      currentLook = [(PREditor *)self currentLook];
      v10 = [(PREditor *)self defaultTitleStyleConfigurationForLook:currentLook];
      v8 = [v10 mutableCopy];
    }

    [v8 setAlternateDateEnabled:enabledCopy];
    [v12 setTitleStyleConfiguration:v8];
    [(PREditorRootViewController *)self->_rootViewController lookPropertiesDidChange];
  }
}

- (void)setCoveredByHostModalPresentation:(BOOL)presentation
{
  if (self->_coveredByHostModalPresentation != presentation)
  {
    presentationCopy = presentation;
    coveredByHostModalPresentationDisableLookSwitchingAssertion = [(PREditor *)self coveredByHostModalPresentationDisableLookSwitchingAssertion];
    [coveredByHostModalPresentationDisableLookSwitchingAssertion invalidate];

    [(PREditor *)self setCoveredByHostModalPresentationDisableLookSwitchingAssertion:0];
    self->_coveredByHostModalPresentation = presentationCopy;
    if (presentationCopy)
    {
      v6 = [(PREditor *)self disableSwitchingLooksForReason:@"CoveredByHostModalPresentation"];
      [(PREditor *)self setCoveredByHostModalPresentationDisableLookSwitchingAssertion:v6];
    }
  }
}

- (void)_acquireModalPresentationAssertionForViewController:(id)controller
{
  controllerCopy = controller;
  v10 = controllerCopy;
  if (!self->_modalPresentationAssertionsByViewController)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    modalPresentationAssertionsByViewController = self->_modalPresentationAssertionsByViewController;
    self->_modalPresentationAssertionsByViewController = strongToStrongObjectsMapTable;

    controllerCopy = v10;
  }

  controllerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ViewControllerPresentation: %@", controllerCopy];
  v8 = self->_modalPresentationAssertionsByViewController;
  v9 = [(PREditor *)self _acquireModalPresentationAssertionForReason:controllerCopy];
  [(NSMapTable *)v8 setObject:v9 forKey:v10];
}

- (id)_acquireModalPresentationAssertionForReason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!self->_modalPresentationAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    modalPresentationAssertions = self->_modalPresentationAssertions;
    self->_modalPresentationAssertions = weakObjectsHashTable;
  }

  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x1E698E778]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__PREditor__acquireModalPresentationAssertionForReason___block_invoke;
  v15[3] = &unk_1E7843F98;
  v10 = reasonCopy;
  v16 = v10;
  objc_copyWeak(&v17, &location);
  v11 = [v7 initWithIdentifier:uUIDString forReason:v10 invalidationBlock:v15];

  v12 = PRLogEditing();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "Acquiring modal presentation assertion for reason %{public}@, assertion %p", buf, 0x16u);
  }

  modalPresentationAssertions = [(PREditor *)self modalPresentationAssertions];
  [modalPresentationAssertions addObject:v11];

  [(PREditor *)self _updatePresentingModalViewController];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);

  return v11;
}

void __56__PREditor__acquireModalPresentationAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRLogEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = v3;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated modal presentation assertion for reason %{public}@: %p", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained modalPresentationAssertions];
    [v8 removeObject:v3];

    [v7 _updatePresentingModalViewController];
  }
}

- (void)_updatePresentingModalViewController
{
  modalPresentationAssertions = [(PREditor *)self modalPresentationAssertions];
  v4 = [modalPresentationAssertions count] != 0;

  [(PREditor *)self setPresentingModalViewController:v4];
}

- (void)setPresentingModalViewController:(BOOL)controller
{
  if (self->_presentingModalViewController != controller)
  {
    v15 = v3;
    v16 = v4;
    controllerCopy = controller;
    presentingModalViewControllerDisableLookSwitchingAssertion = [(PREditor *)self presentingModalViewControllerDisableLookSwitchingAssertion];
    [presentingModalViewControllerDisableLookSwitchingAssertion invalidate];

    [(PREditor *)self setPresentingModalViewControllerDisableLookSwitchingAssertion:0];
    self->_presentingModalViewController = controllerCopy;
    _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PREditor_setPresentingModalViewController___block_invoke;
    v13[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
    v14 = controllerCopy;
    [_FBSScene updateClientSettingsWithBlock:v13];

    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController setPresentingModalViewController:controllerCopy];
    if (controllerCopy)
    {
      v10 = [(PREditor *)self disableSwitchingLooksForReason:@"PresentingModalViewController"];
      [(PREditor *)self setPresentingModalViewControllerDisableLookSwitchingAssertion:v10];
    }

    else if ([(PREditor *)self isLifecycleTiedToInitiallyPresentedViewController])
    {
      if ([(PREditor *)self isDismissingPresentedViewControllerFromTitledViewController])
      {
        serverIdentity = [(PFServerPosterPath *)self->_sourceContents serverIdentity];
        if (([serverIdentity type] - 1) >= 2)
        {
          v12 = [serverIdentity isIncomingConfiguration] ^ 1;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 1;
      }

      [(PREditor *)self requestDismissalWithAction:v12];
    }
  }
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_titleString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    titleString = self->_titleString;
    self->_titleString = v4;

    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController updateForChangedTitleString];
  }
}

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  dateProvider = [(PREditor *)self dateProvider];
  overrideDate = [dateProvider overrideDate];
  v6 = [overrideDate isEqualToDate:dateCopy];

  if ((v6 & 1) == 0)
  {
    [dateProvider setOverrideDate:dateCopy];
    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController updateForChangedOverrideDate];
  }
}

- (void)setHorizontalTitleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_horizontalTitleBoundingRect))
  {
    self->_horizontalTitleBoundingRect.origin.x = x;
    self->_horizontalTitleBoundingRect.origin.y = y;
    self->_horizontalTitleBoundingRect.size.width = width;
    self->_horizontalTitleBoundingRect.size.height = height;
    [PREditorElementLayoutController registerBoundingRect:0 forTitleLayout:2 variant:x, y, width, height];
    posterRole = [(PREditor *)self posterRole];
    v9 = [posterRole isEqual:@"PRPosterRoleIncomingCall"];

    if (v9)
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      v13 = CGRectInset(v12, -8.0, -8.0);
      [PREditorElementLayoutController registerBoundingRect:0 forTitleLayout:3 variant:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
      [PREditorElementLayoutController registerBoundingRect:0 forTitleLayout:0 variant:x, y, width, height];
      [PREditorElementLayoutController registerBoundingRect:0 forTitleLayout:1 variant:x, y, width, height];
    }

    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController updateReticleViewFrames];
  }
}

- (void)setVerticalTitleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_verticalTitleBoundingRect))
  {
    self->_verticalTitleBoundingRect.origin.x = x;
    self->_verticalTitleBoundingRect.origin.y = y;
    self->_verticalTitleBoundingRect.size.width = width;
    self->_verticalTitleBoundingRect.size.height = height;
    [PREditorElementLayoutController registerBoundingRect:1 forTitleLayout:2 variant:x, y, width, height];
    posterRole = [(PREditor *)self posterRole];
    v9 = [posterRole isEqual:@"PRPosterRoleIncomingCall"];

    if (v9)
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      v13 = CGRectInset(v12, -12.0, -20.0);
      [PREditorElementLayoutController registerBoundingRect:1 forTitleLayout:3 variant:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
      [PREditorElementLayoutController registerBoundingRect:1 forTitleLayout:0 variant:x, y, width, height];
      [PREditorElementLayoutController registerBoundingRect:1 forTitleLayout:1 variant:x, y, width, height];
    }

    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController updateReticleViewFrames];
  }
}

- (void)setUserInterfaceStyleLuminanceThreshold:(id)threshold
{
  thresholdCopy = threshold;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_userInterfaceStyleLuminanceThreshold, threshold);
    [(PREditor *)self _updateUserInterfaceStyleIfNeeded];
  }
}

- (void)_updateUserInterfaceStyleIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] pui_NSStringFromUIUserInterfaceStyle:self];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_DEBUG, "Re-evaluating overriddenUserInterfaceStyle. Using trait collection value: %{public}@", v4, 0xCu);
}

- (BOOL)displaysHeaderElements
{
  posterRole = [(PREditor *)self posterRole];
  v4 = [posterRole isEqual:*MEMORY[0x1E69C5220]];

  if (v4)
  {
    return [(PREditor *)self variant]== 0;
  }

  posterRole2 = [(PREditor *)self posterRole];
  v7 = [posterRole2 isEqual:*MEMORY[0x1E69C5218]];

  return v7;
}

- (BOOL)displaysSubtitleElement
{
  posterRole = [(PREditor *)self posterRole];
  v3 = [posterRole isEqual:@"PRPosterRoleIncomingCall"];

  return v3 ^ 1;
}

- (BOOL)areComplicationsAllowed
{
  if ([(PREditor *)self variant])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    posterRole = [(PREditor *)self posterRole];
    v5 = PFPosterRoleFromPRPosterRole(posterRole);

    if (PFPosterRoleSupportsComplications())
    {
      v3 = ![(PREditor *)self areComplicationsDisallowed];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (int64_t)editingIdiom
{
  posterRole = [(PREditor *)self posterRole];
  if ([posterRole isEqualToString:@"PRPosterRoleBackdrop"])
  {

    return 0;
  }

  posterRole2 = [(PREditor *)self posterRole];
  v5 = [posterRole2 isEqualToString:@"PRPosterRoleIncomingCall"];

  if (v5)
  {
    return 0;
  }

  result = PFCurrentDeviceClass();
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)_updateForPreferredTimeMaxY:(double)y orientations:(unint64_t)orientations
{
  configuredProperties = [(PREditor *)self configuredProperties];
  if (!configuredProperties)
  {
    v8 = objc_alloc_init(PRPosterMutableConfiguredProperties);
    [(PREditor *)self setConfiguredProperties:v8];
    configuredProperties = v8;
  }

  v9 = configuredProperties;
  [(PREditor *)self _updateConfiguredProperties:configuredProperties forPreferredTimeMaxY:orientations orientations:y];
}

- (void)_updateConfiguredProperties:(id)properties forPreferredTimeMaxY:(double)y orientations:(unint64_t)orientations
{
  propertiesCopy = properties;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  titleStyleConfiguration = [propertiesCopy titleStyleConfiguration];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __74__PREditor__updateConfiguredProperties_forPreferredTimeMaxY_orientations___block_invoke;
  v21 = &unk_1E7843FC0;
  v10 = titleStyleConfiguration;
  yCopy = y;
  v22 = v10;
  selfCopy = self;
  v11 = propertiesCopy;
  v24 = v11;
  v25 = &v27;
  v12 = &v18;
  if (orientations)
  {
    v13 = 0;
    v31 = 0;
    v14 = vcnt_s8(orientations);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.i32[0];
    do
    {
      if (((1 << v13) & orientations) != 0)
      {
        (v20)(v12);
        if (v31)
        {
          break;
        }

        --v15;
      }

      if (v13 > 0x3E)
      {
        break;
      }

      ++v13;
    }

    while (v15 > 0);
  }

  v16 = [(PREditor *)self isComplicationRowAtBottom:v18];
  if ((v28[3] & v16 & 1) != 0 && !self->_presentingComplicationGallery)
  {
    [(PREditor *)self setRollbackTimeMaxY:y];
  }

  isTimeResizeGestureActive = [(PREditorRootViewController *)self->_rootViewController isTimeResizeGestureActive];
  if ((*(v28 + 24) | isTimeResizeGestureActive))
  {
    [(PREditorRootViewController *)self->_rootViewController lookPropertiesDidChange];
  }

  _Block_object_dispose(&v27, 8);
}

void __74__PREditor__updateConfiguredProperties_forPreferredTimeMaxY_orientations___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a3;
  [*(a1 + 32) preferredTimeMaxYForOrientation:a3];
  if (v5 != *(a1 + 64))
  {
    v6 = [*(a1 + 32) mutableCopy];
    if (!v6)
    {
      v7 = [*(a1 + 40) currentLook];
      v8 = [*(a1 + 40) defaultTitleStyleConfigurationForLook:v7];
      v9 = [v8 mutableCopy];

      v6 = v9;
    }

    v10 = v6;
    [v6 setPreferredTimeMaxY:v4 forOrientation:*(a1 + 64)];
    [v10 setAdaptiveTimeHeightUserConfigured:{objc_msgSend(*(a1 + 40), "isAdaptiveTimeHeightUserConfigured")}];
    [*(a1 + 48) setTitleStyleConfiguration:v10];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (void)_finalizeAdaptiveTimeParameters:(id)parameters
{
  parametersCopy = parameters;
  preferences = [(PREditor *)self preferences];
  adaptiveTimeMode = [preferences adaptiveTimeMode];

  if (adaptiveTimeMode == 2)
  {
    [(PREditor *)self _updateConfiguredProperties:parametersCopy forPreferredTimeMaxY:30 orientations:1.0];
  }
}

- (id)_hostProcessHandle
{
  _FBSScene = [(UIWindowScene *)self->_scene _FBSScene];
  hostHandle = [_FBSScene hostHandle];
  auditToken = [hostHandle auditToken];
  v5 = [auditToken pid];

  v6 = [MEMORY[0x1E69C75E0] identifierWithPid:v5];
  v11 = 0;
  v7 = [MEMORY[0x1E69C75D0] handleForIdentifier:v6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = PRLogEditing();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PREditor _hostProcessHandle];
    }
  }

  return v7;
}

- (UIEdgeInsets)_windowSafeAreaInsets
{
  window = self->_window;
  if (window)
  {
    [(UIWindow *)window safeAreaInsets];
  }

  else
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)_cancelAndAcceptButtonsRequireNavigationBar
{
  acceptButtonType = [(PREditor *)self acceptButtonType];
  v4 = PUIFeatureEnabled();
  result = 0;
  if (v4)
  {
    if (acceptButtonType == 3)
    {
      return [(PREditor *)self editingIdiom]!= 2;
    }
  }

  return result;
}

- (unint64_t)timeViewControllerDisplayedElements
{
  if ([(PREditor *)self areComplicationsAllowed])
  {
    return 65;
  }

  if ([(PREditor *)self displaysSubtitleElement])
  {
    return 67;
  }

  return 65;
}

- (BOOL)displaysRootViewController
{
  posterRole = [(PREditor *)self posterRole];
  v4 = [posterRole isEqualToString:@"PRPosterRoleAmbient"];

  if (!v4)
  {
    return 1;
  }

  editingContext = [(PREditor *)self editingContext];

  return PREditingContextIsSavedConfiguration(editingContext);
}

- (id)extensionBundle
{
  delegate = [(PREditor *)self delegate];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return v3;
}

- (id)extensionBundleURL
{
  extensionBundle = [(PREditor *)self extensionBundle];
  bundleURL = [extensionBundle bundleURL];

  return bundleURL;
}

- (id)delegateSafeForCallbackType:(int64_t)type
{
  delegate = [(PREditor *)self delegate];
  status = [(PREditor *)self status];
  if (type == 3)
  {
    if (status != 2)
    {

      delegate = 0;
    }

    if (![(PREditor *)self displaysRootViewController])
    {
      goto LABEL_4;
    }
  }

  else if (type == 2 && status != 2)
  {
LABEL_4:

    delegate = 0;
  }

  return delegate;
}

- (void)handleNotificationForwardAction:(id)action
{
  v8 = *MEMORY[0x1E69E9840];
  notificationName = [action notificationName];
  v4 = PRLogEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = notificationName;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Forwarding appearance notification from host: %{public}@", &v6, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:notificationName object:0];
}

- (void)handleRenderingServiceEndpointDidChangeAction:(id)action
{
  actionCopy = action;
  endpoint = [actionCopy endpoint];
  if (endpoint)
  {
    deviceMotionRenderer = self->_deviceMotionRenderer;
    if (!deviceMotionRenderer || (-[PRDeviceMotionRenderer renderingServiceEndpoint](deviceMotionRenderer, "renderingServiceEndpoint"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToServiceEndpoint:endpoint], v7, (v8 & 1) == 0))
    {
      objc_initWeak(&location, self);
      v9 = [PRDeviceMotionRenderer alloc];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __58__PREditor_handleRenderingServiceEndpointDidChangeAction___block_invoke;
      v16 = &unk_1E7843FE8;
      objc_copyWeak(&v17, &location);
      v10 = [(PRDeviceMotionRenderer *)v9 initWithIdentifier:@"PREditor.deviceMotionRendering" renderingServiceEndpoint:endpoint motionUpdateHandler:&v13];
      v11 = self->_deviceMotionRenderer;
      self->_deviceMotionRenderer = v10;

      v12 = self->_deviceMotionRenderer;
      [(PRPosterEditingEnvironment *)self->_environment deviceMotionUpdateInterval:v13];
      [(PRDeviceMotionRenderer *)v12 setDeviceMotionUpdateInterval:?];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __58__PREditor_handleRenderingServiceEndpointDidChangeAction___block_invoke(uint64_t a1, _OWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[19];
    v6 = a2[1];
    v8[0] = *a2;
    v8[1] = v6;
    [v5 setDeviceMotionRotation:v8];
    v7 = [v4 delegateSafeForCallbackType:2];
    [v7 editor:v4 didUpdateEnvironment:v4[19] withTransition:0];
  }
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __28__PREditor_debugDescription__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  if (self->_window)
  {
    [PREditor scene:a2 willConnectToSession:? options:?];
  }

  v13 = optionsCopy;
  v14 = PRLogEditing();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "Scene did connect", v22, 2u);
  }

  [(PREditor *)self setStatus:1];
  objc_storeStrong(&self->_scene, scene);
  [sceneCopy setDelegate:self];
  [sceneCopy _registerSceneComponent:self forKey:@"PREditor"];
  v15 = [[PRPosterWindow alloc] initWithWindowScene:sceneCopy];
  window = self->_window;
  self->_window = &v15->super;

  [(UIWindow *)self->_window setUserInteractionEnabled:1];
  layer = [(UIWindow *)self->_window layer];
  [layer setAllowsHitTesting:1];

  _FBSScene = [sceneCopy _FBSScene];
  settings = [_FBSScene settings];

  -[PREditor setUsesEditingLayout:](self, "setUsesEditingLayout:", [settings pr_usesEditingLayout]);
  -[PREditor setAcceptButtonType:](self, "setAcceptButtonType:", [settings pr_editingAcceptButtonType]);
  -[PREditor setComplicationsRowConfigured:](self, "setComplicationsRowConfigured:", [settings pui_isComplicationRowConfigured]);
  -[PREditor setComplicationSidebarConfigured:](self, "setComplicationSidebarConfigured:", [settings pui_isComplicationSidebarConfigured]);
  -[PREditor setComplicationRowAtBottom:](self, "setComplicationRowAtBottom:", [settings pui_isComplicationRowAtBottom]);
  if ([(PREditor *)self displaysRootViewController])
  {
    v20 = [(PREditor *)self delegateSafeForCallbackType:1];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v20 looksShareBaseAppearanceForEditor:self];
    }

    else
    {
      v21 = 0;
    }

    [(PREditor *)self setViewsSharedBetweenLooks:v21];
    [(PREditor *)self _rebuildRootViewController];
  }

  [(UIWindow *)self->_window setHidden:0];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  if (!self->_disconnected)
  {
    self->_disconnected = 1;
    v4 = PRLogEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Scene is disconnecting", buf, 2u);
    }

    v5 = [(PREditor *)self delegateSafeForCallbackType:0];
    [v5 editorDidInvalidate:self];
    v6 = PRLogEditing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Scene did disconnect", v12, 2u);
    }
  }

  [(PRPosterConfiguration *)self->_targetConfig invalidate];
  targetConfig = self->_targetConfig;
  self->_targetConfig = 0;

  sourceContents = self->_sourceContents;
  self->_sourceContents = 0;

  [(UIWindow *)self->_window setHidden:1];
  [(PREditor *)self _discardRootViewController];
  window = self->_window;
  self->_window = 0;

  scene = self->_scene;
  self->_scene = 0;

  delegate = self->_delegate;
  self->_delegate = 0;

  [(PREditor *)self setStatus:0];
}

- (PREditor)initWithScene:(id)scene
{
  sceneCopy = scene;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this should not be called"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"PREditor.m";
    v19 = 1024;
    v20 = 2697;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_settingsDiffActionsForScene:(id)scene
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)_editorDynamicRotationIsActive
{
  IsActive = PUIDynamicRotationIsActive();
  if (IsActive)
  {
    posterRole = [(PREditor *)self posterRole];
    v5 = PFPosterRoleSupportsEditorDynamicRotation();

    LOBYTE(IsActive) = v5;
  }

  return IsActive;
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  v158 = settingsCopy;
  v16 = objc_opt_new();
  if (-[PREditor _editorDynamicRotationIsActive](self, "_editorDynamicRotationIsActive") && ([contextCopy animationSettings], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = MEMORY[0x1E698E608];
    animationSettings = [contextCopy animationSettings];
    [animationSettings duration];
    v21 = v20;
    v22 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    animationSettings2 = [v18 settingsWithDuration:v22 timingFunction:v21];
  }

  else
  {
    animationSettings2 = [contextCopy animationSettings];
  }

  [v16 setAnimationSettings:animationSettings2];

  v157 = contextCopy;
  actions = [contextCopy actions];
  allObjects = [actions allObjects];
  [v16 setActions:allObjects];

  settings = [sSceneCopy settings];
  if (!(diffCopy | v158))
  {
    diffCopy = [MEMORY[0x1E699FC30] diffFromSettings:0 toSettings:settings];
  }

  v155 = v16;
  rootViewController = [(PREditor *)self rootViewController];
  pr_usesEditingLayout = [settings pr_usesEditingLayout];
  pui_isComplicationRowConfigured = [settings pui_isComplicationRowConfigured];
  pui_isComplicationSidebarConfigured = [settings pui_isComplicationSidebarConfigured];
  pui_isComplicationRowAtBottom = [settings pui_isComplicationRowAtBottom];
  pr_focusedComplicationElement = [settings pr_focusedComplicationElement];
  pr_titleString = [settings pr_titleString];
  pr_overrideDate = [settings pr_overrideDate];
  [settings pr_horizontalTitleBoundingRect];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [settings pr_verticalTitleBoundingRect];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  pr_focusedQuickActionElementPosition = [settings pr_focusedQuickActionElementPosition];
  pr_userInterfaceStyleLuminanceThreshold = [settings pr_userInterfaceStyleLuminanceThreshold];
  v144 = sSceneCopy;
  v156 = diffCopy;
  v150 = pui_isComplicationRowConfigured;
  v151 = pr_usesEditingLayout;
  v148 = pui_isComplicationRowAtBottom;
  v149 = pui_isComplicationSidebarConfigured;
  v147 = pr_focusedComplicationElement;
  if (diffCopy)
  {
    pui_posterContents = [settings pui_posterContents];
    v49 = BSEqualObjects();

    if (v49)
    {
LABEL_22:
      role = [(PRPosterConfiguration *)self->_targetConfig role];
      posterRole = [(PREditor *)self posterRole];
      v69 = [posterRole isEqual:role];

      if ((v69 & 1) == 0)
      {
        [(PREditor *)self setPosterRole:role];
      }

      v137 = role;
      scene = self->_scene;
      v71 = objc_opt_class();
      sceneCopy = scene;
      if (v71)
      {
        if (objc_opt_isKindOfClass())
        {
          v73 = sceneCopy;
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        v73 = 0;
      }

      v145 = v69 ^ 1;
      v74 = v73;

      traitCollection = [(UIWindowScene *)v74 traitCollection];

      v76 = [settings mutableCopy];
      if ([(PREditor *)self _editorDynamicRotationIsActive])
      {
        interfaceOrientation = [(UIWindow *)self->_window interfaceOrientation];
      }

      else
      {
        interfaceOrientation = 1;
      }

      v138 = v47;
      v139 = v45;
      v140 = v43;
      v141 = v41;
      [v76 pui_setDeviceOrientation:interfaceOrientation];
      v78 = [PRPosterEnvironmentImpl alloc];
      targetConfig = self->_targetConfig;
      extensionBundleURL = [(PREditor *)self extensionBundleURL];
      v81 = [(PRPosterEnvironmentImpl *)v78 initWithSceneSettings:v76 traitCollection:traitCollection targetConfig:targetConfig extensionBundleURL:extensionBundleURL];
      environment = self->_environment;
      self->_environment = v81;

      [v155 setSettingsDiff:diffCopy];
      preferences = self->_preferences;
      clientSettings = [sSceneCopy clientSettings];
      [(PRPosterPreferencesImpl *)preferences setInitialValuesFromSettings:clientSettings];

      -[PREditor setCoveredByHostModalPresentation:](self, "setCoveredByHostModalPresentation:", [settings pr_editingModalVariant] != 0);
      -[PREditor setPresentingComplicationGallery:](self, "setPresentingComplicationGallery:", [settings pr_editingModalVariant] == 1);
      -[PREditor setInlineComplicationConfigured:](self, "setInlineComplicationConfigured:", [settings pui_isInlineComplicationConfigured]);
      -[PREditor setAlternateDateEnabled:](self, "setAlternateDateEnabled:", [settings pr_isAlternateDateEnabled]);
      pr_editingVariant = [settings pr_editingVariant];
      v86 = v145;
      if (pr_editingVariant != [(PREditor *)self variant])
      {
        [(PREditor *)self setVariant:pr_editingVariant];
        v86 = (v158 == 0) | v145;
      }

      v87 = v39;
      v88 = v37;
      v89 = v35;
      v90 = v33;
      pr_editingContext = [settings pr_editingContext];
      if (pr_editingContext != [(PREditor *)self editingContext])
      {
        [(PREditor *)self setEditingContext:pr_editingContext];
      }

      [settings pr_leadingTopButtonFrame];
      v93 = v92;
      v95 = v94;
      v97 = v96;
      v99 = v98;
      [(PREditor *)self leadingTopButtonFrame];
      v164.origin.x = v100;
      v164.origin.y = v101;
      v164.size.width = v102;
      v164.size.height = v103;
      v162.origin.x = v93;
      v162.origin.y = v95;
      v162.size.width = v97;
      v162.size.height = v99;
      if (!CGRectEqualToRect(v162, v164))
      {
        [(PREditor *)self setLeadingTopButtonFrame:v93, v95, v97, v99];
      }

      [settings pr_trailingTopButtonFrame];
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      [(PREditor *)self trailingTopButtonFrame];
      v165.origin.x = v112;
      v165.origin.y = v113;
      v165.size.width = v114;
      v165.size.height = v115;
      v163.origin.x = v105;
      v163.origin.y = v107;
      v163.size.width = v109;
      v163.size.height = v111;
      if (!CGRectEqualToRect(v163, v165))
      {
        [(PREditor *)self setTrailingTopButtonFrame:v105, v107, v109, v111];
      }

      pr_isDepthEffectDisallowed = [settings pr_isDepthEffectDisallowed];
      if (pr_isDepthEffectDisallowed != [(PREditor *)self isDepthEffectDisallowed])
      {
        [(PREditor *)self setDepthEffectDisallowed:pr_isDepthEffectDisallowed forReason:@"complications"];
        [rootViewController setDepthEffectDisabled:{-[PREditor isDepthEffectEffectivelyDisabled](self, "isDepthEffectEffectivelyDisabled")}];
        [(PREditor *)self updateRootViewControllerMenus];
      }

      pr_areComplicationsDisallowed = [settings pr_areComplicationsDisallowed];
      if (pr_areComplicationsDisallowed != [(PREditor *)self areComplicationsDisallowed])
      {
        [(PREditor *)self setComplicationsDisallowed:pr_areComplicationsDisallowed];
        v86 = 1;
      }

      displayConfiguration = [settings displayConfiguration];
      displayConfiguration2 = [(PREditor *)self displayConfiguration];
      v120 = [displayConfiguration2 isEqual:displayConfiguration];

      if ((v120 & 1) == 0)
      {
        [(PREditor *)self setDisplayConfiguration:displayConfiguration];
      }

      pr_injectedEditingSettings = [settings pr_injectedEditingSettings];
      if ([v156 pui_inspect:20777])
      {
        [(PREditor *)self updateEditorWithInjectedEditingSettings:pr_injectedEditingSettings];
      }

      if (v86)
      {
        [(PREditor *)self _rebuildRootViewController];
      }

      pr_areControlsHidden = [settings pr_areControlsHidden];
      [(PREditor *)self setTitleString:pr_titleString];
      [(PREditor *)self setOverrideDate:pr_overrideDate];
      [(PREditor *)self setHorizontalTitleBoundingRect:v90, v89, v88, v87];
      [(PREditor *)self setVerticalTitleBoundingRect:v141, v140, v139, v138];
      [(PREditor *)self setUserInterfaceStyleLuminanceThreshold:pr_userInterfaceStyleLuminanceThreshold];
      [(PREditor *)self setUsesEditingLayout:v151];
      [(PREditor *)self setControlsHidden:pr_areControlsHidden];
      [(PREditor *)self setFocusedComplicationElement:v147];
      [(PREditor *)self setComplicationsRowConfigured:v150];
      [(PREditor *)self setComplicationSidebarConfigured:v149];
      [(PREditor *)self setComplicationRowAtBottom:v148];
      [(PREditor *)self setFocusedQuickActionPosition:pr_focusedQuickActionElementPosition];
      rootViewController2 = [(PREditor *)self rootViewController];
      pr_posterHostedContentSettings = [settings pr_posterHostedContentSettings];
      [rootViewController2 setHostedContentSettings:pr_posterHostedContentSettings];

      goto LABEL_51;
    }

    pui_posterContents2 = [settings pui_posterContents];
    sourceContents = self->_sourceContents;
    self->_sourceContents = pui_posterContents2;

    serverIdentity = [(PFServerPosterPath *)self->_sourceContents serverIdentity];
    provider = [serverIdentity provider];

    serverIdentity2 = [(PFServerPosterPath *)self->_sourceContents serverIdentity];
    descriptorIdentifier = [serverIdentity2 descriptorIdentifier];

    role2 = [(PFServerPosterPath *)self->_sourceContents role];
    v57 = [PRMutablePosterConfiguration mutableConfigurationWithProvider:provider descriptorIdentifier:descriptorIdentifier role:role2];
    v58 = self->_targetConfig;
    self->_targetConfig = v57;

    v59 = self->_sourceContents;
    v161[0] = 0;
    v60 = [(PFServerPosterPath *)v59 loadUserInfoWithError:v161];
    v61 = v161[0];
    if (v61)
    {
      v62 = sSceneCopy;
      v63 = PRLogEditing();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [PREditor _performActionsForUIScene:withUpdatedFBSScene:settingsDiff:fromSettings:transitionContext:lifecycleActionType:];
      }
    }

    else
    {
      if (![v60 count])
      {
LABEL_21:

        diffCopy = v156;
        goto LABEL_22;
      }

      v62 = sSceneCopy;
      v64 = self->_targetConfig;
      v160 = 0;
      [(PRMutablePosterConfiguration *)v64 storeUserInfo:v60 error:&v160];
      v63 = v160;
      v65 = PRLogEditing();
      v66 = v65;
      if (v63)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [PREditor _performActionsForUIScene:withUpdatedFBSScene:settingsDiff:fromSettings:transitionContext:lifecycleActionType:];
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v66, OS_LOG_TYPE_DEFAULT, "Successfully migrated source user info to target user info.", buf, 2u);
      }
    }

    sSceneCopy = v62;
    goto LABEL_21;
  }

LABEL_51:
  if (v158)
  {
    v125 = 2;
  }

  else
  {
    v125 = 1;
  }

  v126 = [(PREditor *)self delegateSafeForCallbackType:v125];
  v127 = [(PREditor *)self delegateSafeForCallbackType:2];
  v128 = [(PREditor *)self delegateSafeForCallbackType:1];
  v129 = self->_environment;
  v130 = self->_window;
  v142 = v128;
  v131 = v129;
  v132 = rootViewController;
  v133 = v155;
  v134 = v127;
  v135 = v126;
  _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
  if (!v158)
  {
    [v144 updateClientSettingsWithBlock:&__block_literal_global_409];
  }

  if ([settings pui_isInvalidated])
  {
    v136 = PRLogEditing();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v136, OS_LOG_TYPE_DEFAULT, "faking sceneDidDisconnect for pui_isInvalidated", buf, 2u);
    }

    [(PREditor *)self sceneDidDisconnect:self->_scene];
  }
}

void __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120) != 1)
  {
    if ([*(a1 + 64) isDisconnected])
    {
      [*(a1 + 64) reconnect];
    }

    if ((*(a1 + 121) & 1) != 0 || (*(a1 + 122) & 1) != 0 || *(a1 + 123) == 1)
    {
      [*(a1 + 32) _refetchLooksAndBuildUI];
    }

    else if (*(a1 + 124) == 1)
    {
      [*(a1 + 32) leadingTopButtonFrame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      [*(a1 + 32) trailingTopButtonFrame];
      [*(a1 + 64) updateTopButtonsLayoutWithLeadingTopButtonFrame:v45 trailingTopButtonFrame:{v47, v49, v51, v52, v53, v54, v55}];
    }

    v3 = [*(a1 + 32) areControlsHidden];
    [*(a1 + 64) setUsesEditingLayout:*(a1 + 125)];
    [*(a1 + 64) setFocusedComplicationElement:*(a1 + 104)];
    [*(a1 + 64) setComplicationsRowConfigured:*(a1 + 126)];
    [*(a1 + 64) setComplicationSidebarConfigured:*(a1 + 127)];
    [*(a1 + 64) setComplicationRowAtBottom:*(a1 + 128)];
    [*(a1 + 64) setControlsHidden:v3];
    [*(a1 + 64) setFocusedQuickActionPosition:*(a1 + 112)];
    [*(a1 + 64) updateReticleVisibilityIfNeeded];
    [*(a1 + 56) setDepthEffectDisabled:{objc_msgSend(*(a1 + 32), "isDepthEffectEnabled") ^ 1}];
    v4 = [*(a1 + 72) settingsDiff];

    if (v4)
    {
      v5 = PRLogEditing();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Sending environment update to delegate", buf, 2u);
      }

      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      if (v7)
      {
        [*(v6 + 152) deviceMotionUpdateInterval];
        [v7 setDeviceMotionUpdateInterval:?];
        v6 = *(a1 + 32);
      }

      [*(a1 + 80) editor:v6 didUpdateEnvironment:*(a1 + 56) withTransition:*(a1 + 72)];
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v8 = [*(a1 + 72) actions];
    v9 = [v8 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (!v9)
    {
LABEL_55:

      return;
    }

    v10 = v9;
    v11 = *v67;
    v56 = v63;
    v57 = *v67;
    v58 = v8;
LABEL_19:
    v12 = 0;
    while (1)
    {
      if (*v67 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v66 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [*(a1 + 32) handleNotificationForwardAction:v13];
        }

        else
        {
          v26 = objc_opt_self();
          v27 = objc_opt_isKindOfClass();

          if (v27)
          {
            v28 = *(a1 + 32);
            v29 = objc_opt_class();
            v30 = v13;
            if (v29)
            {
              if (objc_opt_isKindOfClass())
              {
                v31 = v30;
              }

              else
              {
                v31 = 0;
              }
            }

            else
            {
              v31 = 0;
            }

            v36 = v31;

            [v28 handleRenderingServiceEndpointDidChangeAction:v36];
          }
        }

        goto LABEL_53;
      }

      v14 = v13;
      if ([v14 userAcceptedChanges])
      {
        if (*(a1 + 88))
        {
          v15 = [*(a1 + 32) configuredProperties];
          v16 = [*(a1 + 32) currentLook];
          v17 = [*(a1 + 32) effectiveTitleStyleConfigurationForLook:v16];
          v59 = v17;
          if (v15)
          {
            v18 = v17;
            v19 = [v15 titleStyleConfiguration];

            if (v19)
            {
              v20 = [v15 titleStyleConfiguration];
              v21 = [v18 isVisiblyEqualToTitleStyleConfiguration:v20];

              if ((v21 & 1) == 0)
              {
                v22 = [v15 mutableCopy];
                [v22 setTitleStyleConfiguration:v18];
                v23 = [v22 copy];
                goto LABEL_48;
              }

LABEL_49:
              v38 = [*(a1 + 56) targetConfiguredProperties];
              [*(a1 + 32) _applyStylePropertiesFromConfiguredProperties:v15 toConfiguredProperties:v38 forLook:v16];
              v39 = [*(a1 + 32) homeScreenConfigurationWithPosterProvidedColorConfigurations];
              [v38 setHomeScreenConfiguration:v39];
              [*(a1 + 32) _finalizeAdaptiveTimeParameters:v38];
              v40 = PRLogEditing();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1A8AA7000, v40, OS_LOG_TYPE_DEFAULT, "Sending finalize to delegate", buf, 2u);
              }

              v41 = *(a1 + 32);
              v62[0] = MEMORY[0x1E69E9820];
              v62[1] = 3221225472;
              v63[0] = __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_403;
              v63[1] = &unk_1E7843D40;
              v63[2] = v14;
              v42 = *(a1 + 48);
              v64 = *(a1 + 56);
              v65 = v38;
              v43 = v38;
              [v42 editor:v41 finalizeWithCompletion:v62];
              [*(a1 + 32) setStatus:3];

              v11 = v57;
              v8 = v58;
              goto LABEL_52;
            }

            v22 = [v15 mutableCopy];
            v37 = [*(a1 + 32) defaultTitleStyleConfigurationForLook:v16];
            [v22 setTitleStyleConfiguration:v37];
            v23 = [v22 copy];

            v15 = v37;
          }

          else
          {
            v22 = *(*(a1 + 32) + 64);
            v15 = [*(a1 + 32) defaultTitleStyleConfigurationForLook:v16];
            if (v22)
            {
              v33 = [PRPosterColorVariationsConfiguration alloc];
              v34 = [v22 dictionaryRepresentation];
              v35 = -[PRPosterColorVariationsConfiguration initWithVariationStorage:version:](v33, "initWithVariationStorage:version:", v34, [objc_opt_class() version]);
            }

            else
            {
              v35 = 0;
            }

            v23 = [[PRPosterConfiguredProperties alloc] initWithTitleStyleConfiguration:v15 focusConfiguration:0 complicationLayout:0 renderingConfiguration:0 homeScreenConfiguration:0 colorVariationsConfiguration:v35 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0, v56];
          }

LABEL_48:

          v15 = v23;
          goto LABEL_49;
        }

        [MEMORY[0x1E69DB878] pr_clearCachesForInvalidation];
        v32 = PRSLogPosterContents();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_cold_1(&v60, v61, v32);
        }
      }

      else
      {
        [MEMORY[0x1E69DB878] pr_clearCachesForInvalidation];
      }

      [v14 invalidate];
LABEL_52:
      [*(a1 + 64) disconnect];

LABEL_53:
      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (!v10)
        {
          goto LABEL_55;
        }

        goto LABEL_19;
      }
    }
  }

  v2 = (a1 + 32);
  [*(a1 + 32) setStatus:2];
  [*(a1 + 40) layoutIfNeeded];
  [*(a1 + 48) editor:*v2 didInitializeWithEnvironment:*(a1 + 56)];
  [*v2 _refetchLooksAndBuildUI];
  if ([*v2 isLifecycleTiedToInitiallyPresentedViewController])
  {
    if (([*v2 isPresentingModalViewController] & 1) == 0)
    {
      __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_cold_2();
    }
  }
}

void __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_403(uint64_t a1)
{
  [MEMORY[0x1E69DB878] pr_clearCachesForInvalidation];
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) targetConfiguration];
  v3 = [*(a1 + 48) copy];
  [v2 sendResponseWithUpdatedConfiguration:v4 updatedProperties:v3];
}

- (void)setPresentingComplicationGallery:(BOOL)gallery
{
  if (self->_presentingComplicationGallery != gallery)
  {
    v10[9] = v3;
    v10[10] = v4;
    self->_presentingComplicationGallery = gallery;
    [(PREditor *)self setIgnoringSalientContentForTimeHeight:1];
    if (self->_presentingComplicationGallery)
    {
      currentLook = [(PREditor *)self currentLook];
      v7 = [(PREditor *)self effectiveTitleStyleConfigurationForLook:currentLook];

      [v7 preferredTimeMaxYPortrait];
      [(PREditor *)self setRollbackTimeMaxY:?];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __45__PREditor_setPresentingComplicationGallery___block_invoke;
      v10[3] = &unk_1E7843688;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:0.2];
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__PREditor_setPresentingComplicationGallery___block_invoke_2;
      v9[3] = &unk_1E7843688;
      v9[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:0.2];
    }

    rootViewController = [(PREditor *)self rootViewController];
    [rootViewController setPresentingComplicationGallery:self->_presentingComplicationGallery];
  }
}

uint64_t __45__PREditor_setPresentingComplicationGallery___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 rollbackTimeMaxY];

  return [v1 _updateForPreferredTimeMaxY:1 orientation:?];
}

- (id)homeScreenConfigurationWithPosterProvidedColorConfigurations
{
  v3 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (v3 && ((v4 = objc_opt_respondsToSelector(), v5 = objc_opt_respondsToSelector(), v6 = v5, (v4 & 1) != 0) || (v5 & 1) != 0))
  {
    if (v4)
    {
      v8 = [v3 solidColorHomeScreenColorPickerConfigurationForEditor:self];
    }

    else
    {
      v8 = objc_alloc_init(PREditorColorPickerConfiguration);
    }

    v9 = v8;
    v10 = [[PRPosterSolidColorHomeScreenAppearance alloc] initWithColor:0 colorPickerConfiguration:v8];
    if (v6)
    {
      v11 = [v3 gradientHomeScreenColorPickerConfigurationForEditor:self];
    }

    else
    {
      v11 = objc_alloc_init(PREditorColorPickerConfiguration);
    }

    v12 = v11;
    v13 = [[PRPosterGradientHomeScreenAppearance alloc] initWithColor:0 colorPickerConfiguration:v11];
    v14 = [PRPosterHomeScreenConfiguration alloc];
    v15 = [[PRPosterLockPosterHomeScreenAppearance alloc] initWithLegibilityBlurEnabled:0 allowsModifyingLegibilityBlur:1];
    v16 = objc_alloc_init(PRPosterHomePosterHomeScreenAppearance);
    v17 = objc_alloc_init(PRPosterHomeScreenCustomizationConfiguration);
    v7 = [(PRPosterHomeScreenConfiguration *)v14 initWithSelectedAppearanceType:0 lockPosterAppearance:v15 solidColorAppearance:v10 gradientAppearance:v13 homePosterAppearance:v16 customizationConfiguration:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)additionalFontConfigurationsForFontAndContentStylePickerViewController:(id)controller
{
  v4 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 additionalTimeFontConfigurationsForEditor:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fontAndContentStylePickerViewController:(id)controller shouldShowFontConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 editor:self shouldAllowUserToSelectTimeFontConfiguration:configurationCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)fontAndContentStylePickerViewController:(id)controller didUpdateDesiredDetent:(double)detent
{
  v5 = [(PREditorRootViewController *)self->_rootViewController view:controller];
  [v5 layoutIfNeeded];

  presentedViewController = [(PREditorRootViewController *)self->_rootViewController presentedViewController];
  sheetPresentationController = [presentedViewController sheetPresentationController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PREditor_fontAndContentStylePickerViewController_didUpdateDesiredDetent___block_invoke;
  v8[3] = &unk_1E7843688;
  v8[4] = self;
  [sheetPresentationController animateChanges:v8];
}

void __75__PREditor_fontAndContentStylePickerViewController_didUpdateDesiredDetent___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) presentedViewController];
  v1 = [v2 sheetPresentationController];
  [v1 invalidateDetents];
}

- (void)fontAndContentStylePickerViewControllerDidFinish:(id)finish
{
  configuredProperties = [(PREditor *)self configuredProperties];
  if (!configuredProperties)
  {
    configuredProperties = objc_alloc_init(PRPosterMutableConfiguredProperties);
    [(PREditor *)self setConfiguredProperties:?];
  }

  [(PREditor *)self setEditingFocusActive:0];
  fontAndColorPickerViewController = self->_fontAndColorPickerViewController;
  self->_fontAndColorPickerViewController = 0;
}

- (id)additionalFontConfigurationsForFontAndColorPickerViewController:(id)controller
{
  v4 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 additionalTimeFontConfigurationsForEditor:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)fontAndColorPickerViewController:(id)controller shouldShowFontConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 editor:self shouldAllowUserToSelectTimeFontConfiguration:configurationCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)fontAndColorPickerViewController:(id)controller didUpdateDesiredDetent:(double)detent
{
  v5 = [(PREditorRootViewController *)self->_rootViewController view:controller];
  [v5 layoutIfNeeded];

  presentedViewController = [(PREditorRootViewController *)self->_rootViewController presentedViewController];
  sheetPresentationController = [presentedViewController sheetPresentationController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PREditor_fontAndColorPickerViewController_didUpdateDesiredDetent___block_invoke;
  v8[3] = &unk_1E7843688;
  v8[4] = self;
  [sheetPresentationController animateChanges:v8];
}

void __68__PREditor_fontAndColorPickerViewController_didUpdateDesiredDetent___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) presentedViewController];
  v1 = [v2 sheetPresentationController];
  [v1 invalidateDetents];
}

- (void)fontAndColorPickerViewControllerDidFinish:(id)finish
{
  configuredProperties = [(PREditor *)self configuredProperties];
  if (!configuredProperties)
  {
    configuredProperties = objc_alloc_init(PRPosterMutableConfiguredProperties);
    [(PREditor *)self setConfiguredProperties:?];
  }

  v4 = [PRPosterColorVariationsConfiguration alloc];
  dictionaryRepresentation = [(PREditingColorVariationStore *)self->_colorVariationStore dictionaryRepresentation];
  v6 = -[PRPosterColorVariationsConfiguration initWithVariationStorage:version:](v4, "initWithVariationStorage:version:", dictionaryRepresentation, [objc_opt_class() version]);

  [(PRPosterConfiguredProperties *)configuredProperties setColorVariationsConfiguration:v6];
  [(PREditor *)self setEditingFocusActive:0];
  fontAndColorPickerViewController = self->_fontAndColorPickerViewController;
  self->_fontAndColorPickerViewController = 0;
}

- (id)coordinatorForContentStyle:(id)style forAmbientStylePicker:(id)picker
{
  styleCopy = style;
  v6 = [(PREditor *)self delegateSafeForCallbackType:3];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 coordinatorForContentStyle:styleCopy forEditor:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[PREditorRemoteViewPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (void)ambientEditingTitledViewControllerWantsToClose:(id)close
{
  [(PREditor *)self setDismissingPresentedViewControllerFromTitledViewController:1];

  [(PREditor *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  delegate = [(PREditor *)self delegate];
  v5 = [formatterCopy appendObject:delegate withName:@"delegate"];

  status = [(PREditor *)self status];
  if (status > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E7844078[status];
  }

  v8 = [formatterCopy appendObject:v7 withName:@"status"];
  v9 = [formatterCopy appendObject:self->_scene withName:@"scene"];
  rootViewController = [(PREditor *)self rootViewController];
  v11 = [formatterCopy appendObject:rootViewController withName:@"rootViewController"];

  currentLook = [(PREditor *)self currentLook];
  v13 = [formatterCopy appendObject:currentLook withName:@"currentLook"];
}

- (void)updateEditorWithInjectedEditingSettings:(id)settings
{
  settingsCopy = settings;
  injectedEditingSettings = [(PREditor *)self injectedEditingSettings];
  v6 = injectedEditingSettings;
  if (!injectedEditingSettings || [injectedEditingSettings state] != 2 && objc_msgSend(v6, "state") != 1)
  {
    state = [settingsCopy state];
    switch(state)
    {
      case 0:
        if (v6)
        {
          currentEditingLook = [v6 currentEditingLook];
          identifier = [currentEditingLook identifier];

          currentLook = [v6 currentLook];
          selectedColors = [v6 selectedColors];
        }

        else
        {
          selectedColors = 0;
          currentLook = 0;
          identifier = 0;
        }

        currentEditingLook2 = [settingsCopy currentEditingLook];
        identifier2 = [currentEditingLook2 identifier];

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __52__PREditor_updateEditorWithInjectedEditingSettings___block_invoke;
        v31[3] = &unk_1E7844058;
        v31[4] = self;
        v15 = MEMORY[0x1AC574C60](v31);
        if ((BSEqualObjects() & 1) != 0 || (-[PREditor rootViewController](self, "rootViewController"), v16 = objc_claimAutoreleasedReturnValue(), [v16 looks], v17 = objc_claimAutoreleasedReturnValue(), v29[0] = MEMORY[0x1E69E9820], v29[1] = 3221225472, v29[2] = __52__PREditor_updateEditorWithInjectedEditingSettings___block_invoke_2, v29[3] = &unk_1E7843BE0, v30 = identifier2, objc_msgSend(v17, "bs_firstObjectPassingTest:", v29), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, (v15)[2](v15, v18), v30, !v18))
        {
          currentLook2 = [settingsCopy currentLook];
          if (BSEqualObjects())
          {
            v18 = 0;
          }

          else
          {
            rootViewController = [(PREditor *)self rootViewController];
            [rootViewController looks];
            v25 = currentLook;
            v22 = v21 = identifier;
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __52__PREditor_updateEditorWithInjectedEditingSettings___block_invoke_3;
            v27[3] = &unk_1E7843BE0;
            v28 = currentLook2;
            v18 = [v22 bs_firstObjectPassingTest:v27];

            identifier = v21;
            currentLook = v25;

            (v15)[2](v15, v18);
          }
        }

        selectedColors2 = [settingsCopy selectedColors];
        if (([selectedColors isEqualToArray:selectedColors2] & 1) == 0)
        {
          v24 = [(PREditor *)self delegateSafeForCallbackType:3];
          if (objc_opt_respondsToSelector())
          {
            [v24 editor:self didUpdateColors:selectedColors2];
          }
        }

        goto LABEL_24;
      case 1:
        selfCopy2 = self;
        v9 = 0;
        break;
      case 2:
        selfCopy2 = self;
        v9 = 1;
        break;
      default:
LABEL_24:
        [(PREditor *)self setInjectedEditingSettings:settingsCopy];
        goto LABEL_25;
    }

    [(PREditor *)selfCopy2 requestDismissalWithAction:v9];
    goto LABEL_24;
  }

LABEL_25:
}

void __52__PREditor_updateEditorWithInjectedEditingSettings___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 setCurrentLook:v4];
    v5 = [*(a1 + 32) rootViewController];
    [v5 scrollToLook:v4 animated:0];
  }
}

uint64_t __52__PREditor_updateEditorWithInjectedEditingSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __52__PREditor_updateEditorWithInjectedEditingSettings___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 displayName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (CGRect)leadingTopButtonFrame
{
  x = self->_leadingTopButtonFrame.origin.x;
  y = self->_leadingTopButtonFrame.origin.y;
  width = self->_leadingTopButtonFrame.size.width;
  height = self->_leadingTopButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)trailingTopButtonFrame
{
  x = self->_trailingTopButtonFrame.origin.x;
  y = self->_trailingTopButtonFrame.origin.y;
  width = self->_trailingTopButtonFrame.size.width;
  height = self->_trailingTopButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)horizontalTitleBoundingRect
{
  x = self->_horizontalTitleBoundingRect.origin.x;
  y = self->_horizontalTitleBoundingRect.origin.y;
  width = self->_horizontalTitleBoundingRect.size.width;
  height = self->_horizontalTitleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)verticalTitleBoundingRect
{
  x = self->_verticalTitleBoundingRect.origin.x;
  y = self->_verticalTitleBoundingRect.origin.y;
  width = self->_verticalTitleBoundingRect.size.width;
  height = self->_verticalTitleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)presentViewController:(char *)a1 animated:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this object is invalid"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_4(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)presentViewController:(char *)a1 animated:(uint64_t)a2 completion:.cold.2(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"viewControllerToPresent != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2();
    v6 = NSStringFromClass(v5);
    *buf = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"PREditor.m";
    v15 = 1024;
    v16 = 312;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_refetchLooksForProperties
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updated look display name does not match existing look"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_4(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)scene:(char *)a1 willConnectToSession:options:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already have a scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_1_4(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "PREditingDidDismissAction doesn't have a delegate - bail the save", buf, 2u);
}

void __122__PREditor__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 96) object:*v0 file:@"PREditor.m" lineNumber:2915 description:@"Need to present a view controller (including color picker) in -editor:didInitializeWithEnvironment:"];
}

@end