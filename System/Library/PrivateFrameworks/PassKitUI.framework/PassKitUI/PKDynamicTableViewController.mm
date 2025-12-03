@interface PKDynamicTableViewController
- (BOOL)hasSectionForSectionIdentifier:(id)identifier;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKDynamicTableViewController)init;
- (PKDynamicTableViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_computeSectionControllerMap:(id)map;
- (id)cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)indexOfSectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadData:(BOOL)data;
- (void)_sortMappedSectionIdentifiers:(id)identifiers;
- (void)recomputeMappedSectionsAndReloadSections:(id)sections sectionIdentifiers:(id)identifiers updates:(id)updates;
- (void)reloadRow:(int64_t)row inSectionWithSectionIdentifier:(id)identifier;
- (void)reloadRows:(id)rows inSectionWithSectionIdentifier:(id)identifier;
- (void)reloadSectionIdentifier:(id)identifier;
- (void)reloadSectionIdentifiers:(id)identifiers updates:(id)updates;
- (void)setSectionControllers:(id)controllers sectionIdentifiers:(id)identifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKDynamicTableViewController

- (PKDynamicTableViewController)init
{
  pkui_groupedStyleDefaultRoundedCornerBehavior = [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior];

  return [(PKDynamicTableViewController *)self initWithStyle:pkui_groupedStyleDefaultRoundedCornerBehavior];
}

- (PKDynamicTableViewController)initWithStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = PKDynamicTableViewController;
  return [(PKDynamicTableViewController *)&v4 initWithStyle:style];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKDynamicTableViewController;
  [(PKDynamicTableViewController *)&v4 viewDidLoad];
  tableView = [(PKDynamicTableViewController *)self tableView];
  [tableView pkui_setupForReadableContentGuide];
}

- (void)setSectionControllers:(id)controllers sectionIdentifiers:(id)identifiers
{
  objc_storeStrong(&self->_sectionControllers, controllers);
  identifiersCopy = identifiers;
  v7 = [(PKDynamicTableViewController *)self _computeSectionControllerMap:identifiersCopy];

  [(PKDynamicTableViewController *)self _sortMappedSectionIdentifiers:v7];
  [(PKDynamicTableViewController *)self _reloadData:0];
}

- (void)_reloadData:(BOOL)data
{
  dataCopy = data;
  if ([(PKDynamicTableViewController *)self isViewLoaded])
  {
    tableView = [(PKDynamicTableViewController *)self tableView];
    [tableView setEditing:0 animated:dataCopy];
    tableView2 = [(PKDynamicTableViewController *)self tableView];
    [tableView2 reloadData];
  }
}

- (void)reloadSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(PKDynamicTableViewController *)self isViewLoaded])
  {
    v4 = [(PKDynamicTableViewController *)self indexOfSectionIdentifier:identifierCopy];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      tableView = [(PKDynamicTableViewController *)self tableView];
      v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
      [tableView reloadSections:v7 withRowAnimation:{-[PKDynamicTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", v5)}];
    }
  }
}

- (void)reloadSectionIdentifiers:(id)identifiers updates:(id)updates
{
  identifiersCopy = identifiers;
  updatesCopy = updates;
  if (-[PKDynamicTableViewController isViewLoaded](self, "isViewLoaded") && [identifiersCopy count])
  {
    tableView = [(PKDynamicTableViewController *)self tableView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKDynamicTableViewController_reloadSectionIdentifiers_updates___block_invoke;
    v10[3] = &unk_1E801AA50;
    v14 = updatesCopy;
    v11 = identifiersCopy;
    selfCopy = self;
    v13 = tableView;
    v9 = tableView;
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

- (void)reloadRow:(int64_t)row inSectionWithSectionIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  identifierCopy = identifier;
  v8 = [v6 numberWithInteger:row];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PKDynamicTableViewController *)self reloadRows:v9 inSectionWithSectionIdentifier:identifierCopy];
}

- (id)cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(PKDynamicTableViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

  return v6;
}

- (void)reloadRows:(id)rows inSectionWithSectionIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  identifierCopy = identifier;
  if ([(PKDynamicTableViewController *)self isViewLoaded])
  {
    v8 = [(PKDynamicTableViewController *)self indexOfSectionIdentifier:identifierCopy];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = rowsCopy;
      v11 = rowsCopy;
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

      tableView = [(PKDynamicTableViewController *)self tableView];
      [tableView reloadRowsAtIndexPaths:v10 withRowAnimation:{-[PKDynamicTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", v9)}];

      rowsCopy = v18;
    }
  }
}

- (id)_computeSectionControllerMap:(id)map
{
  v33 = *MEMORY[0x1E69E9840];
  mapCopy = map;
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
        sectionIdentifiers = [v8 sectionIdentifiers];
        v10 = [sectionIdentifiers countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(sectionIdentifiers);
              }

              v14 = *(*(&v23 + 1) + 8 * j);
              [(NSMutableDictionary *)self->_sectionControllerMap setObject:v8 forKey:v14];
              [v6 addObject:v14];
            }

            v11 = [sectionIdentifiers countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v11);
        }
      }

      v22 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  v15 = mapCopy;
  v16 = mapCopy;
  if (!mapCopy)
  {
    v16 = [v6 copy];
  }

  objc_storeStrong(&self->_orderOfSectionIdentifiers, v16);
  if (!mapCopy)
  {
  }

  v17 = [v6 copy];

  return v17;
}

- (void)_sortMappedSectionIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
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
        if ([identifiersCopy containsObject:{v12, v13}])
        {
          [(NSMutableArray *)self->_sectionItems addObject:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)recomputeMappedSectionsAndReloadSections:(id)sections sectionIdentifiers:(id)identifiers updates:(id)updates
{
  sectionsCopy = sections;
  identifiersCopy = identifiers;
  updatesCopy = updates;
  if ([(PKDynamicTableViewController *)self isViewLoaded]&& self->_sectionItems)
  {
    tableView = [(PKDynamicTableViewController *)self tableView];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__PKDynamicTableViewController_recomputeMappedSectionsAndReloadSections_sectionIdentifiers_updates___block_invoke;
    v13[3] = &unk_1E801AA78;
    v17 = updatesCopy;
    v13[4] = self;
    v14 = identifiersCopy;
    v15 = sectionsCopy;
    v16 = tableView;
    v12 = tableView;
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

- (BOOL)hasSectionForSectionIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_sectionControllerMap objectForKey:identifier];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)indexOfSectionIdentifier:(id)identifier
{
  v4 = [(NSMutableArray *)self->_sectionItems indexOfObject:identifier];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    tableView = [(PKDynamicTableViewController *)self tableView];
    numberOfSections = [tableView numberOfSections];

    if (v6 < numberOfSections)
    {
      return v6;
    }
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sectionItems = self->_sectionItems;
  viewCopy = view;
  v8 = [(NSMutableArray *)sectionItems objectAtIndexedSubscript:section];
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  v10 = [v9 tableView:viewCopy numberOfRowsInSectionIdentifier:v8];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sectionItems = self->_sectionItems;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSMutableArray objectAtIndexedSubscript:](sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v10 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v9];
  v11 = [v10 tableView:viewCopy cellForRowAtIndexPath:pathCopy sectionIdentifier:v9];

  return v11;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [v8 tableView:viewCopy viewForHeaderInSectionIdentifier:v7];
  if (!v9)
  {
    v11 = [(PKDynamicTableViewController *)self tableView:viewCopy titleForHeaderInSection:section];
    v12 = [v11 length];

    if (v12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
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

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [v8 tableView:viewCopy viewForFooterInSectionIdentifier:v7];
  if (!v9)
  {
    v11 = [(PKDynamicTableViewController *)self tableView:viewCopy titleForFooterInSection:section];
    v12 = [v11 length];

    if (v12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    [v9 tableView:viewCopy heightForRowAtIndexPath:pathCopy sectionIdentifier:v8];
    v11 = v10;
  }

  else
  {
    v11 = *MEMORY[0x1E69DE3D0];
  }

  return v11;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 tableView:viewCopy heightForHeaderInSectionIdentifier:v7];
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x1E69DE3D0];
  }

  return v10;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 tableView:viewCopy heightForFooterInSectionIdentifier:v7];
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x1E69DE3D0];
  }

  return v10;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v6];
  if (objc_opt_respondsToSelector())
  {
    [v7 estimatedHeightForRowAtIndexPath:pathCopy sectionIdentifier:v6];
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x1E69DE3D0];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v8 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v7];
  if (objc_opt_respondsToSelector())
  {
    [v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy sectionIdentifier:v7];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:viewCopy canEditRowAtIndexPath:pathCopy sectionIdentifier:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 editingStyleForRowAtIndexPath:pathCopy sectionIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:viewCopy shouldHighlightRowAtIndexPath:pathCopy sectionIdentifier:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)tableView:(id)view shouldDrawTopSeparatorForSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
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

- (BOOL)tableView:(id)view shouldDrawBottomSeparatorForSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sectionItems objectAtIndexedSubscript:section];
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

- (id)tableView:(id)view leadingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:viewCopy leadingSwipeActionsConfigurationForRowAtIndexPath:pathCopy sectionIdentifier:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v8];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 tableView:viewCopy trailingSwipeActionsConfigurationForRowAtIndexPath:pathCopy sectionIdentifier:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_sectionItems, "objectAtIndexedSubscript:", [pathCopy section]);
  v12 = [(PKDynamicTableViewController *)self _sectionControllerForSectionIdentifier:v11];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 tableView:viewCopy contextMenuConfigurationForRowAtIndexPath:pathCopy point:v11 sectionIdentifier:{x, y}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end