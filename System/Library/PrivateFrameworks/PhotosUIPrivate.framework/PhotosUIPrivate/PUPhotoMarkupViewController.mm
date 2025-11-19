@interface PUPhotoMarkupViewController
- (PUPhotoMarkupViewController)initWithReviewAsset:(id)a3 mediaProvider:(id)a4;
- (id)controller:(id)a3 willSetToolbarItems:(id)a4;
- (void)_handleDoneButton:(id)a3;
- (void)_notifyObserversDidFinishWithSavedAsset:(id)a3;
- (void)_updateUndoRedoButtons;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation PUPhotoMarkupViewController

- (id)controller:(id)a3 willSetToolbarItems:(id)a4
{
  v4 = a4;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v7 = v6;

  return v7;
}

- (void)_updateUndoRedoButtons
{
  if (![(PUPhotoMarkupViewController *)self updatingUndoButtons])
  {
    [(PUPhotoMarkupViewController *)self setUpdatingUndoButtons:1];
    v3 = [(NSUndoManager *)self->_undoManager canUndo];
    v4 = [(PUPhotoMarkupViewController *)self undoButton];
    [v4 setEnabled:v3];

    v5 = [(NSUndoManager *)self->_undoManager canRedo];
    v6 = [(PUPhotoMarkupViewController *)self redoButton];
    [v6 setEnabled:v5];

    [(PUPhotoMarkupViewController *)self setUpdatingUndoButtons:0];
  }
}

- (void)_notifyObserversDidFinishWithSavedAsset:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUPhotoMarkupViewController *)self _workaroundInputWriteURL];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    [v6 removeItemAtURL:v5 error:&v13];
    v7 = v13;

    if (v7)
    {
      v8 = PLAssetExplorerGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = v5;
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
  v12 = v4;
  v10 = v4;
  [(PUObserverRegistry *)observerRegistry enumerateObserversWithBlock:v11];
}

- (void)_handleDoneButton:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(PUPhotoMarkupViewController *)self reviewAsset];
  v5 = [(PUPhotoMarkupViewController *)self _sourceImageVersion];
  v6 = [(PUPhotoMarkupViewController *)self _markupViewController];
  v7 = [v6 createArchivedModelData];
  v8 = [v4 adjustmentOutputForInputBaseVersion:v5 withLivePhotoSupport:0];
  v9 = [v8 renderedImageFileURL];
  v31 = 0;
  LOBYTE(v5) = [v6 writeToURL:v9 embeddingSourceImageAndEditModel:0 error:&v31];
  v10 = v31;
  if ((v5 & 1) == 0)
  {
    v11 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Failed to write image to disk %{public}@: %{public}@", buf, 0x16u);
    }
  }

  if (([v4 mediaSubtypes] & 8) != 0)
  {
    v12 = [PUReviewAsset alloc];
    v25 = [v4 providedPreviewImage];
    v27 = [v4 mediaSubtypes];
    v23 = [v4 pixelWidth];
    v22 = [v4 pixelHeight];
    v21 = [v4 creationDate];
    v20 = [v4 providedImageMetadata];
    [v4 burstIdentifier];
    v13 = v29 = v7;
    v28 = v9;
    v14 = [v4 numberOfRepresentedAssets];
    v15 = [v4 providedFullsizeRenderImageURL];
    [v4 providedFullsizeImageURL];
    v16 = v30 = v6;
    [v4 assetAdjustments];
    v17 = v26 = v10;
    v18 = [v4 identifier];
    v24 = [(PUReviewAsset *)v12 initWithPhoto:v25 mediaSubtypes:v27 & 0xFFFFFFFFFFFFFFF7 width:v23 height:v22 captureDate:v21 metadata:v20 burstIdentifier:v13 representedCount:v14 fullsizeImageURL:v15 fullsizeUnadjustedImageURL:v16 assetAdjustments:v17 identifier:v18];

    v10 = v26;
    v6 = v30;

    v7 = v29;
    v9 = v28;
    v4 = v24;
  }

  v19 = [v4 reviewAssetWithAdjustmentOutput:v8 adjustmentData:v7 formatIdentifier:@"com.apple.Markup" version:@"1.0"];
  [(PUPhotoMarkupViewController *)self _notifyObserversDidFinishWithSavedAsset:v19];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v45 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [(PUPhotoMarkupViewController *)self view];
  [v3 setBackgroundColor:v45];
  [v3 bounds];
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
    [v14 setBackgroundColor:v45];
  }

  [v14 setAnnotationEditingEnabled:1];
  [v14 setPencilAlwaysDraws:1];
  [v14 setShowShareButtonInToolbar:0];
  [v14 setDelegate:self];
  [v14 setCentersIgnoringContentInsets:1];
  markupViewController = self->__markupViewController;
  self->__markupViewController = v14;
  v17 = v14;

  v44 = [(PUPhotoMarkupViewController *)self reviewAsset];
  v18 = [(PUPhotoMarkupViewController *)self mediaProvider];
  v19 = [v44 inputForAdjustmentWithMediaProvider:v18 canHandleAdjustments:&__block_literal_global_60806];

  v43 = [v19 baseImageFileURL];
  v20 = [v19 knownAdjustmentData];
  v21 = [v19 currentPreviewImage];
  [v17 setFileURL:v43 withArchivedModelData:v20 placeholderImage:v21];

  -[PUPhotoMarkupViewController _setSourceImageVersion:](self, "_setSourceImageVersion:", [v19 adjustmentBaseVersion]);
  v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:3 target:self action:sel__handleDoneButton_];
  v24 = [v17 navigationItem];
  [v24 setRightBarButtonItem:v23];

  v25 = [v17 undoManager];
  undoManager = self->_undoManager;
  self->_undoManager = v25;

  v27 = objc_alloc(MEMORY[0x1E69DC708]);
  v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward.circle"];
  v29 = [v27 initWithImage:v28 style:0 target:self action:sel__handleUndoButton_];
  [(PUPhotoMarkupViewController *)self setUndoButton:v29];

  v30 = objc_alloc(MEMORY[0x1E69DC708]);
  v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward.circle"];
  v32 = [v30 initWithImage:v31 style:0 target:self action:sel__handleRedoButton_];
  [(PUPhotoMarkupViewController *)self setRedoButton:v32];

  v54[0] = v22;
  v33 = [(PUPhotoMarkupViewController *)self undoButton];
  v54[1] = v33;
  v34 = [(PUPhotoMarkupViewController *)self redoButton];
  v54[2] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v36 = [v17 navigationItem];
  [v36 setLeftBarButtonItems:v35];

  v37 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v17];
  [(PUPhotoMarkupViewController *)self addChildViewController:v37];
  v52 = *MEMORY[0x1E69DB650];
  v38 = [MEMORY[0x1E69DC888] labelColor];
  v53 = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v40 = [v37 navigationBar];
  [v40 setTitleTextAttributes:v39];

  v41 = [v37 view];
  [v41 setFrame:{v5, v7, v9, v11}];
  [v41 setAutoresizingMask:18];
  [v3 addSubview:v41];
  [v37 didMoveToParentViewController:self];
  v42 = [MEMORY[0x1E696AD88] defaultCenter];
  [v42 addObserver:self selector:sel__undoManagerCheckpoint_ name:*MEMORY[0x1E696AA10] object:0];
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

- (PUPhotoMarkupViewController)initWithReviewAsset:(id)a3 mediaProvider:(id)a4
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = PUPhotoMarkupViewController;
  v10 = [(PUPhotoMarkupViewController *)&v15 initWithNibName:0 bundle:0];
  if (v10)
  {
    if (!v8)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v10 file:@"PUPhotoMarkupViewController.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"reviewAsset"}];
    }

    objc_storeStrong(&v10->_reviewAsset, a3);
    objc_storeStrong(&v10->_mediaProvider, a4);
    v11 = objc_alloc_init(PUObserverRegistry);
    observerRegistry = v10->__observerRegistry;
    v10->__observerRegistry = v11;
  }

  return v10;
}

@end