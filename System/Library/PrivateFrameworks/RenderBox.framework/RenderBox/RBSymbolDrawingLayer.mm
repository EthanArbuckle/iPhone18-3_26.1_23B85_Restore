@interface RBSymbolDrawingLayer
- (void)drawInContext:(CGContext *)context;
@end

@implementation RBSymbolDrawingLayer

- (void)drawInContext:(CGContext *)context
{
  delegate = [(RBSymbolDrawingLayer *)self delegate];
  if (delegate)
  {
    [(RBSymbolLayer *)delegate drawingContents];
    v5 = v6;
    [v6 renderInContext:context options:0];
  }
}

@end