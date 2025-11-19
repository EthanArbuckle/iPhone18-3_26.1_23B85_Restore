@interface PFCropUtilities
+ (BOOL)_rectIsValid:(CGRect)a3;
+ (CGFloat)_interpolationV2ScoreForFocusRegion:(double)a3 insideCropRect:(double)a4 withImportantRect:(double)a5;
+ (CGPoint)_translationToIncludeRect:(CGRect)a3 insideRect:(CGRect)a4;
+ (CGRect)_faceAreaRectWithPadding:(CGRect)a3;
+ (CGRect)bestCropRectV2ForAspectRatio:(double)a3 sourcePixelWidth:(unint64_t)a4 sourcePixelHeight:(unint64_t)a5 sourceEssentialAreaRect:(CGRect)a6 sourceSecondaryEssentialAreaRect:(CGRect)a7;
+ (CGRect)bestCropRectV2ForAspectRatio:(double)a3 sourcePixelWidth:(unint64_t)a4 sourcePixelHeight:(unint64_t)a5 sourceEssentialAreaRect:(CGRect)a6 sourceSecondaryEssentialAreaRect:(CGRect)a7 outputCropScore:(double *)a8;
+ (CGRect)bestCropRectV2ForAspectRatio:(double)a3 zoom:(double)a4 sourcePixelWidth:(unint64_t)a5 sourcePixelHeight:(unint64_t)a6 sourceEssentialAreaRect:(CGRect)a7 sourceSecondaryEssentialAreaRect:(CGRect)a8 outputCropScore:(double *)a9;
+ (CGSize)_interpolationCropSizeForRatio:(double)a3 andZoom:(double)a4 forImageSize:(CGSize)a5;
+ (PFCropUtilitiesPosterOutputData)bestAdaptiveCropRectForPosterClassification:(double)a3 layoutConfiguration:(double)a4 sourcePixelWidth:(double)a5 sourcePixelHeight:(double)a6 sourcePreferredCropRectNormalized:(double)a7 sourceAcceptableCropRectNormalized:(double)a8 sourceFaceAreaRectNormalized:(uint64_t)a9 headroomFeasible:(uint64_t)a10;
+ (double)_interpolationCropToSize:(double)a3 withinRect:(double)a4 withPreferredRect:(double)a5 andAcceptableRect:(double)a6 outputScore:(uint64_t)a7;
+ (double)_interpolationFactorFor:(double)a3 between:(double)a4 and:(double)a5;
+ (double)_interpolationV2AdjustedCrop:(double)a3 toFocusRegion:(double)a4 withFullsizeRect:(double)a5 andImportantRect:(double)a6;
+ (double)_interpolationV2CropForAspectRatio:(double)a3 withFocusRegion:(double)a4 andAcceptableRect:(double)a5 andPreferredRect:(uint64_t)a6 andImageRect:(uint64_t)a7 outputCropScore:(double *)a8;
+ (double)_rectDimensionOffset:(CGRect)a3 insideRect:(CGRect)a4 forEdge:(unsigned int)a5;
+ (double)_rectDimensionSize:(CGRect)a3 forEdge:(unsigned int)a4;
+ (double)bestCropRectV2ForPosterClassification:(uint64_t)a3 layoutConfiguration:(uint64_t)a4 sourcePixelWidth:(uint64_t)a5 sourcePixelHeight:(uint64_t)a6 sourcePreferredCropRectNormalized:(void *)a7 sourceAcceptableCropRectNormalized:(void *)a8 sourceFaceAreaRectNormalized:(__int128)a9 outputCropScore:(uint64_t)a10 outputLayoutScore:(uint64_t)a11 outputClockOverlapAcceptable:(_BYTE *)a12;
+ (uint64_t)_interpolationCropForAspectRatio:(uint64_t)a3 andZoom:(uint64_t)a4 acceptableRect:(uint64_t)a5 andPreferredRect:(double)a6 andImageRect:(double)a7 outputCropScore:(double)a8;
+ (uint64_t)_interpolationV2MaxCropSizeForAspectRatio:(double)a3 andZoom:(double)a4 withFocusRegion:(double)a5 forImageSize:(double)a6 withImportantRect:(double)a7;
+ (uint64_t)_interpolationV2ScoreAlongEdge:(double)a3 forCrop:(double)a4 withFullsizeRect:(double)a5 andPreferredRect:(double)a6 andAcceptableRect:(double)a7;
+ (uint64_t)_interpolationV2ScoreForCrop:(double)a3 withFullsizeRect:(double)a4 andPreferredRect:(double)a5 andAcceptableRect:(double)a6;
+ (uint64_t)bestCropRectV2ForAspectRatio:(CGFloat)a3 withFocusRegion:(CGFloat)a4 sourcePixelWidth:(CGFloat)a5 sourcePixelHeight:(CGFloat)a6 sourcePreferredCropRectNormalized:(uint64_t)a7 sourceAcceptableCropRectNormalized:(unint64_t)a8 sourceFaceAreaRectNormalized:(unint64_t)a9 outputCropScore:(double *)a10;
@end

@implementation PFCropUtilities

+ (CGRect)_faceAreaRectWithPadding:(CGRect)a3
{
  if (a3.size.width >= a3.size.height)
  {
    height = a3.size.height;
  }

  else
  {
    height = a3.size.width;
  }

  v4 = a3.origin.x + height * -0.1;
  v5 = a3.origin.y + height * -0.25;
  v6 = a3.size.width + height * 0.2;
  v7 = a3.size.height + height * 0.75;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGPoint)_translationToIncludeRect:(CGRect)a3 insideRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  [PFCropUtilities _rectDimensionOffset:"_rectDimensionOffset:insideRect:forEdge:" insideRect:0 forEdge:?];
  v20 = v12;
  [PFCropUtilities _rectDimensionOffset:2 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v19 = v13;
  [PFCropUtilities _rectDimensionOffset:1 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v18 = v14;
  [PFCropUtilities _rectDimensionOffset:3 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v16 = fmin(v15, 0.0) - fmin(v18, 0.0);
  v17 = fmin(v19, 0.0) - fmin(v20, 0.0);
  result.y = v16;
  result.x = v17;
  return result;
}

+ (double)_rectDimensionOffset:(CGRect)a3 insideRect:(CGRect)a4 forEdge:(unsigned int)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      MaxX = CGRectGetMaxX(a4);
      v21.origin.x = v12;
      v21.origin.y = v11;
      v21.size.width = v10;
      v21.size.height = v9;
      MaxY = CGRectGetMaxX(v21);
    }

    else
    {
      if (a5 != 3)
      {
        return a3.origin.x;
      }

      MaxX = CGRectGetMaxY(a4);
      v19.origin.x = v12;
      v19.origin.y = v11;
      v19.size.width = v10;
      v19.size.height = v9;
      MaxY = CGRectGetMaxY(v19);
    }

    a3.origin.x = MaxX - MaxY;
    return a3.origin.x;
  }

  if (!a5)
  {
    MinX = CGRectGetMinX(a3);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinX(v20);
    goto LABEL_9;
  }

  if (a5 == 1)
  {
    MinX = CGRectGetMinY(a3);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
LABEL_9:
    a3.origin.x = MinX - MinY;
  }

  return a3.origin.x;
}

+ (double)_rectDimensionSize:(CGRect)a3 forEdge:(unsigned int)a4
{
  result = a3.size.width;
  if (a4 > 1)
  {
    if (a4 != 3)
    {
      return result;
    }

    return a3.size.height;
  }

  if (a4 == 1)
  {
    return a3.size.height;
  }

  return result;
}

+ (BOOL)_rectIsValid:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    return 0;
  }

  v7 = height > 0.0;
  if (width <= 0.0)
  {
    v7 = 0;
  }

  if (y < 0.0)
  {
    v7 = 0;
  }

  return x >= 0.0 && v7;
}

+ (uint64_t)_interpolationV2ScoreAlongEdge:(double)a3 forCrop:(double)a4 withFullsizeRect:(double)a5 andPreferredRect:(double)a6 andAcceptableRect:(double)a7
{
  [PFCropUtilities _rectDimensionOffset:a1 insideRect:a2 forEdge:a3, a4, a5];
  v36 = v29;
  [PFCropUtilities _rectDimensionOffset:a11 insideRect:a12 forEdge:a13, a14, a15, a5, a6, a7, a8];
  v35 = v30;
  [PFCropUtilities _rectDimensionOffset:a11 insideRect:a16 forEdge:a17, a18, a19, a5, a6, a7, a8];
  v32 = v31;
  result = [PFCropUtilities _rectDimensionSize:a11 forEdge:a16, a17, a18, a19];
  if (v36 > 0.0)
  {
    if (v36 <= v35)
    {
      [PFCropUtilities _interpolationFactorFor:v36 between:0.0 and:?];
    }

    else if (v36 <= v32)
    {
      [PFCropUtilities _interpolationFactorFor:v36 between:v35 and:v32];
    }

    else
    {
      if (v36 > v32 + v34)
      {
        return result;
      }

      [PFCropUtilities _interpolationFactorFor:v36 between:v32 and:?];
    }

    return [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
  }

  return result;
}

+ (CGFloat)_interpolationV2ScoreForFocusRegion:(double)a3 insideCropRect:(double)a4 withImportantRect:(double)a5
{
  v23.origin.x = a5 + a1 * a7;
  v23.origin.y = a6 + a2 * a8;
  v23.size.width = a3 * a7;
  v23.size.height = a4 * a8;
  v21.origin.x = a9;
  v21.origin.y = a10;
  v21.size.width = a11;
  v21.size.height = a12;
  v22 = CGRectIntersection(v21, v23);
  return v22.size.width * v22.size.height / (a11 * a12);
}

+ (uint64_t)_interpolationV2ScoreForCrop:(double)a3 withFullsizeRect:(double)a4 andPreferredRect:(double)a5 andAcceptableRect:(double)a6
{
  [PFCropUtilities _interpolationV2ScoreAlongEdge:0 forCrop:a17 withFullsizeRect:a18 andPreferredRect:a19 andAcceptableRect:a20, a21, a22, a23, a24];
  [PFCropUtilities _interpolationV2ScoreAlongEdge:2 forCrop:a1 withFullsizeRect:a2 andPreferredRect:a3 andAcceptableRect:a4, a5, a6, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
  [PFCropUtilities _interpolationV2ScoreAlongEdge:1 forCrop:a1 withFullsizeRect:a2 andPreferredRect:a3 andAcceptableRect:a4, a5, a6, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
  return [PFCropUtilities _interpolationV2ScoreAlongEdge:3 forCrop:a1 withFullsizeRect:a2 andPreferredRect:a3 andAcceptableRect:a4, a5, a6, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
}

+ (double)_interpolationV2AdjustedCrop:(double)a3 toFocusRegion:(double)a4 withFullsizeRect:(double)a5 andImportantRect:(double)a6
{
  [PFCropUtilities _translationToIncludeRect:a13 insideRect:a14, a15, a16, a1 + a5 * a3, a2 + a6 * a4, a3 * a7, a4 * a8];
  v29 = a1 - v28;
  [PFCropUtilities _translationToIncludeRect:v29 insideRect:a2 - v30, a3, a4, a9, a10, a11, a12];
  return v29 + v31;
}

+ (uint64_t)_interpolationV2MaxCropSizeForAspectRatio:(double)a3 andZoom:(double)a4 withFocusRegion:(double)a5 forImageSize:(double)a6 withImportantRect:(double)a7
{
  v23 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  [PFCropUtilities _rectDimensionSize:0 forEdge:a9, a10, a11, a12];
  [PFCropUtilities _rectDimensionSize:1 forEdge:a9, a10, a11, a12];
  [PFCropUtilities _rectDimensionOffset:0 insideRect:a9 forEdge:a10, a11, a12, v23, v22, a7, a8];
  [PFCropUtilities _rectDimensionOffset:2 insideRect:a9 forEdge:a10, a11, a12, v23, v22, a7, a8];
  [PFCropUtilities _rectDimensionOffset:1 insideRect:a9 forEdge:a10, a11, a12, v23, v22, a7, a8];
  [PFCropUtilities _rectDimensionOffset:3 insideRect:a9 forEdge:a10, a11, a12, v23, v22, a7, a8];
  [PFCropUtilities _rectDimensionSize:0 forEdge:a3, a4, a5, a6];
  [PFCropUtilities _rectDimensionSize:1 forEdge:a3, a4, a5, a6];
  [PFCropUtilities _rectDimensionOffset:0 insideRect:a3 forEdge:a4, a5, a6, 0.0, 0.0, 1.0, 1.0];
  [PFCropUtilities _rectDimensionOffset:2 insideRect:a3 forEdge:a4, a5, a6, 0.0, 0.0, 1.0, 1.0];
  [PFCropUtilities _rectDimensionOffset:1 insideRect:a3 forEdge:a4, a5, a6, 0.0, 0.0, 1.0, 1.0];
  return [PFCropUtilities _rectDimensionOffset:3 insideRect:a3 forEdge:a4, a5, a6, 0.0, 0.0, 1.0, 1.0];
}

+ (double)_interpolationV2CropForAspectRatio:(double)a3 withFocusRegion:(double)a4 andAcceptableRect:(double)a5 andPreferredRect:(uint64_t)a6 andImageRect:(uint64_t)a7 outputCropScore:(double *)a8
{
  [PFCropUtilities _interpolationV2MaxCropSizeForAspectRatio:a1 andZoom:1.0 withFocusRegion:a2 forImageSize:a3 withImportantRect:a4, a5, a27, a28, a17, a18, a19, a20];
  [PFCropUtilities _interpolationCropToSize:a8 withinRect:a21 withPreferredRect:a22 andAcceptableRect:a23 outputScore:a24, a17, a18, a19, a20];
  [PFCropUtilities _interpolationV2AdjustedCrop:*&a25 toFocusRegion:*&a26 withFullsizeRect:*&a27 andImportantRect:*&a28, a17, a18, a19, a20];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (a8)
  {
    [PFCropUtilities _interpolationV2ScoreForCrop:v26 withFullsizeRect:v27 andPreferredRect:v28 andAcceptableRect:v29, a25, a26, a27, a28, a21, a22, a23, a24, a17, a18, a19, a20];
    v37 = v34;
    [PFCropUtilities _interpolationV2ScoreForFocusRegion:a2 insideCropRect:a3 withImportantRect:a4, a5, v30, v31, v32, v33, a17, a18, a19, a20];
    *a8 = v37 * v35;
  }

  return v30;
}

+ (double)_interpolationFactorFor:(double)a3 between:(double)a4 and:(double)a5
{
  v6 = a5 - a4;
  result = 0.5;
  if (v6 > 0.0)
  {
    return (a3 - a4) / v6;
  }

  return result;
}

+ (CGSize)_interpolationCropSizeForRatio:(double)a3 andZoom:(double)a4 forImageSize:(CGSize)a5
{
  width = a5.height * a3;
  if (a5.width < a5.height * a3)
  {
    width = a5.width;
  }

  v6 = width / a4;
  height = a5.width / a3;
  if (a5.height < height)
  {
    height = a5.height;
  }

  v8 = height / a4;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)_interpolationCropToSize:(double)a3 withinRect:(double)a4 withPreferredRect:(double)a5 andAcceptableRect:(double)a6 outputScore:(uint64_t)a7
{
  v66 = *MEMORY[0x1E69E9840];
  if (![PFCropUtilities _rectIsValid:a16]|| ![PFCropUtilities _rectIsValid:?])
  {
    v28 = fmax(a5 - a1, 0.0) * 0.5;
    if (a9)
    {
      v29 = 0.5005;
LABEL_45:
      *a9 = v29;
      return v28;
    }

    return v28;
  }

  if (a1 == 0.0 || a2 == 0.0 || (a1 == *MEMORY[0x1E69BDDB0] ? (v27 = a2 == *(MEMORY[0x1E69BDDB0] + 8)) : (v27 = 0), v27))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v61 = a1;
      v62 = 2048;
      v63 = a2;
      v64 = 2048;
      v65 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  PFSizeWithAspectRatioFittingSize();
  v56 = v31;
  v58 = v30;
  v32 = [PFCropUtilities _rectIsValid:a16, a17, a18, a19];
  v33 = [PFCropUtilities _rectIsValid:a12, a13, a14, a15];
  v35 = v33;
  v36 = a12;
  v37 = a14;
  v38 = a15;
  if (!v33)
  {
    v36 = a3 + a5 * 0.5 + v58 * -0.5;
    v34 = v56;
    v37 = v58;
    v38 = v56;
  }

  v39 = MEMORY[0x1E695EFF8];
  v40 = a1 < a18 && v32;
  v57 = v38;
  if (v40)
  {
    v67.origin.x = a16;
    v67.origin.y = a17;
    v67.size.width = a18;
    v67.size.height = a19;
    [PFCropUtilities _interpolationWithFactor:a1 / a18 between:CGRectGetMidX(v67) and:a16];
    v28 = v41;
    v42 = 2.0 - a1 / a18;
  }

  else
  {
    if (v32 && v33 && a1 < a14)
    {
      [PFCropUtilities _interpolationFactorFor:a1 between:a18 and:a14, v34, v36];
      v44 = v43;
      [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
      v28 = v45;
      v46 = 2.0;
    }

    else
    {
      if (a1 >= a5)
      {
        v42 = *MEMORY[0x1E695EFF8];
        v28 = *MEMORY[0x1E695EFF8];
        goto LABEL_28;
      }

      [PFCropUtilities _interpolationFactorFor:a1 between:v37 and:a5];
      v44 = v47;
      [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
      v28 = v48;
      v46 = 1.0;
    }

    v42 = (v46 - v44) * 0.5;
  }

LABEL_28:
  if (a2 < a19 && v32)
  {
    v68.origin.x = a16;
    v68.origin.y = a17;
    v68.size.width = a18;
    v68.size.height = a19;
    [PFCropUtilities _interpolationWithFactor:a2 / a19 between:CGRectGetMidY(v68) and:a17];
    v50 = 2.0 - a2 / a19;
    if (!a9)
    {
      return v28;
    }

    goto LABEL_42;
  }

  if (v32 && v35 && a2 < a15)
  {
    [PFCropUtilities _interpolationFactorFor:a2 between:a19 and:a15];
    v52 = v51;
    [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
    v53 = 2.0;
    goto LABEL_39;
  }

  if (a2 < a6)
  {
    [PFCropUtilities _interpolationFactorFor:a2 between:v57 and:?];
    v52 = v54;
    [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
    v53 = 1.0;
LABEL_39:
    v50 = (v53 - v52) * 0.5;
    if (!a9)
    {
      return v28;
    }

    goto LABEL_42;
  }

  v50 = *(v39 + 8);
  if (a9)
  {
LABEL_42:
    if (v42 >= v50)
    {
      v50 = v42;
    }

    v29 = (2.0 - v50) * 0.5;
    goto LABEL_45;
  }

  return v28;
}

+ (uint64_t)_interpolationCropForAspectRatio:(uint64_t)a3 andZoom:(uint64_t)a4 acceptableRect:(uint64_t)a5 andPreferredRect:(double)a6 andImageRect:(double)a7 outputCropScore:(double)a8
{
  [PFCropUtilities _interpolationCropSizeForRatio:a1 andZoom:a2 forImageSize:a18, a19];

  return [PFCropUtilities _interpolationCropToSize:"_interpolationCropToSize:withinRect:withPreferredRect:andAcceptableRect:outputScore:" withinRect:a5 withPreferredRect:? andAcceptableRect:? outputScore:?];
}

+ (double)bestCropRectV2ForPosterClassification:(uint64_t)a3 layoutConfiguration:(uint64_t)a4 sourcePixelWidth:(uint64_t)a5 sourcePixelHeight:(uint64_t)a6 sourcePreferredCropRectNormalized:(void *)a7 sourceAcceptableCropRectNormalized:(void *)a8 sourceFaceAreaRectNormalized:(__int128)a9 outputCropScore:(uint64_t)a10 outputLayoutScore:(uint64_t)a11 outputClockOverlapAcceptable:(_BYTE *)a12
{
  v14 = [a1 bestAdaptiveCropRectForPosterClassification:a9 layoutConfiguration:a10 sourcePixelWidth:a11 sourcePixelHeight:? sourcePreferredCropRectNormalized:? sourceAcceptableCropRectNormalized:? sourceFaceAreaRectNormalized:?];
  v15 = v14;
  if (a7)
  {
    [v14 cropScore];
    *a7 = v16;
  }

  if (a8)
  {
    [v15 layoutScore];
    *a8 = v17;
  }

  if (a12)
  {
    *a12 = [v15 clockOverlapAcceptable];
  }

  [v15 visibleRect];
  v19 = v18;

  return v19;
}

+ (PFCropUtilitiesPosterOutputData)bestAdaptiveCropRectForPosterClassification:(double)a3 layoutConfiguration:(double)a4 sourcePixelWidth:(double)a5 sourcePixelHeight:(double)a6 sourcePreferredCropRectNormalized:(double)a7 sourceAcceptableCropRectNormalized:(double)a8 sourceFaceAreaRectNormalized:(uint64_t)a9 headroomFeasible:(uint64_t)a10
{
  v25 = a18;
  v24 = a19;
  v26 = a16;
  v136 = *MEMORY[0x1E69E9840];
  v27 = a12;
  [v27 screenSize];
  v30 = v28;
  v31 = v29;
  if (v28 == 0.0 || v29 == 0.0 || (v28 == *MEMORY[0x1E69BDDB0] ? (v32 = v29 == *(MEMORY[0x1E69BDDB0] + 8)) : (v32 = 0), v32))
  {
    v101 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      *&buf[4] = v30;
      v132 = 2048;
      v133 = v31;
      v134 = 2048;
      v135 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  else
  {
    v101 = fabs(v28 / v29);
  }

  *buf = 0;
  if ([PFCropUtilities _rectIsValid:a16, a17, a18, a19])
  {
    v33 = 1.0 - (a17 + a19);
    v34 = *MEMORY[0x1E695F050];
    v35 = *(MEMORY[0x1E695F050] + 8);
    v36 = *(MEMORY[0x1E695F050] + 16);
    v37 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v34 = *MEMORY[0x1E695F050];
    v35 = *(MEMORY[0x1E695F050] + 8);
    v36 = *(MEMORY[0x1E695F050] + 16);
    v37 = *(MEMORY[0x1E695F050] + 24);
    v24 = v37;
    v25 = v36;
    v33 = v35;
    v26 = *MEMORY[0x1E695F050];
  }

  v102 = v33;
  v118 = a13;
  v120 = a14;
  v117 = v37;
  v116 = v36;
  v113 = v35;
  v121 = v34;
  [PFParallaxLayoutUtilities effectiveAcceptableRectForClassification:a11 havePetFaces:0 sourcePreferredCropRectNormalized:a1 sourceAcceptableCropRectNormalized:a2 sourceFaceAreaRectNormalized:a3 sourceGazeAreaRectNormalized:a4, a5, a6, a7, a8, *&v26, *&v33, *&v25, *&v24, *&v34, *&v35, *&v36, *&v37];
  v127 = v38;
  v129 = v39;
  v123 = v41;
  v125 = v40;
  [PFParallaxLayoutUtilities effectivePreferredRectForClassification:a11 havePetFaces:0 sourcePreferredCropRectNormalized:a1 sourceAcceptableCropRectNormalized:a2 sourceFaceAreaRectNormalized:a3, a4, a5, a6, a7, a8, *&v26, *&v102, *&v25, *&v24];
  v115 = v43;
  v110 = v45;
  v112 = v44;
  v108 = v42;
  if (a11 > 5)
  {
    v53 = 0.0;
    v52 = 0.0;
    v51 = 0.0;
    v50 = 0.0;
  }

  else
  {
    if (((1 << a11) & 0x39) != 0)
    {
      v46 = v121;
      v47 = v113;
      v48 = v116;
      v49 = v117;
      [PFCropUtilities bestCropRectV2ForAspectRatio:a13 withFocusRegion:a14 sourcePixelWidth:buf sourcePixelHeight:v101 sourcePreferredCropRectNormalized:v121 sourceAcceptableCropRectNormalized:v113 sourceFaceAreaRectNormalized:v116 outputCropScore:v117, v42, v43, v44, v45, *&v127, *&v129, *&v125, *&v123, *&a16, *&a17, *&a18, *&a19];
      goto LABEL_19;
    }

    v130 = 0;
    [PFCropUtilities bestCropRectV2ForAspectRatio:a13 sourcePixelWidth:a14 sourcePixelHeight:&v130 sourceEssentialAreaRect:v101 sourceSecondaryEssentialAreaRect:v127 outputCropScore:v129, v125, v123, v42, v43, v44, v45];
    *buf = v130;
  }

  v46 = v121;
  v47 = v113;
  v48 = v116;
  v49 = v117;
LABEL_19:
  v54 = [[PFParallaxLayoutHelper alloc] initWithPosterClassification:a11 initialRect:a15 imageSize:0 effectiveAcceptableRect:0 effectivePreferredRect:[PFParallaxLayoutUtilities layoutTypeFromLayoutConfiguration:?]hasTopEdgeContact:3 computeSpatial:v50 * v118 + 0.0 spatialPadding:v51 * v120 + 0.0 layoutType:v52 * v118 allowedLayoutStrategies:v53 * v120 layoutConfiguration:v118, v120, *&v127, *&v129, *&v125, *&v123, v108, v115, v112, v110, *&v46, *&v47, *&v48, *&v49, 0, v27];
  v55 = [PFParallaxLayoutUtilities computeLayoutWithHelper:v54];
  [v55 visibleRect];
  v60 = v56;
  v61 = v57;
  if (a13)
  {
    v60 = v56 / v118;
    v62 = v58 / v118;
  }

  else
  {
    v62 = 0.0;
  }

  v128 = v62;
  v63 = 0.0;
  if (a14)
  {
    v61 = v57 / v120;
    v63 = v59 / v120;
  }

  [v55 adaptiveVisibleRect];
  v68 = v67 / v118;
  if (a13)
  {
    v64 = v64 / v118;
  }

  else
  {
    v68 = 0.0;
  }

  v124 = v64;
  v126 = v68;
  v69 = v66 / v120;
  if (!a14)
  {
    v69 = 0.0;
  }

  v122 = v69;
  v70 = v65 / v120;
  if (!a14)
  {
    v70 = v65;
  }

  v119 = v70;
  v71 = [v55 clockOverlapAcceptableForLayoutConfiguration:v27];
  if ([v55 overlapStrategy] == 5)
  {
    [v55 maxClockShift];
    if (v72 > 0.0)
    {
      v71 = 1;
    }
  }

  [v55 adaptiveVisibleRect];
  v74 = v73;
  [v55 visibleRect];
  v76 = vabdd_f64(v74, v75);
  v77 = [v55 adaptiveStrategy];
  v78 = [v55 headroomStrategy] == 2;
  v80 = v76 > 0.00000999999975 && v77 == 2 || v78;
  v81 = v80 | v71;
  [v55 adaptiveVisibleRect];
  v83 = v82;
  [v55 visibleRect];
  v85 = v83 - v84;
  [v55 visibleRect];
  v86 = 1.0 - (v63 + v61);
  v88 = v85 / v87;
  [v55 adaptiveVisibleRect];
  v90 = v129 * v120 + 0.0 - v89;
  [v55 visibleRect];
  if (v90 / v91 >= 0.0)
  {
    v92 = v90 / v91;
  }

  else
  {
    v92 = 0.0;
  }

  v93 = [PFCropUtilitiesPosterOutputData alloc];
  [v55 cropScore];
  v95 = v94;
  [v55 layoutScore];
  v97 = v96;
  [v55 maxClockShift];
  v99 = -[PFCropUtilitiesPosterOutputData initWithVisibleRect:adaptiveVisibleRect:cropScore:layoutScore:clockOverlapAcceptable:headroomEngaged:adaptiveHeadroom:maxClockShift:layoutVariant:notificationRoom:](v93, "initWithVisibleRect:adaptiveVisibleRect:cropScore:layoutScore:clockOverlapAcceptable:headroomEngaged:adaptiveHeadroom:maxClockShift:layoutVariant:notificationRoom:", v81 & 1, v78, [v55 layoutVariant], v60, v86, v128, v63, v124, v119, v126, v122, v95, v97, *&v88, v98, *&v92);

  return v99;
}

+ (CGRect)bestCropRectV2ForAspectRatio:(double)a3 sourcePixelWidth:(unint64_t)a4 sourcePixelHeight:(unint64_t)a5 sourceEssentialAreaRect:(CGRect)a6 sourceSecondaryEssentialAreaRect:(CGRect)a7 outputCropScore:(double *)a8
{
  [a1 bestCropRectV2ForAspectRatio:a4 zoom:a5 sourcePixelWidth:a8 sourcePixelHeight:a3 sourceEssentialAreaRect:1.0 sourceSecondaryEssentialAreaRect:a6.origin.x outputCropScore:{a6.origin.y, a6.size.width, a6.size.height}];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (CGRect)bestCropRectV2ForAspectRatio:(double)a3 zoom:(double)a4 sourcePixelWidth:(unint64_t)a5 sourcePixelHeight:(unint64_t)a6 sourceEssentialAreaRect:(CGRect)a7 sourceSecondaryEssentialAreaRect:(CGRect)a8 outputCropScore:(double *)a9
{
  v12 = a5;
  v13 = a6;
  v14 = a7.origin.x * a5 + 0.0;
  v15 = a7.origin.y * a6 + 0.0;
  v16 = a7.size.width * a5;
  v17 = a7.size.height * a6;
  v33 = a8.origin.x * a5 + 0.0;
  v31 = a8.origin.y * a6 + 0.0;
  v18 = a8.size.width * a5;
  v19 = a8.size.height * a6;
  if ([PFCropUtilities _rectIsValid:v14, v15, v16, v17])
  {
    v42.origin.x = 0.0;
    v42.origin.y = 0.0;
    v37.origin.x = v14;
    v37.origin.y = v15;
    v37.size.width = v16;
    v37.size.height = v17;
    v42.size.width = v12;
    v42.size.height = v13;
    v38 = CGRectIntersection(v37, v42);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  if ([PFCropUtilities _rectIsValid:v33, v31, v18, v19])
  {
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v39.origin.x = v33;
    v39.origin.y = v31;
    v39.size.width = v18;
    v39.size.height = v19;
    v43.size.width = v12;
    v43.size.height = v13;
    v40 = CGRectIntersection(v39, v43);
  }

  else
  {
    v40.origin.y = 0.0;
    v40.size.height = v13;
    v40.size.width = v12;
    v40.origin.x = 0.0;
  }

  v36 = 0;
  [PFCropUtilities _interpolationCropForAspectRatio:&v36 andZoom:a3 acceptableRect:a4 andPreferredRect:x andImageRect:y outputCropScore:width, height, *&v40.origin.x, *&v40.origin.y, *&v40.size.width, *&v40.size.height, 0, 0, *&v12, *&v13];
  v26 = v25;
  if (a9)
  {
    *a9 = v36;
  }

  v27 = 0.0;
  if (!a5)
  {
    v28 = 0.0;
    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v22 = v22 / v12;
  v28 = v24 / v12;
  if (a6)
  {
LABEL_11:
    v23 = v23 / v13;
    v27 = v26 / v13;
  }

LABEL_12:
  v29 = 1.0 - (v27 + v23);
  result.size.height = v27;
  result.size.width = v28;
  result.origin.y = v29;
  result.origin.x = v22;
  return result;
}

+ (CGRect)bestCropRectV2ForAspectRatio:(double)a3 sourcePixelWidth:(unint64_t)a4 sourcePixelHeight:(unint64_t)a5 sourceEssentialAreaRect:(CGRect)a6 sourceSecondaryEssentialAreaRect:(CGRect)a7
{
  [PFCropUtilities bestCropRectV2ForAspectRatio:a4 sourcePixelWidth:a5 sourcePixelHeight:0 sourceEssentialAreaRect:a3 sourceSecondaryEssentialAreaRect:a6.origin.x outputCropScore:a6.origin.y, a6.size.width, a6.size.height];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (uint64_t)bestCropRectV2ForAspectRatio:(CGFloat)a3 withFocusRegion:(CGFloat)a4 sourcePixelWidth:(CGFloat)a5 sourcePixelHeight:(CGFloat)a6 sourcePreferredCropRectNormalized:(uint64_t)a7 sourceAcceptableCropRectNormalized:(unint64_t)a8 sourceFaceAreaRectNormalized:(unint64_t)a9 outputCropScore:(double *)a10
{
  v27 = a8;
  v28 = a9;
  v68 = a15 * a9 + 0.0;
  v69 = a16 * a8;
  r1 = a14 * a8 + 0.0;
  v62 = a17 * a9;
  r1_24 = a19 * a9 + 0.0;
  v74 = a18 * a8 + 0.0;
  r1_8 = a20 * a8;
  height = a21 * a9;
  v31 = *MEMORY[0x1E695F050];
  v30 = *(MEMORY[0x1E695F050] + 8);
  v33 = *(MEMORY[0x1E695F050] + 16);
  v32 = *(MEMORY[0x1E695F050] + 24);
  v34 = [PFCropUtilities _rectIsValid:?];
  v79 = v27;
  v67 = height;
  v77 = v30;
  v78 = v31;
  v75 = v32;
  v76 = v33;
  if (!v34)
  {
    *&v61[16] = v33;
    *&v61[24] = v32;
    *v61 = v31;
    *&v61[8] = v30;
    width = r1_8;
    y = r1_24;
    x = v74;
    v39 = v27;
LABEL_9:
    v38 = v62;
    goto LABEL_10;
  }

  x = a22 * v27 + 0.0;
  y = (1.0 - (a23 + a25)) * v28 + 0.0;
  width = a24 * v27;
  height = a25 * v28;
  *&v61[16] = a24 * v27;
  *&v61[24] = a25 * v28;
  *v61 = x;
  *&v61[8] = y;
  if (![PFCropUtilities _rectIsValid:x, y, a24 * v27, a25 * v28])
  {
    height = v67;
    width = r1_8;
    y = r1_24;
    x = v74;
    v39 = v27;
    goto LABEL_9;
  }

  if ([PFCropUtilities _rectIsValid:v74, r1_24, r1_8, v67])
  {
    v81.origin.x = v74;
    v81.origin.y = r1_24;
    v81.size.width = r1_8;
    v81.size.height = v67;
    v92.origin.x = a22 * v27 + 0.0;
    v92.origin.y = (1.0 - (a23 + a25)) * v28 + 0.0;
    v92.size.width = a24 * v27;
    v92.size.height = a25 * v28;
    v82 = CGRectUnion(v81, v92);
    x = v82.origin.x;
    y = v82.origin.y;
    width = v82.size.width;
    height = v82.size.height;
  }

  v38 = v62;
  v39 = v27;
  if ([PFCropUtilities _rectIsValid:r1, v68, v69, v62])
  {
    [a1 _faceAreaRectWithPadding:{*v61, *&v61[8], *&v61[16], *&v61[24]}];
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = v27;
    v93.size.height = v28;
    v94 = CGRectIntersection(v83, v93);
    v84.origin.x = r1;
    v84.origin.y = v68;
    v84.size.width = v69;
    v84.size.height = v62;
    v85 = CGRectUnion(v84, v94);
    v69 = v85.size.width;
    r1 = v85.origin.x;
    v68 = v85.origin.y;
    v38 = v85.size.height;
  }

LABEL_10:
  if ([PFCropUtilities _rectIsValid:x, y, width, height])
  {
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    v95.size.width = v39;
    v95.size.height = v28;
    v87 = CGRectIntersection(v86, v95);
    v77 = v87.origin.y;
    v78 = v87.origin.x;
    v75 = v87.size.height;
    v76 = v87.size.width;
  }

  if ([PFCropUtilities _rectIsValid:r1, v68, v69, v38])
  {
    v88.origin.x = r1;
    v88.origin.y = v68;
    v88.size.width = v69;
    v88.size.height = v38;
    v96.origin.y = v77;
    v96.origin.x = v78;
    v96.size.height = v75;
    v96.size.width = v76;
    v89 = CGRectUnion(v88, v96);
    v97.origin.x = 0.0;
    v97.origin.y = 0.0;
    v97.size.width = v39;
    v97.size.height = v28;
    v90 = CGRectIntersection(v89, v97);
    v40 = v90.origin.x;
    v41 = v90.origin.y;
    v42 = v90.size.width;
    v43 = v90.size.height;
  }

  else
  {
    v42 = v39;
    v41 = 0.0;
    v43 = v28;
    v40 = 0.0;
  }

  v80 = 0.0;
  if (![a1 _rectIsValid:{a3, a4, a5, a6}] || (v98.origin.x = 0.0, v98.origin.y = 0.0, v98.size.width = 1.0, v98.size.height = 1.0, v91.origin.x = a3, v91.origin.y = a4, v91.size.width = a5, v91.size.height = a6, CGRectEqualToRect(v91, v98)) || !objc_msgSend(a1, "_rectIsValid:", v78, v77, v76, v75) || !objc_msgSend(a1, "_rectIsValid:", v40, v41, v42, v43))
  {
    v57 = v43;
    v56 = v42;
    v55 = v40;
    v46 = v77;
    v47 = v78;
    v44 = v75;
    v45 = v76;
    result = [PFCropUtilities _interpolationCropForAspectRatio:&v80 acceptableRect:a2 andPreferredRect:v78 andImageRect:v77 outputCropScore:v76, v75, *&v55, *&v41, *&v56, *&v57, 0, 0, *&v79, *&v28];
    if (!a10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v60 = v43;
  v59 = v42;
  v58 = v40;
  v44 = v75;
  v45 = v76;
  v46 = v77;
  v47 = v78;
  result = [PFCropUtilities _interpolationV2CropForAspectRatio:&v80 withFocusRegion:a2 andAcceptableRect:a3 andPreferredRect:1.0 - (a4 + a6) andImageRect:a5 outputCropScore:a6, *&v78, *&v77, *&v76, *&v75, *&v58, *&v41, *&v59, *&v60, 0, 0, *&v79, *&v28];
  if (a10)
  {
LABEL_22:
    *a10 = v80;
  }

LABEL_23:
  if (v80 < 0.5 && v34)
  {
    v99.origin.x = v47;
    v99.origin.y = v46;
    v99.size.width = v45;
    v99.size.height = v44;
    v50 = CGRectEqualToRect(*v61, v99);
    if (v50)
    {
      v51 = v74;
    }

    else
    {
      v51 = *v61;
    }

    if (v50)
    {
      v52 = r1_24;
    }

    else
    {
      v52 = *&v61[8];
    }

    if (v50)
    {
      v53 = r1_8;
    }

    else
    {
      v53 = *&v61[16];
    }

    if (v50)
    {
      v54 = v67;
    }

    else
    {
      v54 = *&v61[24];
    }

    return [PFCropUtilities _interpolationCropForAspectRatio:0 acceptableRect:a2 andPreferredRect:v51 andImageRect:v52 outputCropScore:v53, v54, *&v47, *&v46, *&v45, *&v44, 0, 0, *&v79, *&v28];
  }

  return result;
}

@end