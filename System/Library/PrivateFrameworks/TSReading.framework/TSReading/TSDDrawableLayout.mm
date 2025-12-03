@interface TSDDrawableLayout
- (BOOL)isHTMLWrap;
- (BOOL)supportsInspectorPositioning;
- (CGRect)boundsInfluencingExteriorWrap;
- (id)i_computeWrapPath;
- (id)i_externalWrapPath;
- (id)i_wrapPath;
- (id)wrapPolygon;
- (int)wrapDirection;
- (int)wrapFitType;
- (int)wrapType;
- (void)dealloc;
- (void)dragBy:(CGPoint)by;
- (void)i_invalidateWrap;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)invalidateParentForWrap;
- (void)parentDidChange;
- (void)processChangedProperty:(int)property;
- (void)setGeometry:(id)geometry;
@end

@implementation TSDDrawableLayout

- (void)dealloc
{
  self->mCachedWrapPolygon = 0;

  self->mCachedWrapPath = 0;
  self->mCachedExternalWrapPath = 0;
  v3.receiver = self;
  v3.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v3 dealloc];
}

- (CGRect)boundsInfluencingExteriorWrap
{
  [(TSDAbstractLayout *)self frameInRoot];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (exteriorTextWrap)
  {
    [exteriorTextWrap margin];
    if (v12 > 0.0)
    {
      v13 = -v12;
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectInset(v18, v13, v13);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)i_computeWrapPath
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v2 = TSDRectWithSize();

  return [TSDBezierPath bezierPathWithRect:v2];
}

- (id)i_wrapPath
{
  result = self->mCachedWrapPath;
  if (!result)
  {
    result = [(TSDDrawableLayout *)self i_computeWrapPath];
    self->mCachedWrapPath = result;
  }

  return result;
}

- (id)i_externalWrapPath
{
  result = self->mCachedExternalWrapPath;
  if (!result)
  {
    result = [TSDBezierPath exteriorOfBezierPath:[(TSDDrawableLayout *)self i_wrapPath]];
    self->mCachedExternalWrapPath = result;
  }

  return result;
}

- (id)wrapPolygon
{
  result = self->mCachedWrapPolygon;
  if (!result)
  {
    i_wrapPath = [(TSDDrawableLayout *)self i_wrapPath];
    exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
    if (exteriorTextWrap && (v6 = exteriorTextWrap, [exteriorTextWrap margin], v7 > 0.0))
    {
      if ([(TSDBezierPath *)i_wrapPath elementCount]>= 1001)
      {
        [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
        i_wrapPath = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
      }

      [v6 margin];
      v8 = [TSDBezierPath bezierPathByOffsettingPath:i_wrapPath joinStyle:"bezierPathByOffsettingPath:joinStyle:withThreshold:" withThreshold:1];
    }

    else
    {
      v8 = [(TSDBezierPath *)i_wrapPath copy];
    }

    v9 = v8;
    [(TSDAbstractLayout *)self transformInRoot];
    [v9 transformUsingAffineTransform:v13];
    v10 = [[TSDWrapPolygon alloc] initWithPath:v9];
    self->mCachedWrapPolygon = v10;
    [(TSDWrapPolygon *)v10 setIntersectsSelf:0];
    result = self->mCachedWrapPolygon;
    if (!result)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableLayout wrapPolygon]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableLayout.m"), 118, @"invalid nil value for '%s'", "mCachedWrapPolygon"}];
      return self->mCachedWrapPolygon;
    }
  }

  return result;
}

- (BOOL)isHTMLWrap
{
  exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (exteriorTextWrap)
  {

    LOBYTE(exteriorTextWrap) = [exteriorTextWrap isHTMLWrap];
  }

  return exteriorTextWrap;
}

- (int)wrapType
{
  exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (exteriorTextWrap)
  {

    LODWORD(exteriorTextWrap) = [exteriorTextWrap type];
  }

  return exteriorTextWrap;
}

- (int)wrapDirection
{
  exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (!exteriorTextWrap)
  {
    return 2;
  }

  return [exteriorTextWrap direction];
}

- (int)wrapFitType
{
  exteriorTextWrap = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (exteriorTextWrap)
  {

    LODWORD(exteriorTextWrap) = [exteriorTextWrap fitType];
  }

  return exteriorTextWrap;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v3 invalidate];
  [(TSDDrawableLayout *)self invalidateParentForWrap];
}

- (void)invalidateExteriorWrap
{
  self->mCachedWrapPolygon = 0;

  self->mCachedWrapPath = 0;
  self->mCachedExternalWrapPath = 0;
}

- (void)dragBy:(CGPoint)by
{
  v4.receiver = self;
  v4.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v4 dragBy:by.x, by.y];
  [(TSDDrawableLayout *)self invalidateParentForWrap];
}

- (void)setGeometry:(id)geometry
{
  geometry = [(TSDAbstractLayout *)self geometry];
  if (!geometry)
  {
    if (!self->mCachedWrapPolygon)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v6 = geometry;
  if ([(TSDLayoutGeometry *)geometry isEqual:geometry]|| !self->mCachedWrapPolygon)
  {
    goto LABEL_11;
  }

  if ([(TSDLayoutGeometry *)v6 differsInMoreThanTranslationFrom:geometry])
  {
LABEL_8:
    [(TSDDrawableLayout *)self invalidateExteriorWrap];
    goto LABEL_11;
  }

  if (geometry)
  {
    [geometry transform];
    v8 = *&v19.a;
    v9 = *&v19.c;
    v10 = *&v19.tx;
  }

  else
  {
    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v11 = *(MEMORY[0x277CBF348] + 8);
  v17 = vaddq_f64(v10, vmlaq_n_f64(vmulq_n_f64(v9, v11), v8, *MEMORY[0x277CBF348]));
  [(TSDLayoutGeometry *)v6 transform:*&v11];
  v12 = TSDSubtractPoints(v17.f64[0], v17.f64[1], vaddq_f64(*&v19.tx, vmlaq_n_f64(vmulq_n_f64(*&v19.c, v15), *&v19.a, v16)).f64[0]);
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  CGAffineTransformMakeTranslation(&v19, v12, v14);
  [(TSDWrapPolygon *)mCachedWrapPolygon transformUsingAffineTransform:&v19];
LABEL_11:
  v18.receiver = self;
  v18.super_class = TSDDrawableLayout;
  [(TSDAbstractLayout *)&v18 setGeometry:geometry];
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v5 processChangedProperty:?];
  if (property == 521)
  {
    [(TSDDrawableLayout *)self invalidateExteriorWrap];
  }
}

- (void)parentDidChange
{
  [(TSDDrawableLayout *)self invalidateExteriorWrap];
  v3.receiver = self;
  v3.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v3 parentDidChange];
}

- (void)i_invalidateWrap
{
  parent = [(TSDAbstractLayout *)self parent];
  if (parent)
  {
    parent2 = parent;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      parent2 = [(TSDAbstractLayout *)parent2 parent];
      if (!parent2)
      {
        return;
      }
    }

    [(TSDAbstractLayout *)parent2 wrappableChildInvalidated:self];
  }
}

- (void)invalidateParentForWrap
{
  if ([(TSDLayout *)self isBeingManipulated])
  {

    [(TSDDrawableLayout *)self i_invalidateWrap];
  }
}

- (BOOL)supportsInspectorPositioning
{
  if (-[TSDInfo isAnchoredToText](-[TSDLayout info](self, "info"), "isAnchoredToText") && ([-[TSDInfo exteriorTextWrap](-[TSDLayout info](self "info")] & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]^ 1;
  }
}

@end