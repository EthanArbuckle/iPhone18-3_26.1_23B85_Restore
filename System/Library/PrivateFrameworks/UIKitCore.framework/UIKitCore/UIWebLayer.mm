@interface UIWebLayer
- (void)setNeedsLayout;
@end

@implementation UIWebLayer

- (void)setNeedsLayout
{
  if (!self->_layoutsSuspended)
  {
    v2.receiver = self;
    v2.super_class = UIWebLayer;
    [(UIWebLayer *)&v2 setNeedsLayout];
  }
}

@end