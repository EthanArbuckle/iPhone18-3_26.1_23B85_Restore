@interface PHFace(PhotosUICore)
+ (id)px_fetchKeyFaceForPerson:()PhotosUICore options:;
- (BOOL)px_isHuman;
- (double)px_cropRectWithCropFactor:()PhotosUICore bounded:;
- (uint64_t)px_cropRectForPortraitImage:()PhotosUICore;
- (uint64_t)px_faceTileSizeAdjustingForImageAspectRatio:()PhotosUICore;
- (uint64_t)px_normalizedCenterEyeLine;
@end

@implementation PHFace(PhotosUICore)

- (BOOL)px_isHuman
{
  v1 = [a1 detectionType];

  return [PXPeopleUtilities isDetectionTypeHuman:v1];
}

- (uint64_t)px_normalizedCenterEyeLine
{
  [a1 centerX];
  if (v2 == 0.0)
  {
    [a1 bodyWidth];
    v4 = v3;
    [a1 bodyHeight];
    v6 = fmin(v4, v5);
    [a1 px_faceTileSizeAdjustingForImageAspectRatio:{v6, v6}];
    [a1 bodyCenterY];
    return [a1 bodyCenterX];
  }

  else
  {
    [a1 size];
    [a1 px_faceTileSizeAdjustingForImageAspectRatio:{v8, v8}];
    [a1 centerY];
    return [a1 centerX];
  }
}

- (uint64_t)px_faceTileSizeAdjustingForImageAspectRatio:()PhotosUICore
{
  v6 = MEMORY[0x1E69C07D8];
  v7 = [a1 sourceWidth];
  v8 = [a1 sourceHeight];

  return [v6 faceTileSizeAdjustingForImageAspectRatio:a2 imgWidth:a3 imgHeight:{v7, v8}];
}

- (double)px_cropRectWithCropFactor:()PhotosUICore bounded:
{
  [a1 size];
  v8 = v7;
  [a1 centerX];
  v10 = v9;
  [a1 centerY];
  v12 = v11;
  if (fabs(v8) < 0.00000011920929)
  {
    [a1 bodyWidth];
    v14 = v13;
    [a1 bodyHeight];
    v8 = fmin(v14, v15);
    [a1 bodyCenterX];
    v10 = v16;
    [a1 bodyCenterY];
    v12 = v17;
  }

  [a1 px_faceTileSizeAdjustingForImageAspectRatio:{v8 * a2, v8 * a2}];
  width = v18;
  height = v20;
  x = v10 - v18 * 0.5;
  y = 1.0 - v12 - v20 * 0.5;
  if (a4)
  {
    if (x < 0.0)
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v28 = CGRectOffset(v27, -x, 0.0);
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
    }

    if (y < 0.0)
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v30 = CGRectOffset(v29, 0.0, -y);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
    }

    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (CGRectGetMaxX(v31) > 1.0)
    {
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v24 = 1.0 - CGRectGetMaxX(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectOffset(v33, v24, 0.0);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (CGRectGetMaxY(v35) > 1.0)
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v25 = 1.0 - CGRectGetMaxY(v36);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      *&x = CGRectOffset(v37, 0.0, v25);
    }
  }

  return x;
}

- (uint64_t)px_cropRectForPortraitImage:()PhotosUICore
{
  [a1 centerX];
  if (v5 == 0.0)
  {
    [a1 bodyCenterX];
    v7 = v6;
    [a1 bodyCenterY];
    v9 = v8;
    [a1 bodyWidth];
    v11 = v10;
    [a1 bodyHeight];
    v13 = fmin(v11, v12);
  }

  else
  {
    [a1 centerX];
    v7 = v14;
    [a1 centerY];
    v9 = v15;
    [a1 size];
    v13 = v16;
  }

  v17 = MEMORY[0x1E69C07D8];
  v18 = [a1 sourceWidth];
  v19 = [a1 sourceHeight];

  return [v17 getCropRectForPortraitImage:a3 size:v13 imgWidth:v18 imgHeight:v19 centerX:v7 centerY:v9];
}

+ (id)px_fetchKeyFaceForPerson:()PhotosUICore options:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 fetchKeyFaceForPerson:v6 options:a4];
  v8 = v7;
  if (v6 && v7 && ![v7 count])
  {
    v9 = [v6 photoLibrary];
    v10 = [v9 isReadyForAnalysis_FOR_UI_USE_ONLY];

    v11 = PLUIGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v6 localIdentifier];
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Library is ready for analysis; marking person as needing key face: %{public}@", &v16, 0xCu);
      }

      [v6 markAsNeedingKeyFace];
    }

    else
    {
      if (v12)
      {
        v14 = [v6 localIdentifier];
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Library isn't ready for analysis; not marking person as needing key face: %{public}@", &v16, 0xCu);
      }
    }
  }

  return v8;
}

@end