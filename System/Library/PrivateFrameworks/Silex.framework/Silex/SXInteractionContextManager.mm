@interface SXInteractionContextManager
- (BOOL)shouldStartPreviewing;
- (SXInteractionContextManager)initWithViewport:(id)a3;
- (SXInteractionContextManagerDelegate)delegate;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)toolTipInteraction:(id)a3 configurationAtPoint:(CGPoint)a4;
- (void)addProvider:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4;
- (void)didEndPreviewing;
- (void)registerOnView:(id)a3;
- (void)willStartPreviewing;
@end

@implementation SXInteractionContextManager

- (SXInteractionContextManager)initWithViewport:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SXInteractionContextManager;
  v6 = [(SXInteractionContextManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewport, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    providers = v7->_providers;
    v7->_providers = v8;
  }

  return v7;
}

- (void)registerOnView:(id)a3
{
  v4 = MEMORY[0x1E69DC8E0];
  v5 = a3;
  v7 = [[v4 alloc] initWithDelegate:self];
  [v5 addInteraction:v7];
  v6 = objc_alloc_init(MEMORY[0x1E69DD178]);
  [v6 setDelegate:self];
  [v5 addInteraction:v6];
}

- (void)addProvider:(id)a3
{
  v4 = a3;
  v5 = [(SXInteractionContextManager *)self providers];
  [v5 addObject:v4];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v21 = *MEMORY[0x1E69E9840];
  if ([(SXInteractionContextManager *)self shouldStartPreviewing])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(SXInteractionContextManager *)self providers];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(SXInteractionContextManager *)self viewport];
          v14 = [v12 contextMenuAtLocation:v13 viewport:{x, y}];

          if (v14)
          {
            [(SXInteractionContextManager *)self setActiveProvider:v12];
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__SXInteractionContextManager_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration___block_invoke;
  v7[3] = &unk_1E84FEC78;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 addCompletion:v7];
}

void __103__SXInteractionContextManager_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) activeProvider];
  v2 = [*(a1 + 40) previewViewController];
  [v3 commitPreviewViewController:v2];
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [v5 view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(SXInteractionContextManager *)self activeProvider];
  v12 = [(SXInteractionContextManager *)self viewport];
  v13 = [v11 targetedPreviewAtLocation:v12 viewport:{v8, v10}];
  [(SXInteractionContextManager *)self setActivePreview:v13];

  return [(SXInteractionContextManager *)self activePreview];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__SXInteractionContextManager_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v9[3] = &unk_1E84FED18;
  v9[4] = self;
  v7 = MEMORY[0x1DA716BE0](v9);
  v8 = v7;
  if (v6)
  {
    [v6 addCompletion:v7];
  }

  else
  {
    (*(v7 + 16))(v7);
  }

  [(SXInteractionContextManager *)self didEndPreviewing];
}

uint64_t __87__SXInteractionContextManager_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activePreview];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  [*(a1 + 32) setActivePreview:0];
  v4 = *(a1 + 32);

  return [v4 setActiveProvider:0];
}

- (id)toolTipInteraction:(id)a3 configurationAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(SXInteractionContextManager *)self providers:a3];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (objc_opt_respondsToSelector())
      {
        v13 = [(SXInteractionContextManager *)self viewport];
        v14 = [v12 toolTipAtLocation:v13 viewport:{x, y}];

        if (v14)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

- (BOOL)shouldStartPreviewing
{
  v3 = [(SXInteractionContextManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(SXInteractionContextManager *)self delegate];
  v6 = [v5 shouldStartPreviewForInteractionContextManager:self];

  return v6;
}

- (void)willStartPreviewing
{
  v3 = [(SXInteractionContextManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXInteractionContextManager *)self delegate];
    [v5 willStartPreviewingForInteractionContextManager:self];
  }
}

- (void)didEndPreviewing
{
  v3 = [(SXInteractionContextManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXInteractionContextManager *)self delegate];
    [v5 willEndPreviewingForInteractionContextManager:self];
  }
}

- (SXInteractionContextManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end