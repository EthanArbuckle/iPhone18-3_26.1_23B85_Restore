@interface SBAppSwitcherServicePageContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBAppSwitcherServicePageContentView)initWithFrame:(CGRect)a3;
- (double)cornerRadius;
- (unint64_t)maskedCorners;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setOrientation:(int64_t)a3;
@end

@implementation SBAppSwitcherServicePageContentView

- (SBAppSwitcherServicePageContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBAppSwitcherServicePageContentView;
  v3 = [(SBAppSwitcherServicePageContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBAppSwitcherServicePageContentView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (double)cornerRadius
{
  v2 = [(SBAppSwitcherServicePageContentView *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v4 = [(SBAppSwitcherServicePageContentView *)self layer];
  [v4 setMaskedCorners:a3];
}

- (unint64_t)maskedCorners
{
  v2 = [(SBAppSwitcherServicePageContentView *)self layer];
  v3 = [v2 maskedCorners];

  return v3;
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(SBAppSwitcherServicePageContentView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  v6 = v5;
  v8 = v7;

  v9 = [(SBAppSwitcherServicePageContentView *)self orientation];
  if ((v9 - 3) >= 2)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if ((v9 - 3) >= 2)
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