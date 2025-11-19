@interface UISPathDrawing
- (CGRect)alignmentRect;
- (CGSize)drawingSize;
- (UISPathDrawing)initWithRoundedRectSize:(CGSize)a3 cornerRadii:(double)a4[4] fillColor:(CGColor *)a5;
- (UISPathDrawing)initWithType:(int64_t)a3 path:(CGPath *)a4 size:(CGSize)a5 fillColor:(CGColor *)a6;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4;
@end

@implementation UISPathDrawing

- (UISPathDrawing)initWithType:(int64_t)a3 path:(CGPath *)a4 size:(CGSize)a5 fillColor:(CGColor *)a6
{
  height = a5.height;
  width = a5.width;
  v14.receiver = self;
  v14.super_class = UISPathDrawing;
  v11 = [(UISPathDrawing *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    v11->_path = CGPathRetain(a4);
    v12->_size.width = width;
    v12->_size.height = height;
    v12->_fillColor = CGColorRetain(a6);
  }

  return v12;
}

- (UISPathDrawing)initWithRoundedRectSize:(CGSize)a3 cornerRadii:(double)a4[4] fillColor:(CGColor *)a5
{
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v9 = *(a4 + 1);
  v11 = a4[1];
  if (*a4 != v11 || v11 != *&v9 || *&v9 != a4[3])
  {
    v14 = *a4;
    v15 = &v21;
    vst2q_f64(v15, *&v10);
    v15 += 4;
    v16 = v9;
    vst2q_f64(v15, *&v9);
    v17 = CGPathCreateWithUnevenCornersRoundedRect();
LABEL_12:
    v18 = v17;
    goto LABEL_13;
  }

  if (*&v10 != 0.0)
  {
    v23.size.width = a3.width;
    v23.size.height = a3.height;
    v23.origin.x = *MEMORY[0x1E695EFF8];
    v23.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v17 = CGPathCreateWithRoundedRect(v23, *&v10, *a4, 0);
    goto LABEL_12;
  }

  v18 = 0;
LABEL_13:
  v19 = [(UISPathDrawing *)self initWithType:2 * (v18 != 0) path:v18 size:a5 fillColor:width, height];
  CGPathRelease(v18);
  return v19;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  CGColorRelease(self->_fillColor);
  v3.receiver = self;
  v3.super_class = UISPathDrawing;
  [(UISPathDrawing *)&v3 dealloc];
}

- (CGRect)alignmentRect
{
  width = self->_size.width;
  height = self->_size.height;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGSize)drawingSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawInContext:(CGContext *)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  CGContextSetFillColorWithColor(a3, self->_fillColor);
  type = self->_type;
  switch(type)
  {
    case 2:
      if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
      {
        CGContextTranslateCTM(a3, x, y);
      }

      CGContextAddPath(a3, self->_path);

      CGContextFillPath(a3);
      break;
    case 1:
      width = self->_size.width;
      height = self->_size.height;
      v15 = x;
      v16 = y;

      CGContextFillEllipseInRect(a3, *&v15);
      break;
    case 0:
      v9 = self->_size.width;
      v10 = self->_size.height;
      v11 = x;
      v12 = y;

      CGContextFillRect(a3, *&v11);
      break;
  }
}

@end