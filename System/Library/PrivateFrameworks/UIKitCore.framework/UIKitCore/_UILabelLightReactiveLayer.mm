@interface _UILabelLightReactiveLayer
- (void)drawInContext:(CGContext *)context;
@end

@implementation _UILabelLightReactiveLayer

- (void)drawInContext:(CGContext *)context
{
  superlayer = [(_UILabelLightReactiveLayer *)self superlayer];
  v5Superlayer = [superlayer superlayer];

  delegate = [v5Superlayer delegate];
  [(_UILabelLightReactiveLayer *)self frame];
  v8 = v7;
  v10 = v9;
  [delegate _setDrawingLightReactiveLayer:1];
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, -v8, -v10);
  layer = [delegate layer];
  [layer drawInContext:context];

  CGContextRestoreGState(context);
  [delegate _setDrawingLightReactiveLayer:0];
}

@end