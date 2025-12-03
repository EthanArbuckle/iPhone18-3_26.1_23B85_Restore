@interface SearchUIVisualResponseHandler
- (SearchUIVisualResponseHandler)init;
- (id)buildResponseView:(id)view delegate:(id)delegate;
@end

@implementation SearchUIVisualResponseHandler

- (SearchUIVisualResponseHandler)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69D3788]);
  [(SearchUIVisualResponseHandler *)self setProvider:v3];

  return self;
}

- (id)buildResponseView:(id)view delegate:(id)delegate
{
  delegateCopy = delegate;
  viewCopy = view;
  provider = [(SearchUIVisualResponseHandler *)self provider];
  v9 = [provider viewForModel:viewCopy mode:1];

  if (v9)
  {
    [v9 setInteractionDelegate:delegateCopy];
    v10 = v9;
  }

  else
  {
    v11 = SearchUIGeneralLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SearchUIVisualResponseHandler buildResponseView:v11 delegate:?];
    }
  }

  return v9;
}

@end