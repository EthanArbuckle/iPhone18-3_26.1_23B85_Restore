@interface EQKitHBox
- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4;
- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4;
- (CGRect)p_cacheErasableBounds;
- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5;
- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4;
@end

@implementation EQKitHBox

- (void)renderIntoContext:(CGContext *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = EQKitHBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(EQKitCompoundBox *)self childBoxes];
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [v13 renderIntoContext:a3 offset:{x, y}];
          [v13 width];
          x = x + v14;
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)appendOpticalAlignToSpec:(void *)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v36 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 6);
  if (v8 == 2)
  {
    [(EQKitCompoundBox *)self width];
    v17 = v16;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [(NSArray *)[(EQKitCompoundBox *)self childBoxes] reverseObjectEnumerator];
    v10 = [(NSEnumerator *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v10)
    {
      v19 = v10;
      v20 = x + v17;
      v21 = *v27;
LABEL_14:
      v22 = 0;
      while (1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        [v23 width];
        v20 = v20 - v24;
        if ([v23 appendOpticalAlignToSpec:a3 offset:{v20, y}])
        {
          goto LABEL_21;
        }

        if (v19 == ++v22)
        {
          v19 = [(NSEnumerator *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
          LOBYTE(v10) = 0;
          if (v19)
          {
            goto LABEL_14;
          }

          return v10;
        }
      }
    }
  }

  else
  {
    if (v8)
    {
      LOBYTE(v10) = 0;
      return v10;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(EQKitCompoundBox *)self childBoxes];
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        if ([v14 appendOpticalAlignToSpec:a3 offset:{x, y}])
        {
          break;
        }

        [v14 width];
        x = x + v15;
        if (v11 == ++v13)
        {
          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
          LOBYTE(v10) = 0;
          if (v11)
          {
            goto LABEL_5;
          }

          return v10;
        }
      }

LABEL_21:
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (BOOL)p_getTransform:(CGAffineTransform *)a3 fromDescendant:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4 == self)
  {
LABEL_12:
    LOBYTE(v7) = 1;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(EQKitCompoundBox *)self childBoxes];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = 0.0;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if ([v12 p_getTransform:a3 fromDescendant:a4])
          {
            v14 = *&a3->c;
            *&v17.a = *&a3->a;
            *&v17.c = v14;
            *&v17.tx = *&a3->tx;
            CGAffineTransformTranslate(&v18, &v17, v10, 0.0);
            v15 = *&v18.c;
            *&a3->a = *&v18.a;
            *&a3->c = v15;
            *&a3->tx = *&v18.tx;
            goto LABEL_12;
          }

          [v12 width];
          v10 = v10 + v13;
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        LOBYTE(v7) = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return v7;
}

- (void)p_cacheDimensionsForHeight:(double *)a3 depth:(double *)a4 width:(double *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a3 && !a4 && !a5)
  {
    return;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(EQKitCompoundBox *)self childBoxes];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v9)
  {
    v12 = 1;
    if (a3)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v10 = v9;
  v11 = *v25;
  v12 = 1;
  do
  {
    v13 = 0;
    do
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      [v14 vsize];
      if (v15 == 0.0)
      {
        goto LABEL_24;
      }

      if (a3)
      {
        if ((v12 & 1) != 0 || (v16 = *a3, [v14 height], v16 <= v17))
        {
          [v14 height];
        }

        else
        {
          v18 = *a3;
        }

        *a3 = v18;
      }

      if (a4)
      {
        if ((v12 & 1) != 0 || (v19 = *a4, [v14 depth], v19 <= v20))
        {
          [v14 depth];
        }

        else
        {
          v21 = *a4;
        }

        v12 = 0;
        *a4 = v21;
LABEL_24:
        if (!a5)
        {
          goto LABEL_26;
        }

LABEL_25:
        [v14 width];
        *a5 = v22 + *a5;
        goto LABEL_26;
      }

      v12 = 0;
      if (a5)
      {
        goto LABEL_25;
      }

LABEL_26:
      ++v13;
    }

    while (v10 != v13);
    v23 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v10 = v23;
  }

  while (v23);
  if (!a3)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (v12)
  {
    *a3 = 0.0;
  }

LABEL_36:
  if (((a4 != 0) & v12) == 1)
  {
    *a4 = 0.0;
  }
}

- (CGRect)p_cacheErasableBounds
{
  v32 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(EQKitCompoundBox *)self childBoxes];
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        [v12 erasableBounds];
        v14 = v13;
        v16 = v15;
        r2 = v17;
        v19 = v10 + v18;
        [v12 width];
        v26 = v20;
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        if (CGRectIsEmpty(v33))
        {
          x = v19;
          y = v14;
          width = v16;
          height = r2;
        }

        else
        {
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v37.origin.x = v19;
          v37.origin.y = v14;
          v37.size.width = v16;
          v37.size.height = r2;
          v35 = CGRectUnion(v34, v37);
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
        }

        v10 = v10 + v26;
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end