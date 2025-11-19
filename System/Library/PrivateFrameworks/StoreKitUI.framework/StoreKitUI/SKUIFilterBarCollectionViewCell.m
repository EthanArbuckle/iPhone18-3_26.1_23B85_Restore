@interface SKUIFilterBarCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SKUIFilterBarCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SKUIFilterBarCollectionViewCell

- (SKUIFilterBarCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFilterBarCollectionViewCell initWithFrame:];
  }

  v15.receiver = self;
  v15.super_class = SKUIFilterBarCollectionViewCell;
  v8 = [(SKUIViewReuseCollectionViewCell *)&v15 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v10 = [(SKUIFilterBarCollectionViewCell *)v8 contentView];
    v11 = [SKUIFilterBarView alloc];
    [v10 bounds];
    v12 = [(SKUIFilterBarView *)v11 initWithFrame:?];
    filterBarView = v9->_filterBarView;
    v9->_filterBarView = v12;

    [v10 addSubview:v9->_filterBarView];
  }

  return v9;
}

- (void)applyLayoutAttributes:(id)a3
{
  filterBarView = self->_filterBarView;
  v5 = a3;
  v6 = [v5 backgroundColor];
  [(SKUIViewReuseView *)filterBarView setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SKUIFilterBarCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v7 applyLayoutAttributes:v5];
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  [SKUIFilterBarView preferredSizeForViewElement:a3 context:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SKUIFilterBarView sizeThatFitsWidth:a4 viewElement:a5 context:a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SKUIFilterBarCollectionViewCell;
  [(SKUICollectionViewCell *)&v5 layoutSubviews];
  filterBarView = self->_filterBarView;
  v4 = [(SKUIFilterBarCollectionViewCell *)self contentView];
  [v4 bounds];
  [(SKUIFilterBarView *)filterBarView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  filterBarView = self->_filterBarView;
  v5 = a3;
  [(SKUIViewReuseView *)filterBarView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIFilterBarCollectionViewCell;
  [(SKUIViewReuseCollectionViewCell *)&v6 setBackgroundColor:v5];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFilterBarCollectionViewCell initWithFrame:]";
}

@end