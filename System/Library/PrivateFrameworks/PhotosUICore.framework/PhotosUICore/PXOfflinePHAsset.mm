@interface PXOfflinePHAsset
+ (id)createOfflinePHAssetUsingOfflineAssets:(id)assets;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)px_storyResourceFetchBestPlaybackRange;
- (CGRect)acceptableCropRect;
- (CGRect)bestCropRectForAspectRatio:(double)ratio;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (CGRect)px_storyResourceFetchBestPlaybackRect;
- (CGRect)suggestedCropForTargetSize:(CGSize)size;
- (CGRect)suggestedCropForTargetSize:(CGSize)size withFocusRegion:(CGRect)region;
- (CGRect)suggestedCropForTargetSize:(CGSize)size withFocusRegion:(CGRect)region andOutputCropScore:(double *)score;
- (CGRect)suggestedCropForTargetSize:(CGSize)size withOcclusionRegion:(CGRect)region andOutputCropScore:(double *)score;
- (NSData)px_storyResourceFetchNormalizationData;
- (NSSet)px_storyResourceFetchSceneClassifications;
- (PFVideoAdjustments)px_storyResourceFetchVideoAdjustments;
- (PHPhotoLibrary)photoLibrary;
- (PXOfflinePHAsset)initWithURL:(id)l matchingPHAsset:(id)asset;
- (PXOfflinePHAsset)initWithURL:(id)l matchingPHAssetUUID:(id)d;
- (double)px_storyResourceFetchCurationScore;
- (id)localizedGeoDescription;
- (id)uuid;
- (int64_t)px_storyResourceFetchFaceCount;
- (unint64_t)pixelHeight;
- (unint64_t)pixelWidth;
@end

@implementation PXOfflinePHAsset

- (int64_t)px_storyResourceFetchFaceCount
{
  asset = [(PXOfflinePHAsset *)self asset];
  px_storyResourceFetchFaceCount = [asset px_storyResourceFetchFaceCount];

  return px_storyResourceFetchFaceCount;
}

- (double)px_storyResourceFetchCurationScore
{
  asset = [(PXOfflinePHAsset *)self asset];
  [asset px_storyResourceFetchCurationScore];
  v4 = v3;

  return v4;
}

- (NSSet)px_storyResourceFetchSceneClassifications
{
  asset = [(PXOfflinePHAsset *)self asset];
  px_storyResourceFetchSceneClassifications = [asset px_storyResourceFetchSceneClassifications];

  return px_storyResourceFetchSceneClassifications;
}

- (NSData)px_storyResourceFetchNormalizationData
{
  asset = [(PXOfflinePHAsset *)self asset];
  px_storyResourceFetchNormalizationData = [asset px_storyResourceFetchNormalizationData];

  return px_storyResourceFetchNormalizationData;
}

- (CGRect)px_storyResourceFetchBestPlaybackRect
{
  asset = [(PXOfflinePHAsset *)self asset];
  [asset px_storyResourceFetchBestPlaybackRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)px_storyResourceFetchBestPlaybackRange
{
  asset = [(PXOfflinePHAsset *)self asset];
  if (asset)
  {
    v6 = asset;
    [asset px_storyResourceFetchBestPlaybackRange];
    asset = v6;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (PFVideoAdjustments)px_storyResourceFetchVideoAdjustments
{
  asset = [(PXOfflinePHAsset *)self asset];
  px_storyResourceFetchVideoAdjustments = [asset px_storyResourceFetchVideoAdjustments];

  return px_storyResourceFetchVideoAdjustments;
}

- (id)localizedGeoDescription
{
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    localizedGeoDescription = [asset2 localizedGeoDescription];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXOfflinePHAsset;
    localizedGeoDescription = [(PXOfflinePHAsset *)&v7 localizedGeoDescription];
  }

  return localizedGeoDescription;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)size withFocusRegion:(CGRect)region andOutputCropScore:(double *)score
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  v10 = size.height;
  v11 = size.width;
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 suggestedCropForTargetSize:score withFocusRegion:v11 andOutputCropScore:{v10, x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v16 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 8);
    v20 = *(MEMORY[0x1E695F050] + 16);
    v22 = *(MEMORY[0x1E695F050] + 24);
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)size withOcclusionRegion:(CGRect)region andOutputCropScore:(double *)score
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  v10 = size.height;
  v11 = size.width;
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 suggestedCropForTargetSize:score withOcclusionRegion:v11 andOutputCropScore:{v10, x, y, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = PXOfflinePHAsset;
    [(PXOfflinePHAsset *)&v31 suggestedCropForTargetSize:score withOcclusionRegion:v11 andOutputCropScore:v10, x, y, width, height];
    v16 = v23;
    v18 = v24;
    v20 = v25;
    v22 = v26;
  }

  v27 = v16;
  v28 = v18;
  v29 = v20;
  v30 = v22;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)size withFocusRegion:(CGRect)region
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  v8 = size.height;
  v9 = size.width;
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 suggestedCropForTargetSize:v9 withFocusRegion:{v8, x, y, width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = PXOfflinePHAsset;
    [(PXOfflinePHAsset *)&v29 suggestedCropForTargetSize:v9 withFocusRegion:v8, x, y, width, height];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)suggestedCropForTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 suggestedCropForTargetSize:{width, height}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)bestCropRectForAspectRatio:(double)ratio
{
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 bestCropRectForAspectRatio:ratio];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = PXOfflinePHAsset;
    [(PXOfflinePHAsset *)&v23 bestCropRectForAspectRatio:ratio];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)faceAreaRect
{
  asset = [(PXOfflinePHAsset *)self asset];
  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 faceAreaRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PXOfflinePHAsset;
    [(PXOfflinePHAsset *)&v21 faceAreaRect];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)acceptableCropRect
{
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 acceptableCropRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PXOfflinePHAsset;
    [(PXOfflinePHAsset *)&v21 acceptableCropRect];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)preferredCropRect
{
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    [asset2 preferredCropRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PXOfflinePHAsset;
    [(PXOfflinePHAsset *)&v21 preferredCropRect];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)uuid
{
  asset = [(PXOfflinePHAsset *)self asset];

  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    uuid = [asset2 uuid];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXOfflinePHAsset;
    uuid = [(PXOfflinePHAsset *)&v7 uuid];
  }

  return uuid;
}

- (unint64_t)pixelHeight
{
  asset = [(PXOfflinePHAsset *)self asset];
  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    pixelHeight = [asset2 pixelHeight];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXOfflinePHAsset;
    pixelHeight = [(PXOfflinePHAsset *)&v7 pixelHeight];
  }

  return pixelHeight;
}

- (unint64_t)pixelWidth
{
  asset = [(PXOfflinePHAsset *)self asset];
  if (asset)
  {
    asset2 = [(PXOfflinePHAsset *)self asset];
    pixelWidth = [asset2 pixelWidth];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXOfflinePHAsset;
    pixelWidth = [(PXOfflinePHAsset *)&v7 pixelWidth];
  }

  return pixelWidth;
}

- (PHPhotoLibrary)photoLibrary
{
  asset = [(PXOfflinePHAsset *)self asset];
  photoLibrary = [asset photoLibrary];

  return photoLibrary;
}

- (PXOfflinePHAsset)initWithURL:(id)l matchingPHAsset:(id)asset
{
  lCopy = l;
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOfflinePHAsset.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [off_1E7721570 simpleImageDescriptionWithURL:lCopy];
  v10 = [(PXOfflinePHAsset *)self initWithDescription:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_asset, asset);
  }

  return v10;
}

- (PXOfflinePHAsset)initWithURL:(id)l matchingPHAssetUUID:(id)d
{
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOfflinePHAsset.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  v9 = [off_1E7721570 simpleImageDescriptionWithURL:lCopy];
  v19.receiver = self;
  v19.super_class = PXOfflinePHAsset;
  v10 = [(PXOfflinePHAsset *)&v19 initWithDescription:v9];

  if (v10 && (v11 = MEMORY[0x1E6978630], v20[0] = dCopy, [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "fetchAssetsWithUUIDs:options:", v12, 0), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), asset = v10->_asset, v10->_asset = v14, asset, v13, v12, !v10->_asset))
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  return v16;
}

+ (id)createOfflinePHAssetUsingOfflineAssets:(id)assets
{
  v3 = MEMORY[0x1E695DF70];
  assetsCopy = assets;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__PXOfflinePHAsset_createOfflinePHAssetUsingOfflineAssets___block_invoke;
  v21[3] = &unk_1E77375F8;
  v22 = v5;
  v7 = v6;
  v23 = v7;
  v8 = v5;
  [assetsCopy enumerateObjectsUsingBlock:v21];

  v9 = [MEMORY[0x1E6978630] fetchAssetsWithUUIDs:v8 options:0];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __59__PXOfflinePHAsset_createOfflinePHAssetUsingOfflineAssets___block_invoke_2;
  v18 = &unk_1E7737620;
  v19 = v7;
  v20 = v10;
  v11 = v10;
  v12 = v7;
  [v9 enumerateObjectsUsingBlock:&v15];
  v13 = [v11 copy];

  return v13;
}

void __59__PXOfflinePHAsset_createOfflinePHAssetUsingOfflineAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 assetUUID];
  [v3 addObject:v5];

  v8 = [v4 localAssetURL];
  v6 = *(a1 + 40);
  v7 = [v4 assetUUID];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

void __59__PXOfflinePHAsset_createOfflinePHAssetUsingOfflineAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PXOfflinePHAsset alloc];
  v5 = *(a1 + 32);
  v6 = [v3 uuid];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [(PXOfflinePHAsset *)v4 initWithURL:v7 matchingPHAsset:v3];

  [*(a1 + 40) addObject:v8];
}

@end