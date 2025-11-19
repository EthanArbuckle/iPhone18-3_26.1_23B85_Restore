@interface UIPrintOptionListViewController
- (UIPrintOptionListDelegate)listDelegate;
- (UIPrintOptionListViewController)initWithListDelegate:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation UIPrintOptionListViewController

- (UIPrintOptionListViewController)initWithListDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIPrintOptionListViewController;
  v5 = [(UIPrintOptionListViewController *)&v9 initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    [(UIPrintOptionListViewController *)v5 setListDelegate:v4];
    v7 = [v4 itemList];
    [(UIPrintOptionListViewController *)v6 setItemList:v7];
  }

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(UIPrintOptionListViewController *)self itemList];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(UIPrintOptionListViewController *)self itemList];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 count];
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PrintOptionListViewCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"PrintOptionListViewCell"];
  }

  v8 = [(UIPrintOptionListViewController *)self itemList];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

  v11 = [MEMORY[0x277D756E0] cellConfiguration];
  v12 = [v10 objectForKey:@"Title"];
  [v11 setText:v12];

  v13 = [v10 objectForKey:@"Image"];
  [v11 setImage:v13];

  v14 = [v10 objectForKey:@"SubTitle"];
  [v11 setSecondaryText:v14];

  v15 = [MEMORY[0x277D75348] secondaryLabelColor];
  v16 = [v11 secondaryTextProperties];
  [v16 setColor:v15];

  [v7 setContentConfiguration:v11];
  v17 = [(UIPrintOptionListViewController *)self listDelegate];
  LOBYTE(v16) = objc_opt_respondsToSelector();

  v18 = [(UIPrintOptionListViewController *)self listDelegate];
  v19 = v18;
  if (v16)
  {
    v20 = [v18 selectedItems];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = *v32;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v31 + 1) + 8 * i);
          v26 = [v6 section];
          if (v26 == [v25 section])
          {
            v27 = [v6 row];
            if (v27 == [v25 row])
            {
              LODWORD(v22) = 1;
              goto LABEL_19;
            }
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
    v21 = [v18 selectedItem];

    if (v21 && (v28 = [v6 section], v28 == objc_msgSend(v21, "section")))
    {
      v22 = [v6 row];
      LODWORD(v22) = v22 == [v21 row];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(UIPrintOptionListViewController *)self listDelegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) != 0 && (-[UIPrintOptionListViewController listDelegate](self, "listDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 listItemSelected:v6], v9, v10) || (-[UIPrintOptionListViewController navigationController](self, "navigationController"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "topViewController"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12 != self))
  {
    [v15 reloadData];
  }

  else
  {
    v13 = [(UIPrintOptionListViewController *)self navigationController];
    v14 = [v13 popViewControllerAnimated:1];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(UIPrintOptionListViewController *)self listDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UIPrintOptionListViewController *)self listDelegate];
    v9 = [v8 titleForHeaderInSection:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(UIPrintOptionListViewController *)self listDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UIPrintOptionListViewController *)self listDelegate];
    v9 = [v8 titleForFooterInSection:a4];
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