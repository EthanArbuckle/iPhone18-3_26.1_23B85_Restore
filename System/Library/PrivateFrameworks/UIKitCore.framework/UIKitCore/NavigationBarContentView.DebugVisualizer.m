@interface NavigationBarContentView.DebugVisualizer
- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)a3;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3;
- (void)layoutSubviews;
@end

@implementation NavigationBarContentView.DebugVisualizer

- (void)layoutSubviews
{
  v2 = self;
  sub_188EC0CD0();
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v7 = v8.receiver;
  [(UIView *)&v8 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
  [v7 setNeedsLayout];
}

- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v4 = v5.receiver;
  [(UIView *)&v5 _clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:a3.var1];
  [v4 setNeedsLayout];
}

@end