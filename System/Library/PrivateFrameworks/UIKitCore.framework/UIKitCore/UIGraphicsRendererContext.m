@interface UIGraphicsRendererContext
- (UIGraphicsRendererContext)initWithCGContext:(CGContext *)a3 format:(id)a4;
- (void)clipToRect:(CGRect)rect;
- (void)dealloc;
- (void)fillRect:(CGRect)rect blendMode:(CGBlendMode)blendMode;
- (void)strokeRect:(CGRect)rect blendMode:(CGBlendMode)blendMode;
@end

@implementation UIGraphicsRendererContext

- (void)dealloc
{
  CGContextRelease(self->_backingContext);
  v3.receiver = self;
  v3.super_class = UIGraphicsRendererContext;
  [(UIGraphicsRendererContext *)&v3 dealloc];
}

- (UIGraphicsRendererContext)initWithCGContext:(CGContext *)a3 format:(id)a4
{
  v6 = a4;
  v7 = [(UIGraphicsRendererContext *)self init];
  if (v7)
  {
    v7->_backingContext = CGContextRetain(a3);
    v8 = [v6 copy];
    format = v7->_format;
    v7->_format = v8;
  }

  return v7;
}

- (void)fillRect:(CGRect)rect blendMode:(CGBlendMode)blendMode
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(UIGraphicsRendererContext *)self CGContext];
  v10 = CGContextGetBlendMode();
  if (v10 == blendMode)
  {
    v11 = x;
    v12 = y;
    v13 = width;
    v14 = height;

    CGContextFillRect(v9, *&v11);
  }

  else
  {
    v15 = v10;
    CGContextSetBlendMode(v9, blendMode);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGContextFillRect(v9, v17);

    CGContextSetBlendMode(v9, v15);
  }
}

- (void)strokeRect:(CGRect)rect blendMode:(CGBlendMode)blendMode
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(UIGraphicsRendererContext *)self CGContext];
  v10 = CGContextGetBlendMode();
  CGContextGetLineWidth();
  v12 = v11;
  if (v10 != blendMode)
  {
    CGContextSetBlendMode(v9, blendMode);
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectInset(v14, v12 * 0.5, v12 * 0.5);
  CGContextStrokeRect(v9, v15);
  if (v10 != blendMode)
  {
    CGContextSetBlendMode(v9, v10);
  }

  CGContextSetLineWidth(v9, v12);
}

- (void)clipToRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      v7 = [(UIGraphicsRendererContext *)self CGContext];
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextClipToRect(v7, *&v8);
    }
  }
}

@end