@interface PUExtendedToolbar
- (BOOL)_needsUpdate;
- (BOOL)_shouldStretchDuringCrossfadeTransition;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUExtendedToolbar)initWithFrame:(CGRect)frame;
- (double)_containedToolbarHeight;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_assertInsideChangeBlock;
- (void)_assertInsideUpdate;
- (void)_getContainedToolbarFrame:(CGRect *)frame accessoryViewContainerFrame:(CGRect *)containerFrame forBounds:(CGRect)bounds;
- (void)_invalidateAccessoryView;
- (void)_invalidateAccessoryViewContainer;
- (void)_invalidateAccessoryViewTopOutset;
- (void)_invalidateContainedToolbar;
- (void)_invalidateSize;
- (void)_invalidateToolbarItems;
- (void)_performChanges:(id)changes withAnimatorBlock:(id)block;
- (void)_setAccessoryView:(id)view;
- (void)_setAccessoryViewContainer:(id)container;
- (void)_setAccessoryViewTopOutset:(double)outset;
- (void)_setContainedToolbar:(id)toolbar;
- (void)_setNeedsUpdate;
- (void)_setToolbarItems:(id)items;
- (void)_updateAccessoryTopOutsetViewIfNeeded;
- (void)_updateAccessoryViewIfNeeded;
- (void)_updateIfNeededWithAnimatorBlock:(id)block;
- (void)_updateToolbarItemsIfNeeded;
- (void)_updateViewsIfNeededWithAnimatorBlock:(id)block;
- (void)layoutSubviews;
- (void)setBarStyle:(int64_t)style;
- (void)setToolbarViewModel:(id)model withAnimatorBlock:(id)block;
- (void)tintColorDidChange;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUExtendedToolbar

- (void)_invalidateToolbarItems
{
  [(PUExtendedToolbar *)self _setNeedsUpdateToolbarItems:1];

  [(PUExtendedToolbar *)self _setNeedsUpdate];
}

- (void)_setNeedsUpdate
{
  if (![(PUExtendedToolbar *)self _isUpdating]&& [(PUExtendedToolbar *)self _numberOfNestedChanges]<= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUExtendedToolbar.m" lineNumber:268 description:@"not within an update or change block"];
  }
}

- (void)_invalidateAccessoryView
{
  [(PUExtendedToolbar *)self _setNeedsUpdateAccessoryView:1];

  [(PUExtendedToolbar *)self _setNeedsUpdate];
}

- (void)_invalidateAccessoryViewTopOutset
{
  [(PUExtendedToolbar *)self _setNeedsUpdateAccessoryViewTopOutset:1];

  [(PUExtendedToolbar *)self _setNeedsUpdate];
}

- (void)_invalidateContainedToolbar
{
  [(PUExtendedToolbar *)self _setNeedsUpdateContainedToolbar:1];

  [(PUExtendedToolbar *)self _setNeedsUpdate];
}

- (void)_invalidateAccessoryViewContainer
{
  [(PUExtendedToolbar *)self _setNeedsUpdateAccessoryViewContainer:1];

  [(PUExtendedToolbar *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUExtendedToolbar *)self _needsUpdateToolbarItems]|| [(PUExtendedToolbar *)self _needsUpdateAccessoryView]|| [(PUExtendedToolbar *)self _needsUpdateAccessoryViewTopOutset]|| [(PUExtendedToolbar *)self _needsUpdateContainedToolbar])
  {
    return 1;
  }

  return [(PUExtendedToolbar *)self _needsUpdateAccessoryViewContainer];
}

- (void)_updateToolbarItemsIfNeeded
{
  if ([(PUExtendedToolbar *)self _needsUpdateToolbarItems])
  {
    [(PUExtendedToolbar *)self _setNeedsUpdateToolbarItems:0];
    toolbarViewModel = [(PUExtendedToolbar *)self toolbarViewModel];
    toolbarItems = [toolbarViewModel toolbarItems];

    [(PUExtendedToolbar *)self _setToolbarItems:toolbarItems];
  }
}

- (void)_assertInsideUpdate
{
  if (![(PUExtendedToolbar *)self _isUpdating])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUExtendedToolbar.m" lineNumber:236 description:@"not withing update"];
  }
}

- (void)_updateAccessoryViewIfNeeded
{
  if ([(PUExtendedToolbar *)self _needsUpdateAccessoryView])
  {
    [(PUExtendedToolbar *)self _setNeedsUpdateAccessoryView:0];
    toolbarViewModel = [(PUExtendedToolbar *)self toolbarViewModel];
    accessoryView = [toolbarViewModel accessoryView];

    [(PUExtendedToolbar *)self _setAccessoryView:accessoryView];
  }
}

- (void)_updateAccessoryTopOutsetViewIfNeeded
{
  if ([(PUExtendedToolbar *)self _needsUpdateAccessoryViewTopOutset])
  {
    [(PUExtendedToolbar *)self _setNeedsUpdateAccessoryViewTopOutset:0];
    toolbarViewModel = [(PUExtendedToolbar *)self toolbarViewModel];
    [toolbarViewModel accessoryViewTopOutset];
    v5 = v4;

    [(PUExtendedToolbar *)self _setAccessoryViewTopOutset:v5];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PUExtendedToolbar_viewModel_didChange___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  [(PUExtendedToolbar *)self _performChanges:v7];
}

uint64_t __41__PUExtendedToolbar_viewModel_didChange___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) toolbarItemsChanged])
  {
    [*(a1 + 40) _invalidateToolbarItems];
  }

  if ([*(a1 + 32) accessoryViewChanged])
  {
    [*(a1 + 40) _invalidateAccessoryView];
  }

  if ([*(a1 + 32) accessoryViewTopOutsetChanged])
  {
    [*(a1 + 40) _invalidateAccessoryViewTopOutset];
  }

  if (([*(a1 + 32) maximumHeightChanged] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "accessoryViewMaximumHeightChanged"), result))
  {
    v3 = *(a1 + 40);

    return [v3 setNeedsLayout];
  }

  return result;
}

- (void)_updateViewsIfNeededWithAnimatorBlock:(id)block
{
  blockCopy = block;
  _needsUpdateContainedToolbar = [(PUExtendedToolbar *)self _needsUpdateContainedToolbar];
  _needsUpdateAccessoryViewContainer = [(PUExtendedToolbar *)self _needsUpdateAccessoryViewContainer];
  v7 = _needsUpdateAccessoryViewContainer;
  if (!_needsUpdateContainedToolbar && !_needsUpdateAccessoryViewContainer)
  {
    goto LABEL_29;
  }

  [(PUExtendedToolbar *)self _setNeedsUpdateContainedToolbar:0];
  [(PUExtendedToolbar *)self _setNeedsUpdateAccessoryViewContainer:0];
  [(PUExtendedToolbar *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  _toolbarItems = [(PUExtendedToolbar *)self _toolbarItems];
  _accessoryView = [(PUExtendedToolbar *)self _accessoryView];
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  v19 = _containedToolbar;
  if (_needsUpdateContainedToolbar)
  {
    if (_containedToolbar && ![_toolbarItems count])
    {
      [(PUExtendedToolbar *)self _setContainedToolbar:0];
      v20 = v19;
      v19 = 0;
      if (blockCopy)
      {
LABEL_7:
        v21 = [v19 snapshotViewAfterScreenUpdates:0];
        [v19 frame];
        [v21 setFrame:?];
        [(PUExtendedToolbar *)self addSubview:v21];
        if (!v19)
        {
LABEL_13:
          if (![_toolbarItems count])
          {
            v19 = 0;
            if (v7)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

          v22 = objc_alloc(MEMORY[0x1E69DD180]);
          px_screen = [(PUExtendedToolbar *)self px_screen];
          [px_screen bounds];
          v19 = [v22 initWithFrame:{0.0, 0.0}];

          [v19 setBarStyle:{-[PUExtendedToolbar barStyle](self, "barStyle")}];
          tintColor = [(PUExtendedToolbar *)self tintColor];
          [v19 setTintColor:tintColor];

          clearColor = [MEMORY[0x1E69DC888] clearColor];
          [v19 setBackgroundColor:clearColor];

          v26 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
          [v19 setBackgroundImage:v26 forToolbarPosition:0 barMetrics:0];

          v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
          clearColor2 = [MEMORY[0x1E69DC888] clearColor];
          [v27 setBackgroundColor:clearColor2];

          [v19 _setBackgroundView:v27];
          v29 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
          [v19 setShadowImage:v29 forToolbarPosition:0];

          LODWORD(v30) = 1148846080;
          [v19 setContentCompressionResistancePriority:1 forAxis:v30];
          [(PUExtendedToolbar *)self _setContainedToolbar:v19];

          if (!v19)
          {
            goto LABEL_17;
          }
        }

LABEL_15:
        [v19 setItems:_toolbarItems];
        [v19 setAlpha:0.0];
        superview = [v19 superview];

        if (!superview)
        {
          [(PUExtendedToolbar *)self addSubview:v19];
        }

LABEL_17:
        if (v7)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v20 = 0;
      if (blockCopy)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    if (!v19)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  if (v7)
  {
LABEL_18:
    if (_accessoryView)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v63.origin.x = v9;
      v63.origin.y = v11;
      v63.size.width = v13;
      v63.size.height = v15;
      [v32 setFrame:{v9, CGRectGetMinY(v63), v13, v15}];
      [v32 setAlpha:0.0];
      v33 = *(MEMORY[0x1E69DDCE0] + 8);
      v34 = *(MEMORY[0x1E69DDCE0] + 16);
      v35 = *(MEMORY[0x1E69DDCE0] + 24);
      [(PUExtendedToolbar *)self _accessoryViewTopOutset];
      v37 = v36;
      [v32 bounds];
      [_accessoryView setFrame:{v33 + v38, v39 - v37, v40 - (v33 + v35), v41 - (v34 - v37)}];
      [_accessoryView setAutoresizingMask:18];
      [v32 addSubview:_accessoryView];
      [(PUExtendedToolbar *)self addSubview:v32];
      if (v32)
      {
        _accessoryViewContainers = [(PUExtendedToolbar *)self _accessoryViewContainers];
        [_accessoryViewContainers addObject:v32];
      }
    }

    else
    {
      v32 = 0;
    }

    _accessoryViewContainer = [(PUExtendedToolbar *)self _accessoryViewContainer];
    [(PUExtendedToolbar *)self _setAccessoryViewContainer:v32];
    goto LABEL_25;
  }

LABEL_24:
  v32 = 0;
  _accessoryViewContainer = 0;
LABEL_25:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PUExtendedToolbar__updateViewsIfNeededWithAnimatorBlock___block_invoke;
  aBlock[3] = &unk_1E7B7EA98;
  v44 = v21;
  v58 = v44;
  v45 = v20;
  v59 = v45;
  v46 = v19;
  v60 = v46;
  v61 = _accessoryViewContainer;
  v62 = v32;
  v47 = v32;
  v48 = _accessoryViewContainer;
  v49 = _Block_copy(aBlock);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __59__PUExtendedToolbar__updateViewsIfNeededWithAnimatorBlock___block_invoke_2;
  v53[3] = &unk_1E7B76EA8;
  v54 = v44;
  v55 = v45;
  selfCopy = self;
  v50 = v45;
  v51 = v44;
  v52 = _Block_copy(v53);
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v49, v52);
  }

  else
  {
    v49[2](v49);
    v52[2](v52, 1);
  }

LABEL_29:
}

uint64_t __59__PUExtendedToolbar__updateViewsIfNeededWithAnimatorBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:0.0];
  [*(a1 + 48) setAlpha:1.0];
  [*(a1 + 56) setAlpha:0.0];
  v2 = *(a1 + 64);

  return [v2 setAlpha:1.0];
}

void __59__PUExtendedToolbar__updateViewsIfNeededWithAnimatorBlock___block_invoke_2(id *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  [a1[4] removeFromSuperview];
  [a1[5] removeFromSuperview];
  if (a2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [a1[6] _accessoryViewContainers];
    v5 = [v4 copy];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = [a1[6] _accessoryViewContainer];

          if (v10 != v11)
          {
            [v10 removeFromSuperview];
            v12 = [a1[6] _accessoryViewContainers];
            [v12 removeObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setAccessoryViewTopOutset:(double)outset
{
  [(PUExtendedToolbar *)self _assertInsideUpdate];
  if (self->__accessoryViewTopOutset != outset)
  {
    self->__accessoryViewTopOutset = outset;

    [(PUExtendedToolbar *)self _invalidateAccessoryViewContainer];
  }
}

- (void)_setAccessoryView:(id)view
{
  viewCopy = view;
  [(PUExtendedToolbar *)self _assertInsideUpdate];
  if (self->__accessoryView != viewCopy)
  {
    objc_storeStrong(&self->__accessoryView, view);
    [(PUExtendedToolbar *)self _invalidateAccessoryViewContainer];
  }
}

- (void)_setToolbarItems:(id)items
{
  itemsCopy = items;
  _assertInsideUpdate = [(PUExtendedToolbar *)self _assertInsideUpdate];
  v5 = itemsCopy;
  if (self->__toolbarItems != itemsCopy)
  {
    _assertInsideUpdate = [(NSArray *)itemsCopy isEqual:?];
    v5 = itemsCopy;
    if ((_assertInsideUpdate & 1) == 0)
    {
      v6 = [(NSArray *)itemsCopy copy];
      toolbarItems = self->__toolbarItems;
      self->__toolbarItems = v6;

      _assertInsideUpdate = [(PUExtendedToolbar *)self _invalidateContainedToolbar];
      v5 = itemsCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_assertInsideUpdate, v5);
}

- (void)_updateIfNeededWithAnimatorBlock:(id)block
{
  blockCopy = block;
  if ([(PUExtendedToolbar *)self _needsUpdate])
  {
    _isUpdating = [(PUExtendedToolbar *)self _isUpdating];
    [(PUExtendedToolbar *)self _setUpdating:1];
    [(PUExtendedToolbar *)self _updateToolbarItemsIfNeeded];
    [(PUExtendedToolbar *)self _updateAccessoryViewIfNeeded];
    [(PUExtendedToolbar *)self _updateAccessoryTopOutsetViewIfNeeded];
    [(PUExtendedToolbar *)self _updateViewsIfNeededWithAnimatorBlock:blockCopy];
    [(PUExtendedToolbar *)self _setUpdating:_isUpdating];
    if ([(PUExtendedToolbar *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUExtendedToolbar.m" lineNumber:252 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_assertInsideChangeBlock
{
  if ([(PUExtendedToolbar *)self _numberOfNestedChanges]<= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUExtendedToolbar.m" lineNumber:231 description:@"not within a change block"];
  }
}

- (void)_performChanges:(id)changes withAnimatorBlock:(id)block
{
  changesCopy = changes;
  blockCopy = block;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUExtendedToolbar.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  _numberOfNestedChanges = [(PUExtendedToolbar *)self _numberOfNestedChanges];
  [(PUExtendedToolbar *)self _setNumberOfNestedChanges:_numberOfNestedChanges + 1];
  if (blockCopy && _numberOfNestedChanges >= 1)
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "animatorBlock ignored for nested PUExtendedToolbar change", buf, 2u);
    }
  }

  changesCopy[2](changesCopy);
  [(PUExtendedToolbar *)self _setNumberOfNestedChanges:_numberOfNestedChanges];
  if (!_numberOfNestedChanges)
  {
    [(PUExtendedToolbar *)self _updateIfNeededWithAnimatorBlock:blockCopy];
  }
}

- (void)_invalidateSize
{
  toolbarViewModel = [(PUExtendedToolbar *)self toolbarViewModel];
  [toolbarViewModel setNeedsToUpdateToolbarSize:1];
}

- (void)_setAccessoryViewContainer:(id)container
{
  containerCopy = container;
  if (self->__accessoryViewContainer != containerCopy)
  {
    v6 = containerCopy;
    objc_storeStrong(&self->__accessoryViewContainer, container);
    [(PUExtendedToolbar *)self _invalidateSize];
    containerCopy = v6;
  }
}

- (void)_setContainedToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  if (self->__containedToolbar != toolbarCopy)
  {
    v6 = toolbarCopy;
    objc_storeStrong(&self->__containedToolbar, toolbar);
    [(PUExtendedToolbar *)self _invalidateSize];
    toolbarCopy = v6;
  }
}

- (void)_getContainedToolbarFrame:(CGRect *)frame accessoryViewContainerFrame:(CGRect *)containerFrame forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  slice = bounds;
  boundsCopy = bounds;
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  if (_containedToolbar)
  {
    v13 = _containedToolbar;
    _accessoryViewContainer = [(PUExtendedToolbar *)self _accessoryViewContainer];

    if (_accessoryViewContainer)
    {
      [(PUExtendedToolbar *)self _containedToolbarHeight];
      v16 = v15;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      CGRectDivide(v21, &slice, &boundsCopy, v16, CGRectMaxYEdge);
    }
  }

  if (frame)
  {
    size = slice.size;
    frame->origin = slice.origin;
    frame->size = size;
  }

  if (containerFrame)
  {
    v18 = boundsCopy.size;
    containerFrame->origin = boundsCopy.origin;
    containerFrame->size = v18;
  }
}

- (double)_containedToolbarHeight
{
  result = self->__containedToolbarHeight;
  if (result == 0.0)
  {
    [(PUExtendedToolbar *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    return self->__containedToolbarHeight;
  }

  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PUExtendedToolbar;
  [(PUExtendedToolbar *)&v10 layoutSubviews];
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  _accessoryViewContainer = [(PUExtendedToolbar *)self _accessoryViewContainer];
  v5 = *(MEMORY[0x1E695F058] + 16);
  v8 = *MEMORY[0x1E695F058];
  v9 = v5;
  v6 = v8;
  v7 = v5;
  [(PUExtendedToolbar *)self bounds];
  [(PUExtendedToolbar *)self _getContainedToolbarFrame:&v8 accessoryViewContainerFrame:&v6 forBounds:?];
  [_containedToolbar pu_setCenterAndBoundsForFrameRect:{v8, v9}];
  [_accessoryViewContainer pu_setCenterAndBoundsForFrameRect:{v6, v7}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v29 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  [(PUExtendedToolbar *)self convertPoint:_containedToolbar toView:x, y];
  v10 = v9;
  v12 = v11;

  _containedToolbar2 = [(PUExtendedToolbar *)self _containedToolbar];
  v14 = [_containedToolbar2 hitTest:eventCopy withEvent:{v10, v12}];

  if (!v14)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    _accessoryViewContainers = [(PUExtendedToolbar *)self _accessoryViewContainers];
    v16 = [_accessoryViewContainers countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(_accessoryViewContainers);
          }

          subviews = [*(*(&v24 + 1) + 8 * i) subviews];
          firstObject = [subviews firstObject];

          [(PUExtendedToolbar *)self convertPoint:firstObject toView:x, y];
          v14 = [firstObject hitTest:eventCopy withEvent:?];

          if (v14)
          {

            goto LABEL_12;
          }
        }

        v17 = [_accessoryViewContainers countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v23.receiver = self;
    v23.super_class = PUExtendedToolbar;
    v14 = [(PUExtendedToolbar *)&v23 hitTest:eventCopy withEvent:x, y];
  }

LABEL_12:

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v22.receiver = self;
  v22.super_class = PUExtendedToolbar;
  [(PUExtendedToolbar *)&v22 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  [(PUExtendedToolbar *)self _setContainedToolbarHeight:v6];
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  _accessoryViewContainer = [(PUExtendedToolbar *)self _accessoryViewContainer];
  v10 = _accessoryViewContainer;
  if (_containedToolbar | _accessoryViewContainer)
  {
    if (_containedToolbar)
    {
      v11 = v7 + 0.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (_accessoryViewContainer)
    {
      toolbarViewModel = [(PUExtendedToolbar *)self toolbarViewModel];
      [toolbarViewModel accessoryViewMaximumHeight];
      v14 = v13;

      if (v7 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v7;
      }

      if (v14 <= 0.0)
      {
        v15 = v7;
      }

      v11 = v11 + v15;
    }

    toolbarViewModel2 = [(PUExtendedToolbar *)self toolbarViewModel];
    [toolbarViewModel2 maximumHeight];
    v18 = v17;

    if (v11 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v11;
    }

    if (v18 <= 0.0)
    {
      v7 = v11;
    }

    else
    {
      v7 = v19;
    }
  }

  v20 = v5;
  v21 = v7;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = PUExtendedToolbar;
  [(PUExtendedToolbar *)&v5 tintColorDidChange];
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  tintColor = [(PUExtendedToolbar *)self tintColor];
  [_containedToolbar setTintColor:tintColor];
}

- (void)setBarStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = PUExtendedToolbar;
  [(PUExtendedToolbar *)&v6 setBarStyle:?];
  _containedToolbar = [(PUExtendedToolbar *)self _containedToolbar];
  [_containedToolbar setBarStyle:style];
}

- (void)setToolbarViewModel:(id)model withAnimatorBlock:(id)block
{
  modelCopy = model;
  toolbarViewModel = self->_toolbarViewModel;
  if (toolbarViewModel != modelCopy)
  {
    blockCopy = block;
    [(PUViewModel *)toolbarViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_toolbarViewModel, model);
    [(PUViewModel *)self->_toolbarViewModel registerChangeObserver:self];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PUExtendedToolbar_setToolbarViewModel_withAnimatorBlock___block_invoke;
    v10[3] = &unk_1E7B80DD0;
    v10[4] = self;
    [(PUExtendedToolbar *)self _performChanges:v10 withAnimatorBlock:blockCopy];
  }
}

uint64_t __59__PUExtendedToolbar_setToolbarViewModel_withAnimatorBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateToolbarItems];
  [*(a1 + 32) _invalidateAccessoryView];
  [*(a1 + 32) _invalidateAccessoryViewTopOutset];
  [*(a1 + 32) _invalidateContainedToolbar];
  v2 = *(a1 + 32);

  return [v2 _invalidateAccessoryViewContainer];
}

- (BOOL)_shouldStretchDuringCrossfadeTransition
{
  toolbarViewModel = [(PUExtendedToolbar *)self toolbarViewModel];
  toolbarItems = [toolbarViewModel toolbarItems];
  if ([toolbarItems count])
  {
    v5 = 0;
  }

  else
  {
    toolbarViewModel2 = [(PUExtendedToolbar *)self toolbarViewModel];
    accessoryView = [toolbarViewModel2 accessoryView];
    v5 = accessoryView != 0;
  }

  return v5;
}

- (PUExtendedToolbar)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUExtendedToolbar;
  v3 = [(PUExtendedToolbar *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFA8] setWithCapacity:3];
    accessoryViewContainers = v3->__accessoryViewContainers;
    v3->__accessoryViewContainers = v4;

    layer = [(PUExtendedToolbar *)v3 layer];
    [layer setAllowsGroupOpacity:0];
  }

  return v3;
}

@end