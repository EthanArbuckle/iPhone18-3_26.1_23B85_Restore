@interface SidebarButtonView
- (double)contentAlpha;
- (double)verticalOffset;
- (void)setContentAlpha:(double)alpha;
- (void)setVerticalOffset:(double)offset;
@end

@implementation SidebarButtonView

- (double)contentAlpha
{
  selfCopy = self;
  sub_1D80268C0();
  v4 = v3;

  return v4;
}

- (void)setContentAlpha:(double)alpha
{
  selfCopy = self;
  sub_1D8026930();
}

- (double)verticalOffset
{
  selfCopy = self;
  v3 = sub_1D80269F8();

  return v3;
}

- (void)setVerticalOffset:(double)offset
{
  selfCopy = self;
  sub_1D8026A84(offset);
}

@end