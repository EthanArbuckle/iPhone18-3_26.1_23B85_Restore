@interface ScrollEdgeEffectView.LuminanceAdjustment
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ScrollEdgeEffectView.LuminanceAdjustment

- (void)layoutSubviews
{
  v2 = self;
  sub_188FF973C();
}

- (void)didMoveToWindow
{
  v2 = self;
  v4 = sub_188FF8F2C();
  if (*(v3 + 16))
  {
    sub_188FFF5D4(v3);
  }

  (v4)(&v5, 0);
}

@end