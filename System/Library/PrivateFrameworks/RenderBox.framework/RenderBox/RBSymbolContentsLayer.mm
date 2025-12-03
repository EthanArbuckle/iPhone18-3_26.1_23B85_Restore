@interface RBSymbolContentsLayer
- (void)setNeedsDisplayInRect:(CGRect)rect;
@end

@implementation RBSymbolContentsLayer

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  v3 = [(RBSymbolContentsLayer *)self delegate:rect.origin.x];
  if (v3)
  {

    [v3 setNeedsLayout];
  }
}

@end