@interface SXContainerLayout
- (BOOL)isHTMLWrap;
- (BOOL)supportsInspectorPositioning;
- (CGRect)boundsInfluencingExteriorWrap;
- (id)childrenForLayout;
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
- (void)updateChildrenFromInfo;
@end

@implementation SXContainerLayout

- (void)dealloc
{
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  self->mCachedWrapPolygon = 0;

  mCachedWrapPath = self->mCachedWrapPath;
  self->mCachedWrapPath = 0;

  mCachedExternalWrapPath = self->mCachedExternalWrapPath;
  self->mCachedExternalWrapPath = 0;

  v6.receiver = self;
  v6.super_class = SXContainerLayout;
  [(TSDLayout *)&v6 dealloc];
}

- (id)childrenForLayout
{
  v3 = [(TSDContainerLayout *)self childInfosForLayout];
  v4 = [(SXContainerLayout *)self additionalLayouts];
  v5 = v3;
  v6 = v5;
  if (v5 && v4)
  {
    v7 = [v5 arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v7 = v5;
    if (!v5)
    {
      v7 = 0;
      if (v4)
      {
        v7 = v4;
      }
    }
  }

  return v7;
}

- (void)updateChildrenFromInfo
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(SXContainerLayout *)self childrenForLayout];
  v27 = [(TSDAbstractLayout *)self children];
  if (!v27 || (v4 = [v3 count], v4 != objc_msgSend(v27, "count")))
  {
LABEL_16:
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = [(TSDLayout *)self layoutController];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v3;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v19 = *v29;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        objc_opt_class();
        v21 = TSUDynamicCast();
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v23 = TSUProtocolCast();
          v24 = [v15 layoutForInfo:v23 childOfLayout:self];
          if (v24)
          {
            v22 = v24;
          }

          else
          {
            v22 = [objc_alloc(objc_msgSend(v23 "layoutClass"))];
            [(SXContainerLayout *)self childLayoutCreated:v22];

            if (!v22)
            {
              continue;
            }
          }
        }

        [v5 addObject:{v22, v26}];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v18)
      {
LABEL_29:

        [(TSDAbstractLayout *)self setChildren:v5];
        [(SXContainerLayout *)self invalidate];

        v3 = v26;
        goto LABEL_30;
      }
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (j = 0; j != v7; ++j)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * j);
        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = [v27 objectAtIndex:0];
        v13 = v12;
        if (v11)
        {

          if (v13 != v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v14 = [v12 info];

          if (v14 != v10)
          {
LABEL_15:

            goto LABEL_16;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

LABEL_30:

  v25 = [(TSDAbstractLayout *)self children];
  [v25 makeObjectsPerformSelector:sel_updateChildrenFromInfo];
}

- (CGRect)boundsInfluencingExteriorWrap
{
  [(TSDAbstractLayout *)self frameInRoot];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(SXContainerLayout *)self i_exteriorTextWrap];
  v12 = v11;
  if (v11)
  {
    [v11 margin];
    if (v13 > 0.0)
    {
      v14 = -v13;
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      v20 = CGRectInset(v19, v14, v14);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
    }
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)i_computeWrapPath
{
  v2 = MEMORY[0x1E69D5628];
  v3 = [(TSDAbstractLayout *)self geometry];
  [v3 size];
  TSDRectWithSize();
  v4 = [v2 bezierPathWithRect:?];

  return v4;
}

- (id)i_wrapPath
{
  mCachedWrapPath = self->mCachedWrapPath;
  if (!mCachedWrapPath)
  {
    v4 = [(SXContainerLayout *)self i_computeWrapPath];
    v5 = self->mCachedWrapPath;
    self->mCachedWrapPath = v4;

    mCachedWrapPath = self->mCachedWrapPath;
  }

  return mCachedWrapPath;
}

- (id)i_externalWrapPath
{
  mCachedExternalWrapPath = self->mCachedExternalWrapPath;
  if (!mCachedExternalWrapPath)
  {
    v4 = MEMORY[0x1E69D5628];
    v5 = [(SXContainerLayout *)self i_wrapPath];
    v6 = [v4 exteriorOfBezierPath:v5];
    v7 = self->mCachedExternalWrapPath;
    self->mCachedExternalWrapPath = v6;

    mCachedExternalWrapPath = self->mCachedExternalWrapPath;
  }

  return mCachedExternalWrapPath;
}

- (id)wrapPolygon
{
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  if (!mCachedWrapPolygon)
  {
    v4 = [(SXContainerLayout *)self i_wrapPath];
    v5 = [(SXContainerLayout *)self i_exteriorTextWrap];
    v6 = v5;
    if (v5 && ([v5 margin], v7 > 0.0))
    {
      if ([v4 elementCount] >= 1001)
      {
        v8 = MEMORY[0x1E69D5628];
        v9 = [(TSDAbstractLayout *)self geometry];
        [v9 size];
        TSDRectWithSize();
        v10 = [v8 bezierPathWithRect:?];

        v4 = v10;
      }

      [v6 margin];
      v11 = [v4 bezierPathByOffsettingPath:1 joinStyle:? withThreshold:?];
    }

    else
    {
      v11 = [v4 copy];
    }

    v12 = v11;

    [(TSDAbstractLayout *)self transformInRoot];
    [v12 transformUsingAffineTransform:v19];
    v13 = [objc_alloc(MEMORY[0x1E69D5688]) initWithPath:v12];
    v14 = self->mCachedWrapPolygon;
    self->mCachedWrapPolygon = v13;

    [(TSDWrapPolygon *)self->mCachedWrapPolygon setIntersectsSelf:0];
    mCachedWrapPolygon = self->mCachedWrapPolygon;
    if (!mCachedWrapPolygon)
    {
      v15 = [MEMORY[0x1E69D5768] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[SXContainerLayout wrapPolygon]"];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/FeldsparServicesUI/Modules/silex/Silex/Text/Tangier/SXContainerLayout.m"];
      [v15 handleFailureInFunction:v16 file:v17 lineNumber:225 description:{@"invalid nil value for '%s'", "mCachedWrapPolygon"}];

      mCachedWrapPolygon = self->mCachedWrapPolygon;
    }
  }

  return mCachedWrapPolygon;
}

- (BOOL)isHTMLWrap
{
  v2 = [(SXContainerLayout *)self i_exteriorTextWrap];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isHTMLWrap];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)wrapType
{
  v2 = [(SXContainerLayout *)self i_exteriorTextWrap];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)wrapDirection
{
  v2 = [(SXContainerLayout *)self i_exteriorTextWrap];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 direction];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (int)wrapFitType
{
  v2 = [(SXContainerLayout *)self i_exteriorTextWrap];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fitType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = SXContainerLayout;
  [(TSDLayout *)&v3 invalidate];
  [(SXContainerLayout *)self invalidateParentForWrap];
}

- (void)invalidateExteriorWrap
{
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  self->mCachedWrapPolygon = 0;

  mCachedWrapPath = self->mCachedWrapPath;
  self->mCachedWrapPath = 0;

  mCachedExternalWrapPath = self->mCachedExternalWrapPath;
  self->mCachedExternalWrapPath = 0;
}

- (void)dragBy:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = SXContainerLayout;
  [(TSDLayout *)&v4 dragBy:a3.x, a3.y];
  [(SXContainerLayout *)self invalidateParentForWrap];
}

- (void)setGeometry:(id)a3
{
  v4 = a3;
  v5 = [(TSDAbstractLayout *)self geometry];
  v6 = v5;
  if (!v5)
  {
    if (!self->mCachedWrapPolygon)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (([v5 isEqual:v4] & 1) != 0 || !self->mCachedWrapPolygon)
  {
    goto LABEL_10;
  }

  if ([v6 differsInMoreThanTranslationFrom:v4])
  {
LABEL_8:
    [(SXContainerLayout *)self invalidateExteriorWrap];
    goto LABEL_10;
  }

  if (v4)
  {
    [v4 transform];
  }

  [v6 transform];
  TSDSubtractPoints();
  mCachedWrapPolygon = self->mCachedWrapPolygon;
  CGAffineTransformMakeTranslation(&v11, v8, v9);
  [(TSDWrapPolygon *)mCachedWrapPolygon transformUsingAffineTransform:&v11];
LABEL_10:
  v10.receiver = self;
  v10.super_class = SXContainerLayout;
  [(TSDAbstractLayout *)&v10 setGeometry:v4];
}

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = SXContainerLayout;
  [(TSDLayout *)&v5 processChangedProperty:?];
  if (a3 == 521)
  {
    [(SXContainerLayout *)self invalidateExteriorWrap];
  }
}

- (void)parentDidChange
{
  [(SXContainerLayout *)self invalidateExteriorWrap];
  v3.receiver = self;
  v3.super_class = SXContainerLayout;
  [(TSDLayout *)&v3 parentDidChange];
}

- (void)i_invalidateWrap
{
  v3 = [(TSDAbstractLayout *)self parent];
  if (v3)
  {
    while (1)
    {
      v5 = v3;
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v4 = [v5 parent];

      v3 = v4;
      if (!v4)
      {
        return;
      }
    }

    [v5 wrappableChildInvalidated:self];
  }
}

- (void)invalidateParentForWrap
{
  if ([(TSDLayout *)self isBeingManipulated])
  {

    [(SXContainerLayout *)self i_invalidateWrap];
  }
}

- (BOOL)supportsInspectorPositioning
{
  v4 = [(TSDLayout *)self info];
  v5 = [v4 isAnchoredToText];
  if (v5)
  {
    v2 = [(SXContainerLayout *)self i_exteriorTextWrap];
    if ([v2 isHTMLWrap])
    {
      LOBYTE(v6) = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v7 = [(TSDLayout *)self info];
  v6 = [v7 isInlineWithText] ^ 1;

  if (v5)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

@end