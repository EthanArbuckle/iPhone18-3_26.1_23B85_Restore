@interface SBIconListViewReorderingManager
- (BOOL)iconDragManager:(id)a3 canBeginIconDragForIconView:(id)a4;
- (SBIconListView)iconListView;
- (SBIconListViewReorderingManager)initWithIconListView:(id)a3;
- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4;
- (id)reorderingDelegate;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)invalidate;
@end

@implementation SBIconListViewReorderingManager

- (SBIconListViewReorderingManager)initWithIconListView:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBIconListViewReorderingManager;
  v5 = [(SBIconListViewReorderingManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconListView, v4);
    [v4 addLayoutObserver:v6];
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
    [v4 enumerateDisplayedIconViewsUsingBlock:&v14];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [v10 initWithFormat:@"SBIconListView-Reordering-%p", v4, v14, v15, v16, v17];
    uniqueDragTypeIdentifier = v9->_uniqueDragTypeIdentifier;
    v9->_uniqueDragTypeIdentifier = v11;
  }

  return v6;
}

- (id)reorderingDelegate
{
  v2 = [(SBIconListViewReorderingManager *)self iconListView];
  v3 = [v2 reorderingDelegate];

  return v3;
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBIconListViewReorderingManager *)self iconDragManager];
  [v5 setOverrideDraggingDelegate:v6];
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v7 = a4;
  v5 = [(SBIconListViewReorderingManager *)self iconDragManager];
  v6 = [v7 overrideDraggingDelegate];

  if (v6 == v5)
  {
    [v7 setOverrideDraggingDelegate:0];
  }
}

- (void)invalidate
{
  v3 = [(SBIconListViewReorderingManager *)self iconListView];
  v4 = [(SBIconListViewReorderingManager *)self iconDragManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SBIconListViewReorderingManager_invalidate__block_invoke;
  v6[3] = &unk_1E8089928;
  v7 = v4;
  v5 = v4;
  [v3 enumerateDisplayedIconViewsUsingBlock:v6];
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

- (id)iconDragManager:(id)a3 dragItemsForIconView:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(SBIconListViewReorderingManager *)self uniqueDragTypeIdentifier];
  v7 = [v5 icon];
  v8 = SBHIconDragItemWithIconAndIconView(v7, v5, v6);

  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (BOOL)iconDragManager:(id)a3 canBeginIconDragForIconView:(id)a4
{
  v5 = [(SBIconListViewReorderingManager *)self iconListView:a3];
  v6 = [(SBIconListViewReorderingManager *)self reorderingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 iconListViewCanBeginReordering:v5];
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