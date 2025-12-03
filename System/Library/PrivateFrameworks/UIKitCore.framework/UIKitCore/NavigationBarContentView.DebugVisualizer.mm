@interface NavigationBarContentView.DebugVisualizer
- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)insets;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)layoutSubviews;
@end

@implementation NavigationBarContentView.DebugVisualizer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188EC0CD0();
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v7 = v8.receiver;
  [(UIView *)&v8 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
  [v7 setNeedsLayout];
}

- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)insets
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v4 = v5.receiver;
  [(UIView *)&v5 _clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:insets.var1];
  [v4 setNeedsLayout];
}

@end