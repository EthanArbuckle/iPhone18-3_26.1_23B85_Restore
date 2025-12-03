@interface TSDShapeLayout
- (BOOL)isBeingManipulated;
- (BOOL)isInvisibleAutosizingShape;
- (BOOL)isTailEndOnLeft;
- (BOOL)p_cachedPathIsLineSegment;
- (BOOL)p_cachedPathIsOpen;
- (BOOL)shouldBeDisplayedInShowMode;
- (BOOL)supportsResize;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)centerForConnecting;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)headLineEndPoint;
- (CGPoint)headPoint;
- (CGPoint)tailLineEndPoint;
- (CGPoint)tailPoint;
- (CGRect)aliasedAlignmentFrameForScale:(double)scale;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)boundsForStandardKnobs;
- (CGRect)p_boundsOfLineEndForHead:(BOOL)head transform:(CGAffineTransform *)transform;
- (CGRect)p_cachedPathBounds;
- (CGRect)p_cachedPathBoundsWithoutStroke;
- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)transform;
- (CGSize)minimumSize;
- (TSDFill)fill;
- (TSDShapeLayout)initWithInfo:(id)info;
- (double)lineEndScale;
- (id)clippedPathForLineEnds;
- (id)computeLayoutGeometry;
- (id)editablePathSource;
- (id)i_computeWrapPath;
- (id)i_computeWrapPathClosed:(BOOL)closed;
- (id)layoutGeometryFromInfo;
- (id)layoutInfoGeometry;
- (id)p_cachedPath;
- (id)p_createClippedPath;
- (id)p_unitePath:(id)path withLineEndForHead:(BOOL)head stroke:(id)stroke;
- (id)pathSource;
- (id)shapeInfo;
- (id)smartPathSource;
- (id)stroke;
- (id)strokeHeadLineEnd;
- (id)strokeTailLineEnd;
- (unint64_t)numberOfControlKnobs;
- (void)aliasPathForScale:(double)scale adjustedStroke:(id *)stroke adjustedPath:(id *)path startDelta:(CGPoint *)delta endDelta:(CGPoint *)endDelta;
- (void)aliasPathForScale:(double)scale originalStroke:(id)stroke adjustedStroke:(id *)adjustedStroke adjustedPath:(id *)path startDelta:(CGPoint *)delta endDelta:(CGPoint *)endDelta;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)dynamicStrokeWidthChangeDidBegin;
- (void)dynamicStrokeWidthUpdateToValue:(double)value;
- (void)endDynamicOperation;
- (void)invalidateFrame;
- (void)invalidatePath;
- (void)invalidatePathBounds;
- (void)p_computeAngle:(double *)angle point:(CGPoint *)point cutSegment:(int64_t *)segment cutT:(double *)t forLineEndAtHead:(BOOL)head;
- (void)p_invalidateClippedPath;
- (void)p_updateResizeInfoGeometryFromResizePathSource;
- (void)p_validateHeadAndTail;
- (void)p_validateHeadLineEnd;
- (void)p_validateTailLineEnd;
- (void)processChangedProperty:(int)property;
- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point;
- (void)setGeometry:(id)geometry;
@end

@implementation TSDShapeLayout

- (TSDShapeLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSDShapeLayout;
  v3 = [(TSDLayout *)&v6 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    if ([(TSDShapeLayout *)v3 shapeInfo])
    {
      *&v4->mShapeInvalidFlags |= 0x3FFu;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDShapeLayout;
  [(TSDDrawableLayout *)&v3 dealloc];
}

- (id)layoutGeometryFromInfo
{
  if (self->mResizeInfoGeometry)
  {
    v2 = [[TSDLayoutGeometry alloc] initWithInfoGeometry:self->mResizeInfoGeometry];

    return v2;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TSDShapeLayout;
    return [(TSDLayout *)&v4 layoutGeometryFromInfo];
  }
}

- (id)computeLayoutGeometry
{
  objc_opt_class();
  [(TSDAbstractLayout *)self parent];
  v3 = TSUDynamicCast();
  if (v3)
  {
    [v3 maximumFrameSizeForChild:self];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = 1.79769313e308;
    v7 = 1.79769313e308;
  }

  pathSource = [(TSDShapeLayout *)self pathSource];
  i_layoutGeometryProvider = [(TSDLayout *)self i_layoutGeometryProvider];
  v10 = [i_layoutGeometryProvider layoutGeometryForLayout:self];
  if (v10)
  {
    v11 = v10;
    v12 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
    [v12 naturalSize];
    v14 = v13;
    v16 = v15;
    [(TSDLayoutGeometry *)v11 size];
    if (v14 != v18 || v16 != v17)
    {

      self->mProvidedPathSource = 0;
      v19 = [v12 copy];
      self->mProvidedPathSource = v19;
      [(TSDLayoutGeometry *)v11 size];
      [(TSDPathSource *)v19 scaleToNaturalSize:?];
      [(TSDShapeLayout *)self invalidatePath];
      [(TSDShapeLayout *)self invalidatePathBounds];
    }
  }

  else
  {
    if (v5 < 1.79769313e308 || v7 < 1.79769313e308)
    {
      v20 = [objc_msgSend(-[TSDShapeLayout shapeInfo](self "shapeInfo")];
      stroke = [(TSDShapeLayout *)self stroke];
      [-[TSDShapeLayout layoutInfoGeometry](self "layoutInfoGeometry")];
      v23 = v22;
      v25 = v24;
      [-[TSDShapeLayout layoutInfoGeometry](self "layoutInfoGeometry")];
      v27 = v26;
      memset(&v59, 0, sizeof(v59));
      layoutInfoGeometry = [(TSDShapeLayout *)self layoutInfoGeometry];
      if (layoutInfoGeometry)
      {
        v29 = layoutInfoGeometry;
        v30 = TSDSubtractPoints(v23, v25, v27);
        [v29 transformBasedOnPoint:*MEMORY[0x277CBF348] centeredAtPoint:{*(MEMORY[0x277CBF348] + 8), v30, v31}];
      }

      else
      {
        memset(&v59, 0, sizeof(v59));
      }

      v32 = 4;
      while (1)
      {
        bezierPath = [(TSDPathSource *)v20 bezierPath];
        v58 = v59;
        if (!CGAffineTransformIsIdentity(&v58))
        {
          v58 = v59;
          [bezierPath transformUsingAffineTransform:&v58];
        }

        TSDPathBoundsIncludingStroke([bezierPath CGPath], stroke);
        v35 = v34;
        v37 = v36;
        v38 = TSDSubtractSizes(v34, v36, v5);
        if (v32 == 4 && v38 <= 0.0 && v39 <= 0.0)
        {
          break;
        }

        if (v32 == 4 || (v38 <= 0.0 ? (v40 = v38 <= -1.0) : (v40 = 1), (v40 || v39 > 0.0) && (v39 > -1.0 ? (v41 = v39 > 0.0) : (v41 = 1), !v41 ? (v42 = v38 <= 0.0) : (v42 = 0), !v42 ? (v43 = v32 == 0) : (v43 = 1), !v43)))
        {
          v44 = v5 / v35;
          v45 = v7 / v37 >= 1.0 || v44 <= 1.0;
          v46 = v45 ? v5 / v35 : v7 / v37;
          if (v5 / v35 < 1.0 && v7 / v37 > 1.0)
          {
            v46 = v5 / v35;
          }

          else
          {
            v44 = v7 / v37;
          }

          v47 = v46;
          v48 = v44;
          v49 = fminf(v47, v48);
          [(TSDPathSource *)v20 naturalSize];
          [(TSDPathSource *)v20 setNaturalSize:TSDMultiplySizeScalar(v50, v51, v49)];
          if (--v32 != -1)
          {
            continue;
          }
        }

        goto LABEL_48;
      }
    }

    v20 = 0;
LABEL_48:

    self->mShrunkenPathSource = v20;
    if ([(TSDShapeLayout *)self pathSource]!= pathSource)
    {
      [(TSDShapeLayout *)self invalidatePath];
      [(TSDShapeLayout *)self invalidatePathBounds];
    }

    [(TSDShapeLayout *)self pathBounds];
    v53 = v52;
    v55 = v54;
    memset(&v59, 0, sizeof(v59));
    [(TSDShapeLayout *)self computeLayoutTransform];
    v56 = [TSDLayoutGeometry alloc];
    v58 = v59;
    v11 = [(TSDLayoutGeometry *)v56 initWithSize:&v58 transform:v53, v55];
    if (i_layoutGeometryProvider && (objc_opt_respondsToSelector() & 1) != 0)
    {
      return [i_layoutGeometryProvider adjustLayoutGeometry:v11 forLayout:self];
    }
  }

  return v11;
}

- (CGAffineTransform)computeLayoutTransform
{
  memset(&v10, 0, sizeof(v10));
  layoutInfoGeometry = [(TSDShapeLayout *)self layoutInfoGeometry];
  if (layoutInfoGeometry)
  {
    [layoutInfoGeometry transform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  [(TSDShapeLayout *)self pathBounds];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v9 = v10;
  return CGAffineTransformTranslate(retstr, &v9, v6, v7);
}

- (void)setGeometry:(id)geometry
{
  if ((*&self->mShapeInvalidFlags & 0x20) == 0)
  {
    geometry = [(TSDAbstractLayout *)self geometry];
    if (!geometry)
    {
LABEL_5:
      *&self->mShapeInvalidFlags |= 0x20u;
      goto LABEL_10;
    }

    v6 = geometry;
    if (![(TSDLayoutGeometry *)geometry isEqual:geometry])
    {
      if ([(TSDLayoutGeometry *)v6 differsInMoreThanTranslationFrom:geometry])
      {
        goto LABEL_5;
      }

      if (geometry)
      {
        [geometry transform];
        v8 = v18;
        v9 = v19;
        v10 = v20;
      }

      else
      {
        v10 = 0uLL;
        v8 = 0uLL;
        v9 = 0uLL;
      }

      v11 = *(MEMORY[0x277CBF348] + 8);
      v16 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, v11), v8, *MEMORY[0x277CBF348]));
      [(TSDLayoutGeometry *)v6 transform:*&v11];
      v12 = TSDSubtractPoints(v16.f64[0], v16.f64[1], vaddq_f64(v20, vmlaq_n_f64(vmulq_n_f64(v19, v14), v18, v15)).f64[0]);
      self->mCachedAlignmentFrame.origin.x = TSDAddPoints(self->mCachedAlignmentFrame.origin.x, self->mCachedAlignmentFrame.origin.y, v12);
      self->mCachedAlignmentFrame.origin.y = v13;
    }
  }

LABEL_10:
  v17.receiver = self;
  v17.super_class = TSDShapeLayout;
  [(TSDDrawableLayout *)&v17 setGeometry:geometry];
}

- (CGRect)alignmentFrame
{
  if ((*&self->mShapeInvalidFlags & 0x20) != 0)
  {
    p_mCachedAlignmentFrame = &self->mCachedAlignmentFrame;
    [(TSDAbstractLayout *)self transform];
    [(TSDShapeLayout *)self shapeFrameWithTransform:&v12];
    p_mCachedAlignmentFrame->origin.x = v4;
    p_mCachedAlignmentFrame->origin.y = v5;
    p_mCachedAlignmentFrame->size.width = v6;
    p_mCachedAlignmentFrame->size.height = v7;
    *&self->mShapeInvalidFlags &= ~0x20u;
  }

  x = self->mCachedAlignmentFrame.origin.x;
  y = self->mCachedAlignmentFrame.origin.y;
  width = self->mCachedAlignmentFrame.size.width;
  height = self->mCachedAlignmentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  if ([(TSDAbstractLayout *)self parent])
  {
    if (self)
    {
      [(TSDAbstractLayout *)self transformInRoot];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    [(TSDShapeLayout *)self shapeFrameWithTransform:v7];
  }

  else
  {
    [(TSDShapeLayout *)self alignmentFrame];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDShapeLayout;
  [(TSDDrawableLayout *)&v5 processChangedProperty:?];
  if (property <= 522)
  {
    if (property != 517)
    {
      if (property != 522)
      {
        return;
      }

      [(TSDShapeLayout *)self invalidatePathBounds];
      [(TSDShapeLayout *)self p_invalidateHead];
      goto LABEL_11;
    }

    [(TSDShapeLayout *)self invalidatePathBounds];
    [(TSDShapeLayout *)self p_invalidateHead];
    goto LABEL_10;
  }

  if (property == 523)
  {
    [(TSDShapeLayout *)self invalidatePathBounds];
LABEL_10:
    [(TSDShapeLayout *)self p_invalidateTail];
    goto LABEL_11;
  }

  if (property != 526)
  {
    return;
  }

  [(TSDShapeLayout *)self invalidatePath];
LABEL_11:
  [(TSDShapeLayout *)self invalidateFrame];
}

- (CGRect)boundsForStandardKnobs
{
  [-[TSDShapeLayout pathSource](self "pathSource")];
  v3 = TSDRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(TSDShapeLayout *)self pathBounds];
  v11 = -v10;
  v13 = -v12;
  v14 = v3;
  v15 = v5;
  v16 = v7;
  v17 = v9;

  return CGRectOffset(*&v14, v11, v13);
}

- (id)stroke
{
  if (self->mDynamicStroke)
  {
    return self->mDynamicStroke;
  }

  shapeInfo = [(TSDShapeLayout *)self shapeInfo];

  return [shapeInfo stroke];
}

- (void)dynamicStrokeWidthChangeDidBegin
{
  if (self->mDynamicStroke)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeLayout dynamicStrokeWidthChangeDidBegin]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeLayout.m"), 357, @"expected nil value for '%s'", "mDynamicStroke"}];
  }

  self->mDynamicStroke = [objc_msgSend(-[TSDShapeLayout shapeInfo](self "shapeInfo")];
}

- (void)dynamicStrokeWidthUpdateToValue:(double)value
{
  mDynamicStroke = self->mDynamicStroke;
  if (!mDynamicStroke)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeLayout dynamicStrokeWidthUpdateToValue:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeLayout.m"), 363, @"invalid nil value for '%s'", "mDynamicStroke"}];
    mDynamicStroke = self->mDynamicStroke;
  }

  isFrame = [(TSDStroke *)mDynamicStroke isFrame];
  v9 = self->mDynamicStroke;
  if (isFrame)
  {
    [(TSDMutableStroke *)v9 setAssetScale:value];
  }

  else
  {
    [(TSDMutableStroke *)v9 setWidth:value];
  }

  [(TSDShapeLayout *)self processChangedProperty:517];
  v10 = [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];

  [v10 processChangedProperty:517];
}

- (id)shapeInfo
{
  objc_opt_class();
  [(TSDLayout *)self info];

  return TSUDynamicCast();
}

- (id)pathSource
{
  mResizePathSource = self->mResizePathSource;
  if (mResizePathSource)
  {
    return mResizePathSource;
  }

  mResizePathSource = self->mShrunkenPathSource;
  if (mResizePathSource)
  {
    return mResizePathSource;
  }

  mResizePathSource = self->mProvidedPathSource;
  if (mResizePathSource)
  {
    return mResizePathSource;
  }

  shapeInfo = [(TSDShapeLayout *)self shapeInfo];

  return [shapeInfo pathSource];
}

- (id)editablePathSource
{
  pathSource = [(TSDShapeLayout *)self pathSource];
  v4 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;

    self->mCachedEditableBezierPathSource = 0;
    self->mCachedPathSource = 0;
  }

  else
  {
    if (v4 != self->mCachedPathSource)
    {

      self->mCachedEditableBezierPathSource = 0;
      self->mCachedEditableBezierPathSource = [TSDEditableBezierPathSource editableBezierPathSourceWithPathSource:pathSource];
      self->mCachedPathSource = pathSource;
    }

    return self->mCachedEditableBezierPathSource;
  }

  return v6;
}

- (id)smartPathSource
{
  [(TSDShapeLayout *)self pathSource];

  return TSUProtocolCast();
}

- (id)layoutInfoGeometry
{
  if (self->mResizeInfoGeometry)
  {
    return self->mResizeInfoGeometry;
  }

  info = [(TSDLayout *)self info];

  return [(TSDInfo *)info geometry];
}

- (CGPoint)headPoint
{
  [(TSDShapeLayout *)self p_validateHeadAndTail];
  x = self->mHeadPoint.x;
  y = self->mHeadPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tailPoint
{
  [(TSDShapeLayout *)self p_validateHeadAndTail];
  x = self->mTailPoint.x;
  y = self->mTailPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)headLineEndPoint
{
  [(TSDShapeLayout *)self p_validateHeadLineEnd];
  x = self->mHeadLineEndPoint.x;
  y = self->mHeadLineEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tailLineEndPoint
{
  [(TSDShapeLayout *)self p_validateTailLineEnd];
  x = self->mTailLineEndPoint.x;
  y = self->mTailLineEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isTailEndOnLeft
{
  [(TSDShapeLayout *)self tailLineEndPoint];
  v4 = v3;
  v6 = v5;
  geometryInRoot = [(TSDAbstractLayout *)self geometryInRoot];
  if (geometryInRoot)
  {
    [geometryInRoot transform];
    v9 = v25.f64[1];
    v8 = v25.f64[0];
    v11 = v26.f64[1];
    v10 = v26.f64[0];
    v12 = v27.f64[1];
    v13 = v27.f64[0];
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v13 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
  }

  [(TSDShapeLayout *)self headLineEndPoint];
  v23 = v15;
  v24 = v14;
  geometryInRoot2 = [(TSDAbstractLayout *)self geometryInRoot];
  if (geometryInRoot2)
  {
    [geometryInRoot2 transform];
    v17 = v25;
    v18 = v26;
    v19 = v27;
  }

  else
  {
    v19 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v20 = TSDSubtractPoints(v13 + v6 * v10 + v8 * v4, v12 + v6 * v11 + v9 * v4, vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v18, v23), v17, v24)).f64[0]);
  if (fabs(v20) < 1.0)
  {
    v20 = v21;
  }

  return v20 < 0.0;
}

- (double)lineEndScale
{
  [-[TSDShapeLayout stroke](self "stroke")];
  if (result > 1.0)
  {
    return (result + -1.0) * 0.6 + 1.0;
  }

  return result;
}

- (id)clippedPathForLineEnds
{
  if ((*&self->mShapeInvalidFlags & 0x200) != 0)
  {
    self->mCachedClippedPath = [(TSDShapeLayout *)self p_createClippedPath];
    *&self->mShapeInvalidFlags &= ~0x200u;
  }

  return self->mCachedClippedPath;
}

- (CGRect)shapeFrameWithTransform:(CGAffineTransform *)transform
{
  [(TSDShapeLayout *)self pathBounds];
  v7 = *&transform->c;
  *&v35.a = *&transform->a;
  *&v35.c = v7;
  *&v35.tx = *&transform->tx;
  CGAffineTransformTranslate(&v36, &v35, -v5, -v6);
  v8 = *&v36.c;
  *&transform->a = *&v36.a;
  *&transform->c = v8;
  *&transform->tx = *&v36.tx;
  if ([-[TSDShapeLayout stroke](self "stroke")])
  {
    [(TSDShapeLayout *)self pathBounds];
  }

  else
  {
    [-[TSDShapeLayout stroke](self "stroke")];
  }

  v13 = *&transform->c;
  *&v36.a = *&transform->a;
  *&v36.c = v13;
  *&v36.tx = *&transform->tx;
  v37 = CGRectApplyAffineTransform(*&v9, &v36);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  if ([(TSDShapeLayout *)self pathIsOpen])
  {
    v18 = *&transform->c;
    *&v36.a = *&transform->a;
    *&v36.c = v18;
    *&v36.tx = *&transform->tx;
    [(TSDShapeLayout *)self p_boundsOfLineEndForHead:1 transform:&v36];
    v43.origin.x = v19;
    v43.origin.y = v20;
    v43.size.width = v21;
    v43.size.height = v22;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectUnion(v38, v43);
    v23 = v39.origin.x;
    v24 = v39.origin.y;
    v25 = v39.size.width;
    v26 = v39.size.height;
    *&v39.origin.y = *&transform->c;
    *&v36.a = *&transform->a;
    *&v36.c = *&v39.origin.y;
    *&v36.tx = *&transform->tx;
    [(TSDShapeLayout *)self p_boundsOfLineEndForHead:0 transform:&v36];
    v44.origin.x = v27;
    v44.origin.y = v28;
    v44.size.width = v29;
    v44.size.height = v30;
    v40.origin.x = v23;
    v40.origin.y = v24;
    v40.size.width = v25;
    v40.size.height = v26;
    v41 = CGRectUnion(v40, v44);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)shouldBeDisplayedInShowMode
{
  [(TSDStyledLayout *)self frameForCulling];
  HasNaNComponents = TSDRectHasNaNComponents();
  v6.receiver = self;
  v6.super_class = TSDShapeLayout;
  if ([(TSDLayout *)&v6 shouldBeDisplayedInShowMode])
  {
    v4 = ([(TSDShapeLayout *)self isInvisibleAutosizingShape]| HasNaNComponents) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)isInvisibleAutosizingShape
{
  v3 = [-[TSDInfo geometry](-[TSDLayout info](self "info")];
  v4 = [-[TSDInfo geometry](-[TSDLayout info](self "info")];
  if (v3 && (v4 & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [objc_msgSend(-[TSDLayout layoutController](self "layoutController")] ^ 1;
  }
}

- (CGPoint)centerForConnecting
{
  v11.receiver = self;
  v11.super_class = TSDShapeLayout;
  [(TSDLayout *)&v11 centerForConnecting];
  v4 = v3;
  v6 = v5;
  if ([(TSDShapeLayout *)self isInvisibleAutosizingShape])
  {
    [-[TSDInfo geometry](-[TSDLayout info](self "info")];
    v4 = v7;
    v6 = v8;
  }

  v9 = v4;
  v10 = v6;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)aliasedAlignmentFrameForScale:(double)scale
{
  v49 = 0;
  v50 = 0;
  v47 = 0.0;
  v48 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  [(TSDShapeLayout *)self aliasPathForScale:&v50 adjustedStroke:&v49 adjustedPath:&v47 startDelta:&v45 endDelta:scale];
  [(TSDShapeLayout *)self pathBounds];
  v5 = v4;
  v7 = v6;
  memset(&v44, 0, sizeof(v44));
  if (self)
  {
    [(TSDAbstractLayout *)self transform];
  }

  v42 = v44;
  CGAffineTransformTranslate(&v43, &v42, -v5, -v7);
  v44 = v43;
  v8 = v50;
  if ([v50 isFrame])
  {
    [v49 bounds];
    [v8 coverageRect:?];
    v43 = v44;
    v52 = CGRectApplyAffineTransform(v51, &v43);
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
  }

  else
  {
    v13 = [v49 copy];
    v43 = v44;
    [v13 transformUsingAffineTransform:&v43];
    [v8 boundsForPath:v13];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  if ([(TSDShapeLayout *)self pathIsOpen])
  {
    v43 = v44;
    [(TSDShapeLayout *)self p_boundsOfLineEndForHead:1 transform:&v43];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    CGAffineTransformMakeTranslation(&v43, v47, v48);
    v53.origin.x = v19;
    v53.origin.y = v21;
    v53.size.width = v23;
    v53.size.height = v25;
    v60 = CGRectApplyAffineTransform(v53, &v43);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v55 = CGRectUnion(v54, v60);
    v26 = v55.origin.x;
    v27 = v55.origin.y;
    v28 = v55.size.width;
    v29 = v55.size.height;
    v43 = v44;
    [(TSDShapeLayout *)self p_boundsOfLineEndForHead:0 transform:&v43];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    CGAffineTransformMakeTranslation(&v43, v45, v46);
    v56.origin.x = v31;
    v56.origin.y = v33;
    v56.size.width = v35;
    v56.size.height = v37;
    v61 = CGRectApplyAffineTransform(v56, &v43);
    v57.origin.x = v26;
    v57.origin.y = v27;
    v57.size.width = v28;
    v57.size.height = v29;
    v58 = CGRectUnion(v57, v61);
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
  }

  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (void)aliasPathForScale:(double)scale adjustedStroke:(id *)stroke adjustedPath:(id *)path startDelta:(CGPoint *)delta endDelta:(CGPoint *)endDelta
{
  stroke = [(TSDShapeLayout *)self stroke];

  [(TSDShapeLayout *)self aliasPathForScale:stroke originalStroke:stroke adjustedStroke:path adjustedPath:delta startDelta:endDelta endDelta:scale];
}

- (void)aliasPathForScale:(double)scale originalStroke:(id)stroke adjustedStroke:(id *)adjustedStroke adjustedPath:(id *)path startDelta:(CGPoint *)delta endDelta:(CGPoint *)endDelta
{
  v44 = *MEMORY[0x277D85DE8];
  shapeInfo = [(TSDShapeLayout *)self shapeInfo];
  if (-[TSDShapeLayout pathIsOpen](self, "pathIsOpen") && ([shapeInfo headLineEnd] || objc_msgSend(shapeInfo, "tailLineEnd")))
  {
    clippedPathForLineEnds = [(TSDShapeLayout *)self clippedPathForLineEnds];
  }

  else
  {
    clippedPathForLineEnds = [(TSDShapeLayout *)self path];
  }

  v17 = clippedPathForLineEnds;
  memset(&v42, 0, sizeof(v42));
  if (self)
  {
    [(TSDAbstractLayout *)self transformInRoot];
  }

  *adjustedStroke = stroke;
  *path = [v17 copy];
  v18 = *MEMORY[0x277CBF348];
  *delta = *MEMORY[0x277CBF348];
  v38 = v18;
  *endDelta = v18;
  if (v17)
  {
    v43 = v42;
    if (TSDIsTransformAxisAligned(&v43.a))
    {
      [(TSDShapeLayout *)self pathBounds];
      v20 = v19;
      v22 = v21;
      if (![stroke shouldRender] || objc_msgSend(stroke, "shouldAntialiasDefeat"))
      {
        v23 = [stroke mutableCopy];
        v24 = 0.0;
        if ([v23 shouldRender] && (objc_msgSend(v23, "isFrame") & 1) == 0)
        {
          [stroke width];
          v24 = 1.0;
          if (v25 * scale > 1.0)
          {
            TSURound();
            v27 = v26;
            [v23 setWidth:v26 / scale];
            v24 = v27;
          }

          [stroke width];
          [v23 setActualWidth:?];
        }

        v28 = [v17 copy];
        [v17 elementAtIndex:0 associatedPoints:&v43];
        *delta = *&v43.a;
        [v17 currentPoint];
        endDelta->x = v29;
        endDelta->y = v30;
        v40 = v42;
        CGAffineTransformTranslate(&v41, &v40, -v20, -v22);
        v42 = v41;
        [v28 transformUsingAffineTransform:&v41];
        *&v31 = scale;
        *&v32 = v24;
        v33 = [v28 aliasedPathWithViewScale:v31 effectiveStrokeWidth:v32];
        v40 = v42;
        CGAffineTransformInvert(&v41, &v40);
        [v33 transformUsingAffineTransform:&v41];
        *&v41.a = v39;
        [v33 elementAtIndex:0 associatedPoints:&v41];
        delta->x = TSDSubtractPoints(v41.a, v41.b, delta->x);
        delta->y = v34;
        [v33 currentPoint];
        endDelta->x = TSDSubtractPoints(v35, v36, endDelta->x);
        endDelta->y = v37;
        *adjustedStroke = v23;
        *path = v33;
      }
    }
  }
}

- (TSDFill)fill
{
  if (self->mDynamicFill)
  {
    return self->mDynamicFill;
  }

  shapeInfo = [(TSDShapeLayout *)self shapeInfo];

  return [shapeInfo fill];
}

- (void)invalidateFrame
{
  v3.receiver = self;
  v3.super_class = TSDShapeLayout;
  [(TSDLayout *)&v3 invalidateFrame];
  *&self->mShapeInvalidFlags |= 0x20u;
}

- (void)invalidatePath
{
  *&self->mShapeInvalidFlags |= 0x19u;

  self->mCachedPath = 0;
  [(TSDShapeLayout *)self invalidatePathBounds];
  [(TSDShapeLayout *)self p_invalidateHead];
  [(TSDShapeLayout *)self p_invalidateTail];

  [(TSDShapeLayout *)self p_invalidateClippedPath];
}

- (void)invalidatePathBounds
{
  *&self->mShapeInvalidFlags |= 0x26u;
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->mCachedPathBounds.origin = *MEMORY[0x277CBF3A0];
  self->mCachedPathBounds.size = v3;
  self->mCachedPathBoundsWithoutStroke.origin = v2;
  self->mCachedPathBoundsWithoutStroke.size = v3;
  [(TSDDrawableLayout *)self invalidateExteriorWrap];
}

- (BOOL)supportsResize
{
  [-[TSDShapeLayout path](self "path")];
  v4 = v3;
  v6 = v5;
  return ![(TSDShapeLayout *)self pathIsLineSegment]&& fmin(v4, v6) >= 0.00000001;
}

- (void)beginDynamicOperation
{
  v10.receiver = self;
  v10.super_class = TSDShapeLayout;
  [(TSDLayout *)&v10 beginDynamicOperation];
  if (self->mResizePathSource)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeLayout beginDynamicOperation]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeLayout.m"), 784, @"expected nil value for '%s'", "mResizePathSource"}];
  }

  if (self->mResizeInfoGeometry)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeLayout beginDynamicOperation]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeLayout.m"), 785, @"expected nil value for '%s'", "mResizeInfoGeometry"}];
  }

  self->mResizePathSource = [objc_msgSend(-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  if (-[TSDLayout isInTopLevelContainerForEditing](self, "isInTopLevelContainerForEditing") || [-[TSDInfo geometry](-[TSDLayout info](self "info")] && (objc_msgSend(-[TSDInfo geometry](-[TSDLayout info](self, "info"), "geometry"), "heightValid") & 1) != 0)
  {
    geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  }

  else
  {
    info = [(TSDLayout *)self info];
    if (info)
    {
      [(TSDInfo *)info computeFullTransform];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    geometry = [TSDInfoGeometry geometryFromFullTransform:v9];
  }

  self->mInitialInfoGeometry = geometry;
  self->mResizeInfoGeometry = [-[TSDInfo geometry](-[TSDLayout info](self "info")];
}

- (void)endDynamicOperation
{
  [(TSDShapeLayout *)self invalidatePath];
  [(TSDShapeLayout *)self invalidateFrame];
  if (!self->mResizeInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeLayout endDynamicOperation]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeLayout.m"), 807, @"invalid nil value for '%s'", "mResizeInfoGeometry"}];
  }

  if (!self->mInitialInfoGeometry)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeLayout endDynamicOperation]"];
    [currentHandler2 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeLayout.m"), 808, @"invalid nil value for '%s'", "mInitialInfoGeometry"}];
  }

  v7.receiver = self;
  v7.super_class = TSDShapeLayout;
  [(TSDLayout *)&v7 endDynamicOperation];

  self->mResizePathSource = 0;
  self->mResizeInfoGeometry = 0;

  self->mInitialInfoGeometry = 0;
}

- (CGSize)minimumSize
{
  v2 = [objc_msgSend(objc_msgSend(-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  v3 = 1.0;
  v4 = 0.0;
  if (!v2)
  {
    v4 = 1.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)isBeingManipulated
{
  if ([(TSDShapeLayout *)self isStrokeBeingManipulated])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = TSDShapeLayout;
  return [(TSDLayout *)&v4 isBeingManipulated];
}

- (id)strokeHeadLineEnd
{
  result = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  if (result)
  {
    stroke = [(TSDShapeLayout *)self stroke];
    v5 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];

    return [stroke strokeLineEnd:v5];
  }

  return result;
}

- (id)strokeTailLineEnd
{
  result = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];
  if (result)
  {
    stroke = [(TSDShapeLayout *)self stroke];
    v5 = [-[TSDShapeLayout shapeInfo](self "shapeInfo")];

    return [stroke strokeLineEnd:v5];
  }

  return result;
}

- (unint64_t)numberOfControlKnobs
{
  [(TSDShapeLayout *)self pathSource];
  objc_opt_class();
  v2 = TSUClassAndProtocolCast();

  return [v2 numberOfControlKnobs];
}

- (void)setControlKnobPosition:(unint64_t)position toPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDShapeLayout *)self pathSource];
  objc_opt_class();
  v7 = TSUClassAndProtocolCast();

  [v7 setControlKnobPosition:position toPoint:{x, y}];
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  [(TSDShapeLayout *)self pathSource];
  objc_opt_class();
  v4 = TSUClassAndProtocolCast();

  [v4 getControlKnobPosition:position];
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)i_computeWrapPath
{
  fill = [(TSDShapeLayout *)self fill];
  if (fill)
  {
    v4 = [(TSDFill *)fill isClear]^ 1;
  }

  else
  {
    v4 = 0;
  }

  return [(TSDShapeLayout *)self i_computeWrapPathClosed:v4];
}

- (id)i_computeWrapPathClosed:(BOOL)closed
{
  stroke = [(TSDShapeLayout *)self stroke];
  if (!stroke || (v6 = stroke, ![stroke shouldRender]))
  {
    v7 = [TSDBezierPath outsideEdgeOfBezierPath:[(TSDShapeLayout *)self path]];
    goto LABEL_6;
  }

  objc_opt_class();
  if (TSUDynamicCast())
  {
    [(TSDShapeLayout *)self pathBounds];
    v7 = [TSDBezierPath bezierPathWithRect:?];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  v14 = [-[TSDShapeLayout path](self "path")];
  [v14 takeAttributesFromStroke:v6];
  if (closed || [v14 isEffectivelyClosed])
  {
    outlineStroke = [v14 uniteWithBezierPath:{objc_msgSend(v14, "outlineStroke")}];
  }

  else
  {
    outlineStroke = [v14 outlineStroke];
  }

  v8 = outlineStroke;
  if ([(TSDShapeLayout *)self pathIsOpen])
  {
    v7 = [(TSDShapeLayout *)self p_unitePath:[(TSDShapeLayout *)self p_unitePath:v8 withLineEndForHead:1 stroke:v6] withLineEndForHead:0 stroke:v6];
    goto LABEL_6;
  }

LABEL_7:
  [(TSDShapeLayout *)self pathBounds];
  v10 = v9;
  v12 = v11;
  if (!TSDNearlyEqualPoints(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v9, v11))
  {
    CGAffineTransformMakeTranslation(&v16, -v10, -v12);
    [v8 transformUsingAffineTransform:&v16];
  }

  return v8;
}

- (id)p_cachedPath
{
  if (*&self->mShapeInvalidFlags)
  {
    self->mCachedPath = [-[TSDShapeLayout pathSource](self "pathSource")];
    *&self->mShapeInvalidFlags &= ~1u;
  }

  return self->mCachedPath;
}

- (CGRect)p_cachedPathBounds
{
  if ((*&self->mShapeInvalidFlags & 2) != 0)
  {
    [-[TSDShapeLayout stroke](self "stroke")];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (-[TSDShapeLayout pathIsOpen](self, "pathIsOpen") && [-[TSDShapeLayout stroke](self "stroke")])
    {
      v28 = *(MEMORY[0x277CBF2C0] + 16);
      v30 = *MEMORY[0x277CBF2C0];
      v29 = v30;
      v31 = v28;
      v32 = *(MEMORY[0x277CBF2C0] + 32);
      v27 = v32;
      [(TSDShapeLayout *)self p_boundsOfLineEndForHead:1 transform:&v30];
      v38.origin.x = v11;
      v38.origin.y = v12;
      v38.size.width = v13;
      v38.size.height = v14;
      v33.origin.x = v4;
      v33.origin.y = v6;
      v33.size.width = v8;
      v33.size.height = v10;
      v34 = CGRectUnion(v33, v38);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v30 = v29;
      v31 = v28;
      v32 = v27;
      [(TSDShapeLayout *)self p_boundsOfLineEndForHead:0 transform:&v30];
      v39.origin.x = v19;
      v39.origin.y = v20;
      v39.size.width = v21;
      v39.size.height = v22;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v36 = CGRectUnion(v35, v39);
      v4 = v36.origin.x;
      v6 = v36.origin.y;
      v8 = v36.size.width;
      v10 = v36.size.height;
    }

    self->mCachedPathBounds.origin.x = v4;
    self->mCachedPathBounds.origin.y = v6;
    self->mCachedPathBounds.size.width = v8;
    self->mCachedPathBounds.size.height = v10;
    *&self->mShapeInvalidFlags &= ~2u;
  }

  v23 = self->mCachedPathBounds.origin.x;
  v24 = self->mCachedPathBounds.origin.y;
  v25 = self->mCachedPathBounds.size.width;
  v26 = self->mCachedPathBounds.size.height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)p_cachedPathBoundsWithoutStroke
{
  if ((*&self->mShapeInvalidFlags & 4) != 0)
  {
    [-[TSDShapeLayout path](self "path")];
    self->mCachedPathBoundsWithoutStroke.origin.x = v3;
    self->mCachedPathBoundsWithoutStroke.origin.y = v4;
    self->mCachedPathBoundsWithoutStroke.size.width = v5;
    self->mCachedPathBoundsWithoutStroke.size.height = v6;
    *&self->mShapeInvalidFlags &= ~4u;
  }

  x = self->mCachedPathBoundsWithoutStroke.origin.x;
  y = self->mCachedPathBoundsWithoutStroke.origin.y;
  width = self->mCachedPathBoundsWithoutStroke.size.width;
  height = self->mCachedPathBoundsWithoutStroke.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)p_cachedPathIsOpen
{
  if ((*&self->mShapeInvalidFlags & 8) != 0)
  {
    self->mCachedPathIsOpen = [-[TSDShapeLayout path](self "path")];
    *&self->mShapeInvalidFlags &= ~8u;
  }

  return self->mCachedPathIsOpen;
}

- (BOOL)p_cachedPathIsLineSegment
{
  if ((*&self->mShapeInvalidFlags & 0x10) != 0)
  {
    self->mCachedPathIsLineSegment = [-[TSDShapeLayout path](self "path")];
    *&self->mShapeInvalidFlags &= ~0x10u;
  }

  return self->mCachedPathIsLineSegment;
}

- (void)p_invalidateClippedPath
{
  *&self->mShapeInvalidFlags |= 0x200u;

  self->mCachedClippedPath = 0;
}

- (void)p_validateHeadAndTail
{
  mShapeInvalidFlags = self->mShapeInvalidFlags;
  if ((mShapeInvalidFlags & 0x40) != 0)
  {
    *&self->mShapeInvalidFlags = mShapeInvalidFlags & 0xFFBF;
    path = [(TSDShapeLayout *)self path];

    [path getStartPoint:&self->mTailPoint andEndPoint:&self->mHeadPoint];
  }
}

- (void)p_validateHeadLineEnd
{
  [(TSDShapeLayout *)self p_validateHeadAndTail];
  mShapeInvalidFlags = self->mShapeInvalidFlags;
  if ((mShapeInvalidFlags & 0x80) != 0)
  {
    *&self->mShapeInvalidFlags = mShapeInvalidFlags & 0xFF7F;

    [(TSDShapeLayout *)self p_computeAngle:&self->mHeadLineEndAngle point:&self->mHeadLineEndPoint cutSegment:&self->mHeadCutSegment cutT:&self->mHeadCutT forLineEndAtHead:1];
  }
}

- (void)p_validateTailLineEnd
{
  if ((*&self->mShapeInvalidFlags & 0x100) != 0)
  {
    *&self->mShapeInvalidFlags &= ~0x100u;
    [(TSDShapeLayout *)self p_computeAngle:&self->mTailLineEndAngle point:&self->mTailLineEndPoint cutSegment:&self->mTailCutSegment cutT:&self->mTailCutT forLineEndAtHead:0];
  }
}

- (void)p_computeAngle:(double *)angle point:(CGPoint *)point cutSegment:(int64_t *)segment cutT:(double *)t forLineEndAtHead:(BOOL)head
{
  headCopy = head;
  [(TSDShapeLayout *)self p_validateHeadAndTail];
  v13 = &OBJC_IVAR___TSDShapeLayout_mTailPoint;
  if (headCopy)
  {
    v13 = &OBJC_IVAR___TSDShapeLayout_mHeadPoint;
  }

  v14 = (self + *v13);
  v16 = *v14;
  v15 = v14[1];
  if (headCopy)
  {
    strokeHeadLineEnd = [(TSDShapeLayout *)self strokeHeadLineEnd];
  }

  else
  {
    strokeHeadLineEnd = [(TSDShapeLayout *)self strokeTailLineEnd];
  }

  v18 = strokeHeadLineEnd;
  if (strokeHeadLineEnd && ([strokeHeadLineEnd isNone] & 1) == 0)
  {
    BoundingBox = CGPathGetBoundingBox([v18 path]);
    MaxY = CGRectGetMaxY(BoundingBox);
    [v18 endPoint];
    v21 = MaxY - v20;
    if (![v18 isFilled])
    {
      v21 = v21 + 0.75;
    }

    [(TSDShapeLayout *)self lineEndScale];
    v23 = v22 * v21;
    v24 = [TSDBezierPath bezierPathWithOvalInRect:v16 - v23, v15 - v23, v23 + v23, v23 + v23];
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [-[TSDShapeLayout path](self "path")];
    if ([v43 count])
    {
      [v43 sortUsingSelector:sel_compareSegmentAndT_];
      if (headCopy)
      {
        lastObject = [v43 lastObject];
      }

      else
      {
        lastObject = [v43 objectAtIndex:0];
      }

      v26 = lastObject;
      [lastObject point];
      v29 = v28;
      v31 = v30;
    }

    else
    {
      if (headCopy)
      {
        v26 = 0;
        v27 = 440;
      }

      else
      {
        v26 = 0;
        v27 = 424;
      }

      v32 = (self + v27);
      v29 = *v32;
      v31 = v32[1];
    }

    v33 = TSDSubtractPoints(v16, v15, v29);
    *angle = TSDAngleFromDelta(v33, v34) + -1.57079633;
    v35 = TSDSubtractPoints(v29, v31, v16);
    v37 = *MEMORY[0x277CBF348];
    if (v35 != *MEMORY[0x277CBF348] || v36 != *(MEMORY[0x277CBF348] + 8))
    {
      v39 = TSDNormalizePoint(v35, v36);
      v37 = TSDMultiplyPointScalar(v39, v40, v23);
    }

    point->x = TSDAddPoints(v16, v15, v37);
    point->y = v41;
    if (v26)
    {
      *segment = [v26 segment];
      [v26 t];
    }

    else
    {
      *segment = 0;
      v42 = 0;
    }

    *t = v42;
  }

  else
  {
    *angle = 1.57079633;
    point->x = v16;
    point->y = v15;
    *segment = -1;
    *t = 0.0;
  }
}

- (id)p_createClippedPath
{
  if ([(TSDShapeLayout *)self pathIsOpen])
  {
    if ([-[TSDShapeLayout stroke](self "stroke")])
    {
      [(TSDShapeLayout *)self p_validateHeadLineEnd];
      [(TSDShapeLayout *)self p_validateTailLineEnd];
      if ((self->mHeadCutSegment & 0x8000000000000000) == 0 || (self->mTailCutSegment & 0x8000000000000000) == 0)
      {
        [-[TSDShapeLayout stroke](self "stroke")];
        v4 = v3;
        v5 = objc_alloc_init(TSDBezierPath);
        [-[TSDShapeLayout stroke](self "stroke")];
        v7 = v6;
        v8 = TSDDeltaFromAngle(self->mTailLineEndAngle + 1.57079633);
        v9 = v4 * v7;
        v11 = TSDMultiplyPointScalar(v8, v10, v9);
        x = self->mTailLineEndPoint.x;
        y = self->mTailLineEndPoint.y;
        v14 = TSDAddPoints(x, y, v11);
        v16 = v15;
        v17 = TSDDeltaFromAngle(self->mHeadLineEndAngle + 1.57079633);
        v19 = TSDMultiplyPointScalar(v17, v18, v9);
        v20 = TSDAddPoints(self->mHeadLineEndPoint.x, self->mHeadLineEndPoint.y, v19);
        v22 = v21;
        mHeadCutSegment = self->mHeadCutSegment;
        mTailCutSegment = self->mTailCutSegment;
        if ((mHeadCutSegment & 0x8000000000000000) == 0 && mHeadCutSegment < mTailCutSegment || mHeadCutSegment == mTailCutSegment && self->mHeadCutT < self->mTailCutT)
        {
          [(TSDBezierPath *)v5 moveToPoint:v14, v16];
        }

        else
        {
          if (mTailCutSegment < 0)
          {
            [(TSDBezierPath *)v5 moveToPoint:x, y];
          }

          else
          {
            [(TSDBezierPath *)v5 moveToPoint:v14, v16];
            [(TSDBezierPath *)v5 lineToPoint:self->mTailLineEndPoint.x, self->mTailLineEndPoint.y];
          }

          [(TSDBezierPath *)v5 appendBezierPath:[(TSDShapeLayout *)self path] fromSegment:self->mTailCutSegment t:self->mHeadCutSegment toSegment:1 t:self->mTailCutT withoutMove:self->mHeadCutT];
          if (self->mHeadCutSegment < 0)
          {
            return v5;
          }
        }

        [(TSDBezierPath *)v5 lineToPoint:v20, v22];
        return v5;
      }
    }
  }

  path = [(TSDShapeLayout *)self path];

  return path;
}

- (CGRect)p_boundsOfLineEndForHead:(BOOL)head transform:(CGAffineTransform *)transform
{
  headCopy = head;
  v7 = MEMORY[0x277CBF398];
  if (head)
  {
    strokeHeadLineEnd = [(TSDShapeLayout *)self strokeHeadLineEnd];
  }

  else
  {
    strokeHeadLineEnd = [(TSDShapeLayout *)self strokeTailLineEnd];
  }

  v9 = strokeHeadLineEnd;
  v10 = *v7;
  v11 = v7[1];
  v12 = v7[2];
  v13 = v7[3];
  if (strokeHeadLineEnd && ([strokeHeadLineEnd isNone] & 1) == 0)
  {
    if (headCopy)
    {
      [(TSDShapeLayout *)self headLineEndPoint];
      v15 = v14;
      v17 = v16;
      [(TSDShapeLayout *)self headLineEndAngle];
    }

    else
    {
      [(TSDShapeLayout *)self tailLineEndPoint];
      v15 = v19;
      v17 = v20;
      [(TSDShapeLayout *)self tailLineEndAngle];
    }

    v21 = v18;
    stroke = [(TSDShapeLayout *)self stroke];
    [(TSDShapeLayout *)self lineEndScale];
    v23 = *&transform->c;
    v33[0] = *&transform->a;
    v33[1] = v23;
    v33[2] = *&transform->tx;
    [stroke boundsForLineEnd:v9 atPoint:v33 atAngle:v15 withScale:v17 transform:{v21, v24}];
    v10 = v25;
    v11 = v26;
    v12 = v27;
    v13 = v28;
  }

  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v13;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)p_unitePath:(id)path withLineEndForHead:(BOOL)head stroke:(id)stroke
{
  headCopy = head;
  if (head)
  {
    strokeHeadLineEnd = [(TSDShapeLayout *)self strokeHeadLineEnd];
  }

  else
  {
    strokeHeadLineEnd = [(TSDShapeLayout *)self strokeTailLineEnd];
  }

  v10 = strokeHeadLineEnd;
  if (!strokeHeadLineEnd || ([strokeHeadLineEnd isNone] & 1) != 0)
  {
    return path;
  }

  if (headCopy)
  {
    [(TSDShapeLayout *)self headLineEndPoint];
    v13 = v12;
    v15 = v14;
    [(TSDShapeLayout *)self headLineEndAngle];
  }

  else
  {
    [(TSDShapeLayout *)self tailLineEndPoint];
    v13 = v17;
    v15 = v18;
    [(TSDShapeLayout *)self tailLineEndAngle];
  }

  v19 = v16;
  [(TSDShapeLayout *)self lineEndScale];
  v21 = [stroke pathForLineEnd:v10 wrapPath:1 atPoint:v13 atAngle:v15 withScale:{v19, v20}];

  return [path uniteWithBezierPath:v21];
}

- (void)p_updateResizeInfoGeometryFromResizePathSource
{
  mResizePathSource = self->mResizePathSource;
  [-[TSDPathSource bezierPath](mResizePathSource "bezierPath")];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = self->mResizeInfoGeometry;
  self->mResizeInfoGeometry = [(TSDInfoGeometry *)self->mResizeInfoGeometry geometryWithNewBounds:v5, v7, v9, v11];

  [(TSDPathSource *)mResizePathSource alignToOrigin];
}

@end