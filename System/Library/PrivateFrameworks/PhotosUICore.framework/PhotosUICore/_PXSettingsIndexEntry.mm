@interface _PXSettingsIndexEntry
+ (id)_cellForRowAtIndexPath:(id)path inTableView:(id)view;
+ (id)_titleForRowAtIndexPath:(id)path inTableView:(id)view;
- (BOOL)matchesSearchString:(id)string;
- (NSString)subtitle;
- (_PXSettingsIndexEntry)initWithRowAtIndexPath:(id)path inTableView:(id)view;
- (_PXSettingsIndexEntry)parentEntry;
- (void)_revealInSettingsController:(id)controller drillIn:(BOOL)in withCompletionHandler:(id)handler;
- (void)_revealInTopOfSettingsController:(id)controller drillIn:(BOOL)in withCompletionHandler:(id)handler;
@end

@implementation _PXSettingsIndexEntry

- (_PXSettingsIndexEntry)parentEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEntry);

  return WeakRetained;
}

- (void)_revealInTopOfSettingsController:(id)controller drillIn:(BOOL)in withCompletionHandler:(id)handler
{
  inCopy = in;
  controllerCopy = controller;
  handlerCopy = handler;
  topViewController = [controllerCopy topViewController];
  tableView = [topViewController tableView];
  indexPath = [(_PXSettingsIndexEntry *)self indexPath];
  section = [indexPath section];
  if (section > [topViewController numberOfSectionsInTableView:tableView])
  {
    goto LABEL_7;
  }

  v14 = [indexPath row];
  if (v14 > [topViewController tableView:tableView numberOfRowsInSection:{objc_msgSend(indexPath, "section")}])
  {
    goto LABEL_7;
  }

  [tableView scrollToRowAtIndexPath:indexPath atScrollPosition:2 animated:0];
  v15 = [objc_opt_class() _titleForRowAtIndexPath:indexPath inTableView:tableView];
  rowTitle = [(_PXSettingsIndexEntry *)self rowTitle];
  v17 = [v15 isEqualToString:rowTitle];

  if (!v17)
  {
    rowTitle2 = [(_PXSettingsIndexEntry *)self rowTitle];
    NSLog(&cfstr_SettingsSearch.isa, indexPath, v15, rowTitle2);

LABEL_7:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_8;
  }

  v18 = [objc_opt_class() _cellForRowAtIndexPath:indexPath inTableView:tableView];
  if (inCopy)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke;
    v26[3] = &unk_1E774A1B8;
    v19 = &v27;
    v27 = tableView;
    v28 = indexPath;
    v29 = topViewController;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_2;
    v24[3] = &unk_1E774C250;
    v25 = handlerCopy;
    [controllerCopy px_performWithoutAnimations:v26 completionHandler:v24];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
    v21 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_4;
    block[3] = &unk_1E774C648;
    v19 = &v23;
    v23 = v18;
    dispatch_after(v21, MEMORY[0x1E69E96A0], block);
  }

LABEL_8:
}

- (void)_revealInSettingsController:(id)controller drillIn:(BOOL)in withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  parentEntry = [(_PXSettingsIndexEntry *)self parentEntry];
  if (parentEntry)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83___PXSettingsIndexEntry__revealInSettingsController_drillIn_withCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E7731C70;
    v11 = &v17;
    v16[4] = self;
    v17 = controllerCopy;
    inCopy = in;
    v12 = &v18;
    v18 = handlerCopy;
    v13 = handlerCopy;
    [parentEntry _revealInSettingsController:controllerCopy drillIn:1 withCompletionHandler:v16];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83___PXSettingsIndexEntry__revealInSettingsController_drillIn_withCompletionHandler___block_invoke;
    v20[3] = &unk_1E7731C48;
    v11 = &v21;
    v20[4] = self;
    v21 = controllerCopy;
    inCopy2 = in;
    v12 = &v22;
    v22 = handlerCopy;
    v14 = handlerCopy;
    v15 = controllerCopy;
    [PXSystemNavigation navigateToDestination:7 completion:v20];
  }
}

- (BOOL)matchesSearchString:(id)string
{
  stringCopy = string;
  rowTitle = [(_PXSettingsIndexEntry *)self rowTitle];
  v6 = [rowTitle localizedStandardContainsString:stringCopy];

  return v6;
}

- (NSString)subtitle
{
  array = [MEMORY[0x1E695DF70] array];
  parentEntry = [(_PXSettingsIndexEntry *)self parentEntry];
  if (parentEntry)
  {
    v5 = parentEntry;
    do
    {
      sectionTitle = [v5 sectionTitle];
      rowTitle = [v5 rowTitle];
      if ([sectionTitle length])
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) %@", sectionTitle, rowTitle];
      }

      else
      {
        v8 = rowTitle;
      }

      v9 = v8;
      [array insertObject:v8 atIndex:0];
      parentEntry2 = [v5 parentEntry];

      v5 = parentEntry2;
    }

    while (parentEntry2);
  }

  sectionTitle2 = [(_PXSettingsIndexEntry *)self sectionTitle];
  if ([sectionTitle2 length])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", sectionTitle2];
    [array addObject:v12];
  }

  v13 = [array componentsJoinedByString:@" → "];

  return v13;
}

- (_PXSettingsIndexEntry)initWithRowAtIndexPath:(id)path inTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = _PXSettingsIndexEntry;
  v9 = [(_PXSettingsIndexEntry *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexPath, path);
    dataSource = [viewCopy dataSource];
    v12 = [dataSource tableView:viewCopy titleForHeaderInSection:{objc_msgSend(pathCopy, "section")}];
    sectionTitle = v10->_sectionTitle;
    v10->_sectionTitle = v12;

    v14 = [objc_opt_class() _titleForRowAtIndexPath:pathCopy inTableView:viewCopy];
    rowTitle = v10->_rowTitle;
    v10->_rowTitle = v14;
  }

  return v10;
}

+ (id)_titleForRowAtIndexPath:(id)path inTableView:(id)view
{
  v4 = [self _cellForRowAtIndexPath:path inTableView:view];
  textLabel = [v4 textLabel];
  text = [textLabel text];

  return text;
}

+ (id)_cellForRowAtIndexPath:(id)path inTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy scrollToRowAtIndexPath:pathCopy atScrollPosition:0 animated:0];
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (!v7)
  {
    dataSource = [viewCopy dataSource];
    v7 = [dataSource tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v7;
}

@end