@interface SiriUIPlatterSectionHeaderTableViewCell
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (SiriUIPlatterSectionHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SiriUIPlatterSectionHeaderTableViewCell)initWithText:(id)text;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SiriUIPlatterSectionHeaderTableViewCell

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  [SiriUIPlatterSectionHeaderView sizeThatFits:text text:fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (SiriUIPlatterSectionHeaderTableViewCell)initWithText:(id)text
{
  textCopy = text;
  v5 = [(SiriUIPlatterSectionHeaderTableViewCell *)self initWithStyle:0 reuseIdentifier:0];
  v6 = v5;
  if (v5)
  {
    [(SiriUIPlatterSectionHeaderTableViewCell *)v5 setText:textCopy];
  }

  return v6;
}

- (SiriUIPlatterSectionHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = SiriUIPlatterSectionHeaderTableViewCell;
  v4 = [(SiriUIPlatterSectionHeaderTableViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[SiriUIPlatterSectionHeaderView alloc] initWithText:0 visualEffect:0];
    headerView = v4->_headerView;
    v4->_headerView = v5;

    contentView = [(SiriUIPlatterSectionHeaderTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_headerView];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  [(SiriUITextContainerView *)self->_headerView sizeThatFits:size.width, 1.79769313e308];
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