@interface PKDynamicTableViewController
- (BOOL)hasSectionForSectionIdentifier:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKDynamicTableViewController)init;
- (PKDynamicTableViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_computeSectionControllerMap:(id)a3;
- (id)cellForRowAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 leadingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)indexOfSectionIdentifier:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadData:(BOOL)a3;
- (void)_sortMappedSectionIdentifiers:(id)a3;
- (void)recomputeMappedSectionsAndReloadSections:(id)a3 sectionIdentifiers:(id)a4 updates:(id)a5;
- (void)reloadRow:(int64_t)a3 inSectionWithSectionIdentifier:(id)a4;
- (void)reloadRows:(id)a3 inSectionWithSectionIdentifier:(id)a4;
- (void)reloadSectionIdentifier:(id)a3;
- (void)reloadSectionIdentifiers:(id)a3 updates:(id)a4;
- (void)setSectionControllers:(id)a3 sectionIdentifiers:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKDynamicTableViewController

- (PKDynamicTableViewController)init
{
  v3 = [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior];

  return [(PKDynamicTableViewController *)self initWithStyle:v3];
}

- (PKDynamicTableViewController)initWithStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKDynamicTableViewController;
  return [(PKDynamicTableViewController *)&v4 initWithStyle:a3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKDynamicTableViewController;
  [(PKDynamicTableViewController *)&v4 viewDidLoad];
  v3 = [(PKDynamicTableViewController *)self tableView];
  [v3 pkui_setupForReadableContentGuide];
}

- (void)setSectionControllers:(id)a3 sectionIdentifiers:(id)a4
{
  objc_storeStrong(&self->_sectionControllers, a3);
  v6 = a4;
  v7 = [(PKDynamicTableViewController *)self _computeSectionControllerMap:v6];

  [(PKDynamicTableViewController *)self _sortMappedSectionIdentifiers:v7];
  [(PKDynamicTableViewController *)self _reloadData:0];
}

- (void)_reloadData:(BOOL)a3
{
  v3 = a3;
  if ([(PKDynamicTableViewController *)self isViewLoaded])
  {
    v6 = [(PKDynamicTableViewController *)self tableView];
    [v6 setEditing:0 animated:v3];
    v5 = [(PKDynamicTableViewController *)self tableView];
    [v5 reloadData];
  }
}

- (void)reloadSectionIdentifier:(id)a3
{
  v8 = a3;
  if ([(PKDynamicTableViewController *)self isViewLoaded])
  {
    v4 = [(PKDynamicTableViewController *)self indexOfSectionIdentifier:v8];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      v6 = [(PKDynamicTableViewController *)self tableView];
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
      [v6 reloadSections:v7 withRowAnimation:{-[PKDynamicTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", v5)}];
    }
  }
}

- (void)reloadSectionIdentifiers:(id)a3 updates:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PKDynamicTableViewController isViewLoaded](self, "isViewLoaded") && [v6 count])
  {
    v8 = [(PKDynamicTableViewController *)self tableView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKDynamicTableViewController_reloadSectionIdentifiers_updates___block_invoke;
    v10[3] = &unk_1E801AA50;
    v14 = v7;
    v11 = v6;
    v12 = self;
    v13 = v8;
    v9 = v8;
    [v9 performBatchUpdates:v10 completion:0];
  }
}

void __65__PKDynamicTableViewController_reloadSectionIdentifiers_updates___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) indexOfSectionIdentifier:{*(*(&v12 + 1) + 8 * v7), v12}];
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = v8;
          v10 = *(a1 + 48);
          v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
          [v10 reloadSections:v11 withRowAnimation:{objc_msgSend(*(a1 + 40), "rowAnimationForReloadingSection:", v9)}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)reloadRow:(int64_t)a3 inSectionWithSectionIdentifier:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PKDynamicTableViewController *)self reloadRows:v9 inSectionWithSectionIdentifier:v7];
}

- (id)cellForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PKDynamicTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  return v6;
}

- (void)reloadRows:(id)a3 inSectionWithSectionIdentifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PKDynamicTableViewController *)self isViewLoaded])
  {
    v8 = [(PKDynamicTableViewController *)self indexOfSectionIdentifier:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v6;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(&v19 + 1) + 8 * v15) inSection:{"integerValue"), v9}];
            [v10 addObject:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      v17 = [(PKDynamicTableViewController *)self tableView];
      [v17 reloadRowsAtIndexPaths:v10 withRowAnimation:{-[PKDynamicTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", v9)}];

      v6 = v18;
    }
  }
}

- (id)_computeSectionControllerMap:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sectionControllerMap = self->_sectionControllerMap;
  self->_sectionControllerMap = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_sectionControllers;
  v22 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [v8 sectionIdentifiers];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * j);
              [(NSMutableDictionary *)self->_sectionControllerMap setObject:v8 forKey:v14];
              [v6 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v11);
        }
      }

      v22 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  v15 = v19;
  v16 = v19;
  if (!v19)
  {
    v16 = [v6 copy];
  }

  objc_storeStrong(&self->_orderOfSectionIdentifiers, v16);
  if (!v19)
  {
  }

  v17 = [v6 copy];

  return v17;
}

- (void)_sortMappedSectionIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  sectionItems = self->_sectionItems;
  self->_sectionItems = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_orderOfSectionIdentifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v4 containsObject:{v12, v13}])
        {
          [(NSMutableArray *)self->_sectionItems addObject:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)recomputeMappedSectionsAndReloadSections:(id)a3 sectionIdentifiers:(id)a4 updates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDynamicTableViewController *)self isViewLoaded]&& self->_sectionItems)
  {
    v11 = [(PKDynamicTableViewController *)self tableView];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__PKDynamicTableViewController_recomputeMappedSectionsAndReloadSections_sectionIdentifiers_updates___block_invoke;
    v13[3] = &unk_1E801AA78;
    v17 = v10;
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    v16 = v11;
    v12 = v11;
    [v12 performBatchUpdates:v13 completion:0];
  }
}

void __100__PKDynamicTableViewController_recomputeMappedSectionsAndReloadSections_sectionIdentifiers_updates___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(*(a1 + 32) + 1048) copy];
  v4 = *(a1 + 32);
  v5 = [v4 _computeSectionControllerMap:*(a1 + 40)];
  [v4 _sortMappedSectionIdentifiers:v5];

  v6 = [*(*(a1 + 32) + 1048) copy];
  v34 = [*(a1 + 48) mutableCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          v13 = [v7 indexOfObject:v12];
          v14 = *(a1 + 56);
          v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:v13];
          [v14 deleteSections:v15 withRowAnimation:{objc_msgSend(*(a1 + 32), "rowAnimationForDeletingSection:", v13)}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v9);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v39 + 1) + 8 * j);
        if (([v7 containsObject:v21] & 1) == 0)
        {
          v22 = [v16 indexOfObject:v21];
          v23 = *(a1 + 56);
          v24 = [MEMORY[0x1E696AC90] indexSetWithIndex:v22];
          [v23 insertSections:v24 withRowAnimation:{objc_msgSend(*(a1 + 32), "rowAnimationForDeletingSection:", v22)}];

          [v34 removeObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v34;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * k);
        if ([v7 containsObject:v30] && objc_msgSend(v16, "containsObject:", v30))
        {
          v31 = [v7 indexOfObject:v30];
          v32 = *(a1 + 56);
          v33 = [MEMORY[0x1E696AC90] indexSetWithIndex:v31];
          [v32 reloadSections:v33 withRowAnimation:{objc_msgSend(*(a1 + 32), "rowAnimationForInsertingSection:", v31)}];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v27);
  }
}

- (BOOL)hasSectionForSectionIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sectionControllerMap objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)indexOfSectionIdentifier:(id)a3
{
  v4 = [(NSMutableArray *)self->_sectionItems indexOfObject:a3];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = [(PKDynamicTableViewController *)self tableView];
    v8 = [v7 numberOfSections];

    if (v6 < v8)
    {
      return v6;
    }
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  sectionItems = self->_sectionItems;
  v7 = a3;
  v8 = [(NSMutableArray *)sectionItems objectAtIndexedSubscript:a4];
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  v10 = [v9 tableView:v7 numberOfRowsInSectionIdentifier:v8];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  sectionItems = self->_sectionItems;
  v7 = a4;
  v8 = a3;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](sectionItems, "objectAtIndexedSubscript:", [v7 section]);
  v10 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v9];
  v11 = [v10 tableView:v8 cellForRowAtIndexPath:v7 sectionIdentifier:v9];

  return v11;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v6 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 titleForHeaderInSectionIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v6 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 titleForFooterInSectionIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [v8 tableView:v6 viewForHeaderInSectionIdentifier:v7];
  if (!v9)
  {
    v11 = [(PKDynamicTableViewController *)self tableView:v6 titleForHeaderInSection:a4];
    v12 = [v11 length];

    if (v12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:@"default"];
    }
  }

  v10 = v9;
LABEL_7:
  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9840]];
LABEL_8:

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [v8 tableView:v6 viewForFooterInSectionIdentifier:v7];
  if (!v9)
  {
    v11 = [(PKDynamicTableViewController *)self tableView:v6 titleForFooterInSection:a4];
    v12 = [v11 length];

    if (v12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:@"default"];
    }
  }

  v10 = v9;
LABEL_7:
  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
LABEL_8:

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    [v9 tableView:v6 heightForRowAtIndexPath:v7 sectionIdentifier:v8];
    v11 = v10;
  }

  else
  {
    v11 = *MEMORY[0x1E69DE3D0];
  }

  return v11;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 tableView:v6 heightForHeaderInSectionIdentifier:v7];
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x1E69DE3D0];
  }

  return v10;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 tableView:v6 heightForFooterInSectionIdentifier:v7];
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x1E69DE3D0];
  }

  return v10;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v6];
  if (objc_opt_respondsToSelector())
  {
    [v7 estimatedHeightForRowAtIndexPath:v5 sectionIdentifier:v6];
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x1E69DE3D0];
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v6 section]);
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 tableView:v9 didSelectRowAtIndexPath:v6 sectionIdentifier:v7];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:v6 canEditRowAtIndexPath:v7 sectionIdentifier:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 editingStyleForRowAtIndexPath:v5 sectionIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:v6 shouldHighlightRowAtIndexPath:v7 sectionIdentifier:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)tableView:(id)a3 shouldDrawTopSeparatorForSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v6 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldDrawTopSeparatorForSectionIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)tableView:(id)a3 shouldDrawBottomSeparatorForSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:a4];
  v6 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldDrawBottomSeparatorForSectionIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 leadingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:v6 leadingSwipeActionsConfigurationForRowAtIndexPath:v7 sectionIdentifier:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v7 section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:v6 trailingSwipeActionsConfigurationForRowAtIndexPath:v7 sectionIdentifier:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [v10 section]);
  v12 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v11];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 tableView:v9 contextMenuConfigurationForRowAtIndexPath:v10 point:v11 sectionIdentifier:{x, y}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end