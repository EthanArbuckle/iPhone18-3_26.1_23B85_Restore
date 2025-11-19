@interface _UIKBVoidSpace
- (_UIKBVoidSpace)init;
- (id)divideSpaceIntoNumberOfPieces:(unint64_t)a3;
- (void)addRect:(CGRect)a3;
@end

@implementation _UIKBVoidSpace

- (id)divideSpaceIntoNumberOfPieces:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_distinctSpaces;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v25 + 1) + 8 * i) CGRectValue];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = [(NSMutableArray *)self->_distinctSpaces count];
        if (v16 > 0.0)
        {
          v20 = v16 / (a3 / v19);
          v21 = v16;
          v22 = v12;
          do
          {
            v32.origin.x = v12;
            v32.origin.y = v14;
            v32.size.width = v16;
            v32.size.height = v18;
            v33.origin.x = v22;
            v33.origin.y = v14;
            v33.size.width = v20;
            v33.size.height = v18;
            if (!CGRectContainsRect(v32, v33))
            {
              break;
            }

            v23 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v14, v20, v18}];
            [v5 addObject:v23];

            v22 = v20 + v22;
            v21 = v21 - v20;
          }

          while (v21 > 0.0);
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)addRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29 = *MEMORY[0x1E69E9840];
  MinX = CGRectGetMinX(a3);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_distinctSpaces;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v24 + 1) + 8 * v13);
      [v14 CGRectValue];
      if (vabdd_f64(CGRectGetMaxX(v30), MinX) < 0.00000011920929)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v14;

    if (!v15)
    {
      goto LABEL_12;
    }

    [v15 CGRectValue];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v32 = CGRectUnion(v31, v33);
    v16 = v32.origin.x;
    v17 = v32.origin.y;
    v18 = v32.size.width;
    v19 = v32.size.height;
    v20 = [(NSMutableArray *)self->_distinctSpaces indexOfObject:v15];
    distinctSpaces = self->_distinctSpaces;
    v22 = [MEMORY[0x1E696B098] valueWithCGRect:{v16, v17, v18, v19}];
    [(NSMutableArray *)distinctSpaces replaceObjectAtIndex:v20 withObject:v22];
  }

  else
  {
LABEL_9:

LABEL_12:
    v23 = self->_distinctSpaces;
    v15 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height, v24}];
    [(NSMutableArray *)v23 addObject:v15];
  }
}

- (_UIKBVoidSpace)init
{
  v6.receiver = self;
  v6.super_class = _UIKBVoidSpace;
  v2 = [(_UIKBVoidSpace *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    distinctSpaces = v2->_distinctSpaces;
    v2->_distinctSpaces = v3;
  }

  return v2;
}

@end