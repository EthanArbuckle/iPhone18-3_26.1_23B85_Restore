@interface WrappedSingleAdapter
- (WrappedSingleAdapter)initWithAdapter:(id)a3;
- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)applyConfiguration:(id)a3 replaceKey:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)removeDeclarationKey:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation WrappedSingleAdapter

- (WrappedSingleAdapter)initWithAdapter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WrappedSingleAdapter;
  v6 = [(WrappedSingleAdapter *)&v9 init];
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
  v7 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  v9 = [(WrappedSingleAdapter *)self wrappedAdapter];
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
      v12 = [(WrappedSingleAdapter *)self wrappedAdapter];
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
  v7 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  v9 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = objc_opt_respondsToSelector();

    v12 = [(WrappedSingleAdapter *)self wrappedAdapter];
    v13 = v12;
    if (v11)
    {
      v22 = 0;
      v14 = [v12 installedDeclarationKeyForScope:a3 error:&v22];
      v15 = v22;

      if (v14)
      {
        v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
      }

      else
      {
        v16 = objc_opt_new();
      }

      v20 = v16;
      v6[2](v6, v16, v15);
    }

    else
    {
      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      v18 = [(WrappedSingleAdapter *)self wrappedAdapter];
      v14 = [v18 installedDeclarationKey];

      if (v14)
      {
        v19 = [MEMORY[0x277CBEB98] setWithObject:v14];
      }

      else
      {
        v19 = objc_opt_new();
      }

      v21 = v19;
      v6[2](v6, v19, 0);
    }

    goto LABEL_14;
  }

  [v9 allDeclarationKeysForScope:a3 completionHandler:v6];

LABEL_14:
}

- (void)applyConfiguration:(id)a3 replaceKey:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v14 = objc_opt_respondsToSelector();

  v15 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v16 = v15;
  if (v14)
  {
    [v15 applyConfiguration:v10 replaceKey:v11 scope:a5 completionHandler:v12];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(WrappedSingleAdapter *)self wrappedAdapter];
      v21 = 0;
      v22 = 0;
      [v18 applyConfiguration:v10 scope:a5 returningReasons:&v22 error:&v21];
      v19 = v22;
      v20 = v21;

      v12[2](v12, v19, v20);
    }
  }
}

- (void)removeDeclarationKey:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v11 = objc_opt_respondsToSelector();

  v12 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v13 = v12;
  if (v11)
  {
    [v12 removeDeclarationKey:v8 scope:a4 completionHandler:v9];
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(WrappedSingleAdapter *)self wrappedAdapter];
      v17 = 0;
      [v15 removeDeclarationKey:v8 scope:a4 error:&v17];
      v16 = v17;

      v9[2](v9, v16);
    }
  }
}

@end