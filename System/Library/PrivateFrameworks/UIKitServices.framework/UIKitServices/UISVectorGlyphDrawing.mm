@interface UISVectorGlyphDrawing
- (CGRect)alignmentRect;
- (CGSize)drawingSize;
- (UISVectorGlyphDrawing)initWithVectorGlyph:(id)glyph tintColor:(CGColor *)color;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation UISVectorGlyphDrawing

- (UISVectorGlyphDrawing)initWithVectorGlyph:(id)glyph tintColor:(CGColor *)color
{
  glyphCopy = glyph;
  v24.receiver = self;
  v24.super_class = UISVectorGlyphDrawing;
  v7 = [(UISVectorGlyphDrawing *)&v24 init];
  if (v7)
  {
    v7->_image = CGImageRetain([glyphCopy image]);
    v7->_tintColor = CGColorRetain(color);
    [glyphCopy alignmentRect];
    v7->_imageFrame.origin.x = v8;
    v7->_imageFrame.origin.y = v9;
    v7->_imageFrame.size.width = v10;
    v7->_imageFrame.size.height = v11;
    [glyphCopy contentBounds];
    v7->_size.width = v12;
    v7->_size.height = v13;
    [glyphCopy baselineOffset];
    v15 = v14;
    [glyphCopy pointSize];
    [glyphCopy scale];
    v17 = v16;
    CTFontGetAscentForSystemFontOfSize();
    v19 = v18;
    CTFontGetDescentForSystemFontOfSize();
    v20 = v7->_imageFrame.origin.y + v7->_imageFrame.size.height - v15 - round(v17 * v19) / v17;
    width = v7->_size.width;
    v7->_alignmentRect.origin.x = 0.0;
    v7->_alignmentRect.origin.y = v20;
    v7->_alignmentRect.size.width = width;
    v7->_alignmentRect.size.height = ceil(v17 * (v19 + v22)) / v17;
  }

  return v7;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  CGColorRelease(self->_tintColor);
  v3.receiver = self;
  v3.super_class = UISVectorGlyphDrawing;
  [(UISVectorGlyphDrawing *)&v3 dealloc];
}

- (CGRect)alignmentRect
{
  x = self->_alignmentRect.origin.x;
  y = self->_alignmentRect.origin.y;
  width = self->_alignmentRect.size.width;
  height = self->_alignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
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
  height = self->_size.height;
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = -1.0;
  v8.tx = point.x;
  v8.ty = point.y + height;
  CGContextConcatCTM(context, &v8);
  if (self->_tintColor)
  {
    CGContextBeginTransparencyLayerWithRect(context, self->_imageFrame, 0);
  }

  CGContextDrawImage(context, self->_imageFrame, self->_image);
  tintColor = self->_tintColor;
  if (tintColor)
  {
    CGContextSetFillColorWithColor(context, tintColor);
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
    CGContextFillRect(context, self->_imageFrame);
    CGContextEndTransparencyLayer(context);
  }
}

@end