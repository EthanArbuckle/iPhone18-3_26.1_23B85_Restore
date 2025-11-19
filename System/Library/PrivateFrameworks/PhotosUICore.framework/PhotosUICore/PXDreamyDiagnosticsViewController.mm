@interface PXDreamyDiagnosticsViewController
- (id)_loadAndCacheVariantAssetWithError:(id *)a3;
- (id)inputVideoButtonsTitle;
- (id)variantVideoButtonsTitle;
- (id)variantVideoDescription;
- (void)_loadAndCacheVariantVideoURLFromAsset:(id)a3 completion:(id)a4;
- (void)invalidateInputAndVariantReferences;
- (void)prepareVariantVideoForExportWithProgress:(id)a3 completion:(id)a4;
- (void)prepareVariantVideoWithProgress:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXDreamyDiagnosticsViewController

- (id)_loadAndCacheVariantAssetWithError:(id *)a3
{
  v5 = [(PXDreamyDiagnosticsViewController *)self variantAsset];
  if (!v5)
  {
    v6 = [(PXVideoComparisonViewController *)self inputAsset];
    [v6 fetchPropertySetsIfNeeded];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__168032;
    v27 = __Block_byref_object_dispose__168033;
    v28 = 0;
    v7 = dispatch_semaphore_create(0);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __72__PXDreamyDiagnosticsViewController__loadAndCacheVariantAssetWithError___block_invoke;
    v20 = &unk_1E773F4A0;
    v22 = &v23;
    v8 = v7;
    v21 = v8;
    [v6 getOriginalStableHashWithCompletionHandler:&v17];
    v9 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v8, v9);
    if (!v24[5])
    {
      if (!a3)
      {
        v5 = 0;
LABEL_18:

        _Block_object_dispose(&v23, 8);
        goto LABEL_19;
      }

      v13 = MEMORY[0x1E696ABC0];
      v11 = [v6 uuid];
      [v13 px_genericErrorWithDebugDescription:{@"Unable to load master fingerprint for Asset with UUID: %@", v11}];
      *a3 = v5 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v11 = [v10 librarySpecificFetchOptions];

    if ([v6 sourceType] == 16)
    {
      v12 = 1;
    }

    else
    {
      if ([v6 sourceType] != 1)
      {
LABEL_10:
        v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"additionalAttributes.originalStableHash", v24[5], v17, v18, v19, v20];
        [v11 setInternalPredicate:v14];

        v15 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v11];
        if ([v15 count])
        {
          v5 = [v15 firstObject];
        }

        else if (a3)
        {
          [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No asset was found with a matching master fingerprint"];
          *a3 = v5 = 0;
        }

        else
        {
          v5 = 0;
        }

        [(PXDreamyDiagnosticsViewController *)self setVariantAsset:v5];

        goto LABEL_17;
      }

      v12 = 16;
    }

    [v11 setIncludeAssetSourceTypes:v12];
    goto LABEL_10;
  }

LABEL_19:

  return v5;
}

void __72__PXDreamyDiagnosticsViewController__loadAndCacheVariantAssetWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_loadAndCacheVariantVideoURLFromAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXDreamyDiagnosticsViewController *)self variantVideoURL];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v9 = [MEMORY[0x1E6978860] defaultManager];
    [v9 cancelImageRequest:{-[PXDreamyDiagnosticsViewController variantVideoRequestID](self, "variantVideoRequestID")}];

    v10 = objc_alloc_init(MEMORY[0x1E6978B18]);
    [v10 setNetworkAccessAllowed:1];
    [v10 setVideoComplementAllowed:1];
    [v10 setStreamingAllowed:0];
    objc_initWeak(&location, self);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v11 = [MEMORY[0x1E6978860] defaultManager];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __86__PXDreamyDiagnosticsViewController__loadAndCacheVariantVideoURLFromAsset_completion___block_invoke;
    v17 = &unk_1E773F478;
    v19 = &v21;
    objc_copyWeak(&v20, &location);
    v18 = v7;
    v12 = [v11 requestURLForVideo:v6 options:v10 resultHandler:&v14];

    *(v22 + 6) = v12;
    v13 = objc_loadWeakRetained(&location);
    [v13 setVariantVideoRequestID:{v12, v14, v15, v16, v17}];

    _Block_object_dispose(&v21, 8);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __86__PXDreamyDiagnosticsViewController__loadAndCacheVariantVideoURLFromAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 48));
  v5;
  *(a1 + 32);
  px_dispatch_on_main_queue();
}

void __86__PXDreamyDiagnosticsViewController__loadAndCacheVariantVideoURLFromAsset_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained variantVideoRequestID];

  if (v2 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    [v5 setVariantVideoRequestID:0];

    v6 = *(a1 + 32);
    v7 = objc_loadWeakRetained((a1 + 56));
    [v7 setVariantVideoURL:v6];

    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

- (void)invalidateInputAndVariantReferences
{
  v4.receiver = self;
  v4.super_class = PXDreamyDiagnosticsViewController;
  [(PXVideoComparisonViewController *)&v4 invalidateInputAndVariantReferences];
  [(PXDreamyDiagnosticsViewController *)self setVariantAsset:0];
  [(PXDreamyDiagnosticsViewController *)self setVariantVideoURL:0];
  v3 = [MEMORY[0x1E6978860] defaultManager];
  [v3 cancelImageRequest:{-[PXDreamyDiagnosticsViewController variantVideoRequestID](self, "variantVideoRequestID")}];

  [(PXDreamyDiagnosticsViewController *)self setVariantVideoRequestID:0];
}

- (void)prepareVariantVideoForExportWithProgress:(id)a3 completion:(id)a4
{
  v5 = a4;
  v11 = 0;
  v6 = [(PXDreamyDiagnosticsViewController *)self _loadAndCacheVariantAssetWithError:&v11];
  v7 = v11;
  v8 = v7;
  if (!v6 || v7)
  {
    (*(v5 + 2))(v5, 0, 0, v7);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__PXDreamyDiagnosticsViewController_prepareVariantVideoForExportWithProgress_completion___block_invoke;
    v9[3] = &unk_1E773F450;
    v10 = v5;
    [(PXDreamyDiagnosticsViewController *)self _loadAndCacheVariantVideoURLFromAsset:v6 completion:v9];
  }
}

- (void)prepareVariantVideoWithProgress:(id)a3 completion:(id)a4
{
  v5 = a4;
  v11 = 0;
  v6 = [(PXDreamyDiagnosticsViewController *)self _loadAndCacheVariantAssetWithError:&v11];
  v7 = v11;
  v8 = v7;
  if (!v6 || v7)
  {
    v5[2](v5, 0, v7);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PXDreamyDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke;
    v9[3] = &unk_1E773F450;
    v10 = v5;
    [(PXDreamyDiagnosticsViewController *)self _loadAndCacheVariantVideoURLFromAsset:v6 completion:v9];
  }
}

void __80__PXDreamyDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69880B0];
  v4 = a2;
  v5 = [[v3 alloc] initWithURL:v4];

  v6 = [v5 asset];
  v7 = v6;
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&v8, 0, 24);
  }

  start = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v10, &start, &v8.start);
  v8 = v10;
  [v5 setLoopTimeRange:&v8];

  (*(*(a1 + 32) + 16))();
}

- (id)variantVideoDescription
{
  v2 = [(PXDreamyDiagnosticsViewController *)self variantAsset];
  v3 = [v2 debugDescription];

  return v3;
}

- (id)variantVideoButtonsTitle
{
  v2 = [(PXVideoComparisonViewController *)self inputAsset];
  v3 = [v2 sourceType];

  if (v3 == 16)
  {
    return @"Original";
  }

  else
  {
    return @"Dreamy";
  }
}

- (id)inputVideoButtonsTitle
{
  v2 = [(PXVideoComparisonViewController *)self inputAsset];
  v3 = [v2 sourceType];

  if (v3 == 16)
  {
    return @"Dreamy";
  }

  else
  {
    return @"Original";
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PXDreamyDiagnosticsViewController;
  [(PXVideoComparisonViewController *)&v3 viewDidLoad];
  [(PXDreamyDiagnosticsViewController *)self setTitle:@"Dreamy"];
}

@end