@interface SBHPageManagementCellDragPreview
+ (id)_pageManagementCellViewForIconImageViewController:(id)a3;
- (SBHPageManagementCellDragPreview)initWithReferenceIconView:(id)a3;
- (id)_pageManagementCellView;
- (id)delayCleanUpForReason:(id)a3;
- (void)_configureIconViewWithReferenceIconView:(id)a3;
- (void)_removeDelayCleanupAssertion:(id)a3;
- (void)cleanUp;
- (void)draggingSourceDroppedWithOperation:(unint64_t)a3;
- (void)dropDestinationAnimationCompleted;
- (void)handleCleanup;
- (void)setDragState:(unint64_t)a3;
- (void)setIconViewCustomIconImageViewController:(id)a3;
@end

@implementation SBHPageManagementCellDragPreview

- (SBHPageManagementCellDragPreview)initWithReferenceIconView:(id)a3
{
  v5 = a3;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [v5 iconImageInfo];
  v13.receiver = self;
  v13.super_class = SBHPageManagementCellDragPreview;
  v10 = [(SBHPageManagementCellDragPreview *)&v13 initWithFrame:v6, v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_referenceIconView, a3);
  }

  return v11;
}

- (id)_pageManagementCellView
{
  v2 = [(SBIconView *)self->_iconView customIconImageViewController];
  v3 = [objc_opt_class() _pageManagementCellViewForIconImageViewController:v2];

  return v3;
}

+ (id)_pageManagementCellViewForIconImageViewController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
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

  v8 = [v7 pageManagementCellView];

  return v8;
}

- (void)_configureIconViewWithReferenceIconView:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithConfigurationOptions:4];
  [(SBIconView *)v5 setCustomIconImageViewControllerPriority:3];
  v12 = [(SBHPageManagementCellDragPreview *)self customIconImageViewController];
  v6 = [objc_opt_class() _pageManagementCellViewForIconImageViewController:v12];
  v7 = [v6 listView];
  [v7 ignoreNextWindowChange];

  [(SBIconView *)v5 setOverrideCustomIconImageViewController:v12];
  [v4 configureMatchingIconView:v5];
  -[SBIconView setEditing:](v5, "setEditing:", [v4 isEditing]);
  v8 = [v4 accessibilityTintColor];

  [(SBIconView *)v5 setAccessibilityTintColor:v8];
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
  v11 = [v6 listView];
  [v11 enumerateIconViewsUsingBlock:&__block_literal_global_45];
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

- (void)setDragState:(unint64_t)a3
{
  if (self->_dragState != a3)
  {
    self->_dragState = a3;
    if (a3 >= 2 && !self->_iconView)
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

    v6 = [(SBHPageManagementCellDragPreview *)self _pageManagementCellView];
    v7 = v6;
    if (a3 == 2)
    {
      v8 = [v6 layer];
      LODWORD(v9) = *"fff>";
      [v8 setShadowOpacity:v9];

      v10 = [v7 layer];
      [v10 setShadowRadius:14.0];

      v11 = [v7 layer];
      [v11 setShadowOffset:{0.0, 10.0}];

      [(SBIconView *)self->_iconView setAllowsCloseBox:0];
    }

    else if (a3 - 3 <= 1)
    {
      [(SBIconView *)self->_iconView setIconContentScale:1.0];
      [v7 setListHighlighted:0];
      v12 = [v7 layer];
      [v12 setShadowOpacity:0.0];

      v13 = [v7 layer];
      [v13 setShadowRadius:0.0];

      v14 = [v7 layer];
      [v14 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

      v15 = [v7 listView];
      v16 = [v15 model];
      if ([v16 isHidden])
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

- (void)draggingSourceDroppedWithOperation:(unint64_t)a3
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
  v3 = [(SBHPageManagementCellDragPreview *)self cleanUpHandler];
  if (v3)
  {
    v7 = v3;
    v4 = [(SBHPageManagementCellDragPreview *)self customIconImageViewController];
    v5 = [objc_opt_class() _pageManagementCellViewForIconImageViewController:v4];
    v6 = [v5 listView];
    [v6 ignoreNextWindowChange];

    [(SBHPageManagementCellDragPreview *)self setCleanUpHandler:0];
    v7[2](v7, self);

    v3 = v7;
  }
}

- (void)dropDestinationAnimationCompleted
{
  v3 = [(SBHPageManagementCellDragPreview *)self iconView];
  [v3 setIcon:0];

  v4 = [(SBHPageManagementCellDragPreview *)self iconView];
  [v4 setDelegate:0];
}

- (void)setIconViewCustomIconImageViewController:(id)a3
{
  v4 = a3;
  [(SBHPageManagementCellDragPreview *)self setCustomIconImageViewController:v4];
  v5 = [(SBHPageManagementCellDragPreview *)self iconView];
  [v5 setOverrideCustomIconImageViewController:v4];
}

- (id)delayCleanUpForReason:(id)a3
{
  v4 = a3;
  if (!self->_cleanupDelayAssertions)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cleanupDelayAssertions = self->_cleanupDelayAssertions;
    self->_cleanupDelayAssertions = v5;
  }

  v7 = [[SBHPageManagementCellDragPreviewDelayCleanupAssertion alloc] initWithDragPreview:self reason:v4];
  [(NSHashTable *)self->_cleanupDelayAssertions addObject:v7];

  return v7;
}

- (void)_removeDelayCleanupAssertion:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_cleanupDelayAssertions containsObject:?])
  {
    [(NSHashTable *)self->_cleanupDelayAssertions removeObject:v4];
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