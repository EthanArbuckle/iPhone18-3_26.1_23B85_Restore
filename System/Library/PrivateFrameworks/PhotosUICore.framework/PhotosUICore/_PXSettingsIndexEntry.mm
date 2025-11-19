@interface _PXSettingsIndexEntry
+ (id)_cellForRowAtIndexPath:(id)a3 inTableView:(id)a4;
+ (id)_titleForRowAtIndexPath:(id)a3 inTableView:(id)a4;
- (BOOL)matchesSearchString:(id)a3;
- (NSString)subtitle;
- (_PXSettingsIndexEntry)initWithRowAtIndexPath:(id)a3 inTableView:(id)a4;
- (_PXSettingsIndexEntry)parentEntry;
- (void)_revealInSettingsController:(id)a3 drillIn:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)_revealInTopOfSettingsController:(id)a3 drillIn:(BOOL)a4 withCompletionHandler:(id)a5;
@end

@implementation _PXSettingsIndexEntry

- (_PXSettingsIndexEntry)parentEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEntry);

  return WeakRetained;
}

- (void)_revealInTopOfSettingsController:(id)a3 drillIn:(BOOL)a4 withCompletionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 topViewController];
  v11 = [v10 tableView];
  v12 = [(_PXSettingsIndexEntry *)self indexPath];
  v13 = [v12 section];
  if (v13 > [v10 numberOfSectionsInTableView:v11])
  {
    goto LABEL_7;
  }

  v14 = [v12 row];
  if (v14 > [v10 tableView:v11 numberOfRowsInSection:{objc_msgSend(v12, "section")}])
  {
    goto LABEL_7;
  }

  [v11 scrollToRowAtIndexPath:v12 atScrollPosition:2 animated:0];
  v15 = [objc_opt_class() _titleForRowAtIndexPath:v12 inTableView:v11];
  v16 = [(_PXSettingsIndexEntry *)self rowTitle];
  v17 = [v15 isEqualToString:v16];

  if (!v17)
  {
    v20 = [(_PXSettingsIndexEntry *)self rowTitle];
    NSLog(&cfstr_SettingsSearch.isa, v12, v15, v20);

LABEL_7:
    v9[2](v9, 0);
    goto LABEL_8;
  }

  v18 = [objc_opt_class() _cellForRowAtIndexPath:v12 inTableView:v11];
  if (v6)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke;
    v26[3] = &unk_1E774A1B8;
    v19 = &v27;
    v27 = v11;
    v28 = v12;
    v29 = v10;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88___PXSettingsIndexEntry__revealInTopOfSettingsController_drillIn_withCompletionHandler___block_invoke_2;
    v24[3] = &unk_1E774C250;
    v25 = v9;
    [v8 px_performWithoutAnimations:v26 completionHandler:v24];
  }

  else
  {
    v9[2](v9, 1);
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

- (void)_revealInSettingsController:(id)a3 drillIn:(BOOL)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_PXSettingsIndexEntry *)self parentEntry];
  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83___PXSettingsIndexEntry__revealInSettingsController_drillIn_withCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E7731C70;
    v11 = &v17;
    v16[4] = self;
    v17 = v8;
    v19 = a4;
    v12 = &v18;
    v18 = v9;
    v13 = v9;
    [v10 _revealInSettingsController:v8 drillIn:1 withCompletionHandler:v16];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __83___PXSettingsIndexEntry__revealInSettingsController_drillIn_withCompletionHandler___block_invoke;
    v20[3] = &unk_1E7731C48;
    v11 = &v21;
    v20[4] = self;
    v21 = v8;
    v23 = a4;
    v12 = &v22;
    v22 = v9;
    v14 = v9;
    v15 = v8;
    [PXSystemNavigation navigateToDestination:7 completion:v20];
  }
}

- (BOOL)matchesSearchString:(id)a3
{
  v4 = a3;
  v5 = [(_PXSettingsIndexEntry *)self rowTitle];
  v6 = [v5 localizedStandardContainsString:v4];

  return v6;
}

- (NSString)subtitle
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_PXSettingsIndexEntry *)self parentEntry];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 sectionTitle];
      v7 = [v5 rowTitle];
      if ([v6 length])
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) %@", v6, v7];
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;
      [v3 insertObject:v8 atIndex:0];
      v10 = [v5 parentEntry];

      v5 = v10;
    }

    while (v10);
  }

  v11 = [(_PXSettingsIndexEntry *)self sectionTitle];
  if ([v11 length])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v11];
    [v3 addObject:v12];
  }

  v13 = [v3 componentsJoinedByString:@" → "];

  return v13;
}

- (_PXSettingsIndexEntry)initWithRowAtIndexPath:(id)a3 inTableView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _PXSettingsIndexEntry;
  v9 = [(_PXSettingsIndexEntry *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexPath, a3);
    v11 = [v8 dataSource];
    v12 = [v11 tableView:v8 titleForHeaderInSection:{objc_msgSend(v7, "section")}];
    sectionTitle = v10->_sectionTitle;
    v10->_sectionTitle = v12;

    v14 = [objc_opt_class() _titleForRowAtIndexPath:v7 inTableView:v8];
    rowTitle = v10->_rowTitle;
    v10->_rowTitle = v14;
  }

  return v10;
}

+ (id)_titleForRowAtIndexPath:(id)a3 inTableView:(id)a4
{
  v4 = [a1 _cellForRowAtIndexPath:a3 inTableView:a4];
  v5 = [v4 textLabel];
  v6 = [v5 text];

  return v6;
}

+ (id)_cellForRowAtIndexPath:(id)a3 inTableView:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 scrollToRowAtIndexPath:v5 atScrollPosition:0 animated:0];
  v7 = [v6 cellForRowAtIndexPath:v5];
  if (!v7)
  {
    v8 = [v6 dataSource];
    v7 = [v8 tableView:v6 cellForRowAtIndexPath:v5];
  }

  return v7;
}

@end