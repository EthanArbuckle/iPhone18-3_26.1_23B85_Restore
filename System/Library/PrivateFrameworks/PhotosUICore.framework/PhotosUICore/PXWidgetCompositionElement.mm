@interface PXWidgetCompositionElement
+ (id)elementWithWidget:(id)widget scrollViewController:(id)controller;
- (BOOL)_isViewElementAndCheckingInTile;
- (BOOL)widget:(id)widget requestViewControllerDismissalAnimated:(BOOL)animated;
- (BOOL)widget:(id)widget transitionToViewController:(id)controller withTransitionType:(int64_t)type;
- (CGSize)widgetContentSize;
- (PXScrollViewController)scrollViewController;
- (PXTilingController)contentTilingController;
- (PXTilingController)footerTilingController;
- (PXTilingController)headerTilingController;
- (PXWidgetCompositionElement)init;
- (PXWidgetCompositionElement)initWithWidget:(id)widget scrollViewController:(id)controller;
- (PXWidgetCompositionElementDelegate)delegate;
- (id)extendedTraitCollection;
- (id)presentationEnvironmentForWidget:(id)widget;
- (id)widgetUndoManager:(id)manager;
- (id)widgetViewControllerHostingWidget:(id)widget;
- (id)widgetViewHostingGestureRecognizers:(id)recognizers;
- (int64_t)widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:(id)change;
- (void)_notifyWidgetUsingBlock:(id)block;
- (void)_performChanges:(id)changes withAnimationOptions:(id)options;
- (void)_performContentChangeWhenSafe:(id)safe;
- (void)_updateFooter;
- (void)_updateHeader;
- (void)prepare;
- (void)registerObserver:(id)observer;
- (void)setDelegate:(id)delegate;
- (void)setShouldLoadWidgetContent:(BOOL)content;
- (void)setSpec:(id)spec;
- (void)setWidgetContentSize:(CGSize)size;
- (void)unregisterObserver:(id)observer;
- (void)widget:(id)widget animateChanges:(id)changes withAnimationOptions:(id)options;
- (void)widgetBarDidSelectDisclosureAffordance:(id)affordance;
- (void)widgetBarDidSelectSubtitle:(id)subtitle;
- (void)widgetHasLoadedContentDataDidChange:(id)change;
- (void)widgetLocalizedDisclosureTitleDidChange:(id)change;
- (void)widgetRequestFocus:(id)focus;
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

- (void)widgetBarDidSelectDisclosureAffordance:(id)affordance
{
  widget = [(PXWidgetCompositionElement *)self widget];
  [(PXWidgetCompositionElement *)self widgetRequestFocus:widget];
  if (objc_opt_respondsToSelector())
  {
    [widget userDidSelectDisclosureControl];
  }
}

- (void)widgetBarDidSelectSubtitle:(id)subtitle
{
  widget = [(PXWidgetCompositionElement *)self widget];
  [(PXWidgetCompositionElement *)self widgetRequestFocus:widget];
  if (objc_opt_respondsToSelector())
  {
    [widget userDidSelectSubtitle];
  }
}

- (id)widgetUndoManager:(id)manager
{
  delegate = [(PXWidgetCompositionElement *)self delegate];
  v5 = [delegate elementUndoManager:self];

  return v5;
}

- (id)presentationEnvironmentForWidget:(id)widget
{
  if (self->_delegateFlags.respondsToPresentationEnvironment)
  {
    delegate = [(PXWidgetCompositionElement *)self delegate];
    v5 = [delegate presentationEnvironmentForElement:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)widget:(id)widget requestViewControllerDismissalAnimated:(BOOL)animated
{
  if (!self->_delegateFlags.respondsToRequestViewControllerDismissalAnimated)
  {
    return 0;
  }

  animatedCopy = animated;
  delegate = [(PXWidgetCompositionElement *)self delegate];
  LOBYTE(animatedCopy) = [delegate element:self requestViewControllerDismissalAnimated:animatedCopy];

  return animatedCopy;
}

- (BOOL)widget:(id)widget transitionToViewController:(id)controller withTransitionType:(int64_t)type
{
  if (!self->_delegateFlags.respondsToTransitionToViewControllerPreferredTransitionType)
  {
    return 0;
  }

  controllerCopy = controller;
  delegate = [(PXWidgetCompositionElement *)self delegate];
  LOBYTE(type) = [delegate element:self transitionToViewController:controllerCopy withTransitionType:type];

  return type;
}

- (int64_t)widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:(id)change
{
  changeCopy = change;
  spec = [(PXWidgetCompositionElement *)self spec];
  disclosureLocation = [spec disclosureLocation];

  if (disclosureLocation != 1 && disclosureLocation != 2)
  {
    if (!disclosureLocation)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:396 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    disclosureLocation = 0;
  }

  return disclosureLocation;
}

- (void)widgetRequestFocus:(id)focus
{
  contentTilingController = [(PXWidgetCompositionElement *)self contentTilingController];
  [contentTilingController requestFocus];
}

- (void)widgetHasLoadedContentDataDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXWidgetCompositionElement_widgetHasLoadedContentDataDidChange___block_invoke;
  v6[3] = &unk_1E77379A0;
  v7 = changeCopy;
  v5 = changeCopy;
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

- (void)widgetLocalizedDisclosureTitleDidChange:(id)change
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

- (void)widget:(id)widget animateChanges:(id)changes withAnimationOptions:(id)options
{
  changesCopy = changes;
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[PXBasicTileAnimationOptions defaultAnimationOptions];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXWidgetCompositionElement_widget_animateChanges_withAnimationOptions___block_invoke;
  v11[3] = &unk_1E7737930;
  v12 = optionsCopy;
  v13 = changesCopy;
  v11[4] = self;
  v9 = optionsCopy;
  v10 = changesCopy;
  [(PXWidgetCompositionElement *)self _performContentChangeWhenSafe:v11];
}

- (id)widgetViewControllerHostingWidget:(id)widget
{
  delegate = [(PXWidgetCompositionElement *)self delegate];
  v5 = [delegate elementViewController:self];

  return v5;
}

- (id)widgetViewHostingGestureRecognizers:(id)recognizers
{
  scrollViewController = [(PXWidgetCompositionElement *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (BOOL)_isViewElementAndCheckingInTile
{
  _isClassOfViewElement = [(PXWidgetCompositionElement *)self _isClassOfViewElement];
  if (_isClassOfViewElement)
  {

    LOBYTE(_isClassOfViewElement) = [(PXWidgetCompositionElement *)self isCheckingInTile];
  }

  return _isClassOfViewElement;
}

- (void)_performChanges:(id)changes withAnimationOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  optionsCopy = options;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    v16 = changesCopy;
    animationOptionsOriginatingTilingController = [(PXWidgetCompositionElement *)self animationOptionsOriginatingTilingController];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    _observers = [(PXWidgetCompositionElement *)self _observers];
    v11 = [_observers countByEnumeratingWithState:&v17 objects:v23 count:16];
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
            objc_enumerationMutation(_observers);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 elementNeedsLayout:self preferredAnimationOptions:optionsCopy originatingTilingController:animationOptionsOriginatingTilingController];
          }
        }

        v12 = [_observers countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v12);
    }

    changesCopy = v16;
    goto LABEL_17;
  }

  if (optionsCopy)
  {
    animationOptionsOriginatingTilingController = PLUIGetLog();
    if (os_log_type_enabled(animationOptionsOriginatingTilingController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = optionsCopy;
      _os_log_impl(&dword_1A3C1C000, animationOptionsOriginatingTilingController, OS_LOG_TYPE_DEFAULT, "ignoring nested animation options %@", buf, 0xCu);
    }

LABEL_17:
  }
}

- (void)_updateFooter
{
  widget = [(PXWidgetCompositionElement *)self widget];
  spec = [(PXWidgetCompositionElement *)self spec];
  if ([spec disclosureLocation] != 2)
  {

    goto LABEL_5;
  }

  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    localizedDisclosureTitle = 0;
    goto LABEL_6;
  }

  localizedDisclosureTitle = [widget localizedDisclosureTitle];
LABEL_6:
  spec2 = [(PXWidgetCompositionElement *)self spec];
  footerSpec = [spec2 footerSpec];

  _footer = [(PXWidgetCompositionElement *)self _footer];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__PXWidgetCompositionElement__updateFooter__block_invoke;
  v13[3] = &unk_1E774A1B8;
  v14 = _footer;
  v15 = localizedDisclosureTitle;
  v16 = footerSpec;
  v10 = footerSpec;
  v11 = localizedDisclosureTitle;
  v12 = _footer;
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
  widget = [(PXWidgetCompositionElement *)self widget];
  if (objc_opt_respondsToSelector())
  {
    localizedTitle = [widget localizedTitle];
  }

  else
  {
    localizedTitle = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    localizedSubtitle = [widget localizedSubtitle];
  }

  else
  {
    localizedSubtitle = 0;
  }

  spec = [(PXWidgetCompositionElement *)self spec];
  if ([spec disclosureLocation] == 1)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      localizedDisclosureTitle = [widget localizedDisclosureTitle];
      goto LABEL_12;
    }
  }

  else
  {
  }

  localizedDisclosureTitle = 0;
LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    allowUserInteractionWithSubtitle = [widget allowUserInteractionWithSubtitle];
  }

  else
  {
    allowUserInteractionWithSubtitle = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    contentLayoutStyle = [widget contentLayoutStyle];
  }

  else
  {
    contentLayoutStyle = 0;
  }

  spec2 = [(PXWidgetCompositionElement *)self spec];
  v12 = [spec2 headerSpecForWidgetContentLayoutStyle:contentLayoutStyle];

  _header = [(PXWidgetCompositionElement *)self _header];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __43__PXWidgetCompositionElement__updateHeader__block_invoke;
  v19[3] = &unk_1E7737908;
  v20 = _header;
  v21 = localizedTitle;
  v22 = localizedSubtitle;
  v23 = localizedDisclosureTitle;
  v24 = v12;
  v25 = allowUserInteractionWithSubtitle;
  v14 = v12;
  v15 = localizedDisclosureTitle;
  v16 = localizedSubtitle;
  v17 = localizedTitle;
  v18 = _header;
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

- (void)_performContentChangeWhenSafe:(id)safe
{
  safeCopy = safe;
  if ([(PXWidgetCompositionElement *)self _isNotifyingWidget]|| [(PXWidgetCompositionElement *)self _isViewElementAndCheckingInTile])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PXWidgetCompositionElement__performContentChangeWhenSafe___block_invoke;
    block[3] = &unk_1E774AA30;
    objc_copyWeak(&v7, &location);
    v6 = safeCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(safeCopy + 2))(safeCopy, self);
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

- (void)_notifyWidgetUsingBlock:(id)block
{
  blockCopy = block;
  _isNotifyingWidget = [(PXWidgetCompositionElement *)self _isNotifyingWidget];
  [(PXWidgetCompositionElement *)self _setNotifyingWidget:1];
  blockCopy[2](blockCopy);

  [(PXWidgetCompositionElement *)self _setNotifyingWidget:_isNotifyingWidget];
}

- (void)setShouldLoadWidgetContent:(BOOL)content
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_shouldLoadWidgetContent != content)
  {
    contentCopy = content;
    self->_shouldLoadWidgetContent = content;
    widget = [(PXWidgetCompositionElement *)self widget];
    v6 = PLRelatedGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v13 = 1024;
      v14 = contentCopy;
      v15 = 2112;
      v16 = widget;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] set should load content=%i for widget=%@ ", buf, 0x1Cu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXWidgetCompositionElement_setShouldLoadWidgetContent___block_invoke;
    v8[3] = &unk_1E7749428;
    v10 = contentCopy;
    v9 = widget;
    v7 = widget;
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

- (void)setWidgetContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  if (size.width != self->_widgetContentSize.width || size.height != self->_widgetContentSize.height)
  {
    self->_widgetContentSize = size;
    widget = [(PXWidgetCompositionElement *)self widget];
    v8 = PLRelatedGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22.width = width;
      v22.height = height;
      v9 = NSStringFromCGSize(v22);
      *buf = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = widget;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "[%@] set content size for widget=%@ size=%@", buf, 0x20u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__PXWidgetCompositionElement_setWidgetContentSize___block_invoke;
    v11[3] = &unk_1E7745A10;
    v12 = widget;
    v13 = width;
    v14 = height;
    v10 = widget;
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
  _footer = [(PXWidgetCompositionElement *)self _footer];
  tilingController = [_footer tilingController];

  return tilingController;
}

- (PXTilingController)headerTilingController
{
  _header = [(PXWidgetCompositionElement *)self _header];
  tilingController = [_header tilingController];

  return tilingController;
}

- (PXTilingController)contentTilingController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:129 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PXWidgetCompositionElement *)self _observers];
  [_observers removeObject:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PXWidgetCompositionElement *)self _observers];
  [_observers addObject:observerCopy];
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXWidgetCompositionElement *)self _invalidateHeader];
    [(PXWidgetCompositionElement *)self _invalidateFooter];
    specCopy = v6;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (PXWidgetCompositionElement)initWithWidget:(id)widget scrollViewController:(id)controller
{
  widgetCopy = widget;
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = PXWidgetCompositionElement;
  v9 = [(PXWidgetCompositionElement *)&v28 init];
  if (v9)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v9->__observers;
    v9->__observers = weakObjectsHashTable;

    objc_storeStrong(&v9->_widget, widget);
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
      [widgetCopy setWidgetDelegate:v9];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9->__isClassOfViewElement = 1;
    }

    v9->_widgetContentSize = *off_1E7722230;
    objc_storeWeak(&v9->_scrollViewController, controllerCopy);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:56 description:@"invalid initializer"];

  return 0;
}

+ (id)elementWithWidget:(id)widget scrollViewController:(id)controller
{
  widgetCopy = widget;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v9 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionElement.m" lineNumber:49 description:@"widget must provide either contentView or contentTilingController"];

    v9 = 0;
  }

  v11 = [[v9 alloc] initWithWidget:widgetCopy scrollViewController:controllerCopy];

  return v11;
}

- (id)extendedTraitCollection
{
  delegate = [(PXWidgetCompositionElement *)self delegate];
  v4 = [delegate elementViewController:self];

  px_extendedTraitCollection = [v4 px_extendedTraitCollection];

  return px_extendedTraitCollection;
}

@end