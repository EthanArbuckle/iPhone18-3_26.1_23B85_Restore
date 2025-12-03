@interface SBAppSwitcherServicePageContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBAppSwitcherServicePageContentView)initWithFrame:(CGRect)frame;
- (double)cornerRadius;
- (unint64_t)maskedCorners;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setOrientation:(int64_t)orientation;
@end

@implementation SBAppSwitcherServicePageContentView

- (SBAppSwitcherServicePageContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBAppSwitcherServicePageContentView;
  v3 = [(SBAppSwitcherServicePageContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBAppSwitcherServicePageContentView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (double)cornerRadius
{
  layer = [(SBAppSwitcherServicePageContentView *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setMaskedCorners:(unint64_t)corners
{
  layer = [(SBAppSwitcherServicePageContentView *)self layer];
  [layer setMaskedCorners:corners];
}

- (unint64_t)maskedCorners
{
  layer = [(SBAppSwitcherServicePageContentView *)self layer];
  maskedCorners = [layer maskedCorners];

  return maskedCorners;
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(SBAppSwitcherServicePageContentView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v6 = v5;
  v8 = v7;

  orientation = [(SBAppSwitcherServicePageContentView *)self orientation];
  if ((orientation - 3) >= 2)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if ((orientation - 3) >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

@end