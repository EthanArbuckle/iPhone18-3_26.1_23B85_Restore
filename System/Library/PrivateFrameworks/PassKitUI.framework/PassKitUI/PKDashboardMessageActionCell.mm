@interface PKDashboardMessageActionCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardMessageActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKDashboardMessageActionCell

- (PKDashboardMessageActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKDashboardMessageActionCell;
  v4 = [(PKDashboardMessageActionCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v4 = [(PKDashboardMessageActionCell *)self contentView];
  [v4 bounds];
  v5 = [(PKDashboardMessageActionView *)v3 initWithFrame:?];
  actionView = self->_actionView;
  self->_actionView = v5;

  v7 = [(PKDashboardMessageActionCell *)self contentView];
  [v7 addSubview:self->_actionView];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKDashboardMessageActionCell;
  [(PKDashboardMessageActionCell *)&v5 layoutSubviews];
  actionView = self->_actionView;
  v4 = [(PKDashboardMessageActionCell *)self contentView];
  [v4 bounds];
  [(PKDashboardMessageActionView *)actionView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKDashboardMessageActionView *)self->_actionView sizeThatFits:a3.width, a3.height];
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