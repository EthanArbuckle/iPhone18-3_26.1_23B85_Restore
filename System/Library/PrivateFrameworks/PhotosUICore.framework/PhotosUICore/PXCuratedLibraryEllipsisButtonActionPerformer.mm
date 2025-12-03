@interface PXCuratedLibraryEllipsisButtonActionPerformer
- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithActionType:(id)type viewModel:(id)model assetCollectionReference:(id)reference;
- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)model assetCollectionReference:(id)reference actionManager:(id)manager;
- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)model assetCollectionReferenceProvider:(id)provider actionManager:(id)manager;
- (PXCuratedLibraryLayoutAssetCollectionReferenceProvider)assetCollectionReferenceProvider;
- (PXGLayout)layout;
- (id)assetCollectionReference;
- (id)buttonSpriteReference;
- (void)_presentToUserOptionsFromActionPerformers:(id)performers forAssetCollectionReference:(id)reference;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryEllipsisButtonActionPerformer

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (PXCuratedLibraryLayoutAssetCollectionReferenceProvider)assetCollectionReferenceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCollectionReferenceProvider);

  return WeakRetained;
}

- (void)_presentToUserOptionsFromActionPerformers:(id)performers forAssetCollectionReference:(id)reference
{
  performersCopy = performers;
  referenceCopy = reference;
  actionZoomLevel = [(PXCuratedLibraryActionPerformer *)self actionZoomLevel];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  v12 = [spec shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:actionZoomLevel];

  if (referenceCopy)
  {
    [referenceCopy indexPath];
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == *off_1E7721F68 || actionZoomLevel == 1)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (actionZoomLevel != 4 && (v15 & 1) == 0)
  {
    actionManager = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self actionManager];
    v17 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShare" withAssetCollectionReference:referenceCopy];

    v18 = [performersCopy arrayByAddingObject:v17];

    performersCopy = v18;
  }

  delegate = [(PXActionPerformer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    PXAssertGetLog();
  }

  [delegate curatedLibraryActionPerformer:self presentContextMenuActionsWithPerformers:performersCopy];
}

- (void)performUserInteractionTask
{
  v100[2] = *MEMORY[0x1E69E9840];
  layout = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self layout];
  v5 = layout;
  if (layout)
  {
    v74 = a2;
    v80 = layout;
    viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
    assetCollectionReference = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self assetCollectionReference];
    actionZoomLevel = [(PXCuratedLibraryActionPerformer *)self actionZoomLevel];
    v75 = actionZoomLevel == 1;
    v6 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PXCuratedLibraryEllipsisButtonActionPerformer_performUserInteractionTask__block_invoke;
    aBlock[3] = &unk_1E77370D0;
    v78 = v6;
    v96 = v78;
    v7 = _Block_copy(aBlock);
    actionManager = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self actionManager];
    v100[0] = @"PXCuratedLibraryActionAllPhotosZoomIn";
    v100[1] = @"PXCuratedLibraryActionAllPhotosZoomOut";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v9 = v94 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v92;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v92 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [actionManager actionPerformerForActionType:*(*(&v91 + 1) + 8 * i)];
          v7[2](v7, v14);
        }

        v11 = [v9 countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v11);
    }

    v15 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];
    sender = [(PXActionPerformer *)self sender];
    [v15 setSender:sender];

    v77 = v15;
    v7[2](v7, v15);
    v17 = assetCollectionReference;
    assetCollection = [assetCollectionReference assetCollection];
    v79 = assetCollection;
    if (assetCollection)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        px_descriptionForAssertionMessage = [v79 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:171 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v64, px_descriptionForAssertionMessage}];

        v17 = assetCollectionReference;
        assetCollection = v79;
      }

      photoLibrary = [assetCollection photoLibrary];
      v20 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

      if ([v20 hasSharedLibraryOrPreview])
      {
        if (v17)
        {
          [v17 indexPath];
          v21 = identifier;
        }

        else
        {
          v21 = 0;
        }

        v23 = actionZoomLevel;
        v72 = v20;
        if (v21 == *off_1E7721F68)
        {
          v98[0] = @"PXCuratedLibraryActionSetAllLibrariesFilter";
          v98[1] = @"PXCuratedLibraryActionSetPersonalLibraryFilter";
          v98[2] = @"PXCuratedLibraryActionSetSharedLibraryFilter";
          [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:3];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v24 = v87 = 0u;
          v25 = [v24 countByEnumeratingWithState:&v84 objects:v97 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v85;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v85 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [actionManager actionPerformerForActionType:*(*(&v84 + 1) + 8 * j)];
                v7[2](v7, v29);
              }

              v26 = [v24 countByEnumeratingWithState:&v84 objects:v97 count:16];
            }

            while (v26);
          }

          v75 = 1;
          v23 = actionZoomLevel;
        }

        viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
        specManager = [viewModel2 specManager];
        spec = [specManager spec];
        v33 = [spec shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:v23];

        v22 = v33 & v75;
        v17 = assetCollectionReference;
        v20 = v72;
      }

      else
      {
        v22 = 0;
        v23 = actionZoomLevel;
      }

      assetCollection = v79;
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v22 = 0;
      v23 = actionZoomLevel;
      if (!assetCollectionReference)
      {
        goto LABEL_35;
      }
    }

    if ((v22 & 1) == 0)
    {
      assetCollectionActionManager = [viewModel assetCollectionActionManager];
      v35 = [objc_alloc(objc_opt_class()) initWithAssetCollectionReference:0 displayTitleInfo:0];

      v73 = +[PXCuratedLibrarySettings sharedInstance];
      v76 = v35;
      if (((v23 == 1) & ~[v73 enablePlayMovieInYears]) != 0 || v23 == 4)
      {
        if (v23 == 4)
        {
          viewModel3 = [(PXCuratedLibraryActionPerformer *)self viewModel];
          assetsDataSourceManager = [viewModel3 assetsDataSourceManager];
          assetCollection2 = [assetsDataSourceManager dataSourceForZoomLevel:4];

          identifier = [assetCollection2 identifier];
          v89 = xmmword_1A5380D10;
          v90 = 0x7FFFFFFFFFFFFFFFLL;
          v42 = [assetCollection2 assetsInSectionIndexPath:&identifier];
          if (!v42)
          {
            goto LABEL_57;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_51;
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          px_descriptionForAssertionMessage2 = [v42 px_descriptionForAssertionMessage];
          [currentHandler2 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:218 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource assetsInSectionIndexPath:PXSimpleIndexPathMakeSection(dataSource.identifier, 0)]", v47, px_descriptionForAssertionMessage2}];
          goto LABEL_71;
        }
      }

      else
      {
        v36 = [v35 actionPerformerForActionType:*off_1E7721D70 assetCollectionReference:v17];
        performerDelegate = [actionManager performerDelegate];
        [v36 setDelegate:performerDelegate];

        v7[2](v7, v36);
      }

      assetCollection2 = [v17 assetCollection];
      if (assetCollection2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_40:
          if ([assetCollection2 px_highlightKind] == 2)
          {
            v41 = [MEMORY[0x1E6978630] fetchAllAssetsInYearRepresentedByYearHighlight:assetCollection2 options:0];
            goto LABEL_44;
          }

          if ([assetCollection2 px_highlightKind] == 3)
          {
            v41 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:assetCollection2 options:0];
LABEL_44:
            v42 = v41;

            if (!v42)
            {
              v39 = v77;
LABEL_59:
              superlayout = [v80 superlayout];
              v57 = superlayout;
              if (superlayout)
              {
                v58 = superlayout;
              }

              else
              {
                v58 = v80;
              }

              v59 = v58;

              v60 = [actionManager tapToRadarPerformerAssetCollectionReference:v17 diagnosticLayout:v59];
              v7[2](v7, v60);

              v61 = [actionManager curationDebugPerformerAssetCollectionReference:v17 diagnosticLayout:v59];

              v7[2](v7, v61);
              goto LABEL_63;
            }

            goto LABEL_52;
          }

          assetsDataSourceManager2 = [viewModel assetsDataSourceManager];
          v42 = [assetsDataSourceManager2 assetsInAssetCollection:assetCollection2];

          if (!v42)
          {
            goto LABEL_57;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_51:

LABEL_52:
            [v76 setAssetsFetchResult:v42];
            viewModel4 = [(PXCuratedLibraryActionPerformer *)self viewModel];
            specManager2 = [viewModel4 specManager];
            spec2 = [specManager2 spec];
            userInterfaceIdiom = [spec2 userInterfaceIdiom];

            if (userInterfaceIdiom == 4 && actionZoomLevel == 4)
            {
              v17 = assetCollectionReference;
              v39 = v77;
              goto LABEL_63;
            }

            v54 = *off_1E7721DC8;
            v17 = assetCollectionReference;
            if (![v76 canPerformActionType:*off_1E7721DC8 assetCollectionReference:assetCollectionReference])
            {
LABEL_58:
              v39 = v77;
              if (actionZoomLevel != 4)
              {
                goto LABEL_59;
              }

LABEL_63:

              v38 = v78;
              assetCollection = v79;
LABEL_64:
              [(PXCuratedLibraryEllipsisButtonActionPerformer *)self _presentToUserOptionsFromActionPerformers:v38 forAssetCollectionReference:v17];
LABEL_65:
              [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];

              v5 = v80;
              goto LABEL_66;
            }

            assetCollection2 = [v76 actionPerformerForActionType:v54 assetCollectionReference:assetCollectionReference];
            performerDelegate2 = [actionManager performerDelegate];
            [assetCollection2 setDelegate:performerDelegate2];

            v7[2](v7, assetCollection2);
LABEL_57:

            goto LABEL_58;
          }

          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v71 = objc_opt_class();
          v47 = NSStringFromClass(v71);
          px_descriptionForAssertionMessage2 = [v42 px_descriptionForAssertionMessage];
          [currentHandler2 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:214 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[viewModel.assetsDataSourceManager assetsInAssetCollection:highlight]", v47, px_descriptionForAssertionMessage2}];
LABEL_71:

          goto LABEL_51;
        }

        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v69 = objc_opt_class();
        v68 = NSStringFromClass(v69);
        px_descriptionForAssertionMessage3 = [assetCollection2 px_descriptionForAssertionMessage];
        [currentHandler3 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:208 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v68, px_descriptionForAssertionMessage3}];
      }

      else
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        [currentHandler3 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:208 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v68}];
      }

      goto LABEL_40;
    }

LABEL_35:
    v39 = v77;
    v38 = v78;
    if (!v17)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
LABEL_66:
}

uint64_t __75__PXCuratedLibraryEllipsisButtonActionPerformer_performUserInteractionTask__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (id)buttonSpriteReference
{
  layout = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self layout];
  v4 = [layout spriteReferenceForObjectReference:self];

  return v4;
}

- (id)assetCollectionReference
{
  assetCollectionReferenceProvider = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self assetCollectionReferenceProvider];
  assetCollectionReference = [assetCollectionReferenceProvider assetCollectionReference];
  v5 = assetCollectionReference;
  if (assetCollectionReference)
  {
    assetCollectionReference2 = assetCollectionReference;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXCuratedLibraryEllipsisButtonActionPerformer;
    assetCollectionReference2 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v9 assetCollectionReference];
  }

  v7 = assetCollectionReference2;

  return v7;
}

- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)model assetCollectionReferenceProvider:(id)provider actionManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryEllipsisButtonActionPerformer;
  v10 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v13 initWithActionType:@"PXCuratedLibraryActionEllipsisButton" viewModel:model assetCollectionReference:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionManager, manager);
    objc_storeWeak(&v11->_assetCollectionReferenceProvider, providerCopy);
  }

  return v11;
}

- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)model assetCollectionReference:(id)reference actionManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryEllipsisButtonActionPerformer;
  v10 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v13 initWithActionType:@"PXCuratedLibraryActionEllipsisButton" viewModel:model assetCollectionReference:reference];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionManager, manager);
  }

  return v11;
}

- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithActionType:(id)type viewModel:(id)model assetCollectionReference:(id)reference
{
  typeCopy = type;
  modelCopy = model;
  referenceCopy = reference;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXCuratedLibraryEllipsisButtonActionPerformer initWithActionType:viewModel:assetCollectionReference:]"}];

  abort();
}

@end