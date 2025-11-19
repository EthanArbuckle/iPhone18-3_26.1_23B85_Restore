@interface TFMultiDelegate
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (TFMultiDelegate)initWithDelegate:(id)a3 delegateProtocol:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addDelegate:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)replaceDelegate:(id)a3 withDelegate:(id)a4;
@end

@implementation TFMultiDelegate

- (TFMultiDelegate)initWithDelegate:(id)a3 delegateProtocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TFMultiDelegate;
  v8 = [(TFMultiDelegate *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    children = v8->_children;
    v8->_children = v9;

    [(NSHashTable *)v8->_children addObject:v6];
    objc_storeStrong(&v8->_delegateProtocol, a4);
  }

  return v8;
}

- (void)addDelegate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TFMultiDelegate *)self children];
    [v5 addObject:v4];
  }
}

- (void)removeDelegate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TFMultiDelegate *)self children];
    [v5 removeObject:v4];
  }
}

- (void)replaceDelegate:(id)a3 withDelegate:(id)a4
{
  if (a3 != a4)
  {
    v7 = a4;
    [(TFMultiDelegate *)self removeDelegate:a3];
    [(TFMultiDelegate *)self addDelegate:v7];
  }
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TFMultiDelegate;
  if ([(TFMultiDelegate *)&v8 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else if (v4)
  {
    v6 = [(TFMultiDelegate *)self delegateProtocol];
    v5 = v6 == v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = TFMultiDelegate;
  if ([(TFMultiDelegate *)&v16 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(TFMultiDelegate *)self children];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (*(*(&v12 + 1) + 8 * i) && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v4 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_14:
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = TFMultiDelegate;
  v5 = [(TFMultiDelegate *)&v17 methodSignatureForSelector:?];
  if (!v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(TFMultiDelegate *)self children];
    v5 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (v9)
          {
            v10 = [v9 methodSignatureForSelector:a3];
            if (v10)
            {
              v5 = v10;

              v6 = v5;
              goto LABEL_13;
            }
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(TFMultiDelegate *)self children];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10)
        {
          [v4 selector];
          if (objc_opt_respondsToSelector())
          {
            [v4 invokeWithTarget:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end