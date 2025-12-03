@interface PKDiscoveryArticleLayoutCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShelfView:(id)view;
@end

@implementation PKDiscoveryArticleLayoutCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryArticleLayoutCell;
  [(PKDiscoveryArticleLayoutCell *)&v5 layoutSubviews];
  shelfView = self->_shelfView;
  contentView = [(PKDiscoveryArticleLayoutCell *)self contentView];
  [contentView bounds];
  [(PKDiscoveryShelfView *)shelfView setFrame:?];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKDiscoveryArticleLayoutCell;
  [(PKDiscoveryArticleLayoutCell *)&v4 prepareForReuse];
  [(PKDiscoveryShelfView *)self->_shelfView removeFromSuperview];
  shelfView = self->_shelfView;
  self->_shelfView = 0;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v13.receiver = self;
  v13.super_class = PKDiscoveryArticleLayoutCell;
  v4 = [(PKDiscoveryArticleLayoutCell *)&v13 preferredLayoutAttributesFittingAttributes:attributes];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKDiscoveryShelfView *)self->_shelfView sizeThatFits:v9, 1.79769313e308];
  [v4 setBounds:{v6, v8, v10, v11}];

  return v4;
}

- (void)setShelfView:(id)view
{
  objc_storeStrong(&self->_shelfView, view);
  viewCopy = view;
  contentView = [(PKDiscoveryArticleLayoutCell *)self contentView];
  [contentView addSubview:viewCopy];

  [(PKDiscoveryArticleLayoutCell *)self setNeedsLayout];
}

@end