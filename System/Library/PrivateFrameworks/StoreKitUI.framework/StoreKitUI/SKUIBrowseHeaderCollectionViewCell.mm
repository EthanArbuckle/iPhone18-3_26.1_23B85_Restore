@interface SKUIBrowseHeaderCollectionViewCell
- (SKUIBrowseHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation SKUIBrowseHeaderCollectionViewCell

- (SKUIBrowseHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseHeaderCollectionViewCell initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SKUIBrowseHeaderCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v18 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    contentView = [(SKUIBrowseHeaderCollectionViewCell *)height contentView];
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.94 alpha:1.0];
    [contentView setBackgroundColor:v11];

    [(SKUIBrowseHeaderCollectionViewCell *)v9 setUserInteractionEnabled:0];
    v12 = objc_alloc_init(SKUIGroupedHeaderView);
    headerView = v9->_headerView;
    v9->_headerView = v12;

    [(SKUIGroupedHeaderView *)v9->_headerView setAutoresizingMask:18];
    v14 = v9->_headerView;
    contentView2 = [(SKUIBrowseHeaderCollectionViewCell *)v9 contentView];
    [contentView2 bounds];
    [(SKUIGroupedHeaderView *)v14 setFrame:?];

    contentView3 = [(SKUIBrowseHeaderCollectionViewCell *)v9 contentView];
    [contentView3 addSubview:v9->_headerView];
  }

  return v9;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseHeaderCollectionViewCell initWithFrame:]";
}

@end