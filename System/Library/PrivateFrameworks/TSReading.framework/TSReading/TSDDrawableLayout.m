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
- (void)dragBy:(CGPoint)a3;
- (void)i_invalidateWrap;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)invalidateParentForWrap;
- (void)parentDidChange;
- (void)processChangedProperty:(int)a3;
- (void)setGeometry:(id)a3;
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
  v11 = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (v11)
  {
    [v11 margin];
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
    v4 = [(TSDDrawableLayout *)self i_wrapPath];
    v5 = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
    if (v5 && (v6 = v5, [v5 margin], v7 > 0.0))
    {
      if ([(TSDBezierPath *)v4 elementCount]>= 1001)
      {
        [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
        v4 = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
      }

      [v6 margin];
      v8 = [TSDBezierPath bezierPathByOffsettingPath:v4 joinStyle:"bezierPathByOffsettingPath:joinStyle:withThreshold:" withThreshold:1];
    }

    else
    {
      v8 = [(TSDBezierPath *)v4 copy];
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
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDrawableLayout wrapPolygon]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDrawableLayout.m"), 118, @"invalid nil value for '%s'", "mCachedWrapPolygon"}];
      return self->mCachedWrapPolygon;
    }
  }

  return result;
}

- (BOOL)isHTMLWrap
{
  v2 = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (v2)
  {

    LOBYTE(v2) = [v2 isHTMLWrap];
  }

  return v2;
}

- (int)wrapType
{
  v2 = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (v2)
  {

    LODWORD(v2) = [v2 type];
  }

  return v2;
}

- (int)wrapDirection
{
  v2 = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (!v2)
  {
    return 2;
  }

  return [v2 direction];
}

- (int)wrapFitType
{
  v2 = [(TSDInfo *)[(TSDLayout *)self info] exteriorTextWrap];
  if (v2)
  {

    LODWORD(v2) = [v2 fitType];
  }

  return v2;
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

- (void)dragBy:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v4 dragBy:a3.x, a3.y];
  [(TSDDrawableLayout *)self invalidateParentForWrap];
}

- (void)setGeometry:(id)a3
{
  v5 = [(TSDAbstractLayout *)self geometry];
  if (!v5)
  {
    if (!self->mCachedWrapPolygon)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v6 = v5;
  if ([(TSDLayoutGeometry *)v5 isEqual:a3]|| !self->mCachedWrapPolygon)
  {
    goto LABEL_11;
  }

  if ([(TSDLayoutGeometry *)v6 differsInMoreThanTranslationFrom:a3])
  {
LABEL_8:
    [(TSDDrawableLayout *)self invalidateExteriorWrap];
    goto LABEL_11;
  }

  if (a3)
  {
    [a3 transform];
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
  [(TSDAbstractLayout *)&v18 setGeometry:a3];
}

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSDDrawableLayout;
  [(TSDLayout *)&v5 processChangedProperty:?];
  if (a3 == 521)
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
  v3 = [(TSDAbstractLayout *)self parent];
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = [(TSDAbstractLayout *)v4 parent];
      if (!v4)
      {
        return;
      }
    }

    [(TSDAbstractLayout *)v4 wrappableChildInvalidated:self];
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