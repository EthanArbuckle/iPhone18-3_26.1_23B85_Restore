@interface PREditingSceneViewController
+ (NSHashTable)overrideObservingViewControllers;
+ (id)_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)_areComplicationsDisallowed;
- (BOOL)_canAddComplicationDescriptor:(id)a3 forLocation:(int64_t)a4;
- (BOOL)_hasGraphicComplications;
- (BOOL)_hasSidebarComplications;
- (BOOL)_intentHasConfigurableAttributes:(id)a3;
- (BOOL)_posterUserInfo:(id)a3 containsUserChangesFromPrevious:(id)a4;
- (BOOL)_presentIntentConfigurationForComplicationDescriptorIfPossible:(id)a3;
- (BOOL)_shouldAllowAddComplicationsTapGestureForLocation:(int64_t)a3;
- (BOOL)_shouldAllowInlineComplicationTapGesture;
- (BOOL)_shouldDepthEffectBeDisallowed;
- (BOOL)complicationContainerViewControllerAllowsWidgetGridDragInteraction:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)horizontalTitleBoundingRect;
- (CGRect)leadingTopButtonFrame;
- (CGRect)salientContentRectangle;
- (CGRect)timeReticleFrame;
- (CGRect)trailingTopButtonFrame;
- (CGRect)verticalTitleBoundingRect;
- (PREditingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 additionalInfo:(id)a7;
- (PREditingSceneViewControllerDelegate)delegate;
- (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout;
- (PREditingSceneViewControllerTopButtonLayout)lastValidDelegateTopButtonLayout;
- (SBHAddWidgetSheetConfigurationManager)addWidgetSheetConfigurationManager;
- (UIView)recycledViewsContainer;
- (id)_configureNavigationControllerForGalleryViewController:(id)a3;
- (id)_controlsGalleryConfiguration;
- (id)_controlsGallerySuggestedControls;
- (id)_descriptorForControl:(id)a3;
- (id)_presentIntentConfigurationViewControllerWithIntent:(id)a3 descriptor:(id)a4 family:(int64_t)a5 fromViewController:(id)a6;
- (id)_presentationBackgroundColor;
- (id)_suggestedControlIdentities;
- (id)_windowFromUserInfo:(id)a3;
- (id)addComplicationGestureViewForElement:(unint64_t)a3 tapAction:(SEL)a4 initiallyAllowed:(BOOL)a5;
- (id)addWidgetSheetConfigurationManager:(id)a3 containerBundleIdentiferForDescriptor:(id)a4;
- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4;
- (id)addWidgetSheetViewController:(id)a3 detailViewControllerForWidgetCollection:(id)a4;
- (id)galleryViewControllerForAddWidgetSheetViewController:(id)a3;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4;
- (unint64_t)_modalVariant;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addWidgetIconView:(id)a3;
- (void)_complicationsSceneCreated:(id)a3;
- (void)_configureInitialSceneSettings:(id)a3;
- (void)_configureUsingPath:(id)a3;
- (void)_dismissAnyPresentedComplicationGalleryAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_dismissWithAction:(int64_t)a3;
- (void)_finalize;
- (void)_insertModularComplication:(id)a3 location:(int64_t)a4 animated:(BOOL)a5;
- (void)_performWidgetDescriptorDiscovery;
- (void)_prefetchComplicationSuggestions;
- (void)_presentComplicationGallery;
- (void)_presentControlsGalleryWithSelectedControl:(id)a3;
- (void)_presentFullAlertForComplication:(id)a3;
- (void)_presentInlineComplicationGallery;
- (void)_presentIntentConfigurationForComplicationDescriptor:(id)a3;
- (void)_presentIntentConfigurationForQuickActionControl:(id)a3 withPosition:(int64_t)a4;
- (void)_presentSidebarComplicationGallery;
- (void)_presentWidgetEducationAlertIfNeeded;
- (void)_quickActionsSceneCreated:(id)a3;
- (void)_sceneContentReadinessDidChange;
- (void)_setUpDateOverriding;
- (void)_setUpRemotePresentationForContextId:(unsigned int)a3 layerRenderId:(unint64_t)a4 presentedScreenRect:(CGRect)a5;
- (void)_teardown;
- (void)_unregisterComplicationContainerViewControllerDelegates;
- (void)_updateAddComplicationsTapGestureAllowed;
- (void)_updateApplicationWidgetCollectionsForPresentedComplicationGallery;
- (void)_updateComplicationContainerVisibility;
- (void)_updateComplicationLayout;
- (void)_updateComplicationLayoutIfPermitted;
- (void)_updateComplicationsVibrancyConfiguration;
- (void)_updateInlineComplicationVisibility;
- (void)_updateLocalControlsHiddenWithAnimationSettings:(id)a3;
- (void)_updatePresentationDismissalGestureView;
- (void)_updateQuickActionsPosterConfigurationForPosition:(int64_t)a3 withControlConfiguration:(id)a4;
- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4;
- (void)_updateSceneSettingsForConfiguredWidgets;
- (void)_updateSceneSettingsForDepthEffectDisallowed;
- (void)_updateSceneSettingsForPosterCoveredByModalPresentation;
- (void)_validateInlineComplication;
- (void)addLongSaveOperationIndicator;
- (void)addObserver:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)complicationContainerViewController:(id)a3 didUpdateModelContentForLocation:(int64_t)a4;
- (void)complicationContainerViewController:(id)a3 didUpdateWidgetGridPositionToBottom:(BOOL)a4;
- (void)complicationContainerViewController:(id)a3 isAttemptingDragToAddComplication:(id)a4;
- (void)complicationContainerViewController:(id)a3 isDraggingWidgetGridWithProgress:(double)a4;
- (void)complicationContainerViewControllerDidTapAdd:(id)a3 forLocation:(int64_t)a4;
- (void)complicationGalleryViewController:(id)a3 didBeginDraggingComplication:(id)a4;
- (void)complicationGalleryViewControllerDidFinish:(id)a3;
- (void)controlsGalleryViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)forwardAppearanceNotificationName:(id)a3;
- (void)inlineComplicationGalleryViewController:(id)a3 didSelectComplication:(id)a4;
- (void)inlineComplicationGalleryViewControllerDidFinish:(id)a3;
- (void)inlineComplicationGestureViewTapped:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentedViewControllerDismissalDidEnd:(id)a3;
- (void)presentedViewControllerDismissalWillBegin:(id)a3;
- (void)presentedViewControllerPresentationDidBegin:(id)a3;
- (void)quickActionEditingViewController:(id)a3 didSetControl:(id)a4 forPosition:(int64_t)a5;
- (void)quickActionEditingViewController:(id)a3 didTapAddForPosition:(int64_t)a4;
- (void)removeLongSaveOperationIndicator;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)setAcceptButtonType:(int64_t)a3;
- (void)setAllowsTransparentContent:(BOOL)a3;
- (void)setAlternateDateEnabled:(BOOL)a3;
- (void)setClientPresentingModalViewController:(BOOL)a3;
- (void)setComplicationRowMode:(unint64_t)a3;
- (void)setComplicationsUseBottomLayout:(BOOL)a3 animated:(BOOL)a4;
- (void)setContentHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setContentHidden:(BOOL)a3 animationSettings:(id)a4 completion:(id)a5;
- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setControlsHidden:(BOOL)a3 animationSettings:(id)a4;
- (void)setDraggingComplication:(BOOL)a3;
- (void)setFocusedElement:(int64_t)a3;
- (void)setHorizontalTitleBoundingRect:(CGRect)a3;
- (void)setLastValidDelegateTopButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a3;
- (void)setLeadingTopButtonFrame:(CGRect)a3;
- (void)setOverrideDate:(id)a3;
- (void)setPresentedSidebarComplicationsGallery:(id)a3;
- (void)setSelectedInlineComplication:(id)a3;
- (void)setSelectedQuickActionPosition:(int64_t)a3;
- (void)setShowsContentWhenReady:(BOOL)a3;
- (void)setTimeReticleFrame:(CGRect)a3;
- (void)setTitleString:(id)a3;
- (void)setTrailingTopButtonFrame:(CGRect)a3;
- (void)setUsesEditingLayout:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsesEditingLayout:(BOOL)a3 animationSettings:(id)a4;
- (void)setVariant:(int64_t)a3;
- (void)setVerticalTitleBoundingRect:(CGRect)a3;
- (void)setVibrancyConfiguration:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4;
@end

@implementation PREditingSceneViewController

- (PREditingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 additionalInfo:(id)a7
{
  v13 = a4;
  self->_usesEditingLayout = 1;
  objc_storeStrong(&self->_path, a4);
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = objc_alloc_init(PREditingSessionModifications);
  modifications = self->_modifications;
  self->_modifications = v18;

  v20 = [v13 serverIdentity];
  v21 = [v20 type];

  if ((v21 - 3) > 0xFFFFFFFFFFFFFFFDLL || ([v13 serverIdentity], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isIncomingConfiguration"), v22, v23))
  {
    v24 = 1;
    self->_acceptButtonType = 1;
  }

  else
  {
    v24 = 2;
  }

  self->_destination = v24;
  v25 = [v13 serverIdentity];
  v26 = [v25 role];

  posterRole = self->_posterRole;
  self->_posterRole = v26;
  v28 = v26;

  v29 = [v14 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyEditingNewPosterFromConfiguration"];
  self->_editingNewPosterFromConfiguration = [v29 BOOLValue];

  [(PREditingSceneViewController *)self _setUpDateOverriding];
  [PRPosterPathModelObjectCache invalidateModelObjectCacheForPath:v13];
  v32.receiver = self;
  v32.super_class = PREditingSceneViewController;
  v30 = [(PRSceneViewController *)&v32 initWithProvider:v17 contents:v13 configurableOptions:v16 configuredProperties:v15 additionalInfo:v14];

  return v30;
}

- (void)dealloc
{
  [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider unregisterObserver:self];
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  [(PREditingSceneViewController *)self _finalize];
  v4.receiver = self;
  v4.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v4 dealloc];
}

- (void)_teardown
{
  v3 = PRLogEditing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "editing tear down", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 _teardown];
  [(BSInvalidatable *)self->_localKeyboardFocusAssertion invalidate];
  localKeyboardFocusAssertion = self->_localKeyboardFocusAssertion;
  self->_localKeyboardFocusAssertion = 0;

  [(PREditingSceneViewController *)self setTornDown:1];
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v48 viewDidLoad];
  v3 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v4 = [v3 addMonitor:self subjectMask:1 subscriptionOptions:1];
  objc_storeWeak(&self->_appProtectionSubjectMonitorSubscription, v4);

  v5 = [(PRSceneViewController *)self configuredProperties];
  v6 = [v5 titleStyleConfiguration];
  v7 = [v6 isAlternateDateEnabled];

  [(PREditingSceneViewController *)self setAlternateDateEnabled:v7];
  if (![(PREditingSceneViewController *)self _areComplicationsDisallowed])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69D40A8]);
    iconModel = self->_iconModel;
    self->_iconModel = v8;

    [(SBHIconModel *)self->_iconModel reloadIcons];
    v10 = [[PRIconListLayoutProvider alloc] initWithGridSize:65540];
    listLayoutProvider = self->_listLayoutProvider;
    self->_listLayoutProvider = v10;

    v12 = [[PRWidgetIconViewProvider alloc] initWithRecycledViewsContainerProvider:self widgetInteractionDisabled:1 useMaterialBackground:0];
    iconViewProvider = self->_iconViewProvider;
    self->_iconViewProvider = v12;

    v14 = PRSharedWidgetExtensionProvider();
    widgetExtensionProvider = self->_widgetExtensionProvider;
    self->_widgetExtensionProvider = v14;

    [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider registerObserver:self];
    v16 = [PRComplicationDescriptor alloc];
    v17 = [v5 complicationLayout];
    v18 = [v17 inlineComplication];
    v19 = [(PRComplicationDescriptor *)v16 initWithPRSWidget:v18];

    v20 = [v5 suggestionMetadata];
    v21 = [v20 suggestedComplicationsByIdentifier];

    v22 = [(PRComplicationDescriptor *)v19 uniqueIdentifier];
    v23 = [v21 objectForKey:v22];
    [(PRComplicationDescriptor *)v19 setSuggestedComplication:v23];

    [(PREditingSceneViewController *)self setSelectedInlineComplication:v19];
    [(PREditingSceneViewController *)self _validateInlineComplication];
    [(PREditingSceneViewController *)self setGraphicComplicationSuggestionSets:MEMORY[0x1E695E0F0]];
    [(PREditingSceneViewController *)self _prefetchComplicationSuggestions];
    modifications = self->_modifications;
    if (v19)
    {
      [(PREditingSessionModifications *)self->_modifications setContainedWidgetsBeforeEdit:1];
    }

    else
    {
      v25 = [v5 complicationLayout];
      v26 = [v25 complications];
      -[PREditingSessionModifications setContainedWidgetsBeforeEdit:](modifications, "setContainedWidgetsBeforeEdit:", [v26 count] != 0);
    }

    v27 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    complicationContainerViewControllers = self->_complicationContainerViewControllers;
    self->_complicationContainerViewControllers = v27;

    v29 = [MEMORY[0x1E69DC938] currentDevice];
    v30 = [v29 userInterfaceIdiom];

    if ((v30 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v31 = [(PREditingSceneViewController *)self addComplicationGestureViewForElement:16 tapAction:sel_addSidebarComplicationTapped_ initiallyAllowed:[(PREditingSceneViewController *)self _shouldAllowAddComplicationsTapGestureForLocation:1]];
      [(PREditingSceneViewController *)self setSidebarComplicationAddGestureView:v31];
    }

    v32 = [(PREditingSceneViewController *)self addComplicationGestureViewForElement:4 tapAction:sel_inlineComplicationGestureViewTapped_ initiallyAllowed:[(PREditingSceneViewController *)self _shouldAllowInlineComplicationTapGesture]];
    [(PREditingSceneViewController *)self setInlineComplicationGestureView:v32];
    v33 = objc_opt_new();
    [(PREditingSceneViewController *)self setEngagementCountsForViewedSuggestedComplications:v33];

    v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
    sidebarComplicationGallerySourceView = self->_sidebarComplicationGallerySourceView;
    self->_sidebarComplicationGallerySourceView = v34;

    [(UIView *)self->_sidebarComplicationGallerySourceView setHidden:1];
    v36 = [(PREditingSceneViewController *)self view];
    [v36 addSubview:self->_sidebarComplicationGallerySourceView];

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:self selector:sel__complicationsSceneCreated_ name:@"PRBComplicationsSceneCreatedNotification" object:0];

    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    [v38 addObserver:self selector:sel__quickActionsSceneCreated_ name:@"PRBQuickActionsSceneCreatedNotification" object:0];
  }

  v39 = [(PREditingSceneViewController *)self view];
  v40 = [(PREditingSceneViewController *)self isContentHidden];
  v41 = 1.0;
  if (v40)
  {
    v41 = 0.0;
  }

  [v39 setAlpha:v41];

  v42 = self->_modifications;
  v43 = [MEMORY[0x1E695DF00] date];
  [(PREditingSessionModifications *)v42 setStartDate:v43];

  v44 = PRSharedWidgetExtensionProvider();
  controlExtensionProvider = self->_controlExtensionProvider;
  self->_controlExtensionProvider = v44;

  v46 = [v5 complicationLayout];
  v47 = [v46 complicationsUseBottomLayout];

  [(PREditingSceneViewController *)self setComplicationsUseBottomLayout:v47];
  self->_complicationLayoutIsUserConfigured = v47;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 viewWillAppear:a3];
  v3 = PRLogEditing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController will appear", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v6 viewDidAppear:a3];
  v4 = PRLogEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController did appear", v5, 2u);
  }

  [(PREditingSceneViewController *)self _presentWidgetEducationAlertIfNeeded];
  [(PREditingSceneViewController *)self _performWidgetDescriptorDiscovery];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 viewWillDisappear:a3];
  v3 = PRLogEditing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController will disappear", v4, 2u);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 viewDidDisappear:a3];
  v3 = PRLogEditing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController did disappear", v4, 2u);
  }
}

- (void)viewDidLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PREditingSceneViewController;
  [(PREditingSceneViewController *)&v28 viewDidLayoutSubviews];
  v3 = [(PREditingSceneViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  [(PREditorElementLayoutController *)v12 frameForElements:16 variant:2 withBoundingRect:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v22 = v14;
  v23 = v16;
  v24 = v18;
  v25 = v20;
  if (v21 == 1)
  {
    MinX = CGRectGetMinX(*&v22);
    MaxX = 0.0;
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v22);
    MinX = v9 - MaxX;
  }

  [(UIView *)self->_sidebarComplicationGallerySourceView setFrame:MaxX, 0.0, MinX, v11];
}

- (id)addComplicationGestureViewForElement:(unint64_t)a3 tapAction:(SEL)a4 initiallyAllowed:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v10 = [v9 layer];
  [v10 setHitTestsAsOpaque:1];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:a4];
  [v11 setDelegate:self];
  [v9 addGestureRecognizer:v11];
  v12 = [(PREditingSceneViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  [(PREditorElementLayoutController *)v21 frameForElements:a3 variant:2 withBoundingRect:v14, v16, v18, v20];
  [v9 setFrame:?];
  [v9 setHidden:!v5];
  v22 = [(PREditingSceneViewController *)self view];
  [v22 addSubview:v9];

  return v9;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(PREditingSceneViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = PREditingSceneViewController;
  v4 = a3;
  [(PREditingSceneViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(PREditingSceneViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    scene = self->super._scene;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PREditingSceneViewController_traitCollectionDidChange___block_invoke;
    v9[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v9[4] = v6;
    [(FBScene *)scene updateSettingsWithBlock:v9];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PREditingSceneViewController;
  v7 = a4;
  [(PRSceneViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PREditingSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E78442B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

uint64_t __83__PREditingSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateComplicationContainerVisibility];
  v2 = *(a1 + 32);

  return [v2 _updateSceneSettingsForDepthEffectDisallowed];
}

- (void)_validateInlineComplication
{
  v3 = [(PRComplicationDescriptor *)self->_selectedInlineComplication widgetDescriptor];
  v4 = [v3 extensionIdentity];
  v6 = [v4 containerBundleIdentifier];

  v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v6];
  if (([v5 isLocked] & 1) != 0 || objc_msgSend(v5, "isHidden"))
  {
    [(PREditingSceneViewController *)self setSelectedInlineComplication:0];
  }

  if (![(PRComplicationDescriptor *)self->_selectedInlineComplication hasMatchingDescriptor])
  {
    [(PREditingSceneViewController *)self setSelectedInlineComplication:0];
  }
}

- (void)setSelectedInlineComplication:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PRComplicationDescriptor *)v4 hasMatchingDescriptor])
  {

    v4 = 0;
  }

  if (v4 != self->_selectedInlineComplication)
  {
    objc_storeStrong(&self->_selectedInlineComplication, v4);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_complicationContainerViewControllers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v14 + 1) + 8 * v9++) setInlineComplicationDescriptor:v4];
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v10 = self->_selectedInlineComplication != 0;
    scene = self->super._scene;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__PREditingSceneViewController_setSelectedInlineComplication___block_invoke;
    v12[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
    v13 = v10;
    [(FBScene *)scene updateSettingsWithBlock:v12];
  }
}

- (void)setAlternateDateEnabled:(BOOL)a3
{
  if (self->_alternateDateEnabled != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_alternateDateEnabled = a3;
    scene = self->super._scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PREditingSceneViewController_setAlternateDateEnabled___block_invoke;
    v6[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
    v7 = a3;
    [(FBScene *)scene updateSettingsWithBlock:v6];
  }
}

- (void)setControlsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PREditingSceneViewController *)self setControlsHidden:v4 animationSettings:v6];
}

- (void)setControlsHidden:(BOOL)a3 animationSettings:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_controlsHidden != v4)
  {
    self->_controlsHidden = v4;
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    [(PREditingSceneViewController *)self _updateLocalControlsHiddenWithAnimationSettings:v6];
    v7 = [(PREditingSceneViewController *)self viewIfLoaded];
    v8 = [v7 window];
    v9 = [v8 windowScene];

    scene = self->super._scene;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PREditingSceneViewController_setControlsHidden_animationSettings___block_invoke;
    v12[3] = &unk_1E78454C0;
    v15 = v4;
    v12[4] = self;
    v13 = v6;
    v14 = v9;
    v11 = v9;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v12];
  }
}

id __68__PREditingSceneViewController_setControlsHidden_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  [a2 pr_setControlsHidden:*(a1 + 56)];
  if ([*(*(a1 + 32) + 1056) isActive] && *(a1 + 40))
  {
    v3 = [MEMORY[0x1E69DC6A0] transitionContext];
    [*(a1 + 48) _synchronizeDrawing];
    v4 = [*(a1 + 48) _synchronizedDrawingFence];
    [v3 setAnimationFence:v4];

    [v3 setAnimationSettings:*(a1 + 40)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUsesEditingLayout:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PREditingSceneViewController *)self setUsesEditingLayout:v4 animationSettings:v6];
}

- (void)setUsesEditingLayout:(BOOL)a3 animationSettings:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_usesEditingLayout != v4)
  {
    self->_usesEditingLayout = v4;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_complicationContainerViewControllers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v21 + 1) + 8 * v11++) setUsesEditingLayout:v4 animationSettings:v6];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v12 = [(PREditingSceneViewController *)self viewIfLoaded];
    v13 = [v12 window];
    v14 = [v13 windowScene];

    scene = self->super._scene;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PREditingSceneViewController_setUsesEditingLayout_animationSettings___block_invoke;
    v17[3] = &unk_1E78454C0;
    v20 = v4;
    v17[4] = self;
    v18 = v6;
    v19 = v14;
    v16 = v14;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v17];
  }
}

id __71__PREditingSceneViewController_setUsesEditingLayout_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  [a2 pr_setUsesEditingLayout:*(a1 + 56)];
  if ([*(*(a1 + 32) + 1056) isActive] && *(a1 + 40))
  {
    v3 = [MEMORY[0x1E69DC6A0] transitionContext];
    [*(a1 + 48) _synchronizeDrawing];
    v4 = [*(a1 + 48) _synchronizedDrawingFence];
    [v3 setAnimationFence:v4];

    [v3 setAnimationSettings:*(a1 + 40)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShowsContentWhenReady:(BOOL)a3
{
  if (self->_showsContentWhenReady != a3)
  {
    v3 = a3;
    self->_showsContentWhenReady = a3;
    [(PRSceneViewController *)self _updatePresentationBackgroundColor];
    if (v3)
    {
      v5 = [(PRSceneViewController *)self isSceneContentReady]^ 1;

      [(PREditingSceneViewController *)self setContentHidden:v5 animated:0 completion:0];
    }
  }
}

- (void)setAllowsTransparentContent:(BOOL)a3
{
  if (self->_allowsTransparentContent != a3)
  {
    self->_allowsTransparentContent = a3;
    [(PRSceneViewController *)self _updatePresentationBackgroundColor];
  }
}

- (void)setContentHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v9 = a5;
  if (v5)
  {
    v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v8 = 0;
  }

  [(PREditingSceneViewController *)self setContentHidden:v6 animationSettings:v8 completion:v9];
}

- (void)setContentHidden:(BOOL)a3 animationSettings:(id)a4 completion:(id)a5
{
  if (self->_contentHidden != a3)
  {
    v9 = v5;
    v10 = v6;
    self->_contentHidden = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__PREditingSceneViewController_setContentHidden_animationSettings_completion___block_invoke;
    v7[3] = &unk_1E78437A0;
    v7[4] = self;
    v8 = a3;
    [MEMORY[0x1E698E7D0] animateWithSettings:a4 actions:v7 completion:a5];
  }
}

void __78__PREditingSceneViewController_setContentHidden_animationSettings_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewIfLoaded];
  v4 = v2;
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
}

- (void)setSelectedQuickActionPosition:(int64_t)a3
{
  if (self->_selectedQuickActionPosition != a3)
  {
    v20 = v3;
    v21 = v4;
    self->_selectedQuickActionPosition = a3;
    v7 = [(PREditingSceneViewController *)self viewIfLoaded];
    v8 = [v7 window];
    v9 = [v8 windowScene];

    v10 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
    v11 = [(PREditingSceneViewController *)self _shouldDepthEffectBeDisallowed];
    scene = self->super._scene;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PREditingSceneViewController_setSelectedQuickActionPosition___block_invoke;
    v15[3] = &unk_1E78454E8;
    v19 = v11;
    v15[4] = self;
    v16 = v10;
    v17 = v9;
    v18 = a3;
    v13 = v9;
    v14 = v10;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v15];
  }
}

id __63__PREditingSceneViewController_setSelectedQuickActionPosition___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56) != 0;
  v4 = a2;
  [v4 pr_setControlsHidden:v3];
  [v4 pr_setFocusedQuickActionElementPosition:*(a1 + 56)];
  [v4 pr_setDepthEffectDisallowed:*(a1 + 64)];

  if ([*(*(a1 + 32) + 1056) isActive] && *(a1 + 40))
  {
    v5 = [MEMORY[0x1E69DC6A0] transitionContext];
    [*(a1 + 48) _synchronizeDrawing];
    v6 = [*(a1 + 48) _synchronizedDrawingFence];
    [v5 setAnimationFence:v6];

    [v5 setAnimationSettings:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAcceptButtonType:(int64_t)a3
{
  if (self->_acceptButtonType != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_acceptButtonType = a3;
    scene = self->super._scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__PREditingSceneViewController_setAcceptButtonType___block_invoke;
    v6[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v6[4] = a3;
    [(FBScene *)scene updateSettingsWithBlock:v6];
  }
}

- (void)setVariant:(int64_t)a3
{
  if (self->_variant != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_variant = a3;
    scene = self->super._scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__PREditingSceneViewController_setVariant___block_invoke;
    v6[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v6[4] = a3;
    [(FBScene *)scene updateSettingsWithBlock:v6];
  }
}

- (void)setLeadingTopButtonFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_leadingTopButtonFrame = &self->_leadingTopButtonFrame;
  if (!CGRectEqualToRect(a3, self->_leadingTopButtonFrame))
  {
    p_leadingTopButtonFrame->origin.x = x;
    p_leadingTopButtonFrame->origin.y = y;
    p_leadingTopButtonFrame->size.width = width;
    p_leadingTopButtonFrame->size.height = height;
    scene = self->super._scene;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PREditingSceneViewController_setLeadingTopButtonFrame___block_invoke;
    v10[3] = &unk_1E7844708;
    v10[4] = self;
    [(FBScene *)scene performUpdate:v10];
  }
}

- (void)setTrailingTopButtonFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_trailingTopButtonFrame = &self->_trailingTopButtonFrame;
  if (!CGRectEqualToRect(a3, self->_trailingTopButtonFrame))
  {
    p_trailingTopButtonFrame->origin.x = x;
    p_trailingTopButtonFrame->origin.y = y;
    p_trailingTopButtonFrame->size.width = width;
    p_trailingTopButtonFrame->size.height = height;
    scene = self->super._scene;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PREditingSceneViewController_setTrailingTopButtonFrame___block_invoke;
    v10[3] = &unk_1E7844708;
    v10[4] = self;
    [(FBScene *)scene performUpdate:v10];
  }
}

- (void)setHorizontalTitleBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_horizontalTitleBoundingRect = &self->_horizontalTitleBoundingRect;
  if (!CGRectEqualToRect(a3, self->_horizontalTitleBoundingRect))
  {
    p_horizontalTitleBoundingRect->origin.x = x;
    p_horizontalTitleBoundingRect->origin.y = y;
    p_horizontalTitleBoundingRect->size.width = width;
    p_horizontalTitleBoundingRect->size.height = height;
    v9 = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__PREditingSceneViewController_setHorizontalTitleBoundingRect___block_invoke;
      v12[3] = &unk_1E7844708;
      v12[4] = self;
      [(FBScene *)scene performUpdate:v12];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63__PREditingSceneViewController_setHorizontalTitleBoundingRect___block_invoke_2;
      v11[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v11[4] = x;
      *&v11[5] = y;
      *&v11[6] = width;
      *&v11[7] = height;
      [(FBScene *)scene updateSettingsWithBlock:v11];
    }
  }
}

- (void)setVerticalTitleBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_verticalTitleBoundingRect = &self->_verticalTitleBoundingRect;
  if (!CGRectEqualToRect(a3, self->_verticalTitleBoundingRect))
  {
    p_verticalTitleBoundingRect->origin.x = x;
    p_verticalTitleBoundingRect->origin.y = y;
    p_verticalTitleBoundingRect->size.width = width;
    p_verticalTitleBoundingRect->size.height = height;
    v9 = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__PREditingSceneViewController_setVerticalTitleBoundingRect___block_invoke;
      v12[3] = &unk_1E7844708;
      v12[4] = self;
      [(FBScene *)scene performUpdate:v12];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __61__PREditingSceneViewController_setVerticalTitleBoundingRect___block_invoke_2;
      v11[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v11[4] = x;
      *&v11[5] = y;
      *&v11[6] = width;
      *&v11[7] = height;
      [(FBScene *)scene updateSettingsWithBlock:v11];
    }
  }
}

- (void)setTitleString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_titleString != v4)
  {
    v6 = [(NSString *)v4 copy];
    titleString = self->_titleString;
    self->_titleString = v6;

    v8 = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__PREditingSceneViewController_setTitleString___block_invoke;
      v12[3] = &unk_1E7844708;
      v12[4] = self;
      [(FBScene *)scene performUpdate:v12];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__PREditingSceneViewController_setTitleString___block_invoke_2;
      v10[3] = &unk_1E78448D0;
      v11 = v5;
      [(FBScene *)scene updateSettingsWithBlock:v10];
    }
  }
}

- (void)setOverrideDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_overrideDate != v4)
  {
    v6 = [(NSDate *)v4 copy];
    overrideDate = self->_overrideDate;
    self->_overrideDate = v6;

    v8 = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__PREditingSceneViewController_setOverrideDate___block_invoke;
      v12[3] = &unk_1E7844708;
      v12[4] = self;
      [(FBScene *)scene performUpdate:v12];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __48__PREditingSceneViewController_setOverrideDate___block_invoke_2;
      v10[3] = &unk_1E78448D0;
      v11 = v5;
      [(FBScene *)scene updateSettingsWithBlock:v10];
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)addLongSaveOperationIndicator
{
  v37[6] = *MEMORY[0x1E69E9840];
  if (!self->_saveIndicatorContainerView)
  {
    v2 = [(PREditingSceneViewController *)self view];
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    [v3 setBackgroundColor:v4];

    v5 = [v3 layer];
    [v5 setCompositingFilter:*MEMORY[0x1E6979D28]];

    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [v6 setColor:v7];

    [v6 startAnimating];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v6];
    [v3 setAlpha:0.0];
    [v2 addSubview:v3];
    v23 = MEMORY[0x1E696ACD8];
    v33 = v6;
    v32 = [v6 centerXAnchor];
    v31 = [v3 centerXAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v37[0] = v30;
    v28 = [v6 centerYAnchor];
    v27 = [v3 centerYAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v37[1] = v26;
    v25 = [v3 topAnchor];
    v24 = [v2 topAnchor];
    v22 = [v25 constraintEqualToAnchor:v24];
    v37[2] = v22;
    v21 = [v3 bottomAnchor];
    v8 = [v2 bottomAnchor];
    v9 = [v21 constraintEqualToAnchor:v8];
    v37[3] = v9;
    v10 = [v3 leadingAnchor];
    v29 = v2;
    v11 = [v2 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v37[4] = v12;
    v13 = [v3 trailingAnchor];
    v14 = [v2 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v37[5] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
    [v23 activateConstraints:v16];

    v17 = MEMORY[0x1E69DD250];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __61__PREditingSceneViewController_addLongSaveOperationIndicator__block_invoke;
    v35[3] = &unk_1E7843688;
    v18 = v3;
    v36 = v18;
    [v17 animateWithDuration:v35 animations:0.2];
    saveIndicatorContainerView = self->_saveIndicatorContainerView;
    self->_saveIndicatorContainerView = v18;
    v20 = v18;
  }
}

- (void)removeLongSaveOperationIndicator
{
  saveIndicatorContainerView = self->_saveIndicatorContainerView;
  if (saveIndicatorContainerView)
  {
    [(UIView *)saveIndicatorContainerView removeFromSuperview];
    v4 = self->_saveIndicatorContainerView;
    self->_saveIndicatorContainerView = 0;
  }
}

- (void)setPresentedSidebarComplicationsGallery:(id)a3
{
  v8 = a3;
  if (([(SBHPadAddSheetViewController *)self->_presentedSidebarComplicationsGallery isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_presentedSidebarComplicationsGallery, a3);
    localKeyboardFocusAssertion = self->_localKeyboardFocusAssertion;
    if (self->_presentedSidebarComplicationsGallery)
    {
      if (localKeyboardFocusAssertion)
      {
        goto LABEL_8;
      }

      v6 = [(PRSceneViewController *)self _acquireLocalKeyboardFocusAssertion];
    }

    else
    {
      if (!localKeyboardFocusAssertion)
      {
        goto LABEL_8;
      }

      [(BSInvalidatable *)localKeyboardFocusAssertion invalidate];
      v6 = 0;
    }

    v7 = self->_localKeyboardFocusAssertion;
    self->_localKeyboardFocusAssertion = v6;
  }

LABEL_8:
}

- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4
{
  v13.receiver = self;
  v13.super_class = PREditingSceneViewController;
  v6 = a3;
  [(PRSceneViewController *)&v13 _updateSceneSettings:v6 transitionContext:a4];
  [v6 pr_setEditingModalVariant:{-[PREditingSceneViewController _modalVariant](self, "_modalVariant")}];
  [v6 pr_setEditingVariant:{-[PREditingSceneViewController variant](self, "variant")}];
  [v6 pr_setEditingAcceptButtonType:{-[PREditingSceneViewController acceptButtonType](self, "acceptButtonType")}];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  [(PREditingSceneViewController *)self _topButtonLayout];
  [v6 pr_setLeadingTopButtonFrame:{v9, v10}];
  [v6 pr_setTrailingTopButtonFrame:{v11, v12}];
  [(PREditingSceneViewController *)self horizontalTitleBoundingRect];
  [v6 pr_setHorizontalTitleBoundingRect:?];
  [(PREditingSceneViewController *)self verticalTitleBoundingRect];
  [v6 pr_setVerticalTitleBoundingRect:?];
  v7 = [(PREditingSceneViewController *)self titleString];
  [v6 pr_setTitleString:v7];
  v8 = [(PREditingSceneViewController *)self overrideDate];
  [v6 pr_setOverrideDate:v8];
}

- (id)_presentationBackgroundColor
{
  v3 = [(PRSceneViewController *)self isSceneContentReady];
  if ([(PREditingSceneViewController *)self showsContentWhenReady]&& !v3 || [(PREditingSceneViewController *)self allowsTransparentContent]&& v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PREditingSceneViewController;
    v4 = [(PRSceneViewController *)&v6 _presentationBackgroundColor];
  }

  return v4;
}

- (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout
{
  [(PREditingSceneViewController *)self leadingTopButtonFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  retstr->leadingTopButtonFrame.origin.x = v5;
  retstr->leadingTopButtonFrame.origin.y = v7;
  retstr->leadingTopButtonFrame.size.width = v9;
  retstr->leadingTopButtonFrame.size.height = v11;
  [(PREditingSceneViewController *)self trailingTopButtonFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  retstr->trailingTopButtonFrame.origin.x = v13;
  retstr->trailingTopButtonFrame.origin.y = v15;
  retstr->trailingTopButtonFrame.size.width = v17;
  retstr->trailingTopButtonFrame.size.height = v19;
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  if (CGRectIsEmpty(v37) || (v38.origin.x = v14, v38.origin.y = v16, v38.size.width = v18, v38.size.height = v20, result = CGRectIsEmpty(v38), result))
  {
    v22 = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      memset(&v36, 0, sizeof(v36));
      v34 = 0;
      v35 = 0;
      if (v22)
      {
        [v22 topButtonLayoutForEditingSceneViewController:self];
        y = v34.y;
        x = v34.x;
        height = v35.height;
        width = v35.width;
      }

      else
      {
        height = 0.0;
        width = 0.0;
        y = 0.0;
        x = 0.0;
      }

      if (CGRectIsEmpty(*&x) || CGRectIsEmpty(v36))
      {
        [(PREditingSceneViewController *)self lastValidDelegateTopButtonLayout];
      }

      else
      {
        v29 = v34;
        v30 = v35;
        retstr->leadingTopButtonFrame.origin = v34;
        retstr->leadingTopButtonFrame.size = v30;
        origin = v36.origin;
        size = v36.size;
        retstr->trailingTopButtonFrame.origin = v36.origin;
        retstr->trailingTopButtonFrame.size = size;
        v33[0] = v29;
        v33[1] = v30;
        v33[2] = origin;
        v33[3] = size;
        [(PREditingSceneViewController *)self setLastValidDelegateTopButtonLayout:v33];
      }
    }

    else
    {
      v27 = *MEMORY[0x1E695F058];
      v28 = *(MEMORY[0x1E695F058] + 16);
      retstr->trailingTopButtonFrame.origin = *MEMORY[0x1E695F058];
      retstr->trailingTopButtonFrame.size = v28;
      retstr->leadingTopButtonFrame.origin = v27;
      retstr->leadingTopButtonFrame.size = v28;
    }
  }

  return result;
}

- (void)_complicationsSceneCreated:(id)a3
{
  v53 = a3;
  [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1];
  v4 = [(PRSceneViewController *)self configuredProperties];
  v5 = [v4 complicationLayout];
  self->_complicationsUseBottomLayout = [v5 complicationsUseBottomLayout];

  v6 = [v4 suggestionMetadata];
  v7 = [v6 suggestedComplicationsByIdentifier];

  v8 = [v4 complicationLayout];
  v9 = [v8 complications];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __59__PREditingSceneViewController__complicationsSceneCreated___block_invoke;
  v56[3] = &unk_1E7845530;
  v10 = v7;
  v57 = v10;
  v11 = [v9 bs_map:v56];

  v12 = [v4 complicationLayout];
  v13 = [v12 sidebarComplications];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __59__PREditingSceneViewController__complicationsSceneCreated___block_invoke_2;
  v54[3] = &unk_1E7845530;
  v52 = v10;
  v55 = v52;
  v14 = [v13 bs_map:v54];

  v15 = [v4 complicationLayout];
  v16 = [v15 complicationIconLayout];

  v17 = [v4 complicationLayout];
  v18 = [v17 sidebarComplicationIconLayout];

  v19 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  v20 = [v19 widgetGridViewController];

  if (v20)
  {
    v21 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v22 = [v21 widgetGridViewController];
    v23 = [v22 model];
    v24 = [v23 complicationDescriptors];
    v25 = v11;
    v11 = v24;

    v26 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v27 = [v26 widgetGridViewController];
    v28 = [v27 model];
    v29 = [v28 iconLayout];
    v30 = v16;
    v16 = v29;
  }

  v31 = v11;
  v32 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  v33 = [v32 sidebarWidgetGridViewController];

  if (v33)
  {
    v34 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v35 = [v34 sidebarWidgetGridViewController];
    [v35 model];
    v36 = v4;
    v37 = v31;
    v39 = v38 = v16;
    v51 = [v39 complicationDescriptors];

    v40 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v41 = [v40 sidebarWidgetGridViewController];
    v42 = [v41 model];
    v43 = [v42 iconLayout];

    v16 = v38;
    v31 = v37;
    v4 = v36;

    v18 = v43;
    v14 = v51;
  }

  v44 = [PRComplicationContainerViewController alloc];
  if (v31)
  {
    v45 = v31;
  }

  else
  {
    v45 = MEMORY[0x1E695E0F0];
  }

  if (v14)
  {
    v46 = v14;
  }

  else
  {
    v46 = MEMORY[0x1E695E0F0];
  }

  v47 = [(PRComplicationContainerViewController *)v44 initWithInlineComplicationDescriptor:self->_selectedInlineComplication graphicComplicationDescriptors:v45 graphicComplicationIconLayout:v16 sidebarComplicationDescriptors:v46 sidebarIconLayout:v18 scene:self->super._scene];
  [(PRComplicationContainerViewController *)v47 setDelegate:self];
  [(PRComplicationContainerViewController *)v47 setUsesEditingLayout:[(PREditingSceneViewController *)self usesEditingLayout]];
  v48 = [(PREditingSceneViewController *)self vibrancyConfiguration];
  [(PRComplicationContainerViewController *)v47 setVibrancyConfiguration:v48];

  [(PREditingSceneViewController *)self _updateComplicationLayout];
  [(PRComplicationContainerViewController *)v47 setWidgetsUseBottomLayout:[(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout]];
  [(NSHashTable *)self->_complicationContainerViewControllers addObject:v47];
  v49 = [v53 userInfo];

  v50 = [(PREditingSceneViewController *)self _windowFromUserInfo:v49];

  [v50 setRootViewController:v47];
  [v50 makeKeyAndVisible];
  [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  [(PREditingSceneViewController *)self _updateComplicationContainerVisibility];
  [(PREditingSceneViewController *)self _updateSceneSettingsForConfiguredWidgets];
}

PRComplicationDescriptor *__59__PREditingSceneViewController__complicationsSceneCreated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PRComplicationDescriptor alloc] initWithPRSWidget:v3];

  v5 = *(a1 + 32);
  v6 = [(PRComplicationDescriptor *)v4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];
  [(PRComplicationDescriptor *)v4 setSuggestedComplication:v7];

  return v4;
}

PRComplicationDescriptor *__59__PREditingSceneViewController__complicationsSceneCreated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PRComplicationDescriptor alloc] initWithPRSWidget:v3];

  v5 = *(a1 + 32);
  v6 = [(PRComplicationDescriptor *)v4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];
  [(PRComplicationDescriptor *)v4 setSuggestedComplication:v7];

  return v4;
}

- (void)_quickActionsSceneCreated:(id)a3
{
  v4 = a3;
  v5 = [(PRSceneViewController *)self configuredProperties];
  v14 = [v5 mutableCopy];

  v6 = [(PRSceneViewController *)self configuredProperties];
  v7 = [v6 quickActionsConfiguration];

  if (!v7)
  {
    v7 = [[PRPosterQuickActionsConfiguration alloc] initWithLeadingControl:0 trailingControl:0];
    [v14 setQuickActionsConfiguration:v7];
    [(PRSceneViewController *)self setConfiguredProperties:v14];
  }

  v8 = [[PRQuickActionEditingViewController alloc] initWithQuickActionsConfiguration:v7];
  v9 = [(PRQuickActionEditingViewController *)v8 view];
  v10 = [(PREditingSceneViewController *)self areControlsHidden];
  v11 = 1.0;
  if (v10)
  {
    v11 = 0.0;
  }

  [v9 setAlpha:v11];

  [(PRQuickActionEditingViewController *)v8 setDelegate:self];
  [(PREditingSceneViewController *)self setQuickActionEditingViewController:v8];
  v12 = [v4 userInfo];

  v13 = [(PREditingSceneViewController *)self _windowFromUserInfo:v12];

  [v13 setRootViewController:v8];
  [v13 makeKeyAndVisible];
  [(PRQuickActionEditingViewController *)v8 validateControls];
}

- (id)_windowFromUserInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"window"];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (void)_unregisterComplicationContainerViewControllerDelegates
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_complicationContainerViewControllers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

        [*(*(&v7 + 1) + 8 * v6++) setDelegate:{0, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_prefetchComplicationSuggestions
{
  v3 = objc_alloc(MEMORY[0x1E698AED8]);
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [MEMORY[0x1E698E650] colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v9 = [v3 initWithIdentifier:v5 descriptorIdentifier:v7 extensionBundleIdentifier:&stru_1F1C13D90 localizedDisplayName:&stru_1F1C13D90 modeSemanticType:0 titleFontName:&stru_1F1C13D90 titleColor:v8 subtitleComplication:0 layoutType:2 complications:0 landscapeComplications:0];

  objc_initWeak(&location, self);
  v10 = [MEMORY[0x1E698AEE8] sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke;
  v17[3] = &unk_1E7845580;
  objc_copyWeak(&v18, &location);
  [v10 fetchComplicationSetsForFaceGalleryItem:v9 completion:v17];

  v11 = [MEMORY[0x1E698AEE8] sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_199;
  v15[3] = &unk_1E78455A8;
  objc_copyWeak(&v16, &location);
  [v11 fetchInlineComplicationSetForFaceGalleryItem:v9 completion:v15];

  v12 = [MEMORY[0x1E698AEE8] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_202;
  v13[3] = &unk_1E78455D0;
  objc_copyWeak(&v14, &location);
  [v12 fetchLandscapeComplicationSetsForFaceGalleryItem:v9 completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2;
  block[3] = &unk_1E7845558;
  v10 = v6;
  v7 = v6;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = PRLogEditing();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      objc_storeStrong(WeakRetained + 160, *(a1 + 40));
      WeakRetained = v4;
    }
  }
}

void __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_200;
  block[3] = &unk_1E7845558;
  v10 = v6;
  v7 = v6;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_200(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = PRLogEditing();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_200_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      objc_storeStrong(WeakRetained + 159, *(a1 + 40));
      WeakRetained = v4;
    }
  }
}

void __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_202(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_203;
  block[3] = &unk_1E7845558;
  v10 = v6;
  v7 = v6;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_203(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = PRLogEditing();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_2_203_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      objc_storeStrong(WeakRetained + 161, *(a1 + 40));
      WeakRetained = v4;
    }
  }
}

- (void)_presentWidgetEducationAlertIfNeeded
{
  v10 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v10 userInterfaceIdiom] == 1)
  {
    v3 = [(PREditingSceneViewController *)self _areComplicationsDisallowed];

    if (v3)
    {
      return;
    }

    v4 = [(PREditingSceneViewController *)self view];
    v5 = [v4 window];
    v6 = [v5 windowScene];
    v7 = [v6 interfaceOrientation];

    v8 = objc_alloc_init(PRComplicationDefaultsDomain);
    v10 = v8;
    if ((v7 - 3) <= 1)
    {
      if (([(PRComplicationDefaultsDomain *)v8 hasShownLandscapeEducation]& 1) != 0)
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = objc_alloc_init(PRWidgetEducationViewController);
      [(PRWidgetEducationViewController *)v9 loadViewIfNeeded];
      [(PREditingSceneViewController *)self presentViewController:v9 animated:1 completion:0];
      if ((v7 - 3) > 1)
      {
        [v10 setHasShownPortraitEducation:1];
      }

      else
      {
        [v10 setHasShownLandscapeEducation:1];
      }

      goto LABEL_11;
    }

    if (([(PRComplicationDefaultsDomain *)v8 hasShownPortraitEducation]& 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
}

- (void)_presentControlsGalleryWithSelectedControl:(id)a3
{
  v14 = a3;
  v4 = [(PREditingSceneViewController *)self presentedControlsGallery];
  v5 = v4;
  if (v4)
  {
    [v4 setSelectedControl:v14];
  }

  else
  {
    v6 = [(PREditingSceneViewController *)self _controlsGalleryConfiguration];
    v7 = [objc_alloc(MEMORY[0x1E6997288]) initWithConfiguration:v6];
    [v7 setDelegate:self];
    [v7 setSelectedControl:v14];
    v8 = [v7 presentationController];
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    [v12 setDelegate:self];
    [(PREditingSceneViewController *)self presentViewController:v7 animated:1 completion:0];
    [(PREditingSceneViewController *)self setPresentedControlsGallery:v7];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v7];
    [v13 addObserver:self selector:sel_presentedViewControllerPresentationDidBegin_ name:*MEMORY[0x1E69DE2E0] object:v7];
  }
}

- (id)_controlsGalleryConfiguration
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6997280]);
  [v3 setAllowedControlSizes:&unk_1F1C6BC98];
  v4 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.GAXApp.GAXAppWidget" containerBundleIdentifier:@"com.apple.GAXApp" deviceIdentifier:0];
  v5 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v4 kind:@"com.apple.accessibility.GuidedAccess.button" intent:0];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v3 setDisallowedControlIdentities:v6];

  v7 = [(PREditingSceneViewController *)self _controlsGallerySuggestedControls];
  [v3 setSuggestedControls:v7];

  return v3;
}

- (id)_controlsGallerySuggestedControls
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PREditingSceneViewController *)self _suggestedControlIdentities];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_alloc(MEMORY[0x1E6997278]) initWithIdentity:*(*(&v11 + 1) + 8 * i) type:0 size:0];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_suggestedControlIdentities
{
  if (_suggestedControlIdentities_onceToken != -1)
  {
    [PREditingSceneViewController _suggestedControlIdentities];
  }

  v3 = _suggestedControlIdentities_controlIdentities;

  return v3;
}

void __59__PREditingSceneViewController__suggestedControlIdentities__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.Translate.TranslationWidgets" containerBundleIdentifier:@"com.apple.Translate" deviceIdentifier:0];
  v26 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v27 kind:@"com.apple.Translate.ToggleSpeechTranslationIntent" intent:0];
  [v0 addObject:v26];
  v25 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.Home.HomeWidget.Interactive" containerBundleIdentifier:@"com.apple.Home" deviceIdentifier:0];
  v24 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v25 kind:@"com.apple.Home.LaunchHomeAppControl" intent:0];
  [v0 addObject:v24];
  v23 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.calculator.CalculatorWidget" containerBundleIdentifier:@"com.apple.calculator" deviceIdentifier:0];
  v22 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v23 kind:@"com.apple.calculator.CalculatorWidget.control" intent:0];
  [v0 addObject:v22];
  v1 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" containerBundleIdentifier:@"com.apple.mobiletimer" deviceIdentifier:0];
  v21 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v1 kind:@"com.apple.mobiletimer.control.alarm" intent:0];
  [v0 addObject:v21];
  v2 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.ControlCenter.ControlCenterControlsExtension" containerBundleIdentifier:@"com.apple.springboard" deviceIdentifier:0];
  v20 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v2 kind:@"com.apple.ControlCenter.ControlCenterControlsExtension.appearance" intent:0];
  [v0 addObject:v20];
  v14 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.shortcuts.ShortcutsWidget" containerBundleIdentifier:@"com.apple.shortcuts" deviceIdentifier:0];
  v19 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v14 kind:@"ShortcutsControl" intent:0];
  [v0 addObject:v19];
  v18 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.Magnifier.MagnifierWidgetExtension" containerBundleIdentifier:@"com.apple.Magnifier" deviceIdentifier:0];
  v17 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v18 kind:@"com.apple.accessibility.Magnifier.button" intent:0];
  [v0 addObject:v17];
  v16 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.musicrecognition.MusicRecognitionControls" containerBundleIdentifier:@"com.apple.musicrecognition" deviceIdentifier:0];
  v15 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v16 kind:@"com.apple.musicrecognition.MusicRecognitionControls.toggle" intent:0];
  [v0 addObject:v15];
  v3 = v1;
  v13 = v1;
  v4 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v1 kind:@"com.apple.mobiletimer.control.timer" intent:0];
  [v0 addObject:v4];
  v5 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v14 kind:@"OpenAppControl" intent:0];
  [v0 addObject:v5];
  v6 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v3 kind:@"com.apple.mobiletimer.control.stopwatch" intent:0];
  [v0 addObject:v6];
  v7 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.BarcodeScanner.BarcodeScannerWidgetExtension" containerBundleIdentifier:@"com.apple.BarcodeScanner" deviceIdentifier:0];
  v8 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v7 kind:@"com.apple.BarcodeScanner.button" intent:0];
  [v0 addObject:v8];
  v9 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v2 kind:@"com.apple.ControlCenter.ControlCenterControlsExtension.flashlight" intent:0];
  [v0 addObject:v9];
  v10 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.camera.LauncherControlExtension" containerBundleIdentifier:@"com.apple.camera" deviceIdentifier:0];
  v11 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v10 kind:@"com.apple.camera.deeplink.button" intent:0];
  [v0 addObject:v11];
  v12 = _suggestedControlIdentities_controlIdentities;
  _suggestedControlIdentities_controlIdentities = v0;
}

- (void)setComplicationRowMode:(unint64_t)a3
{
  if (self->_complicationRowMode != a3)
  {
    self->_complicationRowMode = a3;
  }
}

- (void)_updateComplicationLayout
{
  v20 = *MEMORY[0x1E69E9840];
  [PREditorElementLayoutController frameForElements:1 variant:3];
  v4 = v3;
  height = self->_timeReticleFrame.size.height;
  if (height <= v3 && self->_depthEffectDisabled)
  {
    v6 = 0;
  }

  else
  {
    v6 = PUIFeatureEnabled();
  }

  v7 = self->_complicationLayoutIsUserConfigured && self->_complicationsUseBottomLayout;
  v8 = v6 | v7;
  v9 = PRLogEditing();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    depthEffectDisabled = self->_depthEffectDisabled;
    v14 = 67109632;
    v15 = v8 & 1;
    v16 = 1024;
    v17 = height > v4;
    v18 = 1024;
    v19 = depthEffectDisabled;
    _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "[Widget Row] updating complication layout to bottom: %{BOOL}u because adaptive time configured: %{BOOL}u and depth effect disabled: %{BOOL}u", &v14, 0x14u);
  }

  if (!self->_complicationsUseBottomLayout && ((v6 ^ 1) & 1) == 0)
  {
    self->_complicationLayoutIsUserConfigured = 0;
  }

  complicationRowMode = self->_complicationRowMode;
  v12 = PRLogEditing();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (complicationRowMode == 2)
  {
    if (v13)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "[Widget Row] complicationRowMode is FixedBottom, forcing complications to bottom", &v14, 2u);
    }

    v8 = 1;
  }

  else if (complicationRowMode == 1)
  {
    if (v13)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "[Widget Row] complicationRowMode is FixedTop, forcing complications to top", &v14, 2u);
    }

    v8 = 0;
  }

  else if (v13)
  {
    v14 = 67109120;
    v15 = v8 & 1;
    _os_log_impl(&dword_1A8AA7000, v12, OS_LOG_TYPE_DEFAULT, "[Widget Row] complicationRowMode is Automatic, using calculated layout for bottom: %{BOOL}u", &v14, 8u);
  }

  [(PREditingSceneViewController *)self setComplicationsUseBottomLayout:v8 & 1 animated:1];
}

- (void)setComplicationsUseBottomLayout:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_complicationsUseBottomLayout != a3)
  {
    v7[7] = v4;
    v7[8] = v5;
    self->_complicationsUseBottomLayout = a3;
    if (a4)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__PREditingSceneViewController_setComplicationsUseBottomLayout_animated___block_invoke;
      v7[3] = &unk_1E7843688;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.2];
    }

    else
    {
      [(PREditingSceneViewController *)self _updateComplicationLayoutIfPermitted];
    }

    [(PREditingSceneViewController *)self _updateSceneSettingsForConfiguredWidgets];
  }
}

- (void)_updateComplicationLayoutIfPermitted
{
  v3 = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (!self->_widgetGridDragInProgress && !v3)
  {
    v5 = [(PREditingSceneViewController *)self complicationContainerViewControllers];
    v4 = [v5 anyObject];
    [v4 setWidgetsUseBottomLayout:{-[PREditingSceneViewController _complicationsShouldUseBottomLayout](self, "_complicationsShouldUseBottomLayout")}];
  }
}

- (void)_updateInlineComplicationVisibility
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__PREditingSceneViewController__updateInlineComplicationVisibility__block_invoke;
  v2[3] = &unk_1E78441A8;
  v2[4] = self;
  v2[5] = 0x3FF0000000000000;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.2];
}

void __67__PREditingSceneViewController__updateInlineComplicationVisibility__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) complicationContainerViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) inlineComplicationContainerViewController];
        v8 = [v7 view];

        [v8 alpha];
        if (v9 != *(a1 + 40))
        {
          [v8 setAlpha:?];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_presentComplicationGallery
{
  v71[1] = *MEMORY[0x1E69E9840];
  v3 = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (v3)
  {
    v4 = PRLogEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Complication gallery is already displayed, not showing another one", buf, 2u);
    }
  }

  else
  {
    [(PREditingSceneViewController *)self _performWidgetDescriptorDiscovery];
    v5 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
    [v5 setAllowedWidgetFamilies:3072];

    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D4080]);
      v9 = [v8 layoutForIconLocation:*MEMORY[0x1E69D4158]];
      [v9 iconImageInfo];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [objc_alloc(MEMORY[0x1E69D40A0]) initWithName:@"iconImages" iconImageInfo:{v11, v13, v15, v17}];
      v19 = objc_alloc(MEMORY[0x1E69D40D0]);
      v20 = [(PREditingSceneViewController *)self listLayoutProvider];
      v21 = [(PREditingSceneViewController *)self iconViewProvider];
      v22 = [v19 initWithListLayoutProvider:v20 iconViewProvider:v21 allowedWidgets:3072 appCellIconImageCache:0 addWidgetSheetStyle:{v18, 1}];

      [v22 setPresenter:self];
      [v22 setDelegate:self];
      [v22 setAddWidgetSheetLocation:1];
      [v22 setWantsBottomAttachedPresentation:0];
      [v22 setWantsCloseButton:1];
      v23 = [v22 presentationController];
      v24 = objc_opt_class();
      v25 = v23;
      if (v24)
      {
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v34 = v26;

      v35 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"ComplicationGalleryDodge" resolver:&__block_literal_global_343];
      v71[0] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
      [v34 setDetents:v36];

      [v34 setLargestUndimmedDetentIdentifier:@"ComplicationGalleryDodge"];
      v37 = [v34 dimmingView];
      v38 = [v37 layer];
      [v38 setHitTestsAsOpaque:0];

      v39 = [v34 _confinedDimmingView];
      v40 = [v39 layer];
      [v40 setHitTestsAsOpaque:0];

      v41 = [MEMORY[0x1E69DD708] appearancePreferringDimmingVisible:0];
      [v34 _setStandardAppearance:v41];

      [v34 setDelegate:self];
      [v22 loadViewIfNeeded];
      v42 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
      [v42 updatePresentedWidgetEditingViewController:v22];

      v43 = [MEMORY[0x1E696AD88] defaultCenter];
      [v43 addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v22];
      [v43 addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v22];
    }

    else
    {
      v27 = PRIconGridSizeClassSetForWidgetFamilyMask(3072);
      v28 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
      v67 = v27;
      v8 = [v28 applicationWidgetCollectionsForEditingViewController:self withAllowedSizeClasses:&v67 allowingNonStackableItems:0];
      v29 = v67;

      v30 = [PRComplicationGalleryViewController alloc];
      graphicComplicationSuggestionSets = self->_graphicComplicationSuggestionSets;
      v32 = [(PREditingSceneViewController *)self listLayoutProvider];
      v33 = [(PREditingSceneViewController *)self iconViewProvider];
      v18 = [(PRComplicationGalleryViewController *)v30 initWithSuggestionSets:graphicComplicationSuggestionSets applicationWidgetCollections:v8 listLayoutProvider:v32 iconViewProvider:v33];

      [(PRComplicationGalleryViewController *)v18 setDelegate:self];
      v22 = [(PREditingSceneViewController *)self _configureNavigationControllerForGalleryViewController:v18];
    }

    [(PREditingSceneViewController *)self setPresentedComplicationsGallery:v22];
    [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
    v55 = v22;
    [(PREditingSceneViewController *)self presentViewController:v22 animated:1 completion:0];
    [(PREditingSceneViewController *)self setFocusedElement:2];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    if (![(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout])
    {
      [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    }

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = self->_graphicComplicationSuggestionSets;
    v58 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v58)
    {
      v57 = *v64;
      do
      {
        v44 = 0;
        do
        {
          if (*v64 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v63 + 1) + 8 * v44);
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v46 = [v45 complications];
          v47 = [v46 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v60;
            do
            {
              v50 = 0;
              do
              {
                if (*v60 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v59 + 1) + 8 * v50);
                v52 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                v53 = [v52 objectForKey:v51];

                if (!v53)
                {
                  v54 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                  [v54 setObject:&unk_1F1C6B9B0 forKey:v51];
                }

                ++v50;
              }

              while (v48 != v50);
              v48 = [v46 countByEnumeratingWithState:&v59 objects:v69 count:16];
            }

            while (v48);
          }

          ++v44;
        }

        while (v44 != v58);
        v58 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v58);
    }

    v4 = v55;
  }
}

- (SBHAddWidgetSheetConfigurationManager)addWidgetSheetConfigurationManager
{
  addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  if (!addWidgetSheetConfigurationManager)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D4068]) initWithWidgetExtensionProvider:self->_widgetExtensionProvider];
    v5 = [(PREditingSceneViewController *)self iconModel];
    [v4 setIconModel:v5];

    v6 = [(PREditingSceneViewController *)self listLayoutProvider];
    [v4 setListLayoutProvider:v6];

    [v4 setAddWidgetSheetStyle:1];
    [v4 setAllowedWidgetFamilies:3074];
    [v4 setAllowsFakeWidgets:0];
    [v4 setConfigurationManagerDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      v7 = [MEMORY[0x1E69D4088] pr_widgetDomain];
      [v4 setGridSizeClassDomain:v7];
    }

    v8 = self->_addWidgetSheetConfigurationManager;
    self->_addWidgetSheetConfigurationManager = v4;

    addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  }

  return addWidgetSheetConfigurationManager;
}

- (void)_presentSidebarComplicationGallery
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (v3)
  {
    v4 = PRLogEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Sidebar complication gallery is already displayed, not showing another one", buf, 2u);
    }
  }

  else
  {
    [(PREditingSceneViewController *)self _performWidgetDescriptorDiscovery];
    v5 = objc_alloc_init(MEMORY[0x1E69D4080]);
    v6 = [v5 layoutForIconLocation:*MEMORY[0x1E69D4158]];
    [v6 iconImageInfo];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [objc_alloc(MEMORY[0x1E69D40A0]) initWithName:@"iconImages" iconImageInfo:{v8, v10, v12, v14}];
    v16 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
    [v16 setAllowedWidgetFamilies:3074];

    v17 = [(PREditingSceneViewController *)self complicationContainerViewControllers];
    v18 = [v17 anyObject];
    v19 = [v18 sidebarWidgetGridViewController];
    v20 = [v19 dragManager];

    v21 = [(PREditingSceneViewController *)self iconViewProvider];
    [v21 setDragManager:v20];

    v22 = [PRPadAddSheetViewController alloc];
    v23 = [(PREditingSceneViewController *)self listLayoutProvider];
    v24 = [(PREditingSceneViewController *)self iconViewProvider];
    v25 = [(SBHAddWidgetSheetViewControllerBase *)v22 initWithListLayoutProvider:v23 iconViewProvider:v24 allowedWidgets:3074 appCellIconImageCache:256 addWidgetSheetStyle:v15, 1];

    [(PRPadAddSheetViewController *)v25 setModalPresentationStyle:2];
    [(SBHPadAddSheetViewController *)v25 setPresenter:self];
    [(SBHAddWidgetSheetViewControllerBase *)v25 setDelegate:self];
    [(SBHPadAddSheetViewController *)v25 setAddWidgetSheetLocation:1];
    [(SBHPadAddSheetViewController *)v25 setWantsBottomAttachedPresentation:0];
    [(SBHPadAddSheetViewController *)v25 setWantsCloseButton:1];
    if ((PUIFeatureEnabled() & 1) == 0)
    {
      [(SBHPadAddSheetViewController *)v25 setWantsSeparator:1];
    }

    v26 = [(PRPadAddSheetViewController *)v25 presentationController];
    v27 = objc_opt_class();
    v28 = v26;
    v52 = v15;
    v53 = v5;
    v51 = v20;
    if (v27)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    v31 = [v30 dimmingView];
    v32 = [v31 layer];
    [v32 setHitTestsAsOpaque:0];

    v33 = [v30 _confinedDimmingView];
    v34 = [v33 layer];
    [v34 setHitTestsAsOpaque:0];

    v35 = [MEMORY[0x1E69DD708] appearancePreferringDimmingVisible:0];
    [v30 _setStandardAppearance:v35];

    [v30 setSourceView:self->_sidebarComplicationGallerySourceView];
    v49 = v30;
    [v30 setDelegate:self];
    [(PREditingSceneViewController *)self presentViewController:v25 animated:1 completion:0];
    [(PREditingSceneViewController *)self setPresentedSidebarComplicationsGallery:v25];
    [(PREditingSceneViewController *)self setFocusedElement:3];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    v36 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
    v50 = v25;
    [v36 updatePresentedWidgetEditingViewController:v25];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = self->_graphicComplicationSuggestionSets;
    v56 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v56)
    {
      v55 = *v62;
      do
      {
        v37 = 0;
        do
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v61 + 1) + 8 * v37);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v39 = [v38 complications];
          v40 = [v39 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v58;
            do
            {
              v43 = 0;
              do
              {
                if (*v58 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v57 + 1) + 8 * v43);
                v45 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                v46 = [v45 objectForKey:v44];

                if (!v46)
                {
                  v47 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                  [v47 setObject:&unk_1F1C6B9B0 forKey:v44];
                }

                ++v43;
              }

              while (v41 != v43);
              v41 = [v39 countByEnumeratingWithState:&v57 objects:v66 count:16];
            }

            while (v41);
          }

          ++v37;
        }

        while (v37 != v56);
        v56 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v56);
    }

    v48 = [MEMORY[0x1E696AD88] defaultCenter];
    [v48 addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v50];
    [v48 addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v50];

    v4 = v53;
  }
}

- (void)_presentInlineComplicationGallery
{
  v20 = *MEMORY[0x1E69E9840];
  [(PREditingSceneViewController *)self _performWidgetDescriptorDiscovery];
  v3 = [[PRInlineComplicationGalleryViewController alloc] initWithSuggestionSet:self->_inlineComplicationSuggestionSet selectedComplication:self->_selectedInlineComplication alternateDateEnabled:self->_alternateDateEnabled];
  [(PRInlineComplicationGalleryViewController *)v3 setDelegate:self];
  v14 = v3;
  v4 = [(PREditingSceneViewController *)self _configureNavigationControllerForGalleryViewController:v3];
  [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:v4];
  [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
  [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
  [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  [(PREditingSceneViewController *)self presentViewController:v4 animated:1 completion:0];
  [(PREditingSceneViewController *)self setFocusedElement:1];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ATXComplicationSet *)self->_inlineComplicationSuggestionSet complications];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
        v12 = [v11 objectForKey:v10];

        if (!v12)
        {
          v13 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
          [v13 setObject:&unk_1F1C6B9B0 forKey:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_performWidgetDescriptorDiscovery
{
  v2 = objc_alloc_init(MEMORY[0x1E69942D8]);
  [v2 userEnteredAddGalleryForHost:@"Complications"];
}

- (void)_updateComplicationContainerVisibility
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(PREditingSceneViewController *)self complicationContainerViewControllers];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = [(PREditingSceneViewController *)self view];
          v12 = [v11 window];
          v13 = [v12 windowScene];
          v14 = [v13 interfaceOrientation];

          v15 = [v10 widgetGridViewController];
          v16 = [v15 view];

          [v16 setHidden:(v14 - 3) < 2];
          v17 = [v10 sidebarWidgetGridViewController];
          v18 = [v17 view];

          [v18 setHidden:(v14 - 1) < 2];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_shouldAllowAddComplicationsTapGestureForLocation:(int64_t)a3
{
  v5 = [(PREditingSceneViewController *)self _shouldAllowGalleryPresentationForLocation:?];
  v6 = [(PREditingSceneViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  v9 = [v8 interfaceOrientation];

  if (a3 == 1)
  {
    v10 = [(PREditingSceneViewController *)self _hasSidebarComplications];
    v11 = !v5;
    v12 = v9 - 3;
  }

  else
  {
    if (a3)
    {
      return v5;
    }

    v10 = [(PREditingSceneViewController *)self _hasGraphicComplications];
    v11 = !v5;
    v12 = v9 - 1;
  }

  v13 = v12 < 2;
  v14 = !v11 && v13;
  return !v10 && v14;
}

- (BOOL)_shouldAllowInlineComplicationTapGesture
{
  if ([(PREditingSceneViewController *)self _areComplicationsDisallowed]|| [(PREditingSceneViewController *)self isClientPresentingModalViewController]|| [(PREditingSceneViewController *)self areControlsHidden])
  {
    return 0;
  }

  v4 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (v4)
  {
    return 1;
  }

  if ([(PREditingSceneViewController *)self _isPosterCoveredByModalPresentation])
  {
    return 0;
  }

  return [(PREditingSceneViewController *)self variant]!= 1;
}

- (void)_updateAddComplicationsTapGestureAllowed
{
  v3 = [(PREditingSceneViewController *)self sidebarComplicationAddGestureView];
  [v3 setHidden:{-[PREditingSceneViewController _shouldAllowAddComplicationsTapGestureForLocation:](self, "_shouldAllowAddComplicationsTapGestureForLocation:", 1) ^ 1}];

  LODWORD(v3) = [(PREditingSceneViewController *)self _shouldAllowInlineComplicationTapGesture];
  v4 = [(PREditingSceneViewController *)self inlineComplicationGestureView];
  [v4 setHidden:v3 ^ 1];
}

- (void)_updateLocalControlsHiddenWithAnimationSettings:(id)a3
{
  v4 = a3;
  if ([(PREditingSceneViewController *)self areControlsHidden])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(PREditingSceneViewController *)self quickActionEditingViewController];
  v7 = [v6 view];

  if (v4)
  {
    v8 = MEMORY[0x1E698E7D0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PREditingSceneViewController__updateLocalControlsHiddenWithAnimationSettings___block_invoke;
    v9[3] = &unk_1E78441A8;
    v10 = v7;
    v11 = v5;
    [v8 animateWithSettings:v4 actions:v9];
  }

  else
  {
    [v7 setAlpha:v5];
  }
}

- (void)inlineComplicationGestureViewTapped:(id)a3
{
  v5 = [(PREditingSceneViewController *)self selectedInlineComplication];
  if (v5 && ([(PREditingSceneViewController *)self presentedInlineComplicationsGallery], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(PREditingSceneViewController *)self _presentIntentConfigurationForComplicationDescriptorIfPossible:v5];
  }

  else
  {
    [(PREditingSceneViewController *)self _presentInlineComplicationGallery];
  }
}

- (void)setDraggingComplication:(BOOL)a3
{
  if (self->_draggingComplication != a3)
  {
    self->_draggingComplication = a3;
    [(PREditingSceneViewController *)self _updateSceneSettingsForDepthEffectDisallowed];

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)setClientPresentingModalViewController:(BOOL)a3
{
  if (self->_clientPresentingModalViewController != a3)
  {
    self->_clientPresentingModalViewController = a3;
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)_dismissAnyPresentedComplicationGalleryAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v13 = a4;
  v6 = [(PREditingSceneViewController *)self presentedComplicationsGallery];
  if (v6 || ([(PREditingSceneViewController *)self presentedSidebarComplicationsGallery], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = 0;
  }

  else
  {
    v12 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

    if (v12)
    {
      v7 = 0;
      goto LABEL_5;
    }

    v6 = [(PREditingSceneViewController *)self presentedControlsGallery];
    v7 = v6 == 0;
  }

LABEL_5:
  v8 = [(PREditingSceneViewController *)self presentedViewController];
  v9 = [v8 isBeingDismissed];

  if (v7 || (v9 & 1) != 0)
  {
    if (v13)
    {
      v13[2]();
    }
  }

  else
  {
    [(PREditingSceneViewController *)self dismissViewControllerAnimated:v4 completion:v13];
  }

  [(PREditingSceneViewController *)self setPresentedComplicationsGallery:0];
  [(PREditingSceneViewController *)self _updateComplicationLayoutIfPermitted];
  [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
  [(PREditingSceneViewController *)self setPresentedSidebarComplicationsGallery:0];
  [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:0];
  [(PREditingSceneViewController *)self setPresentedControlsGallery:0];
  [(PREditingSceneViewController *)self setSelectedQuickActionPosition:0];
  v10 = [(PREditingSceneViewController *)self quickActionEditingViewController];
  [v10 setGalleryPresented:0];

  [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
  [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
  [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  widgetBeingAdded = self->_widgetBeingAdded;
  self->_widgetBeingAdded = 0;
}

- (void)presentedViewControllerPresentationDidBegin:(id)a3
{
  v7 = [a3 object];
  v4 = [(PREditingSceneViewController *)self presentedControlsGallery];

  v5 = v7;
  if (v7 == v4)
  {
    v6 = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [v6 setGalleryPresented:1];

    v5 = v7;
  }
}

- (void)presentedViewControllerDismissalWillBegin:(id)a3
{
  v7 = [a3 object];
  v4 = [(PREditingSceneViewController *)self presentedViewController];

  if (v7 == v4)
  {
    [(PREditingSceneViewController *)self setFocusedElement:0];
  }

  v5 = [(PREditingSceneViewController *)self iconViewProvider];
  v6 = [v5 dragManager];
  [v6 cancelAllDrags];
}

- (void)presentedViewControllerDismissalDidEnd:(id)a3
{
  v12 = a3;
  v4 = [v12 object];
  v5 = [(PREditingSceneViewController *)self presentedViewController];

  if (v4 == v5)
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DE2C0]];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 removeObserver:self name:*MEMORY[0x1E69DE2D0] object:v4];
      [v9 removeObserver:self name:*MEMORY[0x1E69DE2C8] object:v4];

      goto LABEL_11;
    }

    if (v4 == self->_presentedComplicationsGallery)
    {
      v10 = self;
      v11 = 2;
    }

    else if (v4 == self->_presentedSidebarComplicationsGallery)
    {
      v10 = self;
      v11 = 3;
    }

    else
    {
      if (v4 != self->_presentedInlineComplicationsGallery)
      {
        goto LABEL_11;
      }

      v10 = self;
      v11 = 1;
    }

    [(PREditingSceneViewController *)v10 setFocusedElement:v11];
  }

LABEL_11:
}

- (void)setFocusedElement:(int64_t)a3
{
  self->_focusedElement = a3;
  v5 = [(PREditingSceneViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  v9 = [(PREditingSceneViewController *)self _shouldDepthEffectBeDisallowed];
  scene = self->super._scene;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PREditingSceneViewController_setFocusedElement___block_invoke;
  v13[3] = &unk_1E78454E8;
  v17 = v9;
  v13[4] = self;
  v14 = v8;
  v15 = v7;
  v16 = a3;
  v11 = v7;
  v12 = v8;
  [(FBScene *)scene updateSettingsWithTransitionBlock:v13];
}

id __50__PREditingSceneViewController_setFocusedElement___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 pr_setControlsHidden:*(a1 + 56) != 0];
  [v3 pr_setFocusedComplicationElement:*(a1 + 56)];
  [v3 pr_setDepthEffectDisallowed:*(a1 + 64)];
  if ([*(*(a1 + 32) + 1056) isActive] && *(a1 + 40))
  {
    v4 = [MEMORY[0x1E69DC6A0] transitionContext];
    [*(a1 + 48) _synchronizeDrawing];
    v5 = [*(a1 + 48) _synchronizedDrawingFence];
    [v4 setAnimationFence:v5];

    [v4 setAnimationSettings:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(*(a1 + 32) + 1248);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) setFocusedElement:*(a1 + 56) animationSettings:{*(a1 + 40), v12}];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)_configureNavigationControllerForGalleryViewController:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCCD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 & 0xFFFFFFFFFFFFFFFBLL) == 1 && (isKindOfClass)
  {
    [v6 setModalPresentationStyle:7];
    v10 = [v6 popoverPresentationController];
    v11 = [(PREditingSceneViewController *)self view];
    [v10 setSourceView:v11];

    [PREditorElementLayoutController frameForElements:4 variant:3];
    [v10 setSourceRect:?];
    [v10 setPermittedArrowDirections:1];
    v12 = [(PREditingSceneViewController *)self inlineComplicationGestureView];
    v29[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v10 setPassthroughViews:v13];

    [v10 setDelegate:self];
    v14 = [v10 traitOverrides];
    [v14 setUserInterfaceStyle:2];
  }

  else
  {
    v15 = [v6 presentationController];
    v16 = objc_opt_class();
    v17 = v15;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
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

    v19 = v18;

    v10 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"ComplicationGalleryDodge" resolver:&__block_literal_global_360];
    v28 = v10;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v19 setDetents:v20];

    [v19 setLargestUndimmedDetentIdentifier:@"ComplicationGalleryDodge"];
    [v19 setPrefersGrabberVisible:1];
    v21 = [v19 dimmingView];
    v22 = [v21 layer];
    [v22 setHitTestsAsOpaque:0];

    v23 = [v19 _confinedDimmingView];
    v24 = [v23 layer];
    [v24 setHitTestsAsOpaque:0];

    [v19 setDelegate:self];
    [v19 _setShouldScaleDownBehindDescendantSheets:1];
    v14 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:1];
    [v14 setSubvariant:@"customizeSheet"];
    [v19 _setNonLargeBackground:v14];
    [v19 _setLargeBackground:v14];
    v25 = [v19 traitOverrides];

    [v25 setUserInterfaceStyle:2];
  }

  v26 = [MEMORY[0x1E696AD88] defaultCenter];
  [v26 addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v6];
  [v26 addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v6];

  return v6;
}

- (void)_dismissWithAction:(int64_t)a3
{
  v84 = *MEMORY[0x1E69E9840];
  if (![(PREditingSceneViewController *)self isDismissing])
  {
    v5 = PRLogEditing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v83 = a3;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Dismiss with action %li", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    [(PREditingSceneViewController *)self setDismissing:1];
    [(PREditingSceneViewController *)self _unregisterComplicationContainerViewControllerDelegates];
    v57 = [(PREditingSceneViewController *)self delegate];
    if (a3 == 1 && !v57)
    {
      v6 = PRLogEditing();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v79 = 0;
        _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Discarding updated configuration because no delegate is set", v79, 2u);
      }

      a3 = 0;
    }

    v7 = [(PREditingSceneViewController *)self presentedViewController];
    v8 = v7 == 0;

    if (!v8)
    {
      [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1];
    }

    if (a3 == 1)
    {
      v9 = [(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout];
      v52 = [(PRComplicationDescriptor *)self->_selectedInlineComplication PRSWidget];
      v54 = v9;
      v10 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      v11 = [v10 widgetGridViewController];
      v56 = [v11 model];

      v12 = [v56 complicationDescriptors];
      v13 = [v12 bs_map:&__block_literal_global_367];
      [v56 saveIconStateIfNeeded];
      v50 = [v56 iconLayout];
      v51 = v13;
      v14 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      v15 = [v14 sidebarWidgetGridViewController];
      v55 = [v15 model];

      v16 = [v55 complicationDescriptors];
      v17 = [v16 bs_map:&__block_literal_global_369];
      [v55 saveIconStateIfNeeded];
      v18 = [v55 iconLayout];
      v49 = v17;
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = [(PRComplicationDescriptor *)self->_selectedInlineComplication suggestedComplication];

      if (v20)
      {
        v21 = [(PRComplicationDescriptor *)self->_selectedInlineComplication suggestedComplication];
        v22 = [(PRComplicationDescriptor *)self->_selectedInlineComplication uniqueIdentifier];
        [v19 setObject:v21 forKey:v22];
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v23 = v12;
      v24 = [v23 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (v24)
      {
        v25 = *v76;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v76 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v75 + 1) + 8 * i);
            v28 = [v27 suggestedComplication];

            if (v28)
            {
              v29 = [v27 suggestedComplication];
              v30 = [v27 uniqueIdentifier];
              [v19 setObject:v29 forKey:v30];
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v75 objects:v81 count:16];
        }

        while (v24);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v31 = v16;
      v32 = [v31 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v32)
      {
        v33 = *v72;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v72 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = *(*(&v71 + 1) + 8 * j);
            v36 = [v35 suggestedComplication];

            if (v36)
            {
              v37 = [v35 suggestedComplication];
              v38 = [v35 uniqueIdentifier];
              [v19 setObject:v37 forKey:v38];
            }
          }

          v32 = [v31 countByEnumeratingWithState:&v71 objects:v80 count:16];
        }

        while (v32);
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __51__PREditingSceneViewController__dismissWithAction___block_invoke_3;
      v60[3] = &unk_1E7845688;
      v61 = v57;
      v62 = self;
      objc_copyWeak(v69, buf);
      v39 = v52;
      v63 = v39;
      v40 = v18;
      v64 = v40;
      v53 = v49;
      v65 = v53;
      v41 = v50;
      v66 = v41;
      v42 = v51;
      v67 = v42;
      v70 = v54;
      v43 = v19;
      v68 = v43;
      v69[1] = 1;
      v44 = [PREditingDidDismissAction acceptChangesWithCompletion:v60];
      scene = self->super._scene;
      v46 = [MEMORY[0x1E695DFD8] setWithObject:v44];
      [(FBScene *)scene sendActions:v46];

      objc_destroyWeak(v69);
    }

    else
    {
      v39 = +[PREditingDidDismissAction cancelAction];
      v47 = self->super._scene;
      v48 = [MEMORY[0x1E695DFD8] setWithObject:v39];
      [(FBScene *)v47 sendActions:v48];

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __51__PREditingSceneViewController__dismissWithAction___block_invoke_389;
      v58[3] = &unk_1E78456B0;
      objc_copyWeak(&v59, buf);
      [v57 editingSceneViewController:self userDidDismissWithAction:a3 updatedConfiguration:0 updatedConfiguredProperties:0 completion:v58];
      objc_destroyWeak(&v59);
    }

    objc_destroyWeak(buf);
  }
}

void __51__PREditingSceneViewController__dismissWithAction___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v16 = v7;
  v17 = v8;
  v18 = *(a1 + 32);
  objc_copyWeak(v24, (a1 + 96));
  v19 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v20 = v15;
  v21 = v14;
  v25 = *(a1 + 112);
  v22 = *(a1 + 88);
  v24[1] = *(a1 + 104);
  v23 = v9;
  BSDispatchMain();

  objc_destroyWeak(v24);
}

void __51__PREditingSceneViewController__dismissWithAction___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    WeakRetained = [*(a1 + 56) configuredProperties];
    v3 = [*(a1 + 40) mutableCopy];
    v76 = [[PRPosterComplicationLayout alloc] initWithInlineComplication:*(a1 + 64) sidebarComplicationIconLayout:*(a1 + 72) sidebarComplications:*(a1 + 80) complicationIconLayout:*(a1 + 88) complications:*(a1 + 96) complicationsUseBottomLayout:*(a1 + 136)];
    [v3 setComplicationLayout:?];
    v4 = [WeakRetained focusConfiguration];
    [v3 setFocusConfiguration:v4];

    v75 = [WeakRetained renderingConfiguration];
    [v3 setRenderingConfiguration:?];
    v5 = [*(a1 + 32) role];
    v6 = [v5 isEqual:@"PRPosterRoleLockScreen"];

    if (v6)
    {
      v7 = [WeakRetained homeScreenConfiguration];
      v8 = [*(a1 + 40) homeScreenConfiguration];
      v9 = v3;
      if (v7)
      {
        v10 = [v7 configurationApplyingColorPickerConfigurationsFromConfiguration:v8];

        v8 = v10;
      }

      if (!v8)
      {
        v11 = [*(a1 + 56) path];
        v12 = [v11 identity];
        v13 = [v12 provider];
        v14 = [*(a1 + 32) role];
        v8 = [PRPosterHomeScreenConfiguration defaultHomeScreenConfigurationForProvider:v13 role:v14];
      }

      v15 = [*(a1 + 56) path];
      v16 = [PRPosterPathUtilities loadHomeScreenConfigurationForPath:v15 error:0];
      v17 = [v16 customizationConfiguration];

      if (v17)
      {
        v18 = [v8 mutableCopy];
        [v18 setCustomizationConfiguration:v17];
        v19 = [v18 copy];

        v8 = v19;
      }

      [v9 setHomeScreenConfiguration:v8];

      v3 = v9;
    }

    v74 = [WeakRetained quickActionsConfiguration];
    [v3 setQuickActionsConfiguration:?];
    v20 = [WeakRetained suggestionMetadata];
    v21 = [PRPosterSuggestionMetadata alloc];
    v22 = [v20 suggestedGalleryItem];
    v23 = *(a1 + 104);
    v73 = v20;
    v24 = [v20 lastModifiedDate];
    v25 = [(PRPosterSuggestionMetadata *)v21 initWithSuggestedGalleryItem:v22 suggestedComplicationsByIdentifier:v23 lastModifiedDate:v24];

    [v3 setSuggestionMetadata:v25];
    v26 = [*(a1 + 32) displayNameLocalizationKey];

    v27 = [WeakRetained otherMetadata];
    v28 = v27;
    if (v26)
    {
      v29 = [v27 mutableCopy];

      v30 = [*(a1 + 32) displayNameLocalizationKey];
      [v29 setDisplayNameLocalizationKey:v30];

      v28 = v29;
    }

    [v3 setOtherMetadata:v28];

    v31 = [WeakRetained titleStyleConfiguration];
    v32 = [*(a1 + 56) posterRole];
    v33 = PFPosterRoleSupportsTitleStyleConfigurations();

    if (v33 && !v31)
    {
      v34 = +[PRPosterTimeFontConfiguration defaultConfiguration];
      v35 = [PRPosterTitleStyleConfiguration alloc];
      v36 = +[PRPosterTitleStyleConfiguration defaultTitleColor];
      v37 = +[PRPosterTitleStyleConfiguration defaultTimeNumberingSystem];
      v31 = [(PRPosterTitleStyleConfiguration *)v35 initWithTimeFontConfiguration:v34 titleColor:v36 timeNumberingSystem:v37];
    }

    v38 = *(*(a1 + 56) + 1200);
    v39 = [(PRPosterTitleStyleConfiguration *)v31 effectiveTitleColor];
    v40 = [*(a1 + 40) titleStyleConfiguration];
    v41 = [v40 effectiveTitleColor];
    [v38 setColorModified:{objc_msgSend(v39, "isEqual:", v41) ^ 1}];

    v42 = *(*(a1 + 56) + 1200);
    v43 = [(PRPosterTitleStyleConfiguration *)v31 timeFontConfiguration];
    v44 = [*(a1 + 40) titleStyleConfiguration];
    v45 = [v44 timeFontConfiguration];
    [v42 setFontModified:{objc_msgSend(v43, "isEqual:", v45) ^ 1}];

    v46 = *(*(a1 + 56) + 1200);
    v47 = [(PRPosterTitleStyleConfiguration *)v31 effectiveTimeNumberingSystem];
    v48 = [*(a1 + 40) titleStyleConfiguration];
    v49 = [v48 effectiveTimeNumberingSystem];
    [v46 setNumberingSystemModified:{objc_msgSend(v47, "isEqualToString:", v49) ^ 1}];

    v50 = *(*(a1 + 56) + 1200);
    v51 = [WeakRetained complicationLayout];
    [v50 setWidgetsModified:{objc_msgSend(v51, "isEqualToComplicationLayout:", v76) ^ 1}];

    v52 = [*(a1 + 32) role];
    LODWORD(v51) = [v52 isEqual:@"PRPosterRoleAmbient"];

    if (v51)
    {
      v53 = [WeakRetained ambientConfiguration];
      [v3 setAmbientConfiguration:v53];

      v54 = [WeakRetained ambientWidgetLayout];
      [v3 setAmbientWidgetLayout:v54];
    }

    v55 = [*(a1 + 56) path];
    v56 = [v55 loadUserInfoWithError:0];

    v57 = [*(a1 + 32) loadUserInfoWithError:0];
    [*(*(a1 + 56) + 1200) setPosterContentModified:{objc_msgSend(*(a1 + 56), "_posterUserInfo:containsUserChangesFromPrevious:", v57, v56)}];
    [*(a1 + 56) setConfiguredProperties:v3];
    if (objc_opt_respondsToSelector())
    {
      v70 = v56;
      v71 = v31;
      v72 = v25;
      v58 = *(a1 + 48);
      v59 = *(a1 + 56);
      v60 = *(a1 + 128);
      v61 = *(a1 + 32);
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __51__PREditingSceneViewController__dismissWithAction___block_invoke_2_383;
      v78[3] = &unk_1E7845638;
      v62 = v61;
      v63 = v3;
      v64 = v62;
      v79 = v62;
      v65 = v63;
      v80 = v63;
      v81 = *(a1 + 112);
      objc_copyWeak(&v82, (a1 + 120));
      [v58 editingSceneViewController:v59 userDidDismissWithAction:v60 updatedConfiguration:v64 updatedConfiguredProperties:v80 completion:v78];
      objc_destroyWeak(&v82);

      v3 = v65;
      v31 = v71;
      v25 = v72;
      v56 = v70;
    }

    else
    {
      v67 = PRLogEditing();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v67, OS_LOG_TYPE_DEFAULT, "dismissing editing scene view controller without saving because the delegate doesn't want to", buf, 2u);
      }

      [*(a1 + 112) invalidate];
      [*(a1 + 56) _finalize];
    }

    v68 = [MEMORY[0x1E698AEE8] sharedInstance];
    v69 = [*(a1 + 56) engagementCountsForViewedSuggestedComplications];
    [v68 logComplicationsSeenInGalleryWithEngagements:v69 completion:&__block_literal_global_386];
  }

  else
  {
    v66 = PRLogEditing();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      __51__PREditingSceneViewController__dismissWithAction___block_invoke_4_cold_1(v66);
    }

    [*(a1 + 48) editingSceneViewController:*(a1 + 56) userDidDismissWithAction:0 updatedConfiguration:0 updatedConfiguredProperties:0 completion:&__block_literal_global_374];
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained _finalize];
  }
}

void __51__PREditingSceneViewController__dismissWithAction___block_invoke_2_383(uint64_t a1, void *a2)
{
  v3 = a2;
  BSDispatchQueueAssertMain();
  if (v3)
  {
    v4 = PRLogEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__PREditingSceneViewController__dismissWithAction___block_invoke_2_383_cold_1();
    }
  }

  [*(a1 + 48) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finalize];
}

void __51__PREditingSceneViewController__dismissWithAction___block_invoke_384(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PRLogEditing();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __51__PREditingSceneViewController__dismissWithAction___block_invoke_384_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __51__PREditingSceneViewController__dismissWithAction___block_invoke_389(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finalize];
}

- (BOOL)_posterUserInfo:(id)a3 containsUserChangesFromPrevious:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DFA8];
  v8 = [v6 allKeys];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x1E695DFA8];
  v11 = [v5 allKeys];
  v12 = [v10 setWithArray:v11];
  [v9 intersectSet:v12];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [v5 valueForKey:{v17, v22}];
        v19 = [v6 valueForKey:v17];
        v20 = BSEqualObjects();

        if (!v20)
        {
          LOBYTE(v14) = 1;
          goto LABEL_11;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v14;
}

- (unint64_t)_modalVariant
{
  v3 = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (v3)
  {
    return 1;
  }

  v5 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (v5)
  {
    return 3;
  }

  v6 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (v6)
  {
    return 2;
  }

  v7 = [(PREditingSceneViewController *)self presentedControlsGallery];
  v8 = v7 != 0;

  return 4 * v8;
}

- (BOOL)_areComplicationsDisallowed
{
  v2 = [(PREditingSceneViewController *)self posterRole];
  v3 = PFPosterRoleFromPRPosterRole(v2);

  LOBYTE(v2) = PFPosterRoleSupportsComplications();
  return v2 ^ 1;
}

- (void)_configureUsingPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = PREditingSceneViewController;
  v4 = a3;
  [(PRSceneViewController *)&v6 _configureUsingPath:v4];
  v5 = [PRPosterPathUtilities loadProactiveGalleryOptions:v4 error:0, v6.receiver, v6.super_class];

  -[PREditingSceneViewController setHero:](self, "setHero:", [v5 isHero]);
}

- (void)_configureInitialSceneSettings:(id)a3
{
  v11.receiver = self;
  v11.super_class = PREditingSceneViewController;
  v4 = a3;
  [(PRSceneViewController *)&v11 _configureInitialSceneSettings:v4];
  v5 = [(PRSceneViewController *)self contentsIdentity:v11.receiver];
  v6 = [v5 type];
  v7 = [(PREditingSceneViewController *)self isHero];
  v8 = ((v6 - 1) < 2) | [(PREditingSceneViewController *)self isEditingNewPosterFromConfiguration];
  if (v7)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  [v4 pr_setEditingContext:v9];
  [v4 pr_setEditingVariant:{-[PREditingSceneViewController variant](self, "variant")}];
  [v4 pr_setEditingAcceptButtonType:{-[PREditingSceneViewController acceptButtonType](self, "acceptButtonType")}];
  [v4 pr_setControlsHidden:{-[PREditingSceneViewController areControlsHidden](self, "areControlsHidden")}];
  [v4 pr_setUsesEditingLayout:{-[PREditingSceneViewController usesEditingLayout](self, "usesEditingLayout")}];
  [v4 pr_setComplicationsDisallowed:{-[PREditingSceneViewController _areComplicationsDisallowed](self, "_areComplicationsDisallowed")}];
  v10 = [(PREditingSceneViewController *)self traitCollection];
  [v4 pui_setUserInterfaceStyle:{objc_msgSend(v10, "userInterfaceStyle")}];
}

- (void)_updateSceneSettingsForPosterCoveredByModalPresentation
{
  v3 = [(PREditingSceneViewController *)self _modalVariant];
  scene = self->super._scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PREditingSceneViewController__updateSceneSettingsForPosterCoveredByModalPresentation__block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
  v5[4] = v3;
  [(FBScene *)scene updateSettingsWithBlock:v5];
}

- (void)_updateSceneSettingsForConfiguredWidgets
{
  v3 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  v4 = [v3 widgetGridViewController];
  v5 = [v4 model];

  v6 = [v5 complicationDescriptors];
  v7 = [v6 count] != 0;

  LOBYTE(v6) = [(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout];
  v8 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  v9 = [v8 sidebarWidgetGridViewController];
  v10 = [v9 model];

  v11 = [v10 complicationDescriptors];
  LOBYTE(v9) = [v11 count] != 0;

  scene = self->super._scene;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PREditingSceneViewController__updateSceneSettingsForConfiguredWidgets__block_invoke;
  v13[3] = &__block_descriptor_35_e33_v16__0__FBSMutableSceneSettings_8l;
  v14 = v7;
  v15 = v9;
  v16 = v6;
  [(FBScene *)scene updateSettingsWithBlock:v13];
}

void __72__PREditingSceneViewController__updateSceneSettingsForConfiguredWidgets__block_invoke(unsigned __int8 *a1, void *a2)
{
  v3 = a1[32];
  v4 = a2;
  [v4 pui_setComplicationRowConfigured:v3];
  [v4 pui_setComplicationSidebarConfigured:a1[33]];
  [v4 pui_setComplicationRowAtBottom:a1[34]];
}

- (void)_updatePresentationDismissalGestureView
{
  v54[1] = *MEMORY[0x1E69E9840];
  v3 = [(PREditingSceneViewController *)self presentationDismissalGestureViews];
  v4 = [(PREditingSceneViewController *)self _isPosterCoveredByModalPresentation];
  if (v4 && !v3)
  {
    v5 = [(PREditingSceneViewController *)self presentedComplicationsGallery];

    if (v5)
    {
      v6 = [(PREditingSceneViewController *)self complicationContainerViewControllers];
      v7 = [v6 anyObject];
      v8 = [v7 widgetGridViewController];
      v9 = [v8 view];
      [v9 frame];
      x = v10;
      y = v12;
      width = v14;
      height = v16;
    }

    else
    {
      v24 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

      if (v24)
      {
        v25 = 16;
      }

      else
      {
        v26 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

        if (!v26)
        {
          x = *MEMORY[0x1E695F058];
          y = *(MEMORY[0x1E695F058] + 8);
          width = *(MEMORY[0x1E695F058] + 16);
          height = *(MEMORY[0x1E695F058] + 24);
          goto LABEL_22;
        }

        v25 = 4;
      }

      [PREditorElementLayoutController frameForElements:v25 variant:2];
      x = v27;
      y = v28;
      width = v29;
      height = v30;
    }

LABEL_22:
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    if (!CGRectIsEmpty(v55))
    {
      v56.origin.x = x;
      v56.origin.y = y;
      v56.size.width = width;
      v56.size.height = height;
      v57 = CGRectInset(v56, -20.0, -20.0);
      x = v57.origin.x;
      y = v57.origin.y;
      width = v57.size.width;
      height = v57.size.height;
    }

    v31 = objc_alloc_init(PRDismissalOverlayView);
    [(PRDismissalOverlayView *)v31 setTouchPassthroughRect:x, y, width, height];
    [(PRDismissalOverlayView *)v31 setDelegate:self];
    [(PRDismissalOverlayView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v54[0] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    [(PREditingSceneViewController *)self setPresentationDismissalGestureViews:v32];

    v33 = [(PREditingSceneViewController *)self view];
    [v33 addSubview:v31];
    v42 = MEMORY[0x1E696ACD8];
    v47 = [(PRDismissalOverlayView *)v31 leadingAnchor];
    v46 = [v33 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v53[0] = v45;
    v44 = [(PRDismissalOverlayView *)v31 trailingAnchor];
    v43 = [v33 trailingAnchor];
    v34 = [v44 constraintEqualToAnchor:v43];
    v53[1] = v34;
    v35 = [(PRDismissalOverlayView *)v31 topAnchor];
    v36 = [v33 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v53[2] = v37;
    v38 = [(PRDismissalOverlayView *)v31 bottomAnchor];
    v39 = [v33 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v53[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
    [v42 activateConstraints:v41];

    v3 = 0;
    goto LABEL_25;
  }

  if (v3)
  {
    v18 = v4;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = v3;
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v48 + 1) + 8 * i) removeFromSuperview];
        }

        v21 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v21);
    }

    [(PREditingSceneViewController *)self setPresentationDismissalGestureViews:0];
  }

LABEL_25:
}

- (BOOL)_hasGraphicComplications
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_complicationContainerViewControllers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v11 + 1) + 8 * i) widgetGridViewController];
        v7 = [v6 model];
        v8 = [v7 complicationDescriptors];

        v9 = [v8 count];
        if (v9)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_hasSidebarComplications
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_complicationContainerViewControllers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v11 + 1) + 8 * i) sidebarWidgetGridViewController];
        v7 = [v6 model];
        v8 = [v7 complicationDescriptors];

        v9 = [v8 count];
        if (v9)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_shouldDepthEffectBeDisallowed
{
  v3 = [(PREditingSceneViewController *)self variant];
  if (PUIFeatureEnabled())
  {
    complicationRowMode = self->_complicationRowMode;
    result = v3 == 1 || complicationRowMode == 1;
    if (complicationRowMode != 1 || v3 == 1)
    {
      return result;
    }
  }

  else if (v3 == 1)
  {
    return 1;
  }

  v7 = [(PREditingSceneViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [v9 interfaceOrientation];

  if ((v10 - 1) <= 1 && [(PREditingSceneViewController *)self _hasGraphicComplications])
  {
    return 1;
  }

  return [(PREditingSceneViewController *)self focusedElement]== 2;
}

- (void)_updateSceneSettingsForDepthEffectDisallowed
{
  v3 = [(PREditingSceneViewController *)self _shouldDepthEffectBeDisallowed];
  scene = self->super._scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PREditingSceneViewController__updateSceneSettingsForDepthEffectDisallowed__block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
  v6 = v3;
  [(FBScene *)scene updateSettingsWithBlock:v5];
}

- (void)_insertModularComplication:(id)a3 location:(int64_t)a4 animated:(BOOL)a5
{
  v11 = a3;
  if (![PREditingSceneViewController _canAddComplicationDescriptor:"_canAddComplicationDescriptor:forLocation:" forLocation:?])
  {
    [(PREditingSceneViewController *)self _presentFullAlertForComplication:v11];
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v7 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v8 = [v7 sidebarWidgetGridViewController];
  }

  else
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v7 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v8 = [v7 widgetGridViewController];
  }

  v9 = v8;

LABEL_9:
  v10 = [v9 model];
  [v10 addComplicationDescriptor:v11];

LABEL_10:
}

- (void)_presentFullAlertForComplication:(id)a3
{
  v4 = a3;
  v5 = PRSharedWidgetExtensionProvider();
  v6 = [v4 widget];

  v21 = [v5 widgetDescriptorForWidget:v6];

  v7 = MEMORY[0x1E696AEC0];
  v8 = PRBundle();
  v9 = [v8 localizedStringForKey:@"COMPLICATION_GALLERY_FULL_MESSAGE" value:&stru_1F1C13D90 table:@"PosterKit"];
  v10 = [v21 displayName];
  v11 = [v7 stringWithFormat:v9, v10];

  v12 = MEMORY[0x1E69DC650];
  v13 = PRBundle();
  v14 = [v13 localizedStringForKey:@"COMPLICATION_GALLERY_FULL_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
  v15 = [v12 alertControllerWithTitle:v14 message:v11 preferredStyle:1];

  v16 = MEMORY[0x1E69DC648];
  v17 = PRBundle();
  v18 = [v17 localizedStringForKey:@"OK" value:&stru_1F1C13D90 table:@"PosterKit"];
  v19 = [v16 actionWithTitle:v18 style:0 handler:0];

  [v15 addAction:v19];
  v20 = [(PREditingSceneViewController *)self bs_topPresentedViewController];
  [v20 presentViewController:v15 animated:1 completion:0];
}

- (BOOL)_canAddComplicationDescriptor:(id)a3 forLocation:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v8 = [v7 sidebarWidgetGridViewController];
  }

  else
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    v8 = [v7 widgetGridViewController];
  }

  v9 = v8;

LABEL_7:
  v10 = [v9 model];
  v11 = [v10 canAddComplicationDescriptor:v6];

  return v11;
}

- (void)setVibrancyConfiguration:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_vibrancyConfiguration, a3);
    [(PREditingSceneViewController *)self _updateComplicationsVibrancyConfiguration];
  }
}

- (void)_updateComplicationsVibrancyConfiguration
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PREditingSceneViewController *)self vibrancyConfiguration];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_complicationContainerViewControllers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setVibrancyConfiguration:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_presentIntentConfigurationForComplicationDescriptorIfPossible:(id)a3
{
  v4 = a3;
  v5 = [v4 widget];
  v6 = [v5 intentReference];
  v7 = [v6 intent];

  if (v7 && [(PREditingSceneViewController *)self _intentHasConfigurableAttributes:v7])
  {
    [(PREditingSceneViewController *)self _presentIntentConfigurationForComplicationDescriptor:v4];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_presentIntentConfigurationForComplicationDescriptor:(id)a3
{
  v15 = a3;
  v5 = [v15 widget];
  v6 = PRSharedWidgetExtensionProvider();
  v7 = [v6 widgetDescriptorForWidget:v5];

  if (!self->_presentedComplicationWidgetConfigurationViewController)
  {
    v8 = [v7 intentType];

    if (v8)
    {
      v9 = [v5 intentReference];
      v10 = [v9 intent];
      v11 = [v5 family];
      v12 = [(PREditingSceneViewController *)self bs_topPresentedViewController];
      v13 = [(PREditingSceneViewController *)self _presentIntentConfigurationViewControllerWithIntent:v10 descriptor:v7 family:v11 fromViewController:v12];

      objc_storeStrong(&self->_widgetBeingConfigured, a3);
      presentedComplicationWidgetConfigurationViewController = self->_presentedComplicationWidgetConfigurationViewController;
      self->_presentedComplicationWidgetConfigurationViewController = v13;
    }
  }
}

- (void)_presentIntentConfigurationForQuickActionControl:(id)a3 withPosition:(int64_t)a4
{
  v17 = a3;
  v6 = [v17 identity];
  v7 = [v6 intentReference];
  v8 = [v7 intent];

  if (v8 && [(PREditingSceneViewController *)self _intentHasConfigurableAttributes:v8])
  {
    [(PREditingSceneViewController *)self setControlIntentBeingConfigured:v17];
    [(PREditingSceneViewController *)self setQuickActionIntentEditPosition:a4];
    v9 = [v17 identity];
    v10 = [(PREditingSceneViewController *)self _descriptorForControl:v17];
    v11 = v10;
    if (!self->_presentedControlWidgetConfigurationViewController)
    {
      v12 = [v10 intentType];

      if (v12)
      {
        v13 = [v9 intentReference];
        v14 = [v13 intent];
        v15 = [(PREditingSceneViewController *)self _presentIntentConfigurationViewControllerWithIntent:v14 descriptor:v11 family:0 fromViewController:self];

        presentedControlWidgetConfigurationViewController = self->_presentedControlWidgetConfigurationViewController;
        self->_presentedControlWidgetConfigurationViewController = v15;
      }
    }
  }
}

- (id)_descriptorForControl:(id)a3
{
  v4 = [a3 identity];
  controlExtensionProvider = self->_controlExtensionProvider;
  v6 = [v4 extensionIdentity];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [(CHSWidgetExtensionProvider *)controlExtensionProvider widgetExtensionContainerForExtensionBundleIdentifier:v7];

  v9 = [v4 extensionIdentity];
  v10 = [v8 extensionForExtensionIdentity:v9];

  v11 = [v10 orderedControlDescriptors];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PREditingSceneViewController__descriptorForControl___block_invoke;
  v15[3] = &unk_1E7843610;
  v16 = v4;
  v12 = v4;
  v13 = [v11 bs_firstObjectPassingTest:v15];

  return v13;
}

uint64_t __54__PREditingSceneViewController__descriptorForControl___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)_presentIntentConfigurationViewControllerWithIntent:(id)a3 descriptor:(id)a4 family:(int64_t)a5 fromViewController:(id)a6
{
  v10 = MEMORY[0x1E69E3100];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  [v14 setIntent:v13];

  v15 = [v12 displayName];
  [v14 setWidgetDisplayName:v15];

  v16 = [v12 widgetDescription];
  [v14 setWidgetDescription:v16];

  v17 = [v12 pr_configurationType];
  [v14 setWidgetConfigurationType:v17];
  [v14 setFamily:a5];
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v14 setWidgetConfigurationStyle:1];
  }

  v20 = [objc_alloc(MEMORY[0x1E69E3108]) initWithOptions:v14];
  [v20 setDelegate:self];
  v21 = [v20 sheetPresentationController];
  [v21 setDelegate:self];

  [v11 presentViewController:v20 animated:1 completion:0];

  return v20;
}

- (BOOL)_intentHasConfigurableAttributes:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 _codableDescription];
    v6 = [v5 attributes];
    v7 = [v6 allValues];

    v4 = [v7 bs_containsObjectPassingTest:&__block_literal_global_418];
  }

  return v4;
}

- (void)_sceneContentReadinessDidChange
{
  v8.receiver = self;
  v8.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v8 _sceneContentReadinessDidChange];
  if ([(PREditingSceneViewController *)self showsContentWhenReady])
  {
    objc_initWeak(&location, self);
    v3 = [(PRSceneViewController *)self isSceneContentReady];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__PREditingSceneViewController__sceneContentReadinessDidChange__block_invoke;
    v4[3] = &unk_1E7845718;
    objc_copyWeak(&v5, &location);
    v6 = v3;
    [(PREditingSceneViewController *)self setContentHidden:v3 ^ 1 animated:v3 completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __63__PREditingSceneViewController__sceneContentReadinessDidChange__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [WeakRetained[137] copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 editingSceneViewControllerDidFinishShowingContent:v3];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_updateQuickActionsPosterConfigurationForPosition:(int64_t)a3 withControlConfiguration:(id)a4
{
  v11 = a4;
  v6 = [(PRSceneViewController *)self configuredProperties];
  v7 = [v6 mutableCopy];

  v8 = [(PRSceneViewController *)self configuredProperties];
  v9 = [v8 quickActionsConfiguration];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = [(PRPosterQuickActionsConfiguration *)[PRPosterMutableQuickActionsConfiguration alloc] initWithLeadingControl:0 trailingControl:0];
  }

  if (a3 == 2)
  {
    [(PRPosterQuickActionsConfiguration *)v10 setTrailingControl:v11];
  }

  else if (a3 == 1)
  {
    [(PRPosterQuickActionsConfiguration *)v10 setLeadingControl:v11];
  }

  [v7 setQuickActionsConfiguration:v10];
  [(PRSceneViewController *)self setConfiguredProperties:v7];
}

- (void)setTimeReticleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_timeReticleFrame = &self->_timeReticleFrame;
  if (!CGRectEqualToRect(self->_timeReticleFrame, a3))
  {
    p_timeReticleFrame->origin.x = x;
    p_timeReticleFrame->origin.y = y;
    p_timeReticleFrame->size.width = width;
    p_timeReticleFrame->size.height = height;
    scene = self->super._scene;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PREditingSceneViewController_setTimeReticleFrame___block_invoke;
    v10[3] = &unk_1E78448D0;
    v10[4] = self;
    [(FBScene *)scene updateSettings:v10];
  }
}

void __52__PREditingSceneViewController_setTimeReticleFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 salientContentRectangle];
  [v3 pui_setSalientContentRectangle:?];
}

- (CGRect)salientContentRectangle
{
  v3 = [(PREditingSceneViewController *)self viewIfLoaded];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  if (CGRectIsEmpty(v17) || (p_timeReticleFrame = &self->_timeReticleFrame, CGRectIsEmpty(*p_timeReticleFrame)))
  {
    v13 = *MEMORY[0x1E695F050];
    MaxY = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    MaxY = CGRectGetMaxY(*p_timeReticleFrame);
    v15 = v11 - MaxY;
    v13 = 0.0;
  }

  v16 = v9;
  result.size.height = v15;
  result.size.width = v16;
  result.origin.y = MaxY;
  result.origin.x = v13;
  return result;
}

- (void)_addWidgetIconView:(id)a3
{
  v4 = a3;
  v5 = [(PREditingSceneViewController *)self focusedElement]== 3;
  v6 = [v4 icon];

  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v34 = [v10 activeWidget];
  v11 = [v10 gridSizeClass];

  v12 = PRWidgetFamilyForIconGridSizeClass(v11);
  v13 = objc_alloc(MEMORY[0x1E6994370]);
  v14 = [v34 extensionBundleIdentifier];
  v15 = [v34 containerBundleIdentifier];
  v16 = [v34 kind];
  v17 = [v13 initWithExtensionBundleIdentifier:v14 containerBundleIdentifier:v15 kind:v16 family:v12 intent:0];

  v18 = [PRComplicationDescriptor alloc];
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [v19 UUIDString];
  v21 = [(PRComplicationDescriptor *)v18 initWithUniqueIdentifier:v20 widget:v17];

  [(PREditingSceneViewController *)self _insertModularComplication:v21 location:v5 animated:1];
  v22 = [(PRComplicationDescriptor *)v21 suggestedComplication];

  if (v22)
  {
    v23 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    v24 = [(PRComplicationDescriptor *)v21 suggestedComplication];
    v25 = [v23 objectForKey:v24];
    v26 = v25;
    v27 = &unk_1F1C6B9B0;
    if (v25)
    {
      v27 = v25;
    }

    v28 = v27;

    v29 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    v30 = MEMORY[0x1E696AD98];
    v31 = [v28 intValue];

    v32 = [v30 numberWithInt:(v31 + 1)];
    v33 = [(PRComplicationDescriptor *)v21 suggestedComplication];
    [v29 setObject:v32 forKey:v33];
  }
}

+ (id)_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_onceToken != -1)
  {
    dispatch_once(&_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_onceToken, block);
  }

  v2 = [_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_sOverrideDomain data];
  v3 = [v2 customOverrides];

  return v3;
}

uint64_t __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69D5480]);
  v3 = _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_sOverrideDomain;
  _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_sOverrideDomain = v2;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke_2;
  v5[3] = &__block_descriptor_40_e46_v16__0__STStatusBarOverridesStatusDomainData_8l;
  v5[4] = *(a1 + 32);
  return [_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_sOverrideDomain observeDataWithBlock:v5];
}

void __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 customOverrides];
  if ([v3 dateFromEntriesIncludesTime])
  {
    v4 = [v3 dateFromEntries];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) overrideObservingViewControllers];
  v6 = [v5 allObjects];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke_3;
  v9[3] = &unk_1E7843070;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(&v7 + 1) + 8 * v6++) setOverrideDate:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (NSHashTable)overrideObservingViewControllers
{
  if (overrideObservingViewControllers_onceToken != -1)
  {
    +[PREditingSceneViewController overrideObservingViewControllers];
  }

  v3 = overrideObservingViewControllers_sOverrideObservingViewControllers;

  return v3;
}

uint64_t __64__PREditingSceneViewController_overrideObservingViewControllers__block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = overrideObservingViewControllers_sOverrideObservingViewControllers;
  overrideObservingViewControllers_sOverrideObservingViewControllers = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_setUpDateOverriding
{
  v3 = objc_opt_class();
  v4 = [v3 overrideObservingViewControllers];
  [v4 addObject:self];

  v6 = [v3 _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides];
  if ([v6 dateFromEntriesIncludesTime])
  {
    v5 = [v6 dateFromEntries];
  }

  else
  {
    v5 = 0;
  }

  [(PREditingSceneViewController *)self setOverrideDate:v5];
}

- (void)_setUpRemotePresentationForContextId:(unsigned int)a3 layerRenderId:(unint64_t)a4 presentedScreenRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = *&a3;
  v15 = objc_alloc_init(PREditingRemotePresentationView);
  v12 = [(PREditingRemotePresentationView *)v15 portalLayer];
  [v12 setSourceContextId:v10];
  [v12 setSourceLayerRenderId:a4];
  v13 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v13 setView:v15];
  v14 = [(PREditingSceneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 editingSceneViewController:self wantsRemotePresentationOfViewController:v13 contentScreenRect:{x, y, width, height}];
  }
}

- (void)_finalize
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_didFinalize)
  {
    self->_didFinalize = 1;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(NSHashTable *)self->_observers copy];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 editingSceneViewControllerDidFinalize:self];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v28.receiver = self;
  v28.super_class = PREditingSceneViewController;
  v7 = [(PRSceneViewController *)&v28 scene:a3 handleActions:v6];
  v23 = v7;
  if (v7)
  {
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v9 = v8;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v18 = [v15 sourceContextId];
          v19 = [v15 sourceLayerRenderId];
          [v15 presentedViewScreenRect];
          [(PREditingSceneViewController *)self _setUpRemotePresentationForContextId:v18 layerRenderId:v19 presentedScreenRect:?];
        }

        else
        {
          v20 = objc_opt_self();
          v21 = objc_opt_isKindOfClass();

          if ((v21 & 1) == 0)
          {
            continue;
          }

          -[PREditingSceneViewController _dismissWithAction:](self, "_dismissWithAction:", [v15 userAcceptedChanges]);
        }

        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [v10 clientSettings];
  if ([v11 pr_complicationRowModeDidChange])
  {
    -[PREditingSceneViewController setComplicationRowMode:](self, "setComplicationRowMode:", [v14 pr_complicationRowMode]);
  }

  if (([v11 pr_motionEffectsDisabledDidChange] & 1) != 0 || (objc_msgSend(v11, "pr_supportedMotionEffectsModeDidChange") & 1) != 0 || objc_msgSend(v11, "pr_depthEffectDisabledDidChange"))
  {
    v38 = v13;
    v15 = -[PRPosterRenderingConfiguration initWithDepthEffectDisabled:motionEffectsDisabled:]([PRPosterRenderingConfiguration alloc], "initWithDepthEffectDisabled:motionEffectsDisabled:", [v14 pr_isDepthEffectDisabled], objc_msgSend(v14, "pr_areMotionEffectsDisabled"));
    v16 = [(PRSceneViewController *)self configuredProperties];
    v17 = [v16 mutableCopy];

    [v17 setRenderingConfiguration:v15];
    [(PRSceneViewController *)self setConfiguredProperties:v17];
    LODWORD(v16) = [v14 pr_areMotionEffectsDisabled];
    v18 = [v14 pr_supportedMotionEffectsMode];
    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v10 settings];
    v21 = v10;
    v22 = [v20 pr_effectiveMotionEffectsMode];

    v23 = v22 == v19;
    v10 = v21;
    if (!v23)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __106__PREditingSceneViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
      v40[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
      v40[4] = v19;
      [v21 updateSettings:v40];
    }

    v13 = v38;
  }

  if ([v11 pr_deviceMotionEventsRequestedDidChange])
  {
    v24 = [v14 pr_deviceMotionEventsRequested];
    v25 = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v25 editingSceneViewController:self deviceMotionEventsRequestedDidChange:v24];
    }
  }

  if ([v11 pr_preferredDeviceMotionUpdateIntervalDidChange])
  {
    [v14 pr_preferredDeviceMotionUpdateInterval];
    v27 = v26;
    v28 = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v28 editingSceneViewController:self preferredDeviceMotionUpdateIntervalDidChange:v27];
    }
  }

  if ([v14 pui_adaptiveTimeMode] != 2)
  {
LABEL_26:
    if (([v11 pr_titleReticleFrameDidChange] & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v29 = [v10 settings];
  if (![v29 pui_isComplicationRowConfigured])
  {

    goto LABEL_26;
  }

  v30 = [v10 settings];
  v31 = [v30 pui_isComplicationRowAtBottom];

  if (([v11 pr_titleReticleFrameDidChange] & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v31)
  {
LABEL_27:
    [v14 pr_titleReticleFrame];
    goto LABEL_28;
  }

  [PREditorElementLayoutController frameForElements:1 variant:3];
LABEL_28:
  [(PREditingSceneViewController *)self setTimeReticleFrame:?];
LABEL_29:
  v32 = [v14 pr_isDepthEffectDisabled];
  if (v32 != [(PREditingSceneViewController *)self _isDepthEffectDisabled])
  {
    -[PREditingSceneViewController setDepthEffectDisabled:](self, "setDepthEffectDisabled:", [v14 pr_isDepthEffectDisabled]);
  }

  [(PREditingSceneViewController *)self _updateComplicationLayout];
  v39.receiver = self;
  v39.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v39 scene:v10 didUpdateClientSettingsWithDiff:v11 oldClientSettings:v13 transitionContext:v12];

  v33 = v10;
  _UISceneSettingsDiffActionPerformChangesWithTransitionContext();

  v34 = [v33 clientSettings];
  v35 = [v34 pr_areContentsCoveredByModalPresentation];

  [(PREditingSceneViewController *)self setClientPresentingModalViewController:v35];
  if ([v11 pui_inspect:20814])
  {
    v36 = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v37 = [v14 pr_injectedEditingClientSettings];
      [v36 editingSceneViewController:self injectedEditingClientSettingsDidChange:v37];
    }
  }
}

void __106__PREditingSceneViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSettings];
  v3 = [v2 pr_vibrancyConfiguration];

  [*(a1 + 40) setVibrancyConfiguration:v3];
}

- (void)complicationContainerViewController:(id)a3 didUpdateModelContentForLocation:(int64_t)a4
{
  [(PREditingSceneViewController *)self _updateSceneSettingsForDepthEffectDisallowed:a3];
  [(PREditingSceneViewController *)self _updateSceneSettingsForConfiguredWidgets];

  [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
}

- (void)complicationContainerViewControllerDidTapAdd:(id)a3 forLocation:(int64_t)a4
{
  if ([(PREditingSceneViewController *)self _shouldAllowGalleryPresentationForLocation:a4])
  {
    if (a4 == 1)
    {

      [(PREditingSceneViewController *)self _presentSidebarComplicationGallery];
    }

    else if (!a4)
    {

      [(PREditingSceneViewController *)self _presentComplicationGallery];
    }
  }

  else
  {
    v6 = PRLogEditing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Gallery presentation disallowed, ignoring tap", v7, 2u);
    }
  }
}

- (void)complicationContainerViewController:(id)a3 isAttemptingDragToAddComplication:(id)a4
{
  v8 = a4;
  v5 = [(PRComplicationDescriptor *)v8 widget];
  widgetBeingAdded = v8;
  if (!v5)
  {
    widgetBeingAdded = self->_widgetBeingAdded;
  }

  v7 = widgetBeingAdded;

  if (![(PREditingSceneViewController *)self _canAddComplicationDescriptor:v7 forLocation:[(PREditingSceneViewController *)self focusedElement]== 3])
  {
    [(PREditingSceneViewController *)self _presentFullAlertForComplication:v7];
  }
}

- (void)complicationContainerViewController:(id)a3 isDraggingWidgetGridWithProgress:(double)a4
{
  scene = self->super._scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__PREditingSceneViewController_complicationContainerViewController_isDraggingWidgetGridWithProgress___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
  v6 = a4 >= 0.5;
  [(FBScene *)scene updateSettingsWithBlock:v5];
}

- (void)complicationContainerViewController:(id)a3 didUpdateWidgetGridPositionToBottom:(BOOL)a4
{
  self->_widgetGridDragInProgress = 0;
  self->_complicationLayoutIsUserConfigured = 1;
  [(PREditingSceneViewController *)self setComplicationsUseBottomLayout:a4];
}

- (BOOL)complicationContainerViewControllerAllowsWidgetGridDragInteraction:(id)a3
{
  v4 = [(PREditingSceneViewController *)self presentedComplicationsGallery];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];
      v5 = v7 != 0;
    }
  }

  v8 = PUIFeatureEnabled();
  result = 0;
  if (v8)
  {
    if (!v5)
    {
      return self->_complicationRowMode == 0;
    }
  }

  return result;
}

- (void)complicationGalleryViewControllerDidFinish:(id)a3
{
  v4 = [a3 navigationController];
  v5 = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (v4 == v5)
  {
    [(PREditingSceneViewController *)self setPresentedComplicationsGallery:0];
    [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)complicationGalleryViewController:(id)a3 didBeginDraggingComplication:(id)a4
{
  v5 = a4;
  [(PREditingSceneViewController *)self setDraggingComplication:1];
  widgetBeingAdded = self->_widgetBeingAdded;
  self->_widgetBeingAdded = v5;
}

- (void)inlineComplicationGalleryViewController:(id)a3 didSelectComplication:(id)a4
{
  v17 = a4;
  [(PREditingSceneViewController *)self setSelectedInlineComplication:v17];
  v5 = [v17 suggestedComplication];

  if (v5)
  {
    v6 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    v7 = [v17 suggestedComplication];
    v8 = [v6 objectForKey:v7];
    v9 = v8;
    v10 = &unk_1F1C6B9B0;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    v13 = MEMORY[0x1E696AD98];
    v14 = [v11 intValue];

    v15 = [v13 numberWithInt:(v14 + 1)];
    v16 = [v17 suggestedComplication];
    [v12 setObject:v15 forKey:v16];
  }
}

- (void)inlineComplicationGalleryViewControllerDidFinish:(id)a3
{
  v4 = [a3 navigationController];
  v5 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (v4 == v5)
  {
    [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:0];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4
{
  v37 = a3;
  v6 = a4;
  if (self->_presentedComplicationWidgetConfigurationViewController == v37)
  {
    v18 = [(PRComplicationDescriptor *)self->_widgetBeingConfigured widget];
    v15 = [v18 widgetByReplacingIntent:v6];

    v14 = [(PRComplicationDescriptor *)self->_widgetBeingConfigured copy];
    [v14 setWidget:v15];
    if (self->_widgetBeingConfigured == self->_selectedInlineComplication)
    {
      [(PREditingSceneViewController *)self setSelectedInlineComplication:v14];
    }

    else
    {
      v35 = v15;
      v36 = v6;
      v19 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      v20 = [v19 widgetGridViewController];
      v21 = [v20 model];

      v22 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      v23 = [v22 sidebarWidgetGridViewController];
      v24 = [v23 model];

      v25 = [v21 complicationDescriptors];
      v26 = [v24 complicationDescriptors];
      v27 = [v25 indexOfObject:self->_widgetBeingConfigured];
      v28 = [v26 indexOfObject:self->_widgetBeingConfigured];
      v29 = v21;
      if (v27 != 0x7FFFFFFFFFFFFFFFLL || (v29 = v24, v28 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v30 = [(PRComplicationDescriptor *)self->_widgetBeingConfigured uniqueIdentifier];
        [v29 updateIntent:v36 forWidgetWithIdentifier:v30];
      }

      v15 = v35;
      v6 = v36;
    }

    widgetBeingConfigured = self->_widgetBeingConfigured;
    self->_widgetBeingConfigured = 0;

    presentedComplicationWidgetConfigurationViewController = self->_presentedComplicationWidgetConfigurationViewController;
    self->_presentedComplicationWidgetConfigurationViewController = 0;

    [(WFWidgetConfigurationViewController *)v37 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_16;
  }

  if (self->_presentedControlWidgetConfigurationViewController != v37)
  {
    goto LABEL_17;
  }

  v7 = [(PREditingSceneViewController *)self quickActionIntentEditPosition];
  v8 = [(PREditingSceneViewController *)self controlIntentBeingConfigured];
  v9 = objc_alloc(MEMORY[0x1E6994260]);
  v10 = [v8 identity];
  v11 = [v10 extensionIdentity];
  v12 = [v8 identity];
  v13 = [v12 kind];
  v14 = [v9 initWithExtensionIdentity:v11 kind:v13 intent:v6];

  v15 = v8;
  v16 = [objc_alloc(MEMORY[0x1E6997278]) initWithIdentity:v14 type:objc_msgSend(v8 size:{"type"), objc_msgSend(v8, "size")}];
  if (v7 == 2)
  {
    v17 = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [v17 setTrailingControl:v16];
    goto LABEL_14;
  }

  if (v7 == 1)
  {
    v17 = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [v17 setLeadingControl:v16];
LABEL_14:
  }

  controlIntentBeingConfigured = self->_controlIntentBeingConfigured;
  self->_controlIntentBeingConfigured = 0;

  presentedControlWidgetConfigurationViewController = self->_presentedControlWidgetConfigurationViewController;
  self->_presentedControlWidgetConfigurationViewController = 0;

  self->_quickActionIntentEditPosition = 0;
  [(WFWidgetConfigurationViewController *)v37 dismissViewControllerAnimated:1 completion:0];

LABEL_16:
LABEL_17:
}

- (void)quickActionEditingViewController:(id)a3 didTapAddForPosition:(int64_t)a4
{
  v6 = a3;
  v9 = v6;
  if (a4 == 2)
  {
    v7 = [v6 trailingControl];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v7 = [v6 leadingControl];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  [(PREditingSceneViewController *)self setSelectedQuickActionPosition:a4];
  [(PREditingSceneViewController *)self _presentControlsGalleryWithSelectedControl:v8];
}

- (void)quickActionEditingViewController:(id)a3 didSetControl:(id)a4 forPosition:(int64_t)a5
{
  v10 = a4;
  v7 = [PRQuickActionControlConfiguration alloc];
  if (v10)
  {
    v8 = [v10 identity];
    v9 = -[PRQuickActionControlConfiguration initWithControlIdentity:type:](v7, "initWithControlIdentity:type:", v8, [v10 type]);
  }

  else
  {
    v9 = [(PRQuickActionControlConfiguration *)v7 initWithCategory:0];
  }

  [(PREditingSceneViewController *)self _updateQuickActionsPosterConfigurationForPosition:a5 withControlConfiguration:v9];
}

- (void)controlsGalleryViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 control];
  if (!v8)
  {
    v17 = [(PREditingSceneViewController *)self selectedQuickActionPosition];
    if (v17)
    {
      if (v17 == 2)
      {
        v18 = [(PREditingSceneViewController *)self quickActionEditingViewController];
        [v18 setTrailingControl:v9];
      }

      else
      {
        if (v17 != 1)
        {
LABEL_12:
          v19 = [(PREditingSceneViewController *)self selectedQuickActionPosition];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __88__PREditingSceneViewController_controlsGalleryViewController_didFinishWithResult_error___block_invoke;
          v20[3] = &unk_1E7845788;
          v21 = v7;
          v22 = self;
          v23 = v9;
          v24 = v19;
          [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1 withCompletion:v20];

          v10 = v21;
          goto LABEL_13;
        }

        v18 = [(PREditingSceneViewController *)self quickActionEditingViewController];
        [v18 setLeadingControl:v9];
      }
    }

    else
    {
      v18 = PRLogEditing();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v18, OS_LOG_TYPE_DEFAULT, "Do nothing since we finished with control from no position. But how did we get here?", buf, 2u);
      }
    }

    goto LABEL_12;
  }

  v10 = PRLogEditing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(PREditingSceneViewController *)v8 controlsGalleryViewController:v10 didFinishWithResult:v11 error:v12, v13, v14, v15, v16];
  }

LABEL_13:
}

uint64_t __88__PREditingSceneViewController_controlsGalleryViewController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) promptsForUserConfiguration];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _presentIntentConfigurationForQuickActionControl:v4 withPosition:v5];
  }

  return result;
}

- (void)forwardAppearanceNotificationName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRLogEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v4;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Forwarding appearance notification to extension: %{public}@", &v13, 0xCu);
  }

  v6 = [(FBScene *)self->super._scene isActive];
  v7 = PRLogEditing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Scene active: %{public}@", &v13, 0xCu);
  }

  if (v6)
  {
    v9 = [[PREditingForwardExtensionAppearanceNotificationAction alloc] initWithNotificationName:v4];
    scene = self->super._scene;
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(FBScene *)scene sendActions:v11];
  }

  v12 = [v4 isEqualToString:*MEMORY[0x1E696A2D8]];
  if ((v12 & 1) != 0 || [v4 isEqualToString:*MEMORY[0x1E696A2C0]])
  {
    [(PREditingSceneViewController *)self setHostApplicationHasResignedActive:v12];
  }
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = v7;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = [MEMORY[0x1E69DC938] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = [v12 presentedViewController];
  if (v14 == 1)
  {
    v16 = objc_opt_class();
    v17 = v15;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
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

    v22 = v18;

    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_22:
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __106__PREditingSceneViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke;
    v26[3] = &unk_1E7844110;
    v27 = v12;
    v28 = self;
    [v8 animateAlongsideTransition:v26 completion:0];

    goto LABEL_23;
  }

  v19 = objc_opt_class();
  v20 = v15;
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;

  if (v23)
  {
    v24 = [v23 topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
}

void __106__PREditingSceneViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [*(a1 + 32) _detentValues];
  v5 = objc_opt_class();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__PREditingSceneViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke_2;
  v13[3] = &unk_1E78457B0;
  v13[4] = &v14;
  [v4 bs_enumerateObjectsOfClass:v5 usingBlock:v13];

  v6 = v15[3];
  v7 = [*(a1 + 40) view];
  [v7 safeAreaInsets];
  v9 = v8;

  v10 = [*(a1 + 40) complicationContainerViewControllers];
  v11 = [v10 anyObject];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__PREditingSceneViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke_3;
  v12[3] = &unk_1E7843688;
  v12[4] = *(a1 + 40);
  [v11 updateForComplicationGalleryHeight:v12 completion:v6 + v9];

  _Block_object_dispose(&v14, 8);
}

void __106__PREditingSceneViewController_presentationController_willPresentWithAdaptiveStyle_transitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v7 = v3;
  [v3 floatValue];
  if (v4 < v5)
  {
    [v7 floatValue];
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = [a3 presentedViewController];
  v4 = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (v9 == v4)
  {
    [(PREditingSceneViewController *)self setPresentedComplicationsGallery:0];
LABEL_10:
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    goto LABEL_11;
  }

  v5 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (v9 == v5)
  {
    [(PREditingSceneViewController *)self setPresentedSidebarComplicationsGallery:0];
    goto LABEL_10;
  }

  v6 = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (v9 == v6)
  {
    [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:0];
    goto LABEL_10;
  }

  v7 = [(PREditingSceneViewController *)self presentedControlsGallery];

  if (v9 == v7)
  {
    [(PREditingSceneViewController *)self setPresentedControlsGallery:0];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    [(PREditingSceneViewController *)self setSelectedQuickActionPosition:0];
    v8 = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [v8 setGalleryPresented:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 finishWithCurrentConfiguration];
    }
  }

LABEL_11:
  [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(PREditingSceneViewController *)self sidebarComplicationAddGestureView];

  if (v5 == v6)
  {
    v10 = [(PREditingSceneViewController *)self _shouldAllowAddComplicationsTapGestureForLocation:1];
LABEL_6:
    v9 = v10;
    goto LABEL_7;
  }

  v7 = [v4 view];
  v8 = [(PREditingSceneViewController *)self inlineComplicationGestureView];

  if (v7 == v8)
  {
    v10 = [(PREditingSceneViewController *)self _shouldAllowInlineComplicationTapGesture];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t __72__PREditingSceneViewController_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedSidebarComplicationsGallery];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 presentedSidebarComplicationsGallery];
  }

  else
  {
    v7 = [v3 presentedComplicationsGallery];

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [*(a1 + 32) presentedComplicationsGallery];
    v9 = [v8 conformsToProtocol:&unk_1F1CC0A58];

    v10 = *(a1 + 32);
    if (!v9)
    {
      [v10 _updateApplicationWidgetCollectionsForPresentedComplicationGallery];
      goto LABEL_9;
    }

    v4 = [v10 presentedComplicationsGallery];
  }

  v5 = v4;
  if (v4)
  {
    v6 = [*(a1 + 32) addWidgetSheetConfigurationManager];
    [v6 updatePresentedWidgetEditingViewController:v5];
  }

LABEL_9:
  v11 = [*(a1 + 32) quickActionEditingViewController];
  [v11 validateControls];

  v12 = *(a1 + 32);

  return [v12 _validateInlineComplication];
}

- (void)_updateApplicationWidgetCollectionsForPresentedComplicationGallery
{
  v3 = [(PREditingSceneViewController *)self presentedComplicationsGallery];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v7 = v6;

  v8 = [v7 viewControllers];

  v9 = [v8 firstObject];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
  v15 = PRIconGridSizeClassSetForWidgetFamilyMask([v14 allowedWidgetFamilies]);

  v16 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
  v19 = v15;
  v17 = [v16 applicationWidgetCollectionsForEditingViewController:self withAllowedSizeClasses:&v19 allowingNonStackableItems:0];
  v18 = v19;

  [v13 setApplicationWidgetCollections:v17];
}

- (id)addWidgetSheetViewController:(id)a3 detailViewControllerForWidgetCollection:(id)a4
{
  v6 = MEMORY[0x1E69D4080];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v9 layoutForIconLocation:*MEMORY[0x1E69D4158]];
  [v10 iconImageInfo];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [objc_alloc(MEMORY[0x1E69D40A0]) initWithName:@"iconImages" iconImageInfo:{v12, v14, v16, v18}];
  v20 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (v20 == v8)
  {
    v21 = 3074;
  }

  else
  {
    v21 = 3072;
  }

  v22 = [MEMORY[0x1E69DC938] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = (v23 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v25 = [PRComplicationGalleryDetailViewController alloc];
  v26 = [(PREditingSceneViewController *)self listLayoutProvider];
  v27 = [(PREditingSceneViewController *)self iconViewProvider];
  v28 = [(SBHAddWidgetSheetViewControllerBase *)v25 initWithListLayoutProvider:v26 iconViewProvider:v27 allowedWidgets:v21 appCellIconImageCache:256 addWidgetSheetStyle:v19, v24];

  [(SBHAddWidgetSheetViewControllerBase *)v28 setDelegate:self];
  [(PRComplicationGalleryDetailViewController *)v28 setApplicationWidgetCollection:v7];

  [(PRComplicationGalleryDetailViewController *)v28 setShowsCloseButton:0];
  [(PRComplicationGalleryDetailViewController *)v28 setShowsBackgroundView:0];

  return v28;
}

- (id)galleryViewControllerForAddWidgetSheetViewController:(id)a3
{
  v4 = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(PREditingSceneViewController *)self sidebarWidgetSuggestions];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698AEA0]];
    [v5 bs_safeAddObject:v7];

    v8 = [(PREditingSceneViewController *)self sidebarWidgetSuggestions];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698AE90]];
    [v5 bs_safeAddObject:v9];

    v10 = [(PREditingSceneViewController *)self sidebarWidgetSuggestions];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E698AE98]];
    [v5 bs_safeAddObject:v11];

    v12 = [v5 copy];
  }

  else
  {
    v12 = [(PREditingSceneViewController *)self graphicComplicationSuggestionSets];
  }

  v13 = [PRWidgetSuggestionsViewController alloc];
  v14 = [(PREditingSceneViewController *)self listLayoutProvider];
  v15 = [(PREditingSceneViewController *)self iconViewProvider];
  v16 = [(PRWidgetSuggestionsViewController *)v13 initWithSuggestionSets:v12 listLayoutProvider:v14 iconViewProvider:v15 widgetDragHandler:self usingSidebarLayout:v4 != 0];

  [(PRWidgetSuggestionsViewController *)v16 setDelegate:self];

  return v16;
}

- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(PREditingSceneViewController *)self widgetIconForDescriptor:v10 sizeClass:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4
{
  v5 = MEMORY[0x1E69D4118];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E69D4088] pr_widgetDomain];
  v9 = [v7 initWithCHSWidgetDescriptor:v6 inDomain:v8];

  v10 = PRIconGridSizeClassForWidgetFamily(a4);
  [v9 setGridSizeClass:v10];

  return v9;
}

- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4
{
  v5 = MEMORY[0x1E69D4118];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E69D4088] pr_widgetDomain];
  v9 = [v7 initWithCHSWidgetDescriptors:v6 inDomain:v8];

  v10 = PRIconGridSizeClassForWidgetFamily(a4);
  [v9 setGridSizeClass:v10];

  return v9;
}

- (UIView)recycledViewsContainer
{
  recycledViewsContainerView = self->_recycledViewsContainerView;
  if (!recycledViewsContainerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_recycledViewsContainerView;
    self->_recycledViewsContainerView = v4;

    [(UIView *)self->_recycledViewsContainerView setHidden:1];
    [(UIView *)self->_recycledViewsContainerView setAlpha:0.0];
    [(UIView *)self->_recycledViewsContainerView setUserInteractionEnabled:0];
    v6 = [(PREditingSceneViewController *)self view];
    [v6 addSubview:self->_recycledViewsContainerView];

    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(PREditingSceneViewController *)self iconModel];
  v7 = [v6 applicationIconForBundleIdentifier:v5];

  v8 = [v7 application];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 vendorName];
  }

  else
  {
    v9 = 0;
  }

  if (!-[__CFString length](v9, "length") && (objc_opt_respondsToSelector() & 1) != 0 && [v8 isAppleApplication])
  {

    v9 = @"Apple";
  }

  return v9;
}

- (id)addWidgetSheetConfigurationManager:(id)a3 containerBundleIdentiferForDescriptor:(id)a4
{
  v4 = a4;
  v5 = [v4 extensionIdentity];
  v6 = [v5 containerBundleIdentifier];

  v7 = [v4 extensionIdentity];

  v8 = [v7 extensionBundleIdentifier];

  v9 = [PRWidgetGridModel effectiveContainerBundleIdentifierForContainerBundleIdentifier:v6 extensionBundleIdentifier:v8];

  return v9;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PREditingSceneViewController_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E7843070;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __77__PREditingSceneViewController_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1208));
  LODWORD(v2) = [v2 isEqual:WeakRetained];

  if (v2)
  {
    v4 = [*(a1 + 40) quickActionEditingViewController];
    [v4 validateControls];

    v5 = *(a1 + 40);

    [v5 _validateInlineComplication];
  }
}

- (CGRect)timeReticleFrame
{
  x = self->_timeReticleFrame.origin.x;
  y = self->_timeReticleFrame.origin.y;
  width = self->_timeReticleFrame.size.width;
  height = self->_timeReticleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PREditingSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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

- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);

  return WeakRetained;
}

- (PREditingSceneViewControllerTopButtonLayout)lastValidDelegateTopButtonLayout
{
  size = self[26].leadingTopButtonFrame.size;
  retstr->leadingTopButtonFrame.origin = self[26].leadingTopButtonFrame.origin;
  retstr->leadingTopButtonFrame.size = size;
  v4 = self[26].trailingTopButtonFrame.size;
  retstr->trailingTopButtonFrame.origin = self[26].trailingTopButtonFrame.origin;
  retstr->trailingTopButtonFrame.size = v4;
  return self;
}

- (void)setLastValidDelegateTopButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)a3
{
  size = a3->trailingTopButtonFrame.size;
  origin = a3->leadingTopButtonFrame.origin;
  v4 = a3->leadingTopButtonFrame.size;
  self->_lastValidDelegateTopButtonLayout.trailingTopButtonFrame.origin = a3->trailingTopButtonFrame.origin;
  self->_lastValidDelegateTopButtonLayout.trailingTopButtonFrame.size = size;
  self->_lastValidDelegateTopButtonLayout.leadingTopButtonFrame.origin = origin;
  self->_lastValidDelegateTopButtonLayout.leadingTopButtonFrame.size = v4;
}

void __51__PREditingSceneViewController__dismissWithAction___block_invoke_2_383_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  v4 = 2112;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_ERROR, "Error saving updated configuration %@ with properties %@: %@", v3, 0x20u);
}

@end