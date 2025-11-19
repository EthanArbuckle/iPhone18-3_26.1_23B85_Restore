@interface SKUISectionHeaderCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SKUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUISectionHeaderCollectionViewCell

- (SKUISectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISectionHeaderCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUISectionHeaderCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v10 = [(SKUISectionHeaderCollectionViewCell *)v8 contentView];
    v11 = [SKUISectionHeaderView alloc];
    [v10 bounds];
    v12 = [(SKUISectionHeaderView *)v11 initWithFrame:?];
    headerView = v9->_headerView;
    v9->_headerView = v12;

    [v10 addSubview:v9->_headerView];
  }

  return v9;
}

- (void)applyLayoutAttributes:(id)a3
{
  headerView = self->_headerView;
  v5 = MEMORY[0x277D75348];
  v6 = a3;
  v7 = [v5 clearColor];
  [(SKUIViewReuseView *)headerView setBackgroundColor:v7];

  v8.receiver = self;
  v8.super_class = SKUISectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v8 applyLayoutAttributes:v6];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SKUISectionHeaderView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SKUISectionHeaderView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUISectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  headerView = self->_headerView;
  v4 = [(SKUISectionHeaderCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SKUISectionHeaderView *)headerView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  headerView = self->_headerView;
  v5 = a3;
  [(SKUIViewReuseView *)headerView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUISectionHeaderCollectionViewCell;
  [(SKUICollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISectionHeaderCollectionViewCell initWithFrame:]";
}

@end