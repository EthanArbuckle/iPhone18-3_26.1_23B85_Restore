@interface PFParallaxLayoutUtilities
+ (BOOL)_rectIsValid:(CGRect)valid;
+ (BOOL)facePositionAcceptable:(CGRect)acceptable imageAspect:(double)aspect;
+ (CGRect)adaptiveFrameForTopEdgeVisibleFrame:(CGRect)frame layoutConfiguration:(id)configuration outVisibleFrame:(CGRect *)visibleFrame maxClockStretchOverride:(double)override;
+ (CGRect)adaptiveFrameForVisibleFrame:(CGRect)frame essentialRect:(CGRect)rect originalImageSize:(CGSize)size layoutConfiguration:(id)configuration classification:(unint64_t)classification maxClockStretchOverride:(double)override;
+ (CGRect)bestFaceRectWithImageSize:(CGSize)size deviceSize:(CGSize)deviceSize faceRegions:(id)regions;
+ (CGRect)topFrameForVisibleRect:(CGRect)result adaptiveRect:(CGRect)rect;
+ (CGRect)topFrameFromVisibleRectAspectRatio:(double)ratio adaptiveRect:(CGRect)rect;
+ (double)adaptiveLayoutVerticalPriorityThreshold;
+ (double)centerLayoutHorizontalLowerBound;
+ (double)centerLayoutHorizontalUpperBound;
+ (double)computeInactiveAvoidingRectForVisibleRect:(CGFloat)rect acceptableFrame:(CGFloat)frame unsafeRect:(CGFloat)unsafeRect imageSize:(CGFloat)size considerHeadroom:(CGFloat)headroom newVisibleRect:(CGFloat)visibleRect;
+ (double)cropScoreThresholdForClassification:(unint64_t)classification;
+ (double)effectiveAcceptableRectForClassification:(double)classification havePetFaces:(double)faces sourcePreferredCropRectNormalized:(double)normalized sourceAcceptableCropRectNormalized:(double)rectNormalized sourceFaceAreaRectNormalized:(double)areaRectNormalized sourceGazeAreaRectNormalized:(double)gazeAreaRectNormalized;
+ (double)effectivePreferredRectForClassification:(double)classification havePetFaces:(double)faces sourcePreferredCropRectNormalized:(double)normalized sourceAcceptableCropRectNormalized:(double)rectNormalized sourceFaceAreaRectNormalized:(double)areaRectNormalized;
+ (double)timeOverlapCheckThresholdForTopRect:(CGRect)rect isInteractive:(BOOL)interactive;
+ (double)widgetZoneAdjustmentForVisibleFrame:(CGRect)frame essentialRect:(CGRect)rect layoutConfiguration:(id)configuration;
+ (float)headroomPenaltyForIntermediateLayout:(id)layout originalFullExtent:(CGRect)extent layoutConfiguration:(id)configuration;
+ (id)computeLayoutWithHelper:(id)helper;
+ (id)computeLayoutsWithHelper:(id)helper;
+ (uint64_t)computeSpatialFrameForVisibleRect:(double)rect@<D0> adaptiveVisibleRect:(double)visibleRect@<D1> spatialPaddingPercentage:(double)percentage@<D2> effectiveImageRect:(double)imageRect@<D3>;
+ (unint64_t)clockIntersectionFromTopRectMatteCoverage:(double)coverage bottomRectMatteCoverage:(double)matteCoverage;
+ (unint64_t)layoutTypeFromLayoutConfiguration:(id)configuration;
@end

@implementation PFParallaxLayoutUtilities

+ (double)centerLayoutHorizontalUpperBound
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PICenterLayoutHorizontalUpperBound"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.33;
  }

  return v5;
}

+ (double)centerLayoutHorizontalLowerBound
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PICenterLayoutHorizontalLowerBound"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.12;
  }

  return v5;
}

+ (double)adaptiveLayoutVerticalPriorityThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PFAdaptiveLayoutVerticalPriorityThreshold"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.15;
  }

  return v5;
}

+ (float)headroomPenaltyForIntermediateLayout:(id)layout originalFullExtent:(CGRect)extent layoutConfiguration:(id)configuration
{
  height = extent.size.height;
  configurationCopy = configuration;
  layoutCopy = layout;
  [layoutCopy visibleRect];
  v10 = v9;
  [layoutCopy visibleRect];
  v12 = v11;

  v13 = v10 + v12 - height;
  [configurationCopy screenSize];
  v15 = v14;
  [configurationCopy screenScale];
  v17 = v15 / v16;
  [configurationCopy screenScale];
  v19 = v18;

  return fmax(v17 * (v13 / v19), 0.0) / 489574.4 * 5.0;
}

+ (uint64_t)computeSpatialFrameForVisibleRect:(double)rect@<D0> adaptiveVisibleRect:(double)visibleRect@<D1> spatialPaddingPercentage:(double)percentage@<D2> effectiveImageRect:(double)imageRect@<D3>
{
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v73.origin.x = a7;
  v73.origin.y = a8;
  v73.size.width = a9;
  v73.size.height = a10;
  IsNull = CGRectIsNull(v73);
  v69 = a9;
  if (IsNull)
  {
    imageRectCopy = imageRect;
  }

  else
  {
    imageRectCopy = a10;
  }

  if (IsNull)
  {
    percentageCopy = percentage;
  }

  else
  {
    percentageCopy = a9;
  }

  v67 = a7;
  v68 = a8;
  percentageCopy2 = percentage;
  if (IsNull)
  {
    visibleRectCopy = visibleRect;
  }

  else
  {
    visibleRectCopy = a8;
  }

  if (IsNull)
  {
    rectCopy = rect;
  }

  else
  {
    rectCopy = a7;
  }

  v71 = percentage / imageRect;
  v29 = fmin(a11, 0.999);
  v74 = CGRectInset(*(&imageRectCopy - 3), -(percentageCopy / (1.0 - v29) - percentageCopy), -(imageRectCopy / (1.0 - v29) - imageRectCopy));
  x = v74.origin.x;
  y = v74.origin.y;
  v77.size.width = v74.size.width;
  height = v74.size.height;
  v74.origin.x = a12;
  v74.size.width = a14;
  v74.origin.y = a13;
  v74.size.height = a15;
  v77.origin.x = x;
  v77.origin.y = y;
  width = v77.size.width;
  v77.size.height = height;
  if (CGRectContainsRect(v74, v77))
  {
    *a2 = rect;
    *(a2 + 8) = visibleRect;
    *(a2 + 16) = percentageCopy2;
    *(a2 + 24) = imageRect;
    v33 = (a2 + 64);
    v34 = 120;
    v35 = 112;
    *(a2 + 32) = v67;
    *(a2 + 40) = v68;
    v36 = 104;
    v37 = 96;
    v38 = 88;
    v39 = 80;
    v40 = 72;
    *(a2 + 48) = v69;
    *(a2 + 56) = a10;
    v41 = v71;
  }

  else
  {
    v42 = y + height - a15;
    if (v42 < 0.0)
    {
      v42 = 0.0;
    }

    v43 = -y;
    if (y > -0.0)
    {
      v43 = 0.0;
    }

    if (x <= -0.0)
    {
      v44 = -x;
    }

    else
    {
      v44 = 0.0;
    }

    v45 = x + width - a14;
    if (v45 < 0.0)
    {
      v45 = 0.0;
    }

    v46 = width - v44 - v45;
    v47 = height - v42 - v43;
    v48 = fmax(v47 - v46 / v71, 0.0);
    v49 = fmax(v46 - v71 * v47, 0.0);
    if (v46 / v47 <= v71)
    {
      v49 = 0.0;
      v50 = v46 / v71;
    }

    else
    {
      v48 = 0.0;
      v50 = v47;
    }

    if (v46 / v47 > v71)
    {
      v51 = v71 * v47;
    }

    else
    {
      v51 = v46;
    }

    v52 = x + v49 * 0.5;
    if (v52 < 0.0)
    {
      v52 = 0.0;
    }

    v53 = y + v48 * 0.5;
    if (v53 < 0.0)
    {
      v53 = 0.0;
    }

    if (v51 + v52 <= a14)
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 - (v51 + v52 - a14);
    }

    if (v50 + v53 <= a15)
    {
      v55 = v53;
    }

    else
    {
      v55 = v53 - (v50 + v53 - a15);
    }

    v75.origin.x = v54;
    v75.origin.y = v55;
    v75.size.width = v51;
    v75.size.height = v50;
    v76 = CGRectInset(v75, v29 * v51, v29 * v50);
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    v56 = v76.size.height;
    [self topFrameFromVisibleRectAspectRatio:v71 adaptiveRect:{v54, v55, v51, v50}];
    *(a2 + 64) = v57;
    *(a2 + 72) = v58;
    *(a2 + 80) = v59;
    *(a2 + 88) = v60;
    v34 = 56;
    v35 = 48;
    v36 = 40;
    *(a2 + 96) = v54;
    *(a2 + 104) = v55;
    height = v56;
    v37 = 32;
    v38 = 24;
    v39 = 16;
    v40 = 8;
    v33 = a2;
    *(a2 + 112) = v51;
    *(a2 + 120) = v50;
    v41 = v71;
  }

  result = [self topFrameFromVisibleRectAspectRatio:v41 adaptiveRect:{x, y, width, height}];
  *v33 = v62;
  *(a2 + v40) = v63;
  *(a2 + v39) = v64;
  *(a2 + v38) = v65;
  *(a2 + v37) = x;
  *(a2 + v36) = y;
  *(a2 + v35) = width;
  *(a2 + v34) = height;
  return result;
}

+ (double)computeInactiveAvoidingRectForVisibleRect:(CGFloat)rect acceptableFrame:(CGFloat)frame unsafeRect:(CGFloat)unsafeRect imageSize:(CGFloat)size considerHeadroom:(CGFloat)headroom newVisibleRect:(CGFloat)visibleRect
{
  selfCopy = self;
  v29 = self + rect * 0.5;
  memset(&v76, 0, sizeof(v76));
  CGAffineTransformMakeTranslation(&v76, -v29, -a2);
  memset(&v75, 0, sizeof(v75));
  CGAffineTransformMakeScale(&v75, 1.03, 1.03);
  memset(&v74, 0, sizeof(v74));
  CGAffineTransformMakeTranslation(&v74, v29, a2);
  memset(&v73, 0, sizeof(v73));
  t1 = v76;
  t2 = v75;
  CGAffineTransformConcat(&v72, &t1, &t2);
  t1 = v74;
  CGAffineTransformConcat(&v73, &v72, &t1);
  v72 = v73;
  v77.origin.x = selfCopy;
  rect2 = a2;
  v77.origin.y = a2;
  v77.size.width = rect;
  v77.size.height = frame;
  v78 = CGRectApplyAffineTransform(v77, &v72);
  x = v78.origin.x;
  unsafeRectCopy = unsafeRect;
  y = v78.origin.y;
  width = v78.size.width;
  height = v78.size.height;
  v78.origin.x = unsafeRect;
  v78.origin.y = size;
  v78.size.width = headroom;
  v78.size.height = visibleRect;
  MaxY = CGRectGetMaxY(v78);
  v79.origin.y = a2 + a14 * frame;
  v79.size.width = rect * a15;
  v79.size.height = frame * a16;
  v79.origin.x = selfCopy + a13 * rect;
  v58 = v79.origin.y;
  v57 = frame * a16;
  v34 = MaxY - CGRectGetMinY(v79);
  if (v34 > 0.0)
  {
    v34 = 0.0;
  }

  memset(&v72, 0, sizeof(v72));
  v35 = -v34;
  if (v34 < -0.03)
  {
    v35 = 0.03;
  }

  CGAffineTransformMakeTranslation(&v72, 0.0, v35);
  t1 = v72;
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v81 = CGRectApplyAffineTransform(v80, &t1);
  v36 = v81.origin.x;
  v37 = v81.origin.y;
  v38 = v81.size.width;
  v39 = v81.size.height;
  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = a17;
  v81.size.height = a18;
  v85.origin.x = selfCopy;
  v85.origin.y = rect2;
  v85.size.width = rect;
  frameCopy = frame;
  v85.size.height = frame;
  v40 = v38;
  if (CGRectContainsRect(v81, v85) || (a11 & 1) == 0)
  {
    v41 = a18;
  }

  else
  {
    v41 = a18 * 1.35;
  }

  v42 = 0;
  v43 = 0;
  v86.origin.x = v36;
  v86.origin.y = v37;
  v86.size.width = v40;
  v86.size.height = v39;
  if (CGRectContainsRect(*(&v41 - 3), v86))
  {
    if (a12)
    {
      *a12 = selfCopy;
      a12[1] = rect2;
      selfCopy = v36;
      a12[2] = rect;
      a12[3] = frameCopy;
    }

    else
    {
      return v36;
    }
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeScale(&t1, 0.970873786, 0.970873786);
    memset(&t2, 0, sizeof(t2));
    v68 = v76;
    v67 = t1;
    CGAffineTransformConcat(&v69, &v68, &v67);
    v68 = v74;
    CGAffineTransformConcat(&t2, &v69, &v68);
    v69 = t2;
    v82.origin.x = selfCopy;
    v82.origin.y = rect2;
    v82.size.width = rect;
    v82.size.height = frameCopy;
    v83 = CGRectApplyAffineTransform(v82, &v69);
    v45 = v83.origin.x;
    v46 = v83.origin.y;
    v61 = v83.size.width;
    v47 = v83.size.height;
    v83.origin.x = unsafeRectCopy;
    v83.origin.y = size;
    v83.size.width = headroom;
    v83.size.height = visibleRect;
    v48 = CGRectGetMaxY(v83);
    v84.origin.x = selfCopy + a13 * rect;
    v84.size.width = rect * a15;
    v84.origin.y = v58;
    v84.size.height = v57;
    MinY = CGRectGetMinY(v84);
    if (a12)
    {
      v50 = v48 - MinY <= 0.0;
      v51 = vabdd_f64(v48, MinY) > 0.03;
      if (v50 && v51)
      {
        v52 = frameCopy;
      }

      else
      {
        v52 = v47;
      }

      if (v50 && v51)
      {
        v53 = rect2;
      }

      else
      {
        v53 = v46;
      }

      if (v50 && v51)
      {
        v54 = selfCopy;
      }

      else
      {
        v54 = v45;
      }

      *a12 = v54;
      a12[1] = v53;
      rectCopy = v61;
      if (v50 && v51)
      {
        rectCopy = rect;
      }

      a12[2] = rectCopy;
      a12[3] = v52;
    }
  }

  return selfCopy;
}

+ (CGRect)topFrameFromVisibleRectAspectRatio:(double)ratio adaptiveRect:(CGRect)rect
{
  width = rect.size.width;
  v5 = rect.size.width / ratio;
  x = rect.origin.x;
  y = rect.origin.y;
  v8 = width;
  result.size.height = v5;
  result.size.width = v8;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (CGRect)topFrameForVisibleRect:(CGRect)result adaptiveRect:(CGRect)rect
{
  v4 = result.origin.y + rect.size.height - result.size.height;
  result.origin.y = v4;
  return result;
}

+ (CGRect)adaptiveFrameForTopEdgeVisibleFrame:(CGRect)frame layoutConfiguration:(id)configuration outVisibleFrame:(CGRect *)visibleFrame maxClockStretchOverride:(double)override
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v25.origin.y = 0.0;
  v25.origin.x = x;
  v25.size.width = width;
  v25.size.height = height;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v26 = CGRectUnion(v25, v28);
  v23 = v26.origin.x;
  v12 = v26.origin.y;
  v13 = v26.size.width;
  v14 = v26.size.height;
  v15 = v26.size.height - height;
  [configurationCopy maxStrechAmountNormalized];
  v17 = v16;

  v18 = fmax(v15 - height * v17 * override, 0.0);
  if (visibleFrame)
  {
    visibleFrame->origin.x = x;
    visibleFrame->origin.y = v18;
    visibleFrame->size.width = width;
    visibleFrame->size.height = height;
  }

  v19 = v12 + v18;
  v20 = v14 - v18;
  v21 = v23;
  v22 = v13;
  result.size.height = v20;
  result.size.width = v22;
  result.origin.y = v19;
  result.origin.x = v21;
  return result;
}

+ (CGRect)adaptiveFrameForVisibleFrame:(CGRect)frame essentialRect:(CGRect)rect originalImageSize:(CGSize)size layoutConfiguration:(id)configuration classification:(unint64_t)classification maxClockStretchOverride:(double)override
{
  height = size.height;
  width = rect.size.width;
  v32 = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  v15 = *&size.width;
  v16 = v15;
  v17 = v33 - (v12 + v10);
  if (y - v12 >= 0.0)
  {
    v18 = y - v12;
  }

  else
  {
    v18 = 0.0;
  }

  [v15 maxStrechAmountNormalized];
  v20 = v10 * v19 * v34;
  if (v18 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  if ((*&height - 1) <= 1)
  {
    if (v17 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v33 - (v12 + v10);
    }

    [self widgetZoneAdjustmentForVisibleFrame:v16 essentialRect:v13 layoutConfiguration:{v12 + v22, v11, v10, x, y, width, v32}];
    v21 = v21 - v23;
  }

  if (v17 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v33 - (v12 + v10);
  }

  v25 = v10 + v24;

  v26 = v13;
  v27 = v12;
  v28 = v11;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

+ (double)widgetZoneAdjustmentForVisibleFrame:(CGRect)frame essentialRect:(CGRect)rect layoutConfiguration:(id)configuration
{
  y = rect.origin.y;
  height = frame.size.height;
  v7 = frame.origin.y;
  configurationCopy = configuration;
  v9 = [PFParallaxLayoutUtilities layoutTypeFromLayoutConfiguration:configurationCopy];
  if (v9 == 1)
  {
    v11 = height * 0.0;
    if ([configurationCopy isPortrait])
    {
      v10 = v11;
    }

    else
    {
      v10 = 0.0;
    }
  }

  else
  {
    v10 = 0.0;
    if (!v9)
    {
      v10 = height * 0.361924686;
    }
  }

  v12 = v7 + v10 - y - v10 * 0.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

+ (unint64_t)clockIntersectionFromTopRectMatteCoverage:(double)coverage bottomRectMatteCoverage:(double)matteCoverage
{
  if (fmax(coverage, matteCoverage) > 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (BOOL)facePositionAcceptable:(CGRect)acceptable imageAspect:(double)aspect
{
  height = acceptable.size.height;
  width = acceptable.size.width;
  y = acceptable.origin.y;
  x = acceptable.origin.x;
  +[PFParallaxLayoutUtilities facePositionLimits];
  if (aspect <= 1.0)
  {
    v9 = width * aspect;
  }

  else
  {
    v9 = height * (1.0 / aspect);
  }

  if (v9 < 0.0 || v9 > 0.0)
  {
    return 0;
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (CGRectGetMinX(v12) < 0.0)
  {
    return 0;
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectGetMaxX(v13) > 0.0)
  {
    return 0;
  }

  [PFParallaxLayoutHelper inflatePersonFaceRect:x, y, width, height];
  return CGRectGetMaxY(v14) <= 0.0;
}

+ (double)cropScoreThresholdForClassification:(unint64_t)classification
{
  if (classification > 5)
  {
    return 0.6;
  }

  else
  {
    return dbl_1B36A2200[classification];
  }
}

+ (double)timeOverlapCheckThresholdForTopRect:(CGRect)rect isInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
  [v9 maxTopOverlapForTopRect:interactiveCopy isInteractive:{x, y, width, height}];
  v11 = v10;

  return v11;
}

+ (unint64_t)layoutTypeFromLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy screenSize];
  v5 = v4;
  [configurationCopy screenScale];
  v7 = v5 / v6;
  [configurationCopy screenSize];
  v9 = v8;
  [configurationCopy screenScale];
  v11 = v10;

  return v7 * (v9 / v11) >= 600000.0;
}

+ (CGRect)bestFaceRectWithImageSize:(CGSize)size deviceSize:(CGSize)deviceSize faceRegions:(id)regions
{
  height = deviceSize.height;
  width = deviceSize.width;
  v7 = size.height;
  v8 = size.width;
  v83 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  if (v8 == 0.0 || v7 == 0.0 || ((v63 = *(MEMORY[0x1E69BDDB0] + 8), v64 = *MEMORY[0x1E69BDDB0], v8 == *MEMORY[0x1E69BDDB0]) ? (v10 = v7 == *(MEMORY[0x1E69BDDB0] + 8)) : (v10 = 0), v10))
  {
    _PFAssertFailHandler();
  }

  v11 = regionsCopy;
  if (width / height < v8 / v7)
  {
    v12 = v7 * (width / height);
  }

  else
  {
    v12 = v8;
  }

  if (width / height < v8 / v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8 / (width / height);
  }

  v67 = 0.0;
  v68 = 0.0;
  v66 = 0.0;
  if (v8 != 0.0)
  {
    v66 = 0.0 / v8;
    v67 = v12 / v8;
  }

  v65 = 0.0;
  if (v7 != 0.0)
  {
    v65 = 0.0 / v7;
    v68 = v13 / v7;
  }

  v14 = *MEMORY[0x1E695F050];
  v15 = *(MEMORY[0x1E695F050] + 8);
  v16 = *(MEMORY[0x1E695F050] + 16);
  v17 = *(MEMORY[0x1E695F050] + 24);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v18 = [regionsCopy countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v78;
    v62 = 0.0;
    v54 = v17;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v56 = v15;
    v57 = v14;
    v55 = v16;
    do
    {
      v25 = 0;
      do
      {
        if (*v78 != v20)
        {
          objc_enumerationMutation(v11);
        }

        v58 = v24;
        v59 = v23;
        v60 = v22;
        v61 = v21;
        [*(*(&v77 + 1) + 8 * v25) rectValue];
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __78__PFParallaxLayoutUtilities_bestFaceRectWithImageSize_deviceSize_faceRegions___block_invoke;
        v76[3] = &__block_descriptor_64_e29_q24__0__NSValue_8__NSValue_16l;
        v76[4] = v26;
        v76[5] = v27;
        v76[6] = v28;
        v76[7] = v29;
        v30 = [v11 sortedArrayUsingComparator:v76];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v31 = v30;
        v32 = [v31 countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v73;
          v71 = 0.0;
          while (2)
          {
            v35 = 0;
            v36 = v14;
            v37 = v15;
            v38 = v16;
            v39 = v17;
            do
            {
              if (*v73 != v34)
              {
                objc_enumerationMutation(v31);
              }

              [*(*(&v72 + 1) + 8 * v35) rectValue];
              v87.origin.x = v40;
              v87.origin.y = v41;
              v43 = v42;
              v45 = v44;
              v84.origin.x = v36;
              v84.origin.y = v37;
              v84.size.width = v38;
              v84.size.height = v39;
              v87.size.width = v43;
              v87.size.height = v45;
              v85 = CGRectUnion(v84, v87);
              x = v85.origin.x;
              y = v85.origin.y;
              v88.size.width = v85.size.width;
              v88.size.height = v85.size.height;
              v88.origin.x = 0.0;
              v88.origin.y = 0.0;
              v85.origin.y = v65;
              v85.origin.x = v66;
              v85.size.width = v67;
              v85.size.height = v68;
              v16 = v88.size.width;
              v17 = v88.size.height;
              if (!CGRectContainsRect(v85, v88))
              {
                v14 = v36;
                v15 = v37;
                v16 = v38;
                v17 = v39;
                goto LABEL_41;
              }

              if (v43 == 0.0 || v45 == 0.0 || (v45 == v63 ? (v46 = v43 == v64) : (v46 = 0), v46))
              {
                v47 = 0.0;
              }

              else
              {
                v47 = v43 * v45;
              }

              ++v35;
              v14 = x;
              v15 = y;
              v36 = x;
              v71 = v71 + v47;
              v37 = y;
              v38 = v16;
              v39 = v17;
            }

            while (v33 != v35);
            v33 = [v31 countByEnumeratingWithState:&v72 objects:v81 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v71 = 0.0;
        }

LABEL_41:

        v21 = v61;
        v48 = v62;
        v49 = v71 <= v62;
        if (v71 > v62)
        {
          v48 = v71;
        }

        v62 = v48;
        if (!v49)
        {
          v21 = v17;
        }

        v23 = v59;
        v22 = v60;
        if (!v49)
        {
          v22 = v16;
          v23 = v15;
        }

        v24 = v58;
        if (!v49)
        {
          v24 = v14;
        }

        ++v25;
        v15 = v56;
        v14 = v57;
        v17 = v54;
        v16 = v55;
      }

      while (v25 != v19);
      v19 = [v11 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
  }

  v50 = v24;
  v51 = v23;
  v52 = v22;
  v53 = v21;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

uint64_t __78__PFParallaxLayoutUtilities_bestFaceRectWithImageSize_deviceSize_faceRegions___block_invoke(double *a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 rectValue];
  v10 = hypot(a1[4] + a1[6] * 0.5 - (v6 + v7 * 0.5), a1[5] + a1[7] * 0.5 - (v8 + v9 * 0.5));
  [v5 rectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = hypot(a1[4] + a1[6] * 0.5 - (v12 + v16 * 0.5), a1[5] + a1[7] * 0.5 - (v14 + v18 * 0.5));
  if (v10 < v19)
  {
    return -1;
  }

  else
  {
    return v10 > v19;
  }
}

+ (double)effectivePreferredRectForClassification:(double)classification havePetFaces:(double)faces sourcePreferredCropRectNormalized:(double)normalized sourceAcceptableCropRectNormalized:(double)rectNormalized sourceFaceAreaRectNormalized:(double)areaRectNormalized
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (a11 > 2)
  {
    if ((a11 - 3) >= 3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!a11)
  {
LABEL_9:
    height = normalized;
    width = faces;
    y = classification;
    x = a2;
    goto LABEL_10;
  }

  if (a11 != 1)
  {
    if (a11 != 2)
    {
      goto LABEL_10;
    }

    if (a12)
    {
      v28 = [self _rectIsValid:?];
      v29 = a17;
      v30 = a18;
      v31 = a19;
      v32 = a20;
      rectNormalizedCopy = rectNormalized;
      v34 = a8;
      areaRectNormalizedCopy = areaRectNormalized;
      v36 = a9;
      height = normalized;
      width = faces;
      y = classification;
      x = a2;
      if (!v28)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    goto LABEL_9;
  }

  x = rectNormalized;
  y = areaRectNormalized;
  width = a8;
  height = a9;
  if (![self _rectIsValid:?])
  {
    goto LABEL_10;
  }

  v29 = a17;
  v30 = a18;
  v31 = a19;
  v32 = a20;
  rectNormalizedCopy = x;
  areaRectNormalizedCopy = y;
  v34 = width;
  v36 = height;
LABEL_15:
  v43 = CGRectUnion(*&v29, *&rectNormalizedCopy);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
LABEL_10:
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  if (CGRectIsEmpty(v42))
  {
    return *MEMORY[0x1E69BDDA8];
  }

  return x;
}

+ (double)effectiveAcceptableRectForClassification:(double)classification havePetFaces:(double)faces sourcePreferredCropRectNormalized:(double)normalized sourceAcceptableCropRectNormalized:(double)rectNormalized sourceFaceAreaRectNormalized:(double)areaRectNormalized sourceGazeAreaRectNormalized:(double)gazeAreaRectNormalized
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (a11 > 2)
  {
    if ((a11 - 3) >= 3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  switch(a11)
  {
    case 0:
LABEL_9:
      height = a9;
      width = gazeAreaRectNormalized;
      y = areaRectNormalized;
      x = rectNormalized;
      break;
    case 1:
      height = a9;
      width = gazeAreaRectNormalized;
      y = areaRectNormalized;
      x = rectNormalized;
      if ([self _rectIsValid:{a13, a14, a15, a16}])
      {
        if ([self _rectIsValid:{a17, a18, a19, a20}])
        {
          v34 = +[PFWallpaperCompoundDeviceConfiguration deviceSupportsLandscapeConfiguration];
          height = a16;
          width = a15;
          v37 = a13;
          y = a14;
          x = a13;
          if (v34)
          {
            v41.origin.x = a17;
            v41.origin.y = a18;
            v41.size.width = a19;
            v41.size.height = a20;
            v40 = CGRectUnion(*&v37, v41);
            x = v40.origin.x;
            y = v40.origin.y;
            width = v40.size.width;
            height = v40.size.height;
          }
        }

        else
        {
          height = a16;
          width = a15;
          y = a14;
          x = a13;
        }
      }

      break;
    case 2:
      height = a9;
      width = gazeAreaRectNormalized;
      y = areaRectNormalized;
      x = rectNormalized;
      if (a12)
      {
        x = a13;
        y = a14;
        width = a15;
        height = a16;
        if (([self _rectIsValid:?] & 1) == 0)
        {
          height = a9;
          width = gazeAreaRectNormalized;
          y = areaRectNormalized;
          x = rectNormalized;
        }
      }

      break;
  }

LABEL_10:
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  if (CGRectIsEmpty(v39))
  {
    return *MEMORY[0x1E69BDDA8];
  }

  return x;
}

+ (BOOL)_rectIsValid:(CGRect)valid
{
  height = valid.size.height;
  width = valid.size.width;
  y = valid.origin.y;
  x = valid.origin.x;
  if (CGRectIsNull(valid))
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

+ (id)computeLayoutsWithHelper:(id)helper
{
  v112 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  v4 = [PFParallaxIntermediateLayout alloc];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __54__PFParallaxLayoutUtilities_computeLayoutsWithHelper___block_invoke;
  v96[3] = &unk_1E7B657F8;
  v5 = helperCopy;
  v97 = v5;
  v6 = [(PFParallaxIntermediateLayout *)v4 initWithConfiguration:v96];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [v5 intermediateWithHeadroomStrategy:1 intermediate:v6];
  if (v12)
  {
    [v7 addObject:v12];
  }

  if (_os_feature_enabled_impl() && [v5 headroomFeasible] && objc_msgSend(v5, "layoutType") != 2)
  {
    v13 = [v5 intermediateWithHeadroomStrategy:2 intermediate:v6];
    if (v13)
    {
      [v7 addObject:v13];
    }
  }

  v70 = v11;
  v71 = v6;
  allowedLayoutStrategies = [v5 allowedLayoutStrategies];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v92 objects:v111 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v93;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v93 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v92 + 1) + 8 * i);
        v20 = [v5 intermediateWithZoomStrategy:1 intermediate:v19];
        if (v20)
        {
          [v8 addObject:v20];
        }

        v21 = [v5 intermediateWithZoomStrategy:2 intermediate:v19];
        if (v21)
        {
          [v8 addObject:v21];
        }

        v22 = [v5 intermediateWithZoomStrategy:4 intermediate:v19];
        if (v22)
        {
          [v8 addObject:v22];
        }

        if ((allowedLayoutStrategies & 2) != 0)
        {
          v23 = [v5 intermediateWithZoomStrategy:3 intermediate:v19];
          if (v23)
          {
            [v8 addObject:v23];
          }

          v24 = [v5 intermediateWithZoomStrategy:5 intermediate:v19];
          if (v24)
          {
            [v8 addObject:v24];
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v92 objects:v111 count:16];
    }

    while (v16);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v25 = v8;
  v26 = [v25 countByEnumeratingWithState:&v88 objects:v110 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v89;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v89 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v88 + 1) + 8 * j);
        v31 = [v5 intermediateWithOverlapStrategy:1 intermediate:v30];
        if (v31)
        {
          [v9 addObject:v31];
        }

        v32 = [v5 intermediateWithOverlapStrategy:2 intermediate:v30];
        if (v32)
        {
          [v9 addObject:v32];
        }

        if ((allowedLayoutStrategies & 2) != 0)
        {
          v33 = [v5 intermediateWithOverlapStrategy:5 intermediate:v30];
          if (v33)
          {
            [v9 addObject:v33];
          }
        }

        v34 = [v5 intermediateWithOverlapStrategy:3 intermediate:v30];
        if (v34)
        {
          [v9 addObject:v34];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v88 objects:v110 count:16];
    }

    while (v27);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v35 = v9;
  v36 = [v35 countByEnumeratingWithState:&v84 objects:v109 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v85;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v85 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v84 + 1) + 8 * k);
        if ((allowedLayoutStrategies & 2) != 0)
        {
          v41 = [v5 intermediateWithAdaptiveStrategy:2 intermediate:*(*(&v84 + 1) + 8 * k)];
          if (v41)
          {
            [v10 addObject:v41];
          }
        }

        v42 = [v5 intermediateWithAdaptiveStrategy:1 intermediate:v40];
        if (v42)
        {
          [v10 addObject:v42];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v84 objects:v109 count:16];
    }

    while (v37);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v43 = v10;
  v44 = [v43 countByEnumeratingWithState:&v80 objects:v108 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v81;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v81 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v80 + 1) + 8 * m);
        if ([v5 computeSpatial])
        {
          v49 = [v5 intermediateWithSpatialStrategy:2 intermediate:v48];
          if (v49)
          {
            [v70 addObject:v49];
          }
        }

        v50 = [v5 intermediateWithSpatialStrategy:1 intermediate:v48];
        if (v50)
        {
          [v70 addObject:v50];
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v80 objects:v108 count:16];
    }

    while (v45);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v51 = v70;
  v52 = [v51 countByEnumeratingWithState:&v76 objects:v107 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v77;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v77 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v76 + 1) + 8 * n);
        v57 = [v5 intermediateWithInactiveStrategy:1 intermediate:v56];
        if (v57)
        {
          [v73 addObject:v57];
        }

        if ([v5 layoutType] != 2 && (objc_msgSend(v5, "computeSpatial") & 1) == 0)
        {
          v58 = [v5 intermediateWithInactiveStrategy:2 intermediate:v56];
          if (v58)
          {
            [v73 addObject:v58];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v76 objects:v107 count:16];
    }

    while (v53);
  }

  v59 = v73;
  if ([v73 count])
  {
    v60 = v73;
    v61 = v71;
  }

  else
  {
    v61 = v71;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v66 = [obj count];
      v67 = [v25 count];
      v68 = [v35 count];
      v69 = [v73 count];
      *buf = 134218752;
      v100 = v66;
      v101 = 2048;
      v102 = v67;
      v103 = 2048;
      v104 = v68;
      v105 = 2048;
      v106 = v69;
      v59 = v73;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No intermediate layouts available to be scored, falling back to initial layout. Counts: headroom=%tu, zoom=%tu, overlap=%tu, inactive=%tu", buf, 0x2Au);
    }

    v98 = v71;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __54__PFParallaxLayoutUtilities_computeLayoutsWithHelper___block_invoke_411;
  v74[3] = &unk_1E7B65870;
  v75 = v5;
  v62 = v5;
  v63 = PFMap(v60, v74);
  v64 = [v63 copy];

  return v64;
}

void __54__PFParallaxLayoutUtilities_computeLayoutsWithHelper___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 initialRect];
  [v4 setVisibleRect:?];
  [*(a1 + 32) pixelEffectiveAcceptable];
  [v4 setSalientContentRect:?];
}

+ (id)computeLayoutWithHelper:(id)helper
{
  helperCopy = helper;
  v4 = [PFParallaxLayoutUtilities computeLayoutsWithHelper:helperCopy];
  v5 = [helperCopy bestLayout:v4];

  return v5;
}

@end