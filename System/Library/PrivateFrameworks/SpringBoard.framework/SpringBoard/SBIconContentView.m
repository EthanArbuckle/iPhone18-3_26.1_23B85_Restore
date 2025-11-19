@interface SBIconContentView
- (SBIconContentView)initWithFrame:(CGRect)a3;
- (SBIconContentView)initWithOrientation:(int64_t)a3;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setOrientation:(int64_t)a3;
@end

@implementation SBIconContentView

- (SBIconContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBIconContentView;
  v3 = [(SBIconContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBIconContentView *)v3 _setIgnoresLayerTransformForSafeAreaInsets:1];
  }

  return v4;
}

- (SBIconContentView)initWithOrientation:(int64_t)a3
{
  result = [(SBIconContentView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (result)
  {
    result->_orientation = a3;
  }

  return result;
}

- (void)setOrientation:(int64_t)a3
{
  v5 = XBInterfaceOrientationsAreOrthogonal();
  self->_orientation = a3;
  if (v5)
  {
    [(SBIconContentView *)self setNeedsLayout];

    [(SBIconContentView *)self layoutIfNeeded];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v5 = v7;
    if (v7)
    {
      [(SBIconContentView *)self addSubview:v7];
      v5 = v7;
    }
  }
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)layoutSubviews
{
  v3 = [(SBIconContentView *)self contentView];
  [(SBIconContentView *)self bounds];
  [v3 sb_setBoundsAndPositionFromFrame:?];
}

@end