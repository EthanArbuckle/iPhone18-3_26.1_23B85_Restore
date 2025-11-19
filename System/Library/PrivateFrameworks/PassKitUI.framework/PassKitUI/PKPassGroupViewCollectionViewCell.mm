@interface PKPassGroupViewCollectionViewCell
- (void)layoutSubviews;
- (void)setGroupView:(id)a3;
@end

@implementation PKPassGroupViewCollectionViewCell

- (void)setGroupView:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_groupView, a3);
  groupView = self->_groupView;
  if (groupView)
  {
    v6 = [(PKPassGroupView *)groupView superview];

    if (!v6)
    {
      v7 = [(PKPassGroupViewCollectionViewCell *)self contentView];
      [v7 addSubview:self->_groupView];

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
    v3 = [(PKPassGroupViewCollectionViewCell *)self contentView];
    v4 = [(PKPassGroupView *)self->_groupView superview];
    v5 = v4;
    if (v4 == v3)
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
        [v3 bounds];
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