@interface SearchUIStoreViewController
- (SFFeedbackListener)feedbackListener;
- (SearchUIStoreViewController)initWithIdentifier:(id)identifier feedbackListener:(id)listener queryId:(unint64_t)id;
- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SearchUIStoreViewController

- (SearchUIStoreViewController)initWithIdentifier:(id)identifier feedbackListener:(id)listener queryId:(unint64_t)id
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  listenerCopy = listener;
  v16.receiver = self;
  v16.super_class = SearchUIStoreViewController;
  v10 = [(SearchUIStoreViewController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    [(SearchUIStoreViewController *)v10 setFeedbackListener:listenerCopy];
    v12 = MEMORY[0x1E695DF90];
    v17 = *MEMORY[0x1E697BB38];
    v18[0] = identifierCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v12 dictionaryWithDictionary:v13];

    [v14 setObject:*MEMORY[0x1E697BAE0] forKeyedSubscript:*MEMORY[0x1E697BB28]];
    [(SKStoreProductViewController *)v11 setDelegate:v11];
    [(SKStoreProductViewController *)v11 loadProductWithParameters:v14 completionBlock:0];
    [(SearchUIStoreViewController *)v11 setQueryId:id];
  }

  return v11;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SearchUIStoreViewController;
  [(SKStoreProductViewController *)&v7 viewDidDisappear:disappear];
  feedbackListener = [(SearchUIStoreViewController *)self feedbackListener];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    feedbackListener2 = [(SearchUIStoreViewController *)self feedbackListener];
    [feedbackListener2 willDismissViewController:self];
  }
}

- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v6 = SearchUIGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "dismissing storevc", v13, 2u);
  }

  [(SKStoreProductViewController *)self dismissViewControllerAnimated:1 completion:0];
  feedbackListener = [(SearchUIStoreViewController *)self feedbackListener];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (result > 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E69CA4A0]) initWithProductPageResult:result];
    }

    else
    {
      if (result == 1)
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
    feedbackListener2 = [(SearchUIStoreViewController *)self feedbackListener];
    [feedbackListener2 reportFeedback:v11 queryId:{-[SearchUIStoreViewController queryId](self, "queryId")}];
  }
}

- (SFFeedbackListener)feedbackListener
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackListener);

  return WeakRetained;
}

@end