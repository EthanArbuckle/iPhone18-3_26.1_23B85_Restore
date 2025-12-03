@interface UIColor(TSDPathPainter)
- (void)drawSwatchInRect:()TSDPathPainter inContext:;
- (void)paintPath:()TSDPathPainter inContext:;
@end

@implementation UIColor(TSDPathPainter)

- (void)drawSwatchInRect:()TSDPathPainter inContext:
{
  CGContextSaveGState(c);
  CGContextSetFillColorWithColor(c, [self CGColor]);
  v14.origin.x = a4;
  v14.origin.y = a5;
  v14.size.width = a6;
  v14.size.height = a7;
  CGContextFillRect(c, v14);

  CGContextRestoreGState(c);
}

- (void)paintPath:()TSDPathPainter inContext:
{
  CGContextSaveGState(c);
  CGContextSetFillColorWithColor(c, [self CGColor]);
  CGContextBeginPath(c);
  CGContextAddPath(c, a3);
  CGContextFillPath(c);

  CGContextRestoreGState(c);
}

@end