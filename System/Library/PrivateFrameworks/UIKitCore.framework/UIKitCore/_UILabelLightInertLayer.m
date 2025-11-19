@interface _UILabelLightInertLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation _UILabelLightInertLayer

- (void)drawInContext:(CGContext *)a3
{
  v11 = [(_UILabelLightInertLayer *)self superlayer];
  v5 = [v11 delegate];
  [(_UILabelLightInertLayer *)self frame];
  v7 = v6;
  v9 = v8;
  [v5 _setDrawingLightInertLayer:1];
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, -v7, -v9);
  v10 = [v5 layer];
  [v10 drawInContext:a3];

  CGContextRestoreGState(a3);
  [v5 _setDrawingLightInertLayer:0];
}

@end