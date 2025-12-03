@interface SBIconListViewReorderingManager
- (BOOL)iconDragManager:(id)manager canBeginIconDragForIconView:(id)view;
- (SBIconListView)iconListView;
- (SBIconListViewReorderingManager)initWithIconListView:(id)view;
- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view;
- (id)reorderingDelegate;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)invalidate;
@end

@implementation SBIconListViewReorderingManager

- (SBIconListViewReorderingManager)initWithIconListView:(id)view
{
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = SBIconListViewReorderingManager;
  v5 = [(SBIconListViewReorderingManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconListView, viewCopy);
    [viewCopy addLayoutObserver:v6];
    v7 = objc_alloc_init(SBIconDragManager);
    iconDragManager = v6->_iconDragManager;
    v6->_iconDragManager = v7;

    [(SBIconDragManager *)v6->_iconDragManager setDelegate:v6];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __56__SBIconListViewReorderingManager_initWithIconListView___block_invoke;
    v17 = &unk_1E8089928;
    v9 = v6;
    v18 = v9;
    [viewCopy enumerateDisplayedIconViewsUsingBlock:&v14];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [v10 initWithFormat:@"SBIconListView-Reordering-%p", viewCopy, v14, v15, v16, v17];
    uniqueDragTypeIdentifier = v9->_uniqueDragTypeIdentifier;
    v9->_uniqueDragTypeIdentifier = v11;
  }

  return v6;
}

- (id)reorderingDelegate
{
  iconListView = [(SBIconListViewReorderingManager *)self iconListView];
  reorderingDelegate = [iconListView reorderingDelegate];

  return reorderingDelegate;
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  iconViewCopy = iconView;
  iconDragManager = [(SBIconListViewReorderingManager *)self iconDragManager];
  [iconViewCopy setOverrideDraggingDelegate:iconDragManager];
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  iconViewCopy = iconView;
  iconDragManager = [(SBIconListViewReorderingManager *)self iconDragManager];
  overrideDraggingDelegate = [iconViewCopy overrideDraggingDelegate];

  if (overrideDraggingDelegate == iconDragManager)
  {
    [iconViewCopy setOverrideDraggingDelegate:0];
  }
}

- (void)invalidate
{
  iconListView = [(SBIconListViewReorderingManager *)self iconListView];
  iconDragManager = [(SBIconListViewReorderingManager *)self iconDragManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SBIconListViewReorderingManager_invalidate__block_invoke;
  v6[3] = &unk_1E8089928;
  v7 = iconDragManager;
  v5 = iconDragManager;
  [iconListView enumerateDisplayedIconViewsUsingBlock:v6];
}

void __45__SBIconListViewReorderingManager_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 overrideDraggingDelegate];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 setOverrideDraggingDelegate:0];
  }
}

- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view
{
  v11[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  uniqueDragTypeIdentifier = [(SBIconListViewReorderingManager *)self uniqueDragTypeIdentifier];
  icon = [viewCopy icon];
  v8 = SBHIconDragItemWithIconAndIconView(icon, viewCopy, uniqueDragTypeIdentifier);

  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (BOOL)iconDragManager:(id)manager canBeginIconDragForIconView:(id)view
{
  v5 = [(SBIconListViewReorderingManager *)self iconListView:manager];
  reorderingDelegate = [(SBIconListViewReorderingManager *)self reorderingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [reorderingDelegate iconListViewCanBeginReordering:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (SBIconListView)iconListView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconListView);

  return WeakRetained;
}

@end