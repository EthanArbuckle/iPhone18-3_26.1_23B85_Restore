@interface _UILabelLightReactiveLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation _UILabelLightReactiveLayer

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(_UILabelLightReactiveLayer *)self superlayer];
  v12 = [v5 superlayer];

  v6 = [v12 delegate];
  [(_UILabelLightReactiveLayer *)self frame];
  v8 = v7;
  v10 = v9;
  [v6 _setDrawingLightReactiveLayer:1];
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, -v8, -v10);
  v11 = [v6 layer];
  [v11 drawInContext:a3];

  CGContextRestoreGState(a3);
  [v6 _setDrawingLightReactiveLayer:0];
}

@end