@interface SiriUIPlatterSectionHeaderTableViewCell
+ (CGSize)sizeThatFits:(CGSize)a3 text:(id)a4;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (SiriUIPlatterSectionHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SiriUIPlatterSectionHeaderTableViewCell)initWithText:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SiriUIPlatterSectionHeaderTableViewCell

+ (CGSize)sizeThatFits:(CGSize)a3 text:(id)a4
{
  [SiriUIPlatterSectionHeaderView sizeThatFits:a4 text:a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (SiriUIPlatterSectionHeaderTableViewCell)initWithText:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIPlatterSectionHeaderTableViewCell *)self initWithStyle:0 reuseIdentifier:0];
  v6 = v5;
  if (v5)
  {
    [(SiriUIPlatterSectionHeaderTableViewCell *)v5 setText:v4];
  }

  return v6;
}

- (SiriUIPlatterSectionHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = SiriUIPlatterSectionHeaderTableViewCell;
  v4 = [(SiriUIPlatterSectionHeaderTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[SiriUIPlatterSectionHeaderView alloc] initWithText:0 visualEffect:0];
    headerView = v4->_headerView;
    v4->_headerView = v5;

    v7 = [(SiriUIPlatterSectionHeaderTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_headerView];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  [(SiriUITextContainerView *)self->_headerView sizeThatFits:a3.width, 1.79769313e308];
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriUIPlatterSectionHeaderTableViewCell;
  [(SiriUIPlatterSectionHeaderTableViewCell *)&v4 layoutSubviews];
  headerView = self->_headerView;
  [(SiriUIPlatterSectionHeaderTableViewCell *)self bounds];
  [(SiriUIPlatterSectionHeaderView *)headerView setFrame:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SiriUIPlatterSectionHeaderTableViewCell;
  [(SiriUIPlatterSectionHeaderTableViewCell *)&v3 prepareForReuse];
  [(SiriUITextContainerView *)self->_headerView setText:0];
}

@end