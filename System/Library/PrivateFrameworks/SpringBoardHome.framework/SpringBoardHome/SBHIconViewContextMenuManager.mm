@interface SBHIconViewContextMenuManager
- (BOOL)iconViewShouldBeginContextMenuPresentation:(id)presentation;
- (BOOL)shouldAllowContextMenuInteractionForIconView:(id)view atLocation:(CGPoint)location;
- (BOOL)shouldGroupSystemApplicationShortcutItemsForIconView:(id)view atLocation:(CGPoint)location;
- (BOOL)shouldPreviewOverlapMenuForIconView:(id)view;
- (SBHIconViewContextMenuManager)initWithContextMenuActionProviders:(id)providers previewProviders:(id)previewProviders;
- (SBHIconViewContextMenuManagerDelegate)delegate;
- (id)_contextMenuInteraction:(id)interaction previewForIconWithConfigurationOptions:(unint64_t)options highlighted:(BOOL)highlighted forIconView:(id)view;
- (id)allOpenApplicationWindowsContextMenuProviders;
- (id)allRecentDocumentsContextMenuProviders;
- (id)containerViewForPresentingContextMenuForIconView:(id)view;
- (id)contextMenuConfigurationForIconView:(id)view atLocation:(CGPoint)location;
- (id)effectiveContextMenuPreviewProviderForIconView:(id)view atLocation:(CGPoint)location;
- (id)effectivePreviewViewControllerForIconView:(id)view atLocation:(CGPoint)location;
- (id)orderedActionContextMenuProvidersForIconView:(id)view;
- (unint64_t)supportedMultitaskingShortcutActionsForIconView:(id)view;
- (void)addContextMenuActionProviders:(id)providers;
- (void)addContextMenuPreviewProviders:(id)providers;
- (void)iconView:(id)view willUseContextMenuStyle:(id)style;
- (void)iconViewContextMenuPresentationDidCancel:(id)cancel;
- (void)iconViewContextMenuPresentationDidFinish:(id)finish;
- (void)iconViewContextMenuPresentationWillBegin:(id)begin;
- (void)iconViewContextMenuPresentationWillFinish:(id)finish;
- (void)refreshContextMenuForIconView:(id)view;
- (void)removeContextMenuActionProviders:(id)providers;
- (void)removeContextMenuPreviewProviders:(id)providers;
@end

@implementation SBHIconViewContextMenuManager

- (SBHIconViewContextMenuManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHIconViewContextMenuManager)initWithContextMenuActionProviders:(id)providers previewProviders:(id)previewProviders
{
  providersCopy = providers;
  previewProvidersCopy = previewProviders;
  v14.receiver = self;
  v14.super_class = SBHIconViewContextMenuManager;
  v8 = [(SBHIconViewContextMenuManager *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    contextMenuActionProviders = v8->_contextMenuActionProviders;
    v8->_contextMenuActionProviders = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    contextMenuPreviewProviders = v8->_contextMenuPreviewProviders;
    v8->_contextMenuPreviewProviders = v11;

    if (providersCopy)
    {
      [(NSMutableSet *)v8->_contextMenuActionProviders addObjectsFromArray:providersCopy];
    }

    if (previewProvidersCopy)
    {
      [(NSMutableSet *)v8->_contextMenuPreviewProviders addObjectsFromArray:previewProvidersCopy];
    }
  }

  return v8;
}

- (void)addContextMenuActionProviders:(id)providers
{
  [(NSMutableSet *)self->_contextMenuActionProviders addObjectsFromArray:providers];
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  [delegate contextMenuActionProvidersChangedForContextMenuManager:self];
}

- (void)removeContextMenuActionProviders:(id)providers
{
  v15 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [providersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(providersCopy);
        }

        [(NSMutableSet *)self->_contextMenuActionProviders removeObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [providersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  [delegate contextMenuActionProvidersChangedForContextMenuManager:self];
}

- (void)addContextMenuPreviewProviders:(id)providers
{
  [(NSMutableSet *)self->_contextMenuPreviewProviders addObjectsFromArray:providers];
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  [delegate contextMenuPreviewProvidersChangedForContextMenuManager:self];
}

- (void)removeContextMenuPreviewProviders:(id)providers
{
  v15 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [providersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(providersCopy);
        }

        [(NSMutableSet *)self->_contextMenuPreviewProviders removeObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [providersCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  [delegate contextMenuPreviewProvidersChangedForContextMenuManager:self];
}

- (BOOL)shouldGroupSystemApplicationShortcutItemsForIconView:(id)view atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v34 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(SBHIconViewContextMenuManager *)self allOpenApplicationWindowsContextMenuProviders];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [v13 canProvideContextMenuSectionsForIconView:viewCopy])
        {
          v14 = [v13 contextMenuSectionsForIconView:viewCopy atLocation:{x, y}];
          v15 = [v14 count];

          if (v15)
          {
            LOBYTE(v17) = 1;
            v16 = v8;
            goto LABEL_25;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(SBHIconViewContextMenuManager *)self allRecentDocumentsContextMenuProviders];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v27 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = *v25;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [v20 canProvideContextMenuSectionsForIconView:{viewCopy, v24}])
        {
          v21 = [v20 contextMenuSectionsForIconView:viewCopy atLocation:{x, y, v24}];
          v22 = [v21 count];

          if (v22)
          {
            LOBYTE(v17) = 1;
            goto LABEL_24;
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

LABEL_25:
  return v17;
}

- (id)contextMenuConfigurationForIconView:(id)view atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  if ([(SBHIconViewContextMenuManager *)self shouldAllowContextMenuInteractionForIconView:viewCopy atLocation:x, y])
  {
    v8 = [[SBIconViewContextMenuContext alloc] initWithIconView:viewCopy location:x, y];
    if ([(NSMutableSet *)self->_contextMenuActionProviders count]|| [(NSMutableSet *)self->_contextMenuPreviewProviders count])
    {
      objc_initWeak(&location, viewCopy);
      objc_initWeak(&from, self);
      v9 = MEMORY[0x1E69DC8D8];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __80__SBHIconViewContextMenuManager_contextMenuConfigurationForIconView_atLocation___block_invoke_2;
      v23[3] = &unk_1E808A460;
      objc_copyWeak(&v25, &from);
      objc_copyWeak(v26, &location);
      v23[4] = self;
      v26[1] = *&x;
      v26[2] = *&y;
      v10 = viewCopy;
      v24 = v10;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __80__SBHIconViewContextMenuManager_contextMenuConfigurationForIconView_atLocation___block_invoke_3;
      v18 = &unk_1E808A488;
      objc_copyWeak(&v21, &from);
      objc_copyWeak(v22, &location);
      selfCopy = self;
      v22[1] = *&x;
      v22[2] = *&y;
      v20 = v10;
      v11 = [v9 configurationWithIdentifier:v8 previewProvider:v23 actionProvider:&v15];

      objc_destroyWeak(v22);
      objc_destroyWeak(&v21);

      objc_destroyWeak(v26);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:v8 previewProvider:0 actionProvider:&__block_literal_global_15];
      [viewCopy setLastContextMenuInteractionFailedToLoad:1];
    }

    v12 = [(SBHIconViewContextMenuManager *)self delegate:v15];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 contextMenuManager:self preferredMenuElementOrderForIconView:viewCopy];
    }

    else
    {
      v13 = 1;
    }

    [v11 setPreferredMenuElementOrder:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __80__SBHIconViewContextMenuManager_contextMenuConfigurationForIconView_atLocation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    if (v3)
    {
      v4 = [*(a1 + 32) effectivePreviewViewControllerForIconView:v3 atLocation:{*(a1 + 64), *(a1 + 72)}];
      if (v4)
      {
        v5 = objc_opt_new();
        [v5 setGroupNameBase:@"SBIconView"];
        [v5 setBackgroundScale:0.05];
        [v5 setContentViewController:v4];
        [*(a1 + 40) setLastContextMenuInteractionFailedToLoad:0];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __80__SBHIconViewContextMenuManager_contextMenuConfigurationForIconView_atLocation___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    if (v3)
    {
      v14 = WeakRetained;
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = [*(a1 + 32) orderedActionContextMenuProvidersForIconView:v3];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v11 = [v10 contextMenuSectionsForIconView:v3 atLocation:{*(a1 + 64), *(a1 + 72)}];
              if (v11)
              {
                [v4 addObjectsFromArray:v11];
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      if ([v4 count])
      {
        [*(a1 + 40) setLastContextMenuInteractionFailedToLoad:0];
        v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3D472A8 children:v4];
      }

      else
      {
        v12 = 0;
      }

      WeakRetained = v14;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)iconViewShouldBeginContextMenuPresentation:(id)presentation
{
  presentationCopy = presentation;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate contextMenuManager:self shouldBeginContextMenuPresentationForIconView:presentationCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)iconViewContextMenuPresentationWillBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contextMenuManager:self contextMenuPresentationWillBeginForIconView:beginCopy];
  }
}

- (void)iconViewContextMenuPresentationWillFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contextMenuManager:self contextMenuPresentationWillFinishForIconView:finishCopy];
  }
}

- (void)iconViewContextMenuPresentationDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contextMenuManager:self contextMenuPresentationDidFinishForIconView:finishCopy];
  }
}

- (void)iconViewContextMenuPresentationDidCancel:(id)cancel
{
  cancelCopy = cancel;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contextMenuManager:self contextMenuPresentationDidCancelForIconView:cancelCopy];
  }
}

- (id)containerViewForPresentingContextMenuForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate contextMenuManager:self containerViewForPresentingContextMenuForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)iconView:(id)view willUseContextMenuStyle:(id)style
{
  viewCopy = view;
  styleCopy = style;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contextMenuManager:self iconView:viewCopy willUseContextMenuStyle:styleCopy];
  }
}

- (void)refreshContextMenuForIconView:(id)view
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_contextMenuActionProviders;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 refreshContextMenuActionsForIconView:viewCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_contextMenuPreviewProviders;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 refreshContextMenuPreviewContentForIconView:{viewCopy, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (unint64_t)supportedMultitaskingShortcutActionsForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate contextMenuManager:self supportedMultitaskingShortcutActionsForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldPreviewOverlapMenuForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate contextMenuManager:self shouldPreviewOverlapMenuForIconView:viewCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)orderedActionContextMenuProvidersForIconView:(id)view
{
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  delegate = [(SBHIconViewContextMenuManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate contextMenuManager:self orderedActionContextMenuProvidersForIconView:viewCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = delegate;
    v22 = viewCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    contextMenuActionProviders = [(SBHIconViewContextMenuManager *)self contextMenuActionProviders];
    v12 = [contextMenuActionProviders countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(contextMenuActionProviders);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          contextMenuActionSectionType = [v16 contextMenuActionSectionType];
          if (contextMenuActionSectionType == 1)
          {
            v18 = v8;
          }

          else
          {
            v18 = v10;
          }

          if (contextMenuActionSectionType == 2)
          {
            v18 = v9;
          }

          if (contextMenuActionSectionType == 3)
          {
            v19 = v7;
          }

          else
          {
            v19 = v18;
          }

          [v19 addObject:v16];
        }

        v13 = [contextMenuActionProviders countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [v6 addObjectsFromArray:v7];
    [v6 addObjectsFromArray:v8];
    [v6 addObjectsFromArray:v9];
    [v6 addObjectsFromArray:v10];

    delegate = v21;
    viewCopy = v22;
  }

  return v6;
}

- (id)effectivePreviewViewControllerForIconView:(id)view atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_contextMenuPreviewProviders;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) previewContentForIconView:viewCopy atLocation:{x, y, v16}];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)effectiveContextMenuPreviewProviderForIconView:(id)view atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_contextMenuPreviewProviders;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 previewContentForIconView:viewCopy atLocation:{x, y, v15}];

        if (v13)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (BOOL)shouldAllowContextMenuInteractionForIconView:(id)view atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([objc_opt_class() supportsPreviewInteraction] && objc_msgSend(viewCopy, "allowsContextMenus"))
  {
    customIconImageViewController = [viewCopy customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController willShowContextMenuAtLocation:{x, y}];
    }

    contextMenuDelegate = [viewCopy contextMenuDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![contextMenuDelegate iconViewShouldBeginContextMenuPresentation:viewCopy])
    {
      v10 = 0;
    }

    else
    {
      if ([viewCopy isShowingContextMenu])
      {
        v9 = SBLogIconContextMenu();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "[SBHIconViewContextMenuManager shouldAllowContextMenuInteractionForIconView:atLocation:]";
          v14 = 1024;
          v15 = 389;
          _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d Warning; there is already a context menu interaction in flight!!!", &v12, 0x12u);
        }
      }

      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_contextMenuInteraction:(id)interaction previewForIconWithConfigurationOptions:(unint64_t)options highlighted:(BOOL)highlighted forIconView:(id)view
{
  highlightedCopy = highlighted;
  v49 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  view = [interaction view];

  if (view != viewCopy)
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHIconViewContextMenuManager *)v10 _contextMenuInteraction:v11 previewForIconWithConfigurationOptions:v12 highlighted:v13 forIconView:v14, v15, v16, v17];
    }

LABEL_4:
    v18 = 0;
    goto LABEL_19;
  }

  window = [viewCopy window];

  if (!window)
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHIconViewContextMenuManager *)v10 _contextMenuInteraction:v33 previewForIconWithConfigurationOptions:v34 highlighted:v35 forIconView:v36, v37, v38, v39];
    }

    goto LABEL_4;
  }

  [viewCopy setHighlighted:highlightedCopy];
  v10 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v10 setBackgroundColor:clearColor];

  [viewCopy iconImageCenter];
  v22 = v21;
  v24 = v23;
  v25 = viewCopy;
  imageContainerView = [v25 imageContainerView];
  v27 = SBLogIcon();
  v28 = v27;
  if (imageContainerView == v25)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(SBHIconViewContextMenuManager *)v28 _contextMenuInteraction:v40 previewForIconWithConfigurationOptions:v41 highlighted:v42 forIconView:v43, v44, v45, v46];
    }

    v18 = 0;
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      icon = [v25 icon];
      LODWORD(v48[0]) = 138412802;
      *(v48 + 4) = icon;
      WORD6(v48[0]) = 2112;
      *(v48 + 14) = imageContainerView;
      WORD3(v48[1]) = 2112;
      *(&v48[1] + 1) = v25;
      _os_log_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_DEFAULT, "Configuring preview for icon '%@' w/ currentImageView '%@' contentContainerView '%@'", v48, 0x20u);
    }

    v30 = objc_alloc(MEMORY[0x1E69DCE38]);
    contentContainerView = [v25 contentContainerView];
    v32 = contentContainerView;
    if (contentContainerView)
    {
      [contentContainerView transform];
    }

    else
    {
      memset(v48, 0, sizeof(v48));
    }

    v28 = [v30 initWithContainer:v25 center:v48 transform:{v22, v24}];

    v18 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:imageContainerView parameters:v10 target:v28];
    [v18 set_springboardPlatterStyle:1];
  }

LABEL_19:

  return v18;
}

- (id)allOpenApplicationWindowsContextMenuProviders
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contextMenuActionProviders = [(SBHIconViewContextMenuManager *)self contextMenuActionProviders];
  v5 = [contextMenuActionProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contextMenuActionProviders);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 contextMenuActionSectionType] == 1)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [contextMenuActionProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allRecentDocumentsContextMenuProviders
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contextMenuActionProviders = [(SBHIconViewContextMenuManager *)self contextMenuActionProviders];
  v5 = [contextMenuActionProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contextMenuActionProviders);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 contextMenuActionSectionType] == 2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [contextMenuActionProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end