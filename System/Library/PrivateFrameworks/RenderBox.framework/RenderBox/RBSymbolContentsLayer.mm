@interface RBSymbolContentsLayer
- (void)setNeedsDisplayInRect:(CGRect)a3;
@end

@implementation RBSymbolContentsLayer

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  v3 = [(RBSymbolContentsLayer *)self delegate:a3.origin.x];
  if (v3)
  {

    [v3 setNeedsLayout];
  }
}

@end