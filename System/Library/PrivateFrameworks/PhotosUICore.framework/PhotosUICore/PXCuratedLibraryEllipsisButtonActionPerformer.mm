@interface PXCuratedLibraryEllipsisButtonActionPerformer
- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4 assetCollectionReference:(id)a5;
- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)a3 assetCollectionReference:(id)a4 actionManager:(id)a5;
- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)a3 assetCollectionReferenceProvider:(id)a4 actionManager:(id)a5;
- (PXCuratedLibraryLayoutAssetCollectionReferenceProvider)assetCollectionReferenceProvider;
- (PXGLayout)layout;
- (id)assetCollectionReference;
- (id)buttonSpriteReference;
- (void)_presentToUserOptionsFromActionPerformers:(id)a3 forAssetCollectionReference:(id)a4;
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

- (void)_presentToUserOptionsFromActionPerformers:(id)a3 forAssetCollectionReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXCuratedLibraryActionPerformer *)self actionZoomLevel];
  v9 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v10 = [v9 specManager];
  v11 = [v10 spec];
  v12 = [v11 shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:v8];

  if (v7)
  {
    [v7 indexPath];
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == *off_1E7721F68 || v8 == 1)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v8 != 4 && (v15 & 1) == 0)
  {
    v16 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self actionManager];
    v17 = [v16 actionPerformerForActionType:@"PXCuratedLibraryActionShare" withAssetCollectionReference:v7];

    v18 = [v6 arrayByAddingObject:v17];

    v6 = v18;
  }

  v19 = [(PXActionPerformer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    PXAssertGetLog();
  }

  [v19 curatedLibraryActionPerformer:self presentContextMenuActionsWithPerformers:v6];
}

- (void)performUserInteractionTask
{
  v100[2] = *MEMORY[0x1E69E9840];
  v4 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self layout];
  v5 = v4;
  if (v4)
  {
    v74 = a2;
    v80 = v4;
    v81 = [(PXCuratedLibraryActionPerformer *)self viewModel];
    v82 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self assetCollectionReference];
    v83 = [(PXCuratedLibraryActionPerformer *)self actionZoomLevel];
    v75 = v83 == 1;
    v6 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__PXCuratedLibraryEllipsisButtonActionPerformer_performUserInteractionTask__block_invoke;
    aBlock[3] = &unk_1E77370D0;
    v78 = v6;
    v96 = v78;
    v7 = _Block_copy(aBlock);
    v8 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self actionManager];
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

          v14 = [v8 actionPerformerForActionType:*(*(&v91 + 1) + 8 * i)];
          v7[2](v7, v14);
        }

        v11 = [v9 countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v11);
    }

    v15 = [v8 actionPerformerForActionType:@"PXCuratedLibraryActionShowFiltersMenu"];
    v16 = [(PXActionPerformer *)self sender];
    [v15 setSender:v16];

    v77 = v15;
    v7[2](v7, v15);
    v17 = v82;
    v18 = [v82 assetCollection];
    v79 = v18;
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v62 = [MEMORY[0x1E696AAA8] currentHandler];
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v65 = [v79 px_descriptionForAssertionMessage];
        [v62 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:171 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v64, v65}];

        v17 = v82;
        v18 = v79;
      }

      v19 = [v18 photoLibrary];
      v20 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v19];

      if ([v20 hasSharedLibraryOrPreview])
      {
        if (v17)
        {
          [v17 indexPath];
          v21 = v88;
        }

        else
        {
          v21 = 0;
        }

        v23 = v83;
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

                v29 = [v8 actionPerformerForActionType:*(*(&v84 + 1) + 8 * j)];
                v7[2](v7, v29);
              }

              v26 = [v24 countByEnumeratingWithState:&v84 objects:v97 count:16];
            }

            while (v26);
          }

          v75 = 1;
          v23 = v83;
        }

        v30 = [(PXCuratedLibraryActionPerformer *)self viewModel];
        v31 = [v30 specManager];
        v32 = [v31 spec];
        v33 = [v32 shouldExcludeNonLibraryRelatedActionsFromTopLevelEllipsisMenuForZoomLevel:v23];

        v22 = v33 & v75;
        v17 = v82;
        v20 = v72;
      }

      else
      {
        v22 = 0;
        v23 = v83;
      }

      v18 = v79;
      if (!v17)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v22 = 0;
      v23 = v83;
      if (!v82)
      {
        goto LABEL_35;
      }
    }

    if ((v22 & 1) == 0)
    {
      v34 = [v81 assetCollectionActionManager];
      v35 = [objc_alloc(objc_opt_class()) initWithAssetCollectionReference:0 displayTitleInfo:0];

      v73 = +[PXCuratedLibrarySettings sharedInstance];
      v76 = v35;
      if (((v23 == 1) & ~[v73 enablePlayMovieInYears]) != 0 || v23 == 4)
      {
        if (v23 == 4)
        {
          v43 = [(PXCuratedLibraryActionPerformer *)self viewModel];
          v44 = [v43 assetsDataSourceManager];
          v40 = [v44 dataSourceForZoomLevel:4];

          v88 = [v40 identifier];
          v89 = xmmword_1A5380D10;
          v90 = 0x7FFFFFFFFFFFFFFFLL;
          v42 = [v40 assetsInSectionIndexPath:&v88];
          if (!v42)
          {
            goto LABEL_57;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_51;
          }

          v45 = [MEMORY[0x1E696AAA8] currentHandler];
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = [v42 px_descriptionForAssertionMessage];
          [v45 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:218 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource assetsInSectionIndexPath:PXSimpleIndexPathMakeSection(dataSource.identifier, 0)]", v47, v48}];
          goto LABEL_71;
        }
      }

      else
      {
        v36 = [v35 actionPerformerForActionType:*off_1E7721D70 assetCollectionReference:v17];
        v37 = [v8 performerDelegate];
        [v36 setDelegate:v37];

        v7[2](v7, v36);
      }

      v40 = [v17 assetCollection];
      if (v40)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_40:
          if ([v40 px_highlightKind] == 2)
          {
            v41 = [MEMORY[0x1E6978630] fetchAllAssetsInYearRepresentedByYearHighlight:v40 options:0];
            goto LABEL_44;
          }

          if ([v40 px_highlightKind] == 3)
          {
            v41 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v40 options:0];
LABEL_44:
            v42 = v41;

            if (!v42)
            {
              v39 = v77;
LABEL_59:
              v56 = [v80 superlayout];
              v57 = v56;
              if (v56)
              {
                v58 = v56;
              }

              else
              {
                v58 = v80;
              }

              v59 = v58;

              v60 = [v8 tapToRadarPerformerAssetCollectionReference:v17 diagnosticLayout:v59];
              v7[2](v7, v60);

              v61 = [v8 curationDebugPerformerAssetCollectionReference:v17 diagnosticLayout:v59];

              v7[2](v7, v61);
              goto LABEL_63;
            }

            goto LABEL_52;
          }

          v49 = [v81 assetsDataSourceManager];
          v42 = [v49 assetsInAssetCollection:v40];

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
            v50 = [(PXCuratedLibraryActionPerformer *)self viewModel];
            v51 = [v50 specManager];
            v52 = [v51 spec];
            v53 = [v52 userInterfaceIdiom];

            if (v53 == 4 && v83 == 4)
            {
              v17 = v82;
              v39 = v77;
              goto LABEL_63;
            }

            v54 = *off_1E7721DC8;
            v17 = v82;
            if (![v76 canPerformActionType:*off_1E7721DC8 assetCollectionReference:v82])
            {
LABEL_58:
              v39 = v77;
              if (v83 != 4)
              {
                goto LABEL_59;
              }

LABEL_63:

              v38 = v78;
              v18 = v79;
LABEL_64:
              [(PXCuratedLibraryEllipsisButtonActionPerformer *)self _presentToUserOptionsFromActionPerformers:v38 forAssetCollectionReference:v17];
LABEL_65:
              [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];

              v5 = v80;
              goto LABEL_66;
            }

            v40 = [v76 actionPerformerForActionType:v54 assetCollectionReference:v82];
            v55 = [v8 performerDelegate];
            [v40 setDelegate:v55];

            v7[2](v7, v40);
LABEL_57:

            goto LABEL_58;
          }

          v45 = [MEMORY[0x1E696AAA8] currentHandler];
          v71 = objc_opt_class();
          v47 = NSStringFromClass(v71);
          v48 = [v42 px_descriptionForAssertionMessage];
          [v45 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:214 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[viewModel.assetsDataSourceManager assetsInAssetCollection:highlight]", v47, v48}];
LABEL_71:

          goto LABEL_51;
        }

        v66 = [MEMORY[0x1E696AAA8] currentHandler];
        v69 = objc_opt_class();
        v68 = NSStringFromClass(v69);
        v70 = [v40 px_descriptionForAssertionMessage];
        [v66 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:208 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v68, v70}];
      }

      else
      {
        v66 = [MEMORY[0x1E696AAA8] currentHandler];
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        [v66 handleFailureInMethod:v74 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:208 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v68}];
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
  v3 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self layout];
  v4 = [v3 spriteReferenceForObjectReference:self];

  return v4;
}

- (id)assetCollectionReference
{
  v3 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)self assetCollectionReferenceProvider];
  v4 = [v3 assetCollectionReference];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXCuratedLibraryEllipsisButtonActionPerformer;
    v6 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v9 assetCollectionReference];
  }

  v7 = v6;

  return v7;
}

- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)a3 assetCollectionReferenceProvider:(id)a4 actionManager:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryEllipsisButtonActionPerformer;
  v10 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v13 initWithActionType:@"PXCuratedLibraryActionEllipsisButton" viewModel:a3 assetCollectionReference:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionManager, a5);
    objc_storeWeak(&v11->_assetCollectionReferenceProvider, v8);
  }

  return v11;
}

- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithViewModel:(id)a3 assetCollectionReference:(id)a4 actionManager:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryEllipsisButtonActionPerformer;
  v10 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v13 initWithActionType:@"PXCuratedLibraryActionEllipsisButton" viewModel:a3 assetCollectionReference:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionManager, a5);
  }

  return v11;
}

- (PXCuratedLibraryEllipsisButtonActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4 assetCollectionReference:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXCuratedLibraryEllipsisButtonActionPerformer initWithActionType:viewModel:assetCollectionReference:]"}];

  abort();
}

@end