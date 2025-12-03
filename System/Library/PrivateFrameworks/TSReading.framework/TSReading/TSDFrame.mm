@interface TSDFrame
- (BOOL)hasMask;
- (BOOL)i_willRenderForRect:(CGRect)rect;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldRenderForSizeIncludingCoverage:(CGSize)coverage;
- (CGRect)coverageRect:(CGRect)rect;
- (CGRect)coverageRectWithoutAdornment:(CGRect)adornment;
- (CGRect)i_adornmentRectForRect:(CGRect)rect;
- (CGRect)p_coverageRectWithAdornment:(CGRect)adornment;
- (CGRect)p_coverageRectWithoutAdornment:(CGRect)adornment;
- (CGSize)p_minimumRenderedSize;
- (TSDFrame)initWithFrameName:(id)name;
- (TSDFrame)initWithFrameSpec:(id)spec assetScale:(double)scale;
- (TSDFrame)initWithFrameSpec:(id)spec assetScale:(double)scale archivableFrameName:(id)name;
- (_TSDStrokeOutsets)outsets;
- (double)minimumAssetScale;
- (id)archivableFrameName;
- (id)description;
- (id)frameName;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform;
- (unint64_t)hash;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
@end

@implementation TSDFrame

- (TSDFrame)initWithFrameSpec:(id)spec assetScale:(double)scale archivableFrameName:(id)name
{
  if (spec)
  {
    if (name)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame initWithFrameSpec:assetScale:archivableFrameName:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 81, @"invalid nil value for '%s'", "spec"}];
    if (name)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame initWithFrameSpec:assetScale:archivableFrameName:]"];
  [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 82, @"invalid nil value for '%s'", "archivableFrameName"}];
LABEL_3:
  v17.receiver = self;
  v17.super_class = TSDFrame;
  v8 = -[TSDStroke initWithColor:width:cap:join:pattern:](&v17, sel_initWithColor_width_cap_join_pattern_, [MEMORY[0x277D6C2A8] blackColor], 0, 0, +[TSDStrokePattern solidPattern](TSDStrokePattern, "solidPattern"), 2.0);
  v9 = v8;
  if (v8)
  {
    if (spec)
    {
      v8->mSpec = [spec copy];
      v9->mFrameName = [name copy];
      [(TSDFrameSpec *)v9->mSpec i_minimumAssetScale];
      TSUClamp();
      v9->mAssetScale = v10;
      p_calculateDerivedValuesFromFrameSpecAndAssetScale(v9->mSpec, &v9->mLeftWidth, &v9->mRightWidth, &v9->mTopHeight, &v9->mBottomHeight, &v9->mAdornmentSize, v10);
    }

    else
    {
      v15 = v8;
      return 0;
    }
  }

  return v9;
}

- (TSDFrame)initWithFrameSpec:(id)spec assetScale:(double)scale
{
  frameName = [spec frameName];

  return [(TSDFrame *)self initWithFrameSpec:spec assetScale:frameName archivableFrameName:scale];
}

- (TSDFrame)initWithFrameName:(id)name
{
  v4 = [TSDFrameSpec frameSpecWithName:name];

  return [(TSDFrame *)self initWithFrameSpec:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDFrame;
  [(TSDFrame *)&v3 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSDMutableFrame allocWithZone:zone];
  frameSpec = [(TSDFrame *)self frameSpec];
  [(TSDFrame *)self assetScale];
  v7 = v6;
  archivableFrameName = [(TSDFrame *)self archivableFrameName];

  return [(TSDFrame *)v4 initWithFrameSpec:frameSpec assetScale:archivableFrameName archivableFrameName:v7];
}

- (BOOL)isEqual:(id)equal
{
  v11.receiver = self;
  v11.super_class = TSDFrame;
  LODWORD(v4) = [(TSDStroke *)&v11 isEqual:?];
  if (v4)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      v5 = v4;
      mSpec = self->mSpec;
      if (mSpec == [v4 frameSpec])
      {
        LODWORD(v4) = -[NSString isEqualToString:](self->mFrameName, "isEqualToString:", [v5 archivableFrameName]);
        if (v4)
        {
          [(TSDFrame *)self assetScale];
          v8 = v7;
          [v5 assetScale];
          LOBYTE(v4) = v8 == v9;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (unint64_t)hash
{
  v4.receiver = self;
  v4.super_class = TSDFrame;
  [(TSDStroke *)&v4 hash];
  [(TSDFrameSpec *)self->mSpec hash];
  [(NSString *)self->mFrameName hash];
  return TSUHashWithSeed();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  frameName = [(TSDFrame *)self frameName];
  [(TSDFrame *)self assetScale];
  return [v3 stringWithFormat:@"<%@ %p frameName='%@' assetScale=%f>", v5, self, frameName, v7];
}

- (id)frameName
{
  frameSpec = [(TSDFrame *)self frameSpec];

  return [(TSDFrameSpec *)frameSpec frameName];
}

- (id)archivableFrameName
{
  result = self->mFrameName;
  if (!result)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame archivableFrameName]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 194, @"invalid nil value for '%s'", "mFrameName"}];
    result = self->mFrameName;
    if (!result)
    {
      frameSpec = [(TSDFrame *)self frameSpec];

      return [(TSDFrameSpec *)frameSpec frameName];
    }
  }

  return result;
}

- (double)minimumAssetScale
{
  frameSpec = [(TSDFrame *)self frameSpec];

  [(TSDFrameSpec *)frameSpec i_minimumAssetScale];
  return result;
}

- (BOOL)hasMask
{
  frameSpec = [(TSDFrame *)self frameSpec];

  return [(TSDFrameSpec *)frameSpec i_hasMask];
}

- (CGRect)p_coverageRectWithoutAdornment:(CGRect)adornment
{
  height = adornment.size.height;
  width = adornment.size.width;
  y = adornment.origin.y;
  x = adornment.origin.x;
  if ([(TSDFrameSpec *)self->mSpec i_hasImages])
  {
    v8 = width < 2.0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && height >= 2.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectInset(v27, 1.0, 1.0);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  [(TSDFrameSpec *)self->mSpec i_leftInset];
  *&v10 = v10 * self->mAssetScale;
  v11 = ceilf(*&v10);
  [(TSDFrameSpec *)self->mSpec i_rightInset];
  *&v12 = v12 * self->mAssetScale;
  v13 = ceilf(*&v12);
  [(TSDFrameSpec *)self->mSpec i_bottomInset];
  *&v14 = v14 * self->mAssetScale;
  v15 = ceilf(*&v14);
  [(TSDFrameSpec *)self->mSpec i_topInset];
  *&v16 = v16 * self->mAssetScale;
  v17 = ceilf(*&v16);
  v18 = y + v17;
  v19 = height - (v15 + v17);
  mLeftWidth = self->mLeftWidth;
  v21 = x + v11 - mLeftWidth;
  v22 = mLeftWidth + self->mRightWidth;
  mTopHeight = self->mTopHeight;
  v24 = width - (v11 + v13) + v22;
  v25 = v18 - mTopHeight;
  v26 = v19 + mTopHeight + self->mBottomHeight;
  result.size.height = v26;
  result.size.width = v24;
  result.origin.y = v25;
  result.origin.x = v21;
  return result;
}

- (CGRect)p_coverageRectWithAdornment:(CGRect)adornment
{
  [(TSDFrame *)self p_coverageRectWithoutAdornment:adornment.origin.x, adornment.origin.y, adornment.size.width, adornment.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(TSDFrameSpec *)self->mSpec i_hasAdornment])
  {
    [(TSDFrame *)self i_adornmentRectForRect:v5, v7, v9, v11];
    v5 = TSDUnionRect(v12, v13, v14, v15, v5, v7, v9, v11);
    v7 = v16;
    v9 = v17;
    v11 = v18;
  }

  v19 = v5;
  v20 = v7;
  v21 = v9;
  v22 = v11;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)coverageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDFrame *)self p_coverageRectWithAdornment:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TSDFrame *)self p_minimumRenderedSize];
  if (v13 < v17 || v15 < v16)
  {
    v15 = height;
    v13 = width;
    v11 = y;
    v9 = x;
  }

  v19 = v9;
  v20 = v11;
  v21 = v13;
  v22 = v15;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)coverageRectWithoutAdornment:(CGRect)adornment
{
  height = adornment.size.height;
  width = adornment.size.width;
  y = adornment.origin.y;
  x = adornment.origin.x;
  [(TSDFrame *)self coverageRect:?];
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v10;
  v22.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectEqualToRect(v20, v22))
  {
    [(TSDFrame *)self p_coverageRectWithoutAdornment:x, y, width, height];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)shouldRenderForSizeIncludingCoverage:(CGSize)coverage
{
  height = coverage.height;
  width = coverage.width;
  [(TSDFrame *)self p_minimumRenderedSize];
  return height >= v6 && width >= v5;
}

- (_TSDStrokeOutsets)outsets
{
  v3 = 0.0;
  if ([(TSDFrameSpec *)self->mSpec i_hasAdornment])
  {
    v4 = self->mTopHeight * 0.5;
    [(TSDFrameSpec *)self->mSpec i_adornmentPosition];
    v3 = v4 + v5 - self->mAdornmentSize.height * 0.5;
    if (v3 > 0.0)
    {
      v3 = 0.0;
    }
  }

  mLeftWidth = self->mLeftWidth;
  [(TSDFrameSpec *)self->mSpec i_leftInset];
  v8 = mLeftWidth - v7 * self->mAssetScale;
  mRightWidth = self->mRightWidth;
  [(TSDFrameSpec *)self->mSpec i_rightInset];
  v11 = mRightWidth - v10 * self->mAssetScale;
  mTopHeight = self->mTopHeight;
  [(TSDFrameSpec *)self->mSpec i_topInset];
  v14 = mTopHeight - v13 * self->mAssetScale - v3;
  mBottomHeight = self->mBottomHeight;
  [(TSDFrameSpec *)self->mSpec i_bottomInset];
  v17 = mBottomHeight - v16 * self->mAssetScale;
  v18 = v8;
  v19 = v11;
  v20 = v14;
  result.var3 = v17;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  if (stroke)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame paintPath:wantsInteriorStroke:inContext:useFastDrawing:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 365, @"Can't draw interior frame stroke"}];
  }

  v14 = [[TSDFrameRep alloc] initWithTSDFrame:self];
  TSUScreenScale();
  if (v11 != TSDCGContextAssociatedScreenScale(context))
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame paintPath:wantsInteriorStroke:inContext:useFastDrawing:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 368, @"rendering a frame into a context with incorrect associated screen scale"}];
  }

  BoundingBox = CGPathGetBoundingBox(path);
  [(TSDFrameRep *)v14 frameRect:context inContext:BoundingBox.origin.x withTotalScale:BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height, TSDCGContextAssociatedScreenScale(context)];
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  if ([(TSDFrameSpec *)self->mSpec i_hasAdornment])
  {
    v8 = self->mAdornmentSize.height * 0.5;
    [(TSDFrameSpec *)self->mSpec i_adornmentPosition];
    y = y + v8 - v9;
    height = height - (v8 - v9);
  }

  v36 = height;
  v37 = y;
  [(TSDFrameSpec *)self->mSpec i_leftInset];
  v35 = v10;
  mAssetScale = self->mAssetScale;
  [(TSDFrameSpec *)self->mSpec i_rightInset];
  v33 = v11;
  v32 = self->mAssetScale;
  [(TSDFrameSpec *)self->mSpec i_bottomInset];
  v13 = v12;
  v14 = self->mAssetScale;
  [(TSDFrameSpec *)self->mSpec i_topInset];
  v16 = v15;
  v17 = self->mAssetScale;
  mLeftWidth = self->mLeftWidth;
  mRightWidth = self->mRightWidth;
  mTopHeight = self->mTopHeight;
  mBottomHeight = self->mBottomHeight;
  v40 = [[TSDFrameRep alloc] initWithTSDFrame:self];
  TSUScreenScale();
  if (v21 != TSDCGContextAssociatedScreenScale(context))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame drawSwatchInRect:inContext:]"];
    [currentHandler handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 409, @"rendering a frame into a context with incorrect associated screen scale"}];
  }

  v24 = v13 * v14;
  v25 = v16 * v17;
  v26 = ceilf(v25);
  v27 = v36 + ceilf(v24) + v26 - (mTopHeight + mBottomHeight);
  v28 = v37 - v26 + mTopHeight;
  v29 = v35 * mAssetScale;
  v30 = ceilf(v29);
  *&v26 = v33 * v32;
  [(TSDFrameRep *)v40 frameRect:context inContext:x - v30 + mLeftWidth withTotalScale:v28, width + v30 + ceilf(*&v26) - (mLeftWidth + mRightWidth), v27, TSDCGContextAssociatedScreenScale(context)];
}

- (CGSize)p_minimumRenderedSize
{
  v2 = self->mLeftWidth + self->mRightWidth;
  v3 = self->mBottomHeight + self->mTopHeight;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)i_adornmentRectForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = CGRectGetWidth(rect) - (self->mLeftWidth + self->mRightWidth);
  [(TSDFrameSpec *)self->mSpec i_adornmentPosition];
  v10 = v8 * v9;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = v10 + CGRectGetMinX(v19) + self->mLeftWidth;
  v12 = self->mTopHeight * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MinY = CGRectGetMinY(v20);
  [(TSDFrameSpec *)self->mSpec i_adornmentPosition];
  v15 = self->mAdornmentSize.width;
  v16 = self->mAdornmentSize.height;
  v17 = v11 - v15 * 0.5;
  v18 = v12 + MinY + v14 - v16 * 0.5;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)i_willRenderForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDFrame *)self p_minimumRenderedSize];
  v9 = v8;
  v11 = v10;
  [(TSDFrame *)self p_coverageRectWithAdornment:x, y, width, height];
  return v13 >= v11 && v12 >= v9;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform
{
  [(TSDFrame *)self assetScale];
  [(TSDFrame *)self minimumAssetScale];
  TSUClamp();
  v5 = [[TSDFrame alloc] initWithFrameSpec:[(TSDFrame *)self frameSpec] assetScale:v4];

  return v5;
}

@end