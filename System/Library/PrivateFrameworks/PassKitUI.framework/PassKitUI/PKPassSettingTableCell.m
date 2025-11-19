@interface PKPassSettingTableCell
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPassSettingTableCell)initWithTitle:(id)a3 detailText:(id)a4 target:(id)a5 action:(SEL)a6 reuseIdentifier:(id)a7;
- (void)layoutSubviews;
- (void)setPass:(id)a3 withDetailText:(id)a4;
@end

@implementation PKPassSettingTableCell

- (PKPassSettingTableCell)initWithTitle:(id)a3 detailText:(id)a4 target:(id)a5 action:(SEL)a6 reuseIdentifier:(id)a7
{
  v20.receiver = self;
  v20.super_class = PKPassSettingTableCell;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PKSettingTableCell *)&v20 initWithStyle:3 reuseIdentifier:a7];
  [(PKSettingTableCell *)v14 setTarget:v11 action:a6, v20.receiver, v20.super_class];

  v15 = [(PKPassSettingTableCell *)v14 textLabel];
  [v15 setText:v13];

  v16 = [(PKPassSettingTableCell *)v14 textLabel];
  [v16 setNumberOfLines:1];

  v17 = [(PKPassSettingTableCell *)v14 detailTextLabel];
  [v17 setText:v12];

  v18 = [(PKPassSettingTableCell *)v14 detailTextLabel];
  [v18 setNumberOfLines:1];

  return v14;
}

- (void)setPass:(id)a3 withDetailText:(id)a4
{
  v16 = a3;
  v7 = a4;
  if (self->_pass != v16 || (-[PKPassSettingTableCell detailTextLabel](self, "detailTextLabel"), v8 = objc_claimAutoreleasedReturnValue(), [v8 text], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != v7))
  {
    objc_storeStrong(&self->_pass, a3);
    v10 = [(PKPassSettingTableCell *)self textLabel];
    v11 = [(PKPass *)v16 localizedDescription];
    [v10 setText:v11];

    v12 = [(PKPassSettingTableCell *)self detailTextLabel];
    [v12 setText:v7];

    v13 = [PKPassThumbnailView alloc];
    if (v13)
    {
      v13 = [(PKPassThumbnailView *)&v13->super.super.super.isa initWithPass:0 suppressedContent:0 rendererState:0 options:?];
    }

    thumbnailView = self->_thumbnailView;
    self->_thumbnailView = v13;

    [(PKPassThumbnailView *)self->_thumbnailView setShadowVisibility:?];
    v15 = [(PKPassSettingTableCell *)self contentView];
    [v15 addSubview:self->_thumbnailView];

    [(PKPassSettingTableCell *)self layoutIfNeeded];
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = fmax(result.height, 56.0);
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = PKPassSettingTableCell;
  [(PKPassSettingTableCell *)&v51 layoutSubviews];
  v3 = [(PKPassSettingTableCell *)self contentView];
  v4 = [v3 _shouldReverseLayoutDirection];

  if (v4)
  {
    v5 = CGRectMaxXEdge;
  }

  else
  {
    v5 = CGRectMinXEdge;
  }

  v6 = [(PKPassSettingTableCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v8;
  remainder.origin.y = v10;
  remainder.size.width = v12;
  remainder.size.height = v14;
  [(PKPassThumbnailView *)self->_thumbnailView sizeStateForSize:v48, 1.79769313e308, v14 + -16.0];
  v15 = *v48;
  v16 = *&v48[1];
  v17 = 16.0;
  if (v4)
  {
    v52.origin.x = v8;
    v52.origin.y = v10;
    v52.size.width = v12;
    v52.size.height = v14;
    v18 = CGRectGetMaxX(v52) + -16.0 - v15;
    v17 = 16.0;
  }

  else
  {
    v18 = 16.0;
  }

  v19 = v15 + v17 + 12.0;
  v53.origin.x = v8;
  v53.origin.y = v10;
  v53.size.width = v12;
  v53.size.height = v14;
  CGRectDivide(v53, &slice, &remainder, v19, v5);
  [(PKPassThumbnailView *)self->_thumbnailView setFrame:v18, 8.0, v15, v16];
  v20 = [(PKPassSettingTableCell *)self textLabel];
  [v20 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;

  width = remainder.size.width;
  x = remainder.origin.x;
  v29 = fmin(v24, remainder.size.width);
  if (v4)
  {
    y = remainder.origin.y;
    height = remainder.size.height;
    v32 = remainder.origin.x;
    x = CGRectGetMaxX(*(&width - 2)) - v29;
  }

  v33 = [(PKPassSettingTableCell *)self textLabel];
  [v33 setFrame:{x, v22, v29, v26}];

  v34 = [(PKPassSettingTableCell *)self detailTextLabel];
  [v34 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = remainder.size.width;
  v42 = remainder.origin.x;
  v43 = fmin(v38, remainder.size.width);
  if (v4)
  {
    v44 = remainder.origin.y;
    v45 = remainder.size.height;
    v46 = remainder.origin.x;
    v42 = CGRectGetMaxX(*(&v41 - 2)) - v43;
  }

  v47 = [(PKPassSettingTableCell *)self detailTextLabel];
  [v47 setFrame:{v42, v36, v43, v40}];
}

@end