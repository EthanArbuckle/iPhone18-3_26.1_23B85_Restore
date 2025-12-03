@interface SXComponentInteractionContextProvider
- (SXComponentInteraction)currentInteraction;
- (SXComponentInteractionContextProvider)initWithComponentInteractionHandlerManager:(id)manager actionManager:(id)actionManager;
- (id)contextMenuAtLocation:(CGPoint)location viewport:(id)viewport;
- (id)targetedPreviewAtLocation:(CGPoint)location viewport:(id)viewport;
- (id)toolTipAtLocation:(CGPoint)location viewport:(id)viewport;
- (void)commitPreviewViewController:(id)controller;
@end

@implementation SXComponentInteractionContextProvider

- (SXComponentInteractionContextProvider)initWithComponentInteractionHandlerManager:(id)manager actionManager:(id)actionManager
{
  managerCopy = manager;
  actionManagerCopy = actionManager;
  v12.receiver = self;
  v12.super_class = SXComponentInteractionContextProvider;
  v9 = [(SXComponentInteractionContextProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentInteractionHandlerManager, manager);
    objc_storeStrong(&v10->_actionManager, actionManager);
  }

  return v10;
}

- (id)contextMenuAtLocation:(CGPoint)location viewport:(id)viewport
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager componentViewForLocation:viewport, location.x, location.y];
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
          handler = [v11 handler];
          if (objc_opt_respondsToSelector())
          {
            [(SXComponentInteractionContextProvider *)self setCurrentInteraction:v11];
            [v5 bounds];
            v13 = [handler contextMenuForComponentView:v5 sourceRect:?];

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

- (void)commitPreviewViewController:(id)controller
{
  currentInteraction = [(SXComponentInteractionContextProvider *)self currentInteraction];
  handler = [currentInteraction handler];
  currentInteraction2 = [(SXComponentInteractionContextProvider *)self currentInteraction];
  componentView = [currentInteraction2 componentView];
  currentInteraction3 = [(SXComponentInteractionContextProvider *)self currentInteraction];
  componentView2 = [currentInteraction3 componentView];
  [componentView2 bounds];
  [handler handleInteractionType:2 sourceView:componentView sourceRect:?];

  [(SXComponentInteractionContextProvider *)self setCurrentInteraction:0];
}

- (id)targetedPreviewAtLocation:(CGPoint)location viewport:(id)viewport
{
  y = location.y;
  x = location.x;
  viewportCopy = viewport;
  v8 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager componentViewForLocation:x, y];
  v9 = v8;
  if (v8)
  {
    [v8 absoluteFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    view = [viewportCopy view];
    superview = [view superview];
    [viewportCopy convertRect:superview toView:{v11, v13, v15, v17}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    view2 = [viewportCopy view];
    superview2 = [view2 superview];
    v30 = [superview2 resizableSnapshotViewFromRect:1 afterScreenUpdates:v21 withCapInsets:{v23, v25, v27, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    if (v30)
    {
      [v30 setFrame:{v21, v23, v25, v27}];
      view3 = [viewportCopy view];
      superview3 = [view3 superview];
      [superview3 addSubview:v30];

      v33 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v33 setBackgroundColor:clearColor];

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

- (id)toolTipAtLocation:(CGPoint)location viewport:(id)viewport
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SXComponentInteractionHandlerManager *)self->_componentInteractionHandlerManager componentViewForLocation:viewport, location.x, location.y];
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

          handler = [*(*(&v14 + 1) + 8 * i) handler];
          if (objc_opt_respondsToSelector())
          {
            v11 = MEMORY[0x1E69DD170];
            v12 = [handler toolTipForComponentView:v5];
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