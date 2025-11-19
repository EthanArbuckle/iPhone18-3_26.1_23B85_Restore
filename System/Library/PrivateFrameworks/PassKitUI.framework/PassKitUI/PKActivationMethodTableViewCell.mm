@interface PKActivationMethodTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation PKActivationMethodTableViewCell

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKActivationMethodTableViewCell;
  [(PKActivationMethodTableViewCell *)&v25 layoutSubviews];
  v3 = [(PKActivationMethodTableViewCell *)self _shouldReverseLayoutDirection];
  v4 = [(PKActivationMethodTableViewCell *)self contentView];
  [v4 frame];
  Width = CGRectGetWidth(v26);

  v6 = Width + -30.0;
  v7 = [(PKActivationMethodTableViewCell *)self textLabel];
  [v7 sizeToFit];
  [v7 frame];
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
  if (v3)
  {
    v15 = 10.0;
    v16 = v12;
    v14 = v6 - CGRectGetWidth(*&v8);
  }

  [v7 setFrame:{v14, 10.0, v12, v11}];
  v17 = [(PKActivationMethodTableViewCell *)self detailTextLabel];
  [v17 sizeToFit];
  [v17 frame];
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
  if (v3)
  {
    v28.origin.x = v20;
    v28.origin.y = MaxY;
    v28.size.width = v23;
    v28.size.height = v22;
    v13 = v6 - CGRectGetWidth(v28);
  }

  [v17 setFrame:{v13, MaxY, v23, v22}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(PKActivationMethodTableViewCell *)self detailTextLabel:a3.width];
  v6 = [v5 font];
  [v6 lineHeight];
  v8 = v7 + 20.0;

  v9 = [(PKActivationMethodTableViewCell *)self textLabel];
  v10 = [v9 font];
  [v10 lineHeight];
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