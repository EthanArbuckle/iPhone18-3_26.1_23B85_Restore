@interface PXDisplayAssetViewPPTConfiguration
+ (NSArray)defaultConfigurations;
- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)a3 label:(id)a4 assets:(id)a5 label:(id)a6;
- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)a3 label:(id)a4 photoLibraryAssetsWithPlaybackStyleFilter:(int64_t)a5;
@end

@implementation PXDisplayAssetViewPPTConfiguration

- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)a3 label:(id)a4 assets:(id)a5 label:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"assetViewFactory != nil"}];

    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_10:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"assets != nil"}];

      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"assetViewFactoryLabel != nil"}];

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_11:
  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTConfiguration.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"assetsLabel != nil"}];

LABEL_5:
  v25.receiver = self;
  v25.super_class = PXDisplayAssetViewPPTConfiguration;
  v15 = [(PXDisplayAssetViewPPTConfiguration *)&v25 init];
  if (v15)
  {
    v16 = [v11 copy];
    assetViewFactory = v15->_assetViewFactory;
    v15->_assetViewFactory = v16;

    objc_storeStrong(&v15->_assets, a5);
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@View-%@Assets", v12, v14];
    label = v15->_label;
    v15->_label = v18;
  }

  return v15;
}

- (PXDisplayAssetViewPPTConfiguration)initWithAssetViewFactory:(id)a3 label:(id)a4 photoLibraryAssetsWithPlaybackStyleFilter:(int64_t)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() defaultPhotoLibrary];
  v11 = [v10 librarySpecificFetchOptions];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a5)
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"playbackStyle == %li", a5];
    [v12 addObject:v13];

    PXDisplayAssetPlaybackStyleDescription();
  }

  if ([v12 count])
  {
    v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
    [v11 setPredicate:v14];
  }

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v11 setSortDescriptors:v16];

  [v11 setFetchLimit:100];
  v17 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v11];

  v18 = [(PXDisplayAssetViewPPTConfiguration *)self initWithAssetViewFactory:v9 label:v8 assets:v17 label:@"All"];
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
  v11[4] = a1;
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