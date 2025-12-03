@interface PXWidgetComposition
- (BOOL)_shouldFocusOnTilingController:(id)controller;
- (BOOL)_shouldUseEdgeToEdgeLayoutForWidget:(id)widget;
- (BOOL)element:(id)element requestViewControllerDismissalAnimated:(BOOL)animated;
- (BOOL)element:(id)element transitionToViewController:(id)controller withTransitionType:(int64_t)type;
- (CGPoint)_lastContentAdjustmentOffset;
- (CGRect)frameForWidget:(id)widget;
- (PXScrollViewController)scrollViewController;
- (PXWidgetComposition)init;
- (PXWidgetComposition)initWithScrollViewController:(id)controller;
- (PXWidgetCompositionDelegate)delegate;
- (id)elementUndoManager:(id)manager;
- (id)elementViewController:(id)controller;
- (id)headerTilingControllerForWidget:(id)widget;
- (id)presentationEnvironmentForElement:(id)element;
- (id)tilingControllers;
- (id)widgetAtLocation:(CGPoint)location;
- (int64_t)_loadingPriorityForElement:(id)element;
- (void)_setDidLayoutWidgets:(BOOL)widgets;
- (void)_setElements:(id)elements;
- (void)_setNeedsUpdateWidgetLoading;
- (void)_updateElements;
- (void)_updateElementsSpec;
- (void)_updateElementsToLoadIfNeeded;
- (void)_updateFocusedTilingController;
- (void)elementHasLoadedContentDataDidChange:(id)change;
- (void)elementNeedsLayout:(id)layout preferredAnimationOptions:(id)options originatingTilingController:(id)controller;
- (void)invalidatePreferredContentHeightForAllWidgets;
- (void)performWidgetLoadingChange:(id)change;
- (void)setDelegate:(id)delegate;
- (void)setMinimumWidgetLoadingPriority:(int64_t)priority;
- (void)setShouldLoadAllWidgets:(BOOL)widgets;
- (void)setShouldLoadVisibleWidgets:(BOOL)widgets;
- (void)setShouldUnloadAllWidgets:(BOOL)widgets;
- (void)setSpec:(id)spec;
- (void)setWidgets:(id)widgets;
- (void)updateComposition;
@end

@implementation PXWidgetComposition

- (CGPoint)_lastContentAdjustmentOffset
{
  x = self->__lastContentAdjustmentOffset.x;
  y = self->__lastContentAdjustmentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXWidgetCompositionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXScrollViewController)scrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);

  return WeakRetained;
}

- (id)elementUndoManager:(id)manager
{
  managerCopy = manager;
  delegate = [(PXWidgetComposition *)self delegate];
  widget = [managerCopy widget];

  v7 = [delegate widgetComposition:self undoManagerForWidget:widget];

  return v7;
}

- (id)presentationEnvironmentForElement:(id)element
{
  if (self->_delegateFlags.respondsToPresentationEnvironment)
  {
    delegate = [(PXWidgetComposition *)self delegate];
    v5 = [delegate presentationEnvironmentForWidgetComposition:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)element:(id)element requestViewControllerDismissalAnimated:(BOOL)animated
{
  if (!self->_delegateFlags.respondsToRequestViewControllerDismissalAnimated)
  {
    return 0;
  }

  animatedCopy = animated;
  delegate = [(PXWidgetComposition *)self delegate];
  LOBYTE(animatedCopy) = [delegate widgetComposition:self requestViewControllerDismissalAnimated:animatedCopy];

  return animatedCopy;
}

- (BOOL)element:(id)element transitionToViewController:(id)controller withTransitionType:(int64_t)type
{
  if (!self->_delegateFlags.respondsToWidgetTransitionToViewControllerWithTransitionType)
  {
    return 0;
  }

  controllerCopy = controller;
  elementCopy = element;
  delegate = [(PXWidgetComposition *)self delegate];
  widget = [elementCopy widget];

  LOBYTE(type) = [delegate widgetComposition:self widget:widget transitionToViewController:controllerCopy withTransitionType:type];
  return type;
}

- (id)elementViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(PXWidgetComposition *)self delegate];
  widget = [controllerCopy widget];

  v7 = [delegate widgetComposition:self viewControllerHostingWidget:widget];

  return v7;
}

- (void)elementHasLoadedContentDataDidChange:(id)change
{
  changeCopy = change;
  delegate = [(PXWidgetComposition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    widget = [changeCopy widget];
    [delegate widgetComposition:self widgetHasLoadedContentDataDidChange:widget];
  }
}

- (void)elementNeedsLayout:(id)layout preferredAnimationOptions:(id)options originatingTilingController:(id)controller
{
  controllerCopy = controller;
  optionsCopy = options;
  v9 = objc_alloc_init(PXTilingControllerCompositionInvalidationContext);
  [(PXTilingControllerCompositionInvalidationContext *)v9 setAnimationOptions:optionsCopy];

  [(PXTilingControllerCompositionInvalidationContext *)v9 setOriginatingTilingController:controllerCopy];
  [(PXTilingControllerComposition *)self invalidateCompositionWithContext:v9];
}

- (void)invalidatePreferredContentHeightForAllWidgets
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _elements = [(PXWidgetComposition *)self _elements];
  v3 = [_elements countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_elements);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        widget = [v7 widget];
        [v7 widgetPreferredContentHeightForWidthDidChange:widget];
      }

      v4 = [_elements countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)headerTilingControllerForWidget:(id)widget
{
  v18 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _elements = [(PXWidgetComposition *)self _elements];
  headerTilingController = [_elements countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (headerTilingController)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != headerTilingController; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(_elements);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        widget = [v9 widget];
        v11 = [widget isEqual:widgetCopy];

        if (v11)
        {
          headerTilingController = [v9 headerTilingController];
          goto LABEL_11;
        }
      }

      headerTilingController = [_elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (headerTilingController)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return headerTilingController;
}

- (CGRect)frameForWidget:(id)widget
{
  v51 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  _elements = [(PXWidgetComposition *)self _elements];
  v10 = [_elements countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(_elements);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        widget = [v14 widget];

        if (widget == widgetCopy)
        {
          contentTilingController = [v14 contentTilingController];
          v17 = __38__PXWidgetComposition_frameForWidget___block_invoke(contentTilingController);
          v44 = v18;
          v45 = v17;
          v42 = v20;
          v43 = v19;

          headerTilingController = [v14 headerTilingController];
          v22 = __38__PXWidgetComposition_frameForWidget___block_invoke(headerTilingController);
          v40 = v23;
          v41 = v22;
          v38 = v25;
          v39 = v24;

          footerTilingController = [v14 footerTilingController];
          v27 = __38__PXWidgetComposition_frameForWidget___block_invoke(footerTilingController);
          v29 = v28;
          v31 = v30;
          v33 = v32;

          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          v57.origin.y = v44;
          v57.origin.x = v45;
          v57.size.height = v42;
          v57.size.width = v43;
          v53 = CGRectUnion(v52, v57);
          v58.origin.y = v40;
          v58.origin.x = v41;
          v58.size.height = v38;
          v58.size.width = v39;
          v54 = CGRectUnion(v53, v58);
          v59.origin.x = v27;
          v59.origin.y = v29;
          v59.size.width = v31;
          v59.size.height = v33;
          v55 = CGRectUnion(v54, v59);
          x = v55.origin.x;
          y = v55.origin.y;
          width = v55.size.width;
          height = v55.size.height;
          goto LABEL_11;
        }
      }

      v11 = [_elements countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

double __38__PXWidgetComposition_frameForWidget___block_invoke(void *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F050];
  }

  v1 = a1;
  v2 = [v1 currentLayout];
  [v2 contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[PXTilingCoordinateSpaceConverter defaultConverter];
  v12 = [v2 coordinateSpaceIdentifier];
  v13 = [v1 contentCoordinateSpaceIdentifier];

  [v11 convertRect:v12 fromCoordinateSpaceIdentifier:v13 toCoordinateSpaceIdentifier:{v4, v6, v8, v10}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v23.origin.x = v15;
  v23.origin.y = v17;
  v23.size.width = v19;
  v23.size.height = v21;
  if (CGRectIsEmpty(v23))
  {
    v15 = *MEMORY[0x1E695F050];
  }

  return v15;
}

- (id)widgetAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v24 = *MEMORY[0x1E69E9840];
  v6 = +[PXTilingCoordinateSpaceConverter defaultConverter];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _elements = [(PXWidgetComposition *)self _elements];
  widget = [_elements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (widget)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != widget; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(_elements);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        contentTilingController = [v11 contentTilingController];
        targetLayout = [contentTilingController targetLayout];
        [targetLayout contentBounds];
        [v6 convertRect:objc_msgSend(targetLayout fromCoordinateSpaceIdentifier:"coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(contentTilingController, "contentCoordinateSpaceIdentifier"), v14, v15, v16, v17}];
        v26.x = x;
        v26.y = y;
        if (CGRectContainsPoint(v27, v26))
        {
          widget = [v11 widget];

          goto LABEL_11;
        }
      }

      widget = [_elements countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (widget)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return widget;
}

- (void)_updateElementsToLoadIfNeeded
{
  v60 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.elementsToLoad)
  {
    self->_needsUpdateFlags.elementsToLoad = 0;
    shouldLoadAllWidgets = [(PXWidgetComposition *)self shouldLoadAllWidgets];
    shouldLoadVisibleWidgets = [(PXWidgetComposition *)self shouldLoadVisibleWidgets];
    shouldUnloadAllWidgets = [(PXWidgetComposition *)self shouldUnloadAllWidgets];
    scrollViewController = [(PXWidgetComposition *)self scrollViewController];
    [scrollViewController visibleRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    _didLayoutWidgets = [(PXWidgetComposition *)self _didLayoutWidgets];
    v40 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    minimumWidgetLoadingPriority = [(PXWidgetComposition *)self minimumWidgetLoadingPriority];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(PXWidgetComposition *)self _elements];
    v16 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v16)
    {
      v18 = v16;
      v42 = shouldLoadVisibleWidgets && _didLayoutWidgets;
      v19 = *v51;
      *&v17 = 134218240;
      v39 = v17;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v43 = *v51;
      v41 = shouldLoadAllWidgets;
      do
      {
        v21 = 0;
        v22 = minimumWidgetLoadingPriority;
        do
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v50 + 1) + 8 * v21);
          if (shouldUnloadAllWidgets)
          {
            goto LABEL_32;
          }

          if (shouldLoadAllWidgets || v42 && ([*(*(&v50 + 1) + 8 * v21) contentTilingController], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "targetLayout"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "contentBounds"), objc_msgSend(v40, "convertRect:fromCoordinateSpaceIdentifier:toCoordinateSpaceIdentifier:", objc_msgSend(v32, "coordinateSpaceIdentifier"), objc_msgSend(v31, "contentCoordinateSpaceIdentifier"), v33, v34, v35, v36), v62.origin.x = v8, v62.origin.y = v10, v62.size.width = v12, v62.size.height = v14, v37 = CGRectIntersectsRect(v61, v62), v32, v19 = v43, v31, v22 = minimumWidgetLoadingPriority, v37))
          {
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = v22;
              if (v22 >= 1)
              {
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                _elements = [(PXWidgetComposition *)self _elements];
                v25 = [_elements countByEnumeratingWithState:&v46 objects:v58 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = 0;
                  v28 = *v47;
                  do
                  {
                    for (i = 0; i != v26; ++i)
                    {
                      if (*v47 != v28)
                      {
                        objc_enumerationMutation(_elements);
                      }

                      v30 = [(PXWidgetComposition *)self _loadingPriorityForElement:*(*(&v46 + 1) + 8 * i), v39];
                      if (v27 <= v30)
                      {
                        v27 = v30;
                      }
                    }

                    v26 = [_elements countByEnumeratingWithState:&v46 objects:v58 count:16];
                  }

                  while (v26);
                }

                else
                {
                  v27 = 0;
                }

                v38 = PLRelatedGetLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v39;
                  selfCopy = self;
                  v56 = 1024;
                  v57 = v27;
                  _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_DEBUG, "[PXWidgetComposition: %p] maximumAvailablePriority=%i", buf, 0x12u);
                }

                v19 = v43;
                v22 = minimumWidgetLoadingPriority;
                if (minimumWidgetLoadingPriority >= v27)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = minimumWidgetLoadingPriority;
                }

                shouldLoadAllWidgets = v41;
              }
            }

            if ([(PXWidgetComposition *)self _loadingPriorityForElement:v23, v39]>= v20)
            {
LABEL_32:
              [v23 setShouldLoadWidgetContent:{!shouldUnloadAllWidgets, v39}];
            }
          }

          ++v21;
        }

        while (v21 != v18);
        v18 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v18);
    }
  }
}

- (void)_setNeedsUpdateWidgetLoading
{
  if (!self->_isPerformingWidgetLoadingChange)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:592 description:@"not inside performWidgetLoadingChange:"];
  }
}

- (void)performWidgetLoadingChange:(id)change
{
  changeCopy = change;
  isPerformingWidgetLoadingChange = self->_isPerformingWidgetLoadingChange;
  self->_isPerformingWidgetLoadingChange = 1;
  v6 = changeCopy;
  if (changeCopy)
  {
    changeCopy[2](changeCopy);
    changeCopy = v6;
  }

  self->_isPerformingWidgetLoadingChange = isPerformingWidgetLoadingChange;
  if (!isPerformingWidgetLoadingChange)
  {
    [(PXWidgetComposition *)self _updateWidgetLoadingIfNeeded];
    changeCopy = v6;
  }
}

- (void)_setDidLayoutWidgets:(BOOL)widgets
{
  if (self->__didLayoutWidgets != widgets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXWidgetComposition__setDidLayoutWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    widgetsCopy = widgets;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setShouldUnloadAllWidgets:(BOOL)widgets
{
  if (self->_shouldUnloadAllWidgets != widgets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PXWidgetComposition_setShouldUnloadAllWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    widgetsCopy = widgets;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setShouldLoadAllWidgets:(BOOL)widgets
{
  if (self->_shouldLoadAllWidgets != widgets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PXWidgetComposition_setShouldLoadAllWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    widgetsCopy = widgets;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setShouldLoadVisibleWidgets:(BOOL)widgets
{
  if (self->_shouldLoadVisibleWidgets != widgets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PXWidgetComposition_setShouldLoadVisibleWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    widgetsCopy = widgets;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setMinimumWidgetLoadingPriority:(int64_t)priority
{
  if (self->_minimumWidgetLoadingPriority != priority)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PXWidgetComposition_setMinimumWidgetLoadingPriority___block_invoke;
    v5[3] = &unk_1E77498A0;
    v5[4] = self;
    v5[5] = priority;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (int64_t)_loadingPriorityForElement:(id)element
{
  if (!self->_delegateFlags.respondsToLoadingPriorityForWidget)
  {
    return 0;
  }

  elementCopy = element;
  delegate = [(PXWidgetComposition *)self delegate];
  widget = [elementCopy widget];

  v7 = [delegate widgetComposition:self loadingPriorityForWidget:widget];
  return v7;
}

- (BOOL)_shouldUseEdgeToEdgeLayoutForWidget:(id)widget
{
  if (!self->_delegateFlags.respondsToShouldUseEdgeToEdgeLayoutForWidget)
  {
    return 0;
  }

  selfCopy = self;
  widgetCopy = widget;
  delegate = [(PXWidgetComposition *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate widgetComposition:selfCopy shouldUseEdgeToEdgeLayoutForWidget:widgetCopy];

  return selfCopy;
}

- (void)updateComposition
{
  v111 = *MEMORY[0x1E69E9840];
  spec = [(PXWidgetComposition *)self spec];
  if (!spec)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:237 description:@"missing spec"];
  }

  input = [(PXTilingControllerComposition *)self input];
  output = [(PXTilingControllerComposition *)self output];
  _elements = [(PXWidgetComposition *)self _elements];
  widgetSpec = [spec widgetSpec];
  maximumNumberOfColumns = [spec maximumNumberOfColumns];
  [input referenceSize];
  v6 = v5;
  [input contentInset];
  v8 = v7;
  v42 = v10;
  v43 = v9;
  v41 = v11;
  widgetSpec2 = [spec widgetSpec];
  [widgetSpec2 interWidgetSpacing];
  v14 = v13;
  v16 = v15;

  orientation = [spec orientation];
  v105 = 0;
  v106 = &v105;
  v108 = &unk_1A561E057;
  v107 = 0x4010000000;
  v18 = *(MEMORY[0x1E695F058] + 16);
  v109 = *MEMORY[0x1E695F058];
  v110 = v18;
  *(&v109 + 1) = v8;
  if (!orientation)
  {
    *&v110 = v6;
  }

  v19 = objc_alloc_init(_PXWidgetCompositionElementScanner);
  [(_PXWidgetCompositionElementScanner *)v19 setElements:_elements];
  [(_PXWidgetCompositionElementScanner *)v19 setReferenceWidth:v6];
  [(_PXWidgetCompositionElementScanner *)v19 setInterColumnSpacing:v14];
  [(_PXWidgetCompositionElementScanner *)v19 setMaximumNumberOfColumns:maximumNumberOfColumns];
  -[_PXWidgetCompositionElementScanner setOrientation:](v19, "setOrientation:", [spec orientation]);
  objc_initWeak(&location, self);
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __40__PXWidgetComposition_updateComposition__block_invoke;
  v102[3] = &unk_1E77381D0;
  objc_copyWeak(&v103, &location);
  [(_PXWidgetCompositionElementScanner *)v19 setWantsEdgeToEdgeLayoutBlock:v102];
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 1;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0x7FF8000000000000;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v89 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v87[3] = 1;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  _focusedTilingController = [(PXWidgetComposition *)self _focusedTilingController];
  [_focusedTilingController invalidateLayoutPreferredVisibleOrigin];
  while (![(_PXWidgetCompositionElementScanner *)v19 isAtEnd])
  {
    v81 = 0;
    v82 = &v81;
    v83 = 0x3010000000;
    v84 = &unk_1A561E057;
    MinX = 0.0;
    v86 = 0;
    MinX = CGRectGetMinX(v106[1]);
    v82[5] = CGRectGetMaxY(v106[1]);
    if (!orientation && CGRectGetHeight(v106[1]) > 0.0)
    {
      v82[5] = v16 + v82[5];
    }

    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v80[3] = 0;
    v79 = 0;
    v20 = [(_PXWidgetCompositionElementScanner *)v19 scanRow:&v79];
    v21 = v79;
    if (v20)
    {
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v78 = 1;
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v74 = 0xFFEFFFFFFFFFFFFFLL;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __40__PXWidgetComposition_updateComposition__block_invoke_2;
      v47[3] = &unk_1E77381F8;
      v48 = output;
      v49 = widgetSpec;
      v53 = v80;
      v54 = &v81;
      v63 = v8;
      v64 = v43;
      v65 = v42;
      v66 = v41;
      v50 = input;
      v51 = strongToStrongObjectsMapTable;
      selfCopy = self;
      v55 = &v98;
      v56 = &v90;
      v57 = &v94;
      v58 = v88;
      v59 = v87;
      v60 = &v71;
      v70 = orientation == 0;
      v67 = v14;
      v68 = v16;
      v69 = v6;
      v61 = &v105;
      v62 = &v75;
      [v21 enumerateElementsUsingBlock:v47];
      if ((v76[3] & 1) == 0)
      {
        *(v99 + 24) = 0;
        MaxY = v72[3];
        if (MaxY == -1.79769313e308)
        {
          MaxY = CGRectGetMaxY(v106[1]);
          v72[3] = MaxY;
        }

        v95[3] = MaxY;
      }

      _Block_object_dispose(&v71, 8);
      _Block_object_dispose(&v75, 8);
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:436 description:@"couldn't scan all widgets"];
    }

    _Block_object_dispose(v80, 8);
    _Block_object_dispose(&v81, 8);
  }

  if (*(v91 + 24) == 1)
  {
    [widgetSpec distanceBetweenFooterBaselineAndBottom];
  }

  else
  {
    [widgetSpec distanceBetweenFooterlessWidgetContentBottomAndBottom];
    v26 = v25;
    [widgetSpec contentGuideInsets];
    v24 = v26 - v27;
  }

  v106[1].size.height = v24 + v106[1].size.height;
  [input tilingControllersRequestingFocus];
  v29 = selfCopy2 = self;
  if ([v29 count])
  {
    lastObject = [v29 lastObject];
    [(PXWidgetComposition *)self _setFocusedTilingController:lastObject];

    selfCopy2 = self;
  }

  _focusedTilingController2 = [(PXWidgetComposition *)selfCopy2 _focusedTilingController];

  if (_focusedTilingController2)
  {
    v32 = [strongToStrongObjectsMapTable objectForKey:_focusedTilingController2];
    if (v32)
    {
      v33 = _focusedTilingController2;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (v32)
    {
      v35 = [strongToStrongObjectsMapTable objectForKey:_focusedTilingController2];
      [v35 CGPointValue];

      [input originForTilingController:_focusedTilingController2];
      PXPointSubtract();
    }
  }

  PXPointIsNull();
}

uint64_t __40__PXWidgetComposition_updateComposition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 widget];

  v6 = [WeakRetained _shouldUseEdgeToEdgeLayoutForWidget:v5];
  return v6;
}

void __40__PXWidgetComposition_updateComposition__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v21 = a2;
  v9 = [v21 headerTilingController];
  v10 = *off_1E7721FA8;
  v11 = *(off_1E7721FA8 + 1);
  v12 = *(off_1E7721FA8 + 2);
  v13 = *(off_1E7721FA8 + 3);
  [*(a1 + 32) setReferenceSize:v9 contentInset:a4 forTilingController:{0.0, *off_1E7721FA8, v11, v12, v13}];
  v14 = [v21 contentTilingController];
  v15 = *(a1 + 32);
  [*(a1 + 40) contentGuideInsets];
  [v15 setReferenceSize:v14 contentInset:a4 forTilingController:{a5, v16, v17, v18, v19}];
  [v21 footerTilingController];
  [*(a1 + 32) setReferenceSize:objc_claimAutoreleasedReturnValue() contentInset:a4 forTilingController:{0.0, v10, v11, v12, v13}];
  v20 = [v21 widget];
  if (objc_opt_respondsToSelector())
  {
    [v20 contentLayoutStyle];
  }

  if (*(*(*(a1 + 72) + 8) + 24) != a3)
  {
    *(*(*(a1 + 80) + 8) + 40) = *(a1 + 152);
  }

  [*(a1 + 48) preferredOriginForTilingController:v14];
  PXPointIsNull();
}

- (BOOL)_shouldFocusOnTilingController:(id)controller
{
  currentLayout = [controller currentLayout];
  if (currentLayout)
  {
    [currentLayout visibleRect];
    PXRectGetCenter();
  }

  return 0;
}

- (void)_updateFocusedTilingController
{
  v31 = *MEMORY[0x1E69E9840];
  _focusedTilingController = [(PXWidgetComposition *)self _focusedTilingController];
  if (![(PXWidgetComposition *)self _shouldFocusOnTilingController:_focusedTilingController])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    _elements = [(PXWidgetComposition *)self _elements];
    v5 = [_elements countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(_elements);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          widget = [v9 widget];
          v11 = objc_opt_respondsToSelector();

          if (v11)
          {
            widget2 = [v9 widget];
            wantsFocus = [widget2 wantsFocus];

            if (wantsFocus)
            {
              contentTilingController = [v9 contentTilingController];

              [(PXWidgetComposition *)self _setFocusedTilingController:contentTilingController];
              _focusedTilingController = contentTilingController;
              goto LABEL_23;
            }
          }
        }

        v6 = [_elements countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    _elements2 = [(PXWidgetComposition *)self _elements];
    v15 = [_elements2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(_elements2);
          }

          contentTilingController2 = [*(*(&v21 + 1) + 8 * j) contentTilingController];
          if ([(PXWidgetComposition *)self _shouldFocusOnTilingController:contentTilingController2])
          {

            goto LABEL_22;
          }
        }

        v16 = [_elements2 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    contentTilingController2 = _focusedTilingController;
LABEL_22:

    [(PXWidgetComposition *)self _setFocusedTilingController:contentTilingController2];
    _focusedTilingController = contentTilingController2;
  }

LABEL_23:
}

- (id)tilingControllers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _elements = [(PXWidgetComposition *)self _elements];
  v5 = [_elements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_elements);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        contentTilingController = [v9 contentTilingController];
        [v3 addObject:contentTilingController];

        headerTilingController = [v9 headerTilingController];
        [v3 addObject:headerTilingController];

        footerTilingController = [v9 footerTilingController];
        [v3 addObject:footerTilingController];
      }

      v6 = [_elements countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateElementsSpec
{
  v14 = *MEMORY[0x1E69E9840];
  spec = [(PXWidgetComposition *)self spec];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _elements = [(PXWidgetComposition *)self _elements];
  v5 = [_elements countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_elements);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSpec:spec];
      }

      while (v6 != v8);
      v6 = [_elements countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setElements:(id)elements
{
  v30 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v5 = elementsCopy;
  if (self->__elements != elementsCopy && ([(NSArray *)elementsCopy isEqual:?]& 1) == 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->__elements;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          [v11 unregisterObserver:self];
          [v11 setDelegate:0];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = [(NSArray *)v5 copy];
    elements = self->__elements;
    self->__elements = v12;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = self->__elements;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * j);
          [v19 registerObserver:{self, v20}];
          [v19 setDelegate:self];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }

    [(PXWidgetComposition *)self _updateElementsSpec];
    [(PXWidgetComposition *)self invalidateFocusedTilingController];
    [(PXTilingControllerComposition *)self invalidateComposition];
  }
}

- (void)_updateElements
{
  v27 = *MEMORY[0x1E69E9840];
  scrollViewController = [(PXWidgetComposition *)self scrollViewController];
  widgets = [(PXWidgetComposition *)self widgets];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(widgets, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = widgets;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [PXWidgetCompositionElement elementWithWidget:*(*(&v21 + 1) + 8 * v10) scrollViewController:scrollViewController];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  [(PXWidgetComposition *)self _setElements:v5];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) prepare];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXTilingControllerComposition *)self invalidateComposition];
    [(PXWidgetComposition *)self _invalidateElementsSpec];
    specCopy = v6;
  }
}

- (void)setWidgets:(id)widgets
{
  widgetsCopy = widgets;
  v5 = widgetsCopy;
  if (self->_widgets != widgetsCopy)
  {
    v9 = widgetsCopy;
    v6 = [(NSArray *)widgetsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      widgets = self->_widgets;
      self->_widgets = v7;

      [(PXWidgetComposition *)self _invalidateElements];
      v5 = v9;
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToHasContentAbove = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldUseEdgeToEdgeLayoutForWidget = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToLoadingPriorityForWidget = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToWidgetTransitionToViewControllerWithTransitionType = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToRequestViewControllerDismissalAnimated = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidUpdateCompositionWithDefaultAnimationOptions = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPresentationEnvironment = objc_opt_respondsToSelector() & 1;
    [(PXTilingControllerComposition *)self invalidateComposition];
  }
}

- (PXWidgetComposition)initWithScrollViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PXWidgetComposition;
  v5 = [(PXWidgetComposition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_scrollViewController, controllerCopy);
    [controllerCopy registerObserver:v6];
  }

  return v6;
}

- (PXWidgetComposition)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:74 description:@"invalid initializer"];

  return 0;
}

@end