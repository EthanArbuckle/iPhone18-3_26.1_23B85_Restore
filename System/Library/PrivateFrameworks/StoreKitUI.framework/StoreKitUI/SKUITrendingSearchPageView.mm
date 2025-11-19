@interface SKUITrendingSearchPageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUITrendingSearchPageView)initWithFrame:(CGRect)a3;
- (SKUITrendingSearchPageViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_buttonAction:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setPage:(id)a3;
@end

@implementation SKUITrendingSearchPageView

- (SKUITrendingSearchPageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchPageView initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUITrendingSearchPageView;
  v8 = [(SKUITrendingSearchPageView *)&v13 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [SKUITrendingSearchView alloc];
    [(SKUITrendingSearchPageView *)v8 bounds];
    v10 = [(SKUITrendingSearchView *)v9 initWithFrame:?];
    trendingSearchView = v8->_trendingSearchView;
    v8->_trendingSearchView = v10;

    [(SKUITrendingSearchView *)v8->_trendingSearchView setAutoresizingMask:18];
    [(SKUITrendingSearchPageView *)v8 addSubview:v8->_trendingSearchView];
  }

  return v8;
}

- (UIEdgeInsets)contentInset
{
  [(SKUITrendingSearchView *)self->_trendingSearchView layoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setPage:(id)a3
{
  v5 = a3;
  if (self->_page != v5)
  {
    objc_storeStrong(&self->_page, a3);
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      v8 = 0;
    }

    else
    {
      v9 = MEMORY[0x277D756B8];
      v10 = [(SKUITrendingSearchPageView *)self page];
      v11 = [v10 title];
      v8 = [v9 SKUITrending_defaultLabelWithText:v11];
    }

    [(SKUITrendingSearchView *)self->_trendingSearchView setTrendingTitleView:v8];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [(SKUITrendingSearchPage *)self->_page searches];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38__SKUITrendingSearchPageView_setPage___block_invoke;
    v18 = &unk_2781FB940;
    v19 = self;
    v20 = v12;
    v14 = v12;
    [v13 enumerateObjectsUsingBlock:&v15];

    [(SKUITrendingSearchView *)self->_trendingSearchView setTrendingSearchViews:v14, v15, v16, v17, v18, v19];
  }
}

void __38__SKUITrendingSearchPageView_setPage___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75220];
  v4 = [a2 term];
  v5 = [v3 SKUITrending_searchButtonWithTitle:v4];

  [v5 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
  [*(a1 + 40) addObject:v5];
}

- (void)setBackgroundColor:(id)a3
{
  trendingSearchView = self->_trendingSearchView;
  v5 = a3;
  [(SKUITrendingSearchView *)trendingSearchView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUITrendingSearchPageView;
  [(SKUITrendingSearchPageView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SKUITrendingSearchView *)self->_trendingSearchView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_buttonAction:(id)a3
{
  page = self->_page;
  v5 = a3;
  v6 = [(SKUITrendingSearchPage *)page searches];
  v7 = [(SKUITrendingSearchView *)self->_trendingSearchView trendingSearchViews];
  v8 = [v7 indexOfObjectIdenticalTo:v5];

  v10 = [v6 objectAtIndex:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained trendingSearchPageView:self didSelectSearch:v10];
}

- (SKUITrendingSearchPageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrendingSearchPageView initWithFrame:]";
}

@end