@interface PXTabGroupManager
- (BOOL)isCollapsedByDefault;
- (BOOL)wantsFolderKeyAssetsForChildTab:(id)a3;
- (NSString)description;
- (PXTabGroupControllerDelegate)delegate;
- (PXTabGroupManager)initWithOutlineItem:(id)a3 dataSectionManager:(id)a4;
- (PXTabGroupManager)initWithTabGroup:(id)a3 dataSectionManager:(id)a4;
- (id)_makeViewControllerForTab:(id)a3;
- (id)auxiliaryObjectForChildTab:(id)a3 key:(id)a4;
- (id)dataSectionArrayController:(id)a3 associatedObjectForTransformedObject:(id)a4;
- (void)activateIfNeeded;
- (void)dataSectionArrayController:(id)a3 didUpdateAuxiliaryObjectForTransformedObjects:(id)a4;
- (void)persistDisplayOrderWithUndoManager:(id)a3;
- (void)setCollapsedByDefault:(BOOL)a3;
- (void)updateTabGroup;
@end

@implementation PXTabGroupManager

- (PXTabGroupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXTabManager *)self isEnabled];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"<%@: %p enabled = %@, tabGroup = %@>", v4, self, v7, self->_tabGroup];;

  return v8;
}

- (BOOL)wantsFolderKeyAssetsForChildTab:(id)a3
{
  v4 = a3;
  v5 = [(PXTabGroupManager *)self arrayController];
  v6 = [v5 dataSectionObjectForTransformedObject:v4];

  v7 = [v6 collection];
  if ([v7 px_isFolder] && (objc_msgSend(v7, "isTransient") & 1) == 0)
  {
    v8 = [v7 px_isTopLevelFolder] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)auxiliaryObjectForChildTab:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXTabGroupManager *)self arrayController];
  v9 = [v8 auxiliaryObjectForTransformedObject:v7 key:v6];

  v10 = [MEMORY[0x1E695DFB0] null];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v11;
}

- (void)persistDisplayOrderWithUndoManager:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UITabGroup *)self->_tabGroup children];
  objc_claimAutoreleasedReturnValue();
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __56__PXTabGroupManager_persistDisplayOrderWithUndoManager___block_invoke;
  v8 = &unk_1E7743148;
  v9 = self;
  PXMap();
}

id __56__PXTabGroupManager_persistDisplayOrderWithUndoManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_msgSend(objc_opt_class() "transformerClass")])
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __56__PXTabGroupManager_persistDisplayOrderWithUndoManager___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSidebarGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "Order updated for collection %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "Error persisting display order for %@: %@error";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

- (void)activateIfNeeded
{
  if (!self->_activated)
  {
    self->_activated = 1;
    [(PXDataSectionArrayController *)self->_arrayController startBackgroundFetchingIfNeeded];
  }
}

- (void)updateTabGroup
{
  v3 = [(PXDataSectionArrayController *)self->_arrayController transformedObjects];
  [(UITabGroup *)self->_tabGroup setChildren:v3];

  tabGroup = self->_tabGroup;
  v5 = MEMORY[0x1E695E0F0];

  [(UITabGroup *)tabGroup setDisplayOrderIdentifiers:v5];
}

- (BOOL)isCollapsedByDefault
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  tabGroup = self->_tabGroup;

  return [(UITabGroup *)tabGroup isCollapsedByDefault];
}

- (void)setCollapsedByDefault:(BOOL)a3
{
  if (objc_opt_respondsToSelector())
  {
    tabGroup = self->_tabGroup;

    [(UITabGroup *)tabGroup setCollapsedByDefault:1];
  }
}

- (void)dataSectionArrayController:(id)a3 didUpdateAuxiliaryObjectForTransformedObjects:(id)a4
{
  v5 = a4;
  v6 = [(PXTabGroupManager *)self delegate];
  [v6 tabGroupController:self didUpdateAuxiliaryObjectsForTabs:v5];
}

- (id)dataSectionArrayController:(id)a3 associatedObjectForTransformedObject:(id)a4
{
  v5 = a4;
  v6 = [(PXTabGroupManager *)self delegate];
  v7 = [v6 tabGroupController:self makeViewControllerForTab:v5];

  return v7;
}

- (id)_makeViewControllerForTab:(id)a3
{
  v4 = a3;
  v5 = [(PXTabGroupManager *)self delegate];
  v6 = [v5 tabGroupController:self makeViewControllerForTab:v4];

  return v6;
}

- (PXTabGroupManager)initWithTabGroup:(id)a3 dataSectionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PXTabGroupManager;
  v9 = [(PXTabGroupManager *)&v13 init];
  if (v9)
  {
    v10 = -[PXDataSectionArrayController initWithDataSectionManager:transformerClass:]([PXDataSectionArrayController alloc], "initWithDataSectionManager:transformerClass:", v8, [objc_opt_class() transformerClass]);
    arrayController = v9->_arrayController;
    v9->_arrayController = v10;

    [(PXDataSectionArrayController *)v9->_arrayController setDelegate:v9];
    objc_storeStrong(&v9->_tabGroup, a3);
  }

  return v9;
}

- (PXTabGroupManager)initWithOutlineItem:(id)a3 dataSectionManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = PXTabGroupManager;
  v8 = [(PXTabGroupManager *)&v23 init];
  if (v8)
  {
    v9 = -[PXDataSectionArrayController initWithDataSectionManager:transformerClass:]([PXDataSectionArrayController alloc], "initWithDataSectionManager:transformerClass:", v7, [objc_opt_class() transformerClass]);
    arrayController = v8->_arrayController;
    v8->_arrayController = v9;

    [(PXDataSectionArrayController *)v8->_arrayController setDelegate:v8];
    objc_initWeak(&location, v8);
    v11 = objc_alloc(MEMORY[0x1E69DD010]);
    v12 = [v6 title];
    v13 = [v6 identifier];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __60__PXTabGroupManager_initWithOutlineItem_dataSectionManager___block_invoke;
    v20 = &unk_1E7743120;
    objc_copyWeak(&v21, &location);
    v14 = [v11 initWithTitle:v12 image:0 identifier:v13 viewControllerProvider:&v17];
    tabGroup = v8->_tabGroup;
    v8->_tabGroup = v14;

    [(UITabGroup *)v8->_tabGroup setSidebarAppearance:2, v17, v18, v19, v20];
    -[UITabGroup setAllowsReordering:](v8->_tabGroup, "setAllowsReordering:", [v6 canRearrangeContent]);
    [(UITabGroup *)v8->_tabGroup setUserInfo:v6];
    [(PXTabGroupManager *)v8 updateTabGroup];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __60__PXTabGroupManager_initWithOutlineItem_dataSectionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _makeViewControllerForTab:v3];

  return v5;
}

@end