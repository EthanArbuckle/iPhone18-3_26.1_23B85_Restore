@interface PXGPath
- (BOOL)isEqual:(id)equal;
- (CGRect)bounds;
- (PXGPath)init;
- (PXGPath)initWithBounds:(CGRect)bounds CGPath:(CGPath *)path strokeColor:(id)color lineWidth:(double)width fillColor:(id)fillColor drawingMode:(int)mode;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(PXGPath *)self lineWidth];
      v7 = v6;
      [(PXGPath *)v5 lineWidth];
      if (v7 == v8 && (v9 = [(PXGPath *)self drawingMode], v9 == [(PXGPath *)v5 drawingMode]))
      {
        strokeColor = [(PXGPath *)self strokeColor];
        strokeColor2 = [(PXGPath *)v5 strokeColor];
        if ([strokeColor isEqual:strokeColor2])
        {
          fillColor = [(PXGPath *)self fillColor];
          fillColor2 = [(PXGPath *)v5 fillColor];
          if ([fillColor isEqual:fillColor2])
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
  strokeColor = [(PXGPath *)self strokeColor];
  v4 = [strokeColor hash];
  fillColor = [(PXGPath *)self fillColor];
  v6 = [fillColor hash] ^ v4;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPath.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXGPath init]"}];

  abort();
}

- (PXGPath)initWithBounds:(CGRect)bounds CGPath:(CGPath *)path strokeColor:(id)color lineWidth:(double)width fillColor:(id)fillColor drawingMode:(int)mode
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  colorCopy = color;
  fillColorCopy = fillColor;
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
    v20->_CGPath = CGPathRetain(path);
    objc_storeStrong(&v21->_strokeColor, color);
    v21->_lineWidth = width;
    objc_storeStrong(&v21->_fillColor, fillColor);
    v21->_drawingMode = mode;
  }

  return v21;
}

@end