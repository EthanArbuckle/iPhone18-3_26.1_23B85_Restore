@interface SKUITrendingSearchPageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUITrendingSearchPageView)initWithFrame:(CGRect)frame;
- (SKUITrendingSearchPageViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (void)_buttonAction:(id)action;
- (void)setBackgroundColor:(id)color;
- (void)setPage:(id)page;
@end

@implementation SKUITrendingSearchPageView

- (SKUITrendingSearchPageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchPageView initWithFrame:];
  }

  v13.receiver = self;
  v13.super_class = SKUITrendingSearchPageView;
  height = [(SKUITrendingSearchPageView *)&v13 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [SKUITrendingSearchView alloc];
    [(SKUITrendingSearchPageView *)height bounds];
    v10 = [(SKUITrendingSearchView *)v9 initWithFrame:?];
    trendingSearchView = height->_trendingSearchView;
    height->_trendingSearchView = v10;

    [(SKUITrendingSearchView *)height->_trendingSearchView setAutoresizingMask:18];
    [(SKUITrendingSearchPageView *)height addSubview:height->_trendingSearchView];
  }

  return height;
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

- (void)setPage:(id)page
{
  pageCopy = page;
  if (self->_page != pageCopy)
  {
    objc_storeStrong(&self->_page, page);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v8 = 0;
    }

    else
    {
      v9 = MEMORY[0x277D756B8];
      page = [(SKUITrendingSearchPageView *)self page];
      title = [page title];
      v8 = [v9 SKUITrending_defaultLabelWithText:title];
    }

    [(SKUITrendingSearchView *)self->_trendingSearchView setTrendingTitleView:v8];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    searches = [(SKUITrendingSearchPage *)self->_page searches];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __38__SKUITrendingSearchPageView_setPage___block_invoke;
    v18 = &unk_2781FB940;
    selfCopy = self;
    v20 = v12;
    v14 = v12;
    [searches enumerateObjectsUsingBlock:&v15];

    [(SKUITrendingSearchView *)self->_trendingSearchView setTrendingSearchViews:v14, v15, v16, v17, v18, selfCopy];
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

- (void)setBackgroundColor:(id)color
{
  trendingSearchView = self->_trendingSearchView;
  colorCopy = color;
  [(SKUITrendingSearchView *)trendingSearchView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUITrendingSearchPageView;
  [(SKUITrendingSearchPageView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(SKUITrendingSearchView *)self->_trendingSearchView systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_buttonAction:(id)action
{
  page = self->_page;
  actionCopy = action;
  searches = [(SKUITrendingSearchPage *)page searches];
  trendingSearchViews = [(SKUITrendingSearchView *)self->_trendingSearchView trendingSearchViews];
  v8 = [trendingSearchViews indexOfObjectIdenticalTo:actionCopy];

  v10 = [searches objectAtIndex:v8];

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