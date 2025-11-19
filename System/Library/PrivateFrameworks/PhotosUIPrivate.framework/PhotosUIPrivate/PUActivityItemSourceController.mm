@interface PUActivityItemSourceController
- ($9D9B13A340AA60ED2DD68408BD7D962F)synthesizedSharingPreferencesForAssetItem:(id)a3;
- (BOOL)_prepareForPerformWithActivityType:(id)a3 error:(id *)a4;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)isPreparingIndividualItems;
- (NSArray)activeItemSources;
- (NSArray)activityItems;
- (PUActivityItemSourceController)init;
- (PUActivityItemSourceControllerDelegate)delegate;
- (PUActivityViewController)activityViewController;
- (PXAssetMediaTypeCount)requestAssetsMediaTypeCount;
- (id)activityItemSourceForAsset:(id)a3;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (void)_cleanupAfterPerform;
- (void)_didPublishMomentShareLinkToURL:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_prepareIndividualItemSourcesForActivity:(id)a3;
- (void)_prepareMomentShareLinkFromIndividualItemSourcesForActivity:(id)a3;
- (void)addAssetItem:(id)a3;
- (void)cancel;
- (void)cleanUpExportedFiles;
- (void)cmmActivityItemSource:(id)a3 didFinishPreparationForActivityType:(id)a4 preparationType:(unint64_t)a5 withItems:(id)a6 didCancel:(BOOL)a7 error:(id)a8 completion:(id)a9;
- (void)cmmActivityItemSource:(id)a3 willBeginPreparationWithActivityType:(id)a4 preparationType:(unint64_t)a5;
- (void)configureItemSourcesForActivityIfNeeded:(id)a3 forcePreparationAsMomentShareLink:(BOOL)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)publishLinkForActivityType:(id)a3 completionHandler:(id)a4;
- (void)removeAssetItem:(id)a3;
- (void)runExplicitly:(BOOL)a3 withActivityType:(id)a4 completionHandler:(id)a5;
- (void)setActiveItemSources:(id)a3;
- (void)setAssetItems:(id)a3;
- (void)setPreferredExportFormat:(int64_t)a3;
- (void)setShouldExcludeAccessibilityDescriptionInAllItemSources:(BOOL)a3;
- (void)setShouldExcludeCaptionInAllItemSources:(BOOL)a3;
- (void)setShouldExcludeLivenessInAllItemSources:(BOOL)a3;
- (void)setShouldExcludeLocationInAllItemSources:(BOOL)a3;
- (void)setShouldShareAsAssetBundles:(BOOL)a3;
- (void)setShouldShareAsUnmodifiedOriginals:(BOOL)a3;
- (void)setState:(unint64_t)a3;
- (void)updateSharingPreferencesInItemSources;
- (void)updateState;
@end

@implementation PUActivityItemSourceController

- (PUActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

- (PUActivityItemSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v10 = a3;
  if (((v6 & 1) == 0 || PUActivityItemSourceControllerItemSourceObserverContext != a5) && ((v6 & 1) == 0 || PUActivityItemSourceControllerCMMSourceObserverContext != a5))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:1003 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PUActivityItemSourceController *)self updateState];
}

- (void)cmmActivityItemSource:(id)a3 didFinishPreparationForActivityType:(id)a4 preparationType:(unint64_t)a5 withItems:(id)a6 didCancel:(BOOL)a7 error:(id)a8 completion:(id)a9
{
  v10 = a7;
  v24[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v18 = [(PUActivityItemSourceController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    if (v16)
    {
      v24[0] = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    }

    else
    {
      v20 = 0;
    }

    v21 = [(PUActivityItemSourceController *)self delegate];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __145__PUActivityItemSourceController_cmmActivityItemSource_didFinishPreparationForActivityType_preparationType_withItems_didCancel_error_completion___block_invoke;
    v22[3] = &unk_1E7B80C88;
    v23 = v17;
    [v21 activityItemSourceController:self didFinishPreparationForActivityType:v14 preparationType:a5 withItems:v15 didCancel:v10 errors:v20 completion:v22];
  }

  else
  {
    v17[2](v17);
  }
}

- (void)cmmActivityItemSource:(id)a3 willBeginPreparationWithActivityType:(id)a4 preparationType:(unint64_t)a5
{
  v10 = a4;
  v7 = [(PUActivityItemSourceController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PUActivityItemSourceController *)self delegate];
    [v9 activityItemSourceController:self willBeginPreparationWithActivityType:v10 preparationType:a5];
  }
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [v7 presentingViewController];
  if (!v9)
  {
    v9 = [(PUActivityItemSourceController *)self activityViewController];
    if (v9)
    {
      do
      {
        v12 = [v9 presentedViewController];

        if (v12 == v7)
        {
          break;
        }

        v13 = [v9 presentedViewController];

        v9 = v13;
      }

      while (v13);
    }
  }

  v10 = [v9 presentedViewController];

  if (v10 == v7)
  {
    [v9 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v11 = PLShareSheetGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "PUActivityItemSourceController=%@: Did not find a parent view controller for dismissing the CMM progress alert.", &v15, 0xCu);
    }

    v8[2](v8);
  }

  return v10 == v7;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(PUActivityItemSourceController *)self activityViewController];
    [v7 px_presentOverTopmostPresentedViewController:v6 animated:1 completion:0];
  }

  return a4 != 0;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v3 = MEMORY[0x1E69C4608];
  v4 = [(PUActivityItemSourceController *)self activityViewController];
  v5 = [v3 defaultPresenterWithViewController:v4];

  return v5;
}

- (id)activityItemSourceForAsset:(id)a3
{
  v4 = a3;
  assetItemSources = self->_assetItemSources;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PUActivityItemSourceController_activityItemSourceForAsset___block_invoke;
  v10[3] = &unk_1E7B744E8;
  v6 = v4;
  v11 = v6;
  v7 = [(NSMutableOrderedSet *)assetItemSources indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableOrderedSet *)self->_assetItemSources objectAtIndexedSubscript:v7];
  }

  return v8;
}

uint64_t __61__PUActivityItemSourceController_activityItemSourceForAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 asset];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)cancel
{
  v19 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:884 description:@"expect main thread"];
  }

  atomic_fetch_add(&self->_taskId, 1u);
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "cancel PUActivityItemSourceController=%@", buf, 0xCu);
  }

  v5 = [(PUActivityItemSourceController *)self activeItemSources];
  if (v5)
  {
    [(PUActivityItemSourceController *)self setActiveItemSources:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
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

          [*(*(&v12 + 1) + 8 * i) cancel];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(PUActivityItemSourceController *)self setProgressHandler:0];
    [(PUActivityItemSourceController *)self setErrors:0];
  }

  [(PUActivityItemSourceController *)self updateState];
  [(PUActivityItemSourceController *)self setActiveActivityType:0];
}

- (void)_didPublishMomentShareLinkToURL:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:861 description:{@"%s must be called on the main thread", "-[PUActivityItemSourceController _didPublishMomentShareLinkToURL:error:completionHandler:]"}];
  }

  v12 = [v10 domain];
  if ([v12 isEqualToString:*MEMORY[0x1E69C3FE0]])
  {
    v13 = [v10 code] == -1001;
  }

  else
  {
    v13 = 0;
  }

  v14 = PLShareSheetGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 pl_redactedShareURL];
    v16 = [(PUActivityItemSourceController *)self activeActivityType];
    v17 = @"NO";
    if (v13)
    {
      v17 = @"YES";
    }

    v18 = v17;
    *buf = 138544386;
    v26 = v15;
    v27 = 2112;
    v28 = self;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Share Sheet: Finished publishing moment share link: %{public}@ PUActivityItemSourceController=%@ activityType=%@ didCancel=%@ error=%@", buf, 0x34u);
  }

  if (v11)
  {
    [(PUActivityItemSourceController *)self _setPublishedURL:v9];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__PUActivityItemSourceController__didPublishMomentShareLinkToURL_error_completionHandler___block_invoke;
    block[3] = &unk_1E7B7B478;
    v23 = v11;
    v21 = v9;
    v24 = v13;
    v22 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (v13)
  {
    [(PUActivityItemSourceController *)self cancel];
  }

  [(PUActivityItemSourceController *)self _cleanupAfterPerform];
  [(PUActivityItemSourceController *)self updateState];
}

- (void)publishLinkForActivityType:(id)a3 completionHandler:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:809 description:{@"%s must be called on the main thread", "-[PUActivityItemSourceController publishLinkForActivityType:completionHandler:]"}];
  }

  v46 = 0;
  v34 = v7;
  v8 = [(PUActivityItemSourceController *)self _prepareForPerformWithActivityType:v7 error:&v46];
  v9 = v46;
  v32 = v9;
  if (v8)
  {
    v10 = [(NSMutableOrderedSet *)self->_assetItemSources array];
    v33 = [v10 copy];

    v11 = [v33 count] == 0;
    v12 = PLShareSheetGetLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Share Sheet: Attempted to publish a link with no items selected", buf, 2u);
      }

      v31 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No items selected for moment share link"];
      (*(v35 + 2))(v35, 0, 0, v31);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v34;
        v53 = 2112;
        v54 = v33;
        _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "Share Sheet: Begin publishing moment share link PUActivityItemSourceController=%@ with activityType=%@ activeItemSources=%@", buf, 0x20u);
      }

      [(PUActivityItemSourceController *)self setActiveItemSources:v33];
      [(PUActivityItemSourceController *)self setActiveActivityType:v34];
      [(PUActivityItemSourceController *)self _setPublishedURL:0];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v14 = v33;
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v15)
      {
        v16 = *v43;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v42 + 1) + 8 * i) setShouldSkipPreparation:1];
          }

          v15 = [v14 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v15);
      }

      v18 = [(PUActivityItemSourceController *)self assets];
      v31 = [v18 array];

      objc_initWeak(buf, self);
      v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v31, "count")}];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = [(PUActivityItemSourceController *)self activeItemSources];
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v21)
      {
        v22 = *v39;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v39 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v38 + 1) + 8 * j);
            v25 = [v24 sharingPreferences];
            v26 = v25;
            if ((v25 & 0x100000000) != 0 || (v25 & 1) != 0 || (v25 & 0x100) != 0)
            {
              v27 = objc_alloc_init(MEMORY[0x1E69C3398]);
              [v27 setPublishAsOriginal:HIDWORD(v26) & 1];
              [v27 setPublishLivePhotoAsStill:v26 & 1];
              [v27 setRemoveLocationData:(v26 >> 8) & 1];
              v28 = [v24 asset];
              v29 = [v28 uuid];
              [v19 setObject:v27 forKeyedSubscript:v29];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v21);
      }

      objc_copyWeak(&v37, buf);
      v36 = v35;
      PXPublishMomentShareWithCompletion();

      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    (*(v35 + 2))(v35, 0, 0, v9);
  }
}

void __79__PUActivityItemSourceController_publishLinkForActivityType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = v5;
  v8 = v6;
  v9 = *(a1 + 32);
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v10);
}

void __79__PUActivityItemSourceController_publishLinkForActivityType_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _didPublishMomentShareLinkToURL:*(a1 + 32) error:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)runExplicitly:(BOOL)a3 withActivityType:(id)a4 completionHandler:(id)a5
{
  v38 = a3;
  v93[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v40 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:658 description:{@"%s must be called on the main thread", "-[PUActivityItemSourceController runExplicitly:withActivityType:completionHandler:]"}];
  }

  v86 = 0;
  v50 = self;
  v41 = v7;
  v8 = [(PUActivityItemSourceController *)self _prepareForPerformWithActivityType:v7 error:&v86];
  v9 = v86;
  v39 = v9;
  if (v8)
  {
    v10 = [MEMORY[0x1E69C3928] sharedController];
    [v10 addPowerAssertionForIdentifier:-[PUActivityItemSourceController powerAssertionIdentifier](self withReason:"powerAssertionIdentifier") completion:{8, 0}];

    v11 = [(NSMutableOrderedSet *)self->_assetItemSources array];
    obj = [v11 copy];

    v12 = PLShareSheetGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [obj count];
      *buf = 138413314;
      *&buf[4] = v50;
      *&buf[12] = 1024;
      *&buf[14] = v38;
      *&buf[18] = 2112;
      *&buf[20] = v7;
      *&buf[28] = 2048;
      *&buf[30] = v13;
      v91 = 2112;
      v92 = obj;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "begin running PUActivityItemSourceController=%@ runExplicitly=%i for activityType=%@ with %lu activeItemSources=%@", buf, 0x30u);
    }

    [(PUActivityItemSourceController *)v50 setActiveItemSources:obj];
    [(PUActivityItemSourceController *)v50 setActiveActivityType:v7];
    v46 = [obj count];
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v46];
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v46];
    [(PUActivityItemSourceController *)v50 setErrors:v14];

    v15 = v50;
    v16 = atomic_load(&v50->_taskId);
    v44 = v16;
    v45 = [(PUActivityItemSourceController *)v15 progressHandler];
    if (v45)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v85[0] = 0;
      v85[1] = v85;
      v85[2] = 0x2020000000;
      v85[3] = 0;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v17 = obj;
      v18 = [v17 countByEnumeratingWithState:&v81 objects:v89 count:16];
      if (v18)
      {
        v19 = *v82;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v82 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v81 + 1) + 8 * i);
            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke;
            v74[3] = &unk_1E7B745A8;
            v80 = v44;
            v74[4] = v50;
            v76 = v85;
            v77 = buf;
            v78 = a2;
            v79 = v46;
            v75 = v45;
            [v21 setProgressHandler:v74];
          }

          v18 = [v17 countByEnumeratingWithState:&v81 objects:v89 count:16];
        }

        while (v18);
      }

      _Block_object_dispose(v85, 8);
      _Block_object_dispose(buf, 8);
    }

    v22 = dispatch_group_create();
    v48 = dispatch_get_global_queue(0, 0);
    queue = dispatch_queue_create(0, 0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obja = obj;
    v23 = [obja countByEnumeratingWithState:&v70 objects:v88 count:16];
    if (v23)
    {
      v24 = 0;
      v25 = *v71;
      v26 = *MEMORY[0x1E6978B90];
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(obja);
          }

          v28 = *(*(&v70 + 1) + 8 * j);
          [v28 setShouldSkipPreparation:0];
          dispatch_group_enter(v22);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_2;
          v64[3] = &unk_1E7B745D0;
          v29 = v48;
          v69 = buf;
          v65 = v29;
          v66 = v50;
          v67 = v49;
          v68 = v22;
          [v28 setCompletionHandler:v64];
          if (v24 <= v26)
          {
            [v28 setShouldSendAnalyticsInterval:1];
            ++v24;
          }
        }

        v23 = [obja countByEnumeratingWithState:&v70 objects:v88 count:16];
      }

      while (v23);
    }

    if (v38)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v30 = obja;
      v31 = [v30 countByEnumeratingWithState:&v60 objects:v87 count:16];
      if (v31)
      {
        v32 = *v61;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v61 != v32)
            {
              objc_enumerationMutation(v30);
            }

            [*(*(&v60 + 1) + 8 * k) runWithActivityType:v41];
          }

          v31 = [v30 countByEnumeratingWithState:&v60 objects:v87 count:16];
        }

        while (v31);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_4;
    block[3] = &unk_1E7B745F8;
    v57 = buf;
    v58 = v46;
    v59 = v44;
    v52 = v22;
    v53 = v50;
    v54 = v49;
    v55 = v41;
    v56 = v40;
    v34 = v49;
    v35 = v22;
    dispatch_async(queue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v93[0] = v9;
    obja = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:1];
    (*(v40 + 2))(v40, 0, 0, obja);
  }
}

void __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v2 = a2;
  if (a2 < 0.0 || a2 > 1.0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PUActivityItemSourceController.m" lineNumber:698 description:@"expect progress range"];
  }

  v5 = atomic_load((a1 + 80));
  v6 = atomic_load((*(a1 + 32) + 120));
  if (v5 == v6)
  {
    v7 = [*(a1 + 32) errors];
    v8 = [v7 count];

    if (!v8)
    {
      if (v2 >= 1.0)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
        v2 = 0.0;
      }

      *(*(*(a1 + 56) + 8) + 24) = (v2 + *(*(*(a1 + 48) + 8) + 24)) / *(a1 + 72);
      v10 = *(a1 + 40);
      if (v10)
      {
        v9.n128_u64[0] = *(*(*(a1 + 56) + 8) + 24);
        v11 = *(v10 + 16);

        v11(v9);
      }
    }
  }
}

void __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_3;
  v14[3] = &unk_1E7B7C9E0;
  v8 = *(a1 + 64);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v7;
  v16 = v9;
  v20 = v8;
  v17 = v6;
  v18 = v11;
  v19 = *(a1 + 56);
  v12 = v6;
  v13 = v7;
  dispatch_async(v10, v14);
}

void __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_4(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = PLShareSheetGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 80);
    v4 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 134218240;
    v40 = v4;
    v41 = 2048;
    *v42 = v3;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "PUActivityItemSourceController finished waiting after %lu item source completions (started with %lu)", buf, 0x16u);
  }

  v5 = atomic_load((a1 + 88));
  v6 = atomic_load((*(a1 + 40) + 120));
  v7 = [*(a1 + 40) errors];
  v8 = [v7 copy];

  v9 = v5 == v6 && [v8 count] == 0;
  v10 = PLShareSheetGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *buf = 138412802;
    v40 = v11;
    v41 = 1024;
    *v42 = v5 != v6;
    *&v42[4] = 2112;
    *&v42[6] = v8;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "end running PUActivityItemSourceController=%@ didCancel=%i errors=%@", buf, 0x1Cu);
  }

  if (v9)
  {
    v12 = [MEMORY[0x1E69C3A18] sharedInstance];
    v13 = [v12 simulateError];

    v14 = [MEMORY[0x1E69C3A18] sharedInstance];
    v15 = [v14 simulateMismatchedExportCounts];

    if (v13)
    {
      v16 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharingSettingsErrorDomain" code:0 debugDescription:{@"Simulated error, because PXSharingSettings.simulateError is YES"}];
      v46[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];

      v8 = v17;
    }

    else if (v15)
    {
      [*(a1 + 48) removeLastObject];
    }

    v18 = *(a1 + 80);
    if (v18 == [*(a1 + 48) count])
    {
      v19 = PLShareSheetGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(a1 + 48) count];
        v21 = *(a1 + 80);
        v22 = *(a1 + 56);
        *buf = 134218498;
        v40 = v20;
        v41 = 2048;
        *v42 = v21;
        *&v42[8] = 2112;
        *&v42[10] = v22;
        v23 = "PUActivityItemSourceController succeeded (no errors or cancellation) and prepared %ld/%ld items for activity %@.";
        v24 = v19;
        v25 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
        _os_log_impl(&dword_1B36F3000, v24, v25, v23, buf, 0x20u);
      }
    }

    else
    {
      v26 = [MEMORY[0x1E69C3A18] sharedInstance];
      v27 = [v26 allowFallbacksWhilePreparing];

      v19 = PLShareSheetGetLog();
      v28 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if ((v27 & 1) == 0)
      {
        if (v28)
        {
          v32 = *(a1 + 80);
          v33 = [*(a1 + 48) count];
          *buf = 134218240;
          v40 = v32;
          v41 = 2048;
          *v42 = v33;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "PUActivityItemSourceController succeeded (no errors or cancellation), but from preparing %ld item sources, it ended with %ld items.", buf, 0x16u);
        }

        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The number of prepared items (%ld) does not match the number of items initially being prepared (%ld).", objc_msgSend(*(a1 + 48), "count"), *(a1 + 80)];
        v34 = MEMORY[0x1E696ABC0];
        v44 = *MEMORY[0x1E696A278];
        v45 = v19;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v36 = [v34 errorWithDomain:@"com.apple.PUActivityItemSourceController" code:-1 userInfo:v35];

        v43 = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];

        v8 = v37;
        goto LABEL_23;
      }

      if (v28)
      {
        v29 = *(a1 + 80);
        v30 = [*(a1 + 48) count];
        v31 = [*(a1 + 48) count];
        *buf = 134218496;
        v40 = v29;
        v41 = 2048;
        *v42 = v30;
        *&v42[8] = 2048;
        *&v42[10] = v31;
        v23 = "PUActivityItemSourceController succeeded (no errors or cancellation), but from preparing %ld item sources, it ended with %ld items. Sharing just the %ld items.";
        v24 = v19;
        v25 = OS_LOG_TYPE_ERROR;
        goto LABEL_19;
      }
    }

LABEL_23:
  }

  v38 = *(a1 + 64);
  if (v38)
  {
    (*(v38 + 16))(v38, *(a1 + 48), v5 != v6, v8);
  }

  px_dispatch_on_main_queue();
}

void __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_266(uint64_t a1)
{
  [*(a1 + 32) _cleanupAfterPerform];
  [*(a1 + 32) updateState];
  v2 = [MEMORY[0x1E69C3928] sharedController];
  [v2 removePowerAssertionForIdentifier:objc_msgSend(*(a1 + 32) withReason:"powerAssertionIdentifier") completion:{8, 0}];
}

void __83__PUActivityItemSourceController_runExplicitly_withActivityType_completionHandler___block_invoke_3(uint64_t a1)
{
  ++*(*(*(a1 + 72) + 8) + 24);
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) errors];
    [v2 addObject:*(a1 + 32)];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 56) addObject:?];
  }

  v3 = *(a1 + 64);

  dispatch_group_leave(v3);
}

- (void)cleanUpExportedFiles
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PLShareSheetGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "PUActivityItemSourceController cleaning up exported files", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(PUActivityItemSourceController *)self assetItemSources];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

        [*(*(&v9 + 1) + 8 * v8++) cleanUpExportedFiles];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_cleanupAfterPerform
{
  [(PUActivityItemSourceController *)self setProgressHandler:0];
  [(PUActivityItemSourceController *)self setActiveItemSources:0];
  [(PUActivityItemSourceController *)self setErrors:0];

  [(PUActivityItemSourceController *)self setActiveActivityType:0];
}

- (BOOL)_prepareForPerformWithActivityType:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PUActivityItemSourceController *)self activeItemSources];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(PUActivityItemSourceController *)self activeItemSources];
    v10 = [(PUActivityItemSourceController *)self activeActivityType];
    v11 = [v8 stringWithFormat:@"unexpected previous task with activeItemSources=%@, activeActivityType=%@, new activityType %@", v9, v10, v6];

    v12 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A278];
    v24[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.PUActivityItemSourceController" code:-1 userInfo:v13];

    v15 = PLShareSheetGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = self;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "failed running PUActivityItemSourceController=%@ with error=%@", buf, 0x16u);
    }

    v16 = PXAssertGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_fault_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
    }

    if (a4)
    {
      v17 = v14;
      *a4 = v14;
    }
  }

  else
  {
    [(PUActivityItemSourceController *)self _setPublishedURL:0];
    [(PUActivityItemSourceController *)self updateState];
  }

  return v7 == 0;
}

- (void)_prepareMomentShareLinkFromIndividualItemSourcesForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = PLShareSheetGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Preparing moment-share link from individual item sources", buf, 2u);
  }

  v7 = [(PUActivityItemSourceController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PUActivityItemSourceController *)self delegate];
    [v9 activityItemSourceController:self willBeginPreparationWithActivityType:v5 preparationType:1];
  }

  self->_momentSharePublishAttempted = 1;
  v10 = [(PUActivityItemSourceController *)self assetItemSources];
  v11 = [v10 lastObject];

  [v11 setShouldAnchorPreparation:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PUActivityItemSourceController__prepareMomentShareLinkFromIndividualItemSourcesForActivity___block_invoke;
  aBlock[3] = &unk_1E7B809F0;
  v21 = v11;
  v22 = self;
  v23 = v4;
  v12 = v4;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__PUActivityItemSourceController__prepareMomentShareLinkFromIndividualItemSourcesForActivity___block_invoke_238;
  v17[3] = &unk_1E7B74580;
  v17[4] = self;
  v18 = v5;
  v19 = v14;
  v15 = v14;
  v16 = v5;
  [(PUActivityItemSourceController *)self publishLinkForActivityType:v16 completionHandler:v17];
}

void __94__PUActivityItemSourceController__prepareMomentShareLinkFromIndividualItemSourcesForActivity___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) signalAnchorCompletion];
  v2 = PLShareSheetGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    v6 = v3;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Finished preparing moment-share link from individual assets for activity: %{public}@", &v7, 0x20u);
  }
}

void __94__PUActivityItemSourceController__prepareMomentShareLinkFromIndividualItemSourcesForActivity___block_invoke_238(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (v7)
    {
      v19[0] = v7;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      if (v8)
      {
LABEL_4:
        v18 = v8;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
LABEL_8:
        v13 = [*(a1 + 32) delegate];
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __94__PUActivityItemSourceController__prepareMomentShareLinkFromIndividualItemSourcesForActivity___block_invoke_2;
        v16[3] = &unk_1E7B80C88;
        v17 = *(a1 + 48);
        [v13 activityItemSourceController:v14 didFinishPreparationForActivityType:v15 preparationType:1 withItems:v11 didCancel:a3 errors:v12 completion:v16];

        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v12 = 0;
    goto LABEL_8;
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

- (void)_prepareIndividualItemSourcesForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = PLShareSheetGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Performing per-item preparations", buf, 2u);
  }

  v7 = [(PUActivityItemSourceController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PUActivityItemSourceController *)self delegate];
    [v9 activityItemSourceController:self willBeginPreparationWithActivityType:v5 preparationType:0];
  }

  self->_momentSharePublishAttempted = 0;
  v10 = [(PUActivityItemSourceController *)self assetItemSources];
  v11 = [v10 lastObject];

  if (v11)
  {
    v12 = dispatch_semaphore_create(0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__PUActivityItemSourceController__prepareIndividualItemSourcesForActivity___block_invoke;
    v26[3] = &unk_1E7B80DD0;
    v13 = v12;
    v27 = v13;
    [v11 setPostCompletionHandler:v26];
  }

  else
  {
    v13 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PUActivityItemSourceController__prepareIndividualItemSourcesForActivity___block_invoke_2;
  aBlock[3] = &unk_1E7B809F0;
  v23 = v13;
  v24 = self;
  v25 = v4;
  v14 = v4;
  v15 = v13;
  v16 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PUActivityItemSourceController__prepareIndividualItemSourcesForActivity___block_invoke_233;
  v19[3] = &unk_1E7B74558;
  v19[4] = self;
  v20 = v5;
  v21 = v16;
  v17 = v16;
  v18 = v5;
  [(PUActivityItemSourceController *)self runExplicitly:0 withActivityType:v18 completionHandler:v19];
}

void __75__PUActivityItemSourceController__prepareIndividualItemSourcesForActivity___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  v3 = PLShareSheetGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = a1[5];
    v6 = a1[6];
    v8 = 138412802;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v7 = v4;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Finished preparing assets for activity: %{public}@", &v8, 0x20u);
  }
}

void __75__PUActivityItemSourceController__prepareIndividualItemSourcesForActivity___block_invoke_233(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [*(a1 + 32) delegate];
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PUActivityItemSourceController__prepareIndividualItemSourcesForActivity___block_invoke_2_236;
    v14[3] = &unk_1E7B80C88;
    v15 = *(a1 + 48);
    [v11 activityItemSourceController:v12 didFinishPreparationForActivityType:v13 preparationType:0 withItems:v7 didCancel:a3 errors:v8 completion:v14];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)configureItemSourcesForActivityIfNeeded:(id)a3 forcePreparationAsMomentShareLink:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(PUActivityItemSourceController *)self preferredPreparationType])
  {
    v7 = [(PUActivityItemSourceController *)self assetItemSources];
    v8 = [v7 count];

    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138413058;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2048;
      *&v13[14] = self;
      *&v13[22] = 2048;
      v14 = v8;
      LOWORD(v15) = 2114;
      *(&v15 + 2) = v6;
      v10 = *&v13[4];
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Begin preparing %ld assets for activity: %{public}@", v13, 0x2Au);
    }

    v11 = [v6 activityType];
    v12 = [PUActivityItemSourceConfiguration isIndividualItemPreparationSupportedByActivityType:v11];

    if (!v12 || v4)
    {
      [(PUActivityItemSourceController *)self _prepareMomentShareLinkFromIndividualItemSourcesForActivity:v6, *v13, *&v13[16], v14, v15];
    }

    else
    {
      [(PUActivityItemSourceController *)self _prepareIndividualItemSourcesForActivity:v6];
    }
  }
}

- (BOOL)isPreparingIndividualItems
{
  v3 = [(PUActivityItemSourceController *)self preferredPreparationType];
  v4 = [(PUActivityItemSourceController *)self assets];
  v5 = [v4 count];

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  return !v6;
}

- (PXAssetMediaTypeCount)requestAssetsMediaTypeCount
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  assetItems = self->_assetItems;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PUActivityItemSourceController_requestAssetsMediaTypeCount__block_invoke;
  v14[3] = &unk_1E7B74530;
  v14[4] = &v27;
  v14[5] = &v23;
  v14[6] = &v19;
  v14[7] = &v15;
  v14[8] = &v47;
  v14[9] = &v43;
  v14[10] = &v39;
  v14[11] = &v35;
  v14[12] = &v31;
  [(NSMutableOrderedSet *)assetItems enumerateObjectsUsingBlock:v14];
  v5 = v44[3];
  v6 = v40[3];
  v7 = v36[3];
  v8 = v32[3];
  v9 = v28[3];
  v10 = v24[3];
  v11 = v20[3];
  v12 = v16[3];
  retstr->var0 = v48[3];
  retstr->var1 = v5;
  retstr->var2 = v6;
  retstr->var3 = v7;
  retstr->var4 = v8;
  retstr->var5 = v9;
  retstr->var6 = v10;
  retstr->var7 = v11;
  retstr->var8 = v12;
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  return result;
}

void __61__PUActivityItemSourceController_requestAssetsMediaTypeCount__block_invoke(void *a1, void *a2)
{
  v13 = a2;
  v3 = [v13 asset];
  v4 = [v3 playbackStyle];
  v5 = [v3 location];

  if (v5)
  {
    ++*(*(a1[4] + 8) + 24);
    if ([v13 excludeLocation])
    {
      ++*(*(a1[5] + 8) + 24);
    }
  }

  v6 = [v3 descriptionProperties];
  v7 = [v6 assetDescription];
  v8 = [v7 length];

  if (v8)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  v9 = [v3 descriptionProperties];
  v10 = [v9 accessibilityDescription];
  v11 = [v10 length];

  if (v11)
  {
    ++*(*(a1[7] + 8) + 24);
  }

  if ((v4 - 1) <= 2)
  {
    ++*(*(a1[8] + 8) + 24);
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    ++*(*(a1[9] + 8) + 24);
  }

  if (v4 == 5)
  {
    v12 = 10;
    goto LABEL_17;
  }

  if (v4 == 3)
  {
    ++*(*(a1[11] + 8) + 24);
    if ([v13 excludeLiveness])
    {
      v12 = 12;
LABEL_17:
      ++*(*(a1[v12] + 8) + 24);
    }
  }
}

- (void)updateState
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PUActivityItemSourceController *)self cmmActivityItemSource];
  v4 = [v3 state];

  if ((v4 - 1) >= 2)
  {
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      v5 = [(PUActivityItemSourceController *)self activeItemSources];
      v4 = [v5 count];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v6);
            }

            if ([*(*(&v14 + 1) + 8 * i) state] == 1)
            {
              ++v9;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
        if (v9)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 2;
      }

      if (v4)
      {
        if (v4 == 1)
        {
          v4 = v12;
        }

        else if ([(PUActivityItemSourceController *)self state]== 1)
        {
          v4 = 1;
        }

        else
        {
          v4 = v12;
        }
      }
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__PUActivityItemSourceController_updateState__block_invoke;
  v13[3] = &__block_descriptor_40_e49_v16__0___PUMutableActivityItemSourceController__8l;
  v13[4] = v4;
  [(PUActivityItemSourceController *)self performChanges:v13];
}

- (void)setState:(unint64_t)a3
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PUActivityItemSourceController_setState___block_invoke;
  v4[3] = &unk_1E7B7FF70;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __43__PUActivityItemSourceController_setState___block_invoke(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 192) != *(result + 40))
  {
    v1 = result;
    v2 = PLShareSheetGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(v1 + 32) + 192);
      if (v3 > 2)
      {
        v4 = @"unknown";
      }

      else
      {
        v4 = off_1E7B74640[v3];
      }

      v5 = *(v1 + 40);
      if (v5 > 2)
      {
        v6 = @"unknown";
      }

      else
      {
        v6 = off_1E7B74640[v5];
      }

      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "PUActivityItemSourceController changing state from %{public}@ to %{public}@", &v7, 0x16u);
    }

    *(*(v1 + 32) + 192) = *(v1 + 40);
    return [*(v1 + 32) signalChange:1];
  }

  return result;
}

- (void)setActiveItemSources:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  activeItemSources = v5->_activeItemSources;
  if (activeItemSources != v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = activeItemSources;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v21 + 1) + 8 * v10++) unregisterChangeObserver:v5 context:&PUActivityItemSourceControllerItemSourceObserverContext];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v11 = [(NSArray *)v4 copy];
    v12 = v5->_activeItemSources;
    v5->_activeItemSources = v11;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = v5->_activeItemSources;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v14)
    {
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v17 + 1) + 8 * v16++) registerChangeObserver:v5 context:{&PUActivityItemSourceControllerItemSourceObserverContext, v17}];
        }

        while (v14 != v16);
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }

  objc_sync_exit(v5);
}

- (NSArray)activeItemSources
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeItemSources;
  objc_sync_exit(v2);

  return v3;
}

- (void)removeAssetItem:(id)a3
{
  v5 = a3;
  if (![(NSMutableOrderedSet *)self->_assetItems containsObject:v5])
  {
    goto LABEL_13;
  }

  [(NSMutableOrderedSet *)self->_assetItems removeObject:v5];
  v6 = [v5 asset];
  if ([v6 sourceType] == 2)
  {
    p_cloudSharedAssetCount = &self->_cloudSharedAssetCount;
    cloudSharedAssetCount = self->_cloudSharedAssetCount;
LABEL_5:
    *p_cloudSharedAssetCount = cloudSharedAssetCount - 1;
    goto LABEL_6;
  }

  cloudSharedAssetCount = [v6 sourceType];
  p_cloudSharedAssetCount = &self->_momentShareAssetCount;
  if (cloudSharedAssetCount == self->_momentShareAssetCount)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ([v6 px_isUnsavedSyndicatedAsset])
  {
    --self->_unsavedSyndicatedAssetCount;
  }

  v9 = [(PUActivityItemSourceController *)self appPhotoLibrary];
  v10 = [v9 photoLibraryURL];

  v11 = [v6 photoLibrary];
  v12 = [v11 photoLibraryURL];

  if (([v12 isEqual:v10] & 1) == 0)
  {
    --self->_externalLibraryAssetCount;
  }

  assetItemSources = self->_assetItemSources;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __50__PUActivityItemSourceController_removeAssetItem___block_invoke;
  v19 = &unk_1E7B744E8;
  v20 = v5;
  v14 = [(NSMutableOrderedSet *)assetItemSources indexOfObjectPassingTest:&v16];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"idx != NSNotFound", v16, v17, v18, v19}];
  }

  [(NSMutableOrderedSet *)self->_assetItemSources removeObjectAtIndex:v14];

LABEL_13:
}

uint64_t __50__PUActivityItemSourceController_removeAssetItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 asset];
  v4 = [*(a1 + 32) asset];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)addAssetItem:(id)a3
{
  v5 = a3;
  v19 = v5;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUActivityItemSourceController.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"assetItem"}];

    v5 = 0;
  }

  if (([(NSMutableOrderedSet *)self->_assetItems containsObject:v5]& 1) == 0)
  {
    assetItems = self->_assetItems;
    if (!assetItems)
    {
      v7 = [MEMORY[0x1E695DFA0] orderedSet];
      v8 = self->_assetItems;
      self->_assetItems = v7;

      assetItems = self->_assetItems;
    }

    [(NSMutableOrderedSet *)assetItems addObject:v19];
    v9 = [v19 asset];
    if ([v9 sourceType] == 2)
    {
      v10 = &OBJC_IVAR___PUActivityItemSourceController__cloudSharedAssetCount;
    }

    else
    {
      if ([v9 sourceType] != 8)
      {
LABEL_11:
        if ([v9 px_isUnsavedSyndicatedAsset])
        {
          ++self->_unsavedSyndicatedAssetCount;
        }

        v11 = [(PUActivityItemSourceController *)self appPhotoLibrary];
        v12 = [v11 photoLibraryURL];

        v13 = [v9 photoLibrary];
        v14 = [v13 photoLibraryURL];

        if (([v14 isEqual:v12] & 1) == 0)
        {
          ++self->_externalLibraryAssetCount;
        }

        v15 = [(PUActivityItemSourceController *)self synthesizedSharingPreferencesForAssetItem:v19];
        v17 = [[PUActivityItemSource alloc] initWithAsset:v9 sharingPreferences:v15, v16];
        [(NSMutableOrderedSet *)self->_assetItemSources addObject:v17];

        goto LABEL_16;
      }

      v10 = &OBJC_IVAR___PUActivityItemSourceController__momentShareAssetCount;
    }

    ++*(&self->super.super.isa + *v10);
    goto LABEL_11;
  }

LABEL_16:
}

- ($9D9B13A340AA60ED2DD68408BD7D962F)synthesizedSharingPreferencesForAssetItem:(id)a3
{
  v4 = a3;
  if ([v4 excludeLiveness])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(PUActivityItemSourceController *)self shouldExcludeLivenessInAllItemSources];
  }

  if ([v4 excludeLocation])
  {
    v6 = 256;
  }

  else if ([(PUActivityItemSourceController *)self shouldExcludeLocationInAllItemSources])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  if ([v4 excludeCaption])
  {
    v7 = 0x10000;
  }

  else if ([(PUActivityItemSourceController *)self shouldExcludeCaptionInAllItemSources])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  if ([v4 excludeAccessibilityDescription])
  {
    v8 = 0x1000000;
  }

  else if ([(PUActivityItemSourceController *)self shouldExcludeAccessibilityDescriptionInAllItemSources])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PUActivityItemSourceController *)self shouldShareAsAssetBundles];
  v10 = [(PUActivityItemSourceController *)self shouldShareAsUnmodifiedOriginals];
  v11 = [(PUActivityItemSourceController *)self preferredExportFormat];
  if (v10)
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (!v9)
  {
    v13 = 0;
  }

  v14 = v6 | v5 | v7 | v8 | v13;

  v15 = v14 | v12;
  v16 = v11;
  result.var6 = v16;
  result.var0 = v15;
  result.var1 = BYTE1(v15);
  result.var2 = BYTE2(v15);
  result.var3 = BYTE3(v15);
  result.var4 = BYTE4(v15);
  result.var5 = BYTE5(v15);
  return result;
}

- (void)updateSharingPreferencesInItemSources
{
  assetItems = self->_assetItems;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__PUActivityItemSourceController_updateSharingPreferencesInItemSources__block_invoke;
  v3[3] = &unk_1E7B744C0;
  v3[4] = self;
  [(NSMutableOrderedSet *)assetItems enumerateObjectsUsingBlock:v3];
}

void __71__PUActivityItemSourceController_updateSharingPreferencesInItemSources__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 104);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [*(a1 + 32) synthesizedSharingPreferencesForAssetItem:v6];
  v10 = v9;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PUActivityItemSourceController_updateSharingPreferencesInItemSources__block_invoke_2;
  v11[3] = &__block_descriptor_48_e39_v16__0___PUMutableActivityItemSource__8l;
  v11[4] = v8;
  v11[5] = v10;
  [v7 performChanges:v11];
}

- (void)setPreferredExportFormat:(int64_t)a3
{
  if (self->_preferredExportFormat != a3)
  {
    self->_preferredExportFormat = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setShouldShareAsUnmodifiedOriginals:(BOOL)a3
{
  if (self->_shouldShareAsUnmodifiedOriginals != a3)
  {
    self->_shouldShareAsUnmodifiedOriginals = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setShouldShareAsAssetBundles:(BOOL)a3
{
  if (self->_shouldShareAsAssetBundles != a3)
  {
    self->_shouldShareAsAssetBundles = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setShouldExcludeAccessibilityDescriptionInAllItemSources:(BOOL)a3
{
  if (self->_shouldExcludeAccessibilityDescriptionInAllItemSources != a3)
  {
    self->_shouldExcludeAccessibilityDescriptionInAllItemSources = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setShouldExcludeCaptionInAllItemSources:(BOOL)a3
{
  if (self->_shouldExcludeCaptionInAllItemSources != a3)
  {
    self->_shouldExcludeCaptionInAllItemSources = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setShouldExcludeLocationInAllItemSources:(BOOL)a3
{
  if (self->_shouldExcludeLocationInAllItemSources != a3)
  {
    self->_shouldExcludeLocationInAllItemSources = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setShouldExcludeLivenessInAllItemSources:(BOOL)a3
{
  if (self->_shouldExcludeLivenessInAllItemSources != a3)
  {
    self->_shouldExcludeLivenessInAllItemSources = a3;
    [(PUActivityItemSourceController *)self updateSharingPreferencesInItemSources];
  }
}

- (void)setAssetItems:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_assetItems;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(NSMutableOrderedSet *)v5 count];
    if (v8 == [(NSMutableOrderedSet *)v7 count])
    {
      v9 = *(MEMORY[0x1E695E528] + 16);
      *&keyCallBacks.version = *MEMORY[0x1E695E528];
      *&keyCallBacks.release = v9;
      *&keyCallBacks.equal = *(MEMORY[0x1E695E528] + 32);
      keyCallBacks.retain = 0;
      keyCallBacks.release = 0;
      v10 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, 0);
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v11 = v5;
      v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v64 objects:buf count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v65;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v65 != v14)
            {
              objc_enumerationMutation(v11);
            }

            CFDictionarySetValue(v10, [*(*(&v64 + 1) + 8 * i) localIdentifier], 0);
          }

          v13 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v64 objects:buf count:16];
        }

        while (v13);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v16 = v7;
      v17 = v7;
      v18 = [(NSMutableOrderedSet *)v17 countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v61;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v61 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if (!CFDictionaryContainsKey(v10, [*(*(&v60 + 1) + 8 * j) localIdentifier]))
            {

              CFRelease(v10);
              v7 = v16;
              goto LABEL_22;
            }
          }

          v19 = [(NSMutableOrderedSet *)v17 countByEnumeratingWithState:&v60 objects:v70 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      CFRelease(v10);
      v7 = v16;
    }

    else
    {

LABEL_22:
      v22 = [(NSMutableOrderedSet *)v7 mutableCopy];
      assetItems = self->_assetItems;
      self->_assetItems = v22;

      v24 = self->_assetItems;
      if (v24)
      {
        v25 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{-[NSMutableOrderedSet count](self->_assetItems, "count")}];
      }

      else
      {
        v25 = 0;
      }

      objc_storeStrong(&self->_assetItemSources, v25);
      if (v24)
      {
      }

      self->_cloudSharedAssetCount = 0;
      self->_momentShareAssetCount = 0;
      self->_unsavedSyndicatedAssetCount = 0;
      v48 = v7;
      self->_externalLibraryAssetCount = 0;
      v26 = [(PUActivityItemSourceController *)self appPhotoLibrary];
      v50 = [v26 photoLibraryURL];

      v27 = PLShareSheetGetLog();
      v28 = os_signpost_id_generate(v27);
      v29 = v27;
      v30 = v29;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "SharingVariantsDuration", "", buf, 2u);
      }

      v47 = v30;

      v31 = dispatch_group_create();
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = self->_assetItems;
      v32 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v56 objects:v69 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v57;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v57 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v56 + 1) + 8 * k);
            v37 = [v36 asset];
            v38 = [v37 sourceType];
            p_cloudSharedAssetCount = &self->_cloudSharedAssetCount;
            if (v38 == 2 || (v40 = [v37 sourceType], p_cloudSharedAssetCount = &self->_momentShareAssetCount, v40 == 8))
            {
              ++*p_cloudSharedAssetCount;
            }

            if ([v37 px_isUnsavedSyndicatedAsset])
            {
              ++self->_unsavedSyndicatedAssetCount;
            }

            v41 = [v37 photoLibrary];
            v42 = [v41 photoLibraryURL];

            if (([v42 isEqual:v50] & 1) == 0)
            {
              ++self->_externalLibraryAssetCount;
            }

            v43 = [(PUActivityItemSourceController *)self synthesizedSharingPreferencesForAssetItem:v36];
            v45 = [[PUActivityItemSource alloc] initWithAsset:v37 sharingPreferences:v43, v44];
            dispatch_group_enter(v31);
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __48__PUActivityItemSourceController_setAssetItems___block_invoke;
            v54[3] = &unk_1E7B80DD0;
            v55 = v31;
            [(PUActivityItemSource *)v45 setPpt_didFetchSharingVariantsHandler:v54];
            [(NSMutableOrderedSet *)self->_assetItemSources addObject:v45];
          }

          v33 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v56 objects:v69 count:16];
        }

        while (v33);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__PUActivityItemSourceController_setAssetItems___block_invoke_2;
      block[3] = &unk_1E7B7FF70;
      v52 = v47;
      v53 = v28;
      v46 = v47;
      dispatch_group_notify(v31, MEMORY[0x1E69E96A0], block);

      v7 = v48;
    }
  }
}

void __48__PUActivityItemSourceController_setAssetItems___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SharingVariantsDuration", "", v5, 2u);
  }
}

- (NSArray)activityItems
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(PUActivityItemSourceController *)self preferredPreparationType]== 1)
  {
    v3 = [(PUActivityItemSourceController *)self cmmActivityItemSource];
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v3 = [(PUActivityItemSourceController *)self assetItemSources];
    v5 = [v3 array];
    v4 = [v5 copy];
  }

  return v4;
}

- (PUActivityItemSourceController)init
{
  v10.receiver = self;
  v10.super_class = PUActivityItemSourceController;
  v2 = [(PUActivityItemSourceController *)&v10 init];
  if (v2)
  {
    v3 = [[PUCMMActivityItemSource alloc] initWithActivityItemSourceController:v2];
    cmmActivityItemSource = v2->_cmmActivityItemSource;
    v2->_cmmActivityItemSource = v3;

    [(PUCMMActivityItemSource *)v2->_cmmActivityItemSource setDelegate:v2];
    [(PUCMMActivityItemSource *)v2->_cmmActivityItemSource registerChangeObserver:v2 context:PUActivityItemSourceControllerCMMSourceObserverContext];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.PUActivityItemSourceController.isolationQueue", v5);
    externalIsolation = v2->_externalIsolation;
    v2->_externalIsolation = v6;

    v2->_cloudSharedAssetCount = 0;
    v2->_momentShareAssetCount = 0;
    v2->_unsavedSyndicatedAssetCount = 0;
    v2->_externalLibraryAssetCount = 0;
    v8 = [MEMORY[0x1E69C3928] sharedController];
    v2->_powerAssertionIdentifier = [v8 generateAssertionIdentifier];
  }

  return v2;
}

@end