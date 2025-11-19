@interface _UITextLayoutCanvasView
- (BOOL)_supportsLocationForPositionInViewport;
- (BOOL)textViewportLayoutController:(id)a3 addRenderingSurface:(id)a4 group:(int64_t)a5 placement:(int64_t)a6;
- (CGRect)frameForAnchoredTextAttachment:(id)a3 associatedLayoutFragment:(id)a4;
- (CGRect)textViewportLayoutController:(id)a3 presentationLayoutFragmentFrameForTextLayoutFragment:(id)a4 proposedOrigin:(CGPoint)a5;
- (CGRect)viewportBoundsForTextViewportLayoutController:(id)a3;
- (NSCustomTextRendering)customRenderController;
- (_UITextCanvasContext)context;
- (_UITextLayoutCanvasView)initWithTextLayoutManager:(id)a3 textContainer:(id)a4;
- (id)_internalTextLayoutController;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)locationForPositionInViewport:(CGPoint)a3 offset:(CGSize *)a4;
- (id)textRangeForBounds:(CGRect)a3 layoutIfNeeded:(BOOL)a4;
- (id)textViewportLayoutController:(id)a3 renderingSurfaceForTextLayoutFragment:(id)a4;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_performViewportLayout:(BOOL)a3;
- (void)_removeUnusedElementViews;
- (void)_traitsChanged;
- (void)_updateContentsScaleForCustomRenderController:(double)a3;
- (void)_updateRenderingSurfaceViewsForTextRange:(id)a3 inTextView:(id)a4 bounds:(CGRect)a5;
- (void)_updateTraitsForCustomTextRenderer:(id)a3;
- (void)_viewportDidLayout;
- (void)_viewportWillLayout;
- (void)configureCustomTextRenderer;
- (void)dealloc;
- (void)drawTextInRect:(CGRect)a3;
- (void)flushElementViews;
- (void)invalidateTemporaryAttributesInRange:(id)a3;
- (void)isScrollingChangedTo:(BOOL)a3;
- (void)layoutSubviews;
- (void)observeEnclosingScrollView;
- (void)requestHoverEffectsUpdate;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setNeedsLayout;
- (void)setSelectionContainerView:(id)a3;
- (void)setTextEmphasisBackgroundView:(id)a3 withTextView:(id)a4;
- (void)textViewportLayoutController:(id)a3 configureRenderingSurfaceForTextLayoutFragment:(id)a4;
- (void)textViewportLayoutControllerDidLayout:(id)a3;
- (void)textViewportLayoutControllerWillLayout:(id)a3;
- (void)updateContentSizeIfNeeded;
@end

@implementation _UITextLayoutCanvasView

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = _UITextLayoutCanvasView;
  [(UIView *)&v3 setNeedsDisplay];
  [(_UITextLayoutCanvasView *)self setNeedsLayout];
}

- (void)setNeedsLayout
{
  v6.receiver = self;
  v6.super_class = _UITextLayoutCanvasView;
  [(UIView *)&v6 setNeedsLayout];
  v3 = [(UIView *)self->_textEmphasisBackgroundView superview];
  v4 = v3;
  if (v3 == self)
  {
    v5 = [(UIView *)self->_textEmphasisBackgroundView isHidden];

    if (!v5)
    {
      [(UIView *)self->_textEmphasisBackgroundView setNeedsDisplay];
    }
  }

  else
  {
  }
}

- (void)layoutSubviews
{
  v24 = *MEMORY[0x1E69E9840];
  [(_UITextLayoutCanvasView *)self _performViewportLayout:1];
  if (self->_hoverEffectsLayer)
  {
    v3 = [(UIView *)self layer];
    [v3 bounds];
    [(_UITextLayoutCanvasViewHoverEffectContainerLayer *)self->_hoverEffectsLayer setFrame:?];
  }

  v4 = [(_UITextLayoutCanvasView *)self customRenderController];
  v5 = v4;
  if (v4)
  {
    [v4 contentsScale];
    v7 = v6;
    v8 = [(UIView *)self traitCollection];
    [v8 displayScale];
    v10 = v9;

    if (v7 != v10)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v12 = *(__UILogGetCategoryCachedImpl("Text", &layoutSubviews___s_category_0) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          [v5 contentsScale];
          v15 = v14;
          v16 = [(UIView *)self traitCollection];
          [v16 displayScale];
          v18 = 134349570;
          v19 = v15;
          v20 = 2050;
          v21 = v17;
          v22 = 2082;
          v23 = "[_UITextLayoutCanvasView layoutSubviews]";
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Updating customRenderController.contentsScale ”%{public}.0f” with traitCollection.displayScale ”%{public}.0f” from %{public}s", &v18, 0x20u);
        }
      }

      v11 = [(UIView *)self traitCollection];
      [v11 displayScale];
      [(_UITextLayoutCanvasView *)self _updateContentsScaleForCustomRenderController:?];
    }
  }
}

- (void)_viewportWillLayout
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_selectionContainerView)
  {
    v3 = [(NSMutableSet *)self->_currentClientAuxiliaryViews mutableCopy];
    oldClientAuxiliaryViews = self->_oldClientAuxiliaryViews;
    self->_oldClientAuxiliaryViews = v3;

    [(NSMutableSet *)self->_oldClientAuxiliaryViews makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableSet *)self->_currentClientAuxiliaryViews removeAllObjects];
    [(UIView *)self insertSubview:self->_selectionContainerView atIndex:0];
    [(UIView *)self bounds];
    [(UIView *)self->_selectionContainerView setFrame:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMapTable *)self->_textViewportViews keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableSet *)self->_viewportElementsToRemove addObject:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(_UITextLayoutCanvasView *)self configureCustomTextRenderer];
  v10 = [(_UITextLayoutCanvasView *)self customRenderController];
  [v10 beginLayout];
}

- (_UITextCanvasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)_viewportDidLayout
{
  v33 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_oldClientAuxiliaryViews removeAllObjects];
  oldClientAuxiliaryViews = self->_oldClientAuxiliaryViews;
  self->_oldClientAuxiliaryViews = 0;

  [(_UITextLayoutCanvasView *)self _removeUnusedElementViews];
  v4 = [(_UITextLayoutCanvasView *)self customRenderController];
  v5 = v4;
  if (v4)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __45___UITextLayoutCanvasView__viewportDidLayout__block_invoke;
    v29[3] = &unk_1E70F35B8;
    v6 = v4;
    v30 = v6;
    v31 = self;
    [UIView performWithoutAnimation:v29];

    p_layoutFragmentViewsNeedDisplay = &self->_layoutFragmentViewsNeedDisplay;
    if (self->_layoutFragmentViewsNeedDisplay && (*&self->_canvasViewFlags & 2) != 0)
    {
      [v6 setNeedsDisplay];
    }
  }

  else
  {
    p_layoutFragmentViewsNeedDisplay = &self->_layoutFragmentViewsNeedDisplay;
    if (self->_layoutFragmentViewsNeedDisplay)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = [(NSMapTable *)self->_textViewportViews keyEnumerator];
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [(NSMapTable *)self->_textViewportViews objectForKey:*(*(&v25 + 1) + 8 * i)];
            if ([v13 isLayoutFragmentView])
            {
              [v13 setNeedsDisplay];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v10);
      }
    }
  }

  v14 = [(NSTextViewportLayoutController *)self->_viewportLayoutController viewportRange];
  if (v14)
  {
    [(NSTextLayoutManager *)self->_textLayoutManager ensureLayoutForRange:v14];
  }

  [(_UITextLayoutCanvasView *)self updateContentSizeIfNeeded];
  v15 = [(_UITextLayoutCanvasView *)self context];
  v16 = [(NSMutableSet *)self->_textAttachmentViews mutableCopy];
  [v16 minusSet:self->_newTextAttachmentViews];
  if ([v16 count])
  {
    [v15 didRemoveTextAttachmentViews:v16];
  }

  v17 = [(NSMutableSet *)self->_newTextAttachmentViews mutableCopy];
  [v17 minusSet:self->_textAttachmentViews];
  if ([v17 count])
  {
    [v15 didAddTextAttachmentViews:v17];
  }

  [(NSMutableSet *)self->_textAttachmentViews setSet:self->_newTextAttachmentViews];
  [(NSMutableSet *)self->_newTextAttachmentViews removeAllObjects];
  *p_layoutFragmentViewsNeedDisplay = 0;
  v18 = [(_UITextLayoutCanvasView *)self _internalTextLayoutController];
  v19 = [v18 searchableObject];
  v20 = v19;
  if (v19)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45___UITextLayoutCanvasView__viewportDidLayout__block_invoke_4;
    v23[3] = &unk_1E70F3590;
    v24 = v19;
    [UIView performWithoutAnimation:v23];
  }

  v21 = [(_UITextLayoutCanvasView *)self context];
  [v21 _textKit2CanvasDidLayout];

  if (v5)
  {
    v22 = [(_UITextLayoutCanvasView *)self context];
    [v22 _updateInteractionGeometry];
  }
}

- (void)updateContentSizeIfNeeded
{
  [(NSTextLayoutManager *)self->_textLayoutManager ui_contentSizeForLastContainerView];
  if (self->_contentSize.width != v3 || self->_contentSize.height != v4)
  {
    self->_contentSize.width = v3;
    self->_contentSize.height = v4;
    v6 = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
    [v6 flushLayoutCache];

    v7 = [(_UITextLayoutCanvasView *)self context];
    [v7 textContainerUsageDidChangeToSize:{self->_contentSize.width, self->_contentSize.height}];
  }
}

- (id)_internalTextLayoutController
{
  v2 = [(_UITextLayoutCanvasView *)self context];
  v3 = [v2 textLayoutController];
  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSCustomTextRendering)customRenderController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->_context);
    v5 = [v4 customRenderController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configureCustomTextRenderer
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UITextLayoutCanvasView *)self customRenderController];
  v4 = v3;
  if (self->_lastCustomRenderController != v3)
  {
    self->_lastCustomRenderController = v3;
    *&self->_canvasViewFlags = *&self->_canvasViewFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_canvasViewFlags = *&self->_canvasViewFlags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_canvasViewFlags = *&self->_canvasViewFlags & 0xFB | v6;
    v7 = objc_opt_respondsToSelector();
    v8 = 0;
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = 8;
      }

      else
      {
        v8 = 0;
      }
    }

    *&self->_canvasViewFlags = *&self->_canvasViewFlags & 0xF7 | v8;
    v9 = [(UIView *)self traitCollection];
    [(_UITextLayoutCanvasView *)self _updateTraitsForCustomTextRenderer:v9];

    [(_UITextLayoutCanvasView *)self _removeUnusedElementViews];
    traitChangeToken = self->_traitChangeToken;
    if (self->_lastCustomRenderController)
    {
      if (!traitChangeToken)
      {
        v15[0] = objc_opt_class();
        v15[1] = objc_opt_class();
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
        v12 = [(UIView *)self registerForTraitChanges:v11 withTarget:self action:sel__traitsChanged];
        v13 = self->_traitChangeToken;
        self->_traitChangeToken = v12;
      }
    }

    else if (traitChangeToken)
    {
      [(UIView *)self unregisterForTraitChanges:?];
      v14 = self->_traitChangeToken;
      self->_traitChangeToken = 0;
    }
  }
}

- (void)_removeUnusedElementViews
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_viewportElementsToRemove;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_textViewportViews objectForKey:v8, v10];
        if ([v9 isLayoutFragmentView])
        {
          [v9 teardown];
        }

        [v9 removeFromSuperview];
        [(NSMapTable *)self->_textViewportViews removeObjectForKey:v8];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_viewportElementsToRemove removeAllObjects];
}

- (void)dealloc
{
  v3 = [(_UITextLayoutCanvasView *)self context];
  v4 = [v3 hasOverriddenEnclosingScrollView];

  if (v4)
  {
    [(UIView *)self _removeGeometryChangeObserver:?];
  }

  v5.receiver = self;
  v5.super_class = _UITextLayoutCanvasView;
  [(UIView *)&v5 dealloc];
}

- (void)flushElementViews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMapTable *)self->_textViewportViews keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSMutableSet *)self->_viewportElementsToRemove addObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(_UITextLayoutCanvasView *)self _removeUnusedElementViews];
  [(NSMapTable *)self->_textViewportViews removeAllObjects];
}

- (void)_traitsChanged
{
  v3 = [(UIView *)self traitCollection];
  [(_UITextLayoutCanvasView *)self _updateTraitsForCustomTextRenderer:v3];
}

- (_UITextLayoutCanvasView)initWithTextLayoutManager:(id)a3 textContainer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = _UITextLayoutCanvasView;
  v9 = [(UIView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textLayoutManager, a3);
    objc_storeStrong(&v10->_textContainer, a4);
    v11 = [v7 textContainers];
    v10->_textContainerIndex = [v11 indexOfObject:v8];

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    textAttachmentViews = v10->_textAttachmentViews;
    v10->_textAttachmentViews = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    newTextAttachmentViews = v10->_newTextAttachmentViews;
    v10->_newTextAttachmentViews = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    viewportElementsToRemove = v10->_viewportElementsToRemove;
    v10->_viewportElementsToRemove = v16;

    v18 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    textViewportViews = v10->_textViewportViews;
    v10->_textViewportViews = v18;

    v20 = [v7 textViewportLayoutController];
    viewportLayoutController = v10->_viewportLayoutController;
    v10->_viewportLayoutController = v20;

    [(NSTextViewportLayoutController *)v10->_viewportLayoutController setDelegate:v10];
    v10->_contentSize = *MEMORY[0x1E695F060];
    v10->_lastCustomRenderController = 0;
    traitChangeToken = v10->_traitChangeToken;
    v10->_traitChangeToken = 0;

    if (dyld_program_sdk_at_least())
    {
      [(UIView *)v10 _setHostsLayoutEngine:1];
    }

    objc_opt_self();
    objc_storeStrong(&v10->_hoverEffectsLayer, 0);
    hoverEffectsLayer = v10->_hoverEffectsLayer;
    if (hoverEffectsLayer)
    {
      [(_UITextLayoutCanvasViewHoverEffectContainerLayer *)hoverEffectsLayer setZPosition:10000.0];
      v24 = [(UIView *)v10 layer];
      [v24 addSublayer:v10->_hoverEffectsLayer];
    }
  }

  return v10;
}

- (void)observeEnclosingScrollView
{
  v3 = [(_UITextLayoutCanvasView *)self context];
  v4 = [v3 hasOverriddenEnclosingScrollView];

  if (v4)
  {

    [(UIView *)self _addGeometryChangeObserver:?];
  }
}

- (void)setSelectionContainerView:(id)a3
{
  v5 = a3;
  selectionContainerView = self->_selectionContainerView;
  if (selectionContainerView != v5)
  {
    v8 = v5;
    [(UIView *)selectionContainerView removeFromSuperview];
    objc_storeStrong(&self->_selectionContainerView, a3);
    v7 = self->_selectionContainerView;
    if (v7)
    {
      [(UIView *)self insertSubview:v7 atIndex:0];
    }

    [(_UITextLayoutCanvasView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setTextEmphasisBackgroundView:(id)a3 withTextView:(id)a4
{
  v8 = a3;
  v9 = a4;
  textEmphasisBackgroundView = self->_textEmphasisBackgroundView;
  v11 = v8;
  if (textEmphasisBackgroundView != v8)
  {
    if (!v9)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"_UITextLayoutCanvasView.m" lineNumber:159 description:@"Improper text highlighting setup"];

      textEmphasisBackgroundView = self->_textEmphasisBackgroundView;
    }

    [(UIView *)textEmphasisBackgroundView removeFromSuperview];
    objc_storeStrong(&self->_textEmphasisBackgroundView, a3);
    [(_UITextLayoutCanvasView *)self setNeedsLayout];
    v11 = self->_textEmphasisBackgroundView;
  }

  if (v11 || (-[NSTextLayoutManager textContentManager](self->_textLayoutManager, "textContentManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 supportsAnchoredTextAttachments], v12, (v13 & 1) != 0))
  {
    v14 = [(NSTextViewportLayoutController *)self->_viewportLayoutController _platformRenderingSurfaceUpdater];

    if (!v14)
    {
      objc_initWeak(&location, self);
      objc_initWeak(&from, v9);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70___UITextLayoutCanvasView_setTextEmphasisBackgroundView_withTextView___block_invoke;
      v16[3] = &unk_1E7109B50;
      objc_copyWeak(&v17, &location);
      objc_copyWeak(&v18, &from);
      [(NSTextViewportLayoutController *)self->_viewportLayoutController set_platformRenderingSurfaceUpdater:v16];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v17);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(NSTextViewportLayoutController *)self->_viewportLayoutController set_platformRenderingSurfaceUpdater:0];
  }
}

- (void)_updateRenderingSurfaceViewsForTextRange:(id)a3 inTextView:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v54[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = self->_textLayoutManager;
  v14 = self->_viewportLayoutController;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (([v11 isEmpty] & 1) == 0)
  {
    v54[0] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
    v16 = [v12 _nsRangeForTextKitRanges:v15];
    v18 = v17;

    v19 = [v12 textStorage];
    if (v16 + v18 <= [v19 length])
    {
      v20 = *off_1E70ECA80;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __86___UITextLayoutCanvasView__updateRenderingSurfaceViewsForTextRange_inTextView_bounds___block_invoke;
      v49[3] = &unk_1E70F8050;
      v49[4] = &v50;
      [v19 enumerateAttribute:v20 inRange:v16 options:v18 usingBlock:{0, v49}];
    }
  }

  if (*(v51 + 24) == 1)
  {
    [(NSTextViewportLayoutController *)v14 addRenderingSurface:self->_textEmphasisBackgroundView key:@"_UITextViewHighlightBackgroundView" group:1 placement:1];
    v21 = [(_UITextLayoutCanvasView *)self context];
    [(_UITextLayoutCanvasView *)v21 textContainerOrigin];
    v23 = v22;
    v25 = v24;
    [(UIView *)self->_textEmphasisBackgroundView frame];
    v57.origin.x = v26;
    v57.origin.y = v27;
    v57.size.width = v28;
    v57.size.height = v29;
    v30 = y + v25;
    v31 = x + v23;
    v55.origin.x = v31;
    v55.origin.y = v30;
    v55.size.width = width;
    v55.size.height = height;
    if (!NSEqualRects(v55, v57))
    {
      [(UIView *)self->_textEmphasisBackgroundView setFrame:v31, v30, width, height];
    }

    [(UIView *)self->_textEmphasisBackgroundView setHidden:0];
    [(_UITextEmphasisBackgroundView *)self->_textEmphasisBackgroundView setTextRange:v11];
    [(_UITextEmphasisBackgroundView *)self->_textEmphasisBackgroundView setOrigin:-x, -y];
    goto LABEL_10;
  }

  v21 = [(UIView *)self->_textEmphasisBackgroundView superview];
  if (v21 != self)
  {
LABEL_10:

    goto LABEL_11;
  }

  [(UIView *)self->_textEmphasisBackgroundView frame];
  IsEmpty = CGRectIsEmpty(v56);

  if (!IsEmpty)
  {
    [(UIView *)self->_textEmphasisBackgroundView setHidden:1];
  }

LABEL_11:
  v32 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  if ([v32 supportsAnchoredTextAttachments])
  {
    [(NSTextViewportLayoutController *)v14 viewportBounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    objc_initWeak(&location, self);
    textLayoutManager = self->_textLayoutManager;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __86___UITextLayoutCanvasView__updateRenderingSurfaceViewsForTextRange_inTextView_bounds___block_invoke_2;
    v44[3] = &unk_1E7109B78;
    v47[1] = v34;
    v47[2] = v36;
    v47[3] = v38;
    v47[4] = v40;
    v44[4] = self;
    objc_copyWeak(v47, &location);
    v45 = v14;
    v46 = v11;
    v42 = [(NSTextLayoutManager *)textLayoutManager enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v44];

    objc_destroyWeak(v47);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v50, 8);
}

- (CGRect)frameForAnchoredTextAttachment:(id)a3 associatedLayoutFragment:(id)a4
{
  v6 = a4;
  textViewportViews = self->_textViewportViews;
  v8 = a3;
  v9 = [(NSMapTable *)textViewportViews objectForKey:v6];
  [v6 boundsForTextParagraphAnchoredAttachment:v8];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (v9)
  {
    [(UIView *)self convertRect:v9 fromView:v11, v13, v15, v17];
    v19 = v18;
    v21 = v20;
    v15 = v22;
    v17 = v23;
  }

  else
  {
    v24 = [(_UITextLayoutCanvasView *)self context];
    [v24 textContainerOrigin];
    v26 = v25;
    v28 = v27;
    [v6 layoutFragmentFrame];
    v19 = v11 + v26 + v29;
    v21 = v13 + v28 + v30;
  }

  v31 = v19;
  v32 = v21;
  v33 = v15;
  v34 = v17;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_updateTraitsForCustomTextRenderer:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UITextLayoutCanvasView *)self customRenderController];
  v6 = v5;
  if (v5)
  {
    [v5 contentsScale];
    v8 = v7;
    [v4 displayScale];
    if (v8 != v9)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v10 = *(__UILogGetCategoryCachedImpl("Text", &_updateTraitsForCustomTextRenderer____s_category) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          [v6 contentsScale];
          v13 = v12;
          [v4 displayScale];
          v15 = 134349570;
          v16 = v13;
          v17 = 2050;
          v18 = v14;
          v19 = 2082;
          v20 = "[_UITextLayoutCanvasView _updateTraitsForCustomTextRenderer:]";
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Updating customRenderController.contentsScale ”%{public}.0f” with traitCollection.displayScale ”%{public}.0f” from %{public}s", &v15, 0x20u);
        }
      }

      [v4 displayScale];
      [(_UITextLayoutCanvasView *)self _updateContentsScaleForCustomRenderController:?];
    }

    if ((*&self->_canvasViewFlags & 2) != 0)
    {
      [v6 setNeedsDisplay];
    }
  }
}

- (void)_updateContentsScaleForCustomRenderController:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(_UITextLayoutCanvasView *)self customRenderController];
  v6 = v5;
  if (v5)
  {
    if (*&self->_canvasViewFlags)
    {
      [v5 contentsScale];
      v8 = v7;
      [v6 setContentsScale:a3];
      if (v8 != a3)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v9 = *(__UILogGetCategoryCachedImpl("Text", &_updateContentsScaleForCustomRenderController____s_category) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = v9;
            [v6 contentsScale];
            v12 = 134349056;
            v13 = v11;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Updated contents scale to %{public}.0f.", &v12, 0xCu);
          }
        }
      }
    }
  }
}

- (id)textRangeForBounds:(CGRect)a3 layoutIfNeeded:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__94;
  v27 = __Block_byref_object_dispose__94;
  v28 = 0;
  if (a4)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  viewportLayoutController = self->_viewportLayoutController;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61___UITextLayoutCanvasView_textRangeForBounds_layoutIfNeeded___block_invoke;
  v22[3] = &unk_1E7109BF0;
  v22[4] = &v23;
  [(NSTextViewportLayoutController *)viewportLayoutController enumerateTextViewportElementsInRect:v10 options:v22 usingBlock:a3.origin.x];
  v12 = v24[5];
  if (!v12)
  {
    if (v4)
    {
      [(UIView *)self frame];
      if (!CGRectIsEmpty(v30))
      {
        [(_UITextLayoutCanvasView *)self _performViewportLayout:0];
      }
    }

    v13 = self->_viewportLayoutController;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61___UITextLayoutCanvasView_textRangeForBounds_layoutIfNeeded___block_invoke_2;
    v21[3] = &unk_1E7109BF0;
    v21[4] = &v23;
    [(NSTextViewportLayoutController *)v13 enumerateTextViewportElementsInRect:v10 options:v21 usingBlock:x, y, width, height];
    v12 = v24[5];
    if (!v12)
    {
      v14 = [off_1E70ECBF0 alloc];
      v15 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
      v16 = [v15 location];
      v17 = [v14 initWithLocation:v16];
      v18 = v24[5];
      v24[5] = v17;

      v12 = v24[5];
    }
  }

  v19 = v12;
  _Block_object_dispose(&v23, 8);

  return v19;
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _UITextLayoutCanvasView;
  [(UIView *)&v18 setNeedsDisplayInRect:?];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMapTable *)self->_textViewportViews objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        [v13 frame];
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        if (CGRectIntersectsRect(v21, v22))
        {
          [v13 setNeedsDisplay];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_performViewportLayout:(BOOL)a3
{
  if (!self->_inLayout)
  {
    v3 = a3;
    v5 = [(_UITextLayoutCanvasView *)self customRenderController];
    v6 = v5;
    if (v3 && (*&self->_canvasViewFlags & 8) != 0)
    {
      [v5 preLayoutNotify];
    }

    self->_inLayout = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___UITextLayoutCanvasView__performViewportLayout___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIView performWithoutAnimation:v9];
    if (v3)
    {
      [(_UITextLayoutCanvasView *)self _viewportWillLayout];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___UITextLayoutCanvasView__performViewportLayout___block_invoke_2;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView performWithoutAnimation:v8];
    if (v3)
    {
      [(_UITextLayoutCanvasView *)self _viewportDidLayout];
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___UITextLayoutCanvasView__performViewportLayout___block_invoke_3;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [UIView performWithoutAnimation:v7];
    self->_inLayout = 0;
    if (v3 && (*&self->_canvasViewFlags & 8) != 0)
    {
      [v6 postLayoutNotify];
    }
  }
}

- (void)isScrollingChangedTo:(BOOL)a3
{
  if (self->_isTextViewScrolling != a3)
  {
    self->_isTextViewScrolling = a3;
    [(_UITextLayoutCanvasView *)self requestHoverEffectsUpdate];
  }
}

- (void)requestHoverEffectsUpdate
{
  if (self->_hoverEffectsLayer)
  {
    [(_UITextLayoutCanvasView *)self setNeedsLayout];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UITextLayoutCanvasView;
  v5 = [(UIView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (CGRect)viewportBoundsForTextViewportLayoutController:(id)a3
{
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_UITextLayoutCanvasView *)self context];
  [v12 textContainerOrigin];
  v39 = v14;
  v40 = v13;
  v15 = [v12 enclosingScrollView];
  v16 = [v12 hasOverriddenEnclosingScrollView];
  v17 = [v12 enclosingScrollView];
  v18 = v17;
  if (v16)
  {
    [v17 visibleBounds];
  }

  else
  {
    [v17 bounds];
  }

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;

  if (v15)
  {
    [(UIView *)self convertRect:v15 fromView:v23, v24, v25, v26];
    v5 = v27;
    v7 = v28;
    v9 = v29;
    v11 = v30;
  }

  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  v42 = CGRectOffset(v41, -v40, -v39);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;

  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (BOOL)_supportsLocationForPositionInViewport
{
  if (qword_1ED498EE0 != -1)
  {
    dispatch_once(&qword_1ED498EE0, &__block_literal_global_254);
  }

  return _MergedGlobals_13_1;
}

- (id)locationForPositionInViewport:(CGPoint)a3 offset:(CGSize *)a4
{
  y = a3.y;
  x = a3.x;
  if (![(_UITextLayoutCanvasView *)self _supportsLocationForPositionInViewport])
  {
    v13 = 0;
    goto LABEL_30;
  }

  v8 = [(_UITextLayoutCanvasView *)self textLayoutManager];
  v9 = [v8 textContainers];
  if ([v9 count] < 2)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v10 = [(_UITextLayoutCanvasView *)self textContainer];
    v11 = [v9 indexOfObject:v10];

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  v14 = [v8 textLayoutFragmentForPosition:v12 inTextContainerAtIndex:{x, y}];
  if (!v14)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_29;
  }

  v15 = v14;
  v16 = -5;
  while (1)
  {
    v17 = [v15 rangeInElement];
    [v8 ensureLayoutForRange:v17];
    v18 = [v15 textElement];

    if (v18)
    {
      break;
    }

    if (!v16)
    {
      v21 = 0;
      goto LABEL_21;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v9;
    }

    else
    {
      v19 = [v8 textContainers];

      if ([v19 count] < 2)
      {
        v11 = 0;
        v20 = 0;
        goto LABEL_20;
      }

      v22 = [(_UITextLayoutCanvasView *)self textContainer];
      v11 = [v19 indexOfObject:v22];

      v20 = v11;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }
    }

    v20 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
    v21 = [v8 textLayoutFragmentForPosition:v20 inTextContainerAtIndex:{x, y}];
    v9 = v19;
LABEL_21:
    if (v15 == v21)
    {
      v13 = 0;
      goto LABEL_28;
    }

    ++v16;
    v15 = v21;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  [v15 layoutFragmentFrame];
  if (a4)
  {
    a4->width = v23 - x;
    a4->height = v24 - y;
  }

  v13 = [v17 location];
  v21 = 0;
LABEL_28:

LABEL_29:
LABEL_30:

  return v13;
}

- (id)textViewportLayoutController:(id)a3 renderingSurfaceForTextLayoutFragment:(id)a4
{
  v5 = a4;
  v6 = [(_UITextLayoutCanvasView *)self context];
  [v6 textContainerOrigin];
  v8 = v7;
  v10 = v9;
  v11 = [v6 textContainer];
  [v11 size];
  v13 = v12;
  v15 = v14;

  v16 = [(_UITextLayoutCanvasView *)self customRenderController];
  [v6 _clipRectForFadedEdges];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(NSMapTable *)self->_textViewportViews objectForKey:v5];
  if (v25)
  {
    v26 = v25;
    [v25 setNeedsDisplay];
  }

  else
  {
    v27 = off_1E70EC608;
    if (v16)
    {
      v27 = off_1E70EC600;
    }

    v26 = [objc_alloc(*v27) initWithLayoutFragment:v5 containerOrigin:v8 containerSize:v10 clipRect:{v13, v15, v18, v20, v22, v24}];
    [(NSMapTable *)self->_textViewportViews setObject:v26 forKey:v5];
  }

  return v26;
}

- (CGRect)textViewportLayoutController:(id)a3 presentationLayoutFragmentFrameForTextLayoutFragment:(id)a4 proposedOrigin:(CGPoint)a5
{
  v6 = a4;
  v7 = [v6 textParagraph];
  [v6 layoutFragmentFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v7)
  {
    v16 = [(_UITextLayoutCanvasView *)self uniqueWritingToolsAnimatedLayoutInfo];
    v17 = v16;
    if (!v16)
    {
      v19 = [v7 attributedString];
      if (![v19 length])
      {
        goto LABEL_12;
      }

      v34 = [MEMORY[0x1E696AAB0] _animatedTextSpacerAttributeKey];
      v20 = [v19 attribute:v34 atIndex:0 effectiveRange:0];

      if (!v20)
      {
        goto LABEL_12;
      }

      [v20 presentationFrameForTextLayoutFragmentFrame:{v9, v11, v13, v15}];
      v9 = v35;
      v11 = v36;
      v13 = v37;
      v15 = v38;
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    v18 = [v16 animatingTextRange];
    v19 = [v18 location];

    v20 = [v6 rangeInElement];
    v21 = [v17 animatingTextRange];
    v22 = [v21 textRangeByIntersectingWithTextRange:v20];
    v23 = [v22 isNotEmpty];

    if (!v23)
    {
LABEL_10:

      goto LABEL_11;
    }

    v24 = [v17 animatedTextSpacer];
    v25 = [v21 endLocation];
    if (([v20 containsLocation:v25] & 1) == 0)
    {
      v26 = [v20 endLocation];
      v27 = [v21 endLocation];
      if (![v26 isEqual:v27])
      {
        v39 = [v20 isEqualToTextRange:v21];

        if ((v39 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    [v24 verticalOffsetForSucceedingLayout];
    v29 = v28;
    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    v15 = v29 + CGRectGetHeight(v40);
LABEL_9:

    goto LABEL_10;
  }

LABEL_13:

  v30 = v9;
  v31 = v11;
  v32 = v13;
  v33 = v15;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)textViewportLayoutController:(id)a3 configureRenderingSurfaceForTextLayoutFragment:(id)a4
{
  v6 = a4;
  v7 = [(_UITextLayoutCanvasView *)self context];
  [v7 textContainerOrigin];
  v9 = v8;
  v11 = v10;
  v12 = [v7 textContainer];
  [v12 size];
  v14 = v13;
  v16 = v15;

  [v6 layoutFragmentFrame];
  if (CGRectGetWidth(v51) <= v14)
  {
    [v7 _clipRectForFadedEdges];
    v18 = v17;
    v20 = v19;
    v42 = v21;
    v23 = v22;
    v24 = [(NSMapTable *)self->_textViewportViews objectForKey:v6];
    if (!v24)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
    }

    v25 = [(UIView *)self->_selectionContainerView superview];

    if (v25 == self)
    {
      [(UIView *)self insertSubview:v24 aboveSubview:self->_selectionContainerView];
    }

    else
    {
      [(UIView *)self insertSubview:v24 atIndex:0];
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __103___UITextLayoutCanvasView_textViewportLayoutController_configureRenderingSurfaceForTextLayoutFragment___block_invoke;
    v50[3] = &__block_descriptor_96_e44_v16__0____UIMutableTextLayoutFragmentView__8l;
    *&v50[4] = v9;
    *&v50[5] = v11;
    *&v50[6] = v14;
    v50[7] = v16;
    v50[8] = v18;
    v50[9] = v20;
    v50[10] = v42;
    v50[11] = v23;
    [v24 performChanges:v50];
    [(NSMutableSet *)self->_viewportElementsToRemove removeObject:v6];
    v26 = [(_UITextLayoutCanvasView *)self customRenderController];
    [v26 didLayoutFragment:v6];

    [v6 layoutFragmentFrame];
    v53 = CGRectOffset(v52, v9, v11);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    v31 = [v6 textLineFragments];
    if ([v31 count] == 1)
    {
      v32 = [v31 firstObject];
      [v32 typographicBounds];
      v34 = v33;
      v36 = v35;

      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v55 = CGRectOffset(v54, v34, v36);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
    }

    [v24 layoutIfNeeded];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __103___UITextLayoutCanvasView_textViewportLayoutController_configureRenderingSurfaceForTextLayoutFragment___block_invoke_2;
    v43[3] = &unk_1E7109C38;
    v46 = x;
    v47 = y;
    v48 = width;
    v49 = height;
    v44 = v7;
    v45 = self;
    [v24 enumerateTextAttachmentViewsUsingBlock:v43];
    hoverEffectsLayer = self->_hoverEffectsLayer;
    if (!hoverEffectsLayer)
    {
      goto LABEL_16;
    }

    if (!self->_isTextViewScrolling)
    {
      WeakRetained = objc_loadWeakRetained(&self->_context);
      v39 = [WeakRetained isEditing];

      if ((v39 & 1) == 0)
      {

        v40 = 0;
        hoverEffectsLayer = self->_hoverEffectsLayer;
        goto LABEL_15;
      }

      hoverEffectsLayer = self->_hoverEffectsLayer;
    }

    v40 = 1;
LABEL_15:
    [(_UITextLayoutCanvasViewHoverEffectContainerLayer *)hoverEffectsLayer setHidden:v40];
LABEL_16:
  }
}

- (void)textViewportLayoutControllerWillLayout:(id)a3
{
  if (!self->_inLayout)
  {
    v5 = MEMORY[0x1E696AD88];
    v6 = a3;
    v7 = [v5 defaultCenter];
    [v7 postNotificationName:@"_UITextViewportLayoutControllerWillLayout" object:v6];

    v10 = [(_UITextLayoutCanvasView *)self customRenderController];
    if (v10)
    {
      v8 = [(_UITextLayoutCanvasView *)self customRenderController];
      v9 = v8;
      if ((*&self->_canvasViewFlags & 8) != 0)
      {
        [v8 preLayoutNotify];
      }
    }

    [(_UITextLayoutCanvasView *)self _viewportWillLayout];
  }
}

- (void)textViewportLayoutControllerDidLayout:(id)a3
{
  if (!self->_inLayout)
  {
    v5 = a3;
    [(_UITextLayoutCanvasView *)self _viewportDidLayout];
    v7 = [(_UITextLayoutCanvasView *)self customRenderController];
    if (v7 && (*&self->_canvasViewFlags & 8) != 0)
    {
      [v7 postLayoutNotify];
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"_UITextViewportLayoutControllerDidLayout" object:v5];
  }
}

- (BOOL)textViewportLayoutController:(id)a3 addRenderingSurface:(id)a4 group:(int64_t)a5 placement:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  if (!v12)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v30 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *v32 = 0;
        _os_log_fault_impl(&dword_188A29000, v30, OS_LOG_TYPE_FAULT, "Received nil value in non-null parameter. Ignoring.", v32, 2u);
      }
    }

    else
    {
      v29 = *(__UILogGetCategoryCachedImpl("Assert", &textViewportLayoutController_addRenderingSurface_group_placement____s_category) + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Received nil value in non-null parameter. Ignoring.", buf, 2u);
      }
    }
  }

  selectionContainerView = self->_selectionContainerView;
  if (selectionContainerView)
  {
    v14 = [(UIView *)selectionContainerView superview];

    if (v14 != self)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"_UITextLayoutCanvasView.m" lineNumber:964 description:@"Non-nil _selectionContainerView is not in the subtree. UIKit to fix."];
    }
  }

  v16 = [(UIView *)self->_selectionContainerView superview];
  if (v12)
  {
    v17 = v16 == self;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    v19 = v12;
    if (a5)
    {
      if (a5 == 1)
      {
        if (a6)
        {
          [(UIView *)self insertSubview:v19 atIndex:0];
        }

        else
        {
          [(UIView *)self insertSubview:v19 belowSubview:self->_selectionContainerView];
        }
      }

      else
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"_UITextLayoutCanvasView.m" lineNumber:990 description:{@"Unsupported rendering group value, not Background or Contents. %ld", a5}];
      }
    }

    else if (a6)
    {
      [(UIView *)self insertSubview:v19 aboveSubview:self->_selectionContainerView];
    }

    else
    {
      [(UIView *)self addSubview:v19];
    }

    WeakRetained = objc_loadWeakRetained(&self->_incomingAnchoredAttachment);
    if (WeakRetained)
    {
    }

    else if ([v19 translatesAutoresizingMaskIntoConstraints])
    {
      [v19 frame];
      if (CGRectEqualToRect(v33, *MEMORY[0x1E695F058]))
      {
        [(UIView *)self bounds];
        [v19 setFrame:?];
        [v19 setAutoresizingMask:18];
      }

      [v19 _setHostsLayoutEngine:1];
    }

    v22 = objc_loadWeakRetained(&self->_incomingAnchoredAttachment);

    if (v22)
    {
      viewportElementsToRemove = self->_viewportElementsToRemove;
      v24 = objc_loadWeakRetained(&self->_incomingAnchoredAttachment);
      [(NSMutableSet *)viewportElementsToRemove removeObject:v24];
    }

    else
    {
      currentClientAuxiliaryViews = self->_currentClientAuxiliaryViews;
      if (!currentClientAuxiliaryViews)
      {
        v26 = [MEMORY[0x1E695DFA8] set];
        v27 = self->_currentClientAuxiliaryViews;
        self->_currentClientAuxiliaryViews = v26;

        currentClientAuxiliaryViews = self->_currentClientAuxiliaryViews;
      }

      [(NSMutableSet *)currentClientAuxiliaryViews addObject:v19];
      [(NSMutableSet *)self->_oldClientAuxiliaryViews removeObject:v19];
    }
  }

  return v18;
}

- (void)invalidateTemporaryAttributesInRange:(id)a3
{
  v4 = a3;
  v5 = [(_UITextLayoutCanvasView *)self customRenderController];

  if (v5)
  {
    if ((*&self->_canvasViewFlags & 4) != 0)
    {
      v7 = [v4 textKit2Ranges];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64___UITextLayoutCanvasView_invalidateTemporaryAttributesInRange___block_invoke;
      v8[3] = &unk_1E7109C60;
      v8[4] = self;
      [v7 enumerateObjectsUsingBlock:v8];
    }

    else
    {
      v6 = [(_UITextLayoutCanvasView *)self customRenderController];
      [v6 setNeedsDisplay];
    }
  }
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITextLayoutCanvasView *)self context];
  [v8 textContainerOrigin];
  v10 = v9;
  v12 = v11;

  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, v10, v12);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v14);
  v16 = v17;
  CGContextConcatCTM(v14, &v16);
  v15 = [(_UITextLayoutCanvasView *)self textRangeForBounds:1 layoutIfNeeded:x, y, width, height];
  _UITextLayoutDrawRangeInContext(self->_textLayoutManager, v15, v14);
  CGContextRestoreGState(v14);
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v6 = a4;
  v9 = [(_UITextLayoutCanvasView *)self context];
  v7 = [v9 enclosingScrollView];

  if (v7 == v6)
  {
    v8 = a3->var0 & 0xE;

    if (v8)
    {

      [(_UITextLayoutCanvasView *)self setNeedsLayout];
    }
  }

  else
  {
  }
}

@end