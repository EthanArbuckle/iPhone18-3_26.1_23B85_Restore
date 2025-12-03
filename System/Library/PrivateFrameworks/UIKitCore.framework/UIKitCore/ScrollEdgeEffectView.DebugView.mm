@interface ScrollEdgeEffectView.DebugView
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ScrollEdgeEffectView.DebugView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188FF84D4();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  v4 = sub_188FF7CB0();
  if (*(v3 + 16))
  {
    sub_188FFF5D4(v3);
  }

  (v4)(&v5, 0);
}

@end