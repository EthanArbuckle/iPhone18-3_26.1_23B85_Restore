@interface _UIKBVisualEffectViewForTextFormatting
- (void)setSafeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation _UIKBVisualEffectViewForTextFormatting

- (void)setSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.receiver = self;
  v3.super_class = _UIKBVisualEffectViewForTextFormatting;
  [(UIView *)&v3 setSafeAreaInsets:0.0, insets.left, insets.bottom, insets.right];
}

@end