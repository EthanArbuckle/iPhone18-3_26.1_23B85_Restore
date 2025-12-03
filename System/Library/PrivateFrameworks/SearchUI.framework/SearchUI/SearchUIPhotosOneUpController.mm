@interface SearchUIPhotosOneUpController
+ (id)bundleIdentifierForAsset:(id)asset;
+ (id)sharedController;
- (BOOL)setupOneUpViewWithAssets:(id)assets;
- (UIView)hiddenView;
- (UIViewController)peekedViewController;
- (id)command;
- (id)imageViewInView:(id)view;
- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference;
- (id)oneUpPresentationActionManager:(id)manager;
- (id)oneUpPresentationMatchedAudioIdentifiers:(id)identifiers;
- (id)oneUpPresentationMatchedHumanActionIdentifiers:(id)identifiers;
- (id)oneUpPresentationMatchedPersonLocalIdentifiers:(id)identifiers;
- (id)oneUpPresentationMatchedQueryStrings:(id)strings;
- (id)oneUpPresentationMatchedSceneIdentifiers:(id)identifiers;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (id)previewViewControllerForRowModel:(id)model environment:(id)environment;
- (id)rowModelForAsset:(id)asset;
- (id)rowModelForAssetReference:(id)reference;
- (id)updateWithRowModel:(id)model environment:(id)environment;
- (id)viewForAssetReference:(id)reference;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
- (void)presentOneUpViewForRowModel:(id)model triggerEvent:(unint64_t)event environment:(id)environment;
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

- (id)previewViewControllerForRowModel:(id)model environment:(id)environment
{
  environmentCopy = environment;
  v7 = [(SearchUIPhotosOneUpController *)self updateWithRowModel:model environment:environmentCopy];
  v8 = +[SearchUIPhotoAssetCache sharedCache];
  v9 = [v8 assetsForImages:v7];

  if ([(SearchUIPhotosOneUpController *)self setupOneUpViewWithAssets:v9])
  {
    presentingViewController = [environmentCopy presentingViewController];
    px_oneUpPresentation = [presentingViewController px_oneUpPresentation];
    v12 = [px_oneUpPresentation previewViewControllerAllowingActions:1];
  }

  else
  {
    v12 = 0;
  }

  [(SearchUIPhotosOneUpController *)self setPeekedViewController:v12];

  return v12;
}

- (void)presentOneUpViewForRowModel:(id)model triggerEvent:(unint64_t)event environment:(id)environment
{
  modelCopy = model;
  environmentCopy = environment;
  v10 = environmentCopy;
  if (event == 6)
  {
    presentingViewController = [environmentCopy presentingViewController];
    px_oneUpPresentation = [presentingViewController px_oneUpPresentation];
    peekedViewController = [(SearchUIPhotosOneUpController *)self peekedViewController];
    [px_oneUpPresentation commitPreviewViewController:peekedViewController];
  }

  else
  {
    presentingViewController = [(SearchUIPhotosOneUpController *)self updateWithRowModel:modelCopy environment:environmentCopy];
    v14 = +[SearchUIPhotoAssetCache sharedCache];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__SearchUIPhotosOneUpController_presentOneUpViewForRowModel_triggerEvent_environment___block_invoke;
    v15[3] = &unk_1E85B2770;
    v16 = modelCopy;
    selfCopy = self;
    v18 = v10;
    [v14 fetchAssetsForImages:presentingViewController completionHandler:v15];
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

- (id)updateWithRowModel:(id)model environment:(id)environment
{
  environmentCopy = environment;
  [(SearchUIPhotosOneUpController *)self setRowModel:model];
  [(SearchUIPhotosOneUpController *)self setCommandEnvironment:environmentCopy];
  v27 = objc_opt_new();
  v26 = objc_opt_new();
  lastEngagedSection = [environmentCopy lastEngagedSection];
  section = [lastEngagedSection section];
  collectionSection = [section collectionSection];
  collectionStyle = [collectionSection collectionStyle];

  objc_opt_class();
  selfCopy = self;
  v25 = environmentCopy;
  if (objc_opt_isKindOfClass())
  {
    numberOfRows = [collectionStyle numberOfRows];
  }

  else
  {
    numberOfRows = 1;
  }

  rowModels = [lastEngagedSection rowModels];
  v13 = [rowModels count];

  if (v13)
  {
    v14 = 0;
    v15 = vcvtpd_u64_f64(v13 / numberOfRows);
    do
    {
      if (v14 / v15 + v14 % v15 * numberOfRows < v13)
      {
        rowModels2 = [lastEngagedSection rowModels];
        v17 = [rowModels2 objectAtIndexedSubscript:v14 / v15 + v14 % v15 * numberOfRows];

        cardSection = [v17 cardSection];
        command = [cardSection command];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          photosLibraryImage = [command photosLibraryImage];
          photoIdentifier = [photosLibraryImage photoIdentifier];
          if ([photoIdentifier length])
          {
            [v26 addObject:photosLibraryImage];
            [v27 setObject:v17 forKeyedSubscript:photoIdentifier];
          }
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }

  [(SearchUIPhotosOneUpController *)selfCopy setRowModelsForCoreSpotlightIdentifiers:v27];
  [(SearchUIPhotosOneUpController *)selfCopy setActiveDataSourceManager:0];
  [(SearchUIPhotosOneUpController *)selfCopy setNavigatedAssetReference:0];
  v22 = [v26 copy];

  return v22;
}

- (id)command
{
  rowModel = [(SearchUIPhotosOneUpController *)self rowModel];
  cardSection = [rowModel cardSection];
  command = [cardSection command];

  return command;
}

- (BOOL)setupOneUpViewWithAssets:(id)assets
{
  v26[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  command = [(SearchUIPhotosOneUpController *)self command];
  photosLibraryImage = [command photosLibraryImage];
  photoIdentifier = [photosLibraryImage photoIdentifier];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__SearchUIPhotosOneUpController_setupOneUpViewWithAssets___block_invoke;
  v24[3] = &unk_1E85B3C30;
  v8 = photoIdentifier;
  v25 = v8;
  v9 = [assetsCopy indexOfObjectPassingTest:v24];
  if (assetsCopy)
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
    commandEnvironment = [(SearchUIPhotosOneUpController *)self commandEnvironment];
    presentingViewController = [commandEnvironment presentingViewController];

    [presentingViewController px_enableOneUpPresentation];
    px_oneUpPresentation = [presentingViewController px_oneUpPresentation];
    [px_oneUpPresentation setDelegate:self];
  }

  return v11;
}

uint64_t __58__SearchUIPhotosOneUpController_setupOneUpViewWithAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:a2];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)oneUpPresentationMediaProvider:(id)provider
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

- (id)rowModelForAssetReference:(id)reference
{
  referenceCopy = reference;
  asset = [referenceCopy asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset2 = [referenceCopy asset];
    v7 = [(SearchUIPhotosOneUpController *)self rowModelForAsset:asset2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)rowModelForAsset:(id)asset
{
  v4 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:asset];
  rowModelsForCoreSpotlightIdentifiers = [(SearchUIPhotosOneUpController *)self rowModelsForCoreSpotlightIdentifiers];
  v6 = [rowModelsForCoreSpotlightIdentifiers objectForKeyedSubscript:v4];

  return v6;
}

- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible
{
  v7 = [(SearchUIPhotosOneUpController *)self rowModelForAssetReference:visible];
  commandEnvironment = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  rowModelViewDelegate = [commandEnvironment rowModelViewDelegate];
  [rowModelViewDelegate scrollRowModelToVisible:v7];
}

- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference
{
  v5 = [(SearchUIPhotosOneUpController *)self viewForAssetReference:reference];
  [v5 layoutBelowIfNeeded];
  v6 = objc_alloc(MEMORY[0x1E69C45A0]);
  [v5 bounds];
  v7 = [v6 initWithRect:v5 inCoordinateSpace:?];
  v8 = [(SearchUIPhotosOneUpController *)self imageViewInView:v5];
  layer = [v8 layer];
  if ([layer maskedCorners])
  {
    v10 = objc_opt_new();
    [layer cornerRadius];
    [v10 setCornerRadius:?];
    [v10 setCornerMask:{objc_msgSend(layer, "maskedCorners")}];
    cornerCurve = [layer cornerCurve];
    [v10 setCornerCurve:cornerCurve];

    [v7 setImageViewSpec:v10];
  }

  return v7;
}

- (id)imageViewInView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v11 = [(SearchUIPhotosOneUpController *)self imageViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)oneUpPresentationActionManager:(id)manager
{
  v4 = objc_alloc(MEMORY[0x1E69C45C8]);
  activeDataSourceManager = [(SearchUIPhotosOneUpController *)self activeDataSourceManager];
  v6 = [v4 initWithDataSourceManager:activeDataSourceManager];

  v7 = [objc_alloc(MEMORY[0x1E69C37C0]) initWithSelectionManager:v6];
  command = [(SearchUIPhotosOneUpController *)self command];
  _matchedPerson = [command _matchedPerson];
  photosIdentifier = [_matchedPerson photosIdentifier];

  [v7 setPerformerDelegate:self];
  if (photosIdentifier)
  {
    photosLibraryImage = [command photosLibraryImage];
    v12 = +[SearchUIPhotosUtilities personWithIdentifier:isSyndicated:](SearchUIPhotosUtilities, "personWithIdentifier:isSyndicated:", photosIdentifier, [photosLibraryImage isSyndicated]);
    [v7 setPerson:v12];
  }

  return v7;
}

- (id)oneUpPresentationMatchedQueryStrings:(id)strings
{
  v9[1] = *MEMORY[0x1E69E9840];
  commandEnvironment = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  searchString = [commandEnvironment searchString];
  lowercaseString = [searchString lowercaseString];

  v6 = &stru_1F55BC4E8;
  if (lowercaseString)
  {
    v6 = lowercaseString;
  }

  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

- (id)oneUpPresentationMatchedSceneIdentifiers:(id)identifiers
{
  command = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedSceneIdentifiersForCommand:command andType:1];

  return v4;
}

- (id)oneUpPresentationMatchedAudioIdentifiers:(id)identifiers
{
  command = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedSceneIdentifiersForCommand:command andType:3];

  return v4;
}

- (id)oneUpPresentationMatchedHumanActionIdentifiers:(id)identifiers
{
  command = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedSceneIdentifiersForCommand:command andType:2];

  return v4;
}

- (id)oneUpPresentationMatchedPersonLocalIdentifiers:(id)identifiers
{
  command = [(SearchUIPhotosOneUpController *)self command];
  v4 = [SearchUIShowPhotosOneUpViewHandler matchedPersonLocalIdentifiersForCommand:command];

  return v4;
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  hiddenView = [(SearchUIPhotosOneUpController *)self hiddenView];
  [hiddenView setHidden:0];

  anyObject = [referencesCopy anyObject];

  v8 = [(SearchUIPhotosOneUpController *)self viewForAssetReference:anyObject];

  [v8 setHidden:1];
  [(SearchUIPhotosOneUpController *)self setHiddenView:v8];
}

- (id)viewForAssetReference:(id)reference
{
  v4 = [(SearchUIPhotosOneUpController *)self rowModelForAssetReference:reference];
  commandEnvironment = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  rowModelViewDelegate = [commandEnvironment rowModelViewDelegate];
  v7 = [rowModelViewDelegate viewForRowModel:v4];

  return v7;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  if (state != 30)
  {
    return;
  }

  performerCopy = performer;
  actionType = [performerCopy actionType];
  selectionSnapshot = [performerCopy selectionSnapshot];

  firstObject = [selectionSnapshot firstObject];

  v9 = [(SearchUIPhotosOneUpController *)self rowModelForAsset:firstObject];
  commandEnvironment = [(SearchUIPhotosOneUpController *)self commandEnvironment];
  if ([actionType isEqualToString:*MEMORY[0x1E69C47F0]])
  {
    v11 = [objc_opt_class() bundleIdentifierForAsset:firstObject];
    v12 = [SearchUIPhotosUtilities coreSpotlightIdentifierForAsset:firstObject];
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
    v15 = [SearchUICommandHandler handlerForButton:v14 rowModel:v9 environment:commandEnvironment];
    [v15 executeWithTriggerEvent:2];

LABEL_12:
    goto LABEL_13;
  }

  if ([actionType isEqualToString:*MEMORY[0x1E69C47C0]])
  {
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    [v12 setCommand:v11];
    v13 = [SearchUICommandHandler handlerForButton:v12 rowModel:v9 environment:commandEnvironment];
    [v13 wasPerformedWithTriggerEvent:2];
    goto LABEL_12;
  }

LABEL_14:
}

+ (id)bundleIdentifierForAsset:(id)asset
{
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  wellKnownPhotoLibraryIdentifier = [photoLibrary wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier == 3)
  {
    curationProperties = [assetCopy curationProperties];
    importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];
  }

  else
  {
    importedByBundleIdentifier = [SearchUIUtilities bundleIdentifierForApp:13];
  }

  return importedByBundleIdentifier;
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