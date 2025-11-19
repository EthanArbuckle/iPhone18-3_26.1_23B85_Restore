@interface TSDFrame
- (BOOL)hasMask;
- (BOOL)i_willRenderForRect:(CGRect)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldRenderForSizeIncludingCoverage:(CGSize)a3;
- (CGRect)coverageRect:(CGRect)a3;
- (CGRect)coverageRectWithoutAdornment:(CGRect)a3;
- (CGRect)i_adornmentRectForRect:(CGRect)a3;
- (CGRect)p_coverageRectWithAdornment:(CGRect)a3;
- (CGRect)p_coverageRectWithoutAdornment:(CGRect)a3;
- (CGSize)p_minimumRenderedSize;
- (TSDFrame)initWithFrameName:(id)a3;
- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4;
- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4 archivableFrameName:(id)a5;
- (_TSDStrokeOutsets)outsets;
- (double)minimumAssetScale;
- (id)archivableFrameName;
- (id)description;
- (id)frameName;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6;
@end

@implementation TSDFrame

- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4 archivableFrameName:(id)a5
{
  if (a3)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame initWithFrameSpec:assetScale:archivableFrameName:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 81, @"invalid nil value for '%s'", "spec"}];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277D6C290] currentHandler];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame initWithFrameSpec:assetScale:archivableFrameName:]"];
  [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 82, @"invalid nil value for '%s'", "archivableFrameName"}];
LABEL_3:
  v17.receiver = self;
  v17.super_class = TSDFrame;
  v8 = -[TSDStroke initWithColor:width:cap:join:pattern:](&v17, sel_initWithColor_width_cap_join_pattern_, [MEMORY[0x277D6C2A8] blackColor], 0, 0, +[TSDStrokePattern solidPattern](TSDStrokePattern, "solidPattern"), 2.0);
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v8->mSpec = [a3 copy];
      v9->mFrameName = [a5 copy];
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

- (TSDFrame)initWithFrameSpec:(id)a3 assetScale:(double)a4
{
  v7 = [a3 frameName];

  return [(TSDFrame *)self initWithFrameSpec:a3 assetScale:v7 archivableFrameName:a4];
}

- (TSDFrame)initWithFrameName:(id)a3
{
  v4 = [TSDFrameSpec frameSpecWithName:a3];

  return [(TSDFrame *)self initWithFrameSpec:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDFrame;
  [(TSDFrame *)&v3 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableFrame allocWithZone:a3];
  v5 = [(TSDFrame *)self frameSpec];
  [(TSDFrame *)self assetScale];
  v7 = v6;
  v8 = [(TSDFrame *)self archivableFrameName];

  return [(TSDFrame *)v4 initWithFrameSpec:v5 assetScale:v8 archivableFrameName:v7];
}

- (BOOL)isEqual:(id)a3
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
  v6 = [(TSDFrame *)self frameName];
  [(TSDFrame *)self assetScale];
  return [v3 stringWithFormat:@"<%@ %p frameName='%@' assetScale=%f>", v5, self, v6, v7];
}

- (id)frameName
{
  v2 = [(TSDFrame *)self frameSpec];

  return [(TSDFrameSpec *)v2 frameName];
}

- (id)archivableFrameName
{
  result = self->mFrameName;
  if (!result)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame archivableFrameName]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 194, @"invalid nil value for '%s'", "mFrameName"}];
    result = self->mFrameName;
    if (!result)
    {
      v6 = [(TSDFrame *)self frameSpec];

      return [(TSDFrameSpec *)v6 frameName];
    }
  }

  return result;
}

- (double)minimumAssetScale
{
  v2 = [(TSDFrame *)self frameSpec];

  [(TSDFrameSpec *)v2 i_minimumAssetScale];
  return result;
}

- (BOOL)hasMask
{
  v2 = [(TSDFrame *)self frameSpec];

  return [(TSDFrameSpec *)v2 i_hasMask];
}

- (CGRect)p_coverageRectWithoutAdornment:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)p_coverageRectWithAdornment:(CGRect)a3
{
  [(TSDFrame *)self p_coverageRectWithoutAdornment:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (CGRect)coverageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)coverageRectWithoutAdornment:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (BOOL)shouldRenderForSizeIncludingCoverage:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6
{
  if (a4)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame paintPath:wantsInteriorStroke:inContext:useFastDrawing:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 365, @"Can't draw interior frame stroke"}];
  }

  v14 = [[TSDFrameRep alloc] initWithTSDFrame:self];
  TSUScreenScale();
  if (v11 != TSDCGContextAssociatedScreenScale(a5))
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame paintPath:wantsInteriorStroke:inContext:useFastDrawing:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 368, @"rendering a frame into a context with incorrect associated screen scale"}];
  }

  BoundingBox = CGPathGetBoundingBox(a3);
  [(TSDFrameRep *)v14 frameRect:a5 inContext:BoundingBox.origin.x withTotalScale:BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height, TSDCGContextAssociatedScreenScale(a5)];
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
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
  if (v21 != TSDCGContextAssociatedScreenScale(a4))
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFrame drawSwatchInRect:inContext:]"];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrame.m"), 409, @"rendering a frame into a context with incorrect associated screen scale"}];
  }

  v24 = v13 * v14;
  v25 = v16 * v17;
  v26 = ceilf(v25);
  v27 = v36 + ceilf(v24) + v26 - (mTopHeight + mBottomHeight);
  v28 = v37 - v26 + mTopHeight;
  v29 = v35 * mAssetScale;
  v30 = ceilf(v29);
  *&v26 = v33 * v32;
  [(TSDFrameRep *)v40 frameRect:a4 inContext:x - v30 + mLeftWidth withTotalScale:v28, width + v30 + ceilf(*&v26) - (mLeftWidth + mRightWidth), v27, TSDCGContextAssociatedScreenScale(a4)];
}

- (CGSize)p_minimumRenderedSize
{
  v2 = self->mLeftWidth + self->mRightWidth;
  v3 = self->mBottomHeight + self->mTopHeight;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)i_adornmentRectForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3) - (self->mLeftWidth + self->mRightWidth);
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

- (BOOL)i_willRenderForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSDFrame *)self p_minimumRenderedSize];
  v9 = v8;
  v11 = v10;
  [(TSDFrame *)self p_coverageRectWithAdornment:x, y, width, height];
  return v13 >= v11 && v12 >= v9;
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3
{
  [(TSDFrame *)self assetScale];
  [(TSDFrame *)self minimumAssetScale];
  TSUClamp();
  v5 = [[TSDFrame alloc] initWithFrameSpec:[(TSDFrame *)self frameSpec] assetScale:v4];

  return v5;
}

@end