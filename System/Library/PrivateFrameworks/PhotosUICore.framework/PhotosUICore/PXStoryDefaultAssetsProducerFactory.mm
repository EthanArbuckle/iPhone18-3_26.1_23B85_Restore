@interface PXStoryDefaultAssetsProducerFactory
- (id)assetsProducerForConfiguration:(id)a3;
@end

@implementation PXStoryDefaultAssetsProducerFactory

- (id)assetsProducerForConfiguration:(id)a3
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 options];
  v5 = [v3 assetCollection];
  v6 = [v3 keyAsset];
  v7 = [v3 assets];
  v8 = [v3 referencePersons];
  v9 = [v3 persistableRecipe];
  if ((v4 & 2) != 0 && v6)
  {
    v53[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v11 = [PXStaticDisplayAssetsDataSource alloc];
    v12 = v11;
    if (v5)
    {
      v52 = v5;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v14 = [(PXStaticDisplayAssetsDataSource *)v12 initWithAssetCollectionBySection:v13 assetsBySection:0 curatedAssetsBySection:0 keyAssetsBySection:v10 sectionContent:0];
    }

    else
    {
      v14 = [(PXStaticDisplayAssetsDataSource *)v11 initWithAssetCollectionBySection:0 assetsBySection:0 curatedAssetsBySection:0 keyAssetsBySection:v10 sectionContent:0];
    }

    v20 = [PXStoryPassthroughAssetsProducer alloc];
    v21 = [[PXPassthroughAssetsDataSourceManager alloc] initWithDataSource:v14];
    v22 = [(PXStoryPassthroughAssetsProducer *)v20 initWithAssetsDataSourceManager:v21];

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = (v4 >> 8) & 2 | ((v4 & 2) >> 1);
    v16 = [PXStoryPHAssetCollectionAssetsProducer alloc];
    v17 = v6;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v22 = -[PXStoryPHAssetCollectionAssetsProducer initWithAssetCollection:keyAsset:referencePersons:curationKind:options:](v16, "initWithAssetCollection:keyAsset:referencePersons:curationKind:options:", v5, v18, v8, [v3 curationKind], v15);
    goto LABEL_32;
  }

  if (!(v6 | v7))
  {
    if (v9)
    {
      v22 = [[PXStoryPersistableRecipeAssetsProducer alloc] initWithPersistableRecipe:v9];
      goto LABEL_32;
    }

    v10 = objc_alloc_init(PXStaticDisplayAssetsDataSource);
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v5)
  {
    v19 = [PXStaticDisplayAssetsDataSource alloc];
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v6)
    {
LABEL_23:
      v19 = [PXStaticDisplayAssetsDataSource alloc];
      if (!v5)
      {
        v23 = 0;
        v42 = 1;
        if (v7)
        {
LABEL_25:
          v45 = v7;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          if (v6)
          {
            goto LABEL_26;
          }

          goto LABEL_37;
        }

LABEL_36:
        v24 = 0;
        if (v6)
        {
LABEL_26:
          v44 = v6;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          v10 = [(PXStaticDisplayAssetsDataSource *)v19 initWithAssetCollectionBySection:v23 assetsBySection:v24 curatedAssetsBySection:0 keyAssetsBySection:v25 sectionContent:0];

          if (!v7)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_37:
        v10 = [(PXStaticDisplayAssetsDataSource *)v19 initWithAssetCollectionBySection:v23 assetsBySection:v24 curatedAssetsBySection:0 keyAssetsBySection:0 sectionContent:0];
        if (!v7)
        {
LABEL_28:
          if ((v42 & 1) == 0)
          {
          }

LABEL_30:
          v26 = [PXStoryPassthroughAssetsProducer alloc];
          v14 = [[PXPassthroughAssetsDataSourceManager alloc] initWithDataSource:v10];
          v22 = [(PXStoryPassthroughAssetsProducer *)v26 initWithAssetsDataSourceManager:v14];
LABEL_31:

          goto LABEL_32;
        }

LABEL_27:

        goto LABEL_28;
      }

LABEL_24:
      v46 = v5;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v42 = 0;
      if (v7)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }
  }

  v28 = v7;
  v43 = v28;
  if (v5)
  {
    v29 = v5;
  }

  else
  {
    v29 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v28 title:0];
  }

  v30 = MEMORY[0x1E6978760];
  v51 = v29;
  v31 = v29;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v33 = [v30 transientCollectionListWithCollections:v32 title:0];

  v41 = v33;
  v40 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v33 options:0];
  v34 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v40 options:32 * (v6 != 0)];
  if (v6)
  {
    v49 = v31;
    v50 = v6;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [(PXPhotosDataSourceConfiguration *)v34 setExistingKeyAssetsFetchResults:v35];
  }

  if (v7)
  {
    v47 = v31;
    v48 = v43;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    [(PXPhotosDataSourceConfiguration *)v34 setExistingAssetCollectionFetchResults:v36];
  }

  v39 = v31;
  v37 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v34];
  v38 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v37];
  v22 = [[PXStoryPassthroughAssetsProducer alloc] initWithAssetsDataSourceManager:v38];

LABEL_32:

  return v22;
}

@end