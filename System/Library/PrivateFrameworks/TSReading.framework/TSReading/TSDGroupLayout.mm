@interface TSDGroupLayout
- (BOOL)canFlip;
- (BOOL)supportsParentRotation;
- (BOOL)supportsRotation;
- (CGRect)alignmentFrame;
- (CGRect)boundsForStandardKnobs;
- (CGSize)minimumSize;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)computeInfoGeometryDuringResize;
- (id)computeLayoutGeometry;
- (id)i_computeWrapPath;
- (id)i_externalWrapPath;
- (id)i_wrapPath;
- (id)layoutGeometryFromInfo;
- (id)p_childWrapPathsFrom:(id)a3;
- (id)reliedOnLayouts;
- (id)visibleGeometries;
- (void)beginDynamicOperation;
- (void)dealloc;
- (void)dragBy:(CGPoint)a3;
- (void)endDynamicOperation;
- (void)invalidate;
- (void)invalidateExteriorWrap;
- (void)p_createDynamicCopies;
- (void)p_destroyDynamicCopies;
- (void)p_invalidateDescendentWrapPaths;
- (void)p_invalidateParentForWrap;
- (void)processChangedProperty:(int)a3;
- (void)setDynamicGeometry:(id)a3;
- (void)setGeometry:(id)a3;
- (void)takeRotationFromTracker:(id)a3;
- (void)wrappableChildInvalidated;
@end

@implementation TSDGroupLayout

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDGroupLayout;
  [(TSDLayout *)&v3 dealloc];
}

- (id)visibleGeometries
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v4 = [(TSDAbstractLayout *)self geometry];
  if (v4)
  {
    [(TSDLayoutGeometry *)v4 transform];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(TSDAbstractLayout *)self children];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v22 + 1) + 8 * v9) visibleGeometries];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * v14);
              v17[0] = v26;
              v17[1] = v27;
              v17[2] = v28;
              [v3 addObject:{objc_msgSend(v15, "geometryByTransformingBy:", v17)}];
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
          }

          while (v12);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)layoutGeometryFromInfo
{
  result = self->mDynamicLayoutGeometry;
  if (!result)
  {
    v4 = [[TSDLayoutGeometry alloc] initWithInfoGeometry:[(TSDInfo *)[(TSDLayout *)self info] geometry]];

    return v4;
  }

  return result;
}

- (id)reliedOnLayouts
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(TSDAbstractLayout *)self children];

  return [v2 setWithArray:v3];
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

- (id)computeLayoutGeometry
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(TSDLayout *)self i_layoutGeometryProvider];
  v4 = [v3 layoutGeometryForLayout:self];
  if (!v4)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [(TSDAbstractLayout *)self children];
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [objc_msgSend(*(*(&v15 + 1) + 8 * v14) "pureGeometry")];
          v23.origin.x = x;
          v23.origin.y = y;
          v23.size.width = width;
          v23.size.height = height;
          v22 = CGRectUnion(v21, v23);
          x = v22.origin.x;
          y = v22.origin.y;
          width = v22.size.width;
          height = v22.size.height;
          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    self->mBoundsForStandardKnobs.origin.x = x;
    self->mBoundsForStandardKnobs.origin.y = y;
    self->mBoundsForStandardKnobs.size.width = width;
    self->mBoundsForStandardKnobs.size.height = height;
    v4 = [(TSDGroupLayout *)self layoutGeometryFromInfo];
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      return [v3 adjustLayoutGeometry:v4 forLayout:self];
    }
  }

  return v4;
}

- (void)processChangedProperty:(int)a3
{
  v3 = *&a3;
  if (a3 == 514)
  {
    [-[TSDLayout layoutController](self "layoutController")];
  }

  v5.receiver = self;
  v5.super_class = TSDGroupLayout;
  [(TSDLayout *)&v5 processChangedProperty:v3];
}

- (CGRect)boundsForStandardKnobs
{
  x = self->mBoundsForStandardKnobs.origin.x;
  y = self->mBoundsForStandardKnobs.origin.y;
  width = self->mBoundsForStandardKnobs.size.width;
  height = self->mBoundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)alignmentFrame
{
  if (self)
  {
    [(TSDAbstractLayout *)self transform];
  }

  else
  {
    memset(&v3, 0, sizeof(v3));
  }

  return CGRectApplyAffineTransform(self->mBoundsForStandardKnobs, &v3);
}

- (void)beginDynamicOperation
{
  [(TSDGroupLayout *)self p_createDynamicCopies];
  v3.receiver = self;
  v3.super_class = TSDGroupLayout;
  [(TSDLayout *)&v3 beginDynamicOperation];
}

- (id)computeInfoGeometryDuringResize
{
  v2 = [(TSDAbstractLayout *)self geometry];

  return [(TSDLayoutGeometry *)v2 infoGeometry];
}

- (void)takeRotationFromTracker:(id)a3
{
  v10.receiver = self;
  v10.super_class = TSDGroupLayout;
  [(TSDLayout *)&v10 takeRotationFromTracker:?];
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (a3)
  {
    [a3 rotateTransform];
  }

  v5 = [(TSDLayout *)self originalGeometry];
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [(TSDGroupLayout *)self setDynamicGeometry:[(TSDLayoutGeometry *)v5 geometryByTransformingBy:v6]];
  [(TSDLayout *)self invalidatePosition];
}

- (CGSize)minimumSize
{
  v35 = *MEMORY[0x277D85DE8];
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v28 = v3;
  v5 = v4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [(TSDInfo *)[(TSDLayout *)self info] childInfos];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [-[TSDLayout layoutController](self "layoutController")];
        [objc_msgSend(v13 "geometry")];
        v15 = v14;
        v17 = v16;
        [v13 minimumSize];
        v19 = v18;
        v21 = v20;
        v22 = [v13 geometry];
        if (v22)
        {
          [v22 transform];
        }

        else
        {
          memset(&v29, 0, sizeof(v29));
        }

        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = v15;
        v37.size.height = v17;
        v38 = CGRectApplyAffineTransform(v37, &v29);
        width = v38.size.width;
        height = v38.size.height;
        v25 = [v13 geometry];
        if (v25)
        {
          [v25 transform];
        }

        else
        {
          memset(&v29, 0, sizeof(v29));
        }

        v39.origin.x = 0.0;
        v39.origin.y = 0.0;
        v39.size.width = v19;
        v39.size.height = v21;
        v40 = CGRectApplyAffineTransform(v39, &v29);
        if (width > 1.0)
        {
          v11 = fmax(v11, v40.size.width / width);
        }

        if (height > 1.0)
        {
          v10 = fmax(v10, v40.size.height / height);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v26 = v28 * v11;
  v27 = v5 * v10;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)endDynamicOperation
{
  [(TSDGroupLayout *)self p_destroyDynamicCopies];
  v3.receiver = self;
  v3.super_class = TSDGroupLayout;
  [(TSDLayout *)&v3 endDynamicOperation];
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = TSDGroupLayout;
  [(TSDLayout *)&v3 invalidate];
  [(TSDGroupLayout *)self p_invalidateParentForWrap];

  self->mCachedWrapPath = 0;
  self->mCachedExternalWrapPath = 0;
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) == 0)
  {
    *&self->super.super.mInvalidFlags |= 3u;
  }
}

- (void)invalidateExteriorWrap
{
  [(TSDGroupLayout *)self p_invalidateDescendentWrapPaths];

  self->mCachedWrapPath = 0;
  self->mCachedExternalWrapPath = 0;
}

- (void)dragBy:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = TSDGroupLayout;
  [(TSDLayout *)&v4 dragBy:a3.x, a3.y];
  [(TSDGroupLayout *)self p_invalidateParentForWrap];
}

- (void)setGeometry:(id)a3
{
  v5 = [(TSDAbstractLayout *)self geometry];
  if (!v5 || ![(TSDLayoutGeometry *)v5 isEqual:a3])
  {
    [(TSDGroupLayout *)self p_invalidateDescendentWrapPaths];
  }

  v6.receiver = self;
  v6.super_class = TSDGroupLayout;
  [(TSDAbstractLayout *)&v6 setGeometry:a3];
}

- (BOOL)supportsParentRotation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TSDAbstractLayout *)self children];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) supportsParentRotation];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)supportsRotation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TSDAbstractLayout *)self children];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) supportsParentRotation];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)canFlip
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TSDAbstractLayout *)self children];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v9 + 1) + 8 * v6) canFlip];
      if (!v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)p_childWrapPathsFrom:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        v11 = TSUDynamicCast();
        if (v11)
        {
          v12 = v11;
          v13 = [objc_msgSend(v11 "i_wrapPath")];
          [v12 transform];
          [v13 transformUsingAffineTransform:&v15];
          [v5 addObject:v13];
        }

        else if ([v10 conformsToProtocol:&unk_287E45668])
        {
          [v5 addObjectsFromArray:{-[TSDGroupLayout p_childWrapPathsFrom:](self, "p_childWrapPathsFrom:", objc_msgSend(v10, "descendentWrappables"))}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)i_computeWrapPath
{
  v2 = [(TSDGroupLayout *)self p_childWrapPathsFrom:[(TSDAbstractLayout *)self children]];

  return [TSDBezierPath uniteBezierPaths:v2];
}

- (id)i_wrapPath
{
  result = self->mCachedWrapPath;
  if (!result)
  {
    result = [TSDBezierPath uniteBezierPaths:[(TSDGroupLayout *)self p_childWrapPathsFrom:[(TSDAbstractLayout *)self children]]];
    self->mCachedWrapPath = result;
  }

  return result;
}

- (id)i_externalWrapPath
{
  result = self->mCachedExternalWrapPath;
  if (!result)
  {
    result = [TSDBezierPath exteriorOfBezierPath:[(TSDGroupLayout *)self i_wrapPath]];
    self->mCachedExternalWrapPath = result;
  }

  return result;
}

- (void)wrappableChildInvalidated
{
  self->mCachedWrapPath = 0;

  self->mCachedExternalWrapPath = 0;
}

- (void)p_createDynamicCopies
{
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) == 0)
  {
    if (self->mDynamicLayoutGeometry)
    {
      v3 = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupLayout p_createDynamicCopies]"];
      [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupLayout.m"), 405, @"expected nil value for '%s'", "mDynamicLayoutGeometry"}];
    }

    self->mDynamicLayoutGeometry = [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] copy];
  }
}

- (void)setDynamicGeometry:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSDGroupLayout;
  [(TSDLayout *)&v5 setDynamicGeometry:?];
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) == 0)
  {

    self->mDynamicLayoutGeometry = [a3 copy];
  }
}

- (void)p_destroyDynamicCopies
{
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) == 0)
  {
    mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
    if (!mDynamicLayoutGeometry)
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGroupLayout p_destroyDynamicCopies]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGroupLayout.m"), 422, @"invalid nil value for '%s'", "mDynamicLayoutGeometry"}];
      mDynamicLayoutGeometry = self->mDynamicLayoutGeometry;
    }

    self->mDynamicLayoutGeometry = 0;
  }
}

- (void)p_invalidateParentForWrap
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(TSDLayout *)self isBeingManipulated])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(TSDGroupLayout *)self descendentWrappables];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 wrapType])
          {
            v9 = [v8 parent];
            if (v9)
            {
              v10 = v9;
              while ((objc_opt_respondsToSelector() & 1) == 0)
              {
                v10 = [v10 parent];
                if (!v10)
                {
                  goto LABEL_14;
                }
              }

              [v10 wrappableChildInvalidated:v8];
            }
          }

LABEL_14:
          ;
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

- (void)p_invalidateDescendentWrapPaths
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TSDGroupLayout *)self descendentWrappables:0];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        v7 = TSUDynamicCast();
        if (v7)
        {
          [v7 invalidateExteriorWrap];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end