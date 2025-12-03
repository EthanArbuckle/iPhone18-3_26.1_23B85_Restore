@interface PXDisplayAssetViewPPTConfiguration
+ (NSArray)defaultConfigurations;
- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)factory label:(id)label assets:(id)assets label:(id)a6;
- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)factory label:(id)label photoLibraryAssetsWithPlaybackStyleFilter:(int64_t)filter;
@end

@implementation PXDisplayAssetViewPPTConfiguration

- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)factory label:(id)label assets:(id)assets label:(id)a6
{
  factoryCopy = factory;
  labelCopy = label;
  assetsCopy = assets;
  v14 = a6;
  if (factoryCopy)
  {
    if (labelCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"assetViewFactory != nil"}];

    if (labelCopy)
    {
LABEL_3:
      if (assetsCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"assets != nil"}];

      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"assetViewFactoryLabel != nil"}];

  if (!assetsCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"assetsLabel != nil"}];

LABEL_5:
  v25.receiver = self;
  v25.super_class = PXDisplayAssetViewPPTConfiguration;
  v15 = [(PXDisplayAssetViewPPTConfiguration *)&v25 init];
  if (v15)
  {
    v16 = [factoryCopy copy];
    assetViewFactory = v15->_assetViewFactory;
    v15->_assetViewFactory = v16;

    objc_storeStrong(&v15->_assets, assets);
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@View-%@Assets", labelCopy, v14];
    label = v15->_label;
    v15->_label = v18;
  }

  return v15;
}

- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)factory label:(id)label photoLibraryAssetsWithPlaybackStyleFilter:(int64_t)filter
{
  v20[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  factoryCopy = factory;
  defaultPhotoLibrary = [objc_opt_class() defaultPhotoLibrary];
  librarySpecificFetchOptions = [defaultPhotoLibrary librarySpecificFetchOptions];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (filter)
  {
    filter = [MEMORY[0x1E696AE18] predicateWithFormat:@"playbackStyle == %li", filter];
    [v12 addObject:filter];

    PXDisplayAssetPlaybackStyleDescription();
  }

  if ([v12 count])
  {
    v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
    [librarySpecificFetchOptions setPredicate:v14];
  }

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v16];

  [librarySpecificFetchOptions setFetchLimit:100];
  v17 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];

  v18 = [(PXDisplayAssetViewPPTConfiguration *)self initWithAssetViewFactory:factoryCopy label:labelCopy assets:v17 label:@"All"];
  return v18;
}

PXPhotoKitAssetView *__42__PXDisplayAssetViewPPTConfiguration_init__block_invoke()
{
  v0 = objc_alloc_init(PXPhotoKitAssetView);

  return v0;
}

+ (NSArray)defaultConfigurations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke;
  aBlock[3] = &unk_1E7746E80;
  v13 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v11[2] = __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_3;
  v11[3] = &__block_descriptor_40_e25___PXDisplayAssetView_8__0l;
  v11[4] = self;
  v6 = v5[2];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v6(v5, v11, @"PXDisplayAssetView");
  (v5[2])(v5, &__block_literal_global_238_218732, @"PXPhotoKitAssetView");
  v7 = NSClassFromString(&cfstr_Phassetview.isa);
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_5;
    v10[3] = &__block_descriptor_40_e5__8__0lu32l8;
    v10[4] = v7;
    (v5[2])(v5, v10, @"PHAssetView");
  }

  v8 = [v4 copy];

  return v8;
}

void __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_2;
  aBlock[3] = &unk_1E7746E58;
  v7 = *(a1 + 32);
  v13 = v6;
  v14 = v5;
  v12 = v7;
  v8 = v6;
  v9 = v5;
  v10 = _Block_copy(aBlock);
  v10[2](v10, 1);
  v10[2](v10, 3);
  v10[2](v10, 4);
}

PXDisplayAssetView *__59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_3()
{
  v0 = objc_alloc_init(PXDisplayAssetView);
  v1 = [PXPhotoKitUIMediaProvider alloc];
  v2 = objc_alloc_init(MEMORY[0x1E6978860]);
  v3 = [objc_opt_class() defaultPhotoLibrary];
  v4 = [(PXPhotoKitUIMediaProvider *)v1 initWithImageManager:v2 library:v3];
  [(PXDisplayAssetView *)v0 setMediaProvider:v4];

  return v0;
}

id __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_5(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));

  return v1;
}

PXPhotoKitAssetView *__59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_4()
{
  v0 = objc_alloc_init(PXPhotoKitAssetView);

  return v0;
}

void __59__PXDisplayAssetViewPPTConfiguration_defaultConfigurations__block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = [[PXDisplayAssetViewPPTConfiguration alloc] initWithAssetViewFactory:a1[6] label:a1[5] photoLibraryAssetsWithPlaybackStyleFilter:a2];
  [v2 addObject:v3];
}

@end