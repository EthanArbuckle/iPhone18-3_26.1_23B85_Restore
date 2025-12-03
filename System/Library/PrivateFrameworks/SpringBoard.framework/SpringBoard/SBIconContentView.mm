@interface SBIconContentView
- (SBIconContentView)initWithFrame:(CGRect)frame;
- (SBIconContentView)initWithOrientation:(int64_t)orientation;
- (id)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setOrientation:(int64_t)orientation;
@end

@implementation SBIconContentView

- (SBIconContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBIconContentView;
  v3 = [(SBIconContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBIconContentView *)v3 _setIgnoresLayerTransformForSafeAreaInsets:1];
  }

  return v4;
}

- (SBIconContentView)initWithOrientation:(int64_t)orientation
{
  result = [(SBIconContentView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (result)
  {
    result->_orientation = orientation;
  }

  return result;
}

- (void)setOrientation:(int64_t)orientation
{
  v5 = XBInterfaceOrientationsAreOrthogonal();
  self->_orientation = orientation;
  if (v5)
  {
    [(SBIconContentView *)self setNeedsLayout];

    [(SBIconContentView *)self layoutIfNeeded];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    viewCopy = v7;
    if (v7)
    {
      [(SBIconContentView *)self addSubview:v7];
      viewCopy = v7;
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
  contentView = [(SBIconContentView *)self contentView];
  [(SBIconContentView *)self bounds];
  [contentView sb_setBoundsAndPositionFromFrame:?];
}

@end