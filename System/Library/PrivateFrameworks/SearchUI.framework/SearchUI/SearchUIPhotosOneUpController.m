@interface SearchUIPhotosOneUpController
+ (id)bundleIdentifierForAsset:(id)a3;
+ (id)sharedController;
- (BOOL)setupOneUpViewWithAssets:(id)a3;
- (UIView)hiddenView;
- (UIViewController)peekedViewController;
- (id)command;
- (id)imageViewInView:(id)a3;
- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4;
- (id)oneUpPresentationActionManager:(id)a3;
- (id)oneUpPresentationMatchedAudioIdentifiers:(id)a3;
- (id)oneUpPresentationMatchedHumanActionIdentifiers:(id)a3;
- (id)oneUpPresentationMatchedPersonLocalIdentifiers:(id)a3;
- (id)oneUpPresentationMatchedQueryStrings:(id)a3;
- (id)oneUpPresentationMatchedSceneIdentifiers:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (id)previewViewControllerForRowModel:(id)a3 environment:(id)a4;
- (id)rowModelForAsset:(id)a3;
- (id)rowModelForAssetReference:(id)a3;
- (id)updateWithRowModel:(id)a3 environment:(id)a4;
- (id)viewForAssetReference:(id)a3;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4;
- (void)presentOneUpViewForRowModel:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIPhotosOneUpController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SearchUIPhotosOneUpController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

uint64_t __49__SearchUIPhotosOneUpController_sharedController__block_invoke()
{
  sharedController_sharedController = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)previewViewControllerForRowModel:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = [(SearchUIPhotosOneUpController *)self updateWithRowModel:a3 environment:v6];
  v8 = +[SearchUIPhotoAssetCache sharedCache];
  v9 = [v8 assetsForImages:v7];

  if ([(SearchUIPhotosOneUpController *)self setupOneUpViewWithAssets:v9])
  {
    v10 = [v6 presentingViewController];
    v11 = [v10 px_oneUpPresentation];
    v12 = [v11 previewViewControllerAllowingActions:1];
  }

  else
  {
    v12 = 0;
  }

  [(SearchUIPhotosOneUpController *)self setPeekedViewController:v12];

  return v12;
}

- (void)presentOneUpViewForRowModel:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 6)
  {
    v11 = [v9 presentingViewController];
    v12 = [v11 px_oneUpPresentation];
    v13 = [(SearchUIPhotosOneUpController *)self peekedViewController];
    [v12 commitPreviewViewController:v13];
  }

  else
  {
    v11 = [(SearchUIPhotosOneUpController *)self updateWithRowModel:v8 environment:v9];
    v14 = +[SearchUIPhotoAssetCache sharedCache];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__SearchUIPhotosOneUpController_presentOneUpViewForRowModel_triggerEvent_environment___block_invoke;
    v15[3] = &unk_1E85B2770;
    v16 = v8;
    v17 = self;
    v18 = v10;
    [v14 fetchAssetsForImages:v11 completionHandler:v15];
  }
}

void __86__SearchUIPhotosOneUpController_presentOneUpViewForRowModel_triggerEvent_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_230];
  v5 = [v3 objectsAtIndexes:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__SearchUIPhotosOneUpController_presentOneUpViewForRowModel_triggerEvent_environment___block_invoke_3;
  v10[3] = &unk_1E85B2568;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  [SearchUIUtilities dispatchMainIfNecessary:v10];
}

uint64_t __86__SearchUIPhotosOneUpController_presentOneUpViewForRowModel_triggerEvent_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __86__SearchUIPhotosOneUpController_presentOneUpViewForRowModel_triggerEvent_environment___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) rowModel];
  if (v2 == v3)
  {
    v7 = v3;
    v4 = [*(a1 + 40) setupOneUpViewWithAssets:*(a1 + 48)];

    if (!v4)
    {
      return;
    }

    v8 = [*(a1 + 56) feedbackDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 resignTextField];
    }

    v5 = [*(a1 + 56) presentingViewController];
    v6 = [v5 px_oneUpPresentation];
    [v6 startWithConfigurationHandler:&__block_literal_global_236];

    v3 = v8;
  }
}

- (id)updateWithRowModel:(id)a3 environment:(id)a4
{
  v6 = a4;
  [(SearchUIPhotosOneUpController *)self setRowModel:a3];
  [(SearchUIPhotosOneUpController *)self setCommandEnvironment:v6];
  v27 = objc_opt_new();
  v26 = objc_opt_new();
  v7 = [v6 lastEngagedSection];
  v8 = [v7 section];
  v9 = [v8 collectionSection];
  v10 = [v9 collectionStyle];

  objc_opt_class();
  v24 = self;
  v25 = v6;
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 numberOfRows];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v7 rowModels];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    v15 = vcvtpd_u64_f64(v13 / v11);
    do
    {
      if (v14 / v15 + v14 % v15 * v11 < v13)
      {
        v16 = [v7 rowModels];
        v17 = [v16 objectAtIndexedSubscript:v14 / v15 + v14 % v15 * v11];

        v18 = [v17 cardSection];
        v19 = [v18 command];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 photosLibraryImage];
          v21 = [v20 photoIdentifier];
          if ([v21 length])
          {
            [v26 addObject:v20];
            [v27 setObject:v17 forKeyedSubscript:v21];
          }
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }

  [(SearchUIPhotosOneUpController *)v24 setRowModelsForCoreSpotlightIdentifiers:v27];
  [(SearchUIPhotosOneUpController *)v24 setActiveDataSourceManager:0];
  [(SearchUIPhotosOneUpController *)v24 setNavigatedAssetReference:0];
  v22 = [v26 copy];

  return v22;
}

- (id)command
{
  v2 = [(SearchUIPhotosOneUpController *)self rowModel];
  v3 = [v2 cardSection];
  v4 = [v3 command];

  return v4;
}

- (BOOL)setupOneUpViewWithAssets:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUIPhotosOneUpController *)self command];
  v6 = [v5 photosLibraryImage];
  v7 = [v6 photoIdentifier];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__SearchUIPhotosOneUpController_setupOneUpViewWithAssets___block_invoke;
  v24[3] = &unk_1E85B3C30;
  v8 = v7;
  v25 = v8;
  v9 = [v4 indexOfObjectPassingTest:v24];
  if (v4)
  {
    v10 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10)
  {
    v12 = v9;
    v13 = PXDisplayAssetFetchResultFromArray();
    v14 = objc_alloc(MEMORY[0x1E69C3A78]);
    v26[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v16 = [v14 initWithDisplayAssetFetchResults:v15];

    v23[0] = [v16 identifier];
    v23[1] = 0;
    v23[2] = v12;
    v23[3] = 0x7FFFFFFFFFFFFFFFLL;
    v17 = [v16 assetReferenceAtItemIndexPath:v23];
    v18 = [objc_alloc(MEMORY[0x1E69C3768]) initWithDataSource:v16];
    [(SearchUIPhotosOneUpController *)self setNavigatedAssetReference:v17];
    [(SearchUIPhotosOneUpController *)self setActiveDataSourceManager:v18];
    v19 = [(SearchUIPhotosOneUpController *)self commandEnvironment];
    v20 = [v19 presentingViewController];

    [v20 px_enableOneUpPresentation];
    v21 = [v20 px_oneUpPresentation];
    [v21 setDelegate:self];
  }

  return v11;
}

uint64_t __58__SearchUIPhotosOneUpController_setupOneUpViewWithAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:a2];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)oneUpPresentationMediaProvider:(id)a3
{
  if (oneUpPresentationMediaProvider__onceToken != -1)
  {
    [SearchUIPhotosOneUpController oneUpPresentationMediaProvider:];
  }

  v4 = oneUpPresentationMediaProvider__mediaProvider;

  return v4;
}

void __64__SearchUIPhotosOneUpController_oneUpPresentationMediaProvider___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69C3858]);
  v4 = [MEMORY[0x1E6978718] defaultManager];
  v1 = [SearchUIPhotosUtilities sharedPhotoLibraryIsSyndicated:0];
  v2 = [v0 initWithImageManager:v4 library:v1];
  v3 = oneUpPresentationMediaProvider__mediaProvider;
  oneUpPresentationMediaProvider__mediaProvider = v2;
}

- (id)rowModelForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 asset];
    v7 = [(SearchUIPhotosOneUpController *)self rowModelForAsset:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)rowModelForAsset:(id)a3
{
  v4 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:a3];
  v5 = [(SearchUIPhotosOneUpController *)self rowModelsForCoreSpotlightIdentifiers];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v7 = [(SearchUIPhotosOneUpController *)self rowModelForAssetReference:a4];
  v5 = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  v6 = [v5 rowModelViewDelegate];
  [v6 scrollRowModelToVisible:v7];
}

- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4
{
  v5 = [(SearchUIPhotosOneUpController *)self viewForAssetReference:a4];
  [v5 layoutBelowIfNeeded];
  v6 = objc_alloc(MEMORY[0x1E69C45A0]);
  [v5 bounds];
  v7 = [v6 initWithRect:v5 inCoordinateSpace:?];
  v8 = [(SearchUIPhotosOneUpController *)self imageViewInView:v5];
  v9 = [v8 layer];
  if ([v9 maskedCorners])
  {
    v10 = objc_opt_new();
    [v9 cornerRadius];
    [v10 setCornerRadius:?];
    [v10 setCornerMask:{objc_msgSend(v9, "maskedCorners")}];
    v11 = [v9 cornerCurve];
    [v10 setCornerCurve:v11];

    [v7 setImageViewSpec:v10];
  }

  return v7;
}

- (id)imageViewInView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(SearchUIPhotosOneUpController *)self imageViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (id)oneUpPresentationActionManager:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E69C45C8]);
  v5 = [(SearchUIPhotosOneUpController *)self activeDataSourceManager];
  v6 = [v4 initWithDataSourceManager:v5];

  v7 = [objc_alloc(MEMORY[0x1E69C37C0]) initWithSelectionManager:v6];
  v8 = [(SearchUIPhotosOneUpController *)self command];
  v9 = [v8 _matchedPerson];
  v10 = [v9 photosIdentifier];

  [v7 setPerformerDelegate:self];
  if (v10)
  {
    v11 = [v8 photosLibraryImage];
    v12 = +[SearchUIPhotosUtilities personWithIdentifier:isSyndicated:](SearchUIPhotosUtilities, "personWithIdentifier:isSyndicated:", v10, [v11 isSyndicated]);
    [v7 setPerson:v12];
  }

  return v7;
}

- (id)oneUpPresentationMatchedQueryStrings:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  v4 = [v3 searchString];
  v5 = [v4 lowercaseString];

  v6 = &stru_1F55BC4E8;
  if (v5)
  {
    v6 = v5;
  }

  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)oneUpPresentationMatchedSceneIdentifiers:(id)a3
{
  v3 = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedSceneIdentifiersForCommand:v3 andType:1];

  return v4;
}

- (id)oneUpPresentationMatchedAudioIdentifiers:(id)a3
{
  v3 = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedSceneIdentifiersForCommand:v3 andType:3];

  return v4;
}

- (id)oneUpPresentationMatchedHumanActionIdentifiers:(id)a3
{
  v3 = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedSceneIdentifiersForCommand:v3 andType:2];

  return v4;
}

- (id)oneUpPresentationMatchedPersonLocalIdentifiers:(id)a3
{
  v3 = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedPersonLocalIdentifiersForCommand:v3];

  return v4;
}

- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4
{
  v5 = a4;
  v6 = [(SearchUIPhotosOneUpController *)self hiddenView];
  [v6 setHidden:0];

  v7 = [v5 anyObject];

  v8 = [(SearchUIPhotosOneUpController *)self viewForAssetReference:v7];

  [v8 setHidden:1];
  [(SearchUIPhotosOneUpController *)self setHiddenView:v8];
}

- (id)viewForAssetReference:(id)a3
{
  v4 = [(SearchUIPhotosOneUpController *)self rowModelForAssetReference:a3];
  v5 = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  v6 = [v5 rowModelViewDelegate];
  v7 = [v6 viewForRowModel:v4];

  return v7;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  if (a4 != 30)
  {
    return;
  }

  v6 = a3;
  v16 = [v6 actionType];
  v7 = [v6 selectionSnapshot];

  v8 = [v7 firstObject];

  v9 = [(SearchUIPhotosOneUpController *)self rowModelForAsset:v8];
  v10 = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  if ([v16 isEqualToString:*MEMORY[0x1E69C47F0]])
  {
    v11 = [objc_opt_class() bundleIdentifierForAsset:v8];
    v12 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:v8];
    if (!v11)
    {
LABEL_13:

      goto LABEL_14;
    }

    if ([v11 hasPrefix:@"com.apple"] && objc_msgSend(v11, "containsString:", @"FileProvider"))
    {
      v13 = objc_opt_new();
      [v13 setFileProviderIdentifier:v11];
    }

    else
    {
      v13 = objc_opt_new();
      [v13 setApplicationBundleIdentifier:v11];
    }

    [v13 setCoreSpotlightIdentifier:v12];
    v14 = objc_opt_new();
    [v14 setCommand:v13];
    v15 = [SearchUICommandHandler handlerForButton:v14 rowModel:v9 environment:v10];
    [v15 executeWithTriggerEvent:2];

LABEL_12:
    goto LABEL_13;
  }

  if ([v16 isEqualToString:*MEMORY[0x1E69C47C0]])
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    [v12 setCommand:v11];
    v13 = [SearchUICommandHandler handlerForButton:v12 rowModel:v9 environment:v10];
    [v13 wasPerformedWithTriggerEvent:2];
    goto LABEL_12;
  }

LABEL_14:
}

+ (id)bundleIdentifierForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [v4 wellKnownPhotoLibraryIdentifier];

  if (v5 == 3)
  {
    v6 = [v3 curationProperties];
    v7 = [v6 importedByBundleIdentifier];
  }

  else
  {
    v7 = [SearchUIUtilities bundleIdentifierForApp:13];
  }

  return v7;
}

- (UIView)hiddenView
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenView);

  return WeakRetained;
}

- (UIViewController)peekedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_peekedViewController);

  return WeakRetained;
}

@end