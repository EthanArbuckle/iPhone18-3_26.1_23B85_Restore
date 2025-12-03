@interface PUWallpaperPosterFaceCropUtilities
+ (CGRect)_getBoundingFaceRectFor:(id)for userInfo:(id)info visibleFrame:(CGRect)frame originalImage:(CGRect)image;
+ (CGRect)getSquareCropForVisibleFrame:(CGRect)frame layerStack:(id)stack userInfo:(id)info originalImage:(CGRect)image;
+ (double)_getNormalizedRectForSaliencyRect:(double)rect originalImage:(double)image visibleFrame:(double)frame;
+ (id)_getNormalizedFaceRects:(id)rects userInfo:(id)info originalImage:(CGRect)image visibleFrame:(CGRect)frame;
+ (uint64_t)_getBestCropForVisibleFrame:(double)frame preferredCropCrect:(double)crect acceptableCropRect:(double)rect faceRect:(double)faceRect;
@end

@implementation PUWallpaperPosterFaceCropUtilities

+ (id)_getNormalizedFaceRects:(id)rects userInfo:(id)info originalImage:(CGRect)image visibleFrame:(CGRect)frame
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = [info objectForKeyedSubscript:@"regions"];
  v8 = [v7 objectForKeyedSubscript:@"faces"];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        memset(&rect, 0, sizeof(rect));
        if (CGRectMakeWithDictionaryRepresentation(v15, &rect))
        {
          v16 = [MEMORY[0x1E696B098] valueWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v12);
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    v22 = *MEMORY[0x1E695F050];
    v23 = *(MEMORY[0x1E695F050] + 8);
    v24 = *(MEMORY[0x1E695F050] + 16);
    v25 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v34 + 1) + 8 * j) CGRectValue];
        [self _getNormalizedRectForSaliencyRect:*&frame.origin.x originalImage:*&frame.origin.y visibleFrame:{*&frame.size.width, *&frame.size.height}];
        x = v47.origin.x;
        y = v47.origin.y;
        width = v47.size.width;
        height = v47.size.height;
        v48.origin.x = v22;
        v48.origin.y = v23;
        v48.size.width = v24;
        v48.size.height = v25;
        if (!CGRectEqualToRect(v47, v48))
        {
          v31 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
          [v17 addObject:v31];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (CGRect)_getBoundingFaceRectFor:(id)for userInfo:(id)info visibleFrame:(CGRect)frame originalImage:(CGRect)image
{
  v82 = *MEMORY[0x1E69E9840];
  x = frame.origin.x;
  y = frame.origin.y;
  height = frame.size.height;
  width = frame.size.width;
  v6 = [self _getNormalizedFaceRects:for userInfo:info originalImage:image.origin.x visibleFrame:{image.origin.y, image.size.width, image.size.height, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  if ([v6 count] < 2)
  {
    if ([v6 count] == 1)
    {
      firstObject = [v6 firstObject];
      if (firstObject)
      {
        firstObject2 = [v6 firstObject];
        [firstObject2 CGRectValue];
        v16 = v57;
        v15 = v58;
        v14 = v59;
        v13 = v60;
      }

      else
      {
        v16 = *MEMORY[0x1E695F050];
        v15 = *(MEMORY[0x1E695F050] + 8);
        v14 = *(MEMORY[0x1E695F050] + 16);
        v13 = *(MEMORY[0x1E695F050] + 24);
      }
    }

    else
    {
      v16 = *MEMORY[0x1E695F050];
      v15 = *(MEMORY[0x1E695F050] + 8);
      v14 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v76 objects:v81 count:16];
    v13 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    if (v12)
    {
      v17 = v12;
      v18 = *v77;
      v13 = v10;
      v14 = v9;
      v15 = v8;
      v16 = v7;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v77 != v18)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v76 + 1) + 8 * i) CGRectValue];
          v88.origin.x = v20;
          v88.origin.y = v21;
          v88.size.width = v22;
          v88.size.height = v23;
          v83.origin.x = v16;
          v83.origin.y = v15;
          v83.size.width = v14;
          v83.size.height = v13;
          v84 = CGRectUnion(v83, v88);
          v16 = v84.origin.x;
          v15 = v84.origin.y;
          v14 = v84.size.width;
          v13 = v84.size.height;
        }

        v17 = [v11 countByEnumeratingWithState:&v76 objects:v81 count:16];
      }

      while (v17);
    }

    v67 = v7;

    PXRectDenormalize();
    if (v24 > width)
    {
      v25 = [v11 sortedArrayUsingComparator:&__block_literal_global];
      v26 = [v25 objectAtIndexedSubscript:{objc_msgSend(v25, "count") - 1}];
      [v26 CGRectValue];
      v65 = v27;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = [v25 objectAtIndexedSubscript:{objc_msgSend(v25, "count") - 2}];
      [v34 CGRectValue];
      v36 = v35;
      v38 = v37;

      if (v31 * v33 >= v36 * v38 * 1.1)
      {
        v13 = v33;
        v9 = v31;
        v8 = v29;
        v16 = v65;
      }

      else
      {
        v66 = v10;
        v85.origin.x = x;
        v85.origin.y = y;
        v85.size.height = height;
        v85.size.width = width;
        MidY = CGRectGetMidY(v85);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v40 = v11;
        v41 = [v40 countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v73;
          v44 = 1.79769313e308;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v73 != v43)
              {
                objc_enumerationMutation(v40);
              }

              [*(*(&v72 + 1) + 8 * j) CGRectValue];
              v47 = v46;
              v49 = v48;
              v51 = v50;
              v53 = v52;
              PXRectDenormalize();
              v54 = vabdd_f64(MidY, CGRectGetMidY(v86));
              if (v54 < v44)
              {
                v66 = v53;
                v67 = v47;
                v9 = v51;
                v44 = v54;
                v8 = v49;
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v72 objects:v80 count:16];
          }

          while (v42);
        }

        v13 = v66;
        v16 = v67;
      }

      v14 = v9;
      v15 = v8;
    }
  }

  v61 = v16;
  v62 = v15;
  v63 = v14;
  v64 = v13;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

uint64_t __98__PUWallpaperPosterFaceCropUtilities__getBoundingFaceRectFor_userInfo_visibleFrame_originalImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGRectValue];
  v6 = v5;
  v8 = v7;
  [v4 CGRectValue];
  v10 = v9;
  v12 = v11;

  if (v6 * v8 < v10 * v12)
  {
    return -1;
  }

  else
  {
    return v6 * v8 > v10 * v12;
  }
}

+ (uint64_t)_getBestCropForVisibleFrame:(double)frame preferredCropCrect:(double)crect acceptableCropRect:(double)rect faceRect:(double)faceRect
{
  [MEMORY[0x1E69C06A0] bestCropRectV2ForAspectRatio:frame withFocusRegion:crect sourcePixelWidth:0 sourcePixelHeight:1.0 sourcePreferredCropRectNormalized:*MEMORY[0x1E695F050] sourceAcceptableCropRectNormalized:*(MEMORY[0x1E695F050] + 8) sourceFaceAreaRectNormalized:*(MEMORY[0x1E695F050] + 16) outputCropScore:{*(MEMORY[0x1E695F050] + 24), *&rect, *&faceRect, *&a7, *&a8, a17, a18, a19, a20, a21, a22}];

  return PXRectDenormalize();
}

+ (double)_getNormalizedRectForSaliencyRect:(double)rect originalImage:(double)image visibleFrame:(double)frame
{
  v16 = *MEMORY[0x1E695F050];
  if (!CGRectEqualToRect(*&self, *MEMORY[0x1E695F050]))
  {
    PXRectDenormalize();
    v20.origin.x = a9;
    v20.origin.y = a10;
    v20.size.width = a11;
    v20.size.height = a12;
    CGRectIntersection(v19, v20);
    PXRectNormalize();
    return v17;
  }

  return v16;
}

+ (CGRect)getSquareCropForVisibleFrame:(CGRect)frame layerStack:(id)stack userInfo:(id)info originalImage:(CGRect)image
{
  height = image.size.height;
  width = image.size.width;
  y = image.origin.y;
  x = image.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  v71 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v65 = width;
  v66 = height;
  [self _getBoundingFaceRectFor:stack userInfo:infoCopy visibleFrame:v14 originalImage:{v13, v12, v11, x, y, width, height}];
  v63 = v18;
  v64 = v17;
  v61 = v19;
  v62 = v20;
  v21 = MEMORY[0x1E69BDDA8];
  memset(&rect, 0, sizeof(rect));
  v22 = [infoCopy objectForKeyedSubscript:@"regions"];
  v23 = [v22 objectForKeyedSubscript:@"acceptable"];

  v24 = v23;
  v25 = MEMORY[0x1E695F050];
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = CGRectMakeWithDictionaryRepresentation(v24, &rect);

    if (v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v27 = *(v25 + 16);
  rect.origin = *v25;
  rect.size = v27;
  v28 = PLWallpaperGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.origin.x) = 138412290;
    *(&buf.origin.x + 4) = v24;
    _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_ERROR, "Expected a rect value: %@", &buf, 0xCu);
  }

LABEL_9:
  v29 = *(v21 + 8);
  v30 = *(v21 + 24);
  [self _getNormalizedRectForSaliencyRect:rect.origin.x originalImage:rect.origin.y visibleFrame:{rect.size.width, rect.size.height, x, y, v65, v66, *&v14, *&v13, *&v12, *&v11}];
  v59 = v32;
  v60 = v31;
  v57 = v34;
  v58 = v33;
  memset(&buf, 0, sizeof(buf));
  v35 = [infoCopy objectForKeyedSubscript:@"regions"];
  v36 = [v35 objectForKeyedSubscript:@"preferred"];

  v37 = v36;
  if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v38 = CGRectMakeWithDictionaryRepresentation(v37, &buf);

    if (v38)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v39 = *(v25 + 16);
  buf.origin = *v25;
  buf.size = v39;
  v40 = PLWallpaperGetLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *v68 = 138412290;
    v69 = v37;
    _os_log_impl(&dword_1B36F3000, v40, OS_LOG_TYPE_ERROR, "Expected a rect value: %@", v68, 0xCu);
  }

LABEL_17:
  [self _getNormalizedRectForSaliencyRect:buf.origin.x originalImage:buf.origin.y visibleFrame:{*&buf.size, x, y, v65, v66, *&v14, *&v13, *&v12, *&v11}];
  [self _getBestCropForVisibleFrame:v14 preferredCropCrect:v13 acceptableCropRect:v12 faceRect:{v11, v41, v42, v43, v44, v60, v59, v58, v57, v64, v29 + v30 - (v61 + v62), v63, *&v62}];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = v46;
  v54 = v48;
  v55 = v50;
  v56 = v52;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

@end