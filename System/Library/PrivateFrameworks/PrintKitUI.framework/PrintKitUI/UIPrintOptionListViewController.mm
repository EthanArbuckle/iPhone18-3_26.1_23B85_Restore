@interface UIPrintOptionListViewController
- (UIPrintOptionListDelegate)listDelegate;
- (UIPrintOptionListViewController)initWithListDelegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation UIPrintOptionListViewController

- (UIPrintOptionListViewController)initWithListDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = UIPrintOptionListViewController;
  v5 = [(UIPrintOptionListViewController *)&v9 initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    [(UIPrintOptionListViewController *)v5 setListDelegate:delegateCopy];
    itemList = [delegateCopy itemList];
    [(UIPrintOptionListViewController *)v6 setItemList:itemList];
  }

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  itemList = [(UIPrintOptionListViewController *)self itemList];
  v4 = [itemList count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  itemList = [(UIPrintOptionListViewController *)self itemList];
  v6 = [itemList objectAtIndex:section];

  v7 = [v6 count];
  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PrintOptionListViewCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"PrintOptionListViewCell"];
  }

  itemList = [(UIPrintOptionListViewController *)self itemList];
  v9 = [itemList objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  v12 = [v10 objectForKey:@"Title"];
  [cellConfiguration setText:v12];

  v13 = [v10 objectForKey:@"Image"];
  [cellConfiguration setImage:v13];

  v14 = [v10 objectForKey:@"SubTitle"];
  [cellConfiguration setSecondaryText:v14];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  [v7 setContentConfiguration:cellConfiguration];
  listDelegate = [(UIPrintOptionListViewController *)self listDelegate];
  LOBYTE(secondaryTextProperties) = objc_opt_respondsToSelector();

  listDelegate2 = [(UIPrintOptionListViewController *)self listDelegate];
  v19 = listDelegate2;
  if (secondaryTextProperties)
  {
    selectedItems = [listDelegate2 selectedItems];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    selectedItem = selectedItems;
    v22 = [selectedItem countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = *v32;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(selectedItem);
          }

          v25 = *(*(&v31 + 1) + 8 * i);
          section = [pathCopy section];
          if (section == [v25 section])
          {
            v27 = [pathCopy row];
            if (v27 == [v25 row])
            {
              LODWORD(v22) = 1;
              goto LABEL_19;
            }
          }
        }

        v22 = [selectedItem countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    selectedItem = [listDelegate2 selectedItem];

    if (selectedItem && (v28 = [pathCopy section], v28 == objc_msgSend(selectedItem, "section")))
    {
      v22 = [pathCopy row];
      LODWORD(v22) = v22 == [selectedItem row];
    }

    else
    {
      LODWORD(v22) = 0;
    }
  }

  if (v22)
  {
    v29 = 3;
  }

  else
  {
    v29 = 0;
  }

  [v7 setAccessoryType:{v29, v31}];
  [v7 setSelectionStyle:3];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  listDelegate = [(UIPrintOptionListViewController *)self listDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) != 0 && (-[UIPrintOptionListViewController listDelegate](self, "listDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 listItemSelected:pathCopy], v9, v10) || (-[UIPrintOptionListViewController navigationController](self, "navigationController"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "topViewController"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12 != self))
  {
    [viewCopy reloadData];
  }

  else
  {
    navigationController = [(UIPrintOptionListViewController *)self navigationController];
    v14 = [navigationController popViewControllerAnimated:1];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  listDelegate = [(UIPrintOptionListViewController *)self listDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    listDelegate2 = [(UIPrintOptionListViewController *)self listDelegate];
    v9 = [listDelegate2 titleForHeaderInSection:section];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  listDelegate = [(UIPrintOptionListViewController *)self listDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    listDelegate2 = [(UIPrintOptionListViewController *)self listDelegate];
    v9 = [listDelegate2 titleForFooterInSection:section];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIPrintOptionListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

@end