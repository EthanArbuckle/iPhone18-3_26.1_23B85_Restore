@interface SWNavigationManager
- (BOOL)shouldPreviewRequest:(id)a3;
- (SWNavigationManager)init;
- (id)previewViewControllerForRequest:(id)a3;
- (unint64_t)actionForRequest:(id)a3;
- (void)addObserver:(id)a3;
- (void)commitViewController:(id)a3;
- (void)registerHandler:(id)a3;
- (void)registerHandler:(id)a3 extension:(id)a4;
- (void)registerHandler:(id)a3 scheme:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation SWNavigationManager

- (SWNavigationManager)init
{
  v12.receiver = self;
  v12.super_class = SWNavigationManager;
  v2 = [(SWNavigationManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    handlers = v2->_handlers;
    v2->_handlers = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    schemeHandlers = v2->_schemeHandlers;
    v2->_schemeHandlers = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    extensionHandlers = v2->_extensionHandlers;
    v2->_extensionHandlers = v7;

    v9 = [MEMORY[0x1E695DFA8] set];
    observers = v2->_observers;
    v2->_observers = v9;
  }

  return v2;
}

- (unint64_t)actionForRequest:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 URL];
  v6 = [v5 pathExtension];

  v7 = [v4 URL];
  v8 = [v7 scheme];

  if (v6)
  {
    v9 = [(SWNavigationManager *)self extensionHandlers];
    v10 = [v9 objectForKey:v6];

    v11 = [v10 handleRequest:v4];
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = [(SWNavigationManager *)self schemeHandlers];
    v13 = [v12 objectForKey:v8];

    v11 = [v13 handleRequest:v4];
  }

LABEL_7:
  if (v11)
  {
LABEL_18:
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [(SWNavigationManager *)self observers];
    v20 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v14);
          }

          v24 = *(*(&v28 + 1) + 8 * v23);
          v25 = [v4 URL];
          [v24 handledNavigationWithURL:v25];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [(SWNavigationManager *)self handlers];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v32 + 1) + 8 * v18) handleRequest:v4];
          if (v19)
          {
            v11 = v19;

            goto LABEL_18;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)shouldPreviewRequest:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 URL];
  v6 = [v5 pathExtension];

  v7 = [v4 URL];
  v8 = [v7 scheme];

  v9 = &_OBJC_LABEL_PROTOCOL___TFAssembly;
  if (v6)
  {
    v10 = [(SWNavigationManager *)self extensionHandlers];
    v11 = [v10 objectForKey:v6];

    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 previewViewControllerForRequest:v4];
      if (v12)
      {
        v13 = [[SWNavigationPreview alloc] initWithViewController:v12 navigationHandler:v11 URLRequest:v4];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v14 = [(SWNavigationManager *)self schemeHandlers];
    v15 = [v14 objectForKey:v8];

    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 previewViewControllerForRequest:v4];
      if (v16)
      {
        v13 = [[SWNavigationPreview alloc] initWithViewController:v16 navigationHandler:v15 URLRequest:v4];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_18:
  if (!v13)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = [(SWNavigationManager *)self handlers];
    v13 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v29 = v6;
      v30 = v8;
      v18 = *v32;
      while (2)
      {
        v19 = 0;
        v20 = v9;
        v21 = v9[394];
        do
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v31 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            v23 = [v22 previewViewControllerForRequest:v4];
            if (v23)
            {
              v24 = v23;
              v13 = [[SWNavigationPreview alloc] initWithViewController:v23 navigationHandler:v22 URLRequest:v4];

              goto LABEL_30;
            }
          }

          v19 = (v19 + 1);
        }

        while (v13 != v19);
        v13 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
        v9 = v20;
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_30:
      v6 = v29;
      v8 = v30;
    }
  }

  [(SWNavigationManager *)self setCurrentPreview:v13, v29, v30];
  v25 = [(SWNavigationManager *)self currentPreview];
  v26 = v25 != 0;

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)previewViewControllerForRequest:(id)a3
{
  v4 = a3;
  if (v4 && (-[SWNavigationManager currentPreview](self, "currentPreview"), v5 = objc_claimAutoreleasedReturnValue(), [v5 request], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqual:", v6), v6, v5, v7))
  {
    v8 = [(SWNavigationManager *)self currentPreview];
    v9 = [v8 viewController];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)commitViewController:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SWNavigationManager *)self currentPreview];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 viewController];

    if (v7 == v4)
    {
      [(SWNavigationManager *)self setCurrentPreview:0];
      v8 = [v6 navigationHandler];
      v9 = [v6 request];
      [v8 commitViewController:v4 URLRequest:v9];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [(SWNavigationManager *)self observers];
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * v14);
            v16 = [v6 request];
            v17 = [v16 URL];
            [v15 handledNavigationWithURL:v17];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)registerHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SWNavigationManager *)self handlers];
    [v5 addObject:v4];
  }
}

- (void)registerHandler:(id)a3 scheme:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(SWNavigationManager *)self schemeHandlers];
    [v8 setObject:v7 forKey:v6];
  }
}

- (void)registerHandler:(id)a3 extension:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(SWNavigationManager *)self extensionHandlers];
    [v8 setObject:v7 forKey:v6];
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SWNavigationManager *)self observers];
    [v5 addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SWNavigationManager *)self observers];
    [v5 removeObject:v4];
  }
}

@end