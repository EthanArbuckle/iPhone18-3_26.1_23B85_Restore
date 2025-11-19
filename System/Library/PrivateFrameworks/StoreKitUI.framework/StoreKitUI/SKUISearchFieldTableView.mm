@interface SKUISearchFieldTableView
- (SKUITrendingSearchPageViewDelegate)trendingSearchDelegate;
- (void)_reloadData;
- (void)_reloadView;
- (void)_setTrendingResponse:(id)a3 error:(id)a4;
- (void)layoutSubviews;
- (void)setTrendingSearchDelegate:(id)a3;
- (void)setTrendingSearchProvider:(id)a3;
- (void)setTrendingSearchesVisible:(BOOL)a3;
@end

@implementation SKUISearchFieldTableView

- (void)setTrendingSearchProvider:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUISearchFieldTableView *)v6 setTrendingSearchProvider:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_trendingSearchProvider != v5)
  {
    objc_storeStrong(&self->_trendingSearchProvider, a3);
    if (self->_trendingSearchesVisible && !self->_page)
    {
      [(SKUISearchFieldTableView *)self _reloadData];
    }
  }
}

- (void)setTrendingSearchDelegate:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISearchFieldTableView *)v5 setTrendingSearchDelegate:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_storeWeak(&self->_trendingSearchDelegate, v4);
  [(SKUITrendingSearchPageView *)self->_pageView setDelegate:v4];
}

- (void)setTrendingSearchesVisible:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISearchFieldTableView *)v5 setTrendingSearchesVisible:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_trendingSearchesVisible != v3)
  {
    self->_trendingSearchesVisible = v3;
    if (v3 && !self->_page)
    {
      [(SKUISearchFieldTableView *)self _reloadData];
    }

    else
    {
      [(SKUISearchFieldTableView *)self _reloadView];
    }
  }
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUISearchFieldTableView *)v3 layoutSubviews:v4];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SKUISearchFieldTableView;
  [(SKUISearchFieldTableView *)&v11 layoutSubviews];
  [(SKUISearchFieldTableView *)self bounds];
  [(SKUITrendingSearchPageView *)self->_pageView setFrame:0.0, 0.0];
}

- (void)_reloadData
{
  if (self->_trendingSearchProvider)
  {
    WeakRetained = objc_loadWeakRetained(&self->_trendingSearchDelegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_trendingSearchDelegate);
      v6 = [v5 URLForTrendingSearchPageView:self->_pageView];
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(&location, self);
    v7 = [(SKUISearchFieldTableView *)self trendingSearchProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SKUISearchFieldTableView__reloadData__block_invoke;
    v8[3] = &unk_2781FDF98;
    objc_copyWeak(&v9, &location);
    [v7 trendingSearchPageWithURL:v6 completionBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __39__SKUISearchFieldTableView__reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setTrendingResponse:v6 error:v5];
}

- (void)_setTrendingResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_page, a3);
    [(SKUISearchFieldTableView *)self _reloadView];
    v6 = v7;
  }
}

- (void)_reloadView
{
  trendingSearchesVisible = self->_trendingSearchesVisible;
  pageView = self->_pageView;
  if (trendingSearchesVisible)
  {
    if (!pageView && self->_page)
    {
      v5 = objc_alloc_init(SKUITrendingSearchPageView);
      v6 = self->_pageView;
      self->_pageView = v5;

      WeakRetained = objc_loadWeakRetained(&self->_trendingSearchDelegate);
      [(SKUITrendingSearchPageView *)self->_pageView setDelegate:WeakRetained];

      [(SKUISearchFieldTableView *)self addSubview:self->_pageView];
    }

    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    [(SKUISearchFieldTableView *)self frame];
    [(SKUITrendingSearchPageView *)self->_pageView setFrame:v8, v9];
    [(SKUITrendingSearchPageView *)self->_pageView setPage:self->_page];
    [(SKUITrendingSearchPageView *)self->_pageView setHidden:0];
    v10 = objc_alloc(MEMORY[0x277D75D18]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(SKUISearchFieldTableView *)self setTableFooterView:v11];
  }

  else
  {
    [(SKUITrendingSearchPageView *)pageView setHidden:1];

    [(SKUISearchFieldTableView *)self setTableFooterView:0];
  }
}

- (SKUITrendingSearchPageViewDelegate)trendingSearchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trendingSearchDelegate);

  return WeakRetained;
}

@end