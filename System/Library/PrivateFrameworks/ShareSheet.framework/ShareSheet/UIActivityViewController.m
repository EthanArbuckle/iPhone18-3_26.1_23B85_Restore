@interface UIActivityViewController
+ (id)collaborationModeRestrictionFromActivityItemsConfiguration:(id)a3 collaborationMode:(int64_t)a4;
+ (int64_t)_defaultPlatformPresentationStyle;
- (BOOL)_allowsStylingSheetsAsCards;
- (BOOL)_requiresCustomPresentationController;
- (BOOL)isCollaborationSelected;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (NSString)sessionIdentifier;
- (UIActivity)activity;
- (UIActivityViewController)initWithActivityItems:(NSArray *)activityItems applicationActivities:(NSArray *)applicationActivities;
- (UIActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 peopleSuggestionBundleIds:(id)a5;
- (UIActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 shouldSuggestFamilyMembers:(BOOL)a5;
- (UIActivityViewController)initWithActivityItemsConfiguration:(id)activityItemsConfiguration;
- (UIActivityViewController)initWithAssetIdentifiers:(id)a3 activityItems:(id)a4 applicationActivities:(id)a5;
- (UIActivityViewController)initWithUserDefaults:(id)a3 userDefaultsIdentifier:(id)a4 applicationActivities:(id)a5;
- (UIActivityViewControllerAirDropDelegate)airDropDelegate;
- (UIActivityViewControllerCollaborationDelegate)collaborationDelegate;
- (UIActivityViewControllerObjectManipulationDelegate)objectManipulationDelegate;
- (UIActivityViewControllerPhotosDelegate)photosDelegate;
- (_UIRemoteSheet)_remoteSheet;
- (double)_displayHeight;
- (double)customViewControllerSectionHeight;
- (double)customViewControllerVerticalInset;
- (id)_createContextFromCurrentState;
- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)activityItemsConfiguration;
- (void)__viewControllerWillBePresented:(BOOL)a3;
- (void)_cancel;
- (void)_createMainPresenterIfNeeded;
- (void)_delayPresentationIfNeeded;
- (void)_didResignContentViewControllerOfPopover:(id)a3;
- (void)_endDelayingPresentation;
- (void)_executeActivity;
- (void)_findSupportedActivitiesWithCompletionHandler:(id)a3;
- (void)_performActivity:(id)a3;
- (void)_performActivityWithType:(id)a3 completionHandler:(id)a4;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)_presentationControllerDidDismiss:(id)a3;
- (void)_primeExtensionDiscovery;
- (void)_readyToInteract;
- (void)_reloadActivity:(id)a3;
- (void)_setSelectedAssetIdentifiers:(id)a3;
- (void)_updateActivityItems:(id)a3;
- (void)_updateActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_updateSheetPresentationController:(id)a3;
- (void)_viewControllerPresentationDidInitiate;
- (void)dealloc;
- (void)mainPresenter:(id)a3 didCompleteActivity:(id)a4 withSuccess:(BOOL)a5 returnedItems:(id)a6 error:(id)a7;
- (void)mainPresenter:(id)a3 willCompleteActivity:(id)a4 withSuccess:(BOOL)a5;
- (void)mainPresenterIsReadyToInteract:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)setAllowsEmbedding:(BOOL)a3;
- (void)setAllowsProminentActivity:(BOOL)allowsProminentActivity;
- (void)setCollaborationMode:(int64_t)a3;
- (void)setCustomViewControllerSectionHeight:(double)a3;
- (void)setCustomViewControllerVerticalInset:(double)a3;
- (void)setIsContentManaged:(BOOL)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setPhotosCarouselViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

  if ((dyld_program_sdk_at_least() & 1) != 0 || [a1 isMemberOfClass:objc_opt_class()])
  {
    return 2;
  }

  return 5;
}

- (BOOL)_requiresCustomPresentationController
{
  v3 = [(UIActivityViewController *)self modalPresentationStyle];
  LOBYTE(v4) = v3 == 2;
  if (_ShareSheetSolariumEnabled())
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v3 == 2)
    {
      LOBYTE(v4) = 1;
    }

    else if (v6)
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
  v4 = [(UIActivityViewController *)self activityItems];
  v5 = [(SHSheetContext *)v3 initWithActivityViewController:self activityItems:v4];

  v6 = [(UIActivityViewController *)self applicationActivities];
  [(SHSheetContext *)v5 setApplicationActivities:v6];

  v7 = [(UIActivityViewController *)self excludedActivityTypes];
  [(SHSheetContext *)v5 setExcludedActivityTypes:v7];

  v8 = [(UIActivityViewController *)self includedActivityTypes];
  [(SHSheetContext *)v5 setIncludedActivityTypes:v8];

  [(SHSheetContext *)v5 setExcludedActivityCategories:[(UIActivityViewController *)self excludedActivityCategories]];
  v9 = [(UIActivityViewController *)self activityTypeOrder];
  [(SHSheetContext *)v5 setActivityTypeOrder:v9];

  [(SHSheetContext *)v5 setShowKeyboardAutomatically:[(UIActivityViewController *)self showKeyboardAutomatically]];
  [(SHSheetContext *)v5 setWhitelistActionActivitiesOnly:[(UIActivityViewController *)self whitelistActionActivitiesOnly]];
  [(SHSheetContext *)v5 setSharingStyle:[(UIActivityViewController *)self sharingStyle]];
  v10 = [(UIActivityViewController *)self heroActionActivityTypes];
  [(SHSheetContext *)v5 setHeroActionActivityTypes:v10];

  [(SHSheetContext *)v5 setShowHeroActionsHorizontally:[(UIActivityViewController *)self showHeroActionsHorizontally]];
  [(SHSheetContext *)v5 setIsContentManaged:[(UIActivityViewController *)self isContentManaged]];
  [(SHSheetContext *)v5 setAllowsEmbedding:[(UIActivityViewController *)self allowsEmbedding]];
  v11 = [(UIActivityViewController *)self objectManipulationDelegate];
  [(SHSheetContext *)v5 setObjectManipulationDelegate:v11];

  [(SHSheetContext *)v5 setShouldSuggestFamilyMembers:[(UIActivityViewController *)self shouldSuggestFamilyMembers]];
  [(SHSheetContext *)v5 setAllowsProminentActivity:[(UIActivityViewController *)self allowsProminentActivity]];
  v12 = [(UIActivityViewController *)self photosHeaderMetadata];
  [(SHSheetContext *)v5 setPhotosHeaderMetadata:v12];

  [(SHSheetContext *)v5 setConfigureForCloudSharing:[(UIActivityViewController *)self configureForCloudSharing]];
  [(SHSheetContext *)v5 setConfigureForPhotosEdit:[(UIActivityViewController *)self configureForPhotosEdit]];
  [(SHSheetContext *)v5 setHideHeaderView:[(UIActivityViewController *)self hideHeaderView]];
  [(SHSheetContext *)v5 setHideNavigationBar:[(UIActivityViewController *)self hideNavigationBar]];
  [(SHSheetContext *)v5 setHideSuggestions:[(UIActivityViewController *)self hideSuggestions]];
  v13 = [(UIActivityViewController *)self topContentSectionText];
  [(SHSheetContext *)v5 setTopContentSectionText:v13];

  v14 = [(UIActivityViewController *)self _selectedAssetIdentifiers];
  [(SHSheetContext *)v5 setSelectedAssetIdentifiers:v14];

  v15 = [(UIActivityViewController *)self peopleSuggestionBundleIds];
  [(SHSheetContext *)v5 setPeopleSuggestionBundleIds:v15];

  v16 = [(UIActivityViewController *)self cachedActivityItemsConfiguration];
  v17 = [UIActivityViewController collaborationModeRestrictionFromActivityItemsConfiguration:v16 collaborationMode:[(UIActivityViewController *)self collaborationMode]];
  [(SHSheetContext *)v5 setCollaborationModeRestriction:v17];

  v18 = [(UIActivityViewController *)self managedFileURL];
  [(SHSheetContext *)v5 setManagedFileURL:v18];

  [(SHSheetContext *)v5 setShowCustomScene:[(UIActivityViewController *)self showCustomScene]];
  v19 = [(UIActivityViewController *)self testingReferenceSnapshot];
  [(SHSheetContext *)v5 setTestingReferenceSnapshot:v19];

  v20 = [(UIActivityViewController *)self snapshotHandler];
  [(SHSheetContext *)v5 setSnapshotHandler:v20];

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
  v4 = [(UIActivityViewController *)self mainPresenter];
  v5 = [v4 useRemoteUIService];

  if (v5)
  {
    [(UIActivityViewController *)self loadViewIfNeeded];
  }

  [(UIActivityViewController *)self _delayPresentationIfNeeded];
}

- (void)_createMainPresenterIfNeeded
{
  if (!self->_mainPresenter)
  {
    v5 = [(UIActivityViewController *)self _createContextFromCurrentState];
    v3 = [SHSheetFactory createMainPresenterWithContext:v5];
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
  v8 = [(UIActivityViewController *)self mainPresenter];
  if ([v8 useRemoteUIService] && !-[UIActivityViewController didStartDelayingPresentation](self, "didStartDelayingPresentation"))
  {
    v3 = [(UIActivityViewController *)self didEndDelayingPresentation];

    if (!v3)
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
  v3 = [(UIActivityViewController *)self view];
  [v3 setNeedsLayout];
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
    v7 = [v4 applicationActivitiesForActivityItemsConfiguration];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(UIActivityViewController *)self initWithActivityItems:v5 applicationActivities:v7];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v4 _excludedActivityTypes];
      [(UIActivityViewController *)v8 setExcludedActivityTypes:v9];
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

- (UIActivityViewController)initWithAssetIdentifiers:(id)a3 activityItems:(id)a4 applicationActivities:(id)a5
{
  v9 = a3;
  v10 = [(UIActivityViewController *)self initWithActivityItems:a4 applicationActivities:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedAssetIdentifiers, a3);
  }

  return v11;
}

- (UIActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 shouldSuggestFamilyMembers:(BOOL)a5
{
  result = [(UIActivityViewController *)self initWithActivityItems:a3 applicationActivities:a4];
  if (result)
  {
    result->_shouldSuggestFamilyMembers = a5;
  }

  return result;
}

- (UIActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 peopleSuggestionBundleIds:(id)a5
{
  v8 = a5;
  v9 = [(UIActivityViewController *)self initWithActivityItems:a3 applicationActivities:a4];
  if (v9)
  {
    v10 = [v8 copy];
    peopleSuggestionBundleIds = v9->_peopleSuggestionBundleIds;
    v9->_peopleSuggestionBundleIds = v10;
  }

  return v9;
}

- (UIActivityViewController)initWithUserDefaults:(id)a3 userDefaultsIdentifier:(id)a4 applicationActivities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(UIActivityViewController *)self initWithActivityItems:MEMORY[0x1E695E0F0] applicationActivities:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userDefaults, a3);
    v13 = [v10 copy];
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
  v2 = [(UIActivityViewController *)self mainPresenter];
  v3 = [v2 remoteSheet];

  return v3;
}

- (UIActivity)activity
{
  v2 = [(UIActivityViewController *)self mainPresenter];
  v3 = [v2 currentActivity];

  return v3;
}

- (void)setAllowsEmbedding:(BOOL)a3
{
  if (self->_allowsEmbedding != a3)
  {
    self->_allowsEmbedding = a3;
  }
}

- (void)setCustomViewControllerVerticalInset:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(UIActivityViewController *)self setCustomViewControllerVerticalInsetWrapper:v4];

  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 updateCustomView];
}

- (double)customViewControllerVerticalInset
{
  v2 = [(UIActivityViewController *)self customViewControllerVerticalInsetWrapper];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setCustomViewControllerSectionHeight:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(UIActivityViewController *)self setCustomViewControllerSectionHeightWrapper:v4];

  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 updateCustomView];
}

- (double)customViewControllerSectionHeight
{
  v2 = [(UIActivityViewController *)self customViewControllerSectionHeightWrapper];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setPhotosCarouselViewController:(id)a3
{
  v5 = a3;
  if ((_ShareSheetCanUseCustomViewController() & 1) == 0)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(UIActivityViewController *)v5 setPhotosCarouselViewController:v10];
    }

    goto LABEL_9;
  }

  if (self->_photosCarouselViewController != v5)
  {
    objc_storeStrong(&self->_photosCarouselViewController, a3);
    v6 = [(UIActivityViewController *)self presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(UIActivityViewController *)self presentationController];
      [(UIActivityViewController *)self _updateSheetPresentationController:v8];
      v9 = [(UIActivityViewController *)self mainPresenter];

      if (v9)
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

    v10 = [(UIActivityViewController *)self mainPresenter];
    [v10 updateCustomView];
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

- (void)setModalPresentationStyle:(int64_t)a3
{
  if (![(UIActivityViewController *)self allowsEmbedding]&& ![(UIActivityViewController *)self allowsCustomPresentationStyle]&& a3 != 2 && a3 != 7)
  {
    a3 = +[UIActivityViewController _defaultPlatformPresentationStyle];
  }

  if (_ShareSheetPlatformPrefersPopover())
  {
    if (a3 == 2)
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
  [(UIActivityViewController *)&v6 setModalPresentationStyle:a3];
}

- (void)setIsContentManaged:(BOOL)a3
{
  if (self->_isContentManaged != a3)
  {
    v4 = a3;
    self->_isContentManaged = a3;
    v5 = [(UIActivityViewController *)self mainPresenter];
    [v5 setIsContentManaged:v4];
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
  v2 = [(UIActivityViewController *)self mainPresenter];
  v3 = [v2 sessionIdentifier];

  return v3;
}

- (id)activityItemsConfiguration
{
  v3 = [(UIActivityViewController *)self mainPresenter];
  v4 = [v3 isCollaborationSelected];

  if (v4)
  {
    v5 = [(UIActivityViewController *)self clientActivityItemsConfigurationSource];
    [v5 activityItemsConfiguration];
  }

  else
  {
    v5 = [(UIActivityViewController *)self mainPresenter];
    [v5 createActivityItemsConfiguration];
  }
  v6 = ;

  return v6;
}

+ (id)collaborationModeRestrictionFromActivityItemsConfiguration:(id)a3 collaborationMode:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  switch(a4)
  {
    case 6:
      if (v5)
      {
        v10 = [_UIActivityItemsConfigurationActivityItemProvider metadataForKey:@"collaborationModeRestrictions" expectedClass:objc_opt_class() activityItemsConfiguration:v5 itemAtSourceIndex:0];
        v9 = [v10 firstObject];

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
      v9 = [(UIActivityCollaborationModeRestriction *)v7 initWithDisabledMode:v8];
      goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 viewDidLoad];
  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  v3 = [(UIActivityViewController *)self mainPresenter];
  [v3 prepareViewIfNeeded];

  v4 = [(UIActivityViewController *)self mainPresenter];
  [v4 updateCustomView];

  v5 = [(UIActivityViewController *)self view];
  [v5 setTintAdjustmentMode:1];

  if ([(UIActivityViewController *)self allowsEmbedding])
  {
    [(UIActivityViewController *)self setModalPresentationStyle:-1];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v7 viewIsAppearing:a3];
  v4 = [(UIActivityViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(UIActivityViewController *)self mainPresenter];
    [v6 present];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 activityViewControllerSizeWillChange:self];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  v4 = a3;
  [(UIActivityViewController *)&v6 traitCollectionDidChange:v4];
  v5 = [(UIActivityViewController *)self mainPresenter:v6.receiver];
  [v5 activityViewController:self traitCollectionDidChange:v4];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v12 viewDidLayoutSubviews];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = [(UIActivityViewController *)self popoverPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(UIActivityViewController *)self popoverPresentationController];
      if ([v7 isCompactSize])
      {
        SFUIShareSheetPopoverBackgroundViewClass = getSFUIShareSheetPopoverBackgroundViewClass();
        v9 = [(UIActivityViewController *)self view];
        [(objc_class *)SFUIShareSheetPopoverBackgroundViewClass effectiveBottomRadiusForView:v9];
        v11 = v10;

        if (v11 > 0.0)
        {
          [v7 setCompactCornerRadius:v11];
        }
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
  v7 = [MEMORY[0x1E695DF00] date];
  v17[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  softLinkPLLogRegisteredEvent(23, @"UIKit-Activity", v8, 0);
  if (![(UIActivityViewController *)self viewWillAppearTimestamp])
  {
    [(UIActivityViewController *)self setViewWillAppearTimestamp:mach_continuous_time()];
  }

  v9 = [(UIActivityViewController *)self presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
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

  v13 = [(UIActivityViewController *)self mainPresenter];
  [v13 activityViewControllerWillAppear:self];

  v14.receiver = self;
  v14.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v14 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v11 viewDidAppear:a3];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC: view did appear", v10, 2u);
  }

  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 activityViewControllerDidAppear:self];

  v6 = [(UIActivityViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  v9 = [v8 activityItemsConfigurationSource];
  [(UIActivityViewController *)self setClientActivityItemsConfigurationSource:v9];

  [v8 setActivityItemsConfigurationSource:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v14 viewWillDisappear:a3];
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
  v6 = [MEMORY[0x1E695DF00] date];
  v16[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  softLinkPLLogRegisteredEvent(23, @"UIKit-Activity", v7, 0);
  v8 = [(UIActivityViewController *)self mainPresenter];
  [v8 activityViewControllerWillDisappear:self];

  v9 = [(UIActivityViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  v12 = [(UIActivityViewController *)self clientActivityItemsConfigurationSource];
  [v11 setActivityItemsConfigurationSource:v12];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v7 viewDidDisappear:a3];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC: view did disappear", v6, 2u);
  }

  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 activityViewControllerDidDisappear:self];

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

  v4 = [(UIActivityViewController *)self _shareSheetReadyToInteractHandler];
  [(UIActivityViewController *)self _setShareSheetReadyToInteractHandler:0];
  v5 = *MEMORY[0x1E69DDA98];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__UIActivityViewController__readyToInteract__block_invoke;
  v7[3] = &unk_1E71FA0F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)__viewControllerWillBePresented:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v9 __viewControllerWillBePresented:a3];
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
  v7 = [(UIActivityViewController *)self mainPresenter];
  [v7 activityViewControllerWillBePresented:self];
}

- (double)_displayHeight
{
  if (![(UIActivityViewController *)self clientAttemptedInitialPresentationOrEmbeddingTimestamp])
  {
    [(UIActivityViewController *)self setClientAttemptedInitialPresentationOrEmbeddingTimestamp:mach_continuous_time()];
  }

  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  v3 = [(UIActivityViewController *)self mainPresenter];
  [v3 activityViewControllerWillBeEmbedded:self];

  [(UIActivityViewController *)self preferredContentSize];
  return v4;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return a3 != 2 || (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIActivityViewController *)self _updateSheetPresentationController:v5];
  }
}

- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a3;
  v8 = a4;
  NSClassFromString(&cfstr_Puactivityview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (!_ShareSheetSolariumEnabled() || (isKindOfClass & 1) != 0)
  {
    goto LABEL_7;
  }

  v10 = [(UIActivityViewController *)self customViewController];
  if (v10)
  {

LABEL_7:
    v11 = [objc_alloc(MEMORY[0x1E69DD4F0]) initWithPresentedViewController:v7 presentingViewController:v8];
    [(UIActivityViewController *)self _updateSheetPresentationController:v11];
    goto LABEL_8;
  }

  if ([(UIActivityViewController *)self modalPresentationStyle]!= 7)
  {
    goto LABEL_7;
  }

  v11 = [[_UIActivityViewControllerPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v8];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (void)_updateSheetPresentationController:(id)a3
{
  v46[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [(UIActivityViewController *)self presentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v4 = 0;
      goto LABEL_20;
    }

    v4 = [(UIActivityViewController *)self presentationController];
  }

  [v4 _setShouldDismissWhenTappedOutside:1];
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v9 _referenceBounds];
    v11 = v10;
    v13 = v12;

    v14 = [(UIActivityViewController *)self customViewController];
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11 != 320.0 || v13 != 568.0;
    }

    [v4 _setWantsBottomAttachedInCompactHeight:v15];

    [v4 _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
    v16 = [(UIActivityViewController *)self includedActivityTypes];
    if ([v16 containsObject:@"com.apple.UIKit.activity.AirDrop"])
    {
      v17 = [(UIActivityViewController *)self includedActivityTypes];
      v18 = [v17 count] == 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(UIActivityViewController *)self traitCollection];
    v20 = [v19 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v20))
    {

LABEL_17:
      v22 = [MEMORY[0x1E69DD6F8] _largeDetent];
      v46[0] = v22;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v46;
LABEL_18:
      v25 = [v23 arrayWithObjects:v24 count:1];
      [v4 _setDetents:v25];
LABEL_19:

      goto LABEL_20;
    }

    v21 = [(UIActivityViewController *)self customViewController];

    if (v21)
    {
      goto LABEL_17;
    }

    if (v18)
    {
      goto LABEL_20;
    }

    v26 = [(UIActivityViewController *)self customDetent];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [MEMORY[0x1E69DD6F8] _mediumDetent];
    }

    v22 = v28;

    v29 = [(UIActivityViewController *)self mainPresenter];
    v30 = [v29 isSLMEnabled];

    if (v30)
    {
      v31 = [(UIActivityViewController *)self customDetent];

      if (!v31)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __63__UIActivityViewController__updateSheetPresentationController___block_invoke;
        v41[3] = &unk_1E71FA118;
        v41[4] = self;
        v32 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:0 resolver:v41];

        [(UIActivityViewController *)self setCustomDetent:v32];
        v22 = v32;
      }

      v33 = [(UIActivityViewController *)self mainPresenter];
      v34 = [v33 isSheetResizable];

      if (!v34)
      {
        v39 = [(UIActivityViewController *)self mainPresenter];
        v40 = [v39 isCompactSize];

        if (v40)
        {
          v44 = v22;
          v23 = MEMORY[0x1E695DEC8];
          v24 = &v44;
          goto LABEL_18;
        }

        v25 = [MEMORY[0x1E69DD6F8] _largeDetent];
        v43 = v25;
        v35 = MEMORY[0x1E695DEC8];
        v36 = &v43;
        v37 = 1;
LABEL_32:
        v38 = [v35 arrayWithObjects:v36 count:v37];
        [v4 _setDetents:v38];

        goto LABEL_19;
      }

      v45[0] = v22;
      v25 = [MEMORY[0x1E69DD6F8] _largeDetent];
      v45[1] = v25;
      v35 = MEMORY[0x1E695DEC8];
      v36 = v45;
    }

    else
    {
      v42[0] = v22;
      v25 = [MEMORY[0x1E69DD6F8] _largeDetent];
      v42[1] = v25;
      v35 = MEMORY[0x1E695DEC8];
      v36 = v42;
    }

    v37 = 2;
    goto LABEL_32;
  }

LABEL_20:
}

- (void)_performActivity:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 activityType];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "UIAVC: perform activity:%@", &v8, 0xCu);
  }

  v7 = [(UIActivityViewController *)self mainPresenter];
  [v7 performActivity:v4];
}

- (void)_executeActivity
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "UIAVC: execute activity", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"_UIActivityViewControllerExecuteActivityNotification" object:self userInfo:0];
}

- (void)_primeExtensionDiscovery
{
  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  v3 = [(UIActivityViewController *)self mainPresenter];
  [v3 preheatExtensionDiscovery];
}

- (void)_setSelectedAssetIdentifiers:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_selectedAssetIdentifiers] & 1) == 0)
  {
    objc_storeStrong(&self->_selectedAssetIdentifiers, a3);
    v5 = [(UIActivityViewController *)self mainPresenter];
    [v5 setSelectedAssetIdentifiers:v6];
  }
}

- (void)_updateActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityViewController *)self applicationActivities];
  [(UIActivityViewController *)self _updateActivityItems:v4 applicationActivities:v5];
}

- (void)_reloadActivity:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 reloadActivity:v4];
}

- (void)_updateActivityItems:(id)a3 applicationActivities:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_activityItems;
  v9 = v6;
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
  v13 = v7;
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

  v16 = [(UIActivityViewController *)self _isAppearingOrAppeared];
  IsRealityLauncher = _ShareSheetIsRealityLauncher();
  v18 = share_sheet_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if ((v11 | v15) & 1) != 0 && ((IsRealityLauncher ^ 1 | v16))
  {
    if (v19)
    {
      v25 = 138478083;
      v26 = v10;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "UIAVC: update activity items:%{private}@ applicationActivities:%@", &v25, 0x16u);
    }

    if (!v16)
    {
      v20 = share_sheet_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [UIActivityViewController _updateActivityItems:v20 applicationActivities:?];
      }
    }

    [(UIActivityViewController *)self setActivityItems:v10];
    [(UIActivityViewController *)self setApplicationActivities:v14];
    v18 = [(UIActivityViewController *)self _createContextFromCurrentState];
    v21 = [(UIActivityViewController *)self mainPresenter];
    [(NSArray *)v21 updateWithContext:v18];
    goto LABEL_22;
  }

  if (v19)
  {
    v21 = NSStringFromBOOL();
    v22 = NSStringFromBOOL();
    v23 = NSStringFromBOOL();
    v24 = NSStringFromBOOL();
    v25 = 138413058;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "UIAVC: ignoring _updateActivityItems request activityItemsNeedsUpdate:%@  applicationActivitiesNeedsUpdate:%@ isAppearingOrAppeared:%@ shouldCheckIsAppearingOrAppeared:%@", &v25, 0x2Au);

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

  v4 = [(UIActivityViewController *)self mainPresenter];
  [v4 dismiss];
}

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  v7 = a4;
  [(UIActivityViewController *)self _prepareActivity:a3];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)setCollaborationMode:(int64_t)a3
{
  self->_collaborationMode = a3;
  v5 = [(UIActivityViewController *)self _createContextFromCurrentState];
  v4 = [(UIActivityViewController *)self mainPresenter];
  [v4 updateWithContext:v5];
}

- (void)_performActivityWithType:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (_ShareSheetHostCanPerformActivitySkippingShareSheet())
  {
    v12 = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [(UIActivityViewController *)self setIncludedActivityTypes:v8];

    [(UIActivityViewController *)self _createMainPresenterIfNeeded];
    v9 = [(UIActivityViewController *)self mainPresenter];
    [v9 prepareNonUIShareSheet];

    v10 = [(UIActivityViewController *)self mainPresenter];
    [v10 performActivityWithType:v6 completionHandler:v7];

    v7 = v10;
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_18B359000, v11, OS_LOG_TYPE_DEFAULT, "Not performing activity '%@' because entitlement is needed", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)_findSupportedActivitiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(UIActivityViewController *)self _createMainPresenterIfNeeded];
  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 prepareNonUIShareSheet];

  v6 = [(UIActivityViewController *)self mainPresenter];
  [v6 _findSupportedActivitiesWithCompletionHandler:v4];
}

- (void)_presentationControllerDidDismiss:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "UIAVC:%@ was dismissed manually.", &v5, 0xCu);
  }

  [(UIActivityViewController *)self _cancel];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v17 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 topViewController];
    [v9 preferredContentSize];
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

  v16 = [(UIActivityViewController *)self view];
  [v16 setNeedsLayout];
}

- (BOOL)_allowsStylingSheetsAsCards
{
  v3 = objc_opt_class();

  return [(UIActivityViewController *)self isMemberOfClass:v3];
}

- (void)_didResignContentViewControllerOfPopover:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityViewController *)self mainPresenter];
  [v5 activityViewControllerDidResignContentViewControllerOfPopover:self];

  v6.receiver = self;
  v6.super_class = UIActivityViewController;
  [(UIActivityViewController *)&v6 _didResignContentViewControllerOfPopover:v4];
}

- (void)mainPresenterIsReadyToInteract:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(UIActivityViewController *)self _readyToInteract];
}

- (void)mainPresenter:(id)a3 willCompleteActivity:(id)a4 withSuccess:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBOOL();
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "UIAVC: will complete activity:%@ success:%@", &v12, 0x16u);
  }

  v10 = [(UIActivityViewController *)self preCompletionHandler];
  if (v10)
  {
    v11 = [v7 activityType];
    (v10)[2](v10, v11, v5);

    [(UIActivityViewController *)self setPreCompletionHandler:0];
  }
}

- (void)mainPresenter:(id)a3 didCompleteActivity:(id)a4 withSuccess:(BOOL)a5 returnedItems:(id)a6 error:(id)a7
{
  v9 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = 1;
  if (dyld_program_sdk_at_least() && !v9 && ([(UIActivityViewController *)self isBeingDismissed]& 1) == 0)
  {
    v15 = [(UIActivityViewController *)self presentingViewController];
    v14 = v15 == 0;
  }

  v16 = share_sheet_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromBOOL();
    v18 = [v11 activityType];
    v19 = NSStringFromBOOL();
    v25 = 138413314;
    v26 = v11;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = v13;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, "UIAVC: did complete activity:%@ (success=%{public}@, error=%{public}@) activityType:%@ shouldCallCompletionHandler:%@", &v25, 0x34u);
  }

  if (v14)
  {
    v20 = [(UIActivityViewController *)self completionWithItemsHandler];
    v21 = [(UIActivityViewController *)self completionHandler];
    v22 = v21;
    if (v20)
    {
      v23 = [v11 activityType];
      (v20)[2](v20, v23, v9, v12, v13);

      [(UIActivityViewController *)self setCompletionWithItemsHandler:0];
    }

    else if (v21)
    {
      v24 = [v11 activityType];
      (v22)[2](v22, v24, v9);

      [(UIActivityViewController *)self setCompletionHandler:0];
    }
  }
}

- (BOOL)isCollaborationSelected
{
  v2 = [(UIActivityViewController *)self mainPresenter];
  v3 = [v2 isCollaborationSelected];

  return v3;
}

- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(UIActivityViewController *)self mainPresenter];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__UIActivityViewController_runScrollingTestWithName_type_completionHandler___block_invoke;
  v13[3] = &unk_1E71FA140;
  v15 = v9;
  v16 = a4;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [v10 runScrollingTestWithName:v12 type:a4 completionHandler:v13];
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