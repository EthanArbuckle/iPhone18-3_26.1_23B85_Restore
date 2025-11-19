@interface SearchUIVisualResponseHandler
- (SearchUIVisualResponseHandler)init;
- (id)buildResponseView:(id)a3 delegate:(id)a4;
@end

@implementation SearchUIVisualResponseHandler

- (SearchUIVisualResponseHandler)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69D3788]);
  [(SearchUIVisualResponseHandler *)self setProvider:v3];

  return self;
}

- (id)buildResponseView:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUIVisualResponseHandler *)self provider];
  v9 = [v8 viewForModel:v7 mode:1];

  if (v9)
  {
    [v9 setInteractionDelegate:v6];
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