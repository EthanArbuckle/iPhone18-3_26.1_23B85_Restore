@interface WrappedSingleAdapter
- (WrappedSingleAdapter)initWithAdapter:(id)adapter;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation WrappedSingleAdapter

- (WrappedSingleAdapter)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v9.receiver = self;
  v9.super_class = WrappedSingleAdapter;
  v6 = [(WrappedSingleAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedAdapter, adapter);
  }

  return v7;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  wrappedAdapter = [(WrappedSingleAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v10 = wrappedAdapter2;
  if (v8)
  {
    [wrappedAdapter2 beginProcessingConfigurationsForScope:scope completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      wrappedAdapter3 = [(WrappedSingleAdapter *)self wrappedAdapter];
      v14 = 0;
      [wrappedAdapter3 beginProcessingConfigurationsForScope:scope error:&v14];
      v13 = v14;

      handlerCopy[2](handlerCopy, v13);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  wrappedAdapter = [(WrappedSingleAdapter *)self wrappedAdapter];
  v8 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v10 = wrappedAdapter2;
  if ((v8 & 1) == 0)
  {
    v11 = objc_opt_respondsToSelector();

    wrappedAdapter3 = [(WrappedSingleAdapter *)self wrappedAdapter];
    v13 = wrappedAdapter3;
    if (v11)
    {
      v22 = 0;
      installedDeclarationKey = [wrappedAdapter3 installedDeclarationKeyForScope:scope error:&v22];
      v15 = v22;

      if (installedDeclarationKey)
      {
        v16 = [MEMORY[0x277CBEB98] setWithObject:installedDeclarationKey];
      }

      else
      {
        v16 = objc_opt_new();
      }

      v20 = v16;
      handlerCopy[2](handlerCopy, v16, v15);
    }

    else
    {
      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      wrappedAdapter4 = [(WrappedSingleAdapter *)self wrappedAdapter];
      installedDeclarationKey = [wrappedAdapter4 installedDeclarationKey];

      if (installedDeclarationKey)
      {
        v19 = [MEMORY[0x277CBEB98] setWithObject:installedDeclarationKey];
      }

      else
      {
        v19 = objc_opt_new();
      }

      v21 = v19;
      handlerCopy[2](handlerCopy, v19, 0);
    }

    goto LABEL_14;
  }

  [wrappedAdapter2 allDeclarationKeysForScope:scope completionHandler:handlerCopy];

LABEL_14:
}

- (void)applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  keyCopy = key;
  handlerCopy = handler;
  wrappedAdapter = [(WrappedSingleAdapter *)self wrappedAdapter];
  v14 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v16 = wrappedAdapter2;
  if (v14)
  {
    [wrappedAdapter2 applyConfiguration:configurationCopy replaceKey:keyCopy scope:scope completionHandler:handlerCopy];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      wrappedAdapter3 = [(WrappedSingleAdapter *)self wrappedAdapter];
      v21 = 0;
      v22 = 0;
      [wrappedAdapter3 applyConfiguration:configurationCopy scope:scope returningReasons:&v22 error:&v21];
      v19 = v22;
      v20 = v21;

      handlerCopy[2](handlerCopy, v19, v20);
    }
  }
}

- (void)removeDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  wrappedAdapter = [(WrappedSingleAdapter *)self wrappedAdapter];
  v11 = objc_opt_respondsToSelector();

  wrappedAdapter2 = [(WrappedSingleAdapter *)self wrappedAdapter];
  v13 = wrappedAdapter2;
  if (v11)
  {
    [wrappedAdapter2 removeDeclarationKey:keyCopy scope:scope completionHandler:handlerCopy];
  }

  else
  {
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      wrappedAdapter3 = [(WrappedSingleAdapter *)self wrappedAdapter];
      v17 = 0;
      [wrappedAdapter3 removeDeclarationKey:keyCopy scope:scope error:&v17];
      v16 = v17;

      handlerCopy[2](handlerCopy, v16);
    }
  }
}

@end