@interface UIGraphicsRendererContext
- (UIGraphicsRendererContext)initWithCGContext:(CGContext *)context format:(id)format;
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

- (UIGraphicsRendererContext)initWithCGContext:(CGContext *)context format:(id)format
{
  formatCopy = format;
  v7 = [(UIGraphicsRendererContext *)self init];
  if (v7)
  {
    v7->_backingContext = CGContextRetain(context);
    v8 = [formatCopy copy];
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
  cGContext = [(UIGraphicsRendererContext *)self CGContext];
  v10 = CGContextGetBlendMode();
  if (v10 == blendMode)
  {
    v11 = x;
    v12 = y;
    v13 = width;
    v14 = height;

    CGContextFillRect(cGContext, *&v11);
  }

  else
  {
    v15 = v10;
    CGContextSetBlendMode(cGContext, blendMode);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGContextFillRect(cGContext, v17);

    CGContextSetBlendMode(cGContext, v15);
  }
}

- (void)strokeRect:(CGRect)rect blendMode:(CGBlendMode)blendMode
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cGContext = [(UIGraphicsRendererContext *)self CGContext];
  v10 = CGContextGetBlendMode();
  CGContextGetLineWidth();
  v12 = v11;
  if (v10 != blendMode)
  {
    CGContextSetBlendMode(cGContext, blendMode);
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectInset(v14, v12 * 0.5, v12 * 0.5);
  CGContextStrokeRect(cGContext, v15);
  if (v10 != blendMode)
  {
    CGContextSetBlendMode(cGContext, v10);
  }

  CGContextSetLineWidth(cGContext, v12);
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
      cGContext = [(UIGraphicsRendererContext *)self CGContext];
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextClipToRect(cGContext, *&v8);
    }
  }
}

@end