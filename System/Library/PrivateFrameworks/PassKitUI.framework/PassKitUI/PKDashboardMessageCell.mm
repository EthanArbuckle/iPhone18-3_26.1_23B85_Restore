@interface PKDashboardMessageCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKDashboardMessageCell

- (PKDashboardMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = PKDashboardMessageCell;
  v4 = [(PKDashboardMessageCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [PKDashboardMessageView alloc];
    contentView = [(PKDashboardMessageCell *)v4 contentView];
    [contentView bounds];
    v7 = [(PKDashboardMessageView *)v5 initWithFrame:?];
    dashboardMessageView = v4->_dashboardMessageView;
    v4->_dashboardMessageView = v7;

    contentView2 = [(PKDashboardMessageCell *)v4 contentView];
    [contentView2 addSubview:v4->_dashboardMessageView];

    [(PKDashboardMessageCell *)v4 setSeparatorInset:0.0, 16.0, 0.0, 0.0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKDashboardMessageCell;
  [(PKDashboardMessageCell *)&v5 layoutSubviews];
  dashboardMessageView = self->_dashboardMessageView;
  contentView = [(PKDashboardMessageCell *)self contentView];
  [contentView bounds];
  [(PKDashboardMessageView *)dashboardMessageView setFrame:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardMessageCell;
  [(PKDashboardMessageCell *)&v3 prepareForReuse];
  [(PKDashboardMessageView *)self->_dashboardMessageView prepareForReuse];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKDashboardMessageView *)self->_dashboardMessageView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end