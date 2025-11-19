@interface WrappedCombineAdapter
- (WrappedCombineAdapter)initWithAdapter:(id)a3;
- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)applyCombinedConfiguration:(id)a3 declarationKeys:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)removeCombinedConfigurationForScope:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation WrappedCombineAdapter

- (WrappedCombineAdapter)initWithAdapter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WrappedCombineAdapter;
  v6 = [(WrappedCombineAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedAdapter, a3);
  }

  return v7;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  v9 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v10 = v9;
  if (v8)
  {
    [v9 beginProcessingConfigurationsForScope:a3 completionHandler:v6];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(WrappedCombineAdapter *)self wrappedAdapter];
      v14 = 0;
      [v12 beginProcessingConfigurationsForScope:a3 error:&v14];
      v13 = v14;

      v6[2](v6, v13);
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  v9 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v10 = v9;
  if (v8)
  {
    [v9 allDeclarationKeysForScope:a3 completionHandler:v6];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    v12 = [(WrappedCombineAdapter *)self wrappedAdapter];
    v13 = v12;
    if (v11)
    {
      v19 = 0;
      v14 = [v12 allDeclarationKeysForScope:a3 error:&v19];
      v15 = v19;

      v6[2](v6, v14, v15);
    }

    else
    {
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(WrappedCombineAdapter *)self wrappedAdapter];
        v18 = [v17 allDeclarationKeys];

        v6[2](v6, v18, 0);
      }
    }
  }
}

- (void)applyCombinedConfiguration:(id)a3 declarationKeys:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v14 = objc_opt_respondsToSelector();

  v15 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v16 = v15;
  if (v14)
  {
    [v15 applyCombinedConfiguration:v10 declarationKeys:v11 scope:a5 completionHandler:v12];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(WrappedCombineAdapter *)self wrappedAdapter];
      v21 = 0;
      v22 = 0;
      [v18 applyCombinedConfiguration:v10 declarationKeys:v11 scope:a5 returningReasons:&v22 error:&v21];
      v19 = v22;
      v20 = v21;

      v12[2](v12, v19, v20);
    }
  }
}

- (void)removeCombinedConfigurationForScope:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  v9 = [(WrappedCombineAdapter *)self wrappedAdapter];
  v10 = v9;
  if (v8)
  {
    [v9 removeCombinedConfigurationForScope:a3 completionHandler:v6];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(WrappedCombineAdapter *)self wrappedAdapter];
      v14 = 0;
      [v12 removeCombinedConfigurationForScope:a3 error:&v14];
      v13 = v14;

      v6[2](v6, v13);
    }
  }
}

@end