@interface PKPassGroupViewCollectionViewCell
- (void)layoutSubviews;
- (void)setGroupView:(id)view;
@end

@implementation PKPassGroupViewCollectionViewCell

- (void)setGroupView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_groupView, view);
  groupView = self->_groupView;
  if (groupView)
  {
    superview = [(PKPassGroupView *)groupView superview];

    if (!superview)
    {
      contentView = [(PKPassGroupViewCollectionViewCell *)self contentView];
      [contentView addSubview:self->_groupView];

      [(PKPassGroupViewCollectionViewCell *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = PKPassGroupViewCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v21 layoutSubviews];
  if (self->_groupView)
  {
    contentView = [(PKPassGroupViewCollectionViewCell *)self contentView];
    superview = [(PKPassGroupView *)self->_groupView superview];
    v5 = superview;
    if (superview == contentView)
    {
      [(PKPassGroupView *)self->_groupView center];
      v7 = v6;
      v9 = v8;
      v10 = *MEMORY[0x1E695EFF8];
      v11 = *(MEMORY[0x1E695EFF8] + 8);

      if (v7 == v10 && v9 == v11)
      {
        [(PKPassGroupView *)self->_groupView bounds];
        [(PKPassGroupView *)self->_groupView anchorPoint];
        v14 = v13;
        v16 = v15;
        [contentView bounds];
        PKSizeAlignedInRect();
        [(PKPassGroupView *)self->_groupView setCenter:v17 + v14 * v18, v19 + v16 * v20];
      }
    }

    else
    {
    }
  }
}

@end