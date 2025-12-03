@interface TSDStyledLayout
- (CGRect)aliasedAlignmentFrameForScale:(double)scale;
- (CGRect)alignmentFrameInRoot;
- (CGRect)frameForCulling;
- (CGRect)i_baseFrame;
- (CGRect)reflectionBoundsForRect:(CGRect)rect;
- (CGRect)reflectionFrame;
- (CGRect)reflectionFrameForSubRect:(CGRect)rect;
- (CGRect)reflectionFrameInRoot;
- (CGRect)shadowedNaturalBoundsWithoutOffset;
- (double)opacity;
- (void)dynamicOpacityUpdateToValue:(double)value;
@end

@implementation TSDStyledLayout

- (CGRect)aliasedAlignmentFrameForScale:(double)scale
{
  [(TSDAbstractLayout *)self alignmentFrame];

  v8 = TSDRoundedRectForScale(v4, v5, v6, v7, scale);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  parent = [(TSDAbstractLayout *)self parent];
  [(TSDAbstractLayout *)self alignmentFrame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (parent)
  {
    parent2 = [(TSDAbstractLayout *)self parent];
    if (parent2)
    {
      [(TSDAbstractLayout *)parent2 transformInRoot];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectApplyAffineTransform(v18, &v17);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)shadowedNaturalBoundsWithoutOffset
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  x = TSDRectWithSize();
  y = v4;
  width = v6;
  height = v8;
  v10 = [-[TSDStyledLayout styledInfo](self "styledInfo")];
  if (v10)
  {
    v11 = v10;
    if ([v10 isEnabled])
    {
      [v11 radius];
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

- (CGRect)reflectionBoundsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = fmin(rect.size.height * 0.400000006, 120.0);
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
  v10 = CGRectGetWidth(v15);
  v11 = v7 + 1.0;
  v12 = MinX;
  v13 = MaxY;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)i_baseFrame
{
  [(TSDStyledLayout *)self alignmentFrameInRoot];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(TSDAbstractLayout *)self parent])
  {
    [-[TSDAbstractLayout geometryInRoot](-[TSDAbstractLayout parent](self "parent")];
    v4 = TSDSubtractPoints(v4, v6, v11);
    v6 = v12;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)reflectionFrame
{
  [(TSDStyledLayout *)self i_baseFrame];

  [(TSDStyledLayout *)self reflectionBoundsForRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)reflectionFrameInRoot
{
  [(TSDStyledLayout *)self alignmentFrameInRoot];

  [(TSDStyledLayout *)self reflectionBoundsForRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)reflectionFrameForSubRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDStyledLayout *)self i_baseFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v38 = v12;
  v15 = v14;
  v16 = -v8;
  v17 = -v10;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v42 = CGRectOffset(v41, v16, v17);
  v35 = v42.origin.y;
  r1 = v42.origin.x;
  v33 = v42.size.height;
  v34 = v42.size.width;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinX = CGRectGetMinX(v42);
  v43.origin.x = v9;
  v43.origin.y = v11;
  v43.size.width = v13;
  v43.size.height = v15;
  v18 = v15 + CGRectGetMaxY(v43);
  v44.origin.y = v35;
  v44.origin.x = r1;
  v44.size.height = v33;
  v44.size.width = v34;
  r1a = v18 - CGRectGetMaxY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v19 = CGRectGetWidth(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v20 = CGRectGetHeight(v46) + 1.0;
  [(TSDStyledLayout *)self reflectionBoundsForRect:v9, v11, v38, v15];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = MinX;
  v30 = r1a;
  v31 = v19;
  v32 = v20;

  return CGRectIntersection(*&v29, *&v22);
}

- (CGRect)frameForCulling
{
  [(TSDAbstractLayout *)self alignmentFrame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v7 = v25.origin.x;
  v8 = v25.origin.y;
  v9 = v25.size.width;
  v10 = v25.size.height;
  if (!CGRectIsEmpty(v25))
  {
    v11 = [-[TSDStyledLayout styledInfo](self "styledInfo")];
    if (v11)
    {
      v12 = v11;
      if ([v11 isEnabled])
      {
        [v12 shadowBoundsForRect:{x, y, width, height}];
        v31.origin.x = v13;
        v31.origin.y = v14;
        v31.size.width = v15;
        v31.size.height = v16;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v31);
        v7 = v27.origin.x;
        v8 = v27.origin.y;
        v9 = v27.size.width;
        v10 = v27.size.height;
      }
    }

    if ([-[TSDStyledLayout styledInfo](self "styledInfo")])
    {
      [(TSDStyledLayout *)self reflectionBoundsForRect:x, y, width, height];
      v32.origin.x = v17;
      v32.origin.y = v18;
      v32.size.width = v19;
      v32.size.height = v20;
      v28.origin.x = v7;
      v28.origin.y = v8;
      v28.size.width = v9;
      v28.size.height = v10;
      v29 = CGRectUnion(v28, v32);
      v7 = v29.origin.x;
      v8 = v29.origin.y;
      v9 = v29.size.width;
      v10 = v29.size.height;
    }
  }

  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)opacity
{
  if (self->mIsUpdatingOpacity)
  {
    return self->mDynamicOpacity;
  }

  [-[TSDStyledLayout styledInfo](self styledInfo];
  return v5;
}

- (void)dynamicOpacityUpdateToValue:(double)value
{
  self->mDynamicOpacity = value;
  v3 = [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];

  [v3 processChangedProperty:518];
}

@end