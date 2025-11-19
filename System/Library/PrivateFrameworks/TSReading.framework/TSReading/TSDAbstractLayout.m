@interface TSDAbstractLayout
- (BOOL)isAxisAlignedUnflippedInRoot;
- (BOOL)shouldSnapWhileResizing;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformInParent;
- (CGAffineTransform)transformInRoot;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)frame;
- (CGRect)frameInParent;
- (CGRect)frameInRoot;
- (CGRect)rectInParent:(CGRect)a3;
- (CGRect)rectInRoot:(CGRect)a3;
- (TSDAbstractLayout)init;
- (TSDAbstractLayout)root;
- (id)geometryInParent;
- (id)geometryInRoot;
- (id)geometryInRoot:(id)a3;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)parentLayoutForProvidingGuides;
- (id)visibleGeometries;
- (void)addChild:(id)a3;
- (void)addDescendentLayoutsToArray:(id)a3;
- (void)addLayoutsInRect:(CGRect)a3 toArray:(id)a4 deep:(BOOL)a5;
- (void)addLayoutsToArray:(id)a3;
- (void)dealloc;
- (void)exchangeChildAtIndex:(unint64_t)a3 withChildAtIndex:(unint64_t)a4;
- (void)fixTransformFromInterimPosition;
- (void)insertChild:(id)a3 above:(id)a4;
- (void)insertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChild:(id)a3 below:(id)a4;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_fixTransformFromInterimPosition:(CGPoint)a3 interimPositionXSet:(BOOL)a4 interimPositionYSet:(BOOL)a5;
- (void)replaceChild:(id)a3 with:(id)a4;
- (void)setChildren:(id)a3;
@end

@implementation TSDAbstractLayout

- (TSDAbstractLayout)init
{
  v4.receiver = self;
  v4.super_class = TSDAbstractLayout;
  v2 = [(TSDAbstractLayout *)&v4 init];
  if (v2)
  {
    v2->mGeometry = objc_alloc_init(TSDLayoutGeometry);
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableArray *)self->mChildren makeObjectsPerformSelector:sel_setParent_ withObject:0];

  v3.receiver = self;
  v3.super_class = TSDAbstractLayout;
  [(TSDAbstractLayout *)&v3 dealloc];
}

- (id)geometryInParent
{
  v3 = [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] mutableCopy];
  v4 = [(TSDAbstractLayout *)self->mParent geometry];
  if (v4)
  {
    [(TSDLayoutGeometry *)v4 transform];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [v3 transformBy:v6];
  return v3;
}

- (id)geometryInRoot
{
  v3 = [(TSDAbstractLayout *)self geometry];

  return [(TSDAbstractLayout *)self geometryInRoot:v3];
}

- (id)geometryInRoot:(id)a3
{
  v4 = [a3 mutableCopy];
  for (i = self->mParent; i; i = [(TSDAbstractLayout *)i parent])
  {
    v6 = [(TSDAbstractLayout *)i geometry:v8];
    if (v6)
    {
      [(TSDLayoutGeometry *)v6 transform];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    [v4 transformBy:&v8];
  }

  return v4;
}

- (id)visibleGeometries
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = [(TSDAbstractLayout *)self geometry];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (CGAffineTransform)transform
{
  result = [(TSDAbstractLayout *)self geometry];
  if (result)
  {

    return [(CGAffineTransform *)result transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGAffineTransform)transformInParent
{
  v5 = [(TSDAbstractLayout *)self geometry];
  if (v5)
  {
    [(TSDLayoutGeometry *)v5 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v6 = [(TSDAbstractLayout *)self->mParent geometry];
  if (v6)
  {
    [(TSDLayoutGeometry *)v6 transform];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  return CGAffineTransformConcat(retstr, &t1, &v8);
}

- (CGAffineTransform)transformInRoot
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  result = [(TSDAbstractLayout *)self geometry];
  if (result)
  {
    result = [(CGAffineTransform *)result transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  mParent = self->mParent;
  if (mParent)
  {
    do
    {
      v7 = [mParent geometry];
      if (v7)
      {
        v8 = *&retstr->c;
        v10[0] = *&retstr->a;
        v10[1] = v8;
        v10[2] = *&retstr->tx;
        [v7 transformByConcatenatingTransformTo:v10];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
        v11 = 0u;
      }

      v9 = v12;
      *&retstr->a = v11;
      *&retstr->c = v9;
      *&retstr->tx = v13;
      result = [mParent parent];
      mParent = result;
    }

    while (result);
  }

  return result;
}

- (CGRect)frame
{
  v2 = [(TSDAbstractLayout *)self geometry];

  [(TSDLayoutGeometry *)v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameInParent
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v3 = TSDRectWithSize();

  [(TSDAbstractLayout *)self rectInParent:v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameInRoot
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v3 = TSDRectWithSize();

  [(TSDAbstractLayout *)self rectInRoot:v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)rectInParent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self)
  {
    [(TSDAbstractLayout *)self transformInParent];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGRect)rectInRoot:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self)
  {
    [(TSDAbstractLayout *)self transformInRoot];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (BOOL)isAxisAlignedUnflippedInRoot
{
  if (self)
  {
    [(TSDAbstractLayout *)self transformInRoot];
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  return TSDIsTransformAxisAlignedUnflipped(v3);
}

- (id)parentLayoutForProvidingGuides
{
  v2 = [(TSDAbstractLayout *)self parent];
  if ([(TSDAbstractLayout *)v2 providesGuidesForChildLayouts])
  {
    return v2;
  }

  return [(TSDAbstractLayout *)v2 parentLayoutForProvidingGuides];
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  if (![(TSDAbstractLayout *)self providesGuidesForChildLayouts])
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDAbstractLayout layoutsForProvidingGuidesForChildLayouts]"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDAbstractLayout.m"), 155, @"This method should never be called on a layout which returns NO for providesGuidesForChildLayouts."}];
  }

  return 0;
}

- (TSDAbstractLayout)root
{
  mParent = self->mParent;
  if (mParent)
  {
    return [(TSDAbstractLayout *)mParent root];
  }

  else
  {
    return self;
  }
}

- (void)setChildren:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  mChildren = self->mChildren;
  if (mChildren != a3 && ([(NSMutableArray *)mChildren isEqual:?]& 1) == 0)
  {
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:a3];
    }

    else
    {
      v6 = 0;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = self->mChildren;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            [v12 setParent:0];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    if (self->mChildren)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->mChildren];
    }

    else
    {
      v13 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(a3);
          }

          v18 = *(*(&v20 + 1) + 8 * j);
          if (([v13 containsObject:v18] & 1) == 0)
          {
            [v18 removeFromParent];
            [v18 setParent:self];
          }
        }

        v15 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    v19 = [a3 mutableCopy];
    self->mChildren = v19;
  }
}

- (void)addChild:(id)a3
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    v6 = [(NSMutableArray *)mChildren count];
  }

  else
  {
    v6 = 0;
  }

  [(TSDAbstractLayout *)self insertChild:a3 atIndex:v6];
}

- (void)insertChild:(id)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    v6 = [a3 parent];
    if (v6)
    {
      v7 = a3;
      [a3 removeFromParent];
    }

    mChildren = self->mChildren;
    if (!mChildren)
    {
      mChildren = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->mChildren = mChildren;
    }

    [(NSMutableArray *)mChildren insertObject:a3 atIndex:a4];
    [a3 setParent:self];
    if (v6)
    {
    }
  }
}

- (void)insertChild:(id)a3 below:(id)a4
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    v7 = [(NSMutableArray *)mChildren indexOfObjectIdenticalTo:a4];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDAbstractLayout *)self insertChild:a3 atIndex:v7];
    }
  }
}

- (void)insertChild:(id)a3 above:(id)a4
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    v7 = [(NSMutableArray *)mChildren indexOfObjectIdenticalTo:a4];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(TSDAbstractLayout *)self insertChild:a3 atIndex:v7 + 1];
    }
  }
}

- (void)replaceChild:(id)a3 with:(id)a4
{
  mChildren = self->mChildren;
  if (mChildren)
  {
    v8 = [(NSMutableArray *)mChildren indexOfObjectIdenticalTo:?];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = a3;
      [(NSMutableArray *)self->mChildren removeObjectAtIndex:v9];
      [a3 setParent:0];

      [(TSDAbstractLayout *)self insertChild:a4 atIndex:v9];
    }
  }
}

- (void)exchangeChildAtIndex:(unint64_t)a3 withChildAtIndex:(unint64_t)a4
{
  mChildren = self->mChildren;
  if (!mChildren)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDAbstractLayout exchangeChildAtIndex:withChildAtIndex:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDAbstractLayout.m"), 281, @"invalid nil value for '%s'", "mChildren"}];
    mChildren = self->mChildren;
  }

  if (a3 != a4 && mChildren)
  {
    v10 = [(NSMutableArray *)mChildren count];
    if (v10 > a3 && v10 > a4)
    {
      v15 = self->mChildren;

      [(NSMutableArray *)v15 exchangeObjectAtIndex:a3 withObjectAtIndex:a4];
    }

    else
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDAbstractLayout exchangeChildAtIndex:withChildAtIndex:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDAbstractLayout.m"];

      [v12 handleFailureInFunction:v13 file:v14 lineNumber:284 description:@"bad index"];
    }
  }
}

- (void)addLayoutsInRect:(CGRect)a3 toArray:(id)a4 deep:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37 = *MEMORY[0x277D85DE8];
  [(TSDAbstractLayout *)self frameForCulling];
  if (TSDIntersectsRect(v12, v13, v14, v15, x, y, width, height))
  {
    [a4 addObject:self];
    if (v5)
    {
      [(TSDAbstractLayout *)self frameForCulling];
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v39 = CGRectIntersection(v38, v42);
      v16 = v39.origin.x;
      v17 = v39.origin.y;
      v18 = v39.size.width;
      v19 = v39.size.height;
      memset(&v35, 0, sizeof(v35));
      v20 = [(TSDAbstractLayout *)self geometry];
      if (v20)
      {
        [(TSDLayoutGeometry *)v20 transform];
      }

      else
      {
        memset(&v34, 0, sizeof(v34));
      }

      CGAffineTransformInvert(&v35, &v34);
      v34 = v35;
      v40.origin.x = v16;
      v40.origin.y = v17;
      v40.size.width = v18;
      v40.size.height = v19;
      v41 = CGRectApplyAffineTransform(v40, &v34);
      v21 = v41.origin.x;
      v22 = v41.origin.y;
      v23 = v41.size.width;
      v24 = v41.size.height;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = [(TSDAbstractLayout *)self children];
      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v31;
        do
        {
          v29 = 0;
          do
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [*(*(&v30 + 1) + 8 * v29++) addLayoutsInRect:a4 toArray:1 deep:{v21, v22, v23, v24}];
          }

          while (v27 != v29);
          v27 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v27);
      }
    }
  }
}

- (void)addLayoutsToArray:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [a3 addObject:self];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(TSDAbstractLayout *)self children];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) addLayoutsToArray:a3];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addDescendentLayoutsToArray:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TSDAbstractLayout *)self children];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) addLayoutsToArray:a3];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (CGRect)alignmentFrame
{
  v2 = [(TSDAbstractLayout *)self geometry];

  [(TSDLayoutGeometry *)v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  v3 = [(TSDAbstractLayout *)self parent];
  [(TSDAbstractLayout *)self alignmentFrame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (v3)
  {
    v12 = [(TSDAbstractLayout *)self parent];
    if (v12)
    {
      [(TSDAbstractLayout *)v12 transformInRoot];
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

- (BOOL)shouldSnapWhileResizing
{
  if (self)
  {
    [(TSDAbstractLayout *)self transformInRoot];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry:v6] size];
  return TSDIsTransformAxisAlignedWithObjectSize(&v6, v3, v4);
}

- (void)fixTransformFromInterimPosition
{
  [(TSDAbstractLayout *)self p_fixTransformFromInterimPosition:self->mInterimPositionXSet interimPositionXSet:self->mInterimPositionYSet interimPositionYSet:self->mInterimPosition.x, self->mInterimPosition.y];
  self->mLastInterimPosition = self->mInterimPosition;
  *&self->mLastInterimPositionXSet = *&self->mInterimPositionXSet;
  self->mInterimPosition = *MEMORY[0x277CBF348];
  *&self->mInterimPositionXSet = 0;
}

- (void)p_fixTransformFromInterimPosition:(CGPoint)a3 interimPositionXSet:(BOOL)a4 interimPositionYSet:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  v8 = 0.0;
  v9 = 0.0;
  if (a4)
  {
    x = a3.x;
    [(TSDAbstractLayout *)self alignmentFrameOriginForFixingInterimPosition];
    v9 = x - a3.x;
  }

  if (v5)
  {
    [(TSDAbstractLayout *)self alignmentFrameOriginForFixingInterimPosition];
    v8 = y - v11;
  }

  [(TSDAbstractLayout *)self offsetGeometryBy:v9, v8];
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v5 = [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] geometryByTranslatingBy:a3.x, a3.y];

    [(TSDAbstractLayout *)self setGeometry:v5];
  }
}

@end