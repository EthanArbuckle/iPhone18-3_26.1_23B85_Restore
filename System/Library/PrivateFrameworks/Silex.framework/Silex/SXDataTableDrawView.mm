@interface SXDataTableDrawView
- (SXDataTableDrawView)initWithFrame:(CGRect)frame;
- (uint64_t)drawBlocks;
- (void)drawRect:(CGRect)rect;
@end

@implementation SXDataTableDrawView

- (SXDataTableDrawView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SXDataTableDrawView;
  v3 = [(SXDataTableDrawView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    drawBlocks = v3->_drawBlocks;
    v3->_drawBlocks = array;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXDataTableDrawView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SXDataTableDrawView;
  [(SXDataTableDrawView *)&v22 drawRect:?];
  CurrentContext = UIGraphicsGetCurrentContext();
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGContextClearRect(CurrentContext, v25);
  if (self)
  {
    v9 = self->_drawBlocks;
    if (v9)
    {
      v10 = v9;
      v11 = [(NSMutableArray *)self->_drawBlocks count];

      if (v11)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = self->_drawBlocks;
        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            v16 = 0;
            do
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v18 + 1) + 8 * v16);
              [(SXDataTableDrawView *)self frame];
              (*(v17 + 16))(v17, CurrentContext);
              ++v16;
            }

            while (v14 != v16);
            v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
          }

          while (v14);
        }
      }
    }
  }
}

- (uint64_t)drawBlocks
{
  if (result)
  {
    return *(result + 408);
  }

  return result;
}

@end