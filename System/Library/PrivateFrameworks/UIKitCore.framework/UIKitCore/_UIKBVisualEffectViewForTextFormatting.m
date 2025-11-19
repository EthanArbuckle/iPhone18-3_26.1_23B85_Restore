@interface _UIKBVisualEffectViewForTextFormatting
- (void)setSafeAreaInsets:(UIEdgeInsets)a3;
@end

@implementation _UIKBVisualEffectViewForTextFormatting

- (void)setSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.receiver = self;
  v3.super_class = _UIKBVisualEffectViewForTextFormatting;
  [(UIView *)&v3 setSafeAreaInsets:0.0, a3.left, a3.bottom, a3.right];
}

@end