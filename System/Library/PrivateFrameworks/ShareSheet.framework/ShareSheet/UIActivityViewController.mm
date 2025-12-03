@interface UIActivityViewController
+ (id)collaborationModeRestrictionFromActivityItemsConfiguration:(id)configuration collaborationMode:(int64_t)mode;
+ (int64_t)_defaultPlatformPresentationStyle;
- (BOOL)_allowsStylingSheetsAsCards;
- (BOOL)_requiresCustomPresentationController;
- (BOOL)isCollaborationSelected;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (NSString)sessionIdentifier;
- (UIActivity)activity;
- (UIActivityViewController)initWithActivityItems:(NSArray *)activityItems applicationActivities:(NSArray *)applicationActivities;
- (UIActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities peopleSuggestionBundleIds:(id)ids;
- (UIActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities shouldSuggestFamilyMembers:(BOOL)members;
- (UIActivityViewController)initWithActivityItemsConfiguration:(id)activityItemsConfiguration;
- (UIActivityViewController)initWithAssetIdentifiers:(id)identifiers activityItems:(id)items applicationActivities:(id)activities;
- (UIActivityViewController)initWithUserDefaults:(id)defaults userDefaultsIdentifier:(id)identifier applicationActivities:(id)activities;
- (UIActivityViewControllerAirDropDelegate)airDropDelegate;
- (UIActivityViewControllerCollaborationDelegate)collaborationDelegate;
- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate;
- (UIActivityViewControllerPhotosDelegate)photosDelegate;
- (_UIRemoteSheet)_remoteSheet;
- (double)_displayHeight;
- (double)customViewControllerSectionHeight;
- (double)customViewControllerVerticalInset;
- (id)_createContextFromCurrentState;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)activityItemsConfiguration;
- (void)__viewControllerWillBePresented:(BOOL)presented;
- (void)_cancel;
- (void)_createMainPresenterIfNeeded;
- (void)_delayPresentationIfNeeded;
- (void)_didResignContentViewControllerOfPopover:(id)popover;
- (void)_endDelayingPresentation;
- (void)_executeActivity;
- (void)_findSupportedActivitiesWithCompletionHandler:(id)handler;
- (void)_performActivity:(id)activity;
- (void)_performActivityWithType:(id)type completionHandler:(id)handler;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)_presentationControllerDidDismiss:(id)dismiss;
- (void)_primeExtensionDiscovery;
- (void)_readyToInteract;
- (void)_reloadActivity:(id)activity;
- (void)_setSelectedAssetIdentifiers:(id)identifiers;
- (void)_updateActivityItems:(id)items;
- (void)_updateActivityItems:(id)items applicationActivities:(id)activities;
- (void)_updateSheetPresentationController:(id)controller;
- (void)_viewControllerPresentationDidInitiate;
- (void)dealloc;
- (void)mainPresenter:(id)presenter didCompleteActivity:(id)activity withSuccess:(BOOL)success returnedItems:(id)items error:(id)error;
- (void)mainPresenter:(id)presenter willCompleteActivity:(id)activity withSuccess:(BOOL)success;
- (void)mainPresenterIsReadyToInteract:(id)interact;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler;
- (void)setAllowsEmbedding:(BOOL)embedding;
- (void)setAllowsProminentActivity:(BOOL)allowsProminentActivity;
- (void)setCollaborationMode:(int64_t)mode;
- (void)setCustomViewControllerSectionHeight:(double)height;
- (void)setCustomViewControllerVerticalInset:(double)inset;
- (void)setIsContentManaged:(BOOL)managed;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setPhotosCarouselViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIActivityViewController

- (UIActivityViewControllerCollaborationDelegate)collaborationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationDelegate);

  return WeakRetained;
}

+ (int64_t)_defaultPlatformPresentationStyle
{
  if (_ShareSheetPlatformPrefersPopover())
  {
    return 7;
  }

  if ((dyld_program_sdk_at_least() & 1) != 0 || [self isMemberOfClass:objc_opt_class()])
  {
    return 2;
  }

  return 5;
}

- (BOOL)_requiresCustomPresentationController
{
  modalPresentationStyle = [(UIActivityViewController *)self modalPresentationStyle];
  LOBYTE(v4) = modalPresentationStyle == 2;
  if (_ShareSheetSolariumEnabled())
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (modalPresentationStyle == 2)
    {
      LOBYTE(v4) = 1;
    }

    else if (userInterfaceIdiom)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      return [(UIActivityViewController *)self modalPresentationStyle]== 7;
    }
  }

  return v4;
}

- (id)_createContextFromCurrentState
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [SHSheetContext alloc];
  activityItems = [(UIActivityViewController *)self activityItems];
  v5 = [(SHSheetContext *)v3 initWithActivityViewController:self activityItems:activityItems];

  applicationActivities = [(UIActivityViewController *)self applicationActivities];
  [(SHSheetContext *)v5 setApplicationActivities:applicationActivities];

  excludedActivityTypes = [(UIActivityViewController *)self excludedActivityTypes];
  [(SHSheetContext *)v5 setExcludedActivityTypes:excludedActivityTypes];

  includedActivityTypes = [(UIActivityViewController *)self includedActivityTypes];
  [(SHSheetContext *)v5 setIncludedActivityTypes:includedActivityTypes];

  [(SHSheetContext *)v5 setExcludedActivityCategories:[(UIActivityViewController *)self excludedActivityCategories]];
  activityTypeOrder = [(UIActivityViewController *)self activityTypeOrder];
  [(SHSheetContext *)v5 setActivityTypeOrder:activityTypeOrder];

  [(SHSheetContext *)v5 setShowKeyboardAutomatically:[(UIActivityViewController *)self showKeyboardAutomatically]];
  [(SHSheetContext *)v5 setWhitelistActionActivitiesOnly:[(UIActivityViewController *)self whitelistActionActivitiesOnly]];
  [(SHSheetContext *)v5 setSharingStyle:[(UIActivityViewController *)self sharingStyle]];
  heroActionActivityTypes = [(UIActivityViewController *)self heroActionActivityTypes];
  [(SHSheetContext *)v5 setHeroActionActivityTypes:heroActionActivityTypes];

  [(SHSheetContext *)v5 setShowHeroActionsHorizontally:[(UIActivityViewController *)self showHeroActionsHorizontally]];
  [(SHSheetContext *)v5 setIsContentManaged:[(UIActivityViewController *)self isContentManaged]];
  [(SHSheetContext *)v5 setAllowsEmbedding:[(UIActivityViewController *)self allowsEmbedding]];
  objectManipulationDelegate = [(UIActivityViewController *)self objectManipulationDelegate];
  [(SHSheetContext *)v5 setObjectManipulationDelegate:objectManipulationDelegate];

  [(SHSheetContext *)v5 setShouldSuggestFamilyMembers:[(UIActivityViewController *)self shouldSuggestFamilyMembers]];
  [(SHSheetContext *)v5 setAllowsProminentActivity:[(UIActivityViewController *)self allowsProminentActivity]];
  photosHeaderMetadata = [(UIActivityViewController *)self photosHeaderMetadata];
  [(SHSheetContext *)v5 setPhotosHeaderMetadata:photosHeaderMetadata];

  [(SHSheetContext *)v5 setConfigureForCloudSharing:[(UIActivityViewController *)self configureForCloudSharing]];
  [(SHSheetContext *)v5 setConfigureForPhotosEdit:[(UIActivityViewController *)self configureForPhotosEdit]];
  [(SHSheetContext *)v5 setHideHeaderView:[(UIActivityViewController *)self hideHeaderView]];
  [(SHSheetContext *)v5 setHideNavigationBar:[(UIActivityViewController *)self hideNavigationBar]];
  [(SHSheetContext *)v5 setHideSuggestions:[(UIActivityViewController *)self hideSuggestions]];
  topContentSectionText = [(UIActivityViewController *)self topContentSectionText];
  [(SHSheetContext *)v5 setTopContentSectionText:topContentSectionText];

  _selectedAssetIdentifiers = [(UIActivityViewController *)self _selectedAssetIdentifiers];
  [(SHSheetContext *)v5 setSelectedAssetIdentifiers:_selectedAssetIdentifiers];

  peopleSuggestionBundleIds = [(UIActivityViewController *)self peopleSuggestionBundleIds];
  [(SHSheetContext *)v5 setPeopleSuggestionBundleIds:peopleSuggestionBundleIds];

  cachedActivityItemsConfiguration = [(UIActivityViewController *)self cachedActivityItemsConfiguration];
  v17 = [UIActivityViewController collaborationModeRestrictionFromActivityItemsConfiguration:cachedActivityItemsConfiguration collaborationMode:[(UIActivityViewController *)self collaborationMode]];
  [(SHSheetContext *)v5 setCollaborationModeRestriction:v17];

  managedFileURL = [(UIActivityViewController *)self managedFileURL];
  [(SHSheetContext *)v5 setManagedFileURL:managedFileURL];

  [(SHSheetContext *)v5 setShowCustomScene:[(UIActivityViewController *)self showCustomScene]];
  testingReferenceSnapshot = [(UIActivityViewController *)self testingReferenceSnapshot];
  [(SHSheetContext *)v5 setTestingReferenceSnapshot:testingReferenceSnapshot];

  snapshotHandler = [(UIActivityViewController *)self snapshotHandler];
  [(SHSheetContext *)v5 setSnapshotHandler:snapshotHandler];

  v21 = share_sheet_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v5;
    _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "UIAVC: create context:%@", &v23, 0xCu);
  }

  return v5;
}

- (void)_viewControllerPresentationDidInitiate
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UIAVC: viewControllerPresnetationDidInitiate", v6, 2u);
  }

  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  useRemoteUIService = [mainPresenter useRemoteUIService];

  if (useRemoteUIService)
  {
    [(UIActivityViewController *)self loadViewIfNeeded];
  }

  [(UIActivityViewController *)self _delayPresentationIfNeeded];
}

- (void)_createMainPresenterIfNeeded
{
  if (!self->_mainPresenter)
  {
    _createContextFromCurrentState = [(UIActivityViewController *)self _createContextFromCurrentState];
    v3 = [SHSheetFactory createMainPresenterWithContext:_createContextFromCurrentState];
    mainPresenter = self->_mainPresenter;
    self->_mainPresenter = v3;

    [(SHSheetPresenter *)self->_mainPresenter setDelegate:self];
  }
}

uint64_t __54__UIActivityViewController__delayPresentationIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromBOOL();
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Presentation delay cancellation handler didTimeout: %@", &v10, 0xCu);
  }

  if (a2)
  {
    v6 = share_sheet_log();
    v7 = share_sheet_log();
    v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v6, OS_SIGNPOST_EVENT, v8, "ShareSheetDelayPresentationDidTimeout", &unk_18B437ED2, &v10, 2u);
    }
  }

  return a2;
}

- (void)_delayPresentationIfNeeded
{
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  if ([mainPresenter useRemoteUIService] && !-[UIActivityViewController didStartDelayingPresentation](self, "didStartDelayingPresentation"))
  {
    didEndDelayingPresentation = [(UIActivityViewController *)self didEndDelayingPresentation];

    if (!didEndDelayingPresentation)
    {
      [(UIActivityViewController *)self setDidStartDelayingPresentation:1];
      v4 = share_sheet_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Beginning presentation delay", buf, 2u);
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__UIActivityViewController__delayPresentationIfNeeded__block_invoke;
      v9[3] = &unk_1E71FA0C8;
      v9[4] = self;
      [(UIActivityViewController *)self _beginDelayingPresentation:v9 cancellationHandler:3.0];
      v5 = share_sheet_log();
      v6 = share_sheet_log();
      v7 = os_signpost_id_make_with_pointer(v6, self);

      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PresentShareSheetDelayed", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  else
  {
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v4 viewSafeAreaInsetsDidChange];
  view = [(UIActivityViewController *)self view];
  [view setNeedsLayout];
}

- (UIActivityViewController)initWithActivityItemsConfiguration:(id)activityItemsConfiguration
{
  v4 = activityItemsConfiguration;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 _activityItems], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = MEMORY[0x1E69DC640];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __101__UIActivityViewController_UIActivityItemsConfiguration_Private__initWithActivityItemsConfiguration___block_invoke;
    v11[3] = &unk_1E71FA098;
    v12 = v4;
    v5 = [v6 _itemsForSystemSharingFromActivityItemsConfiguration:v12 wrapperBlock:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    applicationActivitiesForActivityItemsConfiguration = [v4 applicationActivitiesForActivityItemsConfiguration];
  }

  else
  {
    applicationActivitiesForActivityItemsConfiguration = 0;
  }

  v8 = [(UIActivityViewController *)self initWithActivityItems:v5 applicationActivities:applicationActivitiesForActivityItemsConfiguration];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      _excludedActivityTypes = [v4 _excludedActivityTypes];
      [(UIActivityViewController *)v8 setExcludedActivityTypes:_excludedActivityTypes];
    }

    [(UIActivityViewController *)v8 setCachedActivityItemsConfiguration:v4];
  }

  return v8;
}

_UIActivityItemsConfigurationActivityItemProvider *__101__UIActivityViewController_UIActivityItemsConfiguration_Private__initWithActivityItemsConfiguration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[_UIActivityItemsConfigurationActivityItemProvider alloc] initWithActivityItemsConfiguration:*(a1 + 32) itemAtSourceIndex:a3];

  return v3;
}

- (UIActivityViewController)initWithAssetIdentifiers:(id)identifiers activityItems:(id)items applicationActivities:(id)activities
{
  identifiersCopy = identifiers;
  v10 = [(UIActivityViewController *)self initWithActivityItems:items applicationActivities:activities];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedAssetIdentifiers, identifiers);
  }

  return v11;
}

- (UIActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities shouldSuggestFamilyMembers:(BOOL)members
{
  result = [(UIActivityViewController *)self initWithActivityItems:items applicationActivities:activities];
  if (result)
  {
    result->_shouldSuggestFamilyMembers = members;
  }

  return result;
}

- (UIActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities peopleSuggestionBundleIds:(id)ids
{
  idsCopy = ids;
  v9 = [(UIActivityViewController *)self initWithActivityItems:items applicationActivities:activities];
  if (v9)
  {
    v10 = [idsCopy copy];
    peopleSuggestionBundleIds = v9->_peopleSuggestionBundleIds;
    v9->_peopleSuggestionBundleIds = v10;
  }

  return v9;
}

- (UIActivityViewController)initWithUserDefaults:(id)defaults userDefaultsIdentifier:(id)identifier applicationActivities:(id)activities
{
  defaultsCopy = defaults;
  identifierCopy = identifier;
  v11 = [(UIActivityViewController *)self initWithActivityItems:MEMORY[0x1E695E0F0] applicationActivities:activities];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userDefaults, defaults);
    v13 = [identifierCopy copy];
    userDefaultsIdentifier = v12->_userDefaultsIdentifier;
    v12->_userDefaultsIdentifier = v13;
  }

  return v12;
}

- (UIActivityViewController)initWithActivityItems:(NSArray *)activityItems applicationActivities:(NSArray *)applicationActivities
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = activityItems;
  v9 = applicationActivities;
  v26.receiver = self;
  v26.super_class = UIActivityViewController;
  v10 = [(UIActivityViewController *)&v26 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      if (v9)
      {
        v14 = MEMORY[0x1E696AEC0];
        v4 = [(NSArray *)v9 valueForKeyPath:@"activityType"];
        v5 = [v4 componentsJoinedByString:{@", "}];
        v15 = [v14 stringWithFormat:@", applicationActivities (%@)", v5];
      }

      else
      {
        v15 = &stru_1EFE999E0;
      }

      *buf = 138412802;
      v28 = v13;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "%@: initialized with activityItems (%@)%@", buf, 0x20u);
      if (v9)
      {
      }
    }

    v10->_creationTimestamp = mach_continuous_time();
    v16 = [(NSArray *)v8 copy];
    v17 = v10->_activityItems;
    v10->_activityItems = v16;

    v18 = [(NSArray *)v9 copy];
    v19 = v10->_applicationActivities;
    v10->_applicationActivities = v18;

    v10->_allowsProminentActivity = 1;
    v10->_collaborationMode = 6;
    v20 = share_sheet_log();
    v21 = share_sheet_log();
    v22 = os_signpost_id_make_with_pointer(v21, v10);

    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "InitializeUIAVC", " enableTelemetry=YES ", buf, 2u);
    }

    [(UIActivityViewController *)v10 setModalPresentationStyle:+[UIActivityViewController _defaultPlatformPresentationStyle]];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__UIActivityViewController_initWithActivityItems_applicationActivities___block_invoke;
    block[3] = &unk_1E71F9510;
    v25 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v10;
}

- (void)dealloc
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating UIAVC", buf, 2u);
  }

  [_UIActivityItemMapping _clearActivityItems:self];
  v4.receiver = self;
  v4.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v4 dealloc];
}

- (_UIRemoteSheet)_remoteSheet
{
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  remoteSheet = [mainPresenter remoteSheet];

  return remoteSheet;
}

- (UIActivity)activity
{
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  currentActivity = [mainPresenter currentActivity];

  return currentActivity;
}

- (void)setAllowsEmbedding:(BOOL)embedding
{
  if (self->_allowsEmbedding != embedding)
  {
    self->_allowsEmbedding = embedding;
  }
}

- (void)setCustomViewControllerVerticalInset:(double)inset
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:inset];
  [(UIActivityViewController *)self setCustomViewControllerVerticalInsetWrapper:v4];

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter updateCustomView];
}

- (double)customViewControllerVerticalInset
{
  customViewControllerVerticalInsetWrapper = [(UIActivityViewController *)self customViewControllerVerticalInsetWrapper];
  [customViewControllerVerticalInsetWrapper floatValue];
  v4 = v3;

  return v4;
}

- (void)setCustomViewControllerSectionHeight:(double)height
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  [(UIActivityViewController *)self setCustomViewControllerSectionHeightWrapper:v4];

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter updateCustomView];
}

- (double)customViewControllerSectionHeight
{
  customViewControllerSectionHeightWrapper = [(UIActivityViewController *)self customViewControllerSectionHeightWrapper];
  [customViewControllerSectionHeightWrapper floatValue];
  v4 = v3;

  return v4;
}

- (void)setPhotosCarouselViewController:(id)controller
{
  controllerCopy = controller;
  if ((_ShareSheetCanUseCustomViewController() & 1) == 0)
  {
    mainPresenter2 = share_sheet_log();
    if (os_log_type_enabled(mainPresenter2, OS_LOG_TYPE_ERROR))
    {
      [(UIActivityViewController *)controllerCopy setPhotosCarouselViewController:mainPresenter2];
    }

    goto LABEL_9;
  }

  if (self->_photosCarouselViewController != controllerCopy)
  {
    objc_storeStrong(&self->_photosCarouselViewController, controller);
    presentationController = [(UIActivityViewController *)self presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentationController2 = [(UIActivityViewController *)self presentationController];
      [(UIActivityViewController *)self _updateSheetPresentationController:presentationController2];
      mainPresenter = [(UIActivityViewController *)self mainPresenter];

      if (mainPresenter)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __60__UIActivityViewController_setPhotosCarouselViewController___block_invoke;
        v11[3] = &unk_1E71F9510;
        v11[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:0.5];
        goto LABEL_10;
      }
    }

    mainPresenter2 = [(UIActivityViewController *)self mainPresenter];
    [mainPresenter2 updateCustomView];
LABEL_9:
  }

LABEL_10:
}

void __60__UIActivityViewController_setPhotosCarouselViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _window];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) mainPresenter];
  [v3 updateCustomView];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  if (![(UIActivityViewController *)self allowsEmbedding]&& ![(UIActivityViewController *)self allowsCustomPresentationStyle]&& style != 2 && style != 7)
  {
    style = +[UIActivityViewController _defaultPlatformPresentationStyle];
  }

  if (_ShareSheetPlatformPrefersPopover())
  {
    if (style == 2)
    {
      v5 = _ShareSheetFormSheetSize();
    }

    else
    {
      v5 = _ShareSheetPopoverSize();
    }
  }

  else
  {
    v5 = _ShareSheetDefaultSheetSize();
  }

  [(UIActivityViewController *)self setPreferredContentSize:v5];
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 setModalPresentationStyle:style];
}

- (void)setIsContentManaged:(BOOL)managed
{
  if (self->_isContentManaged != managed)
  {
    managedCopy = managed;
    self->_isContentManaged = managed;
    mainPresenter = [(UIActivityViewController *)self mainPresenter];
    [mainPresenter setIsContentManaged:managedCopy];
  }
}

- (void)setAllowsProminentActivity:(BOOL)allowsProminentActivity
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_allowsProminentActivity != allowsProminentActivity)
  {
    v3 = allowsProminentActivity;
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "no";
      if (v3)
      {
        v6 = "yes";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "SharePlay: Setting allowsProminentActivity to %s", &v7, 0xCu);
    }

    self->_allowsProminentActivity = v3;
  }
}

- (NSString)sessionIdentifier
{
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  sessionIdentifier = [mainPresenter sessionIdentifier];

  return sessionIdentifier;
}

- (id)activityItemsConfiguration
{
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  isCollaborationSelected = [mainPresenter isCollaborationSelected];

  if (isCollaborationSelected)
  {
    clientActivityItemsConfigurationSource = [(UIActivityViewController *)self clientActivityItemsConfigurationSource];
    [clientActivityItemsConfigurationSource activityItemsConfiguration];
  }

  else
  {
    clientActivityItemsConfigurationSource = [(UIActivityViewController *)self mainPresenter];
    [clientActivityItemsConfigurationSource createActivityItemsConfiguration];
  }
  v6 = ;

  return v6;
}

+ (id)collaborationModeRestrictionFromActivityItemsConfiguration:(id)configuration collaborationMode:(int64_t)mode
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  switch(mode)
  {
    case 6:
      if (configurationCopy)
      {
        v10 = [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"collaborationModeRestrictions" expectedClass:objc_opt_class() activityItemsConfiguration:configurationCopy itemAtSourceIndex:0];
        firstObject = [v10 firstObject];

        goto LABEL_10;
      }

      break;
    case 4:
      v7 = [UIActivityCollaborationModeRestriction alloc];
      v8 = 0;
      goto LABEL_6;
    case 2:
      v7 = [UIActivityCollaborationModeRestriction alloc];
      v8 = 1;
LABEL_6:
      firstObject = [(UIActivityCollaborationModeRestriction *)v7 initWithDisabledMode:v8];
      goto LABEL_10;
  }

  firstObject = 0;
LABEL_10:

  return firstObject;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 viewDidLoad];
  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter prepareViewIfNeeded];

  mainPresenter2 = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter2 updateCustomView];

  view = [(UIActivityViewController *)self view];
  [view setTintAdjustmentMode:1];

  if ([(UIActivityViewController *)self allowsEmbedding])
  {
    [(UIActivityViewController *)self setModalPresentationStyle:-1];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v7 viewIsAppearing:appearing];
  view = [(UIActivityViewController *)self view];
  window = [view window];

  if (window)
  {
    mainPresenter = [(UIActivityViewController *)self mainPresenter];
    [mainPresenter present];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerSizeWillChange:self];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  changeCopy = change;
  [(UIActivityViewController *)&v6 traitCollectionDidChange:changeCopy];
  v5 = [(UIActivityViewController *)self mainPresenter:v6.receiver];
  [v5 activityViewController:self traitCollectionDidChange:changeCopy];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v12 viewDidLayoutSubviews];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    popoverPresentationController = [(UIActivityViewController *)self popoverPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      popoverPresentationController2 = [(UIActivityViewController *)self popoverPresentationController];
      if ([popoverPresentationController2 isCompactSize])
      {
        SFUIShareSheetPopoverBackgroundViewClass = getSFUIShareSheetPopoverBackgroundViewClass();
        view = [(UIActivityViewController *)self view];
        [(objc_class *)SFUIShareSheetPopoverBackgroundViewClass effectiveBottomRadiusForView:view];
        v11 = v10;

        if (v11 > 0.0)
        {
          [popoverPresentationController2 setCompactCornerRadius:v11];
        }
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "UIAVC: view will appear", buf, 2u);
  }

  v16[0] = @"Process-ID";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v17[0] = v6;
  v17[1] = &unk_1EFEC96C8;
  v16[1] = @"Status";
  v16[2] = @"Timestamp";
  date = [MEMORY[0x1E695DF00] date];
  v17[2] = date;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  softLinkPLLogRegisteredEvent(23, @"UIKit-Activity", v8, 0);
  if (![(UIActivityViewController *)self viewWillAppearTimestamp])
  {
    [(UIActivityViewController *)self setViewWillAppearTimestamp:mach_continuous_time()];
  }

  presentationController = [(UIActivityViewController *)self presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = presentationController;
    v11 = _ShareSheetSolariumEnabled();
    v12 = 1;
    [v10 _setIgnoresKeyboardNotifications:1];
    [v10 _setBackgroundBlurDisabled:v11 ^ 1u];
    if (([v10 _centersPopoverIfSourceViewNotSet] & 1) == 0)
    {
      v12 = dyld_program_sdk_at_least() ^ 1;
    }

    [v10 _setCentersPopoverIfSourceViewNotSet:v12];
  }

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerWillAppear:self];

  v14.receiver = self;
  v14.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v14 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v11 viewDidAppear:appear];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC: view did appear", v10, 2u);
  }

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerDidAppear:self];

  view = [(UIActivityViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  activityItemsConfigurationSource = [windowScene activityItemsConfigurationSource];
  [(UIActivityViewController *)self setClientActivityItemsConfigurationSource:activityItemsConfigurationSource];

  [windowScene setActivityItemsConfigurationSource:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v16[3] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v14 viewWillDisappear:disappear];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC: view will disappear", v13, 2u);
  }

  v15[0] = @"Process-ID";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v16[0] = v5;
  v16[1] = &unk_1EFEC96E0;
  v15[1] = @"Status";
  v15[2] = @"Timestamp";
  date = [MEMORY[0x1E695DF00] date];
  v16[2] = date;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  softLinkPLLogRegisteredEvent(23, @"UIKit-Activity", v7, 0);
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerWillDisappear:self];

  view = [(UIActivityViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  clientActivityItemsConfigurationSource = [(UIActivityViewController *)self clientActivityItemsConfigurationSource];
  [windowScene setActivityItemsConfigurationSource:clientActivityItemsConfigurationSource];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v7 viewDidDisappear:disappear];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC: view did disappear", v6, 2u);
  }

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerDidDisappear:self];

  [(UIActivityViewController *)self setDidStartDelayingPresentation:0];
  [(UIActivityViewController *)self setDidEndDelayingPresentation:0];
  [(UIActivityViewController *)self setClientAttemptedInitialPresentationOrEmbeddingTimestamp:0];
  [(UIActivityViewController *)self setViewWillAppearTimestamp:0];
}

- (void)_readyToInteract
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UIAVC: ready to interact", buf, 2u);
  }

  _shareSheetReadyToInteractHandler = [(UIActivityViewController *)self _shareSheetReadyToInteractHandler];
  [(UIActivityViewController *)self _setShareSheetReadyToInteractHandler:0];
  v5 = *MEMORY[0x1E69DDA98];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__UIActivityViewController__readyToInteract__block_invoke;
  v7[3] = &unk_1E71FA0F0;
  v7[4] = self;
  v8 = _shareSheetReadyToInteractHandler;
  v6 = _shareSheetReadyToInteractHandler;
  [v5 _performBlockAfterCATransactionCommits:v7];
}

uint64_t __44__UIActivityViewController__readyToInteract__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setReadyToInteractTimestamp:mach_continuous_time()];
  if ([*(a1 + 32) clientAttemptedInitialPresentationOrEmbeddingTimestamp])
  {
    v2 = share_sheet_log();
    if (os_signpost_enabled(v2))
    {
      v3 = [*(a1 + 32) clientAttemptedInitialPresentationOrEmbeddingTimestamp];
      v7 = 134349056;
      v8 = v3;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ShareSheetLoad", "%{public, signpost.description:begin_time}llu", &v7, 0xCu);
    }

    v4 = share_sheet_log();
    if (os_signpost_enabled(v4))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ShareSheetLoad", &unk_18B437ED2, &v7, 2u);
    }

    v5 = share_sheet_log();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InitialContentUpdate", &unk_18B437ED2, &v7, 2u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_endDelayingPresentation
{
  if (![(UIActivityViewController *)self didEndDelayingPresentation])
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Ending presentation delay", buf, 2u);
    }

    [(UIActivityViewController *)self setDidEndDelayingPresentation:1];
    v4 = share_sheet_log();
    v5 = share_sheet_log();
    v6 = os_signpost_id_make_with_pointer(v5, self);

    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_END, v6, "PresentShareSheetDelayed", " enableTelemetry=YES ", buf, 2u);
    }

    v7.receiver = self;
    v7.super_class = UIActivityViewController;
    [(UIActivityViewController *)&v7 _endDelayingPresentation];
  }
}

- (void)__viewControllerWillBePresented:(BOOL)presented
{
  v9.receiver = self;
  v9.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v9 __viewControllerWillBePresented:presented];
  if (![(UIActivityViewController *)self clientAttemptedInitialPresentationOrEmbeddingTimestamp])
  {
    [(UIActivityViewController *)self setClientAttemptedInitialPresentationOrEmbeddingTimestamp:mach_continuous_time()];
    v4 = share_sheet_log();
    v5 = share_sheet_log();
    v6 = os_signpost_id_make_with_pointer(v5, self);

    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PresentShareSheet", " enableTelemetry=YES ", v8, 2u);
    }
  }

  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerWillBePresented:self];
}

- (double)_displayHeight
{
  if (![(UIActivityViewController *)self clientAttemptedInitialPresentationOrEmbeddingTimestamp])
  {
    [(UIActivityViewController *)self setClientAttemptedInitialPresentationOrEmbeddingTimestamp:mach_continuous_time()];
  }

  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerWillBeEmbedded:self];

  [(UIActivityViewController *)self preferredContentSize];
  return v4;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return orientation != 2 || (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIActivityViewController *)self _updateSheetPresentationController:controllerCopy];
  }
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  NSClassFromString(&cfstr_Puactivityview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (!_ShareSheetSolariumEnabled() || (isKindOfClass & 1) != 0)
  {
    goto LABEL_7;
  }

  customViewController = [(UIActivityViewController *)self customViewController];
  if (customViewController)
  {

LABEL_7:
    v11 = [objc_alloc(MEMORY[0x1E69DD4F0]) initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
    [(UIActivityViewController *)self _updateSheetPresentationController:v11];
    goto LABEL_8;
  }

  if ([(UIActivityViewController *)self modalPresentationStyle]!= 7)
  {
    goto LABEL_7;
  }

  v11 = [[_UIActivityViewControllerPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (void)_updateSheetPresentationController:(id)controller
{
  v46[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy)
  {
    presentationController = [(UIActivityViewController *)self presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      controllerCopy = 0;
      goto LABEL_20;
    }

    controllerCopy = [(UIActivityViewController *)self presentationController];
  }

  [controllerCopy _setShouldDismissWhenTappedOutside:1];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    v11 = v10;
    v13 = v12;

    customViewController = [(UIActivityViewController *)self customViewController];
    if (customViewController)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11 != 320.0 || v13 != 568.0;
    }

    [controllerCopy _setWantsBottomAttachedInCompactHeight:v15];

    [controllerCopy _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
    includedActivityTypes = [(UIActivityViewController *)self includedActivityTypes];
    if ([includedActivityTypes containsObject:@"com.apple.UIKit.activity.AirDrop"])
    {
      includedActivityTypes2 = [(UIActivityViewController *)self includedActivityTypes];
      v18 = [includedActivityTypes2 count] == 1;
    }

    else
    {
      v18 = 0;
    }

    traitCollection = [(UIActivityViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {

LABEL_17:
      _largeDetent = [MEMORY[0x1E69DD6F8] _largeDetent];
      v46[0] = _largeDetent;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v46;
LABEL_18:
      _largeDetent2 = [v23 arrayWithObjects:v24 count:1];
      [controllerCopy _setDetents:_largeDetent2];
LABEL_19:

      goto LABEL_20;
    }

    customViewController2 = [(UIActivityViewController *)self customViewController];

    if (customViewController2)
    {
      goto LABEL_17;
    }

    if (v18)
    {
      goto LABEL_20;
    }

    customDetent = [(UIActivityViewController *)self customDetent];
    v27 = customDetent;
    if (customDetent)
    {
      _mediumDetent = customDetent;
    }

    else
    {
      _mediumDetent = [MEMORY[0x1E69DD6F8] _mediumDetent];
    }

    _largeDetent = _mediumDetent;

    mainPresenter = [(UIActivityViewController *)self mainPresenter];
    isSLMEnabled = [mainPresenter isSLMEnabled];

    if (isSLMEnabled)
    {
      customDetent2 = [(UIActivityViewController *)self customDetent];

      if (!customDetent2)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __63__UIActivityViewController__updateSheetPresentationController___block_invoke;
        v41[3] = &unk_1E71FA118;
        v41[4] = self;
        v32 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:0 resolver:v41];

        [(UIActivityViewController *)self setCustomDetent:v32];
        _largeDetent = v32;
      }

      mainPresenter2 = [(UIActivityViewController *)self mainPresenter];
      isSheetResizable = [mainPresenter2 isSheetResizable];

      if (!isSheetResizable)
      {
        mainPresenter3 = [(UIActivityViewController *)self mainPresenter];
        isCompactSize = [mainPresenter3 isCompactSize];

        if (isCompactSize)
        {
          v44 = _largeDetent;
          v23 = MEMORY[0x1E695DEC8];
          v24 = &v44;
          goto LABEL_18;
        }

        _largeDetent2 = [MEMORY[0x1E69DD6F8] _largeDetent];
        v43 = _largeDetent2;
        v35 = MEMORY[0x1E695DEC8];
        v36 = &v43;
        v37 = 1;
LABEL_32:
        v38 = [v35 arrayWithObjects:v36 count:v37];
        [controllerCopy _setDetents:v38];

        goto LABEL_19;
      }

      v45[0] = _largeDetent;
      _largeDetent2 = [MEMORY[0x1E69DD6F8] _largeDetent];
      v45[1] = _largeDetent2;
      v35 = MEMORY[0x1E695DEC8];
      v36 = v45;
    }

    else
    {
      v42[0] = _largeDetent;
      _largeDetent2 = [MEMORY[0x1E69DD6F8] _largeDetent];
      v42[1] = _largeDetent2;
      v35 = MEMORY[0x1E695DEC8];
      v36 = v42;
    }

    v37 = 2;
    goto LABEL_32;
  }

LABEL_20:
}

- (void)_performActivity:(id)activity
{
  v10 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    v8 = 138412290;
    v9 = activityType;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "UIAVC: perform activity:%@", &v8, 0xCu);
  }

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter performActivity:activityCopy];
}

- (void)_executeActivity
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UIAVC: execute activity", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIActivityViewControllerExecuteActivityNotification" object:self userInfo:0];
}

- (void)_primeExtensionDiscovery
{
  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter preheatExtensionDiscovery];
}

- (void)_setSelectedAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (([identifiersCopy isEqualToArray:self->_selectedAssetIdentifiers] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedAssetIdentifiers, identifiers);
    mainPresenter = [(UIActivityViewController *)self mainPresenter];
    [mainPresenter setSelectedAssetIdentifiers:identifiersCopy];
  }
}

- (void)_updateActivityItems:(id)items
{
  itemsCopy = items;
  applicationActivities = [(UIActivityViewController *)self applicationActivities];
  [(UIActivityViewController *)self _updateActivityItems:itemsCopy applicationActivities:applicationActivities];
}

- (void)_reloadActivity:(id)activity
{
  activityCopy = activity;
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter reloadActivity:activityCopy];
}

- (void)_updateActivityItems:(id)items applicationActivities:(id)activities
{
  v33 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  activitiesCopy = activities;
  v8 = self->_activityItems;
  v9 = itemsCopy;
  v10 = v9;
  if (v8 == v9)
  {
    LOBYTE(v11) = 0;
  }

  else if ((v9 == 0) == (v8 != 0))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = [(NSArray *)v8 isEqual:v9]^ 1;
  }

  v12 = self->_applicationActivities;
  v13 = activitiesCopy;
  v14 = v13;
  if (v12 == v13)
  {
    LOBYTE(v15) = 0;
  }

  else if ((v13 == 0) == (v12 != 0))
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v15 = [(NSArray *)v12 isEqual:v13]^ 1;
  }

  _isAppearingOrAppeared = [(UIActivityViewController *)self _isAppearingOrAppeared];
  IsRealityLauncher = _ShareSheetIsRealityLauncher();
  _createContextFromCurrentState = share_sheet_log();
  v19 = os_log_type_enabled(_createContextFromCurrentState, OS_LOG_TYPE_DEFAULT);
  if ((v11 | v15) & 1) != 0 && ((IsRealityLauncher ^ 1 | _isAppearingOrAppeared))
  {
    if (v19)
    {
      v25 = 138478083;
      v26 = v10;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_18B359000, _createContextFromCurrentState, OS_LOG_TYPE_DEFAULT, "UIAVC: update activity items:%{private}@ applicationActivities:%@", &v25, 0x16u);
    }

    if (!_isAppearingOrAppeared)
    {
      v20 = share_sheet_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [UIActivityViewController _updateActivityItems:v20 applicationActivities:?];
      }
    }

    [(UIActivityViewController *)self setActivityItems:v10];
    [(UIActivityViewController *)self setApplicationActivities:v14];
    _createContextFromCurrentState = [(UIActivityViewController *)self _createContextFromCurrentState];
    mainPresenter = [(UIActivityViewController *)self mainPresenter];
    [(NSArray *)mainPresenter updateWithContext:_createContextFromCurrentState];
    goto LABEL_22;
  }

  if (v19)
  {
    mainPresenter = NSStringFromBOOL();
    v22 = NSStringFromBOOL();
    v23 = NSStringFromBOOL();
    v24 = NSStringFromBOOL();
    v25 = 138413058;
    v26 = mainPresenter;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    _os_log_impl(&dword_18B359000, _createContextFromCurrentState, OS_LOG_TYPE_DEFAULT, "UIAVC: ignoring _updateActivityItems request activityItemsNeedsUpdate:%@  applicationActivitiesNeedsUpdate:%@ isAppearingOrAppeared:%@ shouldCheckIsAppearingOrAppeared:%@", &v25, 0x2Au);

LABEL_22:
  }
}

- (void)_cancel
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UIAVC: cancel", v5, 2u);
  }

  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter dismiss];
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  [(UIActivityViewController *)self _prepareActivity:activity];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

- (void)setCollaborationMode:(int64_t)mode
{
  self->_collaborationMode = mode;
  _createContextFromCurrentState = [(UIActivityViewController *)self _createContextFromCurrentState];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter updateWithContext:_createContextFromCurrentState];
}

- (void)_performActivityWithType:(id)type completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  if (_ShareSheetHostCanPerformActivitySkippingShareSheet())
  {
    v12 = typeCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [(UIActivityViewController *)self setIncludedActivityTypes:v8];

    [(UIActivityViewController *)self _createMainPresenterIfNeeded];
    mainPresenter = [(UIActivityViewController *)self mainPresenter];
    [mainPresenter prepareNonUIShareSheet];

    mainPresenter2 = [(UIActivityViewController *)self mainPresenter];
    [mainPresenter2 performActivityWithType:typeCopy completionHandler:handlerCopy];

    handlerCopy = mainPresenter2;
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = typeCopy;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "Not performing activity '%@' because entitlement is needed", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_findSupportedActivitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter prepareNonUIShareSheet];

  mainPresenter2 = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter2 _findSupportedActivitiesWithCompletionHandler:handlerCopy];
}

- (void)_presentationControllerDidDismiss:(id)dismiss
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC:%@ was dismissed manually.", &v5, 0xCu);
  }

  [(UIActivityViewController *)self _cancel];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v22 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v17.receiver = self;
  v17.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v17 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [containerCopy topViewController];
    [topViewController preferredContentSize];
    v6 = v10;
    v8 = v11;
  }

  [(UIActivityViewController *)self setPreferredContentSize:v6, v8];
  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v23.width = v6;
    v23.height = v8;
    v14 = NSStringFromCGSize(v23);
    *buf = 138412546;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "%@: preferredContentSizeDidChangeForChildContentContainer:%@", buf, 0x16u);
  }

  [(UIActivityViewController *)self initialPreferredContentHeight];
  if (v15 <= 0.0)
  {
    [(UIActivityViewController *)self setInitialPreferredContentHeight:v8];
  }

  view = [(UIActivityViewController *)self view];
  [view setNeedsLayout];
}

- (BOOL)_allowsStylingSheetsAsCards
{
  v3 = objc_opt_class();

  return [(UIActivityViewController *)self isMemberOfClass:v3];
}

- (void)_didResignContentViewControllerOfPopover:(id)popover
{
  popoverCopy = popover;
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  [mainPresenter activityViewControllerDidResignContentViewControllerOfPopover:self];

  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 _didResignContentViewControllerOfPopover:popoverCopy];
}

- (void)mainPresenterIsReadyToInteract:(id)interact
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(UIActivityViewController *)self _readyToInteract];
}

- (void)mainPresenter:(id)presenter willCompleteActivity:(id)activity withSuccess:(BOOL)success
{
  successCopy = success;
  v16 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBOOL();
    v12 = 138412546;
    v13 = activityCopy;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "UIAVC: will complete activity:%@ success:%@", &v12, 0x16u);
  }

  preCompletionHandler = [(UIActivityViewController *)self preCompletionHandler];
  if (preCompletionHandler)
  {
    activityType = [activityCopy activityType];
    (preCompletionHandler)[2](preCompletionHandler, activityType, successCopy);

    [(UIActivityViewController *)self setPreCompletionHandler:0];
  }
}

- (void)mainPresenter:(id)presenter didCompleteActivity:(id)activity withSuccess:(BOOL)success returnedItems:(id)items error:(id)error
{
  successCopy = success;
  v35 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  itemsCopy = items;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = 1;
  if (dyld_program_sdk_at_least() && !successCopy && ([(UIActivityViewController *)self isBeingDismissed]& 1) == 0)
  {
    presentingViewController = [(UIActivityViewController *)self presentingViewController];
    v14 = presentingViewController == 0;
  }

  v16 = share_sheet_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromBOOL();
    activityType = [activityCopy activityType];
    v19 = NSStringFromBOOL();
    v25 = 138413314;
    v26 = activityCopy;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = errorCopy;
    v31 = 2112;
    v32 = activityType;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, "UIAVC: did complete activity:%@ (success=%{public}@, error=%{public}@) activityType:%@ shouldCallCompletionHandler:%@", &v25, 0x34u);
  }

  if (v14)
  {
    completionWithItemsHandler = [(UIActivityViewController *)self completionWithItemsHandler];
    completionHandler = [(UIActivityViewController *)self completionHandler];
    v22 = completionHandler;
    if (completionWithItemsHandler)
    {
      activityType2 = [activityCopy activityType];
      (completionWithItemsHandler)[2](completionWithItemsHandler, activityType2, successCopy, itemsCopy, errorCopy);

      [(UIActivityViewController *)self setCompletionWithItemsHandler:0];
    }

    else if (completionHandler)
    {
      activityType3 = [activityCopy activityType];
      (v22)[2](v22, activityType3, successCopy);

      [(UIActivityViewController *)self setCompletionHandler:0];
    }
  }
}

- (BOOL)isCollaborationSelected
{
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  isCollaborationSelected = [mainPresenter isCollaborationSelected];

  return isCollaborationSelected;
}

- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  mainPresenter = [(UIActivityViewController *)self mainPresenter];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__UIActivityViewController_runScrollingTestWithName_type_completionHandler___block_invoke;
  v13[3] = &unk_1E71FA140;
  v15 = handlerCopy;
  typeCopy = type;
  v14 = nameCopy;
  v11 = handlerCopy;
  v12 = nameCopy;
  [mainPresenter runScrollingTestWithName:v12 type:type completionHandler:v13];
}

uint64_t __76__UIActivityViewController_runScrollingTestWithName_type_completionHandler___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "did complete scrolling test with name:%@ type:%ld", &v6, 0x16u);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (UIActivityViewControllerAirDropDelegate)airDropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_airDropDelegate);

  return WeakRetained;
}

- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_objectManipulationDelegate);

  return WeakRetained;
}

- (UIActivityViewControllerPhotosDelegate)photosDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosDelegate);

  return WeakRetained;
}

- (void)setPhotosCarouselViewController:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "setting a customViewController:%@ requires the entitlement  com.apple.sharesheet.allow-custom-view", &v5, 0xCu);
}

@end