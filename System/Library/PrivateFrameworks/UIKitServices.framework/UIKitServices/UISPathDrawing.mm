@interface UISPathDrawing
- (CGRect)alignmentRect;
- (CGSize)drawingSize;
- (UISPathDrawing)initWithRoundedRectSize:(CGSize)size cornerRadii:(double)radii[4] fillColor:(CGColor *)color;
- (UISPathDrawing)initWithType:(int64_t)type path:(CGPath *)path size:(CGSize)size fillColor:(CGColor *)color;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation UISPathDrawing

- (UISPathDrawing)initWithType:(int64_t)type path:(CGPath *)path size:(CGSize)size fillColor:(CGColor *)color
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = UISPathDrawing;
  v11 = [(UISPathDrawing *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    v11->_path = CGPathRetain(path);
    v12->_size.width = width;
    v12->_size.height = height;
    v12->_fillColor = CGColorRetain(color);
  }

  return v12;
}

- (UISPathDrawing)initWithRoundedRectSize:(CGSize)size cornerRadii:(double)radii[4] fillColor:(CGColor *)color
{
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x1E69E9840];
  v10 = *radii;
  v9 = *(radii + 1);
  v11 = radii[1];
  if (*radii != v11 || v11 != *&v9 || *&v9 != radii[3])
  {
    v14 = *radii;
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
    v23.size.width = size.width;
    v23.size.height = size.height;
    v23.origin.x = *MEMORY[0x1E695EFF8];
    v23.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v17 = CGPathCreateWithRoundedRect(v23, *&v10, *radii, 0);
    goto LABEL_12;
  }

  v18 = 0;
LABEL_13:
  height = [(UISPathDrawing *)self initWithType:2 * (v18 != 0) path:v18 size:color fillColor:width, height];
  CGPathRelease(v18);
  return height;
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

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  CGContextSetFillColorWithColor(context, self->_fillColor);
  type = self->_type;
  switch(type)
  {
    case 2:
      if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
      {
        CGContextTranslateCTM(context, x, y);
      }

      CGContextAddPath(context, self->_path);

      CGContextFillPath(context);
      break;
    case 1:
      width = self->_size.width;
      height = self->_size.height;
      v15 = x;
      v16 = y;

      CGContextFillEllipseInRect(context, *&v15);
      break;
    case 0:
      v9 = self->_size.width;
      v10 = self->_size.height;
      v11 = x;
      v12 = y;

      CGContextFillRect(context, *&v11);
      break;
  }
}

@end