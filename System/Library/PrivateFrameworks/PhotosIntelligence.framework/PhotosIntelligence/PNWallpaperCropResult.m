@interface PNWallpaperCropResult
+ (id)cropScoreSortDescriptorForOrientation:(int64_t)a3;
- (PNWallpaperCropResult)initWithAsset:(id)a3 classification:(unint64_t)a4 headroomFeasible:(BOOL)a5 withFaceRegions:(BOOL)a6;
- (id)cropForOrientation:(int64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation PNWallpaperCropResult

- (id)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"portraitCrop";
  v3 = [(PNWallpaperCropResult *)self portraitCrop];
  v4 = [v3 description];
  v9[1] = @"landscapeCrop";
  v10[0] = v4;
  v5 = [(PNWallpaperCropResult *)self landscapeCrop];
  v6 = [v5 description];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)cropForOrientation:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(PNWallpaperCropResult *)self landscapeCrop];
  }

  else if (a3 == 1)
  {
    v3 = [(PNWallpaperCropResult *)self portraitCrop];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PNWallpaperCropResult)initWithAsset:(id)a3 classification:(unint64_t)a4 headroomFeasible:(BOOL)a5 withFaceRegions:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v17.receiver = self;
  v17.super_class = PNWallpaperCropResult;
  v11 = [(PNWallpaperCropResult *)&v17 init];
  if (v11)
  {
    v12 = [[PNWallpaperCrop alloc] initWithAsset:v10 orientation:1 classification:a4 headroomFeasible:v7 withFaceRegions:v6];
    portraitCrop = v11->_portraitCrop;
    v11->_portraitCrop = v12;

    v14 = [[PNWallpaperCrop alloc] initWithAsset:v10 orientation:2 classification:a4 headroomFeasible:v7 withFaceRegions:v6];
    landscapeCrop = v11->_landscapeCrop;
    v11->_landscapeCrop = v14;
  }

  return v11;
}

+ (id)cropScoreSortDescriptorForOrientation:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = @"cropResult.portraitCrop.cropScore";
LABEL_5:
    v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v5 ascending:{0, v3}];

    return v6;
  }

  if (a3 == 2)
  {
    v5 = @"cropResult.landscapeCrop.cropScore";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end