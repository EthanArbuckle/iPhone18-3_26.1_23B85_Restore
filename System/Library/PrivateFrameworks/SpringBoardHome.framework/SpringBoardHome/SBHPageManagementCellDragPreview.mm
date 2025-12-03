@interface SBHPageManagementCellDragPreview
+ (id)_pageManagementCellViewForIconImageViewController:(id)controller;
- (SBHPageManagementCellDragPreview)initWithReferenceIconView:(id)view;
- (id)_pageManagementCellView;
- (id)delayCleanUpForReason:(id)reason;
- (void)_configureIconViewWithReferenceIconView:(id)view;
- (void)_removeDelayCleanupAssertion:(id)assertion;
- (void)cleanUp;
- (void)draggingSourceDroppedWithOperation:(unint64_t)operation;
- (void)dropDestinationAnimationCompleted;
- (void)handleCleanup;
- (void)setDragState:(unint64_t)state;
- (void)setIconViewCustomIconImageViewController:(id)controller;
@end

@implementation SBHPageManagementCellDragPreview

- (SBHPageManagementCellDragPreview)initWithReferenceIconView:(id)view
{
  viewCopy = view;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [viewCopy iconImageInfo];
  v13.receiver = self;
  v13.super_class = SBHPageManagementCellDragPreview;
  v10 = [(SBHPageManagementCellDragPreview *)&v13 initWithFrame:v6, v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_referenceIconView, view);
  }

  return v11;
}

- (id)_pageManagementCellView
{
  customIconImageViewController = [(SBIconView *)self->_iconView customIconImageViewController];
  v3 = [objc_opt_class() _pageManagementCellViewForIconImageViewController:customIconImageViewController];

  return v3;
}

+ (id)_pageManagementCellViewForIconImageViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_class();
  v5 = controllerCopy;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  pageManagementCellView = [v7 pageManagementCellView];

  return pageManagementCellView;
}

- (void)_configureIconViewWithReferenceIconView:(id)view
{
  viewCopy = view;
  v5 = [objc_alloc(objc_opt_class()) initWithConfigurationOptions:4];
  [(SBIconView *)v5 setCustomIconImageViewControllerPriority:3];
  customIconImageViewController = [(SBHPageManagementCellDragPreview *)self customIconImageViewController];
  v6 = [objc_opt_class() _pageManagementCellViewForIconImageViewController:customIconImageViewController];
  listView = [v6 listView];
  [listView ignoreNextWindowChange];

  [(SBIconView *)v5 setOverrideCustomIconImageViewController:customIconImageViewController];
  [viewCopy configureMatchingIconView:v5];
  -[SBIconView setEditing:](v5, "setEditing:", [viewCopy isEditing]);
  accessibilityTintColor = [viewCopy accessibilityTintColor];

  [(SBIconView *)v5 setAccessibilityTintColor:accessibilityTintColor];
  [(SBIconView *)v5 setAllowsEditingAnimation:0];
  [(SBIconView *)v5 setIconContentScalingEnabled:1];
  [(SBHPageManagementCellDragPreview *)self bounds];
  [(SBIconView *)v5 setFrame:?];
  [(SBIconView *)v5 setIconContentScale:1.1];
  iconView = self->_iconView;
  self->_iconView = v5;
  v10 = v5;

  [(SBHPageManagementCellDragPreview *)self addSubview:v10];
  [v6 setListHighlighted:1];
  listView2 = [v6 listView];
  [listView2 enumerateIconViewsUsingBlock:&__block_literal_global_45];
}

void __76__SBHPageManagementCellDragPreview__configureIconViewWithReferenceIconView___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 customIconImageViewController];
  if (v2)
  {
    v7 = v2;
    v3 = objc_opt_class();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
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

    v6 = v5;

    [v6 setWantsEditingDisplayStyle:1 animated:0];
    v2 = v7;
  }
}

- (void)setDragState:(unint64_t)state
{
  if (self->_dragState != state)
  {
    self->_dragState = state;
    if (state >= 2 && !self->_iconView)
    {
      if (!self->_referenceIconView)
      {
        [(SBHPageManagementCellDragPreview *)a2 setDragState:?];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __49__SBHPageManagementCellDragPreview_setDragState___block_invoke;
      v17[3] = &unk_1E8088C90;
      v17[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v17];
      referenceIconView = self->_referenceIconView;
      self->_referenceIconView = 0;
    }

    _pageManagementCellView = [(SBHPageManagementCellDragPreview *)self _pageManagementCellView];
    v7 = _pageManagementCellView;
    if (state == 2)
    {
      layer = [_pageManagementCellView layer];
      LODWORD(v9) = *"fff>";
      [layer setShadowOpacity:v9];

      layer2 = [v7 layer];
      [layer2 setShadowRadius:14.0];

      layer3 = [v7 layer];
      [layer3 setShadowOffset:{0.0, 10.0}];

      [(SBIconView *)self->_iconView setAllowsCloseBox:0];
    }

    else if (state - 3 <= 1)
    {
      [(SBIconView *)self->_iconView setIconContentScale:1.0];
      [v7 setListHighlighted:0];
      layer4 = [v7 layer];
      [layer4 setShadowOpacity:0.0];

      layer5 = [v7 layer];
      [layer5 setShadowRadius:0.0];

      layer6 = [v7 layer];
      [layer6 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

      listView = [v7 listView];
      model = [listView model];
      if ([model isHidden])
      {
        [(SBIconView *)self->_iconView setAllowsCloseBox:1];
      }
    }

    [(SBHPageManagementCellDragPreview *)self setNeedsLayout];
    [(SBHPageManagementCellDragPreview *)self layoutIfNeeded];
  }
}

uint64_t __49__SBHPageManagementCellDragPreview_setDragState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) customIconImageViewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 448) customIconImageViewController];
    [v4 setShowingContextMenu:0];
  }

  v5 = *(a1 + 32);
  v6 = v5[56];

  return [v5 _configureIconViewWithReferenceIconView:v6];
}

- (void)draggingSourceDroppedWithOperation:(unint64_t)operation
{
  if ([(NSHashTable *)self->_cleanupDelayAssertions count])
  {

    [(SBHPageManagementCellDragPreview *)self setDelayingCleanup:1];
  }

  else
  {

    [(SBHPageManagementCellDragPreview *)self handleCleanup];
  }
}

- (void)cleanUp
{
  if (![(SBHPageManagementCellDragPreview *)self hasCleanedUp])
  {

    [(SBHPageManagementCellDragPreview *)self handleCleanup];
  }
}

- (void)handleCleanup
{
  [(SBHPageManagementCellDragPreview *)self setCleanedUp:1];
  cleanUpHandler = [(SBHPageManagementCellDragPreview *)self cleanUpHandler];
  if (cleanUpHandler)
  {
    v7 = cleanUpHandler;
    customIconImageViewController = [(SBHPageManagementCellDragPreview *)self customIconImageViewController];
    v5 = [objc_opt_class() _pageManagementCellViewForIconImageViewController:customIconImageViewController];
    listView = [v5 listView];
    [listView ignoreNextWindowChange];

    [(SBHPageManagementCellDragPreview *)self setCleanUpHandler:0];
    v7[2](v7, self);

    cleanUpHandler = v7;
  }
}

- (void)dropDestinationAnimationCompleted
{
  iconView = [(SBHPageManagementCellDragPreview *)self iconView];
  [iconView setIcon:0];

  iconView2 = [(SBHPageManagementCellDragPreview *)self iconView];
  [iconView2 setDelegate:0];
}

- (void)setIconViewCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  [(SBHPageManagementCellDragPreview *)self setCustomIconImageViewController:controllerCopy];
  iconView = [(SBHPageManagementCellDragPreview *)self iconView];
  [iconView setOverrideCustomIconImageViewController:controllerCopy];
}

- (id)delayCleanUpForReason:(id)reason
{
  reasonCopy = reason;
  if (!self->_cleanupDelayAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cleanupDelayAssertions = self->_cleanupDelayAssertions;
    self->_cleanupDelayAssertions = weakObjectsHashTable;
  }

  v7 = [[SBHPageManagementCellDragPreviewDelayCleanupAssertion alloc] initWithDragPreview:self reason:reasonCopy];
  [(NSHashTable *)self->_cleanupDelayAssertions addObject:v7];

  return v7;
}

- (void)_removeDelayCleanupAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([(NSHashTable *)self->_cleanupDelayAssertions containsObject:?])
  {
    [(NSHashTable *)self->_cleanupDelayAssertions removeObject:assertionCopy];
    if (![(NSHashTable *)self->_cleanupDelayAssertions count])
    {
      if ([(SBHPageManagementCellDragPreview *)self isDelayingCleanup])
      {
        [(SBHPageManagementCellDragPreview *)self handleCleanup];
      }
    }
  }
}

- (void)setDragState:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_referenceIconView != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBHPageManagementCellDragPreview.m";
    v16 = 1024;
    v17 = 137;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end