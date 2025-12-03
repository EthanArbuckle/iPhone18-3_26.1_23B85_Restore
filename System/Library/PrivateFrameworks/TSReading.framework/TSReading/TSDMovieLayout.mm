@interface TSDMovieLayout
- (CGRect)computeAlignmentFrameInRoot:(BOOL)root;
- (CGRect)fullReflectionBoundsForRect:(CGRect)rect;
- (CGRect)fullReflectionFrame;
- (TSDMovieLayout)initWithInfo:(id)info;
- (id)computeLayoutGeometry;
- (id)i_computeWrapPath;
- (id)layoutGeometryFromInfo;
- (id)movieInfo;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)endDynamicOperation;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)processChangedProperty:(int)property;
- (void)takeRotationFromTracker:(id)tracker;
@end

@implementation TSDMovieLayout

- (TSDMovieLayout)initWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSDMovieLayout;
  v3 = [(TSDMediaLayout *)&v6 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    if (![(TSDMovieLayout *)v3 movieInfo])
    {

      v4 = 0;
    }

    [(TSDLayout *)v4 invalidateFrame];
  }

  return v4;
}

- (void)dealloc
{
  self->mDynamicInfoGeometry = 0;
  v3.receiver = self;
  v3.super_class = TSDMovieLayout;
  [(TSDDrawableLayout *)&v3 dealloc];
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDMovieLayout;
  [(TSDMediaLayout *)&v5 processChangedProperty:?];
  if (property == 517)
  {
    [(TSDDrawableLayout *)self invalidateExteriorWrap];
  }
}

- (id)i_computeWrapPath
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v2 = TSDRectWithSize();

  return [TSDBezierPath bezierPathWithRect:v2];
}

- (id)layoutGeometryFromInfo
{
  if (self->mDynamicInfoGeometry)
  {
    v2 = [[TSDLayoutGeometry alloc] initWithInfoGeometry:self->mDynamicInfoGeometry];

    return v2;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TSDMovieLayout;
    return [(TSDLayout *)&v4 layoutGeometryFromInfo];
  }
}

- (id)movieInfo
{
  objc_opt_class();
  [(TSDLayout *)self info];

  return TSUDynamicCast();
}

- (void)takeRotationFromTracker:(id)tracker
{
  v12.receiver = self;
  v12.super_class = TSDMovieLayout;
  [(TSDLayout *)&v12 takeRotationFromTracker:?];

  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (tracker)
  {
    [tracker rotateTransform];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0uLL;
    v6 = 0uLL;
  }

  [(TSDLayout *)self layoutTransformInInfoSpace:&v6];
  geometry = [(TSDInfo *)[(TSDLayout *)self info] geometry];
  v6 = v9;
  v7 = v10;
  v8 = v11;
  self->mDynamicInfoGeometry = [geometry geometryByAppendingTransform:&v6];
  [(TSDLayout *)self invalidatePosition];
}

- (void)beginDynamicOperation
{
  v3.receiver = self;
  v3.super_class = TSDMovieLayout;
  [(TSDLayout *)&v3 beginDynamicOperation];
  [(TSDMovieLayout *)self p_createDynamicCopies];
}

- (void)endDynamicOperation
{
  if ([(TSDInfo *)[(TSDLayout *)self info] owningAttachment])
  {
    [(TSDDrawableLayout *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = TSDMovieLayout;
  [(TSDLayout *)&v3 endDynamicOperation];
  [(TSDMovieLayout *)self p_destroyDynamicCopies];
}

- (CGRect)fullReflectionBoundsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16) + 1.0;
  v11 = MinX;
  v12 = MaxY;
  v13 = v9;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)fullReflectionFrame
{
  [(TSDStyledLayout *)self i_baseFrame];

  [(TSDMovieLayout *)self fullReflectionBoundsForRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)computeLayoutGeometry
{
  v35.receiver = self;
  v35.super_class = TSDMovieLayout;
  computeLayoutGeometry = [(TSDLayout *)&v35 computeLayoutGeometry];
  objc_opt_class();
  [(TSDMediaLayout *)self stroke];
  v4 = TSUDynamicCast();
  [(TSDMediaLayout *)self setShouldRenderFrameStroke:0];
  if (v4 && [v4 shouldRender])
  {
    if ([v4 isFrame])
    {
      [computeLayoutGeometry size];
      v5 = TSDRectWithSize();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v4 coverageRect:?];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [computeLayoutGeometry mutableCopy];
      [v20 setSize:{v17, v19}];
      if (v20)
      {
        [v20 transform];
      }

      else
      {
        memset(&v33, 0, sizeof(v33));
      }

      CGAffineTransformTranslate(&v34, &v33, v13, v15);
      v33 = v34;
      [v20 setTransform:&v33];
      v21 = v20;
      v28 = -v13;
      v29 = -v15;
      v24 = v5;
      v25 = v7;
      v26 = v9;
      v27 = v11;
    }

    else
    {
      [v4 width];
      v23 = v22 * 0.5;
      v21 = [computeLayoutGeometry geometryByOutsettingBy:{v23, v23}];
      [computeLayoutGeometry size];
      v24 = TSDRectWithSize();
      v28 = v23;
      v29 = v23;
    }

    v36 = CGRectOffset(*&v24, v28, v29);
    [(TSDMediaLayout *)self setBoundsForStandardKnobs:v36.origin.x, v36.origin.y, v36.size.width, v36.size.height];
  }

  else
  {
    [computeLayoutGeometry size];
    [(TSDMediaLayout *)self setBoundsForStandardKnobs:TSDRectWithSize()];
    v21 = computeLayoutGeometry;
    if (!v4)
    {
      return computeLayoutGeometry;
    }
  }

  if ([v4 isFrame])
  {
    [computeLayoutGeometry size];
    [v4 coverageRectWithoutAdornment:TSDRectWithSize()];
    -[TSDMediaLayout setShouldRenderFrameStroke:](self, "setShouldRenderFrameStroke:", [v4 shouldRenderForSizeIncludingCoverage:{v30, v31}]);
  }

  return v21;
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  memset(&v10, 0, sizeof(v10));
  geometry = [(TSDAbstractLayout *)self geometry];
  if (geometry)
  {
    [(TSDLayoutGeometry *)geometry fullTransform];
    if (!rootCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
    if (!rootCopy)
    {
      goto LABEL_10;
    }
  }

  if ([(TSDAbstractLayout *)self parent])
  {
    parent = [(TSDAbstractLayout *)self parent];
    if (parent)
    {
      [(TSDAbstractLayout *)parent transformInRoot];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v7 = v10;
    CGAffineTransformConcat(&v9, &v7, &t2);
    v10 = v9;
  }

LABEL_10:
  v9 = v10;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 1.0;
  v11.size.height = 1.0;
  return CGRectApplyAffineTransform(v11, &v9);
}

- (void)p_createDynamicCopies
{
  if (self->mDynamicInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieLayout p_createDynamicCopies]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieLayout.m"), 240, @"expected nil value for '%s'", "mDynamicInfoGeometry"}];
  }

  self->mDynamicInfoGeometry = [-[TSDInfo geometry](-[TSDLayout info](self "info")];
}

- (void)p_destroyDynamicCopies
{
  mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  if (!mDynamicInfoGeometry)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieLayout p_destroyDynamicCopies]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieLayout.m"), 246, @"invalid nil value for '%s'", "mDynamicInfoGeometry"}];
    mDynamicInfoGeometry = self->mDynamicInfoGeometry;
  }

  self->mDynamicInfoGeometry = 0;
}

@end