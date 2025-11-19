@interface EQKitVBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)p_cacheErasableBounds;
- (EQKitVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitVBox

- (EQKitVBox)initWithChildBoxes:(id)a3 pivotIndex:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = EQKitVBox;
  result = [(EQKitCompoundBox *)&v6 initWithChildBoxes:a3];
  if (result)
  {
    result->mPivotIndex = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EQKitCompoundBox *)self childBoxes];
  v6 = [(EQKitVBox *)self pivotIndex];

  return [v4 initWithChildBoxes:v5 pivotIndex:v6];
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  v4 = self == a3;
  LOBYTE(self) = self == a3;
  if (a3)
  {
    if (!v4)
    {
      LODWORD(self) = [a3 isMemberOfClass:objc_opt_class()];
      if (self)
      {
        v6 = [(EQKitVBox *)v3 pivotIndex];
        if (v6 == [a3 pivotIndex])
        {
          v7 = [(EQKitCompoundBox *)v3 childBoxes];
          self = [a3 childBoxes];
          if (v7 == self)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            v8 = self;
            LOBYTE(self) = 0;
            if (v7 && v8)
            {

              LOBYTE(self) = [(EQKitVBox *)v7 isEqual:?];
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

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = EQKitVBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (a3)
  {
    [(EQKitCompoundBox *)self height];
    v9 = v8;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(EQKitCompoundBox *)self childBoxes];
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          [v16 layoutHeight];
          v18 = v13 + v17;
          [v16 renderIntoContext:a3 offset:{x, v18}];
          [v16 layoutDepth];
          v13 = v18 + v19;
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v27 = *MEMORY[0x277D85DE8];
  [(EQKitCompoundBox *)self height];
  if ((*(a3 + 6) | 2) == 2 && (v9 = v8, v24 = 0u, v25 = 0u, v22 = 0u, v23 = 0u, v10 = [(EQKitCompoundBox *)self childBoxes], (v11 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16]) != 0))
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
        v13 |= [v17 appendOpticalAlignToSpec:a3 offset:{x, v19}];
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

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if (a4 == self)
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
    v9 = [(EQKitCompoundBox *)self childBoxes];
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          [v15 layoutHeight];
          v17 = v12 + v16;
          if ([v15 p_getTransform:a3 fromDescendant:a4])
          {
            v19 = *&a3->c;
            *&v22.a = *&a3->a;
            *&v22.c = v19;
            *&v22.tx = *&a3->tx;
            CGAffineTransformTranslate(&v23, &v22, 0.0, v17);
            v20 = *&v23.c;
            *&a3->a = *&v23.a;
            *&a3->c = v20;
            *&a3->tx = *&v23.tx;
            goto LABEL_12;
          }

          [v15 layoutDepth];
          v12 = v17 + v18;
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  if (a3 || a4 || a5)
  {
    if (a3)
    {
      *a3 = 0.0;
    }

    if (a4)
    {
      *a4 = 0.0;
    }

    if (a5)
    {
      *a5 = 0.0;
    }

    v9 = [(EQKitCompoundBox *)self childBoxes];
    v10 = [(NSArray *)v9 count];
    if (v10)
    {
      v11 = v10;
      v12 = v10 - 1;
      v13 = v10 - 1;
      if ([(EQKitVBox *)self pivotIndex]< v10 - 1)
      {
        v13 = [(EQKitVBox *)self pivotIndex];
      }

      for (i = 0; v11 != i; ++i)
      {
        v15 = [(NSArray *)v9 objectAtIndex:i];
        v16 = v15;
        if (i >= v13)
        {
          if (i <= v13)
          {
            if (a3)
            {
              if (v13)
              {
                [v15 layoutHeight];
              }

              else
              {
                [v15 height];
              }

              *a3 = v19 + *a3;
            }

            if (!a4)
            {
              goto LABEL_31;
            }

            if (v13 == v12)
            {
              [v16 depth];
            }

            else
            {
              [v16 layoutDepth];
            }

LABEL_29:
            v18 = a4;
LABEL_30:
            *v18 = v17 + *v18;
            goto LABEL_31;
          }

          if (a4)
          {
            [v15 layoutVSize];
            goto LABEL_29;
          }
        }

        else if (a3)
        {
          [v15 layoutVSize];
          v18 = a3;
          goto LABEL_30;
        }

LABEL_31:
        if (a5)
        {
          v20 = *a5;
          [v16 width];
          if (v20 <= v21)
          {
            [v16 width];
          }

          else
          {
            v22 = *a5;
          }

          *a5 = v22;
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
  v9 = [(EQKitCompoundBox *)self childBoxes];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v9);
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

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
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