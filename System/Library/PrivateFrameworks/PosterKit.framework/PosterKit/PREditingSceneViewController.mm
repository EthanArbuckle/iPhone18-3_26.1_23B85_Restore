@interface PREditingSceneViewController
+ (NSHashTable)overrideObservingViewControllers;
+ (id)_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)_areComplicationsDisallowed;
- (BOOL)_canAddComplicationDescriptor:(id)descriptor forLocation:(int64_t)location;
- (BOOL)_hasGraphicComplications;
- (BOOL)_hasSidebarComplications;
- (BOOL)_intentHasConfigurableAttributes:(id)attributes;
- (BOOL)_posterUserInfo:(id)info containsUserChangesFromPrevious:(id)previous;
- (BOOL)_presentIntentConfigurationForComplicationDescriptorIfPossible:(id)possible;
- (BOOL)_shouldAllowAddComplicationsTapGestureForLocation:(int64_t)location;
- (BOOL)_shouldAllowInlineComplicationTapGesture;
- (BOOL)_shouldDepthEffectBeDisallowed;
- (BOOL)complicationContainerViewControllerAllowsWidgetGridDragInteraction:(id)interaction;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)horizontalTitleBoundingRect;
- (CGRect)leadingTopButtonFrame;
- (CGRect)salientContentRectangle;
- (CGRect)timeReticleFrame;
- (CGRect)trailingTopButtonFrame;
- (CGRect)verticalTitleBoundingRect;
- (PREditingSceneViewController)initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties additionalInfo:(id)info;
- (PREditingSceneViewControllerDelegate)delegate;
- (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout;
- (PREditingSceneViewControllerTopButtonLayout)lastValidDelegateTopButtonLayout;
- (SBHAddWidgetSheetConfigurationManager)addWidgetSheetConfigurationManager;
- (UIView)recycledViewsContainer;
- (id)_configureNavigationControllerForGalleryViewController:(id)controller;
- (id)_controlsGalleryConfiguration;
- (id)_controlsGallerySuggestedControls;
- (id)_descriptorForControl:(id)control;
- (id)_presentIntentConfigurationViewControllerWithIntent:(id)intent descriptor:(id)descriptor family:(int64_t)family fromViewController:(id)controller;
- (id)_presentationBackgroundColor;
- (id)_suggestedControlIdentities;
- (id)_windowFromUserInfo:(id)info;
- (id)addComplicationGestureViewForElement:(unint64_t)element tapAction:(SEL)action initiallyAllowed:(BOOL)allowed;
- (id)addWidgetSheetConfigurationManager:(id)manager containerBundleIdentiferForDescriptor:(id)descriptor;
- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier;
- (id)addWidgetSheetViewController:(id)controller detailViewControllerForWidgetCollection:(id)collection;
- (id)galleryViewControllerForAddWidgetSheetViewController:(id)controller;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class;
- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class;
- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class;
- (unint64_t)_modalVariant;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addWidgetIconView:(id)view;
- (void)_complicationsSceneCreated:(id)created;
- (void)_configureInitialSceneSettings:(id)settings;
- (void)_configureUsingPath:(id)path;
- (void)_dismissAnyPresentedComplicationGalleryAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_dismissWithAction:(int64_t)action;
- (void)_finalize;
- (void)_insertModularComplication:(id)complication location:(int64_t)location animated:(BOOL)animated;
- (void)_performWidgetDescriptorDiscovery;
- (void)_prefetchComplicationSuggestions;
- (void)_presentComplicationGallery;
- (void)_presentControlsGalleryWithSelectedControl:(id)control;
- (void)_presentFullAlertForComplication:(id)complication;
- (void)_presentInlineComplicationGallery;
- (void)_presentIntentConfigurationForComplicationDescriptor:(id)descriptor;
- (void)_presentIntentConfigurationForQuickActionControl:(id)control withPosition:(int64_t)position;
- (void)_presentSidebarComplicationGallery;
- (void)_presentWidgetEducationAlertIfNeeded;
- (void)_quickActionsSceneCreated:(id)created;
- (void)_sceneContentReadinessDidChange;
- (void)_setUpDateOverriding;
- (void)_setUpRemotePresentationForContextId:(unsigned int)id layerRenderId:(unint64_t)renderId presentedScreenRect:(CGRect)rect;
- (void)_teardown;
- (void)_unregisterComplicationContainerViewControllerDelegates;
- (void)_updateAddComplicationsTapGestureAllowed;
- (void)_updateApplicationWidgetCollectionsForPresentedComplicationGallery;
- (void)_updateComplicationContainerVisibility;
- (void)_updateComplicationLayout;
- (void)_updateComplicationLayoutIfPermitted;
- (void)_updateComplicationsVibrancyConfiguration;
- (void)_updateInlineComplicationVisibility;
- (void)_updateLocalControlsHiddenWithAnimationSettings:(id)settings;
- (void)_updatePresentationDismissalGestureView;
- (void)_updateQuickActionsPosterConfigurationForPosition:(int64_t)position withControlConfiguration:(id)configuration;
- (void)_updateSceneSettings:(id)settings transitionContext:(id)context;
- (void)_updateSceneSettingsForConfiguredWidgets;
- (void)_updateSceneSettingsForDepthEffectDisallowed;
- (void)_updateSceneSettingsForPosterCoveredByModalPresentation;
- (void)_validateInlineComplication;
- (void)addLongSaveOperationIndicator;
- (void)addObserver:(id)observer;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)complicationContainerViewController:(id)controller didUpdateModelContentForLocation:(int64_t)location;
- (void)complicationContainerViewController:(id)controller didUpdateWidgetGridPositionToBottom:(BOOL)bottom;
- (void)complicationContainerViewController:(id)controller isAttemptingDragToAddComplication:(id)complication;
- (void)complicationContainerViewController:(id)controller isDraggingWidgetGridWithProgress:(double)progress;
- (void)complicationContainerViewControllerDidTapAdd:(id)add forLocation:(int64_t)location;
- (void)complicationGalleryViewController:(id)controller didBeginDraggingComplication:(id)complication;
- (void)complicationGalleryViewControllerDidFinish:(id)finish;
- (void)controlsGalleryViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)dealloc;
- (void)forwardAppearanceNotificationName:(id)name;
- (void)inlineComplicationGalleryViewController:(id)controller didSelectComplication:(id)complication;
- (void)inlineComplicationGalleryViewControllerDidFinish:(id)finish;
- (void)inlineComplicationGestureViewTapped:(id)tapped;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentedViewControllerDismissalDidEnd:(id)end;
- (void)presentedViewControllerDismissalWillBegin:(id)begin;
- (void)presentedViewControllerPresentationDidBegin:(id)begin;
- (void)quickActionEditingViewController:(id)controller didSetControl:(id)control forPosition:(int64_t)position;
- (void)quickActionEditingViewController:(id)controller didTapAddForPosition:(int64_t)position;
- (void)removeLongSaveOperationIndicator;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)setAcceptButtonType:(int64_t)type;
- (void)setAllowsTransparentContent:(BOOL)content;
- (void)setAlternateDateEnabled:(BOOL)enabled;
- (void)setClientPresentingModalViewController:(BOOL)controller;
- (void)setComplicationRowMode:(unint64_t)mode;
- (void)setComplicationsUseBottomLayout:(BOOL)layout animated:(BOOL)animated;
- (void)setContentHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setContentHidden:(BOOL)hidden animationSettings:(id)settings completion:(id)completion;
- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setControlsHidden:(BOOL)hidden animationSettings:(id)settings;
- (void)setDraggingComplication:(BOOL)complication;
- (void)setFocusedElement:(int64_t)element;
- (void)setHorizontalTitleBoundingRect:(CGRect)rect;
- (void)setLastValidDelegateTopButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout;
- (void)setLeadingTopButtonFrame:(CGRect)frame;
- (void)setOverrideDate:(id)date;
- (void)setPresentedSidebarComplicationsGallery:(id)gallery;
- (void)setSelectedInlineComplication:(id)complication;
- (void)setSelectedQuickActionPosition:(int64_t)position;
- (void)setShowsContentWhenReady:(BOOL)ready;
- (void)setTimeReticleFrame:(CGRect)frame;
- (void)setTitleString:(id)string;
- (void)setTrailingTopButtonFrame:(CGRect)frame;
- (void)setUsesEditingLayout:(BOOL)layout animated:(BOOL)animated;
- (void)setUsesEditingLayout:(BOOL)layout animationSettings:(id)settings;
- (void)setVariant:(int64_t)variant;
- (void)setVerticalTitleBoundingRect:(CGRect)rect;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent;
@end

@implementation PREditingSceneViewController

- (PREditingSceneViewController)initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties additionalInfo:(id)info
{
  contentsCopy = contents;
  self->_usesEditingLayout = 1;
  objc_storeStrong(&self->_path, contents);
  infoCopy = info;
  propertiesCopy = properties;
  optionsCopy = options;
  providerCopy = provider;
  v18 = objc_alloc_init(PREditingSessionModifications);
  modifications = self->_modifications;
  self->_modifications = v18;

  serverIdentity = [contentsCopy serverIdentity];
  type = [serverIdentity type];

  if ((type - 3) > 0xFFFFFFFFFFFFFFFDLL || ([contentsCopy serverIdentity], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isIncomingConfiguration"), v22, v23))
  {
    v24 = 1;
    self->_acceptButtonType = 1;
  }

  else
  {
    v24 = 2;
  }

  self->_destination = v24;
  serverIdentity2 = [contentsCopy serverIdentity];
  role = [serverIdentity2 role];

  posterRole = self->_posterRole;
  self->_posterRole = role;
  v28 = role;

  v29 = [infoCopy objectForKey:@"PRSceneViewControllerAdditionalInfoKeyEditingNewPosterFromConfiguration"];
  self->_editingNewPosterFromConfiguration = [v29 BOOLValue];

  [(PREditingSceneViewController *)self _setUpDateOverriding];
  [PRPosterPathModelObjectCache invalidateModelObjectCacheForPath:contentsCopy];
  v32.receiver = self;
  v32.super_class = PREditingSceneViewController;
  v30 = [(PRSceneViewController *)&v32 initWithProvider:providerCopy contents:contentsCopy configurableOptions:optionsCopy configuredProperties:propertiesCopy additionalInfo:infoCopy];

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
  subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v4 = [subjectMonitorRegistry addMonitor:self subjectMask:1 subscriptionOptions:1];
  objc_storeWeak(&self->_appProtectionSubjectMonitorSubscription, v4);

  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  isAlternateDateEnabled = [titleStyleConfiguration isAlternateDateEnabled];

  [(PREditingSceneViewController *)self setAlternateDateEnabled:isAlternateDateEnabled];
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
    complicationLayout = [configuredProperties complicationLayout];
    inlineComplication = [complicationLayout inlineComplication];
    v19 = [(PRComplicationDescriptor *)v16 initWithPRSWidget:inlineComplication];

    suggestionMetadata = [configuredProperties suggestionMetadata];
    suggestedComplicationsByIdentifier = [suggestionMetadata suggestedComplicationsByIdentifier];

    uniqueIdentifier = [(PRComplicationDescriptor *)v19 uniqueIdentifier];
    v23 = [suggestedComplicationsByIdentifier objectForKey:uniqueIdentifier];
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
      complicationLayout2 = [configuredProperties complicationLayout];
      complications = [complicationLayout2 complications];
      -[PREditingSessionModifications setContainedWidgetsBeforeEdit:](modifications, "setContainedWidgetsBeforeEdit:", [complications count] != 0);
    }

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    complicationContainerViewControllers = self->_complicationContainerViewControllers;
    self->_complicationContainerViewControllers = weakObjectsHashTable;

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    view = [(PREditingSceneViewController *)self view];
    [view addSubview:self->_sidebarComplicationGallerySourceView];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__complicationsSceneCreated_ name:@"PRBComplicationsSceneCreatedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__quickActionsSceneCreated_ name:@"PRBQuickActionsSceneCreatedNotification" object:0];
  }

  view2 = [(PREditingSceneViewController *)self view];
  isContentHidden = [(PREditingSceneViewController *)self isContentHidden];
  v41 = 1.0;
  if (isContentHidden)
  {
    v41 = 0.0;
  }

  [view2 setAlpha:v41];

  v42 = self->_modifications;
  date = [MEMORY[0x1E695DF00] date];
  [(PREditingSessionModifications *)v42 setStartDate:date];

  v44 = PRSharedWidgetExtensionProvider();
  controlExtensionProvider = self->_controlExtensionProvider;
  self->_controlExtensionProvider = v44;

  complicationLayout3 = [configuredProperties complicationLayout];
  complicationsUseBottomLayout = [complicationLayout3 complicationsUseBottomLayout];

  [(PREditingSceneViewController *)self setComplicationsUseBottomLayout:complicationsUseBottomLayout];
  self->_complicationLayoutIsUserConfigured = complicationsUseBottomLayout;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 viewWillAppear:appear];
  v3 = PRLogEditing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController will appear", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v6 viewDidAppear:appear];
  v4 = PRLogEditing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController did appear", v5, 2u);
  }

  [(PREditingSceneViewController *)self _presentWidgetEducationAlertIfNeeded];
  [(PREditingSceneViewController *)self _performWidgetDescriptorDiscovery];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 viewWillDisappear:disappear];
  v3 = PRLogEditing();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "PREditingSceneViewController will disappear", v4, 2u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v5 viewDidDisappear:disappear];
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
  view = [(PREditingSceneViewController *)self view];
  [view bounds];
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
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v22 = v14;
  v23 = v16;
  v24 = v18;
  v25 = v20;
  if (userInterfaceLayoutDirection == 1)
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

- (id)addComplicationGestureViewForElement:(unint64_t)element tapAction:(SEL)action initiallyAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  layer = [v9 layer];
  [layer setHitTestsAsOpaque:1];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:action];
  [v11 setDelegate:self];
  [v9 addGestureRecognizer:v11];
  view = [(PREditingSceneViewController *)self view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  [(PREditorElementLayoutController *)v21 frameForElements:element variant:2 withBoundingRect:v14, v16, v18, v20];
  [v9 setFrame:?];
  [v9 setHidden:!allowedCopy];
  view2 = [(PREditingSceneViewController *)self view];
  [view2 addSubview:v9];

  return v9;
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(PREditingSceneViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = PREditingSceneViewController;
  changeCopy = change;
  [(PREditingSceneViewController *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PREditingSceneViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    scene = self->super._scene;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PREditingSceneViewController_traitCollectionDidChange___block_invoke;
    v9[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v9[4] = userInterfaceStyle;
    [(FBScene *)scene updateSettingsWithBlock:v9];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PREditingSceneViewController;
  coordinatorCopy = coordinator;
  [(PRSceneViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__PREditingSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E78442B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

uint64_t __83__PREditingSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateComplicationContainerVisibility];
  v2 = *(a1 + 32);

  return [v2 _updateSceneSettingsForDepthEffectDisallowed];
}

- (void)_validateInlineComplication
{
  widgetDescriptor = [(PRComplicationDescriptor *)self->_selectedInlineComplication widgetDescriptor];
  extensionIdentity = [widgetDescriptor extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  v5 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:containerBundleIdentifier];
  if (([v5 isLocked] & 1) != 0 || objc_msgSend(v5, "isHidden"))
  {
    [(PREditingSceneViewController *)self setSelectedInlineComplication:0];
  }

  if (![(PRComplicationDescriptor *)self->_selectedInlineComplication hasMatchingDescriptor])
  {
    [(PREditingSceneViewController *)self setSelectedInlineComplication:0];
  }
}

- (void)setSelectedInlineComplication:(id)complication
{
  v19 = *MEMORY[0x1E69E9840];
  complicationCopy = complication;
  if (![(PRComplicationDescriptor *)complicationCopy hasMatchingDescriptor])
  {

    complicationCopy = 0;
  }

  if (complicationCopy != self->_selectedInlineComplication)
  {
    objc_storeStrong(&self->_selectedInlineComplication, complicationCopy);
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

          [*(*(&v14 + 1) + 8 * v9++) setInlineComplicationDescriptor:complicationCopy];
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

- (void)setAlternateDateEnabled:(BOOL)enabled
{
  if (self->_alternateDateEnabled != enabled)
  {
    v8 = v3;
    v9 = v4;
    self->_alternateDateEnabled = enabled;
    scene = self->super._scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PREditingSceneViewController_setAlternateDateEnabled___block_invoke;
    v6[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
    enabledCopy = enabled;
    [(FBScene *)scene updateSettingsWithBlock:v6];
  }
}

- (void)setControlsHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  if (animated)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PREditingSceneViewController *)self setControlsHidden:hiddenCopy animationSettings:v6];
}

- (void)setControlsHidden:(BOOL)hidden animationSettings:(id)settings
{
  hiddenCopy = hidden;
  settingsCopy = settings;
  if (self->_controlsHidden != hiddenCopy)
  {
    self->_controlsHidden = hiddenCopy;
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    [(PREditingSceneViewController *)self _updateLocalControlsHiddenWithAnimationSettings:settingsCopy];
    viewIfLoaded = [(PREditingSceneViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    scene = self->super._scene;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PREditingSceneViewController_setControlsHidden_animationSettings___block_invoke;
    v12[3] = &unk_1E78454C0;
    v15 = hiddenCopy;
    v12[4] = self;
    v13 = settingsCopy;
    v14 = windowScene;
    v11 = windowScene;
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

- (void)setUsesEditingLayout:(BOOL)layout animated:(BOOL)animated
{
  layoutCopy = layout;
  if (animated)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PREditingSceneViewController *)self setUsesEditingLayout:layoutCopy animationSettings:v6];
}

- (void)setUsesEditingLayout:(BOOL)layout animationSettings:(id)settings
{
  layoutCopy = layout;
  v26 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (self->_usesEditingLayout != layoutCopy)
  {
    self->_usesEditingLayout = layoutCopy;
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

          [*(*(&v21 + 1) + 8 * v11++) setUsesEditingLayout:layoutCopy animationSettings:settingsCopy];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    viewIfLoaded = [(PREditingSceneViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    scene = self->super._scene;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PREditingSceneViewController_setUsesEditingLayout_animationSettings___block_invoke;
    v17[3] = &unk_1E78454C0;
    v20 = layoutCopy;
    v17[4] = self;
    v18 = settingsCopy;
    v19 = windowScene;
    v16 = windowScene;
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

- (void)setShowsContentWhenReady:(BOOL)ready
{
  if (self->_showsContentWhenReady != ready)
  {
    readyCopy = ready;
    self->_showsContentWhenReady = ready;
    [(PRSceneViewController *)self _updatePresentationBackgroundColor];
    if (readyCopy)
    {
      v5 = [(PRSceneViewController *)self isSceneContentReady]^ 1;

      [(PREditingSceneViewController *)self setContentHidden:v5 animated:0 completion:0];
    }
  }
}

- (void)setAllowsTransparentContent:(BOOL)content
{
  if (self->_allowsTransparentContent != content)
  {
    self->_allowsTransparentContent = content;
    [(PRSceneViewController *)self _updatePresentationBackgroundColor];
  }
}

- (void)setContentHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  if (animatedCopy)
  {
    v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v8 = 0;
  }

  [(PREditingSceneViewController *)self setContentHidden:hiddenCopy animationSettings:v8 completion:completionCopy];
}

- (void)setContentHidden:(BOOL)hidden animationSettings:(id)settings completion:(id)completion
{
  if (self->_contentHidden != hidden)
  {
    v9 = v5;
    v10 = v6;
    self->_contentHidden = hidden;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__PREditingSceneViewController_setContentHidden_animationSettings_completion___block_invoke;
    v7[3] = &unk_1E78437A0;
    v7[4] = self;
    hiddenCopy = hidden;
    [MEMORY[0x1E698E7D0] animateWithSettings:settings actions:v7 completion:completion];
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

- (void)setSelectedQuickActionPosition:(int64_t)position
{
  if (self->_selectedQuickActionPosition != position)
  {
    v20 = v3;
    v21 = v4;
    self->_selectedQuickActionPosition = position;
    viewIfLoaded = [(PREditingSceneViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    v10 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
    _shouldDepthEffectBeDisallowed = [(PREditingSceneViewController *)self _shouldDepthEffectBeDisallowed];
    scene = self->super._scene;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PREditingSceneViewController_setSelectedQuickActionPosition___block_invoke;
    v15[3] = &unk_1E78454E8;
    v19 = _shouldDepthEffectBeDisallowed;
    v15[4] = self;
    v16 = v10;
    v17 = windowScene;
    positionCopy = position;
    v13 = windowScene;
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

- (void)setAcceptButtonType:(int64_t)type
{
  if (self->_acceptButtonType != type)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_acceptButtonType = type;
    scene = self->super._scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__PREditingSceneViewController_setAcceptButtonType___block_invoke;
    v6[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v6[4] = type;
    [(FBScene *)scene updateSettingsWithBlock:v6];
  }
}

- (void)setVariant:(int64_t)variant
{
  if (self->_variant != variant)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_variant = variant;
    scene = self->super._scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__PREditingSceneViewController_setVariant___block_invoke;
    v6[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v6[4] = variant;
    [(FBScene *)scene updateSettingsWithBlock:v6];
  }
}

- (void)setLeadingTopButtonFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_leadingTopButtonFrame = &self->_leadingTopButtonFrame;
  if (!CGRectEqualToRect(frame, self->_leadingTopButtonFrame))
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

- (void)setTrailingTopButtonFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_trailingTopButtonFrame = &self->_trailingTopButtonFrame;
  if (!CGRectEqualToRect(frame, self->_trailingTopButtonFrame))
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

- (void)setHorizontalTitleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_horizontalTitleBoundingRect = &self->_horizontalTitleBoundingRect;
  if (!CGRectEqualToRect(rect, self->_horizontalTitleBoundingRect))
  {
    p_horizontalTitleBoundingRect->origin.x = x;
    p_horizontalTitleBoundingRect->origin.y = y;
    p_horizontalTitleBoundingRect->size.width = width;
    p_horizontalTitleBoundingRect->size.height = height;
    isActive = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (isActive)
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

- (void)setVerticalTitleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_verticalTitleBoundingRect = &self->_verticalTitleBoundingRect;
  if (!CGRectEqualToRect(rect, self->_verticalTitleBoundingRect))
  {
    p_verticalTitleBoundingRect->origin.x = x;
    p_verticalTitleBoundingRect->origin.y = y;
    p_verticalTitleBoundingRect->size.width = width;
    p_verticalTitleBoundingRect->size.height = height;
    isActive = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (isActive)
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

- (void)setTitleString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_titleString != stringCopy)
  {
    v6 = [(NSString *)stringCopy copy];
    titleString = self->_titleString;
    self->_titleString = v6;

    isActive = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (isActive)
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

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (self->_overrideDate != dateCopy)
  {
    v6 = [(NSDate *)dateCopy copy];
    overrideDate = self->_overrideDate;
    self->_overrideDate = v6;

    isActive = [(FBScene *)self->super._scene isActive];
    scene = self->super._scene;
    if (isActive)
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)addLongSaveOperationIndicator
{
  v37[6] = *MEMORY[0x1E69E9840];
  if (!self->_saveIndicatorContainerView)
  {
    view = [(PREditingSceneViewController *)self view];
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    [v3 setBackgroundColor:v4];

    layer = [v3 layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979D28]];

    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v6 setColor:whiteColor];

    [v6 startAnimating];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v6];
    [v3 setAlpha:0.0];
    [view addSubview:v3];
    v23 = MEMORY[0x1E696ACD8];
    v33 = v6;
    centerXAnchor = [v6 centerXAnchor];
    centerXAnchor2 = [v3 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v37[0] = v30;
    centerYAnchor = [v6 centerYAnchor];
    centerYAnchor2 = [v3 centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v37[1] = v26;
    topAnchor = [v3 topAnchor];
    topAnchor2 = [view topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[2] = v22;
    bottomAnchor = [v3 bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v9;
    leadingAnchor = [v3 leadingAnchor];
    v29 = view;
    leadingAnchor2 = [view leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[4] = v12;
    trailingAnchor = [v3 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (void)setPresentedSidebarComplicationsGallery:(id)gallery
{
  galleryCopy = gallery;
  if (([(SBHPadAddSheetViewController *)self->_presentedSidebarComplicationsGallery isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_presentedSidebarComplicationsGallery, gallery);
    localKeyboardFocusAssertion = self->_localKeyboardFocusAssertion;
    if (self->_presentedSidebarComplicationsGallery)
    {
      if (localKeyboardFocusAssertion)
      {
        goto LABEL_8;
      }

      _acquireLocalKeyboardFocusAssertion = [(PRSceneViewController *)self _acquireLocalKeyboardFocusAssertion];
    }

    else
    {
      if (!localKeyboardFocusAssertion)
      {
        goto LABEL_8;
      }

      [(BSInvalidatable *)localKeyboardFocusAssertion invalidate];
      _acquireLocalKeyboardFocusAssertion = 0;
    }

    v7 = self->_localKeyboardFocusAssertion;
    self->_localKeyboardFocusAssertion = _acquireLocalKeyboardFocusAssertion;
  }

LABEL_8:
}

- (void)_updateSceneSettings:(id)settings transitionContext:(id)context
{
  v13.receiver = self;
  v13.super_class = PREditingSceneViewController;
  settingsCopy = settings;
  [(PRSceneViewController *)&v13 _updateSceneSettings:settingsCopy transitionContext:context];
  [settingsCopy pr_setEditingModalVariant:{-[PREditingSceneViewController _modalVariant](self, "_modalVariant")}];
  [settingsCopy pr_setEditingVariant:{-[PREditingSceneViewController variant](self, "variant")}];
  [settingsCopy pr_setEditingAcceptButtonType:{-[PREditingSceneViewController acceptButtonType](self, "acceptButtonType")}];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  [(PREditingSceneViewController *)self _topButtonLayout];
  [settingsCopy pr_setLeadingTopButtonFrame:{v9, v10}];
  [settingsCopy pr_setTrailingTopButtonFrame:{v11, v12}];
  [(PREditingSceneViewController *)self horizontalTitleBoundingRect];
  [settingsCopy pr_setHorizontalTitleBoundingRect:?];
  [(PREditingSceneViewController *)self verticalTitleBoundingRect];
  [settingsCopy pr_setVerticalTitleBoundingRect:?];
  titleString = [(PREditingSceneViewController *)self titleString];
  [settingsCopy pr_setTitleString:titleString];
  overrideDate = [(PREditingSceneViewController *)self overrideDate];
  [settingsCopy pr_setOverrideDate:overrideDate];
}

- (id)_presentationBackgroundColor
{
  isSceneContentReady = [(PRSceneViewController *)self isSceneContentReady];
  if ([(PREditingSceneViewController *)self showsContentWhenReady]&& !isSceneContentReady || [(PREditingSceneViewController *)self allowsTransparentContent]&& isSceneContentReady)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PREditingSceneViewController;
    clearColor = [(PRSceneViewController *)&v6 _presentationBackgroundColor];
  }

  return clearColor;
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
    delegate = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      memset(&v36, 0, sizeof(v36));
      v34 = 0;
      v35 = 0;
      if (delegate)
      {
        [delegate topButtonLayoutForEditingSceneViewController:self];
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

- (void)_complicationsSceneCreated:(id)created
{
  createdCopy = created;
  [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1];
  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  complicationLayout = [configuredProperties complicationLayout];
  self->_complicationsUseBottomLayout = [complicationLayout complicationsUseBottomLayout];

  suggestionMetadata = [configuredProperties suggestionMetadata];
  suggestedComplicationsByIdentifier = [suggestionMetadata suggestedComplicationsByIdentifier];

  complicationLayout2 = [configuredProperties complicationLayout];
  complications = [complicationLayout2 complications];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __59__PREditingSceneViewController__complicationsSceneCreated___block_invoke;
  v56[3] = &unk_1E7845530;
  v10 = suggestedComplicationsByIdentifier;
  v57 = v10;
  v11 = [complications bs_map:v56];

  complicationLayout3 = [configuredProperties complicationLayout];
  sidebarComplications = [complicationLayout3 sidebarComplications];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __59__PREditingSceneViewController__complicationsSceneCreated___block_invoke_2;
  v54[3] = &unk_1E7845530;
  v52 = v10;
  v55 = v52;
  v14 = [sidebarComplications bs_map:v54];

  complicationLayout4 = [configuredProperties complicationLayout];
  complicationIconLayout = [complicationLayout4 complicationIconLayout];

  complicationLayout5 = [configuredProperties complicationLayout];
  sidebarComplicationIconLayout = [complicationLayout5 sidebarComplicationIconLayout];

  anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  widgetGridViewController = [anyObject widgetGridViewController];

  if (widgetGridViewController)
  {
    anyObject2 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    widgetGridViewController2 = [anyObject2 widgetGridViewController];
    model = [widgetGridViewController2 model];
    complicationDescriptors = [model complicationDescriptors];
    v25 = v11;
    v11 = complicationDescriptors;

    anyObject3 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    widgetGridViewController3 = [anyObject3 widgetGridViewController];
    model2 = [widgetGridViewController3 model];
    iconLayout = [model2 iconLayout];
    v30 = complicationIconLayout;
    complicationIconLayout = iconLayout;
  }

  v31 = v11;
  anyObject4 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  sidebarWidgetGridViewController = [anyObject4 sidebarWidgetGridViewController];

  if (sidebarWidgetGridViewController)
  {
    anyObject5 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController2 = [anyObject5 sidebarWidgetGridViewController];
    [sidebarWidgetGridViewController2 model];
    v36 = configuredProperties;
    v37 = v31;
    v39 = v38 = complicationIconLayout;
    complicationDescriptors2 = [v39 complicationDescriptors];

    anyObject6 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController3 = [anyObject6 sidebarWidgetGridViewController];
    model3 = [sidebarWidgetGridViewController3 model];
    iconLayout2 = [model3 iconLayout];

    complicationIconLayout = v38;
    v31 = v37;
    configuredProperties = v36;

    sidebarComplicationIconLayout = iconLayout2;
    v14 = complicationDescriptors2;
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

  v47 = [(PRComplicationContainerViewController *)v44 initWithInlineComplicationDescriptor:self->_selectedInlineComplication graphicComplicationDescriptors:v45 graphicComplicationIconLayout:complicationIconLayout sidebarComplicationDescriptors:v46 sidebarIconLayout:sidebarComplicationIconLayout scene:self->super._scene];
  [(PRComplicationContainerViewController *)v47 setDelegate:self];
  [(PRComplicationContainerViewController *)v47 setUsesEditingLayout:[(PREditingSceneViewController *)self usesEditingLayout]];
  vibrancyConfiguration = [(PREditingSceneViewController *)self vibrancyConfiguration];
  [(PRComplicationContainerViewController *)v47 setVibrancyConfiguration:vibrancyConfiguration];

  [(PREditingSceneViewController *)self _updateComplicationLayout];
  [(PRComplicationContainerViewController *)v47 setWidgetsUseBottomLayout:[(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout]];
  [(NSHashTable *)self->_complicationContainerViewControllers addObject:v47];
  userInfo = [createdCopy userInfo];

  v50 = [(PREditingSceneViewController *)self _windowFromUserInfo:userInfo];

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

- (void)_quickActionsSceneCreated:(id)created
{
  createdCopy = created;
  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  v14 = [configuredProperties mutableCopy];

  configuredProperties2 = [(PRSceneViewController *)self configuredProperties];
  quickActionsConfiguration = [configuredProperties2 quickActionsConfiguration];

  if (!quickActionsConfiguration)
  {
    quickActionsConfiguration = [[PRPosterQuickActionsConfiguration alloc] initWithLeadingControl:0 trailingControl:0];
    [v14 setQuickActionsConfiguration:quickActionsConfiguration];
    [(PRSceneViewController *)self setConfiguredProperties:v14];
  }

  v8 = [[PRQuickActionEditingViewController alloc] initWithQuickActionsConfiguration:quickActionsConfiguration];
  view = [(PRQuickActionEditingViewController *)v8 view];
  areControlsHidden = [(PREditingSceneViewController *)self areControlsHidden];
  v11 = 1.0;
  if (areControlsHidden)
  {
    v11 = 0.0;
  }

  [view setAlpha:v11];

  [(PRQuickActionEditingViewController *)v8 setDelegate:self];
  [(PREditingSceneViewController *)self setQuickActionEditingViewController:v8];
  userInfo = [createdCopy userInfo];

  v13 = [(PREditingSceneViewController *)self _windowFromUserInfo:userInfo];

  [v13 setRootViewController:v8];
  [v13 makeKeyAndVisible];
  [(PRQuickActionEditingViewController *)v8 validateControls];
}

- (id)_windowFromUserInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:@"window"];
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v8 = [MEMORY[0x1E698E650] colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v9 = [v3 initWithIdentifier:uUIDString descriptorIdentifier:uUIDString2 extensionBundleIdentifier:&stru_1F1C13D90 localizedDisplayName:&stru_1F1C13D90 modeSemanticType:0 titleFontName:&stru_1F1C13D90 titleColor:v8 subtitleComplication:0 layoutType:2 complications:0 landscapeComplications:0];

  objc_initWeak(&location, self);
  mEMORY[0x1E698AEE8] = [MEMORY[0x1E698AEE8] sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke;
  v17[3] = &unk_1E7845580;
  objc_copyWeak(&v18, &location);
  [mEMORY[0x1E698AEE8] fetchComplicationSetsForFaceGalleryItem:v9 completion:v17];

  mEMORY[0x1E698AEE8]2 = [MEMORY[0x1E698AEE8] sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_199;
  v15[3] = &unk_1E78455A8;
  objc_copyWeak(&v16, &location);
  [mEMORY[0x1E698AEE8]2 fetchInlineComplicationSetForFaceGalleryItem:v9 completion:v15];

  mEMORY[0x1E698AEE8]3 = [MEMORY[0x1E698AEE8] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PREditingSceneViewController__prefetchComplicationSuggestions__block_invoke_202;
  v13[3] = &unk_1E78455D0;
  objc_copyWeak(&v14, &location);
  [mEMORY[0x1E698AEE8]3 fetchLandscapeComplicationSetsForFaceGalleryItem:v9 completion:v13];

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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    _areComplicationsDisallowed = [(PREditingSceneViewController *)self _areComplicationsDisallowed];

    if (_areComplicationsDisallowed)
    {
      return;
    }

    view = [(PREditingSceneViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    v8 = objc_alloc_init(PRComplicationDefaultsDomain);
    currentDevice = v8;
    if ((interfaceOrientation - 3) <= 1)
    {
      if (([(PRComplicationDefaultsDomain *)v8 hasShownLandscapeEducation]& 1) != 0)
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = objc_alloc_init(PRWidgetEducationViewController);
      [(PRWidgetEducationViewController *)v9 loadViewIfNeeded];
      [(PREditingSceneViewController *)self presentViewController:v9 animated:1 completion:0];
      if ((interfaceOrientation - 3) > 1)
      {
        [currentDevice setHasShownPortraitEducation:1];
      }

      else
      {
        [currentDevice setHasShownLandscapeEducation:1];
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

- (void)_presentControlsGalleryWithSelectedControl:(id)control
{
  controlCopy = control;
  presentedControlsGallery = [(PREditingSceneViewController *)self presentedControlsGallery];
  v5 = presentedControlsGallery;
  if (presentedControlsGallery)
  {
    [presentedControlsGallery setSelectedControl:controlCopy];
  }

  else
  {
    _controlsGalleryConfiguration = [(PREditingSceneViewController *)self _controlsGalleryConfiguration];
    v7 = [objc_alloc(MEMORY[0x1E6997288]) initWithConfiguration:_controlsGalleryConfiguration];
    [v7 setDelegate:self];
    [v7 setSelectedControl:controlCopy];
    presentationController = [v7 presentationController];
    v9 = objc_opt_class();
    v10 = presentationController;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v7];
    [defaultCenter addObserver:self selector:sel_presentedViewControllerPresentationDidBegin_ name:*MEMORY[0x1E69DE2E0] object:v7];
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

  _controlsGallerySuggestedControls = [(PREditingSceneViewController *)self _controlsGallerySuggestedControls];
  [v3 setSuggestedControls:_controlsGallerySuggestedControls];

  return v3;
}

- (id)_controlsGallerySuggestedControls
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _suggestedControlIdentities = [(PREditingSceneViewController *)self _suggestedControlIdentities];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [_suggestedControlIdentities countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(_suggestedControlIdentities);
        }

        v9 = [objc_alloc(MEMORY[0x1E6997278]) initWithIdentity:*(*(&v11 + 1) + 8 * i) type:0 size:0];
        [v3 addObject:v9];
      }

      v6 = [_suggestedControlIdentities countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)setComplicationRowMode:(unint64_t)mode
{
  if (self->_complicationRowMode != mode)
  {
    self->_complicationRowMode = mode;
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

- (void)setComplicationsUseBottomLayout:(BOOL)layout animated:(BOOL)animated
{
  if (self->_complicationsUseBottomLayout != layout)
  {
    v7[7] = v4;
    v7[8] = v5;
    self->_complicationsUseBottomLayout = layout;
    if (animated)
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
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (!self->_widgetGridDragInProgress && !presentedComplicationsGallery)
  {
    complicationContainerViewControllers = [(PREditingSceneViewController *)self complicationContainerViewControllers];
    anyObject = [complicationContainerViewControllers anyObject];
    [anyObject setWidgetsUseBottomLayout:{-[PREditingSceneViewController _complicationsShouldUseBottomLayout](self, "_complicationsShouldUseBottomLayout")}];
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
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (presentedComplicationsGallery)
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
    addWidgetSheetConfigurationManager = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
    [addWidgetSheetConfigurationManager setAllowedWidgetFamilies:3072];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
      listLayoutProvider = [(PREditingSceneViewController *)self listLayoutProvider];
      iconViewProvider = [(PREditingSceneViewController *)self iconViewProvider];
      v22 = [v19 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:3072 appCellIconImageCache:0 addWidgetSheetStyle:{v18, 1}];

      [v22 setPresenter:self];
      [v22 setDelegate:self];
      [v22 setAddWidgetSheetLocation:1];
      [v22 setWantsBottomAttachedPresentation:0];
      [v22 setWantsCloseButton:1];
      presentationController = [v22 presentationController];
      v24 = objc_opt_class();
      v25 = presentationController;
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
      dimmingView = [v34 dimmingView];
      layer = [dimmingView layer];
      [layer setHitTestsAsOpaque:0];

      _confinedDimmingView = [v34 _confinedDimmingView];
      layer2 = [_confinedDimmingView layer];
      [layer2 setHitTestsAsOpaque:0];

      v41 = [MEMORY[0x1E69DD708] appearancePreferringDimmingVisible:0];
      [v34 _setStandardAppearance:v41];

      [v34 setDelegate:self];
      [v22 loadViewIfNeeded];
      addWidgetSheetConfigurationManager2 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
      [addWidgetSheetConfigurationManager2 updatePresentedWidgetEditingViewController:v22];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v22];
      [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v22];
    }

    else
    {
      v27 = PRIconGridSizeClassSetForWidgetFamilyMask(3072);
      addWidgetSheetConfigurationManager3 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
      v67 = v27;
      v8 = [addWidgetSheetConfigurationManager3 applicationWidgetCollectionsForEditingViewController:self withAllowedSizeClasses:&v67 allowingNonStackableItems:0];
      v29 = v67;

      v30 = [PRComplicationGalleryViewController alloc];
      graphicComplicationSuggestionSets = self->_graphicComplicationSuggestionSets;
      listLayoutProvider2 = [(PREditingSceneViewController *)self listLayoutProvider];
      iconViewProvider2 = [(PREditingSceneViewController *)self iconViewProvider];
      v18 = [(PRComplicationGalleryViewController *)v30 initWithSuggestionSets:graphicComplicationSuggestionSets applicationWidgetCollections:v8 listLayoutProvider:listLayoutProvider2 iconViewProvider:iconViewProvider2];

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
          complications = [v45 complications];
          v47 = [complications countByEnumeratingWithState:&v59 objects:v69 count:16];
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
                  objc_enumerationMutation(complications);
                }

                v51 = *(*(&v59 + 1) + 8 * v50);
                engagementCountsForViewedSuggestedComplications = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                v53 = [engagementCountsForViewedSuggestedComplications objectForKey:v51];

                if (!v53)
                {
                  engagementCountsForViewedSuggestedComplications2 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                  [engagementCountsForViewedSuggestedComplications2 setObject:&unk_1F1C6B9B0 forKey:v51];
                }

                ++v50;
              }

              while (v48 != v50);
              v48 = [complications countByEnumeratingWithState:&v59 objects:v69 count:16];
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
    iconModel = [(PREditingSceneViewController *)self iconModel];
    [v4 setIconModel:iconModel];

    listLayoutProvider = [(PREditingSceneViewController *)self listLayoutProvider];
    [v4 setListLayoutProvider:listLayoutProvider];

    [v4 setAddWidgetSheetStyle:1];
    [v4 setAllowedWidgetFamilies:3074];
    [v4 setAllowsFakeWidgets:0];
    [v4 setConfigurationManagerDelegate:self];
    if (objc_opt_respondsToSelector())
    {
      pr_widgetDomain = [MEMORY[0x1E69D4088] pr_widgetDomain];
      [v4 setGridSizeClassDomain:pr_widgetDomain];
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
  presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (presentedSidebarComplicationsGallery)
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
    addWidgetSheetConfigurationManager = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
    [addWidgetSheetConfigurationManager setAllowedWidgetFamilies:3074];

    complicationContainerViewControllers = [(PREditingSceneViewController *)self complicationContainerViewControllers];
    anyObject = [complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController = [anyObject sidebarWidgetGridViewController];
    dragManager = [sidebarWidgetGridViewController dragManager];

    iconViewProvider = [(PREditingSceneViewController *)self iconViewProvider];
    [iconViewProvider setDragManager:dragManager];

    v22 = [PRPadAddSheetViewController alloc];
    listLayoutProvider = [(PREditingSceneViewController *)self listLayoutProvider];
    iconViewProvider2 = [(PREditingSceneViewController *)self iconViewProvider];
    v25 = [(SBHAddWidgetSheetViewControllerBase *)v22 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider2 allowedWidgets:3074 appCellIconImageCache:256 addWidgetSheetStyle:v15, 1];

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

    presentationController = [(PRPadAddSheetViewController *)v25 presentationController];
    v27 = objc_opt_class();
    v28 = presentationController;
    v52 = v15;
    v53 = v5;
    v51 = dragManager;
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

    dimmingView = [v30 dimmingView];
    layer = [dimmingView layer];
    [layer setHitTestsAsOpaque:0];

    _confinedDimmingView = [v30 _confinedDimmingView];
    layer2 = [_confinedDimmingView layer];
    [layer2 setHitTestsAsOpaque:0];

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
    addWidgetSheetConfigurationManager2 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
    v50 = v25;
    [addWidgetSheetConfigurationManager2 updatePresentedWidgetEditingViewController:v25];

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
          complications = [v38 complications];
          v40 = [complications countByEnumeratingWithState:&v57 objects:v66 count:16];
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
                  objc_enumerationMutation(complications);
                }

                v44 = *(*(&v57 + 1) + 8 * v43);
                engagementCountsForViewedSuggestedComplications = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                v46 = [engagementCountsForViewedSuggestedComplications objectForKey:v44];

                if (!v46)
                {
                  engagementCountsForViewedSuggestedComplications2 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
                  [engagementCountsForViewedSuggestedComplications2 setObject:&unk_1F1C6B9B0 forKey:v44];
                }

                ++v43;
              }

              while (v41 != v43);
              v41 = [complications countByEnumeratingWithState:&v57 objects:v66 count:16];
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v50];
    [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v50];

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
  complications = [(ATXComplicationSet *)self->_inlineComplicationSuggestionSet complications];
  v6 = [complications countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(complications);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        engagementCountsForViewedSuggestedComplications = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
        v12 = [engagementCountsForViewedSuggestedComplications objectForKey:v10];

        if (!v12)
        {
          engagementCountsForViewedSuggestedComplications2 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
          [engagementCountsForViewedSuggestedComplications2 setObject:&unk_1F1C6B9B0 forKey:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [complications countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    complicationContainerViewControllers = [(PREditingSceneViewController *)self complicationContainerViewControllers];
    v6 = [complicationContainerViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(complicationContainerViewControllers);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          view = [(PREditingSceneViewController *)self view];
          window = [view window];
          windowScene = [window windowScene];
          interfaceOrientation = [windowScene interfaceOrientation];

          widgetGridViewController = [v10 widgetGridViewController];
          view2 = [widgetGridViewController view];

          [view2 setHidden:(interfaceOrientation - 3) < 2];
          sidebarWidgetGridViewController = [v10 sidebarWidgetGridViewController];
          view3 = [sidebarWidgetGridViewController view];

          [view3 setHidden:(interfaceOrientation - 1) < 2];
          ++v9;
        }

        while (v7 != v9);
        v7 = [complicationContainerViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_shouldAllowAddComplicationsTapGestureForLocation:(int64_t)location
{
  v5 = [(PREditingSceneViewController *)self _shouldAllowGalleryPresentationForLocation:?];
  view = [(PREditingSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if (location == 1)
  {
    _hasSidebarComplications = [(PREditingSceneViewController *)self _hasSidebarComplications];
    v11 = !v5;
    v12 = interfaceOrientation - 3;
  }

  else
  {
    if (location)
    {
      return v5;
    }

    _hasSidebarComplications = [(PREditingSceneViewController *)self _hasGraphicComplications];
    v11 = !v5;
    v12 = interfaceOrientation - 1;
  }

  v13 = v12 < 2;
  v14 = !v11 && v13;
  return !_hasSidebarComplications && v14;
}

- (BOOL)_shouldAllowInlineComplicationTapGesture
{
  if ([(PREditingSceneViewController *)self _areComplicationsDisallowed]|| [(PREditingSceneViewController *)self isClientPresentingModalViewController]|| [(PREditingSceneViewController *)self areControlsHidden])
  {
    return 0;
  }

  presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (presentedInlineComplicationsGallery)
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
  sidebarComplicationAddGestureView = [(PREditingSceneViewController *)self sidebarComplicationAddGestureView];
  [sidebarComplicationAddGestureView setHidden:{-[PREditingSceneViewController _shouldAllowAddComplicationsTapGestureForLocation:](self, "_shouldAllowAddComplicationsTapGestureForLocation:", 1) ^ 1}];

  LODWORD(sidebarComplicationAddGestureView) = [(PREditingSceneViewController *)self _shouldAllowInlineComplicationTapGesture];
  inlineComplicationGestureView = [(PREditingSceneViewController *)self inlineComplicationGestureView];
  [inlineComplicationGestureView setHidden:sidebarComplicationAddGestureView ^ 1];
}

- (void)_updateLocalControlsHiddenWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if ([(PREditingSceneViewController *)self areControlsHidden])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
  view = [quickActionEditingViewController view];

  if (settingsCopy)
  {
    v8 = MEMORY[0x1E698E7D0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PREditingSceneViewController__updateLocalControlsHiddenWithAnimationSettings___block_invoke;
    v9[3] = &unk_1E78441A8;
    v10 = view;
    v11 = v5;
    [v8 animateWithSettings:settingsCopy actions:v9];
  }

  else
  {
    [view setAlpha:v5];
  }
}

- (void)inlineComplicationGestureViewTapped:(id)tapped
{
  selectedInlineComplication = [(PREditingSceneViewController *)self selectedInlineComplication];
  if (selectedInlineComplication && ([(PREditingSceneViewController *)self presentedInlineComplicationsGallery], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(PREditingSceneViewController *)self _presentIntentConfigurationForComplicationDescriptorIfPossible:selectedInlineComplication];
  }

  else
  {
    [(PREditingSceneViewController *)self _presentInlineComplicationGallery];
  }
}

- (void)setDraggingComplication:(BOOL)complication
{
  if (self->_draggingComplication != complication)
  {
    self->_draggingComplication = complication;
    [(PREditingSceneViewController *)self _updateSceneSettingsForDepthEffectDisallowed];

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)setClientPresentingModalViewController:(BOOL)controller
{
  if (self->_clientPresentingModalViewController != controller)
  {
    self->_clientPresentingModalViewController = controller;
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)_dismissAnyPresentedComplicationGalleryAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];
  if (presentedComplicationsGallery || ([(PREditingSceneViewController *)self presentedSidebarComplicationsGallery], (presentedComplicationsGallery = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = 0;
  }

  else
  {
    presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

    if (presentedInlineComplicationsGallery)
    {
      v7 = 0;
      goto LABEL_5;
    }

    presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedControlsGallery];
    v7 = presentedComplicationsGallery == 0;
  }

LABEL_5:
  presentedViewController = [(PREditingSceneViewController *)self presentedViewController];
  isBeingDismissed = [presentedViewController isBeingDismissed];

  if (v7 || (isBeingDismissed & 1) != 0)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    [(PREditingSceneViewController *)self dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  [(PREditingSceneViewController *)self setPresentedComplicationsGallery:0];
  [(PREditingSceneViewController *)self _updateComplicationLayoutIfPermitted];
  [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
  [(PREditingSceneViewController *)self setPresentedSidebarComplicationsGallery:0];
  [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:0];
  [(PREditingSceneViewController *)self setPresentedControlsGallery:0];
  [(PREditingSceneViewController *)self setSelectedQuickActionPosition:0];
  quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
  [quickActionEditingViewController setGalleryPresented:0];

  [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
  [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
  [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  widgetBeingAdded = self->_widgetBeingAdded;
  self->_widgetBeingAdded = 0;
}

- (void)presentedViewControllerPresentationDidBegin:(id)begin
{
  object = [begin object];
  presentedControlsGallery = [(PREditingSceneViewController *)self presentedControlsGallery];

  v5 = object;
  if (object == presentedControlsGallery)
  {
    quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [quickActionEditingViewController setGalleryPresented:1];

    v5 = object;
  }
}

- (void)presentedViewControllerDismissalWillBegin:(id)begin
{
  object = [begin object];
  presentedViewController = [(PREditingSceneViewController *)self presentedViewController];

  if (object == presentedViewController)
  {
    [(PREditingSceneViewController *)self setFocusedElement:0];
  }

  iconViewProvider = [(PREditingSceneViewController *)self iconViewProvider];
  dragManager = [iconViewProvider dragManager];
  [dragManager cancelAllDrags];
}

- (void)presentedViewControllerDismissalDidEnd:(id)end
{
  endCopy = end;
  object = [endCopy object];
  presentedViewController = [(PREditingSceneViewController *)self presentedViewController];

  if (object == presentedViewController)
  {
    userInfo = [endCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DE2C0]];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2D0] object:object];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2C8] object:object];

      goto LABEL_11;
    }

    if (object == self->_presentedComplicationsGallery)
    {
      selfCopy3 = self;
      v11 = 2;
    }

    else if (object == self->_presentedSidebarComplicationsGallery)
    {
      selfCopy3 = self;
      v11 = 3;
    }

    else
    {
      if (object != self->_presentedInlineComplicationsGallery)
      {
        goto LABEL_11;
      }

      selfCopy3 = self;
      v11 = 1;
    }

    [(PREditingSceneViewController *)selfCopy3 setFocusedElement:v11];
  }

LABEL_11:
}

- (void)setFocusedElement:(int64_t)element
{
  self->_focusedElement = element;
  viewIfLoaded = [(PREditingSceneViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  _shouldDepthEffectBeDisallowed = [(PREditingSceneViewController *)self _shouldDepthEffectBeDisallowed];
  scene = self->super._scene;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__PREditingSceneViewController_setFocusedElement___block_invoke;
  v13[3] = &unk_1E78454E8;
  v17 = _shouldDepthEffectBeDisallowed;
  v13[4] = self;
  v14 = v8;
  v15 = windowScene;
  elementCopy = element;
  v11 = windowScene;
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

- (id)_configureNavigationControllerForGalleryViewController:(id)controller
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCCD8];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && (isKindOfClass)
  {
    [v6 setModalPresentationStyle:7];
    popoverPresentationController = [v6 popoverPresentationController];
    view = [(PREditingSceneViewController *)self view];
    [popoverPresentationController setSourceView:view];

    [PREditorElementLayoutController frameForElements:4 variant:3];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:1];
    inlineComplicationGestureView = [(PREditingSceneViewController *)self inlineComplicationGestureView];
    v29[0] = inlineComplicationGestureView;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [popoverPresentationController setPassthroughViews:v13];

    [popoverPresentationController setDelegate:self];
    traitOverrides = [popoverPresentationController traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];
  }

  else
  {
    presentationController = [v6 presentationController];
    v16 = objc_opt_class();
    v17 = presentationController;
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

    popoverPresentationController = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"ComplicationGalleryDodge" resolver:&__block_literal_global_360];
    v28 = popoverPresentationController;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v19 setDetents:v20];

    [v19 setLargestUndimmedDetentIdentifier:@"ComplicationGalleryDodge"];
    [v19 setPrefersGrabberVisible:1];
    dimmingView = [v19 dimmingView];
    layer = [dimmingView layer];
    [layer setHitTestsAsOpaque:0];

    _confinedDimmingView = [v19 _confinedDimmingView];
    layer2 = [_confinedDimmingView layer];
    [layer2 setHitTestsAsOpaque:0];

    [v19 setDelegate:self];
    [v19 _setShouldScaleDownBehindDescendantSheets:1];
    traitOverrides = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:8 size:1];
    [traitOverrides setSubvariant:@"customizeSheet"];
    [v19 _setNonLargeBackground:traitOverrides];
    [v19 _setLargeBackground:traitOverrides];
    traitOverrides2 = [v19 traitOverrides];

    [traitOverrides2 setUserInterfaceStyle:2];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v6];
  [defaultCenter addObserver:self selector:sel_presentedViewControllerDismissalDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v6];

  return v6;
}

- (void)_dismissWithAction:(int64_t)action
{
  v84 = *MEMORY[0x1E69E9840];
  if (![(PREditingSceneViewController *)self isDismissing])
  {
    v5 = PRLogEditing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      actionCopy = action;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Dismiss with action %li", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    [(PREditingSceneViewController *)self setDismissing:1];
    [(PREditingSceneViewController *)self _unregisterComplicationContainerViewControllerDelegates];
    delegate = [(PREditingSceneViewController *)self delegate];
    if (action == 1 && !delegate)
    {
      v6 = PRLogEditing();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v79 = 0;
        _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Discarding updated configuration because no delegate is set", v79, 2u);
      }

      action = 0;
    }

    presentedViewController = [(PREditingSceneViewController *)self presentedViewController];
    v8 = presentedViewController == 0;

    if (!v8)
    {
      [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1];
    }

    if (action == 1)
    {
      _complicationsShouldUseBottomLayout = [(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout];
      pRSWidget = [(PRComplicationDescriptor *)self->_selectedInlineComplication PRSWidget];
      v54 = _complicationsShouldUseBottomLayout;
      anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      widgetGridViewController = [anyObject widgetGridViewController];
      model = [widgetGridViewController model];

      complicationDescriptors = [model complicationDescriptors];
      v13 = [complicationDescriptors bs_map:&__block_literal_global_367];
      [model saveIconStateIfNeeded];
      iconLayout = [model iconLayout];
      v51 = v13;
      anyObject2 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      sidebarWidgetGridViewController = [anyObject2 sidebarWidgetGridViewController];
      model2 = [sidebarWidgetGridViewController model];

      complicationDescriptors2 = [model2 complicationDescriptors];
      v17 = [complicationDescriptors2 bs_map:&__block_literal_global_369];
      [model2 saveIconStateIfNeeded];
      iconLayout2 = [model2 iconLayout];
      v49 = v17;
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      suggestedComplication = [(PRComplicationDescriptor *)self->_selectedInlineComplication suggestedComplication];

      if (suggestedComplication)
      {
        suggestedComplication2 = [(PRComplicationDescriptor *)self->_selectedInlineComplication suggestedComplication];
        uniqueIdentifier = [(PRComplicationDescriptor *)self->_selectedInlineComplication uniqueIdentifier];
        [v19 setObject:suggestedComplication2 forKey:uniqueIdentifier];
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v23 = complicationDescriptors;
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
            suggestedComplication3 = [v27 suggestedComplication];

            if (suggestedComplication3)
            {
              suggestedComplication4 = [v27 suggestedComplication];
              uniqueIdentifier2 = [v27 uniqueIdentifier];
              [v19 setObject:suggestedComplication4 forKey:uniqueIdentifier2];
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
      v31 = complicationDescriptors2;
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
            suggestedComplication5 = [v35 suggestedComplication];

            if (suggestedComplication5)
            {
              suggestedComplication6 = [v35 suggestedComplication];
              uniqueIdentifier3 = [v35 uniqueIdentifier];
              [v19 setObject:suggestedComplication6 forKey:uniqueIdentifier3];
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
      v61 = delegate;
      selfCopy = self;
      objc_copyWeak(v69, buf);
      v39 = pRSWidget;
      v63 = v39;
      v40 = iconLayout2;
      v64 = v40;
      v53 = v49;
      v65 = v53;
      v41 = iconLayout;
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
      [delegate editingSceneViewController:self userDidDismissWithAction:action updatedConfiguration:0 updatedConfiguredProperties:0 completion:v58];
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

- (BOOL)_posterUserInfo:(id)info containsUserChangesFromPrevious:(id)previous
{
  v27 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  previousCopy = previous;
  v7 = MEMORY[0x1E695DFA8];
  allKeys = [previousCopy allKeys];
  v9 = [v7 setWithArray:allKeys];

  v10 = MEMORY[0x1E695DFA8];
  allKeys2 = [infoCopy allKeys];
  v12 = [v10 setWithArray:allKeys2];
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
        v18 = [infoCopy valueForKey:{v17, v22}];
        v19 = [previousCopy valueForKey:v17];
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
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (presentedComplicationsGallery)
  {
    return 1;
  }

  presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (presentedSidebarComplicationsGallery)
  {
    return 3;
  }

  presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (presentedInlineComplicationsGallery)
  {
    return 2;
  }

  presentedControlsGallery = [(PREditingSceneViewController *)self presentedControlsGallery];
  v8 = presentedControlsGallery != 0;

  return 4 * v8;
}

- (BOOL)_areComplicationsDisallowed
{
  posterRole = [(PREditingSceneViewController *)self posterRole];
  v3 = PFPosterRoleFromPRPosterRole(posterRole);

  LOBYTE(posterRole) = PFPosterRoleSupportsComplications();
  return posterRole ^ 1;
}

- (void)_configureUsingPath:(id)path
{
  v6.receiver = self;
  v6.super_class = PREditingSceneViewController;
  pathCopy = path;
  [(PRSceneViewController *)&v6 _configureUsingPath:pathCopy];
  v5 = [PRPosterPathUtilities loadProactiveGalleryOptions:pathCopy error:0, v6.receiver, v6.super_class];

  -[PREditingSceneViewController setHero:](self, "setHero:", [v5 isHero]);
}

- (void)_configureInitialSceneSettings:(id)settings
{
  v11.receiver = self;
  v11.super_class = PREditingSceneViewController;
  settingsCopy = settings;
  [(PRSceneViewController *)&v11 _configureInitialSceneSettings:settingsCopy];
  v5 = [(PRSceneViewController *)self contentsIdentity:v11.receiver];
  type = [v5 type];
  isHero = [(PREditingSceneViewController *)self isHero];
  v8 = ((type - 1) < 2) | [(PREditingSceneViewController *)self isEditingNewPosterFromConfiguration];
  if (isHero)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  [settingsCopy pr_setEditingContext:v9];
  [settingsCopy pr_setEditingVariant:{-[PREditingSceneViewController variant](self, "variant")}];
  [settingsCopy pr_setEditingAcceptButtonType:{-[PREditingSceneViewController acceptButtonType](self, "acceptButtonType")}];
  [settingsCopy pr_setControlsHidden:{-[PREditingSceneViewController areControlsHidden](self, "areControlsHidden")}];
  [settingsCopy pr_setUsesEditingLayout:{-[PREditingSceneViewController usesEditingLayout](self, "usesEditingLayout")}];
  [settingsCopy pr_setComplicationsDisallowed:{-[PREditingSceneViewController _areComplicationsDisallowed](self, "_areComplicationsDisallowed")}];
  traitCollection = [(PREditingSceneViewController *)self traitCollection];
  [settingsCopy pui_setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
}

- (void)_updateSceneSettingsForPosterCoveredByModalPresentation
{
  _modalVariant = [(PREditingSceneViewController *)self _modalVariant];
  scene = self->super._scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PREditingSceneViewController__updateSceneSettingsForPosterCoveredByModalPresentation__block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
  v5[4] = _modalVariant;
  [(FBScene *)scene updateSettingsWithBlock:v5];
}

- (void)_updateSceneSettingsForConfiguredWidgets
{
  anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  widgetGridViewController = [anyObject widgetGridViewController];
  model = [widgetGridViewController model];

  complicationDescriptors = [model complicationDescriptors];
  v7 = [complicationDescriptors count] != 0;

  LOBYTE(complicationDescriptors) = [(PREditingSceneViewController *)self _complicationsShouldUseBottomLayout];
  anyObject2 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
  sidebarWidgetGridViewController = [anyObject2 sidebarWidgetGridViewController];
  model2 = [sidebarWidgetGridViewController model];

  complicationDescriptors2 = [model2 complicationDescriptors];
  LOBYTE(sidebarWidgetGridViewController) = [complicationDescriptors2 count] != 0;

  scene = self->super._scene;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PREditingSceneViewController__updateSceneSettingsForConfiguredWidgets__block_invoke;
  v13[3] = &__block_descriptor_35_e33_v16__0__FBSMutableSceneSettings_8l;
  v14 = v7;
  v15 = sidebarWidgetGridViewController;
  v16 = complicationDescriptors;
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
  presentationDismissalGestureViews = [(PREditingSceneViewController *)self presentationDismissalGestureViews];
  _isPosterCoveredByModalPresentation = [(PREditingSceneViewController *)self _isPosterCoveredByModalPresentation];
  if (_isPosterCoveredByModalPresentation && !presentationDismissalGestureViews)
  {
    presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];

    if (presentedComplicationsGallery)
    {
      complicationContainerViewControllers = [(PREditingSceneViewController *)self complicationContainerViewControllers];
      anyObject = [complicationContainerViewControllers anyObject];
      widgetGridViewController = [anyObject widgetGridViewController];
      view = [widgetGridViewController view];
      [view frame];
      x = v10;
      y = v12;
      width = v14;
      height = v16;
    }

    else
    {
      presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

      if (presentedSidebarComplicationsGallery)
      {
        v25 = 16;
      }

      else
      {
        presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

        if (!presentedInlineComplicationsGallery)
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

    view2 = [(PREditingSceneViewController *)self view];
    [view2 addSubview:v31];
    v42 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(PRDismissalOverlayView *)v31 leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v53[0] = v45;
    trailingAnchor = [(PRDismissalOverlayView *)v31 trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v53[1] = v34;
    topAnchor = [(PRDismissalOverlayView *)v31 topAnchor];
    topAnchor2 = [view2 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[2] = v37;
    bottomAnchor = [(PRDismissalOverlayView *)v31 bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v53[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
    [v42 activateConstraints:v41];

    presentationDismissalGestureViews = 0;
    goto LABEL_25;
  }

  if (presentationDismissalGestureViews)
  {
    v18 = _isPosterCoveredByModalPresentation;
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
    v19 = presentationDismissalGestureViews;
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

        widgetGridViewController = [*(*(&v11 + 1) + 8 * i) widgetGridViewController];
        model = [widgetGridViewController model];
        complicationDescriptors = [model complicationDescriptors];

        v9 = [complicationDescriptors count];
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

        sidebarWidgetGridViewController = [*(*(&v11 + 1) + 8 * i) sidebarWidgetGridViewController];
        model = [sidebarWidgetGridViewController model];
        complicationDescriptors = [model complicationDescriptors];

        v9 = [complicationDescriptors count];
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
  variant = [(PREditingSceneViewController *)self variant];
  if (PUIFeatureEnabled())
  {
    complicationRowMode = self->_complicationRowMode;
    result = variant == 1 || complicationRowMode == 1;
    if (complicationRowMode != 1 || variant == 1)
    {
      return result;
    }
  }

  else if (variant == 1)
  {
    return 1;
  }

  view = [(PREditingSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  if ((interfaceOrientation - 1) <= 1 && [(PREditingSceneViewController *)self _hasGraphicComplications])
  {
    return 1;
  }

  return [(PREditingSceneViewController *)self focusedElement]== 2;
}

- (void)_updateSceneSettingsForDepthEffectDisallowed
{
  _shouldDepthEffectBeDisallowed = [(PREditingSceneViewController *)self _shouldDepthEffectBeDisallowed];
  scene = self->super._scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PREditingSceneViewController__updateSceneSettingsForDepthEffectDisallowed__block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
  v6 = _shouldDepthEffectBeDisallowed;
  [(FBScene *)scene updateSettingsWithBlock:v5];
}

- (void)_insertModularComplication:(id)complication location:(int64_t)location animated:(BOOL)animated
{
  complicationCopy = complication;
  if (![PREditingSceneViewController _canAddComplicationDescriptor:"_canAddComplicationDescriptor:forLocation:" forLocation:?])
  {
    [(PREditingSceneViewController *)self _presentFullAlertForComplication:complicationCopy];
    goto LABEL_10;
  }

  if (location == 1)
  {
    anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController = [anyObject sidebarWidgetGridViewController];
  }

  else
  {
    if (location)
    {
      v9 = 0;
      goto LABEL_9;
    }

    anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController = [anyObject widgetGridViewController];
  }

  v9 = sidebarWidgetGridViewController;

LABEL_9:
  model = [v9 model];
  [model addComplicationDescriptor:complicationCopy];

LABEL_10:
}

- (void)_presentFullAlertForComplication:(id)complication
{
  complicationCopy = complication;
  v5 = PRSharedWidgetExtensionProvider();
  widget = [complicationCopy widget];

  v21 = [v5 widgetDescriptorForWidget:widget];

  v7 = MEMORY[0x1E696AEC0];
  v8 = PRBundle();
  v9 = [v8 localizedStringForKey:@"COMPLICATION_GALLERY_FULL_MESSAGE" value:&stru_1F1C13D90 table:@"PosterKit"];
  displayName = [v21 displayName];
  v11 = [v7 stringWithFormat:v9, displayName];

  v12 = MEMORY[0x1E69DC650];
  v13 = PRBundle();
  v14 = [v13 localizedStringForKey:@"COMPLICATION_GALLERY_FULL_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
  v15 = [v12 alertControllerWithTitle:v14 message:v11 preferredStyle:1];

  v16 = MEMORY[0x1E69DC648];
  v17 = PRBundle();
  v18 = [v17 localizedStringForKey:@"OK" value:&stru_1F1C13D90 table:@"PosterKit"];
  v19 = [v16 actionWithTitle:v18 style:0 handler:0];

  [v15 addAction:v19];
  bs_topPresentedViewController = [(PREditingSceneViewController *)self bs_topPresentedViewController];
  [bs_topPresentedViewController presentViewController:v15 animated:1 completion:0];
}

- (BOOL)_canAddComplicationDescriptor:(id)descriptor forLocation:(int64_t)location
{
  descriptorCopy = descriptor;
  if (location == 1)
  {
    anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController = [anyObject sidebarWidgetGridViewController];
  }

  else
  {
    if (location)
    {
      v9 = 0;
      goto LABEL_7;
    }

    anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
    sidebarWidgetGridViewController = [anyObject widgetGridViewController];
  }

  v9 = sidebarWidgetGridViewController;

LABEL_7:
  model = [v9 model];
  v11 = [model canAddComplicationDescriptor:descriptorCopy];

  return v11;
}

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_vibrancyConfiguration, configuration);
    [(PREditingSceneViewController *)self _updateComplicationsVibrancyConfiguration];
  }
}

- (void)_updateComplicationsVibrancyConfiguration
{
  v14 = *MEMORY[0x1E69E9840];
  vibrancyConfiguration = [(PREditingSceneViewController *)self vibrancyConfiguration];
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

        [*(*(&v9 + 1) + 8 * v8++) setVibrancyConfiguration:{vibrancyConfiguration, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_presentIntentConfigurationForComplicationDescriptorIfPossible:(id)possible
{
  possibleCopy = possible;
  widget = [possibleCopy widget];
  intentReference = [widget intentReference];
  intent = [intentReference intent];

  if (intent && [(PREditingSceneViewController *)self _intentHasConfigurableAttributes:intent])
  {
    [(PREditingSceneViewController *)self _presentIntentConfigurationForComplicationDescriptor:possibleCopy];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_presentIntentConfigurationForComplicationDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  widget = [descriptorCopy widget];
  v6 = PRSharedWidgetExtensionProvider();
  v7 = [v6 widgetDescriptorForWidget:widget];

  if (!self->_presentedComplicationWidgetConfigurationViewController)
  {
    intentType = [v7 intentType];

    if (intentType)
    {
      intentReference = [widget intentReference];
      intent = [intentReference intent];
      family = [widget family];
      bs_topPresentedViewController = [(PREditingSceneViewController *)self bs_topPresentedViewController];
      v13 = [(PREditingSceneViewController *)self _presentIntentConfigurationViewControllerWithIntent:intent descriptor:v7 family:family fromViewController:bs_topPresentedViewController];

      objc_storeStrong(&self->_widgetBeingConfigured, descriptor);
      presentedComplicationWidgetConfigurationViewController = self->_presentedComplicationWidgetConfigurationViewController;
      self->_presentedComplicationWidgetConfigurationViewController = v13;
    }
  }
}

- (void)_presentIntentConfigurationForQuickActionControl:(id)control withPosition:(int64_t)position
{
  controlCopy = control;
  identity = [controlCopy identity];
  intentReference = [identity intentReference];
  intent = [intentReference intent];

  if (intent && [(PREditingSceneViewController *)self _intentHasConfigurableAttributes:intent])
  {
    [(PREditingSceneViewController *)self setControlIntentBeingConfigured:controlCopy];
    [(PREditingSceneViewController *)self setQuickActionIntentEditPosition:position];
    identity2 = [controlCopy identity];
    v10 = [(PREditingSceneViewController *)self _descriptorForControl:controlCopy];
    v11 = v10;
    if (!self->_presentedControlWidgetConfigurationViewController)
    {
      intentType = [v10 intentType];

      if (intentType)
      {
        intentReference2 = [identity2 intentReference];
        intent2 = [intentReference2 intent];
        v15 = [(PREditingSceneViewController *)self _presentIntentConfigurationViewControllerWithIntent:intent2 descriptor:v11 family:0 fromViewController:self];

        presentedControlWidgetConfigurationViewController = self->_presentedControlWidgetConfigurationViewController;
        self->_presentedControlWidgetConfigurationViewController = v15;
      }
    }
  }
}

- (id)_descriptorForControl:(id)control
{
  identity = [control identity];
  controlExtensionProvider = self->_controlExtensionProvider;
  extensionIdentity = [identity extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  v8 = [(CHSWidgetExtensionProvider *)controlExtensionProvider widgetExtensionContainerForExtensionBundleIdentifier:extensionBundleIdentifier];

  extensionIdentity2 = [identity extensionIdentity];
  v10 = [v8 extensionForExtensionIdentity:extensionIdentity2];

  orderedControlDescriptors = [v10 orderedControlDescriptors];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PREditingSceneViewController__descriptorForControl___block_invoke;
  v15[3] = &unk_1E7843610;
  v16 = identity;
  v12 = identity;
  v13 = [orderedControlDescriptors bs_firstObjectPassingTest:v15];

  return v13;
}

uint64_t __54__PREditingSceneViewController__descriptorForControl___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)_presentIntentConfigurationViewControllerWithIntent:(id)intent descriptor:(id)descriptor family:(int64_t)family fromViewController:(id)controller
{
  v10 = MEMORY[0x1E69E3100];
  controllerCopy = controller;
  descriptorCopy = descriptor;
  intentCopy = intent;
  v14 = objc_alloc_init(v10);
  [v14 setIntent:intentCopy];

  displayName = [descriptorCopy displayName];
  [v14 setWidgetDisplayName:displayName];

  widgetDescription = [descriptorCopy widgetDescription];
  [v14 setWidgetDescription:widgetDescription];

  pr_configurationType = [descriptorCopy pr_configurationType];
  [v14 setWidgetConfigurationType:pr_configurationType];
  [v14 setFamily:family];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v14 setWidgetConfigurationStyle:1];
  }

  v20 = [objc_alloc(MEMORY[0x1E69E3108]) initWithOptions:v14];
  [v20 setDelegate:self];
  sheetPresentationController = [v20 sheetPresentationController];
  [sheetPresentationController setDelegate:self];

  [controllerCopy presentViewController:v20 animated:1 completion:0];

  return v20;
}

- (BOOL)_intentHasConfigurableAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    _codableDescription = [attributesCopy _codableDescription];
    attributes = [_codableDescription attributes];
    allValues = [attributes allValues];

    v4 = [allValues bs_containsObjectPassingTest:&__block_literal_global_418];
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
    isSceneContentReady = [(PRSceneViewController *)self isSceneContentReady];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__PREditingSceneViewController__sceneContentReadinessDidChange__block_invoke;
    v4[3] = &unk_1E7845718;
    objc_copyWeak(&v5, &location);
    v6 = isSceneContentReady;
    [(PREditingSceneViewController *)self setContentHidden:isSceneContentReady ^ 1 animated:isSceneContentReady completion:v4];
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

- (void)_updateQuickActionsPosterConfigurationForPosition:(int64_t)position withControlConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  v7 = [configuredProperties mutableCopy];

  configuredProperties2 = [(PRSceneViewController *)self configuredProperties];
  quickActionsConfiguration = [configuredProperties2 quickActionsConfiguration];
  v10 = [quickActionsConfiguration mutableCopy];

  if (!v10)
  {
    v10 = [(PRPosterQuickActionsConfiguration *)[PRPosterMutableQuickActionsConfiguration alloc] initWithLeadingControl:0 trailingControl:0];
  }

  if (position == 2)
  {
    [(PRPosterQuickActionsConfiguration *)v10 setTrailingControl:configurationCopy];
  }

  else if (position == 1)
  {
    [(PRPosterQuickActionsConfiguration *)v10 setLeadingControl:configurationCopy];
  }

  [v7 setQuickActionsConfiguration:v10];
  [(PRSceneViewController *)self setConfiguredProperties:v7];
}

- (void)setTimeReticleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_timeReticleFrame = &self->_timeReticleFrame;
  if (!CGRectEqualToRect(self->_timeReticleFrame, frame))
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
  viewIfLoaded = [(PREditingSceneViewController *)self viewIfLoaded];
  [viewIfLoaded bounds];
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

- (void)_addWidgetIconView:(id)view
{
  viewCopy = view;
  v5 = [(PREditingSceneViewController *)self focusedElement]== 3;
  icon = [viewCopy icon];

  v7 = objc_opt_class();
  v8 = icon;
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

  activeWidget = [v10 activeWidget];
  gridSizeClass = [v10 gridSizeClass];

  v12 = PRWidgetFamilyForIconGridSizeClass(gridSizeClass);
  v13 = objc_alloc(MEMORY[0x1E6994370]);
  extensionBundleIdentifier = [activeWidget extensionBundleIdentifier];
  containerBundleIdentifier = [activeWidget containerBundleIdentifier];
  kind = [activeWidget kind];
  v17 = [v13 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind family:v12 intent:0];

  v18 = [PRComplicationDescriptor alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v21 = [(PRComplicationDescriptor *)v18 initWithUniqueIdentifier:uUIDString widget:v17];

  [(PREditingSceneViewController *)self _insertModularComplication:v21 location:v5 animated:1];
  suggestedComplication = [(PRComplicationDescriptor *)v21 suggestedComplication];

  if (suggestedComplication)
  {
    engagementCountsForViewedSuggestedComplications = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    suggestedComplication2 = [(PRComplicationDescriptor *)v21 suggestedComplication];
    v25 = [engagementCountsForViewedSuggestedComplications objectForKey:suggestedComplication2];
    v26 = v25;
    v27 = &unk_1F1C6B9B0;
    if (v25)
    {
      v27 = v25;
    }

    v28 = v27;

    engagementCountsForViewedSuggestedComplications2 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    v30 = MEMORY[0x1E696AD98];
    intValue = [v28 intValue];

    v32 = [v30 numberWithInt:(intValue + 1)];
    suggestedComplication3 = [(PRComplicationDescriptor *)v21 suggestedComplication];
    [engagementCountsForViewedSuggestedComplications2 setObject:v32 forKey:suggestedComplication3];
  }
}

+ (id)_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PREditingSceneViewController__startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_onceToken != -1)
  {
    dispatch_once(&_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_onceToken, block);
  }

  data = [_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides_sOverrideDomain data];
  customOverrides = [data customOverrides];

  return customOverrides;
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
  overrideObservingViewControllers = [v3 overrideObservingViewControllers];
  [overrideObservingViewControllers addObject:self];

  _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides = [v3 _startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides];
  if ([_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides dateFromEntriesIncludesTime])
  {
    dateFromEntries = [_startObservingSystemStatusOverridesIfNeededAndFetchInitialOverrides dateFromEntries];
  }

  else
  {
    dateFromEntries = 0;
  }

  [(PREditingSceneViewController *)self setOverrideDate:dateFromEntries];
}

- (void)_setUpRemotePresentationForContextId:(unsigned int)id layerRenderId:(unint64_t)renderId presentedScreenRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = *&id;
  v15 = objc_alloc_init(PREditingRemotePresentationView);
  portalLayer = [(PREditingRemotePresentationView *)v15 portalLayer];
  [portalLayer setSourceContextId:v10];
  [portalLayer setSourceLayerRenderId:renderId];
  v13 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v13 setView:v15];
  delegate = [(PREditingSceneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editingSceneViewController:self wantsRemotePresentationOfViewController:v13 contentScreenRect:{x, y, width, height}];
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

- (id)scene:(id)scene handleActions:(id)actions
{
  v30 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v28.receiver = self;
  v28.super_class = PREditingSceneViewController;
  v7 = [(PRSceneViewController *)&v28 scene:scene handleActions:actionsCopy];
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
  v10 = actionsCopy;
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
          sourceContextId = [v15 sourceContextId];
          sourceLayerRenderId = [v15 sourceLayerRenderId];
          [v15 presentedViewScreenRect];
          [(PREditingSceneViewController *)self _setUpRemotePresentationForContextId:sourceContextId layerRenderId:sourceLayerRenderId presentedScreenRect:?];
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

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  settingsCopy = settings;
  clientSettings = [sceneCopy clientSettings];
  if ([diffCopy pr_complicationRowModeDidChange])
  {
    -[PREditingSceneViewController setComplicationRowMode:](self, "setComplicationRowMode:", [clientSettings pr_complicationRowMode]);
  }

  if (([diffCopy pr_motionEffectsDisabledDidChange] & 1) != 0 || (objc_msgSend(diffCopy, "pr_supportedMotionEffectsModeDidChange") & 1) != 0 || objc_msgSend(diffCopy, "pr_depthEffectDisabledDidChange"))
  {
    v38 = settingsCopy;
    v15 = -[PRPosterRenderingConfiguration initWithDepthEffectDisabled:motionEffectsDisabled:]([PRPosterRenderingConfiguration alloc], "initWithDepthEffectDisabled:motionEffectsDisabled:", [clientSettings pr_isDepthEffectDisabled], objc_msgSend(clientSettings, "pr_areMotionEffectsDisabled"));
    configuredProperties = [(PRSceneViewController *)self configuredProperties];
    v17 = [configuredProperties mutableCopy];

    [v17 setRenderingConfiguration:v15];
    [(PRSceneViewController *)self setConfiguredProperties:v17];
    LODWORD(configuredProperties) = [clientSettings pr_areMotionEffectsDisabled];
    pr_supportedMotionEffectsMode = [clientSettings pr_supportedMotionEffectsMode];
    if (configuredProperties)
    {
      v19 = 0;
    }

    else
    {
      v19 = pr_supportedMotionEffectsMode;
    }

    settings = [sceneCopy settings];
    v21 = sceneCopy;
    pr_effectiveMotionEffectsMode = [settings pr_effectiveMotionEffectsMode];

    v23 = pr_effectiveMotionEffectsMode == v19;
    sceneCopy = v21;
    if (!v23)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __106__PREditingSceneViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
      v40[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
      v40[4] = v19;
      [v21 updateSettings:v40];
    }

    settingsCopy = v38;
  }

  if ([diffCopy pr_deviceMotionEventsRequestedDidChange])
  {
    pr_deviceMotionEventsRequested = [clientSettings pr_deviceMotionEventsRequested];
    delegate = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate editingSceneViewController:self deviceMotionEventsRequestedDidChange:pr_deviceMotionEventsRequested];
    }
  }

  if ([diffCopy pr_preferredDeviceMotionUpdateIntervalDidChange])
  {
    [clientSettings pr_preferredDeviceMotionUpdateInterval];
    v27 = v26;
    delegate2 = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate2 editingSceneViewController:self preferredDeviceMotionUpdateIntervalDidChange:v27];
    }
  }

  if ([clientSettings pui_adaptiveTimeMode] != 2)
  {
LABEL_26:
    if (([diffCopy pr_titleReticleFrameDidChange] & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  settings2 = [sceneCopy settings];
  if (![settings2 pui_isComplicationRowConfigured])
  {

    goto LABEL_26;
  }

  settings3 = [sceneCopy settings];
  pui_isComplicationRowAtBottom = [settings3 pui_isComplicationRowAtBottom];

  if (([diffCopy pr_titleReticleFrameDidChange] & 1) == 0)
  {
    goto LABEL_29;
  }

  if (pui_isComplicationRowAtBottom)
  {
LABEL_27:
    [clientSettings pr_titleReticleFrame];
    goto LABEL_28;
  }

  [PREditorElementLayoutController frameForElements:1 variant:3];
LABEL_28:
  [(PREditingSceneViewController *)self setTimeReticleFrame:?];
LABEL_29:
  pr_isDepthEffectDisabled = [clientSettings pr_isDepthEffectDisabled];
  if (pr_isDepthEffectDisabled != [(PREditingSceneViewController *)self _isDepthEffectDisabled])
  {
    -[PREditingSceneViewController setDepthEffectDisabled:](self, "setDepthEffectDisabled:", [clientSettings pr_isDepthEffectDisabled]);
  }

  [(PREditingSceneViewController *)self _updateComplicationLayout];
  v39.receiver = self;
  v39.super_class = PREditingSceneViewController;
  [(PRSceneViewController *)&v39 scene:sceneCopy didUpdateClientSettingsWithDiff:diffCopy oldClientSettings:settingsCopy transitionContext:contextCopy];

  v33 = sceneCopy;
  _UISceneSettingsDiffActionPerformChangesWithTransitionContext();

  clientSettings2 = [v33 clientSettings];
  pr_areContentsCoveredByModalPresentation = [clientSettings2 pr_areContentsCoveredByModalPresentation];

  [(PREditingSceneViewController *)self setClientPresentingModalViewController:pr_areContentsCoveredByModalPresentation];
  if ([diffCopy pui_inspect:20814])
  {
    delegate3 = [(PREditingSceneViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      pr_injectedEditingClientSettings = [clientSettings pr_injectedEditingClientSettings];
      [delegate3 editingSceneViewController:self injectedEditingClientSettingsDidChange:pr_injectedEditingClientSettings];
    }
  }
}

void __106__PREditingSceneViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) clientSettings];
  v3 = [v2 pr_vibrancyConfiguration];

  [*(a1 + 40) setVibrancyConfiguration:v3];
}

- (void)complicationContainerViewController:(id)controller didUpdateModelContentForLocation:(int64_t)location
{
  [(PREditingSceneViewController *)self _updateSceneSettingsForDepthEffectDisallowed:controller];
  [(PREditingSceneViewController *)self _updateSceneSettingsForConfiguredWidgets];

  [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
}

- (void)complicationContainerViewControllerDidTapAdd:(id)add forLocation:(int64_t)location
{
  if ([(PREditingSceneViewController *)self _shouldAllowGalleryPresentationForLocation:location])
  {
    if (location == 1)
    {

      [(PREditingSceneViewController *)self _presentSidebarComplicationGallery];
    }

    else if (!location)
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

- (void)complicationContainerViewController:(id)controller isAttemptingDragToAddComplication:(id)complication
{
  complicationCopy = complication;
  widget = [(PRComplicationDescriptor *)complicationCopy widget];
  widgetBeingAdded = complicationCopy;
  if (!widget)
  {
    widgetBeingAdded = self->_widgetBeingAdded;
  }

  v7 = widgetBeingAdded;

  if (![(PREditingSceneViewController *)self _canAddComplicationDescriptor:v7 forLocation:[(PREditingSceneViewController *)self focusedElement]== 3])
  {
    [(PREditingSceneViewController *)self _presentFullAlertForComplication:v7];
  }
}

- (void)complicationContainerViewController:(id)controller isDraggingWidgetGridWithProgress:(double)progress
{
  scene = self->super._scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__PREditingSceneViewController_complicationContainerViewController_isDraggingWidgetGridWithProgress___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
  v6 = progress >= 0.5;
  [(FBScene *)scene updateSettingsWithBlock:v5];
}

- (void)complicationContainerViewController:(id)controller didUpdateWidgetGridPositionToBottom:(BOOL)bottom
{
  self->_widgetGridDragInProgress = 0;
  self->_complicationLayoutIsUserConfigured = 1;
  [(PREditingSceneViewController *)self setComplicationsUseBottomLayout:bottom];
}

- (BOOL)complicationContainerViewControllerAllowsWidgetGridDragInteraction:(id)interaction
{
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];
  if (presentedComplicationsGallery)
  {
    v5 = 1;
  }

  else
  {
    presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];
    if (presentedInlineComplicationsGallery)
    {
      v5 = 1;
    }

    else
    {
      presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];
      v5 = presentedSidebarComplicationsGallery != 0;
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

- (void)complicationGalleryViewControllerDidFinish:(id)finish
{
  navigationController = [finish navigationController];
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (navigationController == presentedComplicationsGallery)
  {
    [(PREditingSceneViewController *)self setPresentedComplicationsGallery:0];
    [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)complicationGalleryViewController:(id)controller didBeginDraggingComplication:(id)complication
{
  complicationCopy = complication;
  [(PREditingSceneViewController *)self setDraggingComplication:1];
  widgetBeingAdded = self->_widgetBeingAdded;
  self->_widgetBeingAdded = complicationCopy;
}

- (void)inlineComplicationGalleryViewController:(id)controller didSelectComplication:(id)complication
{
  complicationCopy = complication;
  [(PREditingSceneViewController *)self setSelectedInlineComplication:complicationCopy];
  suggestedComplication = [complicationCopy suggestedComplication];

  if (suggestedComplication)
  {
    engagementCountsForViewedSuggestedComplications = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    suggestedComplication2 = [complicationCopy suggestedComplication];
    v8 = [engagementCountsForViewedSuggestedComplications objectForKey:suggestedComplication2];
    v9 = v8;
    v10 = &unk_1F1C6B9B0;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    engagementCountsForViewedSuggestedComplications2 = [(PREditingSceneViewController *)self engagementCountsForViewedSuggestedComplications];
    v13 = MEMORY[0x1E696AD98];
    intValue = [v11 intValue];

    v15 = [v13 numberWithInt:(intValue + 1)];
    suggestedComplication3 = [complicationCopy suggestedComplication];
    [engagementCountsForViewedSuggestedComplications2 setObject:v15 forKey:suggestedComplication3];
  }
}

- (void)inlineComplicationGalleryViewControllerDidFinish:(id)finish
{
  navigationController = [finish navigationController];
  presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (navigationController == presentedInlineComplicationsGallery)
  {
    [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:0];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];

    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
  }
}

- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent
{
  controllerCopy = controller;
  intentCopy = intent;
  if (self->_presentedComplicationWidgetConfigurationViewController == controllerCopy)
  {
    widget = [(PRComplicationDescriptor *)self->_widgetBeingConfigured widget];
    v15 = [widget widgetByReplacingIntent:intentCopy];

    v14 = [(PRComplicationDescriptor *)self->_widgetBeingConfigured copy];
    [v14 setWidget:v15];
    if (self->_widgetBeingConfigured == self->_selectedInlineComplication)
    {
      [(PREditingSceneViewController *)self setSelectedInlineComplication:v14];
    }

    else
    {
      v35 = v15;
      v36 = intentCopy;
      anyObject = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      widgetGridViewController = [anyObject widgetGridViewController];
      model = [widgetGridViewController model];

      anyObject2 = [(NSHashTable *)self->_complicationContainerViewControllers anyObject];
      sidebarWidgetGridViewController = [anyObject2 sidebarWidgetGridViewController];
      model2 = [sidebarWidgetGridViewController model];

      complicationDescriptors = [model complicationDescriptors];
      complicationDescriptors2 = [model2 complicationDescriptors];
      v27 = [complicationDescriptors indexOfObject:self->_widgetBeingConfigured];
      v28 = [complicationDescriptors2 indexOfObject:self->_widgetBeingConfigured];
      v29 = model;
      if (v27 != 0x7FFFFFFFFFFFFFFFLL || (v29 = model2, v28 != 0x7FFFFFFFFFFFFFFFLL))
      {
        uniqueIdentifier = [(PRComplicationDescriptor *)self->_widgetBeingConfigured uniqueIdentifier];
        [v29 updateIntent:v36 forWidgetWithIdentifier:uniqueIdentifier];
      }

      v15 = v35;
      intentCopy = v36;
    }

    widgetBeingConfigured = self->_widgetBeingConfigured;
    self->_widgetBeingConfigured = 0;

    presentedComplicationWidgetConfigurationViewController = self->_presentedComplicationWidgetConfigurationViewController;
    self->_presentedComplicationWidgetConfigurationViewController = 0;

    [(WFWidgetConfigurationViewController *)controllerCopy dismissViewControllerAnimated:1 completion:0];
    goto LABEL_16;
  }

  if (self->_presentedControlWidgetConfigurationViewController != controllerCopy)
  {
    goto LABEL_17;
  }

  quickActionIntentEditPosition = [(PREditingSceneViewController *)self quickActionIntentEditPosition];
  controlIntentBeingConfigured = [(PREditingSceneViewController *)self controlIntentBeingConfigured];
  v9 = objc_alloc(MEMORY[0x1E6994260]);
  identity = [controlIntentBeingConfigured identity];
  extensionIdentity = [identity extensionIdentity];
  identity2 = [controlIntentBeingConfigured identity];
  kind = [identity2 kind];
  v14 = [v9 initWithExtensionIdentity:extensionIdentity kind:kind intent:intentCopy];

  v15 = controlIntentBeingConfigured;
  v16 = [objc_alloc(MEMORY[0x1E6997278]) initWithIdentity:v14 type:objc_msgSend(controlIntentBeingConfigured size:{"type"), objc_msgSend(controlIntentBeingConfigured, "size")}];
  if (quickActionIntentEditPosition == 2)
  {
    quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [quickActionEditingViewController setTrailingControl:v16];
    goto LABEL_14;
  }

  if (quickActionIntentEditPosition == 1)
  {
    quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [quickActionEditingViewController setLeadingControl:v16];
LABEL_14:
  }

  controlIntentBeingConfigured = self->_controlIntentBeingConfigured;
  self->_controlIntentBeingConfigured = 0;

  presentedControlWidgetConfigurationViewController = self->_presentedControlWidgetConfigurationViewController;
  self->_presentedControlWidgetConfigurationViewController = 0;

  self->_quickActionIntentEditPosition = 0;
  [(WFWidgetConfigurationViewController *)controllerCopy dismissViewControllerAnimated:1 completion:0];

LABEL_16:
LABEL_17:
}

- (void)quickActionEditingViewController:(id)controller didTapAddForPosition:(int64_t)position
{
  controllerCopy = controller;
  v9 = controllerCopy;
  if (position == 2)
  {
    trailingControl = [controllerCopy trailingControl];
    goto LABEL_5;
  }

  if (position == 1)
  {
    trailingControl = [controllerCopy leadingControl];
LABEL_5:
    v8 = trailingControl;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  [(PREditingSceneViewController *)self setSelectedQuickActionPosition:position];
  [(PREditingSceneViewController *)self _presentControlsGalleryWithSelectedControl:v8];
}

- (void)quickActionEditingViewController:(id)controller didSetControl:(id)control forPosition:(int64_t)position
{
  controlCopy = control;
  v7 = [PRQuickActionControlConfiguration alloc];
  if (controlCopy)
  {
    identity = [controlCopy identity];
    v9 = -[PRQuickActionControlConfiguration initWithControlIdentity:type:](v7, "initWithControlIdentity:type:", identity, [controlCopy type]);
  }

  else
  {
    v9 = [(PRQuickActionControlConfiguration *)v7 initWithCategory:0];
  }

  [(PREditingSceneViewController *)self _updateQuickActionsPosterConfigurationForPosition:position withControlConfiguration:v9];
}

- (void)controlsGalleryViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  control = [resultCopy control];
  if (!errorCopy)
  {
    selectedQuickActionPosition = [(PREditingSceneViewController *)self selectedQuickActionPosition];
    if (selectedQuickActionPosition)
    {
      if (selectedQuickActionPosition == 2)
      {
        quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
        [quickActionEditingViewController setTrailingControl:control];
      }

      else
      {
        if (selectedQuickActionPosition != 1)
        {
LABEL_12:
          selectedQuickActionPosition2 = [(PREditingSceneViewController *)self selectedQuickActionPosition];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __88__PREditingSceneViewController_controlsGalleryViewController_didFinishWithResult_error___block_invoke;
          v20[3] = &unk_1E7845788;
          v21 = resultCopy;
          selfCopy = self;
          v23 = control;
          v24 = selectedQuickActionPosition2;
          [(PREditingSceneViewController *)self _dismissAnyPresentedComplicationGalleryAnimated:1 withCompletion:v20];

          v10 = v21;
          goto LABEL_13;
        }

        quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
        [quickActionEditingViewController setLeadingControl:control];
      }
    }

    else
    {
      quickActionEditingViewController = PRLogEditing();
      if (os_log_type_enabled(quickActionEditingViewController, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, quickActionEditingViewController, OS_LOG_TYPE_DEFAULT, "Do nothing since we finished with control from no position. But how did we get here?", buf, 2u);
      }
    }

    goto LABEL_12;
  }

  v10 = PRLogEditing();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(PREditingSceneViewController *)errorCopy controlsGalleryViewController:v10 didFinishWithResult:v11 error:v12, v13, v14, v15, v16];
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

- (void)forwardAppearanceNotificationName:(id)name
{
  v15 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = PRLogEditing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = nameCopy;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Forwarding appearance notification to extension: %{public}@", &v13, 0xCu);
  }

  isActive = [(FBScene *)self->super._scene isActive];
  v7 = PRLogEditing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:isActive];
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Scene active: %{public}@", &v13, 0xCu);
  }

  if (isActive)
  {
    v9 = [[PREditingForwardExtensionAppearanceNotificationAction alloc] initWithNotificationName:nameCopy];
    scene = self->super._scene;
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(FBScene *)scene sendActions:v11];
  }

  v12 = [nameCopy isEqualToString:*MEMORY[0x1E696A2D8]];
  if ((v12 & 1) != 0 || [nameCopy isEqualToString:*MEMORY[0x1E696A2C0]])
  {
    [(PREditingSceneViewController *)self setHostApplicationHasResignedActive:v12];
  }
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v9 = objc_opt_class();
  v10 = controllerCopy;
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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  presentedViewController = [v12 presentedViewController];
  if (userInterfaceIdiom == 1)
  {
    v16 = objc_opt_class();
    v17 = presentedViewController;
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
    selfCopy = self;
    [coordinatorCopy animateAlongsideTransition:v26 completion:0];

    goto LABEL_23;
  }

  v19 = objc_opt_class();
  v20 = presentedViewController;
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
    topViewController = [v23 topViewController];
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

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];

  if (presentedViewController == presentedComplicationsGallery)
  {
    [(PREditingSceneViewController *)self setPresentedComplicationsGallery:0];
LABEL_10:
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    goto LABEL_11;
  }

  presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (presentedViewController == presentedSidebarComplicationsGallery)
  {
    [(PREditingSceneViewController *)self setPresentedSidebarComplicationsGallery:0];
    goto LABEL_10;
  }

  presentedInlineComplicationsGallery = [(PREditingSceneViewController *)self presentedInlineComplicationsGallery];

  if (presentedViewController == presentedInlineComplicationsGallery)
  {
    [(PREditingSceneViewController *)self setPresentedInlineComplicationsGallery:0];
    goto LABEL_10;
  }

  presentedControlsGallery = [(PREditingSceneViewController *)self presentedControlsGallery];

  if (presentedViewController == presentedControlsGallery)
  {
    [(PREditingSceneViewController *)self setPresentedControlsGallery:0];
    [(PREditingSceneViewController *)self _updateSceneSettingsForPosterCoveredByModalPresentation];
    [(PREditingSceneViewController *)self _updatePresentationDismissalGestureView];
    [(PREditingSceneViewController *)self _updateAddComplicationsTapGestureAllowed];
    [(PREditingSceneViewController *)self setSelectedQuickActionPosition:0];
    quickActionEditingViewController = [(PREditingSceneViewController *)self quickActionEditingViewController];
    [quickActionEditingViewController setGalleryPresented:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [presentedViewController finishWithCurrentConfiguration];
    }
  }

LABEL_11:
  [(PREditingSceneViewController *)self _updateInlineComplicationVisibility];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  sidebarComplicationAddGestureView = [(PREditingSceneViewController *)self sidebarComplicationAddGestureView];

  if (view == sidebarComplicationAddGestureView)
  {
    _shouldAllowInlineComplicationTapGesture = [(PREditingSceneViewController *)self _shouldAllowAddComplicationsTapGestureForLocation:1];
LABEL_6:
    v9 = _shouldAllowInlineComplicationTapGesture;
    goto LABEL_7;
  }

  view2 = [beginCopy view];
  inlineComplicationGestureView = [(PREditingSceneViewController *)self inlineComplicationGestureView];

  if (view2 == inlineComplicationGestureView)
  {
    _shouldAllowInlineComplicationTapGesture = [(PREditingSceneViewController *)self _shouldAllowInlineComplicationTapGesture];
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
  presentedComplicationsGallery = [(PREditingSceneViewController *)self presentedComplicationsGallery];
  v4 = objc_opt_class();
  v5 = presentedComplicationsGallery;
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

  viewControllers = [v7 viewControllers];

  firstObject = [viewControllers firstObject];
  v10 = objc_opt_class();
  v11 = firstObject;
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

  addWidgetSheetConfigurationManager = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
  v15 = PRIconGridSizeClassSetForWidgetFamilyMask([addWidgetSheetConfigurationManager allowedWidgetFamilies]);

  addWidgetSheetConfigurationManager2 = [(PREditingSceneViewController *)self addWidgetSheetConfigurationManager];
  v19 = v15;
  v17 = [addWidgetSheetConfigurationManager2 applicationWidgetCollectionsForEditingViewController:self withAllowedSizeClasses:&v19 allowingNonStackableItems:0];
  v18 = v19;

  [v13 setApplicationWidgetCollections:v17];
}

- (id)addWidgetSheetViewController:(id)controller detailViewControllerForWidgetCollection:(id)collection
{
  v6 = MEMORY[0x1E69D4080];
  collectionCopy = collection;
  controllerCopy = controller;
  v9 = objc_alloc_init(v6);
  v10 = [v9 layoutForIconLocation:*MEMORY[0x1E69D4158]];
  [v10 iconImageInfo];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [objc_alloc(MEMORY[0x1E69D40A0]) initWithName:@"iconImages" iconImageInfo:{v12, v14, v16, v18}];
  presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (presentedSidebarComplicationsGallery == controllerCopy)
  {
    v21 = 3074;
  }

  else
  {
    v21 = 3072;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v24 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v25 = [PRComplicationGalleryDetailViewController alloc];
  listLayoutProvider = [(PREditingSceneViewController *)self listLayoutProvider];
  iconViewProvider = [(PREditingSceneViewController *)self iconViewProvider];
  v28 = [(SBHAddWidgetSheetViewControllerBase *)v25 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:v21 appCellIconImageCache:256 addWidgetSheetStyle:v19, v24];

  [(SBHAddWidgetSheetViewControllerBase *)v28 setDelegate:self];
  [(PRComplicationGalleryDetailViewController *)v28 setApplicationWidgetCollection:collectionCopy];

  [(PRComplicationGalleryDetailViewController *)v28 setShowsCloseButton:0];
  [(PRComplicationGalleryDetailViewController *)v28 setShowsBackgroundView:0];

  return v28;
}

- (id)galleryViewControllerForAddWidgetSheetViewController:(id)controller
{
  presentedSidebarComplicationsGallery = [(PREditingSceneViewController *)self presentedSidebarComplicationsGallery];

  if (presentedSidebarComplicationsGallery)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sidebarWidgetSuggestions = [(PREditingSceneViewController *)self sidebarWidgetSuggestions];
    v7 = [sidebarWidgetSuggestions objectForKeyedSubscript:*MEMORY[0x1E698AEA0]];
    [v5 bs_safeAddObject:v7];

    sidebarWidgetSuggestions2 = [(PREditingSceneViewController *)self sidebarWidgetSuggestions];
    v9 = [sidebarWidgetSuggestions2 objectForKeyedSubscript:*MEMORY[0x1E698AE90]];
    [v5 bs_safeAddObject:v9];

    sidebarWidgetSuggestions3 = [(PREditingSceneViewController *)self sidebarWidgetSuggestions];
    v11 = [sidebarWidgetSuggestions3 objectForKeyedSubscript:*MEMORY[0x1E698AE98]];
    [v5 bs_safeAddObject:v11];

    graphicComplicationSuggestionSets = [v5 copy];
  }

  else
  {
    graphicComplicationSuggestionSets = [(PREditingSceneViewController *)self graphicComplicationSuggestionSets];
  }

  v13 = [PRWidgetSuggestionsViewController alloc];
  listLayoutProvider = [(PREditingSceneViewController *)self listLayoutProvider];
  iconViewProvider = [(PREditingSceneViewController *)self iconViewProvider];
  v16 = [(PRWidgetSuggestionsViewController *)v13 initWithSuggestionSets:graphicComplicationSuggestionSets listLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider widgetDragHandler:self usingSidebarLayout:presentedSidebarComplicationsGallery != 0];

  [(PRWidgetSuggestionsViewController *)v16 setDelegate:self];

  return v16;
}

- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class
{
  itemCopy = item;
  v7 = objc_opt_class();
  v8 = itemCopy;
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
    v11 = [(PREditingSceneViewController *)self widgetIconForDescriptor:v10 sizeClass:class];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class
{
  v5 = MEMORY[0x1E69D4118];
  descriptorCopy = descriptor;
  v7 = [v5 alloc];
  pr_widgetDomain = [MEMORY[0x1E69D4088] pr_widgetDomain];
  v9 = [v7 initWithCHSWidgetDescriptor:descriptorCopy inDomain:pr_widgetDomain];

  v10 = PRIconGridSizeClassForWidgetFamily(class);
  [v9 setGridSizeClass:v10];

  return v9;
}

- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class
{
  v5 = MEMORY[0x1E69D4118];
  descriptorsCopy = descriptors;
  v7 = [v5 alloc];
  pr_widgetDomain = [MEMORY[0x1E69D4088] pr_widgetDomain];
  v9 = [v7 initWithCHSWidgetDescriptors:descriptorsCopy inDomain:pr_widgetDomain];

  v10 = PRIconGridSizeClassForWidgetFamily(class);
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
    view = [(PREditingSceneViewController *)self view];
    [view addSubview:self->_recycledViewsContainerView];

    recycledViewsContainerView = self->_recycledViewsContainerView;
  }

  return recycledViewsContainerView;
}

- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconModel = [(PREditingSceneViewController *)self iconModel];
  v7 = [iconModel applicationIconForBundleIdentifier:identifierCopy];

  application = [v7 application];

  if (objc_opt_respondsToSelector())
  {
    vendorName = [application vendorName];
  }

  else
  {
    vendorName = 0;
  }

  if (!-[__CFString length](vendorName, "length") && (objc_opt_respondsToSelector() & 1) != 0 && [application isAppleApplication])
  {

    vendorName = @"Apple";
  }

  return vendorName;
}

- (id)addWidgetSheetConfigurationManager:(id)manager containerBundleIdentiferForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  extensionIdentity = [descriptorCopy extensionIdentity];
  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];

  extensionIdentity2 = [descriptorCopy extensionIdentity];

  extensionBundleIdentifier = [extensionIdentity2 extensionBundleIdentifier];

  v9 = [PRWidgetGridModel effectiveContainerBundleIdentifierForContainerBundleIdentifier:containerBundleIdentifier extensionBundleIdentifier:extensionBundleIdentifier];

  return v9;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PREditingSceneViewController_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_1E7843070;
  v8 = subscriptionCopy;
  selfCopy = self;
  v6 = subscriptionCopy;
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

- (void)setLastValidDelegateTopButtonLayout:(PREditingSceneViewControllerTopButtonLayout *)layout
{
  size = layout->trailingTopButtonFrame.size;
  origin = layout->leadingTopButtonFrame.origin;
  v4 = layout->leadingTopButtonFrame.size;
  self->_lastValidDelegateTopButtonLayout.trailingTopButtonFrame.origin = layout->trailingTopButtonFrame.origin;
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