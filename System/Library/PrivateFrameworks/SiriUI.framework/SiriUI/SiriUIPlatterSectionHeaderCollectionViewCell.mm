@interface SiriUIPlatterSectionHeaderCollectionViewCell
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
- (SiriUIPlatterSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SiriUIPlatterSectionHeaderCollectionViewCell

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  [SiriUIPlatterSectionHeaderView sizeThatFits:text text:fits.width, fits.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (SiriUIPlatterSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SiriUIPlatterSectionHeaderCollectionViewCell;
  v3 = [(SiriUIContentCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [(SiriUITextContainerView *)[SiriUIPlatterSectionHeaderView alloc] initWithText:0];
    headerView = v3->_headerView;
    v3->_headerView = v4;

    contentView = [(SiriUIPlatterSectionHeaderCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_headerView];

    [(SiriUIContentCollectionViewCell *)v3 setKeylineType:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriUIPlatterSectionHeaderCollectionViewCell;
  [(SiriUIContentCollectionViewCell *)&v4 layoutSubviews];
  headerView = self->_headerView;
  [(SiriUIPlatterSectionHeaderCollectionViewCell *)self bounds];
  [(SiriUIPlatterSectionHeaderView *)headerView setFrame:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SiriUIPlatterSectionHeaderCollectionViewCell;
  [(SiriUIContentCollectionViewCell *)&v3 prepareForReuse];
  [(SiriUITextContainerView *)self->_headerView setText:0];
}

@end