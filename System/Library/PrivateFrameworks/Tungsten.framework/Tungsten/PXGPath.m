@interface PXGPath
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (PXGPath)init;
- (PXGPath)initWithBounds:(CGRect)a3 CGPath:(CGPath *)a4 strokeColor:(id)a5 lineWidth:(double)a6 fillColor:(id)a7 drawingMode:(int)a8;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PXGPath

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(PXGPath *)self lineWidth];
      v7 = v6;
      [(PXGPath *)v5 lineWidth];
      if (v7 == v8 && (v9 = [(PXGPath *)self drawingMode], v9 == [(PXGPath *)v5 drawingMode]))
      {
        v10 = [(PXGPath *)self strokeColor];
        v11 = [(PXGPath *)v5 strokeColor];
        if ([v10 isEqual:v11])
        {
          v12 = [(PXGPath *)self fillColor];
          v13 = [(PXGPath *)v5 fillColor];
          if ([v12 isEqual:v13])
          {
            v14 = CGPathEqualToPath(self->_CGPath, [(PXGPath *)v5 CGPath]);
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(PXGPath *)self strokeColor];
  v4 = [v3 hash];
  v5 = [(PXGPath *)self fillColor];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ CFHash([(PXGPath *)self CGPath]);
  [(PXGPath *)self lineWidth];
  v9 = (v8 * 10.0);
  v10 = v7 ^ [(PXGPath *)self drawingMode];

  return v10 ^ v9;
}

- (void)dealloc
{
  CGPathRelease(self->_CGPath);
  v3.receiver = self;
  v3.super_class = PXGPath;
  [(PXGPath *)&v3 dealloc];
}

- (PXGPath)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGPath.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXGPath init]"}];

  abort();
}

- (PXGPath)initWithBounds:(CGRect)a3 CGPath:(CGPath *)a4 strokeColor:(id)a5 lineWidth:(double)a6 fillColor:(id)a7 drawingMode:(int)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a5;
  v19 = a7;
  v23.receiver = self;
  v23.super_class = PXGPath;
  v20 = [(PXGPath *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_bounds.origin.x = x;
    v20->_bounds.origin.y = y;
    v20->_bounds.size.width = width;
    v20->_bounds.size.height = height;
    v20->_CGPath = CGPathRetain(a4);
    objc_storeStrong(&v21->_strokeColor, a5);
    v21->_lineWidth = a6;
    objc_storeStrong(&v21->_fillColor, a7);
    v21->_drawingMode = a8;
  }

  return v21;
}

@end