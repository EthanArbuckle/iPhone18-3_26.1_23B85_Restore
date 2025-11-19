@interface PBFModalRootViewController
+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout;
+ (void)prewarmTopButtonLayout;
- (BOOL)_isPhotosEntryPoint;
- (BOOL)ambientEditingCollectionViewControllerDidPressDone:(id)a3;
- (BOOL)posterRackCollectionViewControllerDidPressDone:(id)a3;
- (PBFAmbientEditingCollectionViewController)ambientEditingController;
- (PBFModalRootViewController)initWithScene:(id)a3;
- (PBFModalRootViewController)initWithScene:(id)a3 dataStore:(id)a4;
- (PBFPosterGalleryPreviewViewController)galleryController;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForFocusPosterSelectionViewController:(SEL)a3;
- (id)_actionHandlersForScene:(id)a3;
- (id)_posterLimitExceededAlertWithButtonActionHandler:(id)a3;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (id)_settingsDiffActionsForScene:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)galleryViewController:(id)a3 willUseAnimationController:(id)a4 forDismissingEditingViewControllerWithAction:(int64_t)a5;
- (id)succinctDescription;
- (void)_createLegacyMigrationHelperWithConfiguration:(id)a3;
- (void)_displayViewControllerAsSheet:(id)a3;
- (void)_galleryEditingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)_handleNotificationForwardAction:(id)a3;
- (void)_handleSheetDidDismissWithResponse:(id)a3;
- (void)_handleSheetWillDismissWithResponse:(id)a3;
- (void)_logEditWithEditingViewController:(id)a3 posterUUID:(id)a4 lastModifiedDate:(id)a5;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_performLegacyMigration;
- (void)_presentEditingForNewPosterFromConfiguration:(id)a3;
- (void)_presentEditingForPosterConfiguration:(id)a3;
- (void)_presentEditingForPosterConfiguration:(id)a3 sessionInfo:(id)a4;
- (void)_presentEditingSceneViewController:(id)a3;
- (void)_presentGallery;
- (void)_presentLegacyAddNewAlert;
- (void)_presentLegacyMigrationAlert;
- (void)_presentLegacyMigrationFailedAlert;
- (void)_presentPartialMigrationPrompt;
- (void)_reload;
- (void)_setScene:(id)a3;
- (void)_setupGalleryDataProviderIfNeeded;
- (void)_standaloneEditingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)dealloc;
- (void)editingIngestionManager:(id)a3 didAccept:(id)a4 userChoice:(int64_t)a5;
- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)galleryViewController:(id)a3 didSelectPreview:(id)a4 fromPreviewView:(id)a5;
- (void)invalidate;
- (void)posterExtensionDataStore:(id)a3 didUpdateGalleryConfiguration:(id)a4;
- (void)posterRackCollectionViewControllerDidPressCancel:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PBFModalRootViewController

- (PBFModalRootViewController)initWithScene:(id)a3
{
  v4 = a3;
  v5 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  v6 = [v5 dataStore];
  v7 = [(PBFModalRootViewController *)self initWithScene:v4 dataStore:v6];

  return v7;
}

- (PBFModalRootViewController)initWithScene:(id)a3 dataStore:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  NSClassFromString(&cfstr_Uiscene.isa);
  if (!v10)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  v11 = v9;
  NSClassFromString(&cfstr_Pbfposterexten.isa);
  if (!v11)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFModalRootViewController initWithScene:a2 dataStore:?];
  }

  v19.receiver = self;
  v19.super_class = PBFModalRootViewController;
  v12 = [(PBFModalRootViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parentScene, a3);
    parentScene = v13->_parentScene;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [(UIScene *)parentScene _registerSceneComponent:v13 forKey:v16];

    objc_storeStrong(&v13->_dataStore, a4);
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v13 selector:sel_dataStoreDidTearDown_ name:PBFPosterExtensionDataStoreDidTearDownNotification object:0];
  }

  return v13;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(UIViewController *)self dismissPresentedViewControllersAnimated:0 dismissHandler:0 completion:0];
    v8 = [(PBFModalRootViewController *)self ambientEditingController];
    [v8 invalidate];
    [(PBFModalRootViewController *)self setAmbientEditingController:0];
    parentScene = self->_parentScene;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(UIScene *)parentScene _unregisterSceneComponentForKey:v6];

    v7 = self->_parentScene;
    self->_parentScene = 0;
  }
}

+ (void)prewarmTopButtonLayout
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBFModalRootViewController prewarmTopButtonLayout]"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__PBFModalRootViewController_prewarmTopButtonLayout__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a1;
  PBFDispatchAsyncWithString(v3, QOS_CLASS_UTILITY, v4);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v5 viewDidLoad];
  v3 = [(PBFModalRootViewController *)self view];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v76.receiver = self;
  v76.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v76 viewDidAppear:a3];
  if (!self->_didAppearOnce)
  {
    self->_didAppearOnce = 1;
    v4 = [(UIScene *)self->_parentScene _FBSScene];
    v5 = [v4 settings];
    v6 = [v5 otherSettings];

    v7 = [v6 objectForSetting:2606278161];
    entryPoint = self->_entryPoint;
    self->_entryPoint = v7;

    v9 = [v6 BOOLForSetting:2606278162];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(PBFModalRootViewController *)self _setupGalleryDataProviderIfNeeded];
      v10 = [(PBFModalRootViewController *)self view];
      v11 = [v10 window];
      v12 = [v11 _rootSheetPresentationController];
      [v12 _setShouldScaleDownBehindDescendantSheets:0];

      v13 = self->_entryPoint;
      v14 = [PBFFocusPosterSelectionViewController alloc];
      v15 = [(PRUISModalEntryPoint *)v13 activityUUID];
      v16 = [(PRUISModalEntryPoint *)v13 activityIdentifier];
      v17 = [(PBFFocusPosterSelectionViewController *)v14 initWithActivityUUID:v15 activityIdentifier:v16 galleryDataProvider:self->_galleryDataProvider dataStore:self->_dataStore];
LABEL_5:
      v18 = v17;

      [v18 setDelegate:self];
      [(PBFModalRootViewController *)self _displayViewControllerAsSheet:v18];

LABEL_6:
      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(PBFModalRootViewController *)self _setupGalleryDataProviderIfNeeded];
      v19 = [(PBFModalRootViewController *)self view];
      v20 = [v19 window];
      v21 = [v20 _rootSheetPresentationController];
      [v21 _setShouldScaleDownBehindDescendantSheets:0];

      v13 = self->_entryPoint;
      v22 = [PBFPosterSelectionViewController alloc];
      v15 = [(PRUISModalEntryPoint *)v13 allowedConfigurationUUIDs];
      v16 = [(PRUISModalEntryPoint *)v13 selectedConfigurationUUID];
      v17 = [(PBFPosterSelectionViewController *)v22 initWithAllowedConfigurationUUIDs:v15 selectedConfigurationUUID:v16 galleryDataProvider:self->_galleryDataProvider dataStore:self->_dataStore];
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(PBFPosterExtensionDataStore *)self->_dataStore addObserver:self];
      [(PBFPosterExtensionDataStore *)self->_dataStore checkForGalleryUpdates];
      [(PBFModalRootViewController *)self _presentGallery];
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_27:
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v32 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
          v33 = [v32 activeConfiguration];

          if ([v33 pbf_isLegacy])
          {
            [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
          }

          else
          {
            v34 = objc_alloc_init(PBFActivePosterConfigurationFilter);
            v35 = objc_opt_class();
            if (v35)
            {
              [v35 _topButtonLayout];
            }

            else
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
            }

            v36 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherWithFilter:v34 delegate:self topButtonLayout:&v72];
            [(PBFModalRootViewController *)self presentViewController:v36 animated:1 completion:0];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v37 = self->_entryPoint;
          v38 = objc_alloc(MEMORY[0x277D3ED58]);
          v39 = [(PRUISModalEntryPoint *)v37 serverPosterPath];
          v40 = [v38 _initWithPath:v39];

          if ([v40 pbf_isLegacy])
          {
            [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
          }

          else
          {
            v70 = v40;
            v41 = [[PBFSinglePosterConfigurationFilter alloc] initWithConfiguration:v40];
            v42 = [(PRUISModalEntryPoint *)v37 transitionOverlayRenderId];
            v43 = [(PRUISModalEntryPoint *)v37 transitionOverlayContextId];
            if (v42)
            {
              v44 = v43 == 0;
            }

            else
            {
              v44 = 1;
            }

            v45 = v44;
            v71 = v45;
            if (v44)
            {
              v47 = 0;
            }

            else
            {
              v46 = v43;
              v47 = objc_alloc_init(MEMORY[0x277D76180]);
              [v47 portalLayer];
              v48 = v69 = v41;
              [v48 setSourceContextId:v46];
              [v48 setSourceLayerRenderId:v42];
              [v48 setAllowsGroupOpacity:1];
              [v47 setName:@"com.apple.PosterBoard.homeScreenPortalView"];
              [v47 setAllowsHitTesting:0];
              [v47 setMatchesPosition:0];
              [v47 setMatchesTransform:0];
              [v47 setClipsToBounds:1];

              v41 = v69;
            }

            v49 = objc_opt_class();
            if (v49)
            {
              [v49 _topButtonLayout];
            }

            else
            {
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
            }

            v50 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherWithFilter:v41 delegate:self topButtonLayout:&v72 homeScreenPortalView:v47];
            v51 = v50;
            if ((v71 & 1) == 0)
            {
              [v50 setEnteredPosterRackFromHomeScreen:1];
              [v51 setModalTransitionStyle:12];
            }

            [(PBFModalRootViewController *)self presentViewController:v51 animated:v71 completion:0];

            v40 = v70;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v52 = objc_alloc_init(PBFAmbientEditingCollectionViewController);
          [(PBFAmbientEditingCollectionViewController *)v52 setAmbientEditingDelegate:self];
          [(PBFAmbientEditingCollectionViewController *)v52 setModalTransitionStyle:2];
          [(PBFModalRootViewController *)self presentViewController:v52 animated:1 completion:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v53 = self->_entryPoint;
          v54 = objc_alloc(MEMORY[0x277D3ED58]);
          v55 = [(PRUISModalEntryPoint *)v53 serverPosterPath];
          v56 = [v54 _initWithPath:v55];

          v57 = [[PBFAmbientEditingCollectionViewController alloc] init:v56];
          [v57 setAmbientEditingDelegate:self];
          if (v9)
          {
            v58 = [(UIScene *)self->_parentScene _FBSScene];
            v59 = [v58 settings];
            v60 = [v59 displayConfiguration];

            [v57 setDisplayConfiguration:v60];
          }

          [v57 setModalTransitionStyle:2];
          objc_storeStrong(&self->_displayConfigurationObserver, v57);
          IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
          v62 = [(PRUISModalEntryPoint *)v53 transitionOverlayRenderId];
          v63 = [(PRUISModalEntryPoint *)v53 transitionOverlayContextId];
          if (!IsReduceMotionEnabled && v62)
          {
            v64 = v63;
            if (v63)
            {
              v65 = objc_alloc_init(MEMORY[0x277D76180]);
              v66 = [v65 portalLayer];
              [v66 setSourceContextId:v64];

              v67 = [v65 portalLayer];
              [v67 setSourceLayerRenderId:v62];

              v68 = [v65 portalLayer];
              [v68 setAllowsGroupOpacity:1];

              [v65 setName:@"com.apple.PosterBoard.transitionOverlayView"];
              [v65 setAllowsHitTesting:0];
              [v65 setMatchesPosition:0];
              [v65 setMatchesTransform:0];
              [v57 setTransitionOverlayView:v65];
            }
          }

          [(PBFModalRootViewController *)self setAmbientEditingController:v57];
          [(PBFModalRootViewController *)self presentViewController:v57 animated:IsReduceMotionEnabled completion:0];
        }

        goto LABEL_6;
      }
    }

    v23 = self->_entryPoint;
    v24 = [(PRUISModalEntryPoint *)v23 editingType];
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          [(PBFModalRootViewController *)self _presentEditingForNewPosterFromConfiguration:v23];
        }
      }

      else
      {
        v28 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
        v29 = [v28 activeConfiguration];
        [(PBFModalRootViewController *)self _presentEditingForPosterConfiguration:v29];
      }

      goto LABEL_26;
    }

    if (v24 == 3)
    {
      v30 = objc_alloc(MEMORY[0x277D3ED58]);
      v26 = [(PRUISModalEntryPoint *)v23 serverPosterPath];
      v27 = [v30 _initWithPath:v26];
      v31 = [(PRUISModalEntryPoint *)v23 updateSessionInfo];
      [(PBFModalRootViewController *)self _presentEditingForPosterConfiguration:v27 sessionInfo:v31];
    }

    else
    {
      if (v24 != 2)
      {
LABEL_26:

        goto LABEL_27;
      }

      v25 = objc_alloc(MEMORY[0x277D3ED58]);
      v26 = [(PRUISModalEntryPoint *)v23 serverPosterPath];
      v27 = [v25 _initWithPath:v26];
      [(PBFModalRootViewController *)self _presentEditingForPosterConfiguration:v27];
    }

    goto LABEL_26;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v3 viewDidDisappear:a3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PBFModalRootViewController;
  v7 = a4;
  [(PBFModalRootViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  WeakRetained = objc_loadWeakRetained(&self->_galleryController);
  [WeakRetained updatePreferredContentSizeForSize:v7 withTransitionCoordinator:{width, height, v9.receiver, v9.super_class}];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PBFModalRootViewController;
  [(PBFModalRootViewController *)&v2 dealloc];
}

- (void)_presentEditingForPosterConfiguration:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 pbf_isLegacy])
    {
      [(PBFModalRootViewController *)self _createLegacyMigrationHelperWithConfiguration:v6];
      if ([(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper canMigrateLegacyPoster])
      {
        [(PBFModalRootViewController *)self _presentLegacyMigrationAlert];
      }

      else if ([(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper canMigrateLegacyLockPoster])
      {
        [(PBFModalRootViewController *)self _presentPartialMigrationPrompt];
      }

      else
      {
        v28 = [(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper migrationInfo];
        [PBFLegacyMigrationAnalyticsReporter recordWithEvent:2 migrationInfo:v28 duration:0 errorCode:-1.0];

        legacyMigrationHelper = self->_legacyMigrationHelper;
        self->_legacyMigrationHelper = 0;

        [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
      }
    }

    else
    {
      v7 = [v6 _path];
      NSClassFromString(&cfstr_Pfserverposter_0.isa);
      if (!v7)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2];
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2];
      }

      v8 = [v6 _path];
      v36 = [(PBFPosterExtensionDataStore *)self->_dataStore providerForPath:v8];
      if (v8 && v36)
      {
        v9 = MEMORY[0x277D3EB78];
        v10 = [v36 identity];
        v11 = [MEMORY[0x277CCAD78] UUID];
        v12 = [v9 extensionInstanceForIdentity:v10 instanceIdentifier:v11];

        v13 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
        v14 = [v13 activeConfiguration];

        v15 = [v14 _path];
        v16 = [v15 identity];
        v17 = [v16 posterUUID];
        v18 = [v8 identity];
        v19 = [v18 posterUUID];
        v35 = v8;
        v20 = v12;
        v21 = v14;
        LODWORD(v14) = [v17 isEqual:v19];

        if (v14)
        {
          v37 = 0;
          v38 = &v37;
          v39 = 0x2050000000;
          v22 = getSBSWallpaperServiceClass_softClass;
          v40 = getSBSWallpaperServiceClass_softClass;
          v23 = v21;
          v24 = v20;
          v8 = v35;
          if (!getSBSWallpaperServiceClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v44 = __getSBSWallpaperServiceClass_block_invoke;
            v45 = &unk_2782C5CB0;
            v46 = &v37;
            __getSBSWallpaperServiceClass_block_invoke(&buf);
            v22 = v38[3];
          }

          v25 = v22;
          _Block_object_dispose(&v37, 8);
          v26 = objc_alloc_init(v22);
          if (objc_opt_respondsToSelector())
          {
            v27 = [v26 posterSignificantEventsCounter];
          }

          else
          {
            v27 = 0;
          }

          v41 = *MEMORY[0x277D3EF00];
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
          v42 = v33;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

          v30 = [v23 loadConfiguredPropertiesWithError:0];
          v31 = [v23 loadConfigurableOptionsWithError:0];
          [v26 invalidate];
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v23 = v21;
          v24 = v20;
          v8 = v35;
        }

        v34 = [objc_alloc(MEMORY[0x277D3ECC0]) initWithProvider:v24 contents:v8 configurableOptions:v31 configuredProperties:v30 additionalInfo:v32];
        [(PBFModalRootViewController *)self _presentEditingSceneViewController:v34];
      }

      else
      {
        v24 = PBFLogModal();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "Could not find extension for path: %@", &buf, 0xCu);
        }
      }
    }
  }
}

- (void)_presentEditingSceneViewController:(id)a3
{
  v5 = a3;
  [v5 setDelegate:self];
  [v5 addObserver:self];
  [v5 setModalPresentationStyle:0];
  v4 = [v5 view];
  [v4 setTag:1];

  [(PBFModalRootViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_presentEditingForPosterConfiguration:(id)a3 sessionInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if ([v7 pbf_isLegacy])
    {
      [(PBFModalRootViewController *)self _presentLegacyAddNewAlert];
    }

    else
    {
      v9 = [v7 _path];
      NSClassFromString(&cfstr_Pfserverposter_0.isa);
      if (!v9)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2 sessionInfo:?];
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PBFModalRootViewController _presentEditingForPosterConfiguration:a2 sessionInfo:?];
      }

      v10 = [v7 _path];
      v11 = [(PBFPosterExtensionDataStore *)self->_dataStore providerForPath:v10];
      v12 = v11;
      if (v10 && v11)
      {
        v13 = [MEMORY[0x277D3E9C8] posterUpdatesForDecoratedSessionInfo:v8];
        dataStore = self->_dataStore;
        v15 = [v10 serverIdentity];
        v16 = [v15 posterUUID];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke;
        v17[3] = &unk_2782C7638;
        v18 = v12;
        v19 = self;
        v20 = v10;
        [(PBFPosterExtensionDataStore *)dataStore createTemporaryPosterConfigurationForPosterMatchingUUID:v16 andApplyUpdates:v13 completion:v17];
      }
    }
  }
}

void __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x277D3EB78];
  v9 = [*(a1 + 32) identity];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v8 extensionInstanceForIdentity:v9 instanceIdentifier:v10];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2;
  block[3] = &unk_2782C7610;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = v6;
  v19 = v12;
  v20 = v7;
  v21 = v13;
  v22 = v11;
  v14 = v11;
  v15 = v7;
  v16 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong(v3 + 127, v2);
    v4 = MEMORY[0x277D3EBA0];
    v5 = [*(a1 + 32) incomingPosterConfiguration];
    v6 = [v5 path];
    v7 = [v6 contentsURL];
    v8 = [*(a1 + 56) serverIdentity];
    v25 = [v4 pathWithContainerURL:v7 identity:v8];

    v9 = objc_alloc(MEMORY[0x277D3ECC0]);
    v10 = *(a1 + 64);
    v11 = [*(a1 + 32) incomingPosterConfiguration];
    v12 = [v11 configuredProperties];
    v13 = [v9 initWithProvider:v10 contents:v25 configurableOptions:0 configuredProperties:v12];

    [v13 setDelegate:*(a1 + 40)];
    [v13 addObserver:*(a1 + 40)];
    [v13 setModalPresentationStyle:0];
    v14 = [v13 view];
    [v14 setTag:1];

    [*(a1 + 40) presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v15 = [MEMORY[0x277D3EAF0] cancel];
    [v3 _handleSheetWillDismissWithResponse:v15];

    v16 = *(a1 + 40);
    v17 = [MEMORY[0x277D3EAF0] cancel];
    [v16 _handleSheetDidDismissWithResponse:v17];

    v18 = PBFLogModal();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __80__PBFModalRootViewController__presentEditingForPosterConfiguration_sessionInfo___block_invoke_2_cold_1(a1, v18, v19, v20, v21, v22, v23, v24);
    }
  }
}

- (void)_presentEditingForNewPosterFromConfiguration:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v4 extensionIdentifier];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(PBFPosterExtensionDataStore *)self->_dataStore providerForExtensionIdentifier:v6];
  v9 = v8;
  if (v8)
  {
    v62 = v5;
    v10 = MEMORY[0x277D3EB78];
    v60 = v8;
    v11 = [v8 identity];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v59 = [v10 extensionInstanceForIdentity:v11 instanceIdentifier:v12];

    v13 = *MEMORY[0x277D3EEF0];
    v14 = MEMORY[0x277D3ED00];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    v17 = [v14 mutableDescriptorWithIdentifier:v16 role:v13];

    v18 = MEMORY[0x277D3EB98];
    v19 = [MEMORY[0x277CCAD78] UUID];
    v61 = v13;
    v20 = [v18 incomingConfigurationIdentityWithProvider:v6 role:v13 posterUUID:v19 version:1 supplement:0];

    v21 = MEMORY[0x277D3EBA0];
    v22 = [v17 _path];
    v23 = [v22 contentsURL];
    v58 = v20;
    v24 = [v21 pathWithContainerURL:v23 identity:v20];

    v71 = 0;
    LOBYTE(v22) = [v24 ensureContentsURLIsReachableAndReturnError:&v71];
    v25 = v71;
    if ((v22 & 1) == 0)
    {
      v26 = PBFLogModal();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    v27 = [v24 contentsURL];
    v70 = 0;
    v28 = [v7 removeItemAtURL:v27 error:&v70];
    v29 = v70;

    if ((v28 & 1) == 0)
    {
      v30 = PBFLogModal();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    v31 = [v62 _path];
    v32 = [v31 contentsURL];
    v33 = [v24 contentsURL];
    v69 = 0;
    v34 = [v7 copyItemAtURL:v32 toURL:v33 error:&v69];
    v35 = v69;

    if ((v34 & 1) == 0)
    {
      v36 = PBFLogModal();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    v37 = [MEMORY[0x277D3EDB0] defaultHomeScreenConfigurationForProvider:v6 role:v61];
    v38 = [v24 supplementURL];
    v39 = PFFileProtectionNoneAttributes();
    v68 = 0;
    v40 = [v7 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:v39 error:&v68];
    v41 = v68;

    v56 = v7;
    v57 = v37;
    if (v40)
    {
      v67 = 0;
      v42 = [MEMORY[0x277D3EDE8] storeHomeScreenConfigurationForPath:v24 homeScreenConfiguration:v37 error:&v67];
      v43 = v67;

      if (v42)
      {
        v44 = v43;
LABEL_25:
        temporaryDescriptor = self->_temporaryDescriptor;
        self->_temporaryDescriptor = v17;
        v48 = v17;

        v72 = *MEMORY[0x277D3EEF8];
        v73 = MEMORY[0x277CBEC38];
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v45 = v59;
        v50 = [objc_alloc(MEMORY[0x277D3ECC0]) initWithProvider:v59 contents:v24 configurableOptions:0 configuredProperties:0 additionalInfo:v49];
        [v50 setDelegate:self];
        [v50 addObserver:self];
        v51 = [v50 view];
        [v51 setTag:1];

        v52 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v50];
        [v52 setNavigationBarHidden:1 animated:0];
        [v52 setModalPresentationStyle:0];
        v53 = [(PBFPosterExtensionDataStore *)self->_dataStore canPersistNewPosterConfiguration];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __75__PBFModalRootViewController__presentEditingForNewPosterFromConfiguration___block_invoke;
        v63[3] = &unk_2782C7660;
        v66 = v53;
        v63[4] = self;
        v64 = v50;
        v65 = v52;
        v54 = v52;
        v55 = v50;
        [(PBFModalRootViewController *)self presentViewController:v54 animated:1 completion:v63];

        v5 = v62;
        v9 = v60;
        v7 = v56;
        goto LABEL_26;
      }

      v46 = PBFLogModal();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }
    }

    else
    {
      v46 = PBFLogModal();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _presentEditingForNewPosterFromConfiguration:];
      }

      v43 = v41;
    }

    v44 = v43;

    goto LABEL_25;
  }

  v45 = PBFLogModal();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v75 = v6;
    _os_log_impl(&dword_21B526000, v45, OS_LOG_TYPE_DEFAULT, "Could not find extension with id: %@", buf, 0xCu);
  }

LABEL_26:
}

void __75__PBFModalRootViewController__presentEditingForNewPosterFromConfiguration___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__PBFModalRootViewController__presentEditingForNewPosterFromConfiguration___block_invoke_2;
    v4[3] = &unk_2782C5888;
    v2 = *(a1 + 32);
    v5 = *(a1 + 40);
    v3 = [v2 _posterLimitExceededAlertWithButtonActionHandler:v4];
    [*(a1 + 48) presentViewController:v3 animated:1 completion:0];
  }
}

- (void)posterRackCollectionViewControllerDidPressCancel:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] cancel];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__PBFModalRootViewController_posterRackCollectionViewControllerDidPressCancel___block_invoke;
  v6[3] = &unk_2782C58B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (BOOL)posterRackCollectionViewControllerDidPressDone:(id)a3
{
  v4 = [(PBFModalRootViewController *)self _isPhotosEntryPoint];
  v5 = [MEMORY[0x277D3EAF0] done];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v5];
  if (v4)
  {
    [(PBFModalRootViewController *)self _handleSheetDidDismissWithResponse:v5];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__PBFModalRootViewController_posterRackCollectionViewControllerDidPressDone___block_invoke;
    v7[3] = &unk_2782C58B0;
    v7[4] = self;
    v8 = v5;
    v5 = v5;
    [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v7];
  }

  return 1;
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3
{
  result = objc_opt_class();
  if (result)
  {

    return [(PREditingSceneViewControllerTopButtonLayout *)result _topButtonLayout];
  }

  else
  {
    retstr->trailingTopButtonFrame.origin = 0u;
    retstr->trailingTopButtonFrame.size = 0u;
    retstr->leadingTopButtonFrame.origin = 0u;
    retstr->leadingTopButtonFrame.size = 0u;
  }

  return result;
}

- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v19 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [v19 addObserver:self];
  v16 = [v19 view];
  v17 = [v16 tag];

  if (v17 == 1)
  {
    [(PBFModalRootViewController *)self _standaloneEditingSceneViewController:v19 userDidDismissWithAction:a4 updatedConfiguration:v13 updatedConfiguredProperties:v14 completion:v15];
    goto LABEL_5;
  }

  if (!v17)
  {
    [(PBFModalRootViewController *)self _galleryEditingSceneViewController:v19 userDidDismissWithAction:a4 updatedConfiguration:v13 updatedConfiguredProperties:v14 completion:v15];
LABEL_5:

    return;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"NO"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PBFModalRootViewController editingSceneViewController:a2 userDidDismissWithAction:self updatedConfiguration:v18 updatedConfiguredProperties:? completion:?];
  }

  [v18 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_galleryEditingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a4 == 1)
  {
    v47 = a7;
    v15 = [v14 suggestionMetadata];
    v48 = [v15 lastModifiedDate];

    v16 = [v14 suggestionMetadata];
    v17 = [v16 metadataBySettingLastModifiedDateToNow];

    if (!v17)
    {
      v18 = objc_alloc(MEMORY[0x277D3EE20]);
      v19 = [MEMORY[0x277CBEAA8] date];
      v17 = [v18 initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:MEMORY[0x277CBEC10] lastModifiedDate:v19];
    }

    v49 = v14;
    v20 = [v14 mutableCopy];
    [v20 setSuggestionMetadata:v17];
    v21 = objc_alloc_init(PBFPosterEditingIngestionManager);
    [(PBFPosterEditingIngestionManager *)v21 setDelegate:self];
    v46 = v21;
    v22 = [(PBFPosterEditingIngestionManager *)v21 ingestConfiguration:v13 updatedConfiguredProperties:v20 editingViewController:v12 galleryViewController:0 showEditingConfirmation:1];
    v23 = v12;
    v24 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
    v25 = [v24 mutableCopy];

    v26 = [v25 configurations];
    v27 = [v26 lastObject];

    [v25 setSelectedConfiguration:v27];
    [v25 setDesiredActiveConfiguration:v27];
    dataStore = self->_dataStore;
    v50 = 0;
    v29 = [(PBFPosterExtensionDataStore *)dataStore updateDataStoreForSwitcherConfiguration:v25 reason:@"update poster from modal gallery" error:&v50];
    v30 = v17;
    v31 = v50;

    v32 = self;
    if (!v29)
    {
      v33 = PBFLogModal();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [PBFModalRootViewController _galleryEditingSceneViewController:userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:];
      }

      v32 = self;
    }

    v44 = v20;
    v45 = v30;
    v34 = [v27 _path];
    [v34 serverIdentity];
    v36 = v35 = v13;
    v37 = [v36 posterUUID];
    v38 = [v37 UUIDString];
    v39 = v32;
    v40 = v23;
    v41 = v23;
    v42 = v48;
    [(PBFModalRootViewController *)v39 _logEditWithEditingViewController:v41 posterUUID:v38 lastModifiedDate:v48];

    v13 = v35;
    v47[2](v47, v31);

    v12 = v40;
    v14 = v49;
  }

  else
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __150__PBFModalRootViewController__galleryEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
    v51[3] = &unk_2782C5888;
    v52 = v12;
    v43 = a7;
    [v52 dismissViewControllerAnimated:1 completion:v51];
    v43[2](v43, 0);

    v42 = v52;
  }
}

- (void)_standaloneEditingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v102 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v69 = a5;
  v74 = a6;
  v71 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke;
  aBlock[3] = &unk_2782C7688;
  aBlock[4] = self;
  v70 = _Block_copy(aBlock);
  v13 = self->_entryPoint;
  NSClassFromString(&cfstr_Pruismodalentr.isa);
  if (!v13)
  {
    [PBFModalRootViewController _standaloneEditingSceneViewController:a2 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFModalRootViewController _standaloneEditingSceneViewController:a2 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
  }

  v72 = self->_entryPoint;
  if (a4 == 1)
  {
    v14 = [v74 suggestionMetadata];
    v73 = [v14 lastModifiedDate];

    v15 = [v74 suggestionMetadata];
    v16 = [v15 metadataBySettingLastModifiedDateToNow];

    if (!v16)
    {
      v17 = objc_alloc(MEMORY[0x277D3EE20]);
      v18 = [MEMORY[0x277CBEAA8] date];
      v16 = [v17 initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:MEMORY[0x277CBEC10] lastModifiedDate:v18];
    }

    v68 = [v74 mutableCopy];
    [v68 setSuggestionMetadata:v16];
    v67 = [v75 contentsIdentity];
    v19 = [(PRUISModalEntryPoint *)v72 editingType];
    if ((v19 - 2) >= 2 && v19)
    {
      if (v19 != 1)
      {
LABEL_46:

        goto LABEL_47;
      }

      v20 = objc_alloc_init(PBFPosterEditingIngestionManager);
      [(PBFPosterEditingIngestionManager *)v20 setDelegate:self];
      v21 = [(PBFPosterEditingIngestionManager *)v20 ingestConfiguration:v69 updatedConfiguredProperties:v68 editingViewController:v75 galleryViewController:0 showEditingConfirmation:1];
      v22 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
      v23 = [v22 mutableCopy];

      v24 = [v23 configurations];
      v25 = [v24 lastObject];

      [v23 setSelectedConfiguration:v25];
      [v23 setDesiredActiveConfiguration:v25];
      dataStore = self->_dataStore;
      v93 = 0;
      v27 = [(PBFPosterExtensionDataStore *)dataStore updateDataStoreForSwitcherConfiguration:v23 reason:@"Modal New Poster" error:&v93];
      v28 = v93;
      if (v28)
      {
        v29 = PBFLogModal();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [PBFModalRootViewController _standaloneEditingSceneViewController:userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:];
        }
      }

      v30 = [v25 _path];
      v31 = [v30 serverIdentity];
      v32 = [v31 posterUUID];
      v33 = [v32 UUIDString];

      [(PBFModalRootViewController *)self _logEditWithEditingViewController:v75 posterUUID:v33 lastModifiedDate:v73];
      v71[2](v71, 0);
    }

    else
    {
      if (self->_legacyMigrationHelper)
      {
        v39 = [MEMORY[0x277CBEAA8] date];
        v40 = objc_alloc_init(PBFPosterEditingIngestionManager);
        [(PBFPosterEditingIngestionManager *)v40 setDelegate:self];
        v41 = [(PBFPosterEditingIngestionManager *)v40 ingestConfiguration:v69 updatedConfiguredProperties:v68 editingViewController:v75 galleryViewController:0 showEditingConfirmation:0];
        if (v41)
        {
          [v75 addLongSaveOperationIndicator];
          objc_initWeak(&buf, self);
          legacyMigrationHelper = self->_legacyMigrationHelper;
          v43 = [v41 configurationUUID];
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_119;
          v85[3] = &unk_2782C76B0;
          objc_copyWeak(&v90, &buf);
          v86 = v75;
          v39 = v39;
          v87 = v39;
          v41 = v41;
          v88 = v41;
          v89 = self;
          [(PBFLegacyPosterMigrationHelper *)legacyMigrationHelper migrateHomePosterAndAssociateToConfiguration:v43 completion:v85];

          objc_destroyWeak(&v90);
          objc_destroyWeak(&buf);
        }

        else
        {
          v48 = [MEMORY[0x277CBEAA8] date];
          [v48 timeIntervalSinceDate:v39];
          v50 = v49;
          v51 = [(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper migrationInfo];
          [PBFLegacyMigrationAnalyticsReporter recordWithEvent:3 migrationInfo:v51 duration:0 errorCode:v50];

          v52 = PBFLogLegacyPosterMigration();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [PBFModalRootViewController _standaloneEditingSceneViewController:v52 userDidDismissWithAction:? updatedConfiguration:? updatedConfiguredProperties:? completion:?];
          }

          v53 = self->_legacyMigrationHelper;
          self->_legacyMigrationHelper = 0;

          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_118;
          v92[3] = &unk_2782C5888;
          v92[4] = self;
          [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v92];
        }

        v28 = 0;
      }

      else
      {
        v44 = [v67 type] == 3;
        v45 = objc_alloc(MEMORY[0x277D3ECE0]);
        v46 = [v69 _path];
        if (v44)
        {
          v47 = [v67 posterUUID];
          v39 = [v45 initWithUpdatedPath:v46 updatedPosterUUID:v47 sourceIdentity:v67 configuredProperties:v68 attributes:0];
        }

        else
        {
          v39 = [v45 initWithNewPath:v46 destinationPosterUUID:0 sourceIdentity:v67 configuredProperties:v68 attributes:0];
        }

        v54 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
        v40 = [v54 mutableCopy];

        [(PBFPosterEditingIngestionManager *)v40 ingestNewPosterConfiguration:v39];
        v55 = [(PBFPosterConfigurationUpdateResult *)self->_temporaryConfigurationUpdateResult incomingAssocPosterConfiguration];

        if (v55)
        {
          v56 = [(PBFPosterConfigurationUpdateResult *)self->_temporaryConfigurationUpdateResult incomingAssocPosterConfiguration];
          v57 = [v75 contentsIdentity];
          v58 = [v57 posterUUID];
          [(PBFPosterEditingIngestionManager *)v40 ingestNewPosterConfiguration:v56 toBeAssociatedWithUUID:v58];
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v59 = [(PBFPosterConfigurationUpdateResult *)self->_temporaryConfigurationUpdateResult postersToDelete];
        v60 = [v59 countByEnumeratingWithState:&v81 objects:v101 count:16];
        if (v60)
        {
          v61 = *v82;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v82 != v61)
              {
                objc_enumerationMutation(v59);
              }

              [(PBFPosterEditingIngestionManager *)v40 removeConfiguration:*(*(&v81 + 1) + 8 * i)];
            }

            v60 = [v59 countByEnumeratingWithState:&v81 objects:v101 count:16];
          }

          while (v60);
        }

        v63 = self->_dataStore;
        v80 = 0;
        v64 = [(PBFPosterExtensionDataStore *)v63 updateDataStoreForSwitcherConfiguration:v40 reason:@"Modal Select Active Poster" error:&v80];
        v28 = v80;
        v65 = [MEMORY[0x277D3EAF0] done];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v65];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_127;
        v76[3] = &unk_2782C6180;
        v79 = v70;
        v77 = v65;
        v78 = v75;
        v41 = v65;
        [v78 dismissViewControllerAnimated:1 completion:v76];
      }

      v66 = [v67 posterUUID];
      v20 = [v66 UUIDString];

      [(PBFModalRootViewController *)self _logEditWithEditingViewController:v75 posterUUID:v20 lastModifiedDate:v73];
      (v71)[2](v71, v28);
    }

    goto LABEL_46;
  }

  v73 = [MEMORY[0x277D3EAF0] cancel];
  if (self->_legacyMigrationHelper)
  {
    v34 = PBFLogLegacyPosterMigration();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_INFO, "Legacy migration cancelled, clearing migration info", &buf, 2u);
    }

    v35 = self->_legacyMigrationHelper;
    self->_legacyMigrationHelper = 0;
  }

  v36 = [(PRUISModalEntryPoint *)v72 editingType];
  if ((v36 - 2) < 2 || !v36)
  {
    [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v73];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2;
    v94[3] = &unk_2782C6180;
    v97 = v70;
    v95 = v73;
    v96 = v75;
    [v96 dismissViewControllerAnimated:1 completion:v94];
    v71[2](v71, 0);

    v38 = &v97;
    goto LABEL_23;
  }

  if (v36 == 1)
  {
    [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v73];
    (*(v70 + 2))(v70, v73);
    v71[2](v71, 0);
    v37 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_114;
    block[3] = &unk_2782C5888;
    v38 = &v99;
    v99 = v75;
    dispatch_after(v37, MEMORY[0x277D85CD0], block);
LABEL_23:
    v16 = *v38;
LABEL_47:
  }
}

void __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleSheetDidDismissWithResponse:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1008);
  *(v3 + 1008) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 1016);
  *(v5 + 1016) = 0;
}

uint64_t __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_119(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained[130];
  [*(a1 + 32) removeLongSaveOperationIndicator];
  if (v4)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v9 = v8;
    v10 = [WeakRetained[130] migrationInfo];
    +[PBFLegacyMigrationAnalyticsReporter recordWithEvent:migrationInfo:duration:errorCode:](PBFLegacyMigrationAnalyticsReporter, "recordWithEvent:migrationInfo:duration:errorCode:", 4, v10, [v4 code], v9);

    v11 = PBFLogLegacyPosterMigration();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_119_cold_1();
    }

    v12 = [*(a1 + 48) configurationUUID];
    [v6 revertMigrationWithMigratedConfigurationUUID:v12];

    v13 = *(a1 + 56);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_120;
    v27[3] = &unk_2782C5888;
    v27[4] = v13;
    [v13 dismissViewControllerAnimated:1 completion:v27];
  }

  else
  {
    v14 = [*(a1 + 48) configurationUUID];
    [v6 finalizeMigrationWithMigratedConfigurationUUID:v14];

    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v16 = v15;
    if (([v6 canMigrateLegacyPoster] & 1) != 0 || !objc_msgSend(v6, "canMigrateLegacyLockPoster"))
    {
      v17 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "Successful legacy poster migration!", buf, 2u);
      }

      v18 = 0;
    }

    else
    {
      v17 = PBFLogLegacyPosterMigration();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "Successful legacy poster migration! (lock only)", buf, 2u);
      }

      v18 = 1;
    }

    v19 = [WeakRetained[130] migrationInfo];
    [PBFLegacyMigrationAnalyticsReporter recordWithEvent:v18 migrationInfo:v19 duration:0 errorCode:v16];

    v20 = [MEMORY[0x277D3EAF0] done];
    [*(a1 + 56) _handleSheetWillDismissWithResponse:v20];
    v21 = *(a1 + 56);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_121;
    v24[3] = &unk_2782C58B0;
    v24[4] = v21;
    v25 = v20;
    v22 = v20;
    [v21 dismissViewControllerAnimated:1 completion:v24];
  }

  v23 = WeakRetained[130];
  WeakRetained[130] = 0;
}

uint64_t __153__PBFModalRootViewController__standaloneEditingSceneViewController_userDidDismissWithAction_updatedConfiguration_updatedConfiguredProperties_completion___block_invoke_2_127(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForFocusPosterSelectionViewController:(SEL)a3
{
  result = objc_opt_class();
  if (result)
  {

    return [(PREditingSceneViewControllerTopButtonLayout *)result _topButtonLayout];
  }

  else
  {
    retstr->trailingTopButtonFrame.origin = 0u;
    retstr->trailingTopButtonFrame.size = 0u;
    retstr->leadingTopButtonFrame.origin = 0u;
    retstr->leadingTopButtonFrame.size = 0u;
  }

  return result;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] cancel];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v4];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] cancel];
  [(PBFModalRootViewController *)self _handleSheetDidDismissWithResponse:v4];
}

- (BOOL)ambientEditingCollectionViewControllerDidPressDone:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] done];
  [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v4];
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__PBFModalRootViewController_ambientEditingCollectionViewControllerDidPressDone___block_invoke;
  v8[3] = &unk_2782C58B0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(PBFModalRootViewController *)self dismissViewControllerAnimated:IsReduceMotionEnabled completion:v8];

  return 1;
}

+ (PREditingSceneViewControllerTopButtonLayout)_topButtonLayout
{
  if (_topButtonLayout_onceToken_0 != -1)
  {
    +[PBFModalRootViewController _topButtonLayout];
  }

  v4 = unk_28120BE98;
  retstr->leadingTopButtonFrame.origin = _topButtonLayout_layout_0;
  retstr->leadingTopButtonFrame.size = v4;
  v5 = unk_28120BEB8;
  retstr->trailingTopButtonFrame.origin = xmmword_28120BEA8;
  retstr->trailingTopButtonFrame.size = v5;
  return result;
}

double __46__PBFModalRootViewController__topButtonLayout__block_invoke()
{
  SBSTopButtonFramesForPosters();
  result = 0.0;
  _topButtonLayout_layout_0 = 0u;
  unk_28120BE98 = 0u;
  xmmword_28120BEA8 = 0u;
  unk_28120BEB8 = 0u;
  return result;
}

- (void)_displayViewControllerAsSheet:(id)a3
{
  v4 = MEMORY[0x277D757A0];
  v5 = a3;
  v7 = [[v4 alloc] initWithRootViewController:v5];

  [v7 setModalPresentationStyle:2];
  v6 = [v7 sheetPresentationController];
  [v6 setDelegate:self];
  [(PBFModalRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_handleSheetWillDismissWithResponse:(id)a3
{
  v4 = MEMORY[0x277D3EB50];
  v5 = a3;
  v8 = [[v4 alloc] initWithResponse:v5];

  v6 = [(UIScene *)self->_parentScene _FBSScene];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [v6 sendActions:v7];
}

- (void)_handleSheetDidDismissWithResponse:(id)a3
{
  v4 = MEMORY[0x277D3EA78];
  v5 = a3;
  v8 = [[v4 alloc] initWithResponse:v5];

  v6 = [(UIScene *)self->_parentScene _FBSScene];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
  [v6 sendActions:v7];
}

void __51__PBFModalRootViewController_dataStoreDidTearDown___block_invoke(uint64_t a1)
{
  v2 = PBFLogModal();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "Dismissing modal sheet due to data store tear down", buf, 2u);
  }

  v3 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v3];
  v4 = [*(a1 + 32) _isPhotosEntryPoint];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _handleSheetDidDismissWithResponse:v3];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__PBFModalRootViewController_dataStoreDidTearDown___block_invoke_131;
    v6[3] = &unk_2782C58B0;
    v6[4] = v5;
    v7 = v3;
    [v5 dismissPresentedViewControllersAnimated:1 dismissHandler:0 completion:v6];
  }
}

- (void)_presentLegacyAddNewAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_TITLE");
  v5 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_BUTTON_ADD_NEW");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PBFModalRootViewController__presentLegacyAddNewAlert__block_invoke;
  v14[3] = &unk_2782C76D8;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];

  [v6 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"CANCEL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__PBFModalRootViewController__presentLegacyAddNewAlert__block_invoke_2;
  v13[3] = &unk_2782C76D8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:1 handler:v13];

  [v6 addAction:v12];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __55__PBFModalRootViewController__presentLegacyAddNewAlert__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_presentPartialMigrationPrompt
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_HOME_ALERT_TITLE");
  v5 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_HOME_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_HOME_ALERT_BUTTON_CUSTOMIZE_LOCK");
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke;
  v18[3] = &unk_2782C76D8;
  v18[4] = self;
  v9 = [v7 actionWithTitle:v8 style:2 handler:v18];

  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"CANNOT_MIGRATE_LEGACY_ALERT_BUTTON_ADD_NEW");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke_2;
  v17[3] = &unk_2782C76D8;
  v17[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v17];

  [v6 addAction:v9];
  [v6 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  v14 = PBFLocalizedString(@"CANCEL");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke_3;
  v16[3] = &unk_2782C76D8;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v16];

  [v6 addAction:v15];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __60__PBFModalRootViewController__presentPartialMigrationPrompt__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_presentLegacyMigrationAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_TITLE");
  v5 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_BUTTON_MIGRATE_EXISTING");
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke;
  v18[3] = &unk_2782C76D8;
  v18[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v18];

  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"MIGRATE_LEGACY_ALERT_BUTTON_ADD_NEW");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke_2;
  v17[3] = &unk_2782C76D8;
  v17[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v17];

  [v6 addAction:v9];
  [v6 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  v14 = PBFLocalizedString(@"CANCEL");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke_3;
  v16[3] = &unk_2782C76D8;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v16];

  [v6 addAction:v15];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __58__PBFModalRootViewController__presentLegacyMigrationAlert__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_presentLegacyMigrationFailedAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = PBFLocalizedString(@"ERROR_MIGRATING_LEGACY_ALERT_TITLE");
  v5 = PBFLocalizedString(@"ERROR_MIGRATING_LEGACY_ALERT_MESSAGE");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:0];

  v7 = MEMORY[0x277D750F8];
  v8 = PBFLocalizedString(@"ERROR_MIGRATING_LEGACY_ALERT_BUTTON_ADD_NEW");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__PBFModalRootViewController__presentLegacyMigrationFailedAlert__block_invoke;
  v14[3] = &unk_2782C76D8;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];

  [v6 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = PBFLocalizedString(@"CANCEL");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__PBFModalRootViewController__presentLegacyMigrationFailedAlert__block_invoke_2;
  v13[3] = &unk_2782C76D8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:1 handler:v13];

  [v6 addAction:v12];
  [(PBFModalRootViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __64__PBFModalRootViewController__presentLegacyMigrationFailedAlert__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3EAF0] cancel];
  [*(a1 + 32) _handleSheetWillDismissWithResponse:v2];
  [*(a1 + 32) _handleSheetDidDismissWithResponse:v2];
}

- (void)_setupGalleryDataProviderIfNeeded
{
  if (!self->_galleryDataProvider)
  {
    v3 = objc_alloc_init(PBFGalleryMutableDataProvider);
    galleryDataProvider = self->_galleryDataProvider;
    self->_galleryDataProvider = v3;

    [(PBFModalRootViewController *)self _reload];
  }
}

- (void)_reload
{
  v3 = [(PBFPosterExtensionDataStore *)self->_dataStore currentGalleryConfiguration];
  [(PBFGalleryMutableDataProvider *)self->_galleryDataProvider configureForGallery:v3];
}

- (void)_presentGallery
{
  v3 = [(PBFModalRootViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 _rootSheetPresentationController];
  [v5 _setShouldScaleDownBehindDescendantSheets:0];

  [(PBFModalRootViewController *)self _setupGalleryDataProviderIfNeeded];
  obj = [[PBFPosterGalleryPreviewViewController alloc] initWithNibName:0 bundle:0];
  [(PBFPosterGalleryPreviewViewController *)obj setDelegate:self];
  [(PBFPosterGalleryPreviewViewController *)obj setEditingSceneDelegate:self];
  [(PBFPosterGalleryPreviewViewController *)obj setDataProvider:self->_galleryDataProvider];
  PFCurrentDeviceClass();
  [(PBFPosterGalleryPreviewViewController *)obj setModalPresentationStyle:2];
  v6 = [(PBFPosterGalleryPreviewViewController *)obj sheetPresentationController];
  [PBFPosterGalleryPreviewViewController configureSheetPresentationController:v6];
  [v6 setDelegate:self];
  [(PBFModalRootViewController *)self presentViewController:obj animated:1 completion:0];

  objc_storeWeak(&self->_galleryController, obj);
  v7 = [(PBFPosterExtensionDataStore *)self->_dataStore currentGalleryConfiguration];
  v8 = [v7 suggestedLayout];
  v9 = [v8 proactiveRepresentation];

  if (v9)
  {
    v10 = [MEMORY[0x277CEB530] sharedInstance];
    [v10 logFaceGalleryDidAppearWithFaceGalleryConfiguration:v9];
  }
}

- (void)_createLegacyMigrationHelperWithConfiguration:(id)a3
{
  if (a3 && !self->_legacyMigrationHelper)
  {
    v4 = a3;
    v7 = [[PBFPosterPair alloc] initWithConfiguration:v4 associatedConfiguration:0];

    v5 = [[PBFLegacyPosterMigrationHelper alloc] initWithDataStore:self->_dataStore legacyPosterPair:v7];
    legacyMigrationHelper = self->_legacyMigrationHelper;
    self->_legacyMigrationHelper = v5;
  }
}

- (void)_performLegacyMigration
{
  v3 = [(PBFLegacyPosterMigrationHelper *)self->_legacyMigrationHelper lockScreenMigrationViewController];
  if (v3)
  {
    v4 = v3;
    [(PBFModalRootViewController *)self _presentEditingSceneViewController:v3];
    v3 = v4;
  }
}

- (BOOL)_isPhotosEntryPoint
{
  entryPoint = self->_entryPoint;
  v3 = objc_opt_class();
  v4 = entryPoint;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(PRUISModalEntryPoint *)v6 editingType];
  return v7 == 1;
}

- (void)_logEditWithEditingViewController:(id)a3 posterUUID:(id)a4 lastModifiedDate:(id)a5
{
  v33 = a3;
  v8 = a5;
  v32 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [(PRUISModalEntryPoint *)self->_entryPoint editingType];
    v10 = @"unknown";
    v11 = @"modalEditingEditPosterFromConfiguration";
    v12 = @"modalEditingEditPosterFromConfigurationWithUpdateSessionInfo";
    if (v9 != 3)
    {
      v12 = @"unknown";
    }

    if (v9 != 2)
    {
      v11 = v12;
    }

    if (v9 == 1)
    {
      v10 = @"modalEditingNewPosterFromConfiguration";
    }

    if (v9)
    {
      v13 = v9 == 1;
    }

    else
    {
      v13 = 0;
    }

    if (!v9)
    {
      v10 = @"modalEditingActivePosterConfiguration";
    }

    v14 = v9 <= 1 && v13;
    v31 = v14;
    if (v9 > 1)
    {
      v10 = v11;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = 0;
      v10 = @"unknown";
LABEL_19:
      v30 = v10;
      goto LABEL_20;
    }
  }

  v30 = @"modalGallery";
  v31 = 1;
LABEL_20:
  v15 = [v33 modifications];
  v16 = objc_alloc(MEMORY[0x277CEB7B8]);
  [v8 timeIntervalSinceNow];
  v18 = v17;

  v19 = [v15 colorModified];
  v20 = [v15 fontModified];
  v21 = [v15 numberingSystemModified];
  v22 = [v15 posterContentModified];
  v23 = [v15 widgetsModified];
  v24 = [v15 containedWidgetsBeforeEdit];
  v25 = [v15 startDate];
  [v25 timeIntervalSinceNow];
  BYTE4(v29) = v24;
  BYTE3(v29) = v23;
  BYTE2(v29) = v22;
  BYTE1(v29) = v21;
  LOBYTE(v29) = v20;
  v27 = [v16 initWithLockscreenId:v32 entryPoint:v30 newlyCreated:v31 secondsSinceLastEdit:-v18 outcome:@"accepted" userChangedColor:v19 userChangedFont:v29 userChangedNumberingSystem:-v26 userChangedPosterContent:? userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  v28 = [MEMORY[0x277CEB530] sharedInstance];
  [v28 logPosterEdit:v27 completion:&__block_literal_global_206];
}

void __92__PBFModalRootViewController__logEditWithEditingViewController_posterUUID_lastModifiedDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PBFLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __103__PBFFocusPosterSelectionViewController__logEditWithEditingViewController_posterUUID_lastModifiedDate___block_invoke_cold_1();
    }
  }
}

- (id)_posterLimitExceededAlertWithButtonActionHandler:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D75110];
  v5 = PBFLocalizedString(@"TOO_MANY_CONFIGURATIONS_TITLE");
  v6 = PBFLocalizedString(@"TOO_MANY_CONFIGURATIONS_MESSAGE");
  v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = PBFLocalizedString(@"OK");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__PBFModalRootViewController__posterLimitExceededAlertWithButtonActionHandler___block_invoke;
  v13[3] = &unk_2782C7700;
  v14 = v3;
  v10 = v3;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v13];
  [v7 addAction:v11];

  return v7;
}

uint64_t __79__PBFModalRootViewController__posterLimitExceededAlertWithButtonActionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleNotificationForwardAction:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 notificationName];
  v5 = [(PBFModalRootViewController *)self presentedViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = PBFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Forwarding appearance notification %{public}@ to presented view controller: %{public}@", &v7, 0x16u);
    }

    [v5 forwardAppearanceNotificationName:v4];
  }
}

- (void)_setScene:(id)a3
{
  v5 = a3;
  if (v5 && self->_parentScene != v5)
  {
    [PBFModalRootViewController _setScene:a2];
  }
}

- (id)_settingsDiffActionsForScene:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)_actionHandlersForScene:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v15 = [a4 settings];
  v9 = [v15 otherSettings];
  v10 = [v9 BOOLForSetting:2606278162];

  if (self->_displayConfigurationObserver)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [(UIScene *)self->_parentScene _FBSScene];
    v13 = [v12 settings];
    v14 = [v13 displayConfiguration];

    [(PBFDisplayConfigurationUpdatable *)self->_displayConfigurationObserver setDisplayConfiguration:v14];
  }
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v7 = a3;
  v8 = [v7 bs_firstObjectPassingTest:&__block_literal_global_224];
  if (v8)
  {
    v9 = [(PBFModalRootViewController *)self presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 dismiss];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 dismissWithAction:0];
      }

      else
      {
        v10 = [MEMORY[0x277D3EAF0] cancel];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v10];
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __92__PBFModalRootViewController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
        v17 = &unk_2782C58B0;
        v18 = self;
        v19 = v10;
        v11 = v10;
        [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:&v14];
      }
    }
  }

  v12 = [v7 bs_firstObjectPassingTest:{&__block_literal_global_227, v14, v15, v16, v17, v18}];
  if (v12)
  {
    [(PBFModalRootViewController *)self _handleNotificationForwardAction:v12];
  }

  return v7;
}

uint64_t __92__PBFModalRootViewController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __92__PBFModalRootViewController__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBFModalRootViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBFModalRootViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)posterExtensionDataStore:(id)a3 didUpdateGalleryConfiguration:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__PBFModalRootViewController_posterExtensionDataStore_didUpdateGalleryConfiguration___block_invoke;
  block[3] = &unk_2782C70C0;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __85__PBFModalRootViewController_posterExtensionDataStore_didUpdateGalleryConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[129] configureForGallery:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)galleryViewController:(id)a3 didSelectPreview:(id)a4 fromPreviewView:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(PBFPosterExtensionDataStore *)self->_dataStore canPersistNewPosterConfiguration])
  {
    [v11 presentPreview:v8 withMode:2 fromView:v9];
  }

  else
  {
    v10 = [(PBFModalRootViewController *)self _posterLimitExceededAlertWithButtonActionHandler:0];
    [v11 presentViewController:v10 animated:1 completion:0];
  }
}

- (id)galleryViewController:(id)a3 willUseAnimationController:(id)a4 forDismissingEditingViewControllerWithAction:(int64_t)a5
{
  if (a5 == 1)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

- (void)editingIngestionManager:(id)a3 didAccept:(id)a4 userChoice:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!self->_legacyMigrationHelper)
  {
    if (a5)
    {
      [v9 dismissViewController];
      v11 = objc_opt_class();
      if (v11)
      {
        [v11 _topButtonLayout];
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      v14 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherFor:v10 delegate:self topButtonLayout:v20];
      v15 = [v9 editingViewController];
      v16 = [v15 navigationController];

      if (!v16)
      {
        [PBFModalRootViewController editingIngestionManager:a2 didAccept:? userChoice:?];
      }

      v17 = [v9 editingViewController];
      v18 = [v17 navigationController];
      [v18 pushViewController:v14 animated:1];
    }

    else
    {
      if ([(PBFModalRootViewController *)self _isPhotosEntryPoint])
      {
        temporaryDescriptor = self->_temporaryDescriptor;
        self->_temporaryDescriptor = 0;

        v13 = [MEMORY[0x277D3EAF0] done];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v13];
        [(PBFModalRootViewController *)self _handleSheetDidDismissWithResponse:v13];
      }

      else
      {
        v19 = [MEMORY[0x277D3EAF0] done];
        [(PBFModalRootViewController *)self _handleSheetWillDismissWithResponse:v19];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __75__PBFModalRootViewController_editingIngestionManager_didAccept_userChoice___block_invoke;
        v21[3] = &unk_2782C58B0;
        v21[4] = self;
        v22 = v19;
        v13 = v19;
        [(PBFModalRootViewController *)self dismissViewControllerAnimated:1 completion:v21];
      }
    }
  }
}

- (PBFPosterGalleryPreviewViewController)galleryController
{
  WeakRetained = objc_loadWeakRetained(&self->_galleryController);

  return WeakRetained;
}

- (PBFAmbientEditingCollectionViewController)ambientEditingController
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientEditingController);

  return WeakRetained;
}

- (void)initWithScene:(char *)a1 dataStore:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:UISceneClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(char *)a1 dataStore:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterExtensionDataStoreClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(char *)a1 dataStore:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(char *)a1 dataStore:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 sessionInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_presentEditingForPosterConfiguration:(char *)a1 sessionInfo:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)editingSceneViewController:(uint64_t)a3 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PBFModalRootViewController.m";
  v16 = 1024;
  v17 = 615;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)_standaloneEditingSceneViewController:(char *)a1 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRUISModalEntryPointEditingClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_standaloneEditingSceneViewController:(char *)a1 userDidDismissWithAction:updatedConfiguration:updatedConfiguredProperties:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_setScene:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"scene == _parentScene", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)editingIngestionManager:(char *)a1 didAccept:userChoice:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[manager editingViewController] navigationController]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end