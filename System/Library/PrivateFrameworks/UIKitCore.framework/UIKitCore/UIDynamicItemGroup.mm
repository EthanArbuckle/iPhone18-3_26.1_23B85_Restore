@interface UIDynamicItemGroup
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (NSArray)items;
- (UIDynamicItemGroup)initWithItems:(NSArray *)items;
- (void)setCenter:(CGPoint)center;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation UIDynamicItemGroup

- (UIDynamicItemGroup)initWithItems:(NSArray *)items
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = items;
  v31.receiver = self;
  v31.super_class = UIDynamicItemGroup;
  v5 = [(UIDynamicItemGroup *)&v31 init];
  if (v5)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    itemsToOffsets = v5->_itemsToOffsets;
    v5->_itemsToOffsets = strongToStrongObjectsMapTable;

    if ([(NSArray *)v4 count])
    {
      v8 = unionRectOfItems(v4);
      v5->_center.x = v8 + v9 * 0.5;
      v5->_center.y = v11 + v10 * 0.5;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = v4;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = MEMORY[0x1E695DF30];
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              [v18 raise:@"Invalid Argument" format:{@"%@ cannot be initialized with items containing %@", v20, objc_opt_class()}];
            }

            v21 = v5->_itemsToOffsets;
            v22 = MEMORY[0x1E696B098];
            [v17 center];
            v25 = [v22 valueWithCGPoint:{v23 - v5->_center.x, v24 - v5->_center.y}];
            [(NSMapTable *)v21 setObject:v25 forKey:v17];
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  return v5;
}

- (NSArray)items
{
  keyEnumerator = [(NSMapTable *)self->_itemsToOffsets keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v22 = *MEMORY[0x1E69E9840];
  v5 = self->_center.x;
  v6 = self->_center.y;
  self->_center = center;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  items = [(UIDynamicItemGroup *)self items];
  v8 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = x - v5;
    v11 = y - v6;
    v12 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(items);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v14 center];
        [v14 setCenter:{v10 + v15, v11 + v16}];
      }

      v9 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_transform.tx;
  v6 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v6;
  *&t2.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v7 = *&transform->a;
    v8 = *&transform->tx;
    *&self->_transform.c = *&transform->c;
    *&self->_transform.tx = v8;
    *&self->_transform.a = v7;
    items = [(UIDynamicItemGroup *)self items];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [items countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(items);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          [v14 center];
          v15 = [(NSMapTable *)self->_itemsToOffsets objectForKey:v14];
          [v15 CGPointValue];
          v19 = v16;
          v20 = v17;

          [v14 setCenter:{vaddq_f64(vaddq_f64(*&transform->tx, vaddq_f64(vmulq_n_f64(*&transform->a, *&v19), vmulq_n_f64(*&transform->c, *&v20))), self->_center)}];
          v18 = *&transform->c;
          *&t1.a = *&transform->a;
          *&t1.c = v18;
          *&t1.tx = *&transform->tx;
          [v14 setTransform:&t1];
        }

        v11 = [items countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }
  }
}

- (CGRect)bounds
{
  items = [(UIDynamicItemGroup *)self items];
  unionRectOfItems(items);
  v4 = v3;
  v6 = v5;

  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = v4;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].a;
  *&retstr->a = *&self->tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].c;
  return self;
}

@end