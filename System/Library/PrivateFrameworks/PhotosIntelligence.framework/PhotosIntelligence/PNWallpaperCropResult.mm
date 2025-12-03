@interface PNWallpaperCropResult
+ (id)cropScoreSortDescriptorForOrientation:(int64_t)orientation;
- (PNWallpaperCropResult)initWithAsset:(id)asset classification:(unint64_t)classification headroomFeasible:(BOOL)feasible withFaceRegions:(BOOL)regions;
- (id)cropForOrientation:(int64_t)orientation;
- (id)dictionaryRepresentation;
@end

@implementation PNWallpaperCropResult

- (id)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"portraitCrop";
  portraitCrop = [(PNWallpaperCropResult *)self portraitCrop];
  v4 = [portraitCrop description];
  v9[1] = @"landscapeCrop";
  v10[0] = v4;
  landscapeCrop = [(PNWallpaperCropResult *)self landscapeCrop];
  v6 = [landscapeCrop description];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)cropForOrientation:(int64_t)orientation
{
  if (orientation == 2)
  {
    landscapeCrop = [(PNWallpaperCropResult *)self landscapeCrop];
  }

  else if (orientation == 1)
  {
    landscapeCrop = [(PNWallpaperCropResult *)self portraitCrop];
  }

  else
  {
    landscapeCrop = 0;
  }

  return landscapeCrop;
}

- (PNWallpaperCropResult)initWithAsset:(id)asset classification:(unint64_t)classification headroomFeasible:(BOOL)feasible withFaceRegions:(BOOL)regions
{
  regionsCopy = regions;
  feasibleCopy = feasible;
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = PNWallpaperCropResult;
  v11 = [(PNWallpaperCropResult *)&v17 init];
  if (v11)
  {
    v12 = [[PNWallpaperCrop alloc] initWithAsset:assetCopy orientation:1 classification:classification headroomFeasible:feasibleCopy withFaceRegions:regionsCopy];
    portraitCrop = v11->_portraitCrop;
    v11->_portraitCrop = v12;

    v14 = [[PNWallpaperCrop alloc] initWithAsset:assetCopy orientation:2 classification:classification headroomFeasible:feasibleCopy withFaceRegions:regionsCopy];
    landscapeCrop = v11->_landscapeCrop;
    v11->_landscapeCrop = v14;
  }

  return v11;
}

+ (id)cropScoreSortDescriptorForOrientation:(int64_t)orientation
{
  if (orientation == 1)
  {
    v5 = @"cropResult.portraitCrop.cropScore";
LABEL_5:
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v5 ascending:{0, v3}];

    return v6;
  }

  if (orientation == 2)
  {
    v5 = @"cropResult.landscapeCrop.cropScore";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end