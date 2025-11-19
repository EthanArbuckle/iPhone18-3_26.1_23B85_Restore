@interface PXWidgetCompositionElement
+ (id)elementWithWidget:(id)a3 scrollViewController:(id)a4;
- (BOOL)_isViewElementAndCheckingInTile;
- (BOOL)widget:(id)a3 requestViewControllerDismissalAnimated:(BOOL)a4;
- (BOOL)widget:(id)a3 transitionToViewController:(id)a4 withTransitionType:(int64_t)a5;
- (CGSize)widgetContentSize;
- (PXScrollViewController)scrollViewController;
- (PXTilingController)contentTilingController;
- (PXTilingController)footerTilingController;
- (PXTilingController)headerTilingController;
- (PXWidgetCompositionElement)init;
- (PXWidgetCompositionElement)initWithWidget:(id)a3 scrollViewController:(id)a4;
- (PXWidgetCompositionElementDelegate)delegate;
- (id)extendedTraitCollection;
- (id)presentationEnvironmentForWidget:(id)a3;
- (id)widgetUndoManager:(id)a3;
- (id)widgetViewControllerHostingWidget:(id)a3;
- (id)widgetViewHostingGestureRecognizers:(id)a3;
- (int64_t)widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:(id)a3;
- (void)_notifyWidgetUsingBlock:(id)a3;
- (void)_performChanges:(id)a3 withAnimationOptions:(id)a4;
- (void)_performContentChangeWhenSafe:(id)a3;
- (void)_updateFooter;
- (void)_updateHeader;
- (void)prepare;
- (void)registerObserver:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setShouldLoadWidgetContent:(BOOL)a3;
- (void)setSpec:(id)a3;
- (void)setWidgetContentSize:(CGSize)a3;
- (void)unregisterObserver:(id)a3;
- (void)widget:(id)a3 animateChanges:(id)a4 withAnimationOptions:(id)a5;
- (void)widgetBarDidSelectDisclosureAffordance:(id)a3;
- (void)widgetBarDidSelectSubtitle:(id)a3;
- (void)widgetHasLoadedContentDataDidChange:(id)a3;
- (void)widgetLocalizedDisclosureTitleDidChange:(id)a3;
- (void)widgetRequestFocus:(id)a3;
@end

@implementation PXWidgetCompositionElement

- (CGSize)widgetContentSize
{
  width = self->_widgetContentSize.width;
  height = self->_widgetContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXWidgetCompositionElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXScrollViewController)scrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);

  return WeakRetained;
}

- (void)widgetBarDidSelectDisclosureAffordance:(id)a3
{
  v4 = [(PXWidgetCompositionElement *)self widget];
  [(PXWidgetCompositionElement *)self widgetRequestFocus:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 userDidSelectDisclosureControl];
  }
}

- (void)widgetBarDidSelectSubtitle:(id)a3
{
  v4 = [(PXWidgetCompositionElement *)self widget];
  [(PXWidgetCompositionElement *)self widgetRequestFocus:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 userDidSelectSubtitle];
  }
}

- (id)widgetUndoManager:(id)a3
{
  v4 = [(PXWidgetCompositionElement *)self delegate];
  v5 = [v4 elementUndoManager:self];

  return v5;
}

- (id)presentationEnvironmentForWidget:(id)a3
{
  if (self->_delegateFlags.respondsToPresentationEnvironment)
  {
    v4 = [(PXWidgetCompositionElement *)self delegate];
    v5 = [v4 presentationEnvironmentForElement:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)widget:(id)a3 requestViewControllerDismissalAnimated:(BOOL)a4
{
  if (!self->_delegateFlags.respondsToRequestViewControllerDismissalAnimated)
  {
    return 0;
  }

  v4 = a4;
  v6 = [(PXWidgetCompositionElement *)self delegate];
  LOBYTE(v4) = [v6 element:self requestViewControllerDismissalAnimated:v4];

  return v4;
}

- (BOOL)widget:(id)a3 transitionToViewController:(id)a4 withTransitionType:(int64_t)a5
{
  if (!self->_delegateFlags.respondsToTransitionToViewControllerPreferredTransitionType)
  {
    return 0;
  }

  v7 = a4;
  v8 = [(PXWidgetCompositionElement *)self delegate];
  LOBYTE(a5) = [v8 element:self transitionToViewController:v7 withTransitionType:a5];

  return a5;
}

- (int64_t)widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:(id)a3
{
  v5 = a3;
  v6 = [(PXWidgetCompositionElement *)self spec];
  v7 = [v6 disclosureLocation];

  if (v7 != 1 && v7 != 2)
  {
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:396 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = 0;
  }

  return v7;
}

- (void)widgetRequestFocus:(id)a3
{
  v3 = [(PXWidgetCompositionElement *)self contentTilingController];
  [v3 requestFocus];
}

- (void)widgetHasLoadedContentDataDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXWidgetCompositionElement_widgetHasLoadedContentDataDidChange___block_invoke;
  v6[3] = &unk_1E77379A0;
  v7 = v4;
  v5 = v4;
  [(PXWidgetCompositionElement *)self _performContentChangeWhenSafe:v6];
}

void __66__PXWidgetCompositionElement_widgetHasLoadedContentDataDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PXWidgetCompositionElement_widgetHasLoadedContentDataDidChange___block_invoke_2;
  v5[3] = &unk_1E774C620;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  [v4 _performChanges:v5 withAnimationOptions:0];
}

void __66__PXWidgetCompositionElement_widgetHasLoadedContentDataDidChange___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) hasLoadedContentData])
  {
    kdebug_trace();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 40) _observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 elementHasLoadedContentDataDidChange:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __76__PXWidgetCompositionElement_widgetPreferredContentHeightForWidthDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__PXWidgetCompositionElement_widgetPreferredContentHeightForWidthDidChange___block_invoke_2;
  v4[3] = &unk_1E774C648;
  v5 = v2;
  v3 = v2;
  [v3 _performChanges:v4 withAnimationOptions:0];
}

void __76__PXWidgetCompositionElement_widgetPreferredContentHeightForWidthDidChange___block_invoke_2(uint64_t a1)
{
  v4 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v4 invalidateVisibleRect];
  v2 = [*(a1 + 32) contentTilingController];
  v3 = [v2 targetLayout];
  [v3 invalidateLayoutWithContext:v4];
}

- (void)widgetLocalizedDisclosureTitleDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PXWidgetCompositionElement_widgetLocalizedDisclosureTitleDidChange___block_invoke;
  v3[3] = &unk_1E7737978;
  v3[4] = self;
  v3[5] = a2;
  [(PXWidgetCompositionElement *)self _performContentChangeWhenSafe:v3];
}

void __70__PXWidgetCompositionElement_widgetLocalizedDisclosureTitleDidChange___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 spec];
  v4 = [v3 disclosureLocation];

  if (v4 == 1)
  {
    [v7 _invalidateHeader];
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    [v7 _invalidateFooter];
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  v5 = v7;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXWidgetCompositionElement.m" lineNumber:339 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_8:
}

- (void)widget:(id)a3 animateChanges:(id)a4 withAnimationOptions:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!v8)
  {
    v8 = +[PXBasicTileAnimationOptions defaultAnimationOptions];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXWidgetCompositionElement_widget_animateChanges_withAnimationOptions___block_invoke;
  v11[3] = &unk_1E7737930;
  v12 = v8;
  v13 = v7;
  v11[4] = self;
  v9 = v8;
  v10 = v7;
  [(PXWidgetCompositionElement *)self _performContentChangeWhenSafe:v11];
}

- (id)widgetViewControllerHostingWidget:(id)a3
{
  v4 = [(PXWidgetCompositionElement *)self delegate];
  v5 = [v4 elementViewController:self];

  return v5;
}

- (id)widgetViewHostingGestureRecognizers:(id)a3
{
  v3 = [(PXWidgetCompositionElement *)self scrollViewController];
  v4 = [v3 scrollView];

  return v4;
}

- (BOOL)_isViewElementAndCheckingInTile
{
  v3 = [(PXWidgetCompositionElement *)self _isClassOfViewElement];
  if (v3)
  {

    LOBYTE(v3) = [(PXWidgetCompositionElement *)self isCheckingInTile];
  }

  return v3;
}

- (void)_performChanges:(id)a3 withAnimationOptions:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  if (v6)
  {
    v6[2](v6);
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    v16 = v6;
    v9 = [(PXWidgetCompositionElement *)self animationOptionsOriginatingTilingController];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(PXWidgetCompositionElement *)self _observers];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 elementNeedsLayout:self preferredAnimationOptions:v7 originatingTilingController:v9];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v12);
    }

    v6 = v16;
    goto LABEL_17;
  }

  if (v7)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "ignoring nested animation options %@", buf, 0xCu);
    }

LABEL_17:
  }
}

- (void)_updateFooter
{
  v3 = [(PXWidgetCompositionElement *)self widget];
  v4 = [(PXWidgetCompositionElement *)self spec];
  if ([v4 disclosureLocation] != 2)
  {

    goto LABEL_5;
  }

  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = [v3 localizedDisclosureTitle];
LABEL_6:
  v7 = [(PXWidgetCompositionElement *)self spec];
  v8 = [v7 footerSpec];

  v9 = [(PXWidgetCompositionElement *)self _footer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__PXWidgetCompositionElement__updateFooter__block_invoke;
  v13[3] = &unk_1E774A1B8;
  v14 = v9;
  v15 = v6;
  v16 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v9;
  [v12 performChanges:v13];
}

uint64_t __43__PXWidgetCompositionElement__updateFooter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDisclosureTitle:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setSpec:v3];
}

- (void)_updateHeader
{
  v3 = [(PXWidgetCompositionElement *)self widget];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 localizedTitle];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 localizedSubtitle];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PXWidgetCompositionElement *)self spec];
  if ([v6 disclosureLocation] == 1)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v3 localizedDisclosureTitle];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    v9 = [v3 allowUserInteractionWithSubtitle];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v3 contentLayoutStyle];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PXWidgetCompositionElement *)self spec];
  v12 = [v11 headerSpecForWidgetContentLayoutStyle:v10];

  v13 = [(PXWidgetCompositionElement *)self _header];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__PXWidgetCompositionElement__updateHeader__block_invoke;
  v19[3] = &unk_1E7737908;
  v20 = v13;
  v21 = v4;
  v22 = v5;
  v23 = v8;
  v24 = v12;
  v25 = v9;
  v14 = v12;
  v15 = v8;
  v16 = v5;
  v17 = v4;
  v18 = v13;
  [v18 performChanges:v19];
}

uint64_t __43__PXWidgetCompositionElement__updateHeader__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40)];
  [*(a1 + 32) setSubtitle:*(a1 + 48)];
  [*(a1 + 32) setDisclosureTitle:*(a1 + 56)];
  [*(a1 + 32) setSpec:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 setAllowUserInteractionWithSubtitle:v3];
}

- (void)_performContentChangeWhenSafe:(id)a3
{
  v4 = a3;
  if ([(PXWidgetCompositionElement *)self _isNotifyingWidget]|| [(PXWidgetCompositionElement *)self _isViewElementAndCheckingInTile])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PXWidgetCompositionElement__performContentChangeWhenSafe___block_invoke;
    block[3] = &unk_1E774AA30;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4, self);
  }
}

void __60__PXWidgetCompositionElement__performContentChangeWhenSafe___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_notifyWidgetUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetCompositionElement *)self _isNotifyingWidget];
  [(PXWidgetCompositionElement *)self _setNotifyingWidget:1];
  v4[2](v4);

  [(PXWidgetCompositionElement *)self _setNotifyingWidget:v5];
}

- (void)setShouldLoadWidgetContent:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_shouldLoadWidgetContent != a3)
  {
    v3 = a3;
    self->_shouldLoadWidgetContent = a3;
    v5 = [(PXWidgetCompositionElement *)self widget];
    v6 = PLRelatedGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v12 = self;
      v13 = 1024;
      v14 = v3;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] set should load content=%i for widget=%@ ", buf, 0x1Cu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXWidgetCompositionElement_setShouldLoadWidgetContent___block_invoke;
    v8[3] = &unk_1E7749428;
    v10 = v3;
    v9 = v5;
    v7 = v5;
    [(PXWidgetCompositionElement *)self _notifyWidgetUsingBlock:v8];
  }
}

uint64_t __57__PXWidgetCompositionElement_setShouldLoadWidgetContent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [v4 length];
      if (v5 >= 1)
      {
        v6 = v5;
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = v7 + 1;
          v8 += (v7 + 1) * [v4 characterAtIndex:?];
          v7 = v9;
        }

        while (v6 != v9);
      }

      kdebug_trace();

      v11 = *(a1 + 32);

      return [v11 loadContentData];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v10 = *(a1 + 32);

      return [v10 unloadContentData];
    }
  }

  return result;
}

- (void)setWidgetContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  if (a3.width != self->_widgetContentSize.width || a3.height != self->_widgetContentSize.height)
  {
    self->_widgetContentSize = a3;
    v7 = [(PXWidgetCompositionElement *)self widget];
    v8 = PLRelatedGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22.width = width;
      v22.height = height;
      v9 = NSStringFromCGSize(v22);
      *buf = 138412802;
      v16 = self;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "[%@] set content size for widget=%@ size=%@", buf, 0x20u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__PXWidgetCompositionElement_setWidgetContentSize___block_invoke;
    v11[3] = &unk_1E7745A10;
    v12 = v7;
    v13 = width;
    v14 = height;
    v10 = v7;
    [(PXWidgetCompositionElement *)self _notifyWidgetUsingBlock:v11];
  }
}

uint64_t __51__PXWidgetCompositionElement_setWidgetContentSize___block_invoke(double *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 4);
    v4 = a1[5];
    v5 = a1[6];

    return [v3 setContentSize:{v4, v5}];
  }

  return result;
}

- (PXTilingController)footerTilingController
{
  v2 = [(PXWidgetCompositionElement *)self _footer];
  v3 = [v2 tilingController];

  return v3;
}

- (PXTilingController)headerTilingController
{
  v2 = [(PXWidgetCompositionElement *)self _header];
  v3 = [v2 tilingController];

  return v3;
}

- (PXTilingController)contentTilingController
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:129 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetCompositionElement *)self _observers];
  [v5 removeObject:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetCompositionElement *)self _observers];
  [v5 addObject:v4];
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXWidgetCompositionElement *)self _invalidateHeader];
    [(PXWidgetCompositionElement *)self _invalidateFooter];
    v5 = v6;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToTransitionToViewControllerPreferredTransitionType = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToRequestViewControllerDismissalAnimated = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPresentationEnvironment = objc_opt_respondsToSelector() & 1;
  }
}

- (void)prepare
{
  [(PXWidgetCompositionElement *)self _updateHeader];

  [(PXWidgetCompositionElement *)self _updateFooter];
}

- (PXWidgetCompositionElement)initWithWidget:(id)a3 scrollViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = PXWidgetCompositionElement;
  v9 = [(PXWidgetCompositionElement *)&v28 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v9->__observers;
    v9->__observers = v10;

    objc_storeStrong(&v9->_widget, a3);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v13 length];
      if (v14 >= 1)
      {
        v15 = v14;
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = v16 + 1;
          v17 += (v16 + 1) * [v13 characterAtIndex:?];
          v16 = v18;
        }

        while (v15 != v18);
      }

      kdebug_trace();
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 setWidgetDelegate:v9];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9->__isClassOfViewElement = 1;
    }

    v9->_widgetContentSize = *off_1E7722230;
    objc_storeWeak(&v9->_scrollViewController, v8);
    v19 = objc_alloc([objc_opt_class() headerBarClass]);
    WeakRetained = objc_loadWeakRetained(&v9->_scrollViewController);
    v21 = [v19 initWithScrollViewController:WeakRetained];
    header = v9->__header;
    v9->__header = v21;

    [(PXWidgetBar *)v9->__header setDelegate:v9];
    v23 = objc_alloc([objc_opt_class() footerBarClass]);
    v24 = objc_loadWeakRetained(&v9->_scrollViewController);
    v25 = [v23 initWithScrollViewController:v24];
    footer = v9->__footer;
    v9->__footer = v25;

    [(PXWidgetBar *)v9->__footer setDelegate:v9];
  }

  return v9;
}

- (PXWidgetCompositionElement)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:56 description:@"invalid initializer"];

  return 0;
}

+ (id)elementWithWidget:(id)a3 scrollViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v9 = objc_opt_class();
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXWidgetCompositionElement.m" lineNumber:49 description:@"widget must provide either contentView or contentTilingController"];

    v9 = 0;
  }

  v11 = [[v9 alloc] initWithWidget:v7 scrollViewController:v8];

  return v11;
}

- (id)extendedTraitCollection
{
  v3 = [(PXWidgetCompositionElement *)self delegate];
  v4 = [v3 elementViewController:self];

  v5 = [v4 px_extendedTraitCollection];

  return v5;
}

@end