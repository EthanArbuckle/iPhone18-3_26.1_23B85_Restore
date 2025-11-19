@interface PBFPosterAssetViewController
+ (id)defaultExtensionProvider;
+ (id)defaultSnapshotBundleDataSource;
- (BOOL)_willPresentLive;
- (BOOL)setSnapshotBundle:(id)a3 forDisplayContext:(id)a4;
- (CGAffineTransform)_affineTransformForDisplayContext;
- (CGAffineTransform)_sceneViewControllerContainerViewAffineTransformForBounds:(SEL)a3;
- (PBFExtensionProviding)extensionProvider;
- (PBFPosterAssetViewController)init;
- (PBFPosterAssetViewController)initWithCoder:(id)a3;
- (PBFPosterAssetViewController)initWithContents:(id)a3 definition:(id)a4;
- (PBFPosterAssetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PBFPosterAssetViewController)initWithPosterPath:(id)a3 definition:(id)a4 extension:(id)a5 configuredProperties:(id)a6 configurableOptions:(id)a7;
- (PBFPosterAssetViewController)initWithPosterPath:(id)a3 definition:(id)a4 extensionBundleIdentifier:(id)a5 configuredProperties:(id)a6 configurableOptions:(id)a7;
- (PBFPosterAssetViewController)initWithPreview:(id)a3 definition:(id)a4;
- (PBFPosterAssetViewController)initWithServerPosterPath:(id)a3 definition:(id)a4;
- (PFPosterExtension)extension;
- (id)_extensionInstanceReason;
- (id)_setupExtensionInstanceIfNeeded;
- (id)executeDemo;
- (id)executeLivePresentationWithDuration:(double)a3;
- (id)executeScript:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_didRemoveSceneViewControllerFromHierarchy;
- (void)_hideSceneView;
- (void)_layoutViewsForActiveAsset:(unint64_t)a3 bounds:(CGRect)a4;
- (void)_removeSceneViewControllerFromHierarchy;
- (void)_revealSceneView;
- (void)_sceneViewControllerSetupFailedWithError:(id)a3;
- (void)_setupImageViewForSnapshotBundle:(id)a3 displayContext:(id)a4 orFailure:(id)a5;
- (void)_setupSceneViewControllerForInstance:(id)a3;
- (void)_teardownExtensionInstanceIfNeeded:(BOOL)a3;
- (void)_transitionToActiveAsset:(unint64_t)a3;
- (void)_transitionToActiveAsset:(unint64_t)a3 bounds:(CGRect)a4;
- (void)_update;
- (void)_updateDebugImageViewsWithBounds:(CGRect)a3;
- (void)_updatePosterLayoutViewForActiveAsset:(unint64_t)a3 bounds:(CGRect)a4;
- (void)_updateSceneViewForActiveAsset:(unint64_t)a3 bounds:(CGRect)a4;
- (void)_updateSnapshotBundleForDisplayContext;
- (void)dealloc;
- (void)invalidate;
- (void)sceneViewController:(id)a3 stateChangedTo:(unint64_t)a4;
- (void)setComplicationPreviewGenerator:(id)a3;
- (void)setDisplayContext:(id)a3;
- (void)setExtensionProvider:(id)a3;
- (void)setPresentLive:(BOOL)a3;
- (void)setReusableViewMap:(id)a3;
- (void)setVisible:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PBFPosterAssetViewController

+ (id)defaultExtensionProvider
{
  if (defaultExtensionProvider_onceToken != -1)
  {
    +[PBFPosterAssetViewController defaultExtensionProvider];
  }

  v3 = defaultExtensionProvider_extensionProvider;

  return v3;
}

void __56__PBFPosterAssetViewController_defaultExtensionProvider__block_invoke()
{
  v2 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  v0 = [v2 dataStore];
  v1 = defaultExtensionProvider_extensionProvider;
  defaultExtensionProvider_extensionProvider = v0;
}

+ (id)defaultSnapshotBundleDataSource
{
  if (defaultSnapshotBundleDataSource_onceToken != -1)
  {
    +[PBFPosterAssetViewController defaultSnapshotBundleDataSource];
  }

  v3 = defaultSnapshotBundleDataSource_defaultSnapshotBundleDataSource;

  return v3;
}

void __63__PBFPosterAssetViewController_defaultSnapshotBundleDataSource__block_invoke()
{
  v3 = +[PBFPosterExtensionDataStoreXPCServiceGlue sharedInstance];
  v0 = [v3 dataStore];
  v1 = [v0 snapshotManager];
  v2 = defaultSnapshotBundleDataSource_defaultSnapshotBundleDataSource;
  defaultSnapshotBundleDataSource_defaultSnapshotBundleDataSource = v1;
}

- (PBFPosterAssetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(PBFPosterAssetViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (PBFPosterAssetViewController)initWithCoder:(id)a3
{
  [(PBFPosterAssetViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PBFPosterAssetViewController)init
{
  [(PBFPosterAssetViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PBFPosterAssetViewController)initWithPreview:(id)a3 definition:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 posterDescriptorLookupInfo];
  v10 = [v9 posterDescriptorPath];

  v11 = [MEMORY[0x277D3ED60] pbf_configuredPropertiesForPreview:v7];
  v12 = [MEMORY[0x277D3ED50] pbf_configurableOptionsForPreview:v7];
  v13 = [v7 posterDescriptorLookupInfo];
  v14 = [v13 posterDescriptorExtension];

  v15 = [(PBFPosterAssetViewController *)self initWithPosterPath:v10 definition:v8 extension:v14 configuredProperties:v11 configurableOptions:v12];
  if (v15)
  {
    objc_storeStrong(&v15->_posterPreview, a3);
  }

  return v15;
}

- (PBFPosterAssetViewController)initWithContents:(id)a3 definition:(id)a4
{
  v6 = a4;
  v7 = [a3 _path];
  v8 = [(PBFPosterAssetViewController *)self initWithServerPosterPath:v7 definition:v6];

  return v8;
}

- (PBFPosterAssetViewController)initWithServerPosterPath:(id)a3 definition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 serverIdentity];
  v9 = [v8 provider];
  v10 = [(PBFPosterAssetViewController *)self initWithPosterPath:v6 definition:v7 extensionBundleIdentifier:v9 configuredProperties:0 configurableOptions:0];

  if (v10)
  {
    v11 = [PBFGenericPosterPreview posterPreviewForPath:v6];
    posterPreview = v10->_posterPreview;
    v10->_posterPreview = v11;
  }

  return v10;
}

- (PBFPosterAssetViewController)initWithPosterPath:(id)a3 definition:(id)a4 extension:(id)a5 configuredProperties:(id)a6 configurableOptions:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [a5 posterExtensionBundleIdentifier];
  v17 = [(PBFPosterAssetViewController *)self initWithPosterPath:v15 definition:v14 extensionBundleIdentifier:v16 configuredProperties:v13 configurableOptions:v12];

  return v17;
}

- (PBFPosterAssetViewController)initWithPosterPath:(id)a3 definition:(id)a4 extensionBundleIdentifier:(id)a5 configuredProperties:(id)a6 configurableOptions:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v15)
  {
    [PBFPosterAssetViewController initWithPosterPath:a2 definition:? extensionBundleIdentifier:? configuredProperties:? configurableOptions:?];
  }

  if (!v14)
  {
    [PBFPosterAssetViewController initWithPosterPath:a2 definition:? extensionBundleIdentifier:? configuredProperties:? configurableOptions:?];
  }

  if (!v16)
  {
    [PBFPosterAssetViewController initWithPosterPath:a2 definition:? extensionBundleIdentifier:? configuredProperties:? configurableOptions:?];
  }

  v19 = v18;
  v55.receiver = self;
  v55.super_class = PBFPosterAssetViewController;
  v20 = [(PBFPosterAssetViewController *)&v55 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    v54 = v15;
    p_x = &v20->_referenceBounds.origin.x;
    v23 = +[PBFGenericDisplayContext mainScreen];
    [v23 pbf_frame];
    *p_x = v24;
    v21->_referenceBounds.origin.y = v25;
    v21->_referenceBounds.size.width = v26;
    v21->_referenceBounds.size.height = v27;

    objc_storeStrong(&v21->_extensionBundleIdentifier, a5);
    objc_storeStrong(&v21->_path, a3);
    objc_storeStrong(&v21->_definition, a4);
    v28 = MEMORY[0x277D02CF0];
    v29 = +[PBFGenericDisplayContext mainScreen];
    [v28 pr_defaultSalientContentRectForBounds:objc_msgSend(v29 interfaceOrientation:{"pbf_interfaceOrientation"), *p_x, v21->_referenceBounds.origin.y, v21->_referenceBounds.size.width, v21->_referenceBounds.size.height}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v21->_salientContentRectangle.origin.x = v31;
    v21->_salientContentRectangle.origin.y = v33;
    v21->_salientContentRectangle.size.width = v35;
    v21->_salientContentRectangle.size.height = v37;
    if (v17)
    {
      v38 = 0;
      v39 = v17;
    }

    else
    {
      v40 = [MEMORY[0x277D3EDE8] loadConfiguredPropertiesForPath:v14 error:0];
      if (v40)
      {
        v28 = v40;
        v38 = 0;
        v39 = v40;
      }

      else
      {
        v41 = MEMORY[0x277D3ED60];
        v29 = [v14 role];
        v39 = [v41 defaultConfiguredPropertiesForRole:v29];
        v28 = 0;
        v38 = 1;
      }
    }

    objc_storeStrong(&v21->_configuredProperties, v39);
    if (v38)
    {
    }

    if (!v17)
    {
    }

    v42 = v19;
    if (!v19)
    {
      v42 = [MEMORY[0x277D3EDE8] loadConfigurableOptionsForPath:v14 error:0];
    }

    objc_storeStrong(&v21->_configurableOptions, v42);
    if (!v19)
    {
    }

    v43 = objc_opt_new();
    posterLayoutView = v21->_posterLayoutView;
    v21->_posterLayoutView = v43;

    v45 = objc_opt_new();
    sceneViewControllerContainerView = v21->_sceneViewControllerContainerView;
    v21->_sceneViewControllerContainerView = v45;

    [(PUITransformContainerView *)v21->_sceneViewControllerContainerView setAlpha:0.0];
    v47 = objc_opt_new();
    timeContainerView = v21->_timeContainerView;
    v21->_timeContainerView = v47;

    v49 = +[PBFGenericDisplayContext mainScreen];
    displayContext = v21->_displayContext;
    v21->_displayContext = v49;

    v51 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    snapshotBundleForDisplayContext = v21->_snapshotBundleForDisplayContext;
    v21->_snapshotBundleForDisplayContext = v51;

    v15 = v54;
  }

  return v21;
}

- (void)dealloc
{
  [(PBFPosterAssetViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBFPosterAssetViewController;
  [(PBFPosterAssetViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = PBFPosterAssetViewController;
  [(PBFPosterAssetViewController *)&v23 viewDidLoad];
  v3 = [(PBFPosterAssetViewController *)self view];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  [v3 addSubview:self->_posterLayoutView];
  [v3 addSubview:self->_sceneViewControllerContainerView];
  v5 = [(PBFPosterAssetViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(PUITransformContainerView *)self->_sceneViewControllerContainerView setFrame:v7, v9, v11, v13];
  [(PUIScalingContainerView *)self->_timeContainerView setFrame:v7, v9, v11, v13];
  v14 = [(PUIScalingContainerView *)self->_timeContainerView contentView];
  [(PBFDisplayContext *)self->_displayContext pbf_frame];
  [v14 setFrame:?];

  [(PUIPosterSnapshotBundleLayoutView *)self->_posterLayoutView setFrame:v7, v9, v11, v13];
  posterPreview = self->_posterPreview;
  if (posterPreview)
  {
    v16 = [(PBFPosterPreview *)posterPreview subtitleComplication];
    if (v16 || (-[PBFPosterPreview suggestedComplications](self->_posterPreview, "suggestedComplications"), v16 = objc_claimAutoreleasedReturnValue(), [v16 count]))
    {
    }

    else
    {
      v21 = [(PBFPosterPreview *)self->_posterPreview suggestedLandscapeComplications];
      v22 = [v21 count];

      if (!v22)
      {
        goto LABEL_6;
      }
    }

    v17 = [[PBFPosterGalleryPreviewComplicationContentView alloc] initWithFrame:v7, v9, v11, v13];
    complicationContentView = self->_complicationContentView;
    self->_complicationContentView = v17;

    v19 = self->_complicationContentView;
    v20 = [(PBFPosterAssetViewController *)self reusableViewMap];
    [(PBFPosterGalleryPreviewComplicationContentView *)v19 setReusableViewMap:v20];

    [(PBFPosterGalleryPreviewComplicationContentView *)self->_complicationContentView setPosterPreview:self->_posterPreview];
  }

LABEL_6:
  [(PBFPosterAssetViewController *)self _layoutViewsForActiveAsset:self->_activeAsset bounds:v7, v9, v11, v13];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PBFPosterAssetViewController;
  [(PBFPosterAssetViewController *)&v14 viewWillLayoutSubviews];
  displayContext = self->_displayContext;
  p_referenceBounds = &self->_referenceBounds;
  if (displayContext)
  {
    [(PBFDisplayContext *)displayContext pbf_frame];
    p_referenceBounds->origin.x = v5;
    self->_referenceBounds.origin.y = v6;
    self->_referenceBounds.size.width = v7;
    self->_referenceBounds.size.height = v8;
  }

  else
  {
    v9 = +[PBFGenericDisplayContext mainScreen];
    [v9 pbf_frame];
    p_referenceBounds->origin.x = v10;
    p_referenceBounds->origin.y = v11;
    p_referenceBounds->size.width = v12;
    p_referenceBounds->size.height = v13;
  }
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = PBFPosterAssetViewController;
  [(PBFPosterAssetViewController *)&v12 viewDidLayoutSubviews];
  v3 = [(PBFPosterAssetViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PBFPosterAssetViewController *)self _layoutViewsForActiveAsset:self->_activeAsset bounds:v5, v7, v9, v11];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(PBFPosterAssetViewController *)self traitCollection];
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

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBFPosterAssetViewController;
  [(PBFPosterAssetViewController *)&v4 viewIsAppearing:a3];
  [(PBFPosterAssetViewController *)self _update];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = PBFPosterAssetViewController;
  [(PBFPosterAssetViewController *)&v22 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [v7 containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 window];
  }

  v10 = v9;
  v11 = [(PBFPosterAssetViewController *)self view];
  v12 = [v11 pbf_layoutOrientation];

  if (v7 && [v10 _toWindowOrientation])
  {
    v12 = [v10 _toWindowOrientation];
  }

  displayContext = self->_displayContext;
  if (displayContext)
  {
    v14 = displayContext;
  }

  else
  {
    v14 = +[PBFGenericDisplayContext mainScreen];
  }

  v15 = v14;
  v16 = [(PBFDisplayContext *)v14 displayContextWithUpdatedInterfaceOrientation:v12];
  activeAsset = self->_activeAsset;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__PBFPosterAssetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v20[3] = &unk_2782C5760;
  v20[4] = self;
  v21 = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__PBFPosterAssetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v19[3] = &unk_2782C8488;
  v19[4] = self;
  v19[5] = activeAsset;
  *&v19[6] = width;
  *&v19[7] = height;
  v18 = v16;
  [v7 animateAlongsideTransition:v20 completion:v19];
}

uint64_t __83__PBFPosterAssetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  BSRectWithSize();

  return [v1 _layoutViewsForActiveAsset:v2 bounds:?];
}

- (id)_extensionInstanceReason
{
  extensionInstanceReason = self->_extensionInstanceReason;
  if (!extensionInstanceReason)
  {
    v4 = [(PFPosterPath *)self->_path serverIdentity];
    v5 = [v4 provider];
    v6 = self->_extensionInstanceReason;
    self->_extensionInstanceReason = v5;

    posterPreview = self->_posterPreview;
    extensionInstanceReason = self->_extensionInstanceReason;
    if (posterPreview)
    {
      v8 = [(NSString *)extensionInstanceReason stringByAppendingFormat:@"-galleryDisplayStyle%lu", [(PBFPosterPreview *)posterPreview galleryDisplayStyle]];
      v9 = self->_extensionInstanceReason;
      self->_extensionInstanceReason = v8;

      extensionInstanceReason = self->_extensionInstanceReason;
    }
  }

  return extensionInstanceReason;
}

- (BOOL)_willPresentLive
{
  if (self->_isVisible)
  {
    if (self->_presentLive)
    {
      LOBYTE(executeScriptFuture) = 1;
    }

    else
    {
      executeScriptFuture = self->_executeScriptFuture;
      if (executeScriptFuture)
      {
        LOBYTE(executeScriptFuture) = [(PFTFuture *)executeScriptFuture isFinished:v2]^ 1;
      }
    }
  }

  else
  {
    LOBYTE(executeScriptFuture) = 0;
  }

  return executeScriptFuture;
}

- (void)setPresentLive:(BOOL)a3
{
  if (self->_presentLive != a3)
  {
    self->_presentLive = a3;
    [(PBFPosterAssetViewController *)self _update];
  }
}

- (void)setDisplayContext:(id)a3
{
  obj = a3;
  if (obj)
  {
    if (([obj conformsToProtocol:&unk_282D481D8] & 1) == 0)
    {
      [PBFPosterAssetViewController setDisplayContext:a2];
    }
  }

  else
  {
    obj = +[PBFGenericDisplayContext mainScreen];
  }

  if (([obj isEqualToDisplayContext:self->_displayContext] & 1) == 0)
  {
    objc_storeStrong(&self->_displayContext, obj);
    [(PBFPosterAssetViewController *)self _updateSnapshotBundleForDisplayContext];
    [(PBFPosterAssetViewController *)self _update];
    v5 = [(PBFPosterAssetViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(PBFPosterAssetViewController *)self view];
    [v6 layoutIfNeeded];
  }
}

- (BOOL)setSnapshotBundle:(id)a3 forDisplayContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [(NSMapTable *)self->_snapshotBundleForDisplayContext objectForKey:v7];
      v9 = [v8 isEqual:v6];
      if ((v9 & 1) == 0)
      {
        [(NSMapTable *)self->_snapshotBundleForDisplayContext setObject:v6 forKey:v7];
      }

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if ([v7 isEqualToDisplayContext:self->_displayContext])
    {
      [(PBFPosterAssetViewController *)self _updateSnapshotBundleForDisplayContext];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_updateSnapshotBundleForDisplayContext
{
  if (self->_displayContext)
  {
    v3 = [(NSMapTable *)self->_snapshotBundleForDisplayContext objectForKey:?];
    [(PBFPosterAssetViewController *)self _setupImageViewForSnapshotBundle:v3 displayContext:self->_displayContext orFailure:0];
  }
}

- (PFPosterExtension)extension
{
  v2 = self;
  objc_sync_enter(v2);
  extension = v2->_extension;
  if (extension)
  {
    v4 = extension;
    objc_sync_exit(v2);
  }

  else
  {
    v5 = [(PBFPosterAssetViewController *)v2 extensionProvider];
    v6 = [v5 providerForExtensionIdentifier:v2->_extensionBundleIdentifier];
    v7 = v2->_extension;
    v2->_extension = v6;

    objc_sync_exit(v2);
    v4 = v2->_extension;
  }

  return v4;
}

- (PBFExtensionProviding)extensionProvider
{
  v2 = self;
  objc_sync_enter(v2);
  extensionProvider = v2->_extensionProvider;
  if (!extensionProvider)
  {
    v4 = [objc_opt_class() defaultExtensionProvider];
    v5 = v2->_extensionProvider;
    v2->_extensionProvider = v4;

    extensionProvider = v2->_extensionProvider;
  }

  v6 = extensionProvider;
  objc_sync_exit(v2);

  return v6;
}

- (void)setExtensionProvider:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v10;
  extensionProvider = v4->_extensionProvider;
  if (extensionProvider != v10 || extensionProvider == 0)
  {
    if (!v10)
    {
      if (v4->_isInvalidated)
      {
        v5 = 0;
      }

      else
      {
        v5 = [objc_opt_class() defaultExtensionProvider];
      }
    }

    v10 = v5;
    objc_storeStrong(&v4->_extensionProvider, v5);
    if (v4->_extensionBundleIdentifier)
    {
      extension = v4->_extension;
      v4->_extension = 0;
    }

    objc_sync_exit(v4);

    [(PBFPosterAssetViewController *)v4 _removeSceneViewControllerFromHierarchy];
    v9 = [(PBFPosterAssetViewController *)v4 _setupExtensionInstanceIfNeeded];
  }

  else
  {
    objc_sync_exit(v4);
  }
}

- (void)setReusableViewMap:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_reusableViewMap != v6)
  {
    objc_storeStrong(&v5->_reusableViewMap, a3);
    [(PUIPosterSnapshotBundleLayoutView *)v5->_posterLayoutView setReusableViewMap:v6];
    [(PBFPosterGalleryPreviewComplicationContentView *)v5->_complicationContentView setReusableViewMap:v6];
  }

  objc_sync_exit(v5);
}

- (void)setComplicationPreviewGenerator:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_complicationPreviewGenerator != v6)
  {
    objc_storeStrong(&v5->_complicationPreviewGenerator, a3);
  }

  objc_sync_exit(v5);
}

- (void)setVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    [(PBFPosterAssetViewController *)self _update];
  }
}

- (id)executeDemo
{
  v3 = [(PBFPosterPreview *)self->_posterPreview galleryDisplayStyle];
  if (v3 == 2)
  {
    v4 = [MEMORY[0x277D3EE00] gyroDemoScript];
    goto LABEL_5;
  }

  if (v3 == 3)
  {
    v4 = [MEMORY[0x277D3EE00] timeDemoScript];
LABEL_5:
    v5 = v4;
    v6 = [(PBFPosterAssetViewController *)self executeScript:v4];

    goto LABEL_7;
  }

  v6 = [(PBFPosterAssetViewController *)self executeLivePresentationWithDuration:*MEMORY[0x277D3EF10]];
LABEL_7:

  return v6;
}

- (id)executeLivePresentationWithDuration:(double)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D3EE08] statementWithDuration:a3];
  v5 = objc_alloc(MEMORY[0x277D3EE00]);
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 initWithPosterScriptStatements:v6];

  v8 = [(PBFPosterAssetViewController *)self executeScript:v7];

  return v8;
}

- (id)executeScript:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_isInvalidated && [(PBFPosterAssetViewController *)self isActive]&& (([(PFTFuture *)self->_executeScriptFuture isFinished]& 1) != 0 || !self->_executeScriptFuture))
  {
    objc_initWeak(&location, self);
    v10 = objc_opt_new();
    executeScriptFuture = self->_executeScriptFuture;
    self->_executeScriptFuture = v10;

    v12 = v10;
    [(PBFPosterAssetViewController *)self _update];
    if (self->_sceneViewControllerFuture)
    {
      [(PBFPosterAssetViewController *)self _revealSceneView];
      sceneViewControllerFuture = self->_sceneViewControllerFuture;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __46__PBFPosterAssetViewController_executeScript___block_invoke;
      v19[3] = &unk_2782C84B0;
      v20 = v4;
      objc_copyWeak(&v22, &location);
      v21 = v12;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__PBFPosterAssetViewController_executeScript___block_invoke_3;
      v16[3] = &unk_2782C84D8;
      v17 = v21;
      objc_copyWeak(&v18, &location);
      [(PFTFuture *)sceneViewControllerFuture addSuccessBlock:v19 andFailureBlock:v16];
      objc_destroyWeak(&v18);

      objc_destroyWeak(&v22);
      v14 = self->_executeScriptFuture;
    }

    else
    {
      [(PFTFuture *)v12 cancelWithReason:@"scene view controller transition failed"];
      v15 = self->_executeScriptFuture;
      self->_executeScriptFuture = 0;

      v14 = v12;
    }

    v8 = v14;

    objc_destroyWeak(&location);
  }

  else
  {
    v5 = MEMORY[0x277D3EC50];
    v6 = PFFunctionNameForAddress();
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v8 = [v5 futureWithError:{v7, 0}];
  }

  return v8;
}

void __46__PBFPosterAssetViewController_executeScript___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeScript:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PBFPosterAssetViewController_executeScript___block_invoke_2;
  v6[3] = &unk_2782C77F8;
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 40);
  v5 = [MEMORY[0x277D3EC60] mainThreadScheduler];
  [v4 addCompletionBlock:v6 scheduler:v5];

  objc_destroyWeak(&v8);
}

void __46__PBFPosterAssetViewController_executeScript___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 144);
    *(WeakRetained + 144) = 0;

    [v7 _update];
  }

  v9 = *(a1 + 32);
  if (v5)
  {
    [v9 finishWithError:v5];
  }

  else
  {
    [v9 finishWithResult:v10];
  }

  [v7 _hideSceneView];
}

void __46__PBFPosterAssetViewController_executeScript___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) finishWithError:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _hideSceneView];
}

- (void)_update
{
  BSDispatchQueueAssertMain();
  if (!self->_isInvalidated)
  {
    sceneViewController = self->_sceneViewController;
    if (sceneViewController)
    {
      v4 = [(_PBFPosterSceneViewController *)sceneViewController displayContext];
      v5 = [v4 isEqual:self->_displayContext];

      if ((v5 & 1) == 0)
      {
        [(_PBFPosterSceneViewController *)self->_sceneViewController setDisplayContext:self->_displayContext];
      }
    }

    v6 = [(PBFPosterAssetViewController *)self isActive];
    v7 = [(PBFPosterAssetViewController *)self _willPresentLive];
    activeAsset = self->_activeAsset;
    v9 = [(PBFPosterAssetViewController *)self viewIfLoaded];
    v10 = v9 != 0;

    v11 = v9 != 0;
    if (v9 && v7 && v6)
    {
      if ([(_PBFPosterSceneViewController *)self->_sceneViewController state]== 1)
      {
        v11 = 0;
        v10 = 2;
      }

      else
      {
        v12 = [(PBFPosterAssetViewController *)self _setupExtensionInstanceIfNeeded];
        v11 = 1;
        v10 = 1;
      }
    }

    if (activeAsset == v10)
    {
      v13 = [(NSMapTable *)self->_snapshotBundleForDisplayContext objectForKey:self->_displayContext];
      v14 = !v11;
      if (!v13)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        v15 = v13;
        [(PBFPosterAssetViewController *)self _setupImageViewForSnapshotBundle:v13 displayContext:self->_displayContext orFailure:0];
        v13 = v15;
      }
    }

    else
    {

      [(PBFPosterAssetViewController *)self _transitionToActiveAsset:v10];
    }
  }
}

- (void)_setupImageViewForSnapshotBundle:(id)a3 displayContext:(id)a4 orFailure:(id)a5
{
  v25 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  if ([v7 isEqualToDisplayContext:self->_displayContext])
  {
    v8 = MEMORY[0x277D02CF0];
    [v7 pbf_frame];
    [v8 pr_defaultSalientContentRectForBounds:objc_msgSend(v7 interfaceOrientation:{"pbf_interfaceOrientation"), v9, v10, v11, v12}];
    self->_salientContentRectangle.origin.x = v13;
    self->_salientContentRectangle.origin.y = v14;
    self->_salientContentRectangle.size.width = v15;
    self->_salientContentRectangle.size.height = v16;
    [(_PBFPosterSceneViewController *)self->_sceneViewController setSalientContentRectangle:?];
    v17 = [(PUIPosterSnapshotBundleLayoutView *)self->_posterLayoutView snapshotBundle];
    if (v17)
    {
      v18 = !self->_presentLive;

      v19 = 2 * v18;
    }

    else
    {
      v19 = 0;
    }

    [(PUIPosterSnapshotBundleLayoutView *)self->_posterLayoutView setSnapshotBundle:v25 animation:v19];
    if (self->_complicationContentView)
    {
      [(PUIPosterSnapshotBundleLayoutView *)self->_posterLayoutView setContentOverlayView:?];
      v20 = [(PBFPosterAssetViewController *)self complicationPreviewGenerator];

      if (v20)
      {
        complicationContentView = self->_complicationContentView;
        v22 = [(PBFPosterAssetViewController *)self complicationPreviewGenerator];
        [(PBFPosterGalleryPreviewComplicationContentView *)complicationContentView prepareComplicationPreviewWithGenerator:v22];
      }
    }

    activeAsset = self->_activeAsset;
    v24 = [(PBFPosterAssetViewController *)self viewIfLoaded];
    [v24 bounds];
    [(PBFPosterAssetViewController *)self _updatePosterLayoutViewForActiveAsset:activeAsset bounds:?];
  }
}

- (id)_setupExtensionInstanceIfNeeded
{
  BSDispatchQueueAssertMain();
  if ([(PBFPosterAssetViewController *)self isActive]&& self->_extensionFailedToStartCounter <= 3)
  {
    extensionInstanceFuture = self->_extensionInstanceFuture;
    if (extensionInstanceFuture)
    {
      if (!self->_sceneViewController)
      {
        v6 = [(PBFPosterAssetViewController *)self isActive];
        extensionInstanceFuture = self->_extensionInstanceFuture;
        if (v6)
        {
          v7 = [(PFTFuture *)extensionInstanceFuture isFinished];
          extensionInstanceFuture = self->_extensionInstanceFuture;
          if (v7)
          {
            v8 = [(PFTFuture *)extensionInstanceFuture result:0];
            [(PBFPosterAssetViewController *)self _setupSceneViewControllerForInstance:v8];

            v9 = objc_opt_new();
            sceneViewControllerFuture = self->_sceneViewControllerFuture;
            self->_sceneViewControllerFuture = v9;

            extensionInstanceFuture = self->_extensionInstanceFuture;
          }
        }
      }

      v3 = extensionInstanceFuture;
    }

    else
    {
      v11 = self->_extensionBundleIdentifier;
      v12 = [(PBFPosterAssetViewController *)self _extensionInstanceReason];
      v13 = [(PBFPosterAssetViewController *)self extensionProvider];
      v14 = MEMORY[0x277D3EC50];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke;
      v30[3] = &unk_2782C8500;
      v15 = v13;
      v31 = v15;
      v16 = v11;
      v32 = v16;
      v17 = v12;
      v33 = v17;
      v18 = [v14 futureWithBlock:v30];
      v19 = [v18 flatMap:&__block_literal_global_148];
      v20 = self->_extensionInstanceFuture;
      self->_extensionInstanceFuture = v19;

      objc_initWeak(&location, self);
      v21 = self->_extensionInstanceFuture;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_4;
      v27[3] = &unk_2782C8570;
      objc_copyWeak(&v28, &location);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_5;
      v25[3] = &unk_2782C8598;
      objc_copyWeak(&v26, &location);
      v22 = [MEMORY[0x277D3EC60] mainThreadScheduler];
      [(PFTFuture *)v21 addSuccessBlock:v27 andFailureBlock:v25 scheduler:v22];

      v23 = objc_opt_new();
      v24 = self->_sceneViewControllerFuture;
      self->_sceneViewControllerFuture = v23;

      v3 = self->_extensionInstanceFuture;
      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_3;
  v9[3] = &unk_2782C8548;
  v4 = v3;
  v10 = v4;
  v11 = v2;
  v5 = v2;
  [v5 bootupExtensionInstance:v9];
  v6 = v11;
  v7 = v4;

  return v4;
}

uint64_t __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 finishWithError:?];
  }

  else
  {
    return [v4 finishWithResult:*(a1 + 40)];
  }
}

void __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupSceneViewControllerForInstance:v3];
}

void __63__PBFPosterAssetViewController__setupExtensionInstanceIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sceneViewControllerSetupFailedWithError:v3];
}

- (void)_teardownExtensionInstanceIfNeeded:(BOOL)a3
{
  v3 = a3;
  v15 = [(PBFPosterAssetViewController *)self _extensionInstanceReason];
  v5 = self->_extensionInstanceFuture;
  v6 = [(_PBFPosterSceneViewController *)self->_sceneViewController extensionInstance];
  if (v6)
  {
    v7 = v6;
LABEL_3:
    if (![(PBFPosterAssetViewController *)self isVisible]|| (self->_activeAsset == 2 ? (v8 = !v3) : (v8 = 0), !v8))
    {
      [(PFTFuture *)v5 cancel];
      extensionInstanceFuture = self->_extensionInstanceFuture;
      self->_extensionInstanceFuture = 0;

      sceneViewControllerFuture = self->_sceneViewControllerFuture;
      self->_sceneViewControllerFuture = 0;
      v11 = sceneViewControllerFuture;

      [(PFTFuture *)v11 cancel];
      v12 = [(PBFPosterAssetViewController *)self extensionProvider];
      v13 = [v7 extension];
      v14 = [v13 posterExtensionBundleIdentifier];
      [v12 relinquishExtensionInstance:v14 reason:v15];
    }

    goto LABEL_13;
  }

  if (![(PFTFuture *)v5 isFinished])
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [(PFTFuture *)v5 result:0];
  if (v7)
  {
    goto LABEL_3;
  }

LABEL_13:
}

- (void)_setupSceneViewControllerForInstance:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4 && !self->_sceneViewController && !self->_isInvalidated && self->_displayContext && [(PBFPosterAssetViewController *)self isActive])
  {
    v5 = self->_configurableOptions;
    v6 = self->_configuredProperties;
    v7 = [(PBFPosterAssetViewController *)self _extensionInstanceReason];
    v8 = [[_PBFPosterSceneViewController alloc] initWithPath:self->_path definition:self->_definition extensionInstance:v4 uniqueIdentifier:v7 configurableOptions:v5 configuredProperties:v6 salientContentRectangle:self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height];
    sceneViewController = self->_sceneViewController;
    self->_sceneViewController = v8;

    [(_PBFPosterSceneViewController *)self->_sceneViewController setDisplayContext:self->_displayContext];
    [(_PBFPosterSceneViewController *)self->_sceneViewController setDelegate:self];
    posterPreview = self->_posterPreview;
    if (posterPreview)
    {
      v11 = [(PBFPosterPreview *)posterPreview subtitleComplication];
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v13 = [(PBFPosterPreview *)self->_posterPreview suggestedComplications];
        if ([v13 count])
        {
          v12 = 1;
        }

        else
        {
          v14 = [(PBFPosterPreview *)self->_posterPreview suggestedLandscapeComplications];
          v12 = [v14 count] != 0;
        }
      }

      [(_PBFPosterSceneViewController *)self->_sceneViewController setShowsComplications:v12];
    }

    [(_PBFPosterSceneViewController *)self->_sceneViewController setShowsHeaderElements:1];
    [(PBFPosterAssetViewController *)self bs_addChildViewController:self->_sceneViewController withSuperview:self->_sceneViewControllerContainerView];
    sceneViewControllerContainerView = self->_sceneViewControllerContainerView;
    v16 = [(_PBFPosterSceneViewController *)self->_sceneViewController view];
    [(PUITransformContainerView *)sceneViewControllerContainerView setContentView:v16];

    v17 = self->_sceneViewControllerContainerView;
    v18 = [(PBFPosterAssetViewController *)self viewIfLoaded];
    [v18 bounds];
    [(PBFPosterAssetViewController *)self _sceneViewControllerContainerViewAffineTransformForBounds:?];
    [(PUITransformContainerView *)v17 setContentViewTransform:&v19];

    [(_PBFPosterSceneViewController *)self->_sceneViewController bs_beginAppearanceTransition:1 animated:0];
    [(_PBFPosterSceneViewController *)self->_sceneViewController bs_endAppearanceTransition];
    [(_PBFPosterSceneViewController *)self->_sceneViewController setScenePresenterIsValid:1];
    [(PRSceneViewController *)self->_sceneViewController setForcesSceneForeground:1];
  }
}

- (void)_sceneViewControllerSetupFailedWithError:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(PFTFuture *)self->_sceneViewControllerFuture finishWithError:v4];

  [(PBFPosterAssetViewController *)self _teardownExtensionInstanceIfNeeded:1];
  extensionInstanceReason = self->_extensionInstanceReason;
  self->_extensionInstanceReason = 0;

  ++self->_extensionFailedToStartCounter;
  v6 = [(PBFPosterAssetViewController *)self isActive];
  if (self->_extensionFailedToStartCounter <= 2 && self->_activeAsset == 2 && v6)
  {
    v7 = [(PBFPosterAssetViewController *)self _setupExtensionInstanceIfNeeded];
  }

  else
  {

    [(PBFPosterAssetViewController *)self _transitionToActiveAsset:1];
  }
}

- (void)_removeSceneViewControllerFromHierarchy
{
  [(PBFPosterAssetViewController *)self bs_removeChildViewController:self->_sceneViewController];

  [(PBFPosterAssetViewController *)self _didRemoveSceneViewControllerFromHierarchy];
}

- (void)_revealSceneView
{
  if ([(PBFPosterAssetViewController *)self isVisible])
  {
    v3 = 0.4;
  }

  else
  {
    v3 = 0.0;
  }

  [MEMORY[0x277CD9FF0] begin];
  [(PUITransformContainerView *)self->_sceneViewControllerContainerView pui_fadeInWithDuration:v3];
  [(PUITransformContainerView *)self->_sceneViewControllerContainerView setAlpha:1.0];
  v4 = MEMORY[0x277CD9FF0];

  [v4 commit];
}

- (void)_hideSceneView
{
  if ([(PBFPosterAssetViewController *)self isVisible])
  {
    v3 = 0.4;
  }

  else
  {
    v3 = 0.0;
  }

  [MEMORY[0x277CD9FF0] begin];
  [(PUITransformContainerView *)self->_sceneViewControllerContainerView pui_fadeOutWithDuration:v3];
  [(PUITransformContainerView *)self->_sceneViewControllerContainerView setAlpha:0.0];
  v4 = MEMORY[0x277CD9FF0];

  [v4 commit];
}

- (void)sceneViewController:(id)a3 stateChangedTo:(unint64_t)a4
{
  v6 = a3;
  if (self->_sceneViewController == v6)
  {
    v10 = v6;
    [(PBFPosterAssetViewController *)self _update];
    sceneViewControllerFuture = self->_sceneViewControllerFuture;
    if (a4 == 1)
    {
      [(PFTFuture *)self->_sceneViewControllerFuture finishWithResult:v10];
      v8 = [(PBFPosterAssetViewController *)self viewIfLoaded];
      [v8 bounds];
      [(PBFPosterAssetViewController *)self _updateDebugImageViewsWithBounds:?];
    }

    else
    {
      v8 = PFFunctionNameForAddress();
      v9 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      [(PFTFuture *)sceneViewControllerFuture finishWithError:v9, 0];
    }

    v6 = v10;
  }
}

- (void)_transitionToActiveAsset:(unint64_t)a3
{
  v5 = [(PBFPosterAssetViewController *)self viewIfLoaded];
  [v5 bounds];
  [(PBFPosterAssetViewController *)self _transitionToActiveAsset:a3 bounds:?];
}

- (void)_transitionToActiveAsset:(unint64_t)a3 bounds:(CGRect)a4
{
  if (self->_activeAsset != a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    self->_activeAsset = a3;
    switch(a3)
    {
      case 2uLL:
        v10 = [(PBFPosterAssetViewController *)self _setupExtensionInstanceIfNeeded];
        break;
      case 1uLL:
        v9 = [(NSMapTable *)self->_snapshotBundleForDisplayContext objectForKey:self->_displayContext];
        if (v9)
        {
          [(PBFPosterAssetViewController *)self _setupImageViewForSnapshotBundle:v9 displayContext:self->_displayContext orFailure:0];
        }

        [(PBFPosterAssetViewController *)self _removeSceneViewControllerFromHierarchy];
        [(PBFPosterAssetViewController *)self _teardownExtensionInstanceIfNeeded:0];

        break;
      case 0uLL:
        [(PBFPosterAssetViewController *)self _removeSceneViewControllerFromHierarchy];
        [(PBFPosterAssetViewController *)self _teardownExtensionInstanceIfNeeded:1];
        break;
    }

    activeAsset = self->_activeAsset;

    [(PBFPosterAssetViewController *)self _layoutViewsForActiveAsset:activeAsset bounds:x, y, width, height];
  }
}

- (void)_layoutViewsForActiveAsset:(unint64_t)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [PBFPosterAssetViewController _updateSceneViewForActiveAsset:"_updateSceneViewForActiveAsset:bounds:" bounds:?];
  [(PBFPosterAssetViewController *)self _updatePosterLayoutViewForActiveAsset:a3 bounds:x, y, width, height];

  [(PBFPosterAssetViewController *)self _updateDebugImageViewsWithBounds:x, y, width, height];
}

- (void)_updateSceneViewForActiveAsset:(unint64_t)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3 != 2;
  v10 = [(_PBFPosterSceneViewController *)self->_sceneViewController view];
  [v10 setFrame:{self->_referenceBounds.origin.x, self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height}];
  [(PUITransformContainerView *)self->_sceneViewControllerContainerView setFrame:x, y, width, height];
  sceneViewControllerContainerView = self->_sceneViewControllerContainerView;
  [(PBFPosterAssetViewController *)self _sceneViewControllerContainerViewAffineTransformForBounds:x, y, width, height];
  [(PUITransformContainerView *)sceneViewControllerContainerView setContentViewTransform:&v12];
  [v10 setHidden:v9];
}

- (CGAffineTransform)_sceneViewControllerContainerViewAffineTransformForBounds:(SEL)a3
{
  v6 = a4.size.height / self->_referenceBounds.size.height;
  v7 = a4.size.width / self->_referenceBounds.size.width;
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeScale(&v12, v7, v6);
  memset(&v11, 0, sizeof(v11));
  [(PBFPosterAssetViewController *)self _affineTransformForDisplayContext];
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v12;
  v9 = v11;
  return CGAffineTransformConcat(retstr, &t1, &v9);
}

- (CGAffineTransform)_affineTransformForDisplayContext
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = [(PBFDisplayContext *)self->_displayContext pbf_interfaceOrientation];
  v6 = 0.0;
  if (v5 != 1)
  {
    if ([(PBFDisplayContext *)self->_displayContext pbf_interfaceOrientation]== 4)
    {
      v6 = -1.57079633;
    }

    else if ([(PBFDisplayContext *)self->_displayContext pbf_interfaceOrientation]== 3)
    {
      v6 = 1.57079633;
    }

    else
    {
      v7 = [(PBFDisplayContext *)self->_displayContext pbf_interfaceOrientation];
      v6 = 3.14159265;
      if (v7 != 2)
      {
        v6 = 0.0;
      }
    }
  }

  CGAffineTransformMakeRotation(&v9, v6);
  UIIntegralTransform();
  return CGAffineTransformInvert(retstr, &v10);
}

- (void)_updatePosterLayoutViewForActiveAsset:(unint64_t)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(PUIScalingContainerView *)self->_timeContainerView setFrame:a3];
  v9 = [(PUIScalingContainerView *)self->_timeContainerView contentView];
  [v9 setFrame:{self->_referenceBounds.origin.x, self->_referenceBounds.origin.y, self->_referenceBounds.size.width, self->_referenceBounds.size.height}];

  [(PUIPosterSnapshotBundleLayoutView *)self->_posterLayoutView setFrame:x, y, width, height];
  v10 = [(UIViewController *)self pbf_displayContext];
  -[PBFPosterGalleryPreviewComplicationContentView setLayoutOrientation:](self->_complicationContentView, "setLayoutOrientation:", [v10 pbf_interfaceOrientation]);
}

- (void)_updateDebugImageViewsWithBounds:(CGRect)a3
{
  activeAsset = self->_activeAsset;
  v31 = [(PBFPosterAssetViewController *)self view:a3.origin.x];
  v5 = self->_posterLayoutView;
  v6 = self->_sceneViewControllerContainerView;
  if (_updateDebugImageViewsWithBounds__onceToken != -1)
  {
    [PBFPosterAssetViewController _updateDebugImageViewsWithBounds:];
  }

  if (_updateDebugImageViewsWithBounds__debugLiveViewControllers)
  {
    if (activeAsset == 2)
    {
      v7 = [(_PBFPosterSceneViewController *)self->_sceneViewController extensionInstance];
      pidLabelForDebugging = self->_pidLabelForDebugging;
      if (!pidLabelForDebugging)
      {
        v9 = objc_opt_new();
        v10 = self->_pidLabelForDebugging;
        self->_pidLabelForDebugging = v9;

        v11 = self->_pidLabelForDebugging;
        v12 = [MEMORY[0x277D75348] whiteColor];
        [(UILabel *)v11 setTextColor:v12];

        v13 = self->_pidLabelForDebugging;
        v14 = [MEMORY[0x277D74300] boldSystemFontOfSize:200.0];
        [(UILabel *)v13 setFont:v14];

        [(UILabel *)self->_pidLabelForDebugging setTextAlignment:1];
        [(UILabel *)self->_pidLabelForDebugging setAllowsDefaultTighteningForTruncation:0];
        [(UILabel *)self->_pidLabelForDebugging setAdjustsFontSizeToFitWidth:1];
        [(UILabel *)self->_pidLabelForDebugging setLineBreakMode:0];
        [v31 addSubview:self->_pidLabelForDebugging];
        pidLabelForDebugging = self->_pidLabelForDebugging;
      }

      v15 = MEMORY[0x277CCACA8];
      v16 = [v7 auditToken];
      v17 = [v15 stringWithFormat:@"%d", objc_msgSend(v16, "pid")];
      [(UILabel *)pidLabelForDebugging setText:v17];

      v18 = self->_pidLabelForDebugging;
      [v31 bounds];
      [(UILabel *)v18 setFrame:?];
      v19 = [(PUITransformContainerView *)v6 layer];
      [v19 setBorderWidth:10.0];

      v20 = [(PUITransformContainerView *)v6 layer];
      v21 = [MEMORY[0x277D75348] magentaColor];
      [v20 setBorderColor:{objc_msgSend(v21, "CGColor")}];
    }

    else
    {
      [(UILabel *)self->_pidLabelForDebugging removeFromSuperview];
      v22 = self->_pidLabelForDebugging;
      self->_pidLabelForDebugging = 0;

      v23 = [(PUITransformContainerView *)v6 layer];
      [v23 setBorderWidth:0.0];

      if (activeAsset == 1)
      {
        v24 = [(PUIPosterSnapshotBundleLayoutView *)v5 layer];
        [v24 setBorderWidth:10.0];

        v25 = [(PUIPosterSnapshotBundleLayoutView *)v5 layer];
        v26 = [MEMORY[0x277D75348] redColor];
        [v25 setBorderColor:{objc_msgSend(v26, "CGColor")}];

LABEL_11:
        v27 = [v31 layer];
        [v27 setBorderWidth:5.0];

        v28 = [v31 layer];
        v29 = [MEMORY[0x277D75348] blueColor];
        v30 = [v29 colorWithAlphaComponent:0.5];
        [v28 setBorderColor:{objc_msgSend(v30, "CGColor")}];

        goto LABEL_12;
      }
    }

    v25 = [(PUIPosterSnapshotBundleLayoutView *)v5 layer];
    [v25 setBorderWidth:0.0];
    goto LABEL_11;
  }

LABEL_12:
}

void __65__PBFPosterAssetViewController__updateDebugImageViewsWithBounds___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _updateDebugImageViewsWithBounds__debugLiveViewControllers = [v0 BOOLForKey:@"DebugLiveViewControllers"];
}

- (void)_didRemoveSceneViewControllerFromHierarchy
{
  v6 = self->_sceneViewController;
  [(_PBFPosterSceneViewController *)v6 setDelegate:0];
  v3 = [(_PBFPosterSceneViewController *)v6 viewIfLoaded];
  [v3 removeFromSuperview];

  [(_PBFPosterSceneViewController *)v6 invalidate];
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = 0;

  [(PFTFuture *)self->_sceneViewControllerFuture cancel];
  sceneViewControllerFuture = self->_sceneViewControllerFuture;
  self->_sceneViewControllerFuture = 0;
}

- (void)invalidate
{
  if (!self->_isInvalidated)
  {
    self->_isInvalidated = 1;
    [(PFTFuture *)self->_executeScriptFuture cancelWithReason:@"invalidated"];

    [(PBFPosterAssetViewController *)self _transitionToActiveAsset:0];
  }
}

- (void)initWithPosterPath:(char *)a1 definition:extensionBundleIdentifier:configuredProperties:configurableOptions:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extensionBundleIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPosterPath:(char *)a1 definition:extensionBundleIdentifier:configuredProperties:configurableOptions:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPosterPath:(char *)a1 definition:extensionBundleIdentifier:configuredProperties:configurableOptions:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"definition", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setDisplayContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFDisplayContext)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end