@interface PUPhotoMarkupViewController
- (PUPhotoMarkupViewController)initWithReviewAsset:(id)asset mediaProvider:(id)provider;
- (id)controller:(id)controller willSetToolbarItems:(id)items;
- (void)_handleDoneButton:(id)button;
- (void)_notifyObserversDidFinishWithSavedAsset:(id)asset;
- (void)_updateUndoRedoButtons;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation PUPhotoMarkupViewController

- (id)controller:(id)controller willSetToolbarItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (itemsCopy)
  {
    array = itemsCopy;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v7 = array;

  return v7;
}

- (void)_updateUndoRedoButtons
{
  if (![(PUPhotoMarkupViewController *)self updatingUndoButtons])
  {
    [(PUPhotoMarkupViewController *)self setUpdatingUndoButtons:1];
    canUndo = [(NSUndoManager *)self->_undoManager canUndo];
    undoButton = [(PUPhotoMarkupViewController *)self undoButton];
    [undoButton setEnabled:canUndo];

    canRedo = [(NSUndoManager *)self->_undoManager canRedo];
    redoButton = [(PUPhotoMarkupViewController *)self redoButton];
    [redoButton setEnabled:canRedo];

    [(PUPhotoMarkupViewController *)self setUpdatingUndoButtons:0];
  }
}

- (void)_notifyObserversDidFinishWithSavedAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  _workaroundInputWriteURL = [(PUPhotoMarkupViewController *)self _workaroundInputWriteURL];
  if (_workaroundInputWriteURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    [defaultManager removeItemAtURL:_workaroundInputWriteURL error:&v13];
    v7 = v13;

    if (v7)
    {
      v8 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = _workaroundInputWriteURL;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@: %{public}@", buf, 0x16u);
      }
    }

    [(PUPhotoMarkupViewController *)self _setWorkaroundInputWriteURL:0];
  }

  observerRegistry = self->__observerRegistry;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PUPhotoMarkupViewController__notifyObserversDidFinishWithSavedAsset___block_invoke;
  v11[3] = &unk_1E7B7C098;
  v11[4] = self;
  v12 = assetCopy;
  v10 = assetCopy;
  [(PUObserverRegistry *)observerRegistry enumerateObserversWithBlock:v11];
}

- (void)_handleDoneButton:(id)button
{
  v36 = *MEMORY[0x1E69E9840];
  reviewAsset = [(PUPhotoMarkupViewController *)self reviewAsset];
  _sourceImageVersion = [(PUPhotoMarkupViewController *)self _sourceImageVersion];
  _markupViewController = [(PUPhotoMarkupViewController *)self _markupViewController];
  createArchivedModelData = [_markupViewController createArchivedModelData];
  v8 = [reviewAsset adjustmentOutputForInputBaseVersion:_sourceImageVersion withLivePhotoSupport:0];
  renderedImageFileURL = [v8 renderedImageFileURL];
  v31 = 0;
  LOBYTE(_sourceImageVersion) = [_markupViewController writeToURL:renderedImageFileURL embeddingSourceImageAndEditModel:0 error:&v31];
  v10 = v31;
  if ((_sourceImageVersion & 1) == 0)
  {
    v11 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = renderedImageFileURL;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to write image to disk %{public}@: %{public}@", buf, 0x16u);
    }
  }

  if (([reviewAsset mediaSubtypes] & 8) != 0)
  {
    v12 = [PUReviewAsset alloc];
    providedPreviewImage = [reviewAsset providedPreviewImage];
    mediaSubtypes = [reviewAsset mediaSubtypes];
    pixelWidth = [reviewAsset pixelWidth];
    pixelHeight = [reviewAsset pixelHeight];
    creationDate = [reviewAsset creationDate];
    providedImageMetadata = [reviewAsset providedImageMetadata];
    [reviewAsset burstIdentifier];
    v13 = v29 = createArchivedModelData;
    v28 = renderedImageFileURL;
    numberOfRepresentedAssets = [reviewAsset numberOfRepresentedAssets];
    providedFullsizeRenderImageURL = [reviewAsset providedFullsizeRenderImageURL];
    [reviewAsset providedFullsizeImageURL];
    v16 = v30 = _markupViewController;
    [reviewAsset assetAdjustments];
    v17 = v26 = v10;
    identifier = [reviewAsset identifier];
    v24 = [(PUReviewAsset *)v12 initWithPhoto:providedPreviewImage mediaSubtypes:mediaSubtypes & 0xFFFFFFFFFFFFFFF7 width:pixelWidth height:pixelHeight captureDate:creationDate metadata:providedImageMetadata burstIdentifier:v13 representedCount:numberOfRepresentedAssets fullsizeImageURL:providedFullsizeRenderImageURL fullsizeUnadjustedImageURL:v16 assetAdjustments:v17 identifier:identifier];

    v10 = v26;
    _markupViewController = v30;

    createArchivedModelData = v29;
    renderedImageFileURL = v28;
    reviewAsset = v24;
  }

  v19 = [reviewAsset reviewAssetWithAdjustmentOutput:v8 adjustmentData:createArchivedModelData formatIdentifier:@"com.apple.Markup" version:@"1.0"];
  [(PUPhotoMarkupViewController *)self _notifyObserversDidFinishWithSavedAsset:v19];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUPhotoMarkupViewController;
  [(PUPhotoMarkupViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v54[3] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = PUPhotoMarkupViewController;
  [(PUPhotoMarkupViewController *)&v46 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(PUPhotoMarkupViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v12 = getPPKMarkupViewControllerClass_softClass;
  v51 = getPPKMarkupViewControllerClass_softClass;
  if (!getPPKMarkupViewControllerClass_softClass)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __getPPKMarkupViewControllerClass_block_invoke;
    v47[3] = &unk_1E7B800F0;
    v47[4] = &v48;
    __getPPKMarkupViewControllerClass_block_invoke(v47);
    v12 = v49[3];
  }

  v13 = v12;
  _Block_object_dispose(&v48, 8);
  v14 = objc_alloc_init(v12);
  v15 = PULocalizedString(@"PUPHOTOBROWSER_ASSET_EXPLORER_REVIEW_SCREEN_MARKUP_TITLE");
  [v14 setTitle:v15];

  if (objc_opt_respondsToSelector())
  {
    [v14 setBackgroundColor:systemBackgroundColor];
  }

  [v14 setAnnotationEditingEnabled:1];
  [v14 setPencilAlwaysDraws:1];
  [v14 setShowShareButtonInToolbar:0];
  [v14 setDelegate:self];
  [v14 setCentersIgnoringContentInsets:1];
  markupViewController = self->__markupViewController;
  self->__markupViewController = v14;
  v17 = v14;

  reviewAsset = [(PUPhotoMarkupViewController *)self reviewAsset];
  mediaProvider = [(PUPhotoMarkupViewController *)self mediaProvider];
  v19 = [reviewAsset inputForAdjustmentWithMediaProvider:mediaProvider canHandleAdjustments:&__block_literal_global_60806];

  baseImageFileURL = [v19 baseImageFileURL];
  knownAdjustmentData = [v19 knownAdjustmentData];
  currentPreviewImage = [v19 currentPreviewImage];
  [v17 setFileURL:baseImageFileURL withArchivedModelData:knownAdjustmentData placeholderImage:currentPreviewImage];

  -[PUPhotoMarkupViewController _setSourceImageVersion:](self, "_setSourceImageVersion:", [v19 adjustmentBaseVersion]);
  v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel__handleDoneButton_];
  navigationItem = [v17 navigationItem];
  [navigationItem setRightBarButtonItem:v23];

  undoManager = [v17 undoManager];
  undoManager = self->_undoManager;
  self->_undoManager = undoManager;

  v27 = objc_alloc(MEMORY[0x1E69DC708]);
  v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward.circle"];
  v29 = [v27 initWithImage:v28 style:0 target:self action:sel__handleUndoButton_];
  [(PUPhotoMarkupViewController *)self setUndoButton:v29];

  v30 = objc_alloc(MEMORY[0x1E69DC708]);
  v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward.circle"];
  v32 = [v30 initWithImage:v31 style:0 target:self action:sel__handleRedoButton_];
  [(PUPhotoMarkupViewController *)self setRedoButton:v32];

  v54[0] = v22;
  undoButton = [(PUPhotoMarkupViewController *)self undoButton];
  v54[1] = undoButton;
  redoButton = [(PUPhotoMarkupViewController *)self redoButton];
  v54[2] = redoButton;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  navigationItem2 = [v17 navigationItem];
  [navigationItem2 setLeftBarButtonItems:v35];

  v37 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v17];
  [(PUPhotoMarkupViewController *)self addChildViewController:v37];
  v52 = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v53 = labelColor;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  navigationBar = [v37 navigationBar];
  [navigationBar setTitleTextAttributes:v39];

  view2 = [v37 view];
  [view2 setFrame:{v5, v7, v9, v11}];
  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [v37 didMoveToParentViewController:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__undoManagerCheckpoint_ name:*MEMORY[0x1E696AA10] object:0];
}

uint64_t __42__PUPhotoMarkupViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 adjustmentFormatIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Markup"];

  v5 = [v2 adjustmentFormatVersion];
  v6 = [v5 isEqualToString:@"1.0"];

  if (v4 && (v6 & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v2 adjustmentFormatIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.PaperKit.Markup"];

    v10 = [v2 adjustmentFormatVersion];
    v7 = v9 & [v10 isEqualToString:@"1.0"];
  }

  return v7;
}

- (PUPhotoMarkupViewController)initWithReviewAsset:(id)asset mediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PUPhotoMarkupViewController;
  v10 = [(PUPhotoMarkupViewController *)&v15 initWithNibName:0 bundle:0];
  if (v10)
  {
    if (!assetCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PUPhotoMarkupViewController.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"reviewAsset"}];
    }

    objc_storeStrong(&v10->_reviewAsset, asset);
    objc_storeStrong(&v10->_mediaProvider, provider);
    v11 = objc_alloc_init(PUObserverRegistry);
    observerRegistry = v10->__observerRegistry;
    v10->__observerRegistry = v11;
  }

  return v10;
}

@end