@interface PKSpinnerHeaderView
- (PKSpinnerHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation PKSpinnerHeaderView

- (PKSpinnerHeaderView)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PKSpinnerHeaderView;
  v3 = [(PKSpinnerHeaderView *)&v7 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v4;
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKSpinnerHeaderView;
  [(PKSpinnerHeaderView *)&v3 prepareForReuse];
  [(PKSpinnerHeaderView *)self setShowSpinner:0];
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = PKSpinnerHeaderView;
  [(PKSpinnerHeaderView *)&v34 layoutSubviews];
  contentView = [(PKSpinnerHeaderView *)self contentView];
  [contentView bounds];
  v33 = v4;
  v6 = v5;
  v31 = v5;
  [contentView layoutMargins];
  v8 = v7;
  v30 = v7;
  v10 = v9;
  v32 = v9;
  _shouldReverseLayoutDirection = [(PKSpinnerHeaderView *)self _shouldReverseLayoutDirection];
  textLabel = [(PKSpinnerHeaderView *)self textLabel];
  text = [textLabel text];
  v14 = [text length];

  [textLabel frame];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v16 = v15;
  v18 = v17;
  v19 = v6 - (v8 + v10);
  v20 = v15 + 10.0;
  if (self->_showSpinner)
  {
    v21 = v19 - (v15 + 10.0);
  }

  else
  {
    v21 = v19;
  }

  [textLabel sizeThatFits:{v21, 1.79769313e308}];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v23 = v22;
  v25 = v24;
  [textLabel setFrame:?];
  PKFloatRoundToPixel();
  v27 = v26;
  v28 = v33 + v30;
  if (v14)
  {
    v28 = v23 + v25 + 10.0;
  }

  v29 = v33 + v31 - v32 - v16;
  if (v14)
  {
    v29 = v23 - v20;
  }

  if (_shouldReverseLayoutDirection)
  {
    v28 = v29;
  }

  [(UIActivityIndicatorView *)self->_spinner setFrame:v28, v27, v16, v18];
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner == !spinner)
  {
    v13 = v4;
    v14 = v3;
    self->_showSpinner = spinner;
    spinner = self->_spinner;
    if (spinner)
    {
      superview = [(UIActivityIndicatorView *)spinner superview];

      if (!superview)
      {
        contentView = [(PKSpinnerHeaderView *)self contentView];
        [contentView addSubview:self->_spinner];
      }

      [(UIActivityIndicatorView *)self->_spinner startAnimating:v6];
    }

    else
    {
      [(UIActivityIndicatorView *)spinner stopAnimating];
      [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    }

    [(PKSpinnerHeaderView *)self setNeedsLayout];
  }
}

@end