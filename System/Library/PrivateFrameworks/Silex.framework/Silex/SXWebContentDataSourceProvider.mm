@interface SXWebContentDataSourceProvider
- (SXWebContentDataSourceProvider)initWithDOMObjectProvider:(id)provider resourceDataSourceProvider:(id)sourceProvider;
- (id)dataSourcesForReferences:(id)references;
@end

@implementation SXWebContentDataSourceProvider

- (SXWebContentDataSourceProvider)initWithDOMObjectProvider:(id)provider resourceDataSourceProvider:(id)sourceProvider
{
  providerCopy = provider;
  sourceProviderCopy = sourceProvider;
  v12.receiver = self;
  v12.super_class = SXWebContentDataSourceProvider;
  v9 = [(SXWebContentDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, provider);
    objc_storeStrong(&v10->_resourceDataSourceProvider, sourceProvider);
  }

  return v10;
}

- (id)dataSourcesForReferences:(id)references
{
  referencesCopy = references;
  if ([referencesCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __59__SXWebContentDataSourceProvider_dataSourcesForReferences___block_invoke;
    v12 = &unk_1E8501C50;
    selfCopy = self;
    v6 = dictionary;
    v14 = v6;
    [referencesCopy enumerateKeysAndObjectsUsingBlock:&v9];
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