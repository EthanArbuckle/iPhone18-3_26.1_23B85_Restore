@interface PRXPullDismissalScrollView
- (PRXPullDismissalScrollView)initWithFrame:(CGRect)a3;
- (double)dismissalPercent;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAllowsPullToDismiss:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation PRXPullDismissalScrollView

- (PRXPullDismissalScrollView)initWithFrame:(CGRect)a3
{
  v34[6] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = PRXPullDismissalScrollView;
  v3 = [(PRXPullDismissalScrollView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRXPullDismissalScrollView *)v3 setContentInsetAdjustmentBehavior:2];
    [(PRXPullDismissalScrollView *)v4 setKeyboardDismissMode:1];
    [(PRXPullDismissalScrollView *)v4 setPagingEnabled:1];
    [(PRXPullDismissalScrollView *)v4 setClipsToBounds:0];
    [(PRXPullDismissalScrollView *)v4 setShowsVerticalScrollIndicator:0];
    [(PRXPullDismissalScrollView *)v4 setShowsHorizontalScrollIndicator:0];
    [(PRXPullDismissalScrollView *)v4 setUserInteractionEnabled:1];
    [(PRXPullDismissalScrollView *)v4 setAlwaysBounceVertical:1];
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    dismissableContentContainerView = v4->_dismissableContentContainerView;
    v4->_dismissableContentContainerView = v5;

    [(UIView *)v4->_dismissableContentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXPullDismissalScrollView *)v4 addSubview:v4->_dismissableContentContainerView];
    v25 = [(PRXPullDismissalScrollView *)v4 contentLayoutGuide];
    v7 = [(PRXPullDismissalScrollView *)v4 frameLayoutGuide];
    v23 = MEMORY[0x277CCAAD0];
    [(UIView *)v4->_dismissableContentContainerView heightAnchor];
    v32 = v31 = v7;
    v30 = [v7 heightAnchor];
    v29 = [v32 constraintEqualToAnchor:v30 multiplier:1.0];
    v34[0] = v29;
    v28 = [(UIView *)v4->_dismissableContentContainerView widthAnchor];
    v27 = [v7 widthAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 multiplier:1.0];
    v34[1] = v26;
    v24 = [(UIView *)v4->_dismissableContentContainerView bottomAnchor];
    v22 = [v25 bottomAnchor];
    v21 = [v24 constraintEqualToAnchor:v22];
    v34[2] = v21;
    v20 = [(UIView *)v4->_dismissableContentContainerView leadingAnchor];
    v19 = [v25 leadingAnchor];
    v8 = [v20 constraintEqualToAnchor:v19];
    v34[3] = v8;
    v9 = [(UIView *)v4->_dismissableContentContainerView trailingAnchor];
    v10 = [v25 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v34[4] = v11;
    v12 = [(PRXPullDismissalScrollView *)v4 contentLayoutGuide];
    v13 = [v12 widthAnchor];
    v14 = [(PRXPullDismissalScrollView *)v4 widthAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v34[5] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
    [v23 activateConstraints:v16];

    v17 = v4;
  }

  return v4;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PRXPullDismissalScrollView;
  [(PRXPullDismissalScrollView *)&v3 didMoveToWindow];
  self->_hasDimissed = 0;
}

- (void)updateConstraints
{
  v9.receiver = self;
  v9.super_class = PRXPullDismissalScrollView;
  [(PRXPullDismissalScrollView *)&v9 updateConstraints];
  if (!self->_contentHeightConstraint)
  {
    v3 = [(PRXPullDismissalScrollView *)self contentLayoutGuide];
    v4 = [v3 heightAnchor];
    v5 = [(PRXPullDismissalScrollView *)self heightAnchor];
    v6 = 1.0;
    if (self->_allowsPullToDismiss)
    {
      v6 = 2.0;
    }

    v7 = [v4 constraintEqualToAnchor:v5 multiplier:v6];
    contentHeightConstraint = self->_contentHeightConstraint;
    self->_contentHeightConstraint = v7;

    [(NSLayoutConstraint *)self->_contentHeightConstraint setActive:1];
  }
}

- (void)layoutSubviews
{
  if (([(PRXPullDismissalScrollView *)self isDragging]& 1) != 0 || [(PRXPullDismissalScrollView *)self isDecelerating])
  {
    [(PRXPullDismissalScrollView *)self dismissalPercent];
    v3 = 1;
    if (v4 >= 1.0)
    {
      self->_hasDimissed = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v11.receiver = self;
  v11.super_class = PRXPullDismissalScrollView;
  [(PRXPullDismissalScrollView *)&v11 layoutSubviews];
  [(PRXPullDismissalScrollView *)self frame];
  v9 = self->_lastLayoutFrame.size.width == v7;
  if (self->_lastLayoutFrame.size.height != v8)
  {
    v9 = 0;
  }

  if ((v3 & 1) == 0 && !v9)
  {
    self->_lastLayoutFrame.origin.x = v5;
    self->_lastLayoutFrame.origin.y = v6;
    self->_lastLayoutFrame.size.width = v7;
    self->_lastLayoutFrame.size.height = v8;
    Height = 0.0;
    if (!self->_hasDimissed && self->_allowsPullToDismiss)
    {
      Height = CGRectGetHeight(*&v5);
    }

    [(PRXPullDismissalScrollView *)self setContentOffset:0.0, Height];
  }
}

- (void)setAllowsPullToDismiss:(BOOL)a3
{
  if (self->_allowsPullToDismiss != a3)
  {
    self->_allowsPullToDismiss = a3;
    [(NSLayoutConstraint *)self->_contentHeightConstraint setActive:0];
    contentHeightConstraint = self->_contentHeightConstraint;
    self->_contentHeightConstraint = 0;

    v6 = *(MEMORY[0x277CBF3A0] + 16);
    self->_lastLayoutFrame.origin = *MEMORY[0x277CBF3A0];
    self->_lastLayoutFrame.size = v6;

    [(PRXPullDismissalScrollView *)self setNeedsUpdateConstraints];
  }
}

- (double)dismissalPercent
{
  result = 0.0;
  if (self->_allowsPullToDismiss)
  {
    [(PRXPullDismissalScrollView *)self frame];
    Height = CGRectGetHeight(v7);
    [(PRXPullDismissalScrollView *)self contentOffset];
    v6 = Height - v5;
    [(PRXPullDismissalScrollView *)self frame];
    return v6 / CGRectGetHeight(v8);
  }

  return result;
}

@end