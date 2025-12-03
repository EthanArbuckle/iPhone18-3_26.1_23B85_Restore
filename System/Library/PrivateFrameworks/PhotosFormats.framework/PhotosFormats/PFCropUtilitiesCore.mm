@interface PFCropUtilitiesCore
+ (CGFloat)_interpolationV2ScoreForFocusRegion:(double)region insideCropRect:(double)rect withImportantRect:(double)importantRect;
+ (CGPoint)_translationToIncludeRect:(CGRect)rect insideRect:(CGRect)insideRect;
+ (CGRect)_faceAreaRectWithPadding:(CGRect)padding;
+ (CGSize)_interpolationCropSizeForRatio:(double)ratio andZoom:(double)zoom forImageSize:(CGSize)size;
+ (double)_curatedLibraryAdjustedRectWithFaceAreaRect:(double)rect proposedCropRect:(double)cropRect assetRect:(CGFloat)assetRect verticalContentMode:(CGFloat)mode;
+ (double)_interpolationCropToSize:(double)size withinRect:(double)rect withPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect outputScore:(uint64_t)score;
+ (double)_interpolationFactorFor:(double)for between:(double)between and:(double)and;
+ (double)_interpolationV2AdjustedCrop:(double)crop toFocusRegion:(double)region withFullsizeRect:(double)rect andImportantRect:(double)importantRect;
+ (double)_interpolationV2CropForAspectRatio:(double)ratio withFocusRegion:(double)region andAcceptableRect:(double)rect andPreferredRect:(uint64_t)preferredRect andImageRect:(uint64_t)imageRect outputCropScore:(double *)score;
+ (double)_rectDimensionOffset:(CGRect)offset insideRect:(CGRect)rect forEdge:(unsigned int)edge;
+ (double)_rectDimensionSize:(CGRect)size forEdge:(unsigned int)edge;
+ (uint64_t)_interpolationCropForAspectRatio:(uint64_t)ratio andZoom:(uint64_t)zoom acceptableRect:(uint64_t)rect andPreferredRect:(double)preferredRect andImageRect:(double)imageRect outputCropScore:(double)score;
+ (uint64_t)_interpolationV2MaxCropSizeForAspectRatio:(double)ratio andZoom:(double)zoom withFocusRegion:(double)region forImageSize:(double)size withImportantRect:(double)rect;
+ (uint64_t)_interpolationV2ScoreAlongEdge:(double)edge forCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect;
+ (uint64_t)_interpolationV2ScoreForCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect;
+ (uint64_t)bestCropRectV2ForAspectRatio:(CGFloat)ratio withFocusRegion:(double)region sourcePixelWidth:(double)width sourcePixelHeight:(uint64_t)height sourcePreferredCropRectNormalized:(uint64_t)normalized sourceAcceptableCropRectNormalized:(unint64_t)rectNormalized sourceFaceAreaRectNormalized:(unint64_t)areaRectNormalized outputCropScore:(double *)self0;
+ (void)_curatedLibraryCropForAspectRatio:(CGFloat)ratio verticalContentMode:(CGFloat)mode cropMode:(CGFloat)cropMode sourcePixelWidth:(uint64_t)width sourcePixelHeight:(uint64_t)height sourcePreferredCropRectNormalized:(uint64_t)normalized sourceAcceptableCropRectNormalized:(uint64_t)rectNormalized sourceFaceAreaRectNormalized:(unint64_t)self0;
@end

@implementation PFCropUtilitiesCore

+ (CGPoint)_translationToIncludeRect:(CGRect)rect insideRect:(CGRect)insideRect
{
  height = insideRect.size.height;
  width = insideRect.size.width;
  y = insideRect.origin.y;
  x = insideRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  [PFCropUtilitiesCore _rectDimensionOffset:"_rectDimensionOffset:insideRect:forEdge:" insideRect:0 forEdge:?];
  v20 = v12;
  [PFCropUtilitiesCore _rectDimensionOffset:2 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v19 = v13;
  [PFCropUtilitiesCore _rectDimensionOffset:1 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v18 = v14;
  [PFCropUtilitiesCore _rectDimensionOffset:3 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v16 = fmin(v15, 0.0) - fmin(v18, 0.0);
  v17 = fmin(v19, 0.0) - fmin(v20, 0.0);
  result.y = v16;
  result.x = v17;
  return result;
}

+ (double)_rectDimensionOffset:(CGRect)offset insideRect:(CGRect)rect forEdge:(unsigned int)edge
{
  v5 = rect.origin.x + rect.size.width - (offset.origin.x + offset.size.width);
  x = rect.origin.y + rect.size.height - (offset.origin.y + offset.size.height);
  if (edge != 3)
  {
    x = offset.origin.x;
  }

  if (edge != 2)
  {
    v5 = x;
  }

  result = offset.origin.x - rect.origin.x;
  v8 = offset.origin.y - rect.origin.y;
  if (edge != 1)
  {
    v8 = result;
  }

  if (edge)
  {
    result = v8;
  }

  if (edge > 1)
  {
    return v5;
  }

  return result;
}

+ (CGRect)_faceAreaRectWithPadding:(CGRect)padding
{
  if (padding.size.width >= padding.size.height)
  {
    height = padding.size.height;
  }

  else
  {
    height = padding.size.width;
  }

  v4 = padding.origin.x + height * -0.1;
  v5 = padding.origin.y + height * -0.25;
  v6 = padding.size.width + height * 0.2;
  v7 = padding.size.height + height * 0.75;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (double)_rectDimensionSize:(CGRect)size forEdge:(unsigned int)edge
{
  result = size.size.width;
  if (edge > 1)
  {
    if (edge != 3)
    {
      return result;
    }

    return size.size.height;
  }

  if (edge == 1)
  {
    return size.size.height;
  }

  return result;
}

+ (double)_interpolationV2CropForAspectRatio:(double)ratio withFocusRegion:(double)region andAcceptableRect:(double)rect andPreferredRect:(uint64_t)preferredRect andImageRect:(uint64_t)imageRect outputCropScore:(double *)score
{
  [PFCropUtilitiesCore _interpolationV2MaxCropSizeForAspectRatio:self andZoom:1.0 withFocusRegion:a2 forImageSize:ratio withImportantRect:region, rect, a27, a28, a17, a18, a19, a20];
  [PFCropUtilitiesCore _interpolationCropToSize:score withinRect:a21 withPreferredRect:a22 andAcceptableRect:a23 outputScore:a24, a17, a18, a19, a20];
  [PFCropUtilitiesCore _interpolationV2AdjustedCrop:*&a25 toFocusRegion:*&a26 withFullsizeRect:*&a27 andImportantRect:*&a28, a17, a18, a19, a20];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (score)
  {
    [PFCropUtilitiesCore _interpolationV2ScoreForCrop:v26 withFullsizeRect:v27 andPreferredRect:v28 andAcceptableRect:v29, a25, a26, a27, a28, a21, a22, a23, a24, a17, a18, a19, a20];
    v37 = v34;
    [PFCropUtilitiesCore _interpolationV2ScoreForFocusRegion:a2 insideCropRect:ratio withImportantRect:region, rect, v30, v31, v32, v33, a17, a18, a19, a20];
    *score = v37 * v35;
  }

  return v30;
}

+ (uint64_t)_interpolationV2MaxCropSizeForAspectRatio:(double)ratio andZoom:(double)zoom withFocusRegion:(double)region forImageSize:(double)size withImportantRect:(double)rect
{
  [PFCropUtilitiesCore _rectDimensionSize:0 forEdge:a9, a10, a11, a12];
  [PFCropUtilitiesCore _rectDimensionSize:1 forEdge:a9, a10, a11, a12];
  [PFCropUtilitiesCore _rectDimensionOffset:0 insideRect:a9 forEdge:a10, a11, a12, 0.0, 0.0, rect, a8];
  [PFCropUtilitiesCore _rectDimensionOffset:2 insideRect:a9 forEdge:a10, a11, a12, 0.0, 0.0, rect, a8];
  [PFCropUtilitiesCore _rectDimensionOffset:1 insideRect:a9 forEdge:a10, a11, a12, 0.0, 0.0, rect, a8];
  [PFCropUtilitiesCore _rectDimensionOffset:3 insideRect:a9 forEdge:a10, a11, a12, 0.0, 0.0, rect, a8];
  [PFCropUtilitiesCore _rectDimensionSize:0 forEdge:ratio, zoom, region, size];
  [PFCropUtilitiesCore _rectDimensionSize:1 forEdge:ratio, zoom, region, size];
  [PFCropUtilitiesCore _rectDimensionOffset:0 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
  [PFCropUtilitiesCore _rectDimensionOffset:2 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
  [PFCropUtilitiesCore _rectDimensionOffset:1 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
  return [PFCropUtilitiesCore _rectDimensionOffset:3 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
}

+ (double)_interpolationV2AdjustedCrop:(double)crop toFocusRegion:(double)region withFullsizeRect:(double)rect andImportantRect:(double)importantRect
{
  [PFCropUtilitiesCore _translationToIncludeRect:a13 insideRect:a14, a15, a16, self + rect * crop, a2 + importantRect * region, crop * a7, region * a8];
  v29 = self - v28;
  [PFCropUtilitiesCore _translationToIncludeRect:v29 insideRect:a2 - v30, crop, region, a9, a10, a11, a12];
  return v29 + v31;
}

+ (CGFloat)_interpolationV2ScoreForFocusRegion:(double)region insideCropRect:(double)rect withImportantRect:(double)importantRect
{
  v23.origin.x = importantRect + self * a7;
  v23.origin.y = a6 + a2 * a8;
  v23.size.width = region * a7;
  v23.size.height = rect * a8;
  v21.origin.x = a9;
  v21.origin.y = a10;
  v21.size.width = a11;
  v21.size.height = a12;
  v22 = CGRectIntersection(v21, v23);
  return v22.size.width * v22.size.height / (a11 * a12);
}

+ (uint64_t)_interpolationV2ScoreForCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect
{
  [PFCropUtilitiesCore _interpolationV2ScoreAlongEdge:0 forCrop:a17 withFullsizeRect:a18 andPreferredRect:a19 andAcceptableRect:a20, a21, a22, a23, a24];
  [PFCropUtilitiesCore _interpolationV2ScoreAlongEdge:2 forCrop:self withFullsizeRect:a2 andPreferredRect:crop andAcceptableRect:rect, preferredRect, acceptableRect, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
  [PFCropUtilitiesCore _interpolationV2ScoreAlongEdge:1 forCrop:self withFullsizeRect:a2 andPreferredRect:crop andAcceptableRect:rect, preferredRect, acceptableRect, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
  return [PFCropUtilitiesCore _interpolationV2ScoreAlongEdge:3 forCrop:self withFullsizeRect:a2 andPreferredRect:crop andAcceptableRect:rect, preferredRect, acceptableRect, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
}

+ (uint64_t)_interpolationV2ScoreAlongEdge:(double)edge forCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect
{
  [PFCropUtilitiesCore _rectDimensionOffset:self insideRect:a2 forEdge:edge, crop, rect];
  v36 = v29;
  [PFCropUtilitiesCore _rectDimensionOffset:a11 insideRect:a12 forEdge:a13, a14, a15, rect, preferredRect, acceptableRect, a8];
  v35 = v30;
  [PFCropUtilitiesCore _rectDimensionOffset:a11 insideRect:a16 forEdge:a17, a18, a19, rect, preferredRect, acceptableRect, a8];
  v32 = v31;
  result = [PFCropUtilitiesCore _rectDimensionSize:a11 forEdge:a16, a17, a18, a19];
  if (v36 > 0.0)
  {
    if (v36 <= v35)
    {
      [PFCropUtilitiesCore _interpolationFactorFor:v36 between:0.0 and:?];
    }

    else if (v36 <= v32)
    {
      [PFCropUtilitiesCore _interpolationFactorFor:v36 between:v35 and:v32];
    }

    else
    {
      if (v36 > v32 + v34)
      {
        return result;
      }

      [PFCropUtilitiesCore _interpolationFactorFor:v36 between:v32 and:?];
    }

    return [PFCropUtilitiesCore _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
  }

  return result;
}

+ (uint64_t)_interpolationCropForAspectRatio:(uint64_t)ratio andZoom:(uint64_t)zoom acceptableRect:(uint64_t)rect andPreferredRect:(double)preferredRect andImageRect:(double)imageRect outputCropScore:(double)score
{
  [PFCropUtilitiesCore _interpolationCropSizeForRatio:self andZoom:a2 forImageSize:a18, a19];

  return [PFCropUtilitiesCore _interpolationCropToSize:"_interpolationCropToSize:withinRect:withPreferredRect:andAcceptableRect:outputScore:" withinRect:rect withPreferredRect:? andAcceptableRect:? outputScore:?];
}

+ (double)_interpolationCropToSize:(double)size withinRect:(double)rect withPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect outputScore:(uint64_t)score
{
  v64.origin.y = a17;
  v63 = *MEMORY[0x1E69E9840];
  v64.origin.x = a16;
  v64.size.width = a18;
  v64.size.height = a19;
  if (!CGRectIsNull(v64) && a16 >= 0.0 && a17 >= 0.0 && a18 > 0.0 && a19 > 0.0)
  {
    v65.size.height = a15;
    v65.origin.y = a13;
    v65.origin.x = a12;
    v65.size.width = a14;
    if (!CGRectIsNull(v65) && a12 >= 0.0 && a13 >= 0.0 && a14 > 0.0 && a15 > 0.0)
    {
      v54 = a2;
      if ((self == 0.0 || a2 == 0.0 || self == *MEMORY[0x1E69BDDB0] && a2 == *(MEMORY[0x1E69BDDB0] + 8)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        selfCopy = self;
        v59 = 2048;
        v60 = a2;
        v61 = 2048;
        v62 = 0x3FF0000000000000;
        _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
      }

      PFSizeWithAspectRatioFittingSize();
      v51 = v28;
      v52 = v27;
      v66.origin.x = a16;
      v66.origin.y = a17;
      v66.size.width = a18;
      v66.size.height = a19;
      IsNull = CGRectIsNull(v66);
      v67.origin.x = a12;
      v67.origin.y = a13;
      v67.size.width = a14;
      v67.size.height = a15;
      v30 = !CGRectIsNull(v67);
      v31 = a14;
      v32 = a15;
      if (!v30)
      {
        v32 = v51;
        v31 = v52;
      }

      v33 = !IsNull;
      v34 = self >= a18 || IsNull;
      v53 = v32;
      if ((v34 & 1) == 0)
      {
        [PFCropUtilitiesCore _interpolationWithFactor:self / a18 between:a16 + a18 * 0.5 and:a16];
        v25 = v39;
        v40 = 2.0 - self / a18;
        goto LABEL_33;
      }

      if ((v33 & v30) == 1 && self < a14)
      {
        [PFCropUtilitiesCore _interpolationFactorFor:self between:a18 and:a14];
        v36 = v35;
        [PFCropUtilitiesCore _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
        v25 = v37;
        v38 = 2.0;
      }

      else
      {
        v40 = 0.0;
        if (self >= preferredRect)
        {
          v25 = 0.0;
LABEL_33:
          v43 = v54 >= a19 || IsNull;
          if (v43)
          {
            if ((v33 & v30) == 1 && v54 < a15)
            {
              [PFCropUtilitiesCore _interpolationFactorFor:v54 between:a19 and:a15];
              v45 = v44;
              [PFCropUtilitiesCore _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
              v46 = 2.0;
LABEL_43:
              v47 = (v46 - v45) * 0.5;
              goto LABEL_44;
            }

            v47 = 0.0;
            if (v54 < acceptableRect)
            {
              [PFCropUtilitiesCore _interpolationFactorFor:v54 between:v53 and:acceptableRect, 0.0];
              v45 = v48;
              [PFCropUtilitiesCore _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
              v46 = 1.0;
              goto LABEL_43;
            }
          }

          else
          {
            [PFCropUtilitiesCore _interpolationWithFactor:v54 / a19 between:a17 + a19 * 0.5 and:?];
            v47 = 2.0 - v54 / a19;
          }

LABEL_44:
          if (!a9)
          {
            return v25;
          }

          if (v40 >= v47)
          {
            v49 = v40;
          }

          else
          {
            v49 = v47;
          }

          v26 = (2.0 - v49) * 0.5;
          goto LABEL_49;
        }

        [PFCropUtilitiesCore _interpolationFactorFor:self between:v31 and:?];
        v36 = v41;
        [PFCropUtilitiesCore _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
        v25 = v42;
        v38 = 1.0;
      }

      v40 = (v38 - v36) * 0.5;
      goto LABEL_33;
    }
  }

  v25 = fmax(preferredRect - self, 0.0) * 0.5;
  if (a9)
  {
    v26 = 0.5005;
LABEL_49:
    *a9 = v26;
  }

  return v25;
}

+ (double)_interpolationFactorFor:(double)for between:(double)between and:(double)and
{
  v6 = and - between;
  result = 0.5;
  if (v6 > 0.0)
  {
    return (for - between) / v6;
  }

  return result;
}

+ (CGSize)_interpolationCropSizeForRatio:(double)ratio andZoom:(double)zoom forImageSize:(CGSize)size
{
  width = size.height * ratio;
  if (size.width < size.height * ratio)
  {
    width = size.width;
  }

  v6 = width / zoom;
  height = size.width / ratio;
  if (size.height < height)
  {
    height = size.height;
  }

  v8 = height / zoom;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)_curatedLibraryAdjustedRectWithFaceAreaRect:(double)rect proposedCropRect:(double)cropRect assetRect:(CGFloat)assetRect verticalContentMode:(CGFloat)mode
{
  if (!CGRectIsEmpty(*&self))
  {
    v28.origin.x = assetRect;
    v28.origin.y = mode;
    v28.size.width = a7;
    v28.size.height = a8;
    if (!CGRectIsEmpty(v28))
    {
      v29.size.width = a11;
      v29.size.height = a12;
      v29.origin.x = a9;
      v29.origin.y = a10;
      v30.origin.x = assetRect;
      v30.origin.y = mode;
      v30.size.width = a7;
      v30.size.height = a8;
      if (CGRectContainsRect(v29, v30))
      {
        v26 = fmax(a9 + self * a11 + rect * a11 * 0.5 + a7 * -0.5, 0.0);
        if (a7 + v26 <= a11)
        {
          return v26;
        }

        else
        {
          return a11 - a7;
        }
      }
    }
  }

  return assetRect;
}

+ (void)_curatedLibraryCropForAspectRatio:(CGFloat)ratio verticalContentMode:(CGFloat)mode cropMode:(CGFloat)cropMode sourcePixelWidth:(uint64_t)width sourcePixelHeight:(uint64_t)height sourcePreferredCropRectNormalized:(uint64_t)normalized sourceAcceptableCropRectNormalized:(uint64_t)rectNormalized sourceFaceAreaRectNormalized:(unint64_t)self0
{
  areaRectNormalizedCopy = areaRectNormalized;
  v24 = a11;
  v25 = areaRectNormalized / a11;
  if (!a11)
  {
    v25 = 1.0;
  }

  if (vabdd_f64(self, v25) > 0.00000999999975)
  {
    PFSizeWithAspectRatioFittingSize();
    v31 = v29;
    v32 = areaRectNormalizedCopy * 0.5 + 0.0 + v29 * -0.5;
    v65 = v30;
    v33 = v24 * 0.5 + 0.0 + v30 * -0.5;
    if (rectNormalized == 1)
    {
      [PFCropUtilitiesCore _curatedLibraryAdjustedRectWithFaceAreaRect:normalized proposedCropRect:a19 assetRect:a20 verticalContentMode:a21, a22, v32, v33, v29, v30, 0, 0, *&areaRectNormalizedCopy, *&v24];
    }

    else
    {
      v35 = a15;
      if (rectNormalized == 3)
      {
        rect_8 = v31;
        rect_16 = areaRectNormalizedCopy * 0.5 + 0.0 + v31 * -0.5;
        v69.origin.x = a19;
        v69.origin.y = a20;
        v69.size.width = a21;
        v69.size.height = a22;
        if (CGRectIsEmpty(v69))
        {
          v70.origin.x = a2;
          v70.origin.y = ratio;
          v70.size.width = mode;
          v70.size.height = cropMode;
          IsNull = CGRectIsNull(v70);
          v38 = v65;
          v31 = rect_8;
          v32 = rect_16;
          if (IsNull)
          {
            goto LABEL_18;
          }

          PFLargestSalientAspectFilledCropRect();
          goto LABEL_17;
        }
      }

      else
      {
        if (rectNormalized != 2)
        {
          v38 = v30;
          goto LABEL_18;
        }

        rect_8 = v31;
        rect_16 = areaRectNormalizedCopy * 0.5 + 0.0 + v31 * -0.5;
        if (!CGRectIsNull(*&v35))
        {
          v67.origin.x = a15;
          v67.origin.y = a16;
          v67.size.width = a17;
          v67.size.height = a18;
          if (!CGRectIsEmpty(v67))
          {
            PFLargestSalientAspectFilledCropRect();
            rect_8 = v45;
            rect_16 = v44;
            v33 = v46;
            v38 = v47;
            v73.origin.x = a19;
            v73.origin.y = a20;
            v73.size.width = a21;
            v73.size.height = a22;
            if (!CGRectIsEmpty(v73))
            {
              v74.size.width = a21 * areaRectNormalizedCopy + a21 * areaRectNormalizedCopy;
              v74.size.height = a22 * v24 + a22 * v24;
              v74.origin.x = a19 * areaRectNormalizedCopy + 0.0 + a21 * areaRectNormalizedCopy * 0.5 + v74.size.width * -0.5;
              v74.origin.y = a20 * v24 + 0.0 + a22 * v24 * 0.5 + v74.size.height * -0.5;
              v77.origin.x = 0.0;
              v77.origin.y = 0.0;
              v77.size.width = areaRectNormalizedCopy;
              v77.size.height = v24;
              v75 = CGRectIntersection(v74, v77);
              v48 = v33;
              x = v75.origin.x;
              y = v75.origin.y;
              width = v75.size.width;
              height = v75.size.height;
              v75.origin.x = rect_16;
              v66 = v48;
              v75.origin.y = v48;
              v75.size.width = rect_8;
              v75.size.height = v38;
              v78.origin.x = x;
              v78.origin.y = y;
              v78.size.width = width;
              v78.size.height = height;
              if (CGRectContainsRect(v75, v78))
              {
                v33 = v66;
                v53 = rect_8;
                v54 = rect_16;
              }

              else
              {
                v55 = y + height * 0.5;
                v54 = x + width * 0.5 + rect_8 * -0.5;
                v33 = v55 + v38 * -0.5;
                v53 = rect_8;
              }

              v76.origin.x = 0.0;
              v76.origin.y = 0.0;
              v76.size.width = areaRectNormalizedCopy;
              v76.size.height = v24;
              v79.origin.x = v54;
              v79.origin.y = v33;
              v79.size.width = v53;
              v79.size.height = v38;
              v56 = CGRectContainsRect(v76, v79);
              v31 = v53;
              v57 = v53 + fmax(v54, 0.0);
              if (v57 > areaRectNormalizedCopy)
              {
                v57 = areaRectNormalizedCopy;
              }

              v58 = v57 - v53;
              v59 = v38 + fmax(v33, 0.0);
              if (v59 > v24)
              {
                v59 = v24;
              }

              v60 = v59 - v53;
              if (v56)
              {
                v32 = v54;
              }

              else
              {
                v33 = v60;
                v32 = v58;
              }

              goto LABEL_18;
            }

            goto LABEL_22;
          }
        }

        v68.origin.x = a19;
        v68.origin.y = a20;
        v68.size.width = a21;
        v68.size.height = a22;
        if (CGRectIsEmpty(v68))
        {
          v38 = v65;
LABEL_22:
          v31 = rect_8;
          v32 = rect_16;
LABEL_18:
          v71.origin.x = v32;
          v71.origin.y = v33;
          v71.size.width = v31;
          v71.size.height = v38;
          if (!CGRectIsEmpty(v71))
          {
            v72.origin.x = 0.0;
            v72.origin.y = 0.0;
            v72.size.width = areaRectNormalizedCopy;
            v72.size.height = v24;
            CGRectIsEmpty(v72);
          }

          return;
        }
      }

      [PFCropUtilitiesCore _curatedLibraryAdjustedRectWithFaceAreaRect:normalized proposedCropRect:a19 assetRect:a20 verticalContentMode:a21, a22, rect_16, v33, rect_8, v65, 0, 0, *&areaRectNormalizedCopy, *&v24];
    }

LABEL_17:
    v32 = v40;
    v33 = v41;
    v31 = v42;
    v38 = v43;
    goto LABEL_18;
  }
}

+ (uint64_t)bestCropRectV2ForAspectRatio:(CGFloat)ratio withFocusRegion:(double)region sourcePixelWidth:(double)width sourcePixelHeight:(uint64_t)height sourcePreferredCropRectNormalized:(uint64_t)normalized sourceAcceptableCropRectNormalized:(unint64_t)rectNormalized sourceFaceAreaRectNormalized:(unint64_t)areaRectNormalized outputCropScore:(double *)self0
{
  rectNormalizedCopy = rectNormalized;
  areaRectNormalizedCopy = areaRectNormalized;
  v86 = a14 * rectNormalized + 0.0;
  v92 = a16 * rectNormalized;
  v93 = a15 * areaRectNormalized + 0.0;
  v79 = a17 * areaRectNormalized;
  v28 = a18 * rectNormalized + 0.0;
  v84 = a20 * rectNormalized;
  v85 = a19 * areaRectNormalized + 0.0;
  r1 = a21 * areaRectNormalized;
  v90 = *(MEMORY[0x1E695F050] + 8);
  v91 = *MEMORY[0x1E695F050];
  v29 = *(MEMORY[0x1E695F050] + 16);
  v89 = *(MEMORY[0x1E695F050] + 24);
  v97.origin.x = a22;
  v97.origin.y = a23;
  v97.size.width = a24;
  v97.size.height = a25;
  v30 = (a22 >= 0.0) & ~CGRectIsNull(v97);
  if (a23 < 0.0)
  {
    v30 = 0;
  }

  if (a24 <= 0.0)
  {
    v30 = 0;
  }

  if (a25 > 0.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v78 = v28;
  v87 = v29;
  v94 = rectNormalizedCopy;
  v95 = areaRectNormalizedCopy;
  if (v31 == 1)
  {
    v32 = a22 * rectNormalizedCopy + 0.0;
    v98.size.width = a24 * rectNormalizedCopy;
    v98.size.height = a25 * areaRectNormalizedCopy;
    v98.origin.x = v32;
    v98.origin.y = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
    r2 = a24 * rectNormalizedCopy;
    v75 = a25 * areaRectNormalizedCopy;
    y = v98.origin.y;
    if (!CGRectIsNull(v98))
    {
      v33 = v79;
      v34 = v85;
      v36 = r1;
      v35 = v84;
      v37 = a22 * rectNormalizedCopy + 0.0;
      if (v32 < 0.0)
      {
        goto LABEL_28;
      }

      v38 = a2;
      if ((1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0 < 0.0 || r2 <= 0.0)
      {
        height = r1;
        width = v84;
        x = v78;
        widthCopy4 = width;
        goto LABEL_31;
      }

      if (v75 <= 0.0)
      {
LABEL_28:
        height = r1;
        width = v84;
        x = v78;
      }

      else
      {
        v39 = v78;
        v40 = v85;
        height = a25 * areaRectNormalizedCopy;
        width = r2;
        v34 = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
        x = v37;
        if (!CGRectIsNull(*(&v35 - 2)))
        {
          height = a25 * areaRectNormalizedCopy;
          width = r2;
          v34 = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
          x = v37;
          if (v78 >= 0.0)
          {
            height = a25 * areaRectNormalizedCopy;
            width = r2;
            v34 = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
            x = v37;
            if (v85 >= 0.0)
            {
              height = a25 * areaRectNormalizedCopy;
              width = r2;
              v34 = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
              x = v37;
              if (v84 > 0.0)
              {
                height = a25 * areaRectNormalizedCopy;
                width = r2;
                v34 = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
                x = v37;
                if (r1 > 0.0)
                {
                  v99.origin.x = v78;
                  v99.size.width = v84;
                  v99.origin.y = v85;
                  v99.size.height = r1;
                  v116.origin.x = v37;
                  v116.origin.y = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
                  v116.size.width = r2;
                  v116.size.height = a25 * areaRectNormalizedCopy;
                  v100 = CGRectUnion(v99, v116);
                  x = v100.origin.x;
                  v34 = v100.origin.y;
                  width = v100.size.width;
                  height = v100.size.height;
                }
              }
            }
          }
        }

        v101.origin.x = v86;
        v101.size.width = v92;
        v101.origin.y = v93;
        v33 = v79;
        v101.size.height = v79;
        if (!CGRectIsNull(v101))
        {
          widthCopy4 = width;
          if (v86 >= 0.0 && v93 >= 0.0 && v92 > 0.0 && v79 > 0.0)
          {
            [PFCropUtilitiesCore _faceAreaRectWithPadding:v37, y, r2, v75];
            v117.origin.x = 0.0;
            v117.origin.y = 0.0;
            v117.size.width = v94;
            v117.size.height = v95;
            v118 = CGRectIntersection(v102, v117);
            v103.origin.x = v86;
            v103.size.width = v92;
            v103.origin.y = v93;
            v103.size.height = v79;
            v104 = CGRectUnion(v103, v118);
            v86 = v104.origin.x;
            v92 = v104.size.width;
            v93 = v104.origin.y;
            v33 = v104.size.height;
          }

          goto LABEL_30;
        }
      }

      widthCopy4 = width;
LABEL_30:
      v38 = a2;
      goto LABEL_31;
    }

    width = v84;
    v34 = v85;
    x = v28;
    v37 = a22 * rectNormalizedCopy + 0.0;
    height = r1;
  }

  else
  {
    v75 = v89;
    r2 = v29;
    y = v90;
    v37 = v91;
    height = r1;
    width = v84;
    v34 = v85;
    x = v28;
  }

  widthCopy4 = width;
  v33 = v79;
  v38 = a2;
LABEL_31:
  v105.origin.x = x;
  v105.origin.y = v34;
  v105.size.width = width;
  v105.size.height = height;
  if (!CGRectIsNull(v105) && x >= 0.0 && v34 >= 0.0 && width > 0.0 && height > 0.0)
  {
    v119.origin.x = 0.0;
    v119.origin.y = 0.0;
    v106.origin.x = x;
    v106.origin.y = v34;
    v106.size.width = width;
    v106.size.height = height;
    v119.size.width = v94;
    v119.size.height = v95;
    v107 = CGRectIntersection(v106, v119);
    v90 = v107.origin.y;
    v91 = v107.origin.x;
    v87 = v107.size.width;
    v89 = v107.size.height;
  }

  v108.origin.x = v86;
  v108.size.width = v92;
  v108.origin.y = v93;
  v108.size.height = v33;
  v45 = 0.0;
  if (CGRectIsNull(v108))
  {
    v50 = v94;
    v49 = v95;
    v51 = 0.0;
    regionCopy2 = region;
  }

  else
  {
    regionCopy2 = region;
    if (v86 < 0.0 || v93 < 0.0 || v92 <= 0.0)
    {
      v50 = v94;
      v49 = v95;
      v51 = 0.0;
    }

    else
    {
      v47 = v33 <= 0.0;
      v48 = v33;
      v50 = v94;
      v49 = v95;
      v51 = 0.0;
      if (!v47)
      {
        v52 = v86;
        v54 = v92;
        v53 = v93;
        v120.origin.y = v90;
        v120.origin.x = v91;
        v120.size.width = v87;
        v120.size.height = v89;
        v109 = CGRectUnion(*(&v48 - 3), v120);
        v121.origin.x = 0.0;
        v121.origin.y = 0.0;
        v121.size.width = v94;
        v121.size.height = v95;
        v110 = CGRectIntersection(v109, v121);
        v51 = v110.origin.x;
        v45 = v110.origin.y;
        v50 = v110.size.width;
        v49 = v110.size.height;
      }
    }
  }

  v96 = 0.0;
  v111.origin.x = v38;
  v111.origin.y = ratio;
  v111.size.width = regionCopy2;
  v111.size.height = widthCopy4;
  if (CGRectIsNull(v111) || v38 < 0.0 || ratio < 0.0 || regionCopy2 <= 0.0 || widthCopy4 <= 0.0 || (v122.origin.x = 0.0, v122.origin.y = 0.0, v122.size.width = 1.0, v122.size.height = 1.0, v112.origin.x = v38, v112.origin.y = ratio, v112.size.width = regionCopy2, v112.size.height = widthCopy4, CGRectEqualToRect(v112, v122)) || (v114.origin.y = v90, v114.origin.x = v91, v114.size.width = v87, v114.size.height = v89, CGRectIsNull(v114)) || v91 < 0.0 || v90 < 0.0 || v87 <= 0.0 || v89 <= 0.0 || (v115.origin.x = v51, v115.origin.y = v45, v115.size.width = v50, v115.size.height = v49, CGRectIsNull(v115)) || v51 < 0.0 || v45 < 0.0 || v50 <= 0.0 || v49 <= 0.0)
  {
    v69 = v50;
    v70 = v49;
    v68 = v51;
    v56 = v90;
    v55 = v91;
    v57 = v87;
    v58 = v89;
    result = [PFCropUtilitiesCore _interpolationCropForAspectRatio:&v96 acceptableRect:self andPreferredRect:v91 andImageRect:v90 outputCropScore:v87, *&v68, *&v45, *&v69, *&v70, 0, 0, *&v94, *&v95];
  }

  else
  {
    v72 = v50;
    v73 = v49;
    v71 = v51;
    v67 = v38;
    v58 = v89;
    v57 = v87;
    v56 = v90;
    v55 = v91;
    result = [PFCropUtilitiesCore _interpolationV2CropForAspectRatio:&v96 withFocusRegion:self andAcceptableRect:v67 andPreferredRect:1.0 - (ratio + widthCopy4) andImageRect:regionCopy2 outputCropScore:widthCopy4, *&v91, *&v90, *&v87, *&v89, *&v71, *&v45, *&v72, *&v73, 0, 0, *&v94, *&v95];
  }

  v60 = v96;
  if (score)
  {
    *score = v96;
  }

  if (v60 < 0.5)
  {
    v61 = v31;
  }

  else
  {
    v61 = 0;
  }

  if (v61 == 1)
  {
    v113.origin.x = v37;
    v113.origin.y = y;
    v113.size.width = r2;
    v113.size.height = v75;
    v123.origin.x = v55;
    v123.origin.y = v56;
    v123.size.width = v57;
    v123.size.height = v58;
    v62 = CGRectEqualToRect(v113, v123);
    if (v62)
    {
      v63 = v78;
    }

    else
    {
      v63 = v37;
    }

    if (v62)
    {
      v64 = v85;
    }

    else
    {
      v64 = y;
    }

    if (v62)
    {
      v65 = v84;
    }

    else
    {
      v65 = r2;
    }

    if (v62)
    {
      v66 = r1;
    }

    else
    {
      v66 = v75;
    }

    return [PFCropUtilitiesCore _interpolationCropForAspectRatio:0 acceptableRect:self andPreferredRect:v63 andImageRect:v64 outputCropScore:v65, v66, *&v55, *&v56, *&v57, *&v58, 0, 0, *&v94, *&v95];
  }

  return result;
}

@end