@interface PKLeftAlignedSpinnerCell
- (PKLeftAlignedSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PKLeftAlignedSpinnerCell

- (PKLeftAlignedSpinnerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = PKLeftAlignedSpinnerCell;
  v4 = [(PKLeftAlignedSpinnerCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v5;

    [(UIActivityIndicatorView *)v4->_spinner startAnimating];
    contentView = [(PKLeftAlignedSpinnerCell *)v4 contentView];
    [contentView addSubview:v4->_spinner];
  }

  return v4;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  v3.receiver = self;
  v3.super_class = PKLeftAlignedSpinnerCell;
  [(PKLeftAlignedSpinnerCell *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKLeftAlignedSpinnerCell;
  [(PKLeftAlignedSpinnerCell *)&v11 layoutSubviews];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v4 = v3;
  v6 = v5;
  v7 = PKTableViewCellTextInset();
  contentView = [(PKLeftAlignedSpinnerCell *)self contentView];
  [contentView frame];
  v10 = v9 * 0.5 - v6 * 0.5;

  [(UIActivityIndicatorView *)self->_spinner setFrame:v7, v10, v4, v6];
}

@end