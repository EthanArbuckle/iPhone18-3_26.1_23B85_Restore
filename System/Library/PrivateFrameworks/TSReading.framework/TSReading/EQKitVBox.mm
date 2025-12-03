@interface EQKitVBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant;
- (CGRect)p_cacheErasableBounds;
- (EQKitVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitVBox

- (EQKitVBox)initWithChildBoxes:(id)boxes pivotIndex:(unint64_t)index
{
  v6.receiver = self;
  v6.super_class = EQKitVBox;
  result = [(EQKitCompoundBox *)&v6 initWithChildBoxes:boxes];
  if (result)
  {
    result->mPivotIndex = index;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  pivotIndex = [(EQKitVBox *)self pivotIndex];

  return [v4 initWithChildBoxes:childBoxes pivotIndex:pivotIndex];
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      LODWORD(self) = [equal isMemberOfClass:objc_opt_class()];
      if (self)
      {
        pivotIndex = [(EQKitVBox *)selfCopy pivotIndex];
        if (pivotIndex == [equal pivotIndex])
        {
          childBoxes = [(EQKitCompoundBox *)selfCopy childBoxes];
          self = [equal childBoxes];
          if (childBoxes == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            selfCopy2 = self;
            LOBYTE(self) = 0;
            if (childBoxes && selfCopy2)
            {

              LOBYTE(self) = [(EQKitVBox *)childBoxes isEqual:?];
            }
          }
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = EQKitVBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (context)
  {
    [(EQKitCompoundBox *)self height];
    v9 = v8;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v11 = [(NSArray *)childBoxes countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = y - v9;
      v14 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(childBoxes);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          [v16 layoutHeight];
          v18 = v13 + v17;
          [v16 renderIntoContext:context offset:{x, v18}];
          [v16 layoutDepth];
          v13 = v18 + v19;
        }

        v12 = [(NSArray *)childBoxes countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v27 = *MEMORY[0x277D85DE8];
  [(EQKitCompoundBox *)self height];
  if ((*(spec + 6) | 2) == 2 && (v9 = v8, v24 = 0u, v25 = 0u, v22 = 0u, v23 = 0u, v10 = [(EQKitCompoundBox *)self childBoxes], (v11 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16]) != 0))
  {
    v12 = v11;
    v13 = 0;
    v14 = y - v9;
    v15 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        [v17 layoutHeight];
        v19 = v14 + v18;
        v13 |= [v17 appendOpticalAlignToSpec:spec offset:{x, v19}];
        [v17 layoutDepth];
        v14 = v19 + v20;
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

- (BOOL)p_getTransform:(CGAffineTransform *)transform fromDescendant:(id)descendant
{
  v29 = *MEMORY[0x277D85DE8];
  if (descendant == self)
  {
LABEL_12:
    LOBYTE(v10) = 1;
  }

  else
  {
    [(EQKitCompoundBox *)self height];
    v8 = v7;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v10 = [(NSArray *)childBoxes countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = -v8;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(childBoxes);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          [v15 layoutHeight];
          v17 = v12 + v16;
          if ([v15 p_getTransform:transform fromDescendant:descendant])
          {
            v19 = *&transform->c;
            *&v22.a = *&transform->a;
            *&v22.c = v19;
            *&v22.tx = *&transform->tx;
            CGAffineTransformTranslate(&v23, &v22, 0.0, v17);
            v20 = *&v23.c;
            *&transform->a = *&v23.a;
            *&transform->c = v20;
            *&transform->tx = *&v23.tx;
            goto LABEL_12;
          }

          [v15 layoutDepth];
          v12 = v17 + v18;
        }

        v11 = [(NSArray *)childBoxes countByEnumeratingWithState:&v24 objects:v28 count:16];
        LOBYTE(v10) = 0;
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitCompoundBox *)self height];
  v6 = v5;
  [(EQKitCompoundBox *)self depth];
  v8 = v7;
  [(EQKitCompoundBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f childBoxes=%@ pivotIndex=%lu", v4, self, v6, v8, v9, -[EQKitCompoundBox childBoxes](self, "childBoxes"), -[EQKitVBox pivotIndex](self, "pivotIndex")];
}

- (void)p_cacheDimensionsForHeight:(double *)height depth:(double *)depth width:(double *)width
{
  if (height || depth || width)
  {
    if (height)
    {
      *height = 0.0;
    }

    if (depth)
    {
      *depth = 0.0;
    }

    if (width)
    {
      *width = 0.0;
    }

    childBoxes = [(EQKitCompoundBox *)self childBoxes];
    v10 = [(NSArray *)childBoxes count];
    if (v10)
    {
      v11 = v10;
      v12 = v10 - 1;
      pivotIndex = v10 - 1;
      if ([(EQKitVBox *)self pivotIndex]< v10 - 1)
      {
        pivotIndex = [(EQKitVBox *)self pivotIndex];
      }

      for (i = 0; v11 != i; ++i)
      {
        v15 = [(NSArray *)childBoxes objectAtIndex:i];
        v16 = v15;
        if (i >= pivotIndex)
        {
          if (i <= pivotIndex)
          {
            if (height)
            {
              if (pivotIndex)
              {
                [v15 layoutHeight];
              }

              else
              {
                [v15 height];
              }

              *height = v19 + *height;
            }

            if (!depth)
            {
              goto LABEL_31;
            }

            if (pivotIndex == v12)
            {
              [v16 depth];
            }

            else
            {
              [v16 layoutDepth];
            }

LABEL_29:
            heightCopy = depth;
LABEL_30:
            *heightCopy = v17 + *heightCopy;
            goto LABEL_31;
          }

          if (depth)
          {
            [v15 layoutVSize];
            goto LABEL_29;
          }
        }

        else if (height)
        {
          [v15 layoutVSize];
          heightCopy = height;
          goto LABEL_30;
        }

LABEL_31:
        if (width)
        {
          v20 = *width;
          [v16 width];
          if (v20 <= v21)
          {
            [v16 width];
          }

          else
          {
            v22 = *width;
          }

          *width = v22;
        }
      }
    }
  }
}

- (CGRect)p_cacheErasableBounds
{
  v38 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  [(EQKitCompoundBox *)self height];
  v8 = v7;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  childBoxes = [(EQKitCompoundBox *)self childBoxes];
  v10 = [(NSArray *)childBoxes countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = -v8;
    v13 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = x;
        if (*v34 != v13)
        {
          objc_enumerationMutation(childBoxes);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        [v16 layoutHeight];
        v18 = v12 + v17;
        [v16 erasableBounds];
        x = v19;
        v21 = v20;
        v23 = v22;
        v32 = v18;
        v25 = v18 + v24;
        [v16 layoutDepth];
        v31 = v26;
        v39.origin.x = v15;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        if (CGRectIsEmpty(v39))
        {
          y = v25;
          width = v21;
          height = v23;
        }

        else
        {
          v40.origin.x = v15;
          v40.origin.y = y;
          v40.size.width = width;
          v40.size.height = height;
          v43.origin.x = x;
          v43.origin.y = v25;
          v43.size.width = v21;
          v43.size.height = v23;
          v41 = CGRectUnion(v40, v43);
          x = v41.origin.x;
          y = v41.origin.y;
          width = v41.size.width;
          height = v41.size.height;
        }

        v12 = v32 + v31;
      }

      v11 = [(NSArray *)childBoxes countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

@end