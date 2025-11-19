@interface SKUITrendingSearchDocumentViewController
- (SKUITrendingSearchDocumentViewController)initWithTemplateElement:(id)a3;
- (SKUITrendingSearchView)resultsView;
- (UIEdgeInsets)_resultsViewContentInset;
- (void)_reloadResultsView;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)resultsViewTapRecognized:(id)a3;
- (void)searchResultButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUITrendingSearchDocumentViewController

- (SKUITrendingSearchDocumentViewController)initWithTemplateElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrendingSearchDocumentViewController initWithTemplateElement:];
  }

  v8.receiver = self;
  v8.super_class = SKUITrendingSearchDocumentViewController;
  v5 = [(SKUITrendingSearchDocumentViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKUITrendingSearchDocumentViewController *)v5 setTemplate:v4];
  }

  return v6;
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  [(SKUITrendingSearchDocumentViewController *)self setTemplate:v4];

  [(SKUITrendingSearchDocumentViewController *)self _reloadResultsView];
}

- (void)loadView
{
  [(SKUITrendingSearchDocumentViewController *)self _reloadResultsView];
  v3 = [(SKUITrendingSearchDocumentViewController *)self resultsView];
  [(SKUITrendingSearchDocumentViewController *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SKUITrendingSearchDocumentViewController;
  [(SKUITrendingSearchDocumentViewController *)&v3 viewDidAppear:a3];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(SKUITrendingSearchDocumentViewController *)self resultsView];
  [(SKUITrendingSearchDocumentViewController *)self _resultsViewContentInset];
  [v3 setLayoutMargins:?];

  v4.receiver = self;
  v4.super_class = SKUITrendingSearchDocumentViewController;
  [(SKUITrendingSearchDocumentViewController *)&v4 viewWillLayoutSubviews];
}

- (SKUITrendingSearchView)resultsView
{
  resultsView = self->_resultsView;
  if (resultsView)
  {
    v3 = resultsView;
  }

  else
  {
    v5 = objc_alloc_init(SKUITrendingSearchView);
    v6 = self->_resultsView;
    self->_resultsView = v5;

    v7 = self->_resultsView;
    v8 = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(SKUITrendingSearchView *)v7 setBackgroundColor:v8];

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_resultsViewTapRecognized_];
    [(SKUITrendingSearchView *)self->_resultsView addGestureRecognizer:v9];
    v3 = self->_resultsView;
  }

  return v3;
}

- (void)resultsViewTapRecognized:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

- (void)searchResultButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(SKUITrendingSearchDocumentViewController *)self template];
  v10 = [v5 buttons];

  v6 = [(SKUITrendingSearchDocumentViewController *)self resultsView];
  v7 = [v6 trendingSearchViews];
  v8 = [v7 indexOfObjectIdenticalTo:v4];

  if (v8 < [v10 count])
  {
    v9 = [v10 objectAtIndex:v8];
    [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_reloadResultsView
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(SKUITrendingSearchDocumentViewController *)self template];
  v4 = [v3 titleLabel];

  v18 = v4;
  v5 = [MEMORY[0x277D756B8] SKUITrending_titleLabelWithElement:v4];
  v6 = [(SKUITrendingSearchDocumentViewController *)self resultsView];
  [v6 setTrendingTitleView:v5];

  v7 = [(SKUITrendingSearchDocumentViewController *)self template];
  v8 = [v7 buttons];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x277D75220] SKUITrending_searchButtonWithElement:*(*(&v19 + 1) + 8 * i)];
        [v15 addTarget:self action:sel_searchResultButtonTapped_ forControlEvents:64];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(SKUITrendingSearchDocumentViewController *)self resultsView];
  [v16 setTrendingSearchViews:v9];

  v17 = [(SKUITrendingSearchDocumentViewController *)self resultsView];
  [(SKUITrendingSearchDocumentViewController *)self _resultsViewContentInset];
  [v17 setLayoutMargins:?];
}

- (UIEdgeInsets)_resultsViewContentInset
{
  v2 = 50.0;
  v3 = 40.0;
  v4 = 50.0;
  v5 = 40.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrendingSearchDocumentViewController initWithTemplateElement:]";
}

@end