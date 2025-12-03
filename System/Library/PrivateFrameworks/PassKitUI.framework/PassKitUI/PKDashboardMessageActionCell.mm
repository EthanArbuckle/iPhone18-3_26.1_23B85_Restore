@interface PKDashboardMessageActionCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardMessageActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKDashboardMessageActionCell

- (PKDashboardMessageActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PKDashboardMessageActionCell;
  v4 = [(PKDashboardMessageActionCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PKDashboardMessageActionCell *)v4 _commonInit];
    PKAccessibilityIDCellSet(v5, *MEMORY[0x1E69B93D0]);
  }

  return v5;
}

- (void)_commonInit
{
  v3 = [PKDashboardMessageActionView alloc];
  contentView = [(PKDashboardMessageActionCell *)self contentView];
  [contentView bounds];
  v5 = [(PKDashboardMessageActionView *)v3 initWithFrame:?];
  actionView = self->_actionView;
  self->_actionView = v5;

  contentView2 = [(PKDashboardMessageActionCell *)self contentView];
  [contentView2 addSubview:self->_actionView];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKDashboardMessageActionCell;
  [(PKDashboardMessageActionCell *)&v5 layoutSubviews];
  actionView = self->_actionView;
  contentView = [(PKDashboardMessageActionCell *)self contentView];
  [contentView bounds];
  [(PKDashboardMessageActionView *)actionView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDashboardMessageActionView *)self->_actionView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardMessageActionCell;
  [(PKDashboardMessageActionCell *)&v3 prepareForReuse];
  [(PKDashboardMessageActionView *)self->_actionView prepareForReuse];
}

@end