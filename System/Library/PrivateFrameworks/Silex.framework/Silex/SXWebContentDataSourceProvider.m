@interface SXWebContentDataSourceProvider
- (SXWebContentDataSourceProvider)initWithDOMObjectProvider:(id)a3 resourceDataSourceProvider:(id)a4;
- (id)dataSourcesForReferences:(id)a3;
@end

@implementation SXWebContentDataSourceProvider

- (SXWebContentDataSourceProvider)initWithDOMObjectProvider:(id)a3 resourceDataSourceProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXWebContentDataSourceProvider;
  v9 = [(SXWebContentDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, a3);
    objc_storeStrong(&v10->_resourceDataSourceProvider, a4);
  }

  return v10;
}

- (id)dataSourcesForReferences:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __59__SXWebContentDataSourceProvider_dataSourcesForReferences___block_invoke;
    v12 = &unk_1E8501C50;
    v13 = self;
    v6 = v5;
    v14 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];

  return v7;
}

void __59__SXWebContentDataSourceProvider_dataSourcesForReferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 DOMObjectProvider];
  v8 = [v6 resourceIdentifier];

  v9 = [v7 resourceForIdentifier:v8];

  v10 = [v9 URL];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [*(a1 + 32) resourceDataSourceProvider];
    v12 = [v11 resourceDataSource];
    v13 = [v12 translateURL:v10];

    v10 = v13;
  }

  if (v10)
  {
    [*(a1 + 40) setObject:v10 forKey:v14];
  }
}

@end