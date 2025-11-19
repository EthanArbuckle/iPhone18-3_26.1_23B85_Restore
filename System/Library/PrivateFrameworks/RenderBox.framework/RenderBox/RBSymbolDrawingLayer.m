@interface RBSymbolDrawingLayer
- (void)drawInContext:(CGContext *)a3;
@end

@implementation RBSymbolDrawingLayer

- (void)drawInContext:(CGContext *)a3
{
  v4 = [(RBSymbolDrawingLayer *)self delegate];
  if (v4)
  {
    [(RBSymbolLayer *)v4 drawingContents];
    v5 = v6;
    [v6 renderInContext:a3 options:0];
  }
}

@end