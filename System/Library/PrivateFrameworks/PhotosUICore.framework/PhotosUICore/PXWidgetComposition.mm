@interface PXWidgetComposition
- (BOOL)_shouldFocusOnTilingController:(id)a3;
- (BOOL)_shouldUseEdgeToEdgeLayoutForWidget:(id)a3;
- (BOOL)element:(id)a3 requestViewControllerDismissalAnimated:(BOOL)a4;
- (BOOL)element:(id)a3 transitionToViewController:(id)a4 withTransitionType:(int64_t)a5;
- (CGPoint)_lastContentAdjustmentOffset;
- (CGRect)frameForWidget:(id)a3;
- (PXScrollViewController)scrollViewController;
- (PXWidgetComposition)init;
- (PXWidgetComposition)initWithScrollViewController:(id)a3;
- (PXWidgetCompositionDelegate)delegate;
- (id)elementUndoManager:(id)a3;
- (id)elementViewController:(id)a3;
- (id)headerTilingControllerForWidget:(id)a3;
- (id)presentationEnvironmentForElement:(id)a3;
- (id)tilingControllers;
- (id)widgetAtLocation:(CGPoint)a3;
- (int64_t)_loadingPriorityForElement:(id)a3;
- (void)_setDidLayoutWidgets:(BOOL)a3;
- (void)_setElements:(id)a3;
- (void)_setNeedsUpdateWidgetLoading;
- (void)_updateElements;
- (void)_updateElementsSpec;
- (void)_updateElementsToLoadIfNeeded;
- (void)_updateFocusedTilingController;
- (void)elementHasLoadedContentDataDidChange:(id)a3;
- (void)elementNeedsLayout:(id)a3 preferredAnimationOptions:(id)a4 originatingTilingController:(id)a5;
- (void)invalidatePreferredContentHeightForAllWidgets;
- (void)performWidgetLoadingChange:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMinimumWidgetLoadingPriority:(int64_t)a3;
- (void)setShouldLoadAllWidgets:(BOOL)a3;
- (void)setShouldLoadVisibleWidgets:(BOOL)a3;
- (void)setShouldUnloadAllWidgets:(BOOL)a3;
- (void)setSpec:(id)a3;
- (void)setWidgets:(id)a3;
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

- (id)elementUndoManager:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetComposition *)self delegate];
  v6 = [v4 widget];

  v7 = [v5 widgetComposition:self undoManagerForWidget:v6];

  return v7;
}

- (id)presentationEnvironmentForElement:(id)a3
{
  if (self->_delegateFlags.respondsToPresentationEnvironment)
  {
    v4 = [(PXWidgetComposition *)self delegate];
    v5 = [v4 presentationEnvironmentForWidgetComposition:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)element:(id)a3 requestViewControllerDismissalAnimated:(BOOL)a4
{
  if (!self->_delegateFlags.respondsToRequestViewControllerDismissalAnimated)
  {
    return 0;
  }

  v4 = a4;
  v6 = [(PXWidgetComposition *)self delegate];
  LOBYTE(v4) = [v6 widgetComposition:self requestViewControllerDismissalAnimated:v4];

  return v4;
}

- (BOOL)element:(id)a3 transitionToViewController:(id)a4 withTransitionType:(int64_t)a5
{
  if (!self->_delegateFlags.respondsToWidgetTransitionToViewControllerWithTransitionType)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = [(PXWidgetComposition *)self delegate];
  v11 = [v9 widget];

  LOBYTE(a5) = [v10 widgetComposition:self widget:v11 transitionToViewController:v8 withTransitionType:a5];
  return a5;
}

- (id)elementViewController:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetComposition *)self delegate];
  v6 = [v4 widget];

  v7 = [v5 widgetComposition:self viewControllerHostingWidget:v6];

  return v7;
}

- (void)elementHasLoadedContentDataDidChange:(id)a3
{
  v6 = a3;
  v4 = [(PXWidgetComposition *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 widget];
    [v4 widgetComposition:self widgetHasLoadedContentDataDidChange:v5];
  }
}

- (void)elementNeedsLayout:(id)a3 preferredAnimationOptions:(id)a4 originatingTilingController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_alloc_init(PXTilingControllerCompositionInvalidationContext);
  [(PXTilingControllerCompositionInvalidationContext *)v9 setAnimationOptions:v8];

  [(PXTilingControllerCompositionInvalidationContext *)v9 setOriginatingTilingController:v7];
  [(PXTilingControllerComposition *)self invalidateCompositionWithContext:v9];
}

- (void)invalidatePreferredContentHeightForAllWidgets
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PXWidgetComposition *)self _elements];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [v7 widget];
        [v7 widgetPreferredContentHeightForWidthDidChange:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)headerTilingControllerForWidget:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PXWidgetComposition *)self _elements];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 widget];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = [v9 headerTilingController];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CGRect)frameForWidget:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = [(PXWidgetComposition *)self _elements];
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [v14 widget];

        if (v15 == v4)
        {
          v16 = [v14 contentTilingController];
          v17 = __38__PXWidgetComposition_frameForWidget___block_invoke(v16);
          v44 = v18;
          v45 = v17;
          v42 = v20;
          v43 = v19;

          v21 = [v14 headerTilingController];
          v22 = __38__PXWidgetComposition_frameForWidget___block_invoke(v21);
          v40 = v23;
          v41 = v22;
          v38 = v25;
          v39 = v24;

          v26 = [v14 footerTilingController];
          v27 = __38__PXWidgetComposition_frameForWidget___block_invoke(v26);
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

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
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

- (id)widgetAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x1E69E9840];
  v6 = +[PXTilingCoordinateSpaceConverter defaultConverter];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(PXWidgetComposition *)self _elements];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 contentTilingController];
        v13 = [v12 targetLayout];
        [v13 contentBounds];
        [v6 convertRect:objc_msgSend(v13 fromCoordinateSpaceIdentifier:"coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(v12, "contentCoordinateSpaceIdentifier"), v14, v15, v16, v17}];
        v26.x = x;
        v26.y = y;
        if (CGRectContainsPoint(v27, v26))
        {
          v8 = [v11 widget];

          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_updateElementsToLoadIfNeeded
{
  v60 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.elementsToLoad)
  {
    self->_needsUpdateFlags.elementsToLoad = 0;
    v3 = [(PXWidgetComposition *)self shouldLoadAllWidgets];
    v4 = [(PXWidgetComposition *)self shouldLoadVisibleWidgets];
    v5 = [(PXWidgetComposition *)self shouldUnloadAllWidgets];
    v6 = [(PXWidgetComposition *)self scrollViewController];
    [v6 visibleRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(PXWidgetComposition *)self _didLayoutWidgets];
    v40 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    v44 = [(PXWidgetComposition *)self minimumWidgetLoadingPriority];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(PXWidgetComposition *)self _elements];
    v16 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v16)
    {
      v18 = v16;
      v42 = v4 && v15;
      v19 = *v51;
      *&v17 = 134218240;
      v39 = v17;
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      v43 = *v51;
      v41 = v3;
      do
      {
        v21 = 0;
        v22 = v44;
        do
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v50 + 1) + 8 * v21);
          if (v5)
          {
            goto LABEL_32;
          }

          if (v3 || v42 && ([*(*(&v50 + 1) + 8 * v21) contentTilingController], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "targetLayout"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "contentBounds"), objc_msgSend(v40, "convertRect:fromCoordinateSpaceIdentifier:toCoordinateSpaceIdentifier:", objc_msgSend(v32, "coordinateSpaceIdentifier"), objc_msgSend(v31, "contentCoordinateSpaceIdentifier"), v33, v34, v35, v36), v62.origin.x = v8, v62.origin.y = v10, v62.size.width = v12, v62.size.height = v14, v37 = CGRectIntersectsRect(v61, v62), v32, v19 = v43, v31, v22 = v44, v37))
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
                v24 = [(PXWidgetComposition *)self _elements];
                v25 = [v24 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
                        objc_enumerationMutation(v24);
                      }

                      v30 = [(PXWidgetComposition *)self _loadingPriorityForElement:*(*(&v46 + 1) + 8 * i), v39];
                      if (v27 <= v30)
                      {
                        v27 = v30;
                      }
                    }

                    v26 = [v24 countByEnumeratingWithState:&v46 objects:v58 count:16];
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
                  v55 = self;
                  v56 = 1024;
                  v57 = v27;
                  _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_DEBUG, "[PXWidgetComposition: %p] maximumAvailablePriority=%i", buf, 0x12u);
                }

                v19 = v43;
                v22 = v44;
                if (v44 >= v27)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v44;
                }

                v3 = v41;
              }
            }

            if ([(PXWidgetComposition *)self _loadingPriorityForElement:v23, v39]>= v20)
            {
LABEL_32:
              [v23 setShouldLoadWidgetContent:{!v5, v39}];
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
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:592 description:@"not inside performWidgetLoadingChange:"];
  }
}

- (void)performWidgetLoadingChange:(id)a3
{
  v4 = a3;
  isPerformingWidgetLoadingChange = self->_isPerformingWidgetLoadingChange;
  self->_isPerformingWidgetLoadingChange = 1;
  v6 = v4;
  if (v4)
  {
    v4[2](v4);
    v4 = v6;
  }

  self->_isPerformingWidgetLoadingChange = isPerformingWidgetLoadingChange;
  if (!isPerformingWidgetLoadingChange)
  {
    [(PXWidgetComposition *)self _updateWidgetLoadingIfNeeded];
    v4 = v6;
  }
}

- (void)_setDidLayoutWidgets:(BOOL)a3
{
  if (self->__didLayoutWidgets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXWidgetComposition__setDidLayoutWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setShouldUnloadAllWidgets:(BOOL)a3
{
  if (self->_shouldUnloadAllWidgets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__PXWidgetComposition_setShouldUnloadAllWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setShouldLoadAllWidgets:(BOOL)a3
{
  if (self->_shouldLoadAllWidgets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PXWidgetComposition_setShouldLoadAllWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setShouldLoadVisibleWidgets:(BOOL)a3
{
  if (self->_shouldLoadVisibleWidgets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__PXWidgetComposition_setShouldLoadVisibleWidgets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (void)setMinimumWidgetLoadingPriority:(int64_t)a3
{
  if (self->_minimumWidgetLoadingPriority != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PXWidgetComposition_setMinimumWidgetLoadingPriority___block_invoke;
    v5[3] = &unk_1E77498A0;
    v5[4] = self;
    v5[5] = a3;
    [(PXWidgetComposition *)self performWidgetLoadingChange:v5];
  }
}

- (int64_t)_loadingPriorityForElement:(id)a3
{
  if (!self->_delegateFlags.respondsToLoadingPriorityForWidget)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PXWidgetComposition *)self delegate];
  v6 = [v4 widget];

  v7 = [v5 widgetComposition:self loadingPriorityForWidget:v6];
  return v7;
}

- (BOOL)_shouldUseEdgeToEdgeLayoutForWidget:(id)a3
{
  if (!self->_delegateFlags.respondsToShouldUseEdgeToEdgeLayoutForWidget)
  {
    return 0;
  }

  v3 = self;
  v4 = a3;
  v5 = [(PXWidgetComposition *)v3 delegate];
  LOBYTE(v3) = [v5 widgetComposition:v3 shouldUseEdgeToEdgeLayoutForWidget:v4];

  return v3;
}

- (void)updateComposition
{
  v111 = *MEMORY[0x1E69E9840];
  v39 = [(PXWidgetComposition *)self spec];
  if (!v39)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:237 description:@"missing spec"];
  }

  v2 = [(PXTilingControllerComposition *)self input];
  v3 = [(PXTilingControllerComposition *)self output];
  v37 = [(PXWidgetComposition *)self _elements];
  v45 = [v39 widgetSpec];
  v4 = [v39 maximumNumberOfColumns];
  [v2 referenceSize];
  v6 = v5;
  [v2 contentInset];
  v8 = v7;
  v42 = v10;
  v43 = v9;
  v41 = v11;
  v12 = [v39 widgetSpec];
  [v12 interWidgetSpacing];
  v14 = v13;
  v16 = v15;

  v17 = [v39 orientation];
  v105 = 0;
  v106 = &v105;
  v108 = &unk_1A561E057;
  v107 = 0x4010000000;
  v18 = *(MEMORY[0x1E695F058] + 16);
  v109 = *MEMORY[0x1E695F058];
  v110 = v18;
  *(&v109 + 1) = v8;
  if (!v17)
  {
    *&v110 = v6;
  }

  v19 = objc_alloc_init(_PXWidgetCompositionElementScanner);
  [(_PXWidgetCompositionElementScanner *)v19 setElements:v37];
  [(_PXWidgetCompositionElementScanner *)v19 setReferenceWidth:v6];
  [(_PXWidgetCompositionElementScanner *)v19 setInterColumnSpacing:v14];
  [(_PXWidgetCompositionElementScanner *)v19 setMaximumNumberOfColumns:v4];
  -[_PXWidgetCompositionElementScanner setOrientation:](v19, "setOrientation:", [v39 orientation]);
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
  v44 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v38 = [(PXWidgetComposition *)self _focusedTilingController];
  [v38 invalidateLayoutPreferredVisibleOrigin];
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
    if (!v17 && CGRectGetHeight(v106[1]) > 0.0)
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
      v48 = v3;
      v49 = v45;
      v53 = v80;
      v54 = &v81;
      v63 = v8;
      v64 = v43;
      v65 = v42;
      v66 = v41;
      v50 = v2;
      v51 = v44;
      v52 = self;
      v55 = &v98;
      v56 = &v90;
      v57 = &v94;
      v58 = v88;
      v59 = v87;
      v60 = &v71;
      v70 = v17 == 0;
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
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:436 description:@"couldn't scan all widgets"];
    }

    _Block_object_dispose(v80, 8);
    _Block_object_dispose(&v81, 8);
  }

  if (*(v91 + 24) == 1)
  {
    [v45 distanceBetweenFooterBaselineAndBottom];
  }

  else
  {
    [v45 distanceBetweenFooterlessWidgetContentBottomAndBottom];
    v26 = v25;
    [v45 contentGuideInsets];
    v24 = v26 - v27;
  }

  v106[1].size.height = v24 + v106[1].size.height;
  [v2 tilingControllersRequestingFocus];
  v29 = v28 = self;
  if ([v29 count])
  {
    v30 = [v29 lastObject];
    [(PXWidgetComposition *)self _setFocusedTilingController:v30];

    v28 = self;
  }

  v31 = [(PXWidgetComposition *)v28 _focusedTilingController];

  if (v31)
  {
    v32 = [v44 objectForKey:v31];
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (v32)
    {
      v35 = [v44 objectForKey:v31];
      [v35 CGPointValue];

      [v2 originForTilingController:v31];
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

- (BOOL)_shouldFocusOnTilingController:(id)a3
{
  v3 = [a3 currentLayout];
  if (v3)
  {
    [v3 visibleRect];
    PXRectGetCenter();
  }

  return 0;
}

- (void)_updateFocusedTilingController
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PXWidgetComposition *)self _focusedTilingController];
  if (![(PXWidgetComposition *)self _shouldFocusOnTilingController:v3])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [(PXWidgetComposition *)self _elements];
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [v9 widget];
          v11 = objc_opt_respondsToSelector();

          if (v11)
          {
            v12 = [v9 widget];
            v13 = [v12 wantsFocus];

            if (v13)
            {
              v20 = [v9 contentTilingController];

              [(PXWidgetComposition *)self _setFocusedTilingController:v20];
              v3 = v20;
              goto LABEL_23;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    v14 = [(PXWidgetComposition *)self _elements];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * j) contentTilingController];
          if ([(PXWidgetComposition *)self _shouldFocusOnTilingController:v19])
          {

            goto LABEL_22;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v19 = v3;
LABEL_22:

    [(PXWidgetComposition *)self _setFocusedTilingController:v19];
    v3 = v19;
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
  v4 = [(PXWidgetComposition *)self _elements];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 contentTilingController];
        [v3 addObject:v10];

        v11 = [v9 headerTilingController];
        [v3 addObject:v11];

        v12 = [v9 footerTilingController];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateElementsSpec
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PXWidgetComposition *)self spec];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PXWidgetComposition *)self _elements];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSpec:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_setElements:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->__elements != v4 && ([(NSArray *)v4 isEqual:?]& 1) == 0)
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
  v3 = [(PXWidgetComposition *)self scrollViewController];
  v4 = [(PXWidgetComposition *)self widgets];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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

        v11 = [PXWidgetCompositionElement elementWithWidget:*(*(&v21 + 1) + 8 * v10) scrollViewController:v3];
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

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXTilingControllerComposition *)self invalidateComposition];
    [(PXWidgetComposition *)self _invalidateElementsSpec];
    v5 = v6;
  }
}

- (void)setWidgets:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_widgets != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (PXWidgetComposition)initWithScrollViewController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXWidgetComposition;
  v5 = [(PXWidgetComposition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_scrollViewController, v4);
    [v4 registerObserver:v6];
  }

  return v6;
}

- (PXWidgetComposition)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetComposition.m" lineNumber:74 description:@"invalid initializer"];

  return 0;
}

@end