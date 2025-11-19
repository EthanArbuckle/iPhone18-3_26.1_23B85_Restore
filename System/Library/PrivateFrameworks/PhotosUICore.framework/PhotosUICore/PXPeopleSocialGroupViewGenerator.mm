@interface PXPeopleSocialGroupViewGenerator
+ (id)_faceCropFetchOptionsForSocialGroup:(id)a3 withSize:(CGSize)a4 displayScale:(double)a5;
+ (id)generateViewForSocialGroup:(id)a3 withSize:(CGSize)a4 displayScale:(double)a5;
+ (id)indexesThatNeedPortraitCropsForNumberOfFaces:(unint64_t)a3;
+ (unint64_t)_numberOfFacesToShowForSocialGroup:(id)a3;
+ (void)_layoutAvatarViews:(id)a3 inFrame:(CGRect)a4;
+ (void)prefetchForSocialGroup:(id)a3 withSize:(CGSize)a4 displayScale:(double)a5;
+ (void)resizeThumbnailSizeForSocialGroupView:(id)a3 withSize:(CGSize)a4;
@end

@implementation PXPeopleSocialGroupViewGenerator

+ (void)_layoutAvatarViews:(id)a3 inFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  a3;
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetWidth(v8);
  [MEMORY[0x1E69DCEB0] px_mainScreen];
  [objc_claimAutoreleasedReturnValue() scale];
  PXFloatFloorToPixel();
}

+ (unint64_t)_numberOfFacesToShowForSocialGroup:(id)a3
{
  result = [a3 count];
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

+ (id)_faceCropFetchOptionsForSocialGroup:(id)a3 withSize:(CGSize)a4 displayScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [PXPeopleSocialGroupViewGenerator _numberOfFacesToShowForSocialGroup:v8];
  v11 = [PXPeopleSocialGroupViewGenerator indexesThatNeedPortraitCropsForNumberOfFaces:v10];
  if (v10)
  {
    v12 = 0;
    v13 = 72 * v10 - 72;
    v14 = &yFactors + v13;
    v15 = &xFactors + v13;
    do
    {
      v16 = width * *&v15[8 * v12];
      v17 = height * *&v14[8 * v12];
      v18 = [PXPeopleFaceCropFetchOptions alloc];
      v19 = [v8 objectAtIndexedSubscript:v12];
      v20 = [(PXPeopleFaceCropFetchOptions *)v18 initWithPerson:v19 targetSize:v16 displayScale:v17, a5];

      if ([v11 containsIndex:v12])
      {
        [(PXPeopleFaceCropFetchOptions *)v20 setCropFactor:3];
      }

      if (v10 != 1)
      {
        [(PXPeopleFaceCropFetchOptions *)v20 setCornerStyle:0];
      }

      [v9 addObject:v20];

      ++v12;
    }

    while (v10 != v12);
  }

  return v9;
}

+ (id)indexesThatNeedPortraitCropsForNumberOfFaces:(unint64_t)a3
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (a3 > 9)
  {
    goto LABEL_11;
  }

  v7 = v6;
  if (((1 << a3) & 0x252) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << a3) & 0xA4) == 0)
  {
    if (((1 << a3) & 0x108) != 0)
    {
      v8 = 0;
      goto LABEL_7;
    }

LABEL_11:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXPeopleSocialGroupViewGenerator.m" lineNumber:110 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [v6 addIndex:0];
  v8 = 1;
LABEL_7:
  [v7 addIndex:v8];
LABEL_8:
  v9 = [v7 copy];

  return v9;
}

+ (void)resizeThumbnailSizeForSocialGroupView:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [v7 frame];
  v9 = v8;
  [v7 frame];
  [v7 setFrame:v9];
  v10 = [v7 subviews];

  [a1 _layoutAvatarViews:v10 inFrame:{0.0, 0.0, width, height}];
}

+ (void)prefetchForSocialGroup:(id)a3 withSize:(CGSize)a4 displayScale:(double)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [PXPeopleSocialGroupViewGenerator _faceCropFetchOptionsForSocialGroup:a3 withSize:a4.width displayScale:a4.height, a5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[PXPeopleFaceCropManager sharedManager];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __81__PXPeopleSocialGroupViewGenerator_prefetchForSocialGroup_withSize_displayScale___block_invoke;
        v12[3] = &unk_1E7745FE8;
        v12[4] = v10;
        [v11 requestFaceCropForOptions:v10 resultHandler:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __81__PXPeopleSocialGroupViewGenerator_prefetchForSocialGroup_withSize_displayScale___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"PXPeopleErrorKey"];
  if (v4)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) person];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "PXPeopleSocialGroupViewGenerator: error prefetching face crop: %@ for person: %@", &v7, 0x16u);
    }
  }
}

+ (id)generateViewForSocialGroup:(id)a3 withSize:(CGSize)a4 displayScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PXPeopleSocialGroupViewGenerator.m" lineNumber:34 description:{@"%s must be called on the main thread", "+[PXPeopleSocialGroupViewGenerator generateViewForSocialGroup:withSize:displayScale:]"}];
  }

  if (height != width)
  {
    PXAssertGetLog();
  }

  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, width, height}];
  v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v25 = v10;
  [PXPeopleSocialGroupViewGenerator _faceCropFetchOptionsForSocialGroup:v10 withSize:width displayScale:height, a5];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v14 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        [v11 addSubview:v19];
        [v19 setBackgroundColor:v13];
        [v19 setAccessibilityIgnoresInvertColors:1];
        v20 = +[PXPeopleFaceCropManager sharedManager];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __85__PXPeopleSocialGroupViewGenerator_generateViewForSocialGroup_withSize_displayScale___block_invoke;
        v27[3] = &unk_1E7745FC0;
        v28 = v19;
        v29 = v18;
        v21 = v19;
        [v20 requestFaceCropForOptions:v18 resultHandler:v27];
      }

      v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v22 = [v11 subviews];
  [PXPeopleSocialGroupViewGenerator _layoutAvatarViews:v22 inFrame:0.0, 0.0, width, height];

  return v11;
}

void __85__PXPeopleSocialGroupViewGenerator_generateViewForSocialGroup_withSize_displayScale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  a3;
  *(a1 + 32);
  v5;
  px_dispatch_on_main_queue();
}

void __85__PXPeopleSocialGroupViewGenerator_generateViewForSocialGroup_withSize_displayScale___block_invoke_2(uint64_t a1)
{
  v11 = [*(a1 + 32) objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
  [v11 CGRectValue];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) layer];
  [v10 setContentsRect:{v3, v5, v7, v9}];

  [*(a1 + 40) setImage:*(a1 + 48)];
}

@end