@interface SKUIViewControllerContainerCollectionViewCell
- (SKUIViewControllerContainerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setManagesViewControllerContainerViewLayout:(BOOL)layout;
- (void)setMaximumContentWidth:(double)width;
@end

@implementation SKUIViewControllerContainerCollectionViewCell

- (SKUIViewControllerContainerCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewControllerContainerCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIViewControllerContainerCollectionViewCell;
  height = [(SKUIViewControllerContainerCollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_managesViewControllerContainerViewLayout = 1;
    [(SKUIViewControllerContainerCollectionViewCell *)height setPreservesSuperviewLayoutMargins:1];
    contentView = [(SKUIViewControllerContainerCollectionViewCell *)v9 contentView];
    [contentView setPreservesSuperviewLayoutMargins:1];
    v11 = [SKUIViewControllerContainerView alloc];
    [contentView bounds];
    v12 = [(SKUIViewControllerContainerView *)v11 initWithFrame:?];
    viewControllerContainerView = v9->_viewControllerContainerView;
    v9->_viewControllerContainerView = v12;

    [(SKUIViewControllerContainerView *)v9->_viewControllerContainerView setPreservesSuperviewLayoutMargins:1];
    [contentView addSubview:v9->_viewControllerContainerView];
  }

  return v9;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SKUIViewControllerContainerCollectionViewCell;
  [(SKUIViewControllerContainerCollectionViewCell *)&v22 layoutSubviews];
  if (self->_managesViewControllerContainerViewLayout)
  {
    contentView = [(SKUIViewControllerContainerCollectionViewCell *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (self->_maximumContentWidth > 0.00000011920929)
    {
      traitCollection = [(SKUIViewControllerContainerCollectionViewCell *)self traitCollection];
      [traitCollection displayScale];
      v14 = v13;
      if (v13 <= 0.00000011920929)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v14 = v16;
      }

      v23.origin.x = v5;
      v23.origin.y = v7;
      v23.size.width = v9;
      v23.size.height = v11;
      CGRectGetWidth(v23);
      v21 = v14;
      UIRectCenteredXInRectScale();
      v5 = v17;
      v7 = v18;
      v9 = v19;
      v11 = v20;
    }

    [(SKUIViewControllerContainerView *)self->_viewControllerContainerView setFrame:v5, v7, v9, v11, *&v21];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = SKUIViewControllerContainerCollectionViewCell;
  attributesCopy = attributes;
  [(SKUIViewControllerContainerCollectionViewCell *)&v7 applyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];

  indexPath = self->_indexPath;
  self->_indexPath = indexPath;
}

- (void)setMaximumContentWidth:(double)width
{
  if (vabdd_f64(self->_maximumContentWidth, width) > 0.00000011920929)
  {
    self->_maximumContentWidth = width;
    [(SKUIViewControllerContainerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setManagesViewControllerContainerViewLayout:(BOOL)layout
{
  if (self->_managesViewControllerContainerViewLayout != layout)
  {
    self->_managesViewControllerContainerViewLayout = layout;
    if (layout)
    {
      [(SKUIViewControllerContainerCollectionViewCell *)self setNeedsLayout];
    }
  }
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewControllerContainerCollectionViewCell initWithFrame:]";
}

@end