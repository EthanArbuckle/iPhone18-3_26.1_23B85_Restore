@interface PKActivityTableCell
- (PKActivityTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)pk_childrenForAppearance;
- (void)layoutSubviews;
@end

@implementation PKActivityTableCell

- (PKActivityTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = PKActivityTableCell;
  v4 = [(PKActivityTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v5;

    [(UIActivityIndicatorView *)v4->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v4->_activityIndicator sizeToFit];
    contentView = [(PKActivityTableCell *)v4 contentView];
    [contentView addSubview:v4->_activityIndicator];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PKActivityTableCell;
  [(PKActivityTableCell *)&v13 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKActivityTableCell *)self _shouldReverseLayoutDirection];
  [(UIActivityIndicatorView *)self->_activityIndicator frame];
  contentView = [(PKActivityTableCell *)self contentView];
  [contentView bounds];
  UIRectCenteredYInRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if ([(PKActivityTableCell *)self accessoryType])
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 15.0;
  }

  if ((_shouldReverseLayoutDirection & 1) == 0)
  {
    contentView2 = [(PKActivityTableCell *)self contentView];
    [contentView2 bounds];
    v11 = CGRectGetMaxX(v14) - v8 - v11;
  }

  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v11, v6, v8, v10];
}

- (id)pk_childrenForAppearance
{
  v7.receiver = self;
  v7.super_class = PKActivityTableCell;
  pk_childrenForAppearance = [(UITableViewCell *)&v7 pk_childrenForAppearance];
  activityIndicator = [(PKActivityTableCell *)self activityIndicator];
  v5 = [pk_childrenForAppearance arrayByAddingObject:activityIndicator];

  return v5;
}

@end