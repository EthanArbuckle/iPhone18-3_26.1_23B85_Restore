@interface SidebarButtonView
- (double)contentAlpha;
- (double)verticalOffset;
- (void)setContentAlpha:(double)a3;
- (void)setVerticalOffset:(double)a3;
@end

@implementation SidebarButtonView

- (double)contentAlpha
{
  v2 = self;
  sub_1D80268C0();
  v4 = v3;

  return v4;
}

- (void)setContentAlpha:(double)a3
{
  v3 = self;
  sub_1D8026930();
}

- (double)verticalOffset
{
  v2 = self;
  v3 = sub_1D80269F8();

  return v3;
}

- (void)setVerticalOffset:(double)a3
{
  v4 = self;
  sub_1D8026A84(a3);
}

@end