@interface PKActivationMethodTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation PKActivationMethodTableViewCell

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKActivationMethodTableViewCell;
  [(PKActivationMethodTableViewCell *)&v25 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKActivationMethodTableViewCell *)self _shouldReverseLayoutDirection];
  contentView = [(PKActivationMethodTableViewCell *)self contentView];
  [contentView frame];
  Width = CGRectGetWidth(v26);

  v6 = Width + -30.0;
  textLabel = [(PKActivationMethodTableViewCell *)self textLabel];
  [textLabel sizeToFit];
  [textLabel frame];
  v11 = v10;
  if (Width + -30.0 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = Width + -30.0;
  }

  v13 = 15.0;
  v14 = 15.0;
  if (_shouldReverseLayoutDirection)
  {
    v15 = 10.0;
    v16 = v12;
    v14 = v6 - CGRectGetWidth(*&v8);
  }

  [textLabel setFrame:{v14, 10.0, v12, v11}];
  detailTextLabel = [(PKActivationMethodTableViewCell *)self detailTextLabel];
  [detailTextLabel sizeToFit];
  [detailTextLabel frame];
  v20 = v19;
  v22 = v21;
  if (v6 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v6;
  }

  v27.origin.y = 10.0;
  v27.origin.x = v14;
  v27.size.width = v12;
  v27.size.height = v11;
  MaxY = CGRectGetMaxY(v27);
  if (_shouldReverseLayoutDirection)
  {
    v28.origin.x = v20;
    v28.origin.y = MaxY;
    v28.size.width = v23;
    v28.size.height = v22;
    v13 = v6 - CGRectGetWidth(v28);
  }

  [detailTextLabel setFrame:{v13, MaxY, v23, v22}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(PKActivationMethodTableViewCell *)self detailTextLabel:fits.width];
  font = [v5 font];
  [font lineHeight];
  v8 = v7 + 20.0;

  textLabel = [(PKActivationMethodTableViewCell *)self textLabel];
  font2 = [textLabel font];
  [font2 lineHeight];
  v12 = v8 + v11;

  if (v12 >= 60.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 60.0;
  }

  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

@end