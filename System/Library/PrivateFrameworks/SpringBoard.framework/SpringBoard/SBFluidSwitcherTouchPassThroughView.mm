@interface SBFluidSwitcherTouchPassThroughView
- (void)setNeedsLayout;
@end

@implementation SBFluidSwitcherTouchPassThroughView

- (void)setNeedsLayout
{
  v2.receiver = self;
  v2.super_class = SBFluidSwitcherTouchPassThroughView;
  [(SBFluidSwitcherTouchPassThroughView *)&v2 setNeedsLayout];
}

@end