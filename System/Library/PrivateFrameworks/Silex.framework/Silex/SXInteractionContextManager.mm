@interface SXInteractionContextManager
- (BOOL)shouldStartPreviewing;
- (SXInteractionContextManager)initWithViewport:(id)viewport;
- (SXInteractionContextManagerDelegate)delegate;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)toolTipInteraction:(id)interaction configurationAtPoint:(CGPoint)point;
- (void)addProvider:(id)provider;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration;
- (void)didEndPreviewing;
- (void)registerOnView:(id)view;
- (void)willStartPreviewing;
@end

@implementation SXInteractionContextManager

- (SXInteractionContextManager)initWithViewport:(id)viewport
{
  viewportCopy = viewport;
  v11.receiver = self;
  v11.super_class = SXInteractionContextManager;
  v6 = [(SXInteractionContextManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewport, viewport);
    array = [MEMORY[0x1E695DF70] array];
    providers = v7->_providers;
    v7->_providers = array;
  }

  return v7;
}

- (void)registerOnView:(id)view
{
  v4 = MEMORY[0x1E69DC8E0];
  viewCopy = view;
  v7 = [[v4 alloc] initWithDelegate:self];
  [viewCopy addInteraction:v7];
  v6 = objc_alloc_init(MEMORY[0x1E69DD178]);
  [v6 setDelegate:self];
  [viewCopy addInteraction:v6];
}

- (void)addProvider:(id)provider
{
  providerCopy = provider;
  providers = [(SXInteractionContextManager *)self providers];
  [providers addObject:providerCopy];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21 = *MEMORY[0x1E69E9840];
  if ([(SXInteractionContextManager *)self shouldStartPreviewing])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    providers = [(SXInteractionContextManager *)self providers];
    v8 = [providers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(providers);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          viewport = [(SXInteractionContextManager *)self viewport];
          v14 = [v12 contextMenuAtLocation:viewport viewport:{x, y}];

          if (v14)
          {
            [(SXInteractionContextManager *)self setActiveProvider:v12];
            goto LABEL_13;
          }
        }

        v9 = [providers countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__SXInteractionContextManager_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration___block_invoke;
  v7[3] = &unk_1E84FEC78;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [v6 addCompletion:v7];
}

void __103__SXInteractionContextManager_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) activeProvider];
  v2 = [*(a1 + 40) previewViewController];
  [v3 commitPreviewViewController:v2];
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  [interactionCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  activeProvider = [(SXInteractionContextManager *)self activeProvider];
  viewport = [(SXInteractionContextManager *)self viewport];
  v13 = [activeProvider targetedPreviewAtLocation:viewport viewport:{v8, v10}];
  [(SXInteractionContextManager *)self setActivePreview:v13];

  return [(SXInteractionContextManager *)self activePreview];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__SXInteractionContextManager_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v9[3] = &unk_1E84FED18;
  v9[4] = self;
  v7 = MEMORY[0x1DA716BE0](v9);
  v8 = v7;
  if (animatorCopy)
  {
    [animatorCopy addCompletion:v7];
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

- (id)toolTipInteraction:(id)interaction configurationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(SXInteractionContextManager *)self providers:interaction];
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
        viewport = [(SXInteractionContextManager *)self viewport];
        v14 = [v12 toolTipAtLocation:viewport viewport:{x, y}];

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
  delegate = [(SXInteractionContextManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(SXInteractionContextManager *)self delegate];
  v6 = [delegate2 shouldStartPreviewForInteractionContextManager:self];

  return v6;
}

- (void)willStartPreviewing
{
  delegate = [(SXInteractionContextManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SXInteractionContextManager *)self delegate];
    [delegate2 willStartPreviewingForInteractionContextManager:self];
  }
}

- (void)didEndPreviewing
{
  delegate = [(SXInteractionContextManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SXInteractionContextManager *)self delegate];
    [delegate2 willEndPreviewingForInteractionContextManager:self];
  }
}

- (SXInteractionContextManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end