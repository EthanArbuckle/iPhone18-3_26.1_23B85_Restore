@interface PKPassSettingTableCell
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPassSettingTableCell)initWithTitle:(id)title detailText:(id)text target:(id)target action:(SEL)action reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setPass:(id)pass withDetailText:(id)text;
@end

@implementation PKPassSettingTableCell

- (PKPassSettingTableCell)initWithTitle:(id)title detailText:(id)text target:(id)target action:(SEL)action reuseIdentifier:(id)identifier
{
  v20.receiver = self;
  v20.super_class = PKPassSettingTableCell;
  targetCopy = target;
  textCopy = text;
  titleCopy = title;
  v14 = [(PKSettingTableCell *)&v20 initWithStyle:3 reuseIdentifier:identifier];
  [(PKSettingTableCell *)v14 setTarget:targetCopy action:action, v20.receiver, v20.super_class];

  textLabel = [(PKPassSettingTableCell *)v14 textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(PKPassSettingTableCell *)v14 textLabel];
  [textLabel2 setNumberOfLines:1];

  detailTextLabel = [(PKPassSettingTableCell *)v14 detailTextLabel];
  [detailTextLabel setText:textCopy];

  detailTextLabel2 = [(PKPassSettingTableCell *)v14 detailTextLabel];
  [detailTextLabel2 setNumberOfLines:1];

  return v14;
}

- (void)setPass:(id)pass withDetailText:(id)text
{
  passCopy = pass;
  textCopy = text;
  if (self->_pass != passCopy || (-[PKPassSettingTableCell detailTextLabel](self, "detailTextLabel"), v8 = objc_claimAutoreleasedReturnValue(), [v8 text], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9 != textCopy))
  {
    objc_storeStrong(&self->_pass, pass);
    textLabel = [(PKPassSettingTableCell *)self textLabel];
    localizedDescription = [(PKPass *)passCopy localizedDescription];
    [textLabel setText:localizedDescription];

    detailTextLabel = [(PKPassSettingTableCell *)self detailTextLabel];
    [detailTextLabel setText:textCopy];

    v13 = [PKPassThumbnailView alloc];
    if (v13)
    {
      v13 = [(PKPassThumbnailView *)&v13->super.super.super.isa initWithPass:0 suppressedContent:0 rendererState:0 options:?];
    }

    thumbnailView = self->_thumbnailView;
    self->_thumbnailView = v13;

    [(PKPassThumbnailView *)self->_thumbnailView setShadowVisibility:?];
    contentView = [(PKPassSettingTableCell *)self contentView];
    [contentView addSubview:self->_thumbnailView];

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
  contentView = [(PKPassSettingTableCell *)self contentView];
  _shouldReverseLayoutDirection = [contentView _shouldReverseLayoutDirection];

  if (_shouldReverseLayoutDirection)
  {
    v5 = CGRectMaxXEdge;
  }

  else
  {
    v5 = CGRectMinXEdge;
  }

  contentView2 = [(PKPassSettingTableCell *)self contentView];
  [contentView2 bounds];
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
  if (_shouldReverseLayoutDirection)
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
  textLabel = [(PKPassSettingTableCell *)self textLabel];
  [textLabel frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;

  width = remainder.size.width;
  x = remainder.origin.x;
  v29 = fmin(v24, remainder.size.width);
  if (_shouldReverseLayoutDirection)
  {
    y = remainder.origin.y;
    height = remainder.size.height;
    v32 = remainder.origin.x;
    x = CGRectGetMaxX(*(&width - 2)) - v29;
  }

  textLabel2 = [(PKPassSettingTableCell *)self textLabel];
  [textLabel2 setFrame:{x, v22, v29, v26}];

  detailTextLabel = [(PKPassSettingTableCell *)self detailTextLabel];
  [detailTextLabel frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = remainder.size.width;
  v42 = remainder.origin.x;
  v43 = fmin(v38, remainder.size.width);
  if (_shouldReverseLayoutDirection)
  {
    v44 = remainder.origin.y;
    v45 = remainder.size.height;
    v46 = remainder.origin.x;
    v42 = CGRectGetMaxX(*(&v41 - 2)) - v43;
  }

  detailTextLabel2 = [(PKPassSettingTableCell *)self detailTextLabel];
  [detailTextLabel2 setFrame:{v42, v36, v43, v40}];
}

@end