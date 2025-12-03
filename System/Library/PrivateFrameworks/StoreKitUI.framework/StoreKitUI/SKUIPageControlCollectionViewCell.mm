@interface SKUIPageControlCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SKUIPageControlCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setNumberOfPages:(int64_t)pages;
@end

@implementation SKUIPageControlCollectionViewCell

- (SKUIPageControlCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPageControlCollectionViewCell initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUIPageControlCollectionViewCell;
  height = [(SKUIViewReuseCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D757E0]);
    pageControl = height->_pageControl;
    height->_pageControl = v9;

    [(UIPageControl *)height->_pageControl setEnabled:0];
    contentView = [(SKUIPageControlCollectionViewCell *)height contentView];
    [contentView addSubview:height->_pageControl];
  }

  return height;
}

- (void)setNumberOfPages:(int64_t)pages
{
  if ([(UIPageControl *)self->_pageControl numberOfPages]!= pages)
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:pages];

    [(SKUIPageControlCollectionViewCell *)self setNeedsLayout];
  }
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v5 = 37.0;
  result.height = v5;
  result.width = width;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  style = [element style];
  self->_pageControlPosition = [style elementPosition];
  ikColor = [style ikColor];
  color = [ikColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] darkGrayColor];
  }

  [(UIPageControl *)self->_pageControl setCurrentPageIndicatorTintColor:color];
  pageControl = self->_pageControl;
  v9 = [color colorWithAlphaComponent:0.33];
  [(UIPageControl *)pageControl setPageIndicatorTintColor:v9];

  [(SKUIPageControlCollectionViewCell *)self setNeedsLayout];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SKUIPageControlCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  contentView = [(SKUIPageControlCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  v8 = MEMORY[0x277CBF3A0];
  [(UIPageControl *)self->_pageControl sizeThatFits:v5, v7];
  v11 = v9;
  v12 = v10;
  pageControlPosition = self->_pageControlPosition;
  if (pageControlPosition > 9)
  {
    left = *v8;
  }

  else if (((1 << pageControlPosition) & 0xF) != 0)
  {
    v15 = (v5 - v9) * 0.5;
    left = floorf(v15);
  }

  else if (((1 << pageControlPosition) & 0x150) != 0)
  {
    left = self->_contentInset.left;
  }

  else
  {
    left = v5 - v9 - self->_contentInset.right;
  }

  if (pageControlPosition > 9)
  {
    top = v8[1];
  }

  else if (((1 << pageControlPosition) & 0x33) != 0)
  {
    v17 = (v7 - v10) * 0.5;
    top = floorf(v17);
  }

  else if (((1 << pageControlPosition) & 0xC4) != 0)
  {
    top = self->_contentInset.top;
  }

  else
  {
    top = v7 - v10 - self->_contentInset.bottom;
  }

  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setFrame:left, top, v11, v12];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPageControlCollectionViewCell initWithFrame:]";
}

@end