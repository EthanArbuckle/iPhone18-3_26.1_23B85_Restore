@interface SXComponentInteractionContextProvider
- (SXComponentInteraction)currentInteraction;
- (SXComponentInteractionContextProvider)initWithComponentInteractionHandlerManager:(id)a3 actionManager:(id)a4;
- (id)contextMenuAtLocation:(CGPoint)a3 viewport:(id)a4;
- (id)targetedPreviewAtLocation:(CGPoint)a3 viewport:(id)a4;
- (id)toolTipAtLocation:(CGPoint)a3 viewport:(id)a4;
- (void)commitPreviewViewController:(id)a3;
@end

@implementation SXComponentInteractionContextProvider

- (SXComponentInteractionContextProvider)initWithComponentInteractionHandlerManager:(id)a3 actionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXComponentInteractionContextProvider;
  v9 = [(SXComponentInteractionContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentInteractionHandlerManager, a3);
    objc_storeStrong(&v10->_actionManager, a4);
  }

  return v10;
}

- (id)contextMenuAtLocation:(CGPoint)a3 viewport:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager componentViewForLocation:a4, a3.x, a3.y];
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager interactionsForComponentView:v5, 0];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 handler];
          if (objc_opt_respondsToSelector())
          {
            [(SXComponentInteractionContextProvider *)self setCurrentInteraction:v11];
            [v5 bounds];
            v13 = [v12 contextMenuForComponentView:v5 sourceRect:?];

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(SXComponentInteractionContextProvider *)self setCurrentInteraction:0];
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)commitPreviewViewController:(id)a3
{
  v4 = [(SXComponentInteractionContextProvider *)self currentInteraction];
  v5 = [v4 handler];
  v6 = [(SXComponentInteractionContextProvider *)self currentInteraction];
  v7 = [v6 componentView];
  v8 = [(SXComponentInteractionContextProvider *)self currentInteraction];
  v9 = [v8 componentView];
  [v9 bounds];
  [v5 handleInteractionType:2 sourceView:v7 sourceRect:?];

  [(SXComponentInteractionContextProvider *)self setCurrentInteraction:0];
}

- (id)targetedPreviewAtLocation:(CGPoint)a3 viewport:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager componentViewForLocation:x, y];
  v9 = v8;
  if (v8)
  {
    [v8 absoluteFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v7 view];
    v19 = [v18 superview];
    [v7 convertRect:v19 toView:{v11, v13, v15, v17}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [v7 view];
    v29 = [v28 superview];
    v30 = [v29 resizableSnapshotViewFromRect:1 afterScreenUpdates:v21 withCapInsets:{v23, v25, v27, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    if (v30)
    {
      [v30 setFrame:{v21, v23, v25, v27}];
      v31 = [v7 view];
      v32 = [v31 superview];
      [v32 addSubview:v30];

      v33 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      v34 = [MEMORY[0x1E69DC888] clearColor];
      [v33 setBackgroundColor:v34];

      v35 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v30 parameters:v33];
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)toolTipAtLocation:(CGPoint)a3 viewport:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager componentViewForLocation:a4, a3.x, a3.y];
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager interactionsForComponentView:v5, 0];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) handler];
          if (objc_opt_respondsToSelector())
          {
            v11 = MEMORY[0x1E69DD170];
            v12 = [v10 toolTipForComponentView:v5];
            [v5 absoluteFrame];
            v7 = [v11 configurationWithToolTip:v12 inRect:?];

            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SXComponentInteraction)currentInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_currentInteraction);

  return WeakRetained;
}

@end