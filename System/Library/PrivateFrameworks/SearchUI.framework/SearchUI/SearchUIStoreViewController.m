@interface SearchUIStoreViewController
- (SFFeedbackListener)feedbackListener;
- (SearchUIStoreViewController)initWithIdentifier:(id)a3 feedbackListener:(id)a4 queryId:(unint64_t)a5;
- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SearchUIStoreViewController

- (SearchUIStoreViewController)initWithIdentifier:(id)a3 feedbackListener:(id)a4 queryId:(unint64_t)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SearchUIStoreViewController;
  v10 = [(SearchUIStoreViewController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    [(SearchUIStoreViewController *)v10 setFeedbackListener:v9];
    v12 = MEMORY[0x1E695DF90];
    v17 = *MEMORY[0x1E697BB38];
    v18[0] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 dictionaryWithDictionary:v13];

    [v14 setObject:*MEMORY[0x1E697BAE0] forKeyedSubscript:*MEMORY[0x1E697BB28]];
    [(SKStoreProductViewController *)v11 setDelegate:v11];
    [(SKStoreProductViewController *)v11 loadProductWithParameters:v14 completionBlock:0];
    [(SearchUIStoreViewController *)v11 setQueryId:a5];
  }

  return v11;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SearchUIStoreViewController;
  [(SKStoreProductViewController *)&v7 viewDidDisappear:a3];
  v4 = [(SearchUIStoreViewController *)self feedbackListener];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SearchUIStoreViewController *)self feedbackListener];
    [v6 willDismissViewController:self];
  }
}

- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = SearchUIGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "dismissing storevc", v13, 2u);
  }

  [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
  v7 = [(SearchUIStoreViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (a4 > 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E69CA4A0]) initWithProductPageResult:a4];
    }

    else
    {
      if (a4 == 1)
      {
        v9 = 7;
      }

      else
      {
        v9 = 4;
      }

      v10 = [objc_alloc(MEMORY[0x1E69C9F28]) initWithEvent:v9];
    }

    v11 = v10;
    v12 = [(SearchUIStoreViewController *)self feedbackListener];
    [v12 reportFeedback:v11 queryId:{-[SearchUIStoreViewController queryId](self, "queryId")}];
  }
}

- (SFFeedbackListener)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackListener);

  return WeakRetained;
}

@end