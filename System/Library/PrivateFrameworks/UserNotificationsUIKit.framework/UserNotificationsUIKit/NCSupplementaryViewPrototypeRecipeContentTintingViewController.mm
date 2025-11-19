@interface NCSupplementaryViewPrototypeRecipeContentTintingViewController
- (NCSupplementaryViewPrototypeRecipeContentTintingViewController)init;
- (id)_initWithGroupingIdentifier:(id)a3 stackSubordinate:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_enumerateStack:(id)a3;
- (void)_setTextColor:(id)a3;
- (void)_setTintColor:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
@end

@implementation NCSupplementaryViewPrototypeRecipeContentTintingViewController

- (NCSupplementaryViewPrototypeRecipeContentTintingViewController)init
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringWithFormat:@"color-config-%@", v5];

  v7 = [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)self _initWithGroupingIdentifier:v6 stackSubordinate:0];
  return v7;
}

- (id)_initWithGroupingIdentifier:(id)a3 stackSubordinate:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NCSupplementaryViewPrototypeRecipeContentTintingViewController;
  v7 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_stackSubordinate = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __111__NCSupplementaryViewPrototypeRecipeContentTintingViewController__initWithGroupingIdentifier_stackSubordinate___block_invoke;
    v10[3] = &unk_278372B98;
    v11 = v6;
    [(NCSupplementaryViewPrototypeRecipeViewController *)v8 updateConfiguration:v10];
  }

  return v8;
}

void __111__NCSupplementaryViewPrototypeRecipeContentTintingViewController__initWithGroupingIdentifier_stackSubordinate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75348];
  v7 = a2;
  v4 = [v3 blackColor];
  v5 = [v4 colorWithAlphaComponent:1.0];
  [v7 setTintColor:v5];

  v6 = [MEMORY[0x277D75348] whiteColor];
  [v7 setTextColor:v6];

  [v7 setGroupingIdentifier:*(a1 + 32)];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  v5 = self->_tableView;

  [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)self setView:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row] && objc_msgSend(v7, "row") != 1)
  {
    v13 = [v6 dequeueReusableCellWithIdentifier:@"add-stack"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"add-stack"];
    }

    v9 = v15;

    v30 = [v9 textLabel];
    [v30 setText:@"Add stack"];

    v28 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v28];
  }

  else
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"color-well"];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 contentView];
      v11 = [v10 subviews];
      v12 = [v11 firstObject];

      [v12 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"color-well"];
      v16 = objc_alloc(MEMORY[0x277D75368]);
      v17 = [v9 contentView];
      [v17 frame];
      v12 = [v16 initWithFrame:{CGRectGetMaxX(v45) + -50.0, 0.0, 50.0, 50.0}];

      v18 = [v9 contentView];
      [v18 addSubview:v12];
    }

    v19 = [v7 row];
    v20 = v19 == 0;
    v21 = @"Text Color";
    if (!v19)
    {
      v21 = @"Tint Color";
    }

    v22 = v21;
    v23 = [v9 textLabel];
    [v23 setText:v22];

    [v12 setTitle:v22];
    v24 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
    v25 = v24;
    if (v19)
    {
      [v24 textColor];
    }

    else
    {
      [v24 tintColor];
    }
    v26 = ;
    [v12 setSelectedColor:v26];

    objc_initWeak(&location, self);
    v27 = MEMORY[0x277D750C8];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __98__NCSupplementaryViewPrototypeRecipeContentTintingViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v39 = &unk_278370538;
    objc_copyWeak(&v41, &location);
    v28 = v12;
    v40 = v28;
    v42 = v20;
    v29 = [v27 actionWithTitle:v22 image:0 identifier:0 handler:&v36];
    [v28 addAction:v29 forControlEvents:{4096, v36, v37, v38, v39}];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  [v9 setSelectionStyle:0];
  v31 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v31];

  v32 = [v9 textLabel];
  v33 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v34 = [v33 textColor];
  [v32 setTextColor:v34];

  return v9;
}

void __98__NCSupplementaryViewPrototypeRecipeContentTintingViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) selectedColor];
    v4 = NilColorIfTransparent(v3);

    if (*(a1 + 48) == 1)
    {
      [v6 _setTintColor:v4];
    }

    else
    {
      [v6 _setTextColor:v4];
    }

    v5 = [v6 delegate];
    [v5 notificationListBaseComponentDidSignificantUserInteraction:v6];

    WeakRetained = v6;
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"header", a4}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"header"];
  }

  [(NSPointerArray *)self->_weakStackViewControllers unui_compact];
  v6 = [v5 textLabel];
  v7 = MEMORY[0x277CCACA8];
  v8 = &stru_282FE84F8;
  if (!self->_stackSubordinate && [(NSPointerArray *)self->_weakStackViewControllers count])
  {
    v8 = @": Controls All Stack";
  }

  v9 = [v7 stringWithFormat:@"Color Configuration%@", v8];
  [v6 setText:v9];

  v10 = [v5 textLabel];
  v11 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v12 = [v11 textColor];
  [v10 setTextColor:v12];

  return v5;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v5 = MEMORY[0x277D75348];
  v6 = a3;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 row] == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if ([a4 row] == 2)
  {
    v5 = 3;
    do
    {
      v6 = [NCSupplementaryViewPrototypeRecipeContentTintingViewController alloc];
      v7 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
      v8 = [v7 groupingIdentifier];
      v9 = [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)v6 _initWithGroupingIdentifier:v8 stackSubordinate:1];

      v10 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
      v11 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
      v12 = [v11 groupingIdentifier];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __100__NCSupplementaryViewPrototypeRecipeContentTintingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v18[3] = &unk_278372BC0;
      v13 = v12;
      v19 = v13;
      v20 = self;
      [v9 updateConfiguration:v18];
      [v9 setDelegate:v10];
      [v10 requestsInsertForPrototypeRecipeViewController:v9];
      [v10 notificationListBaseComponentDidSignificantUserInteraction:self];
      weakStackViewControllers = self->_weakStackViewControllers;
      if (weakStackViewControllers)
      {
        v15 = weakStackViewControllers;
      }

      else
      {
        v15 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      }

      v16 = self->_weakStackViewControllers;
      self->_weakStackViewControllers = v15;

      [(NSPointerArray *)self->_weakStackViewControllers addPointer:v9];
      v17 = [MEMORY[0x277CBEAA8] now];
      [(NCSupplementaryViewPrototypeRecipeViewController *)self setDateModified:v17];

      [(UITableView *)self->_tableView reloadData];
      [v10 requestsUpdatePositionIfNeededForPrototypeRecipeViewController:self];

      --v5;
    }

    while (v5);
  }
}

void __100__NCSupplementaryViewPrototypeRecipeContentTintingViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGroupingIdentifier:v3];
  [v4 setGroupName:*(a1 + 32)];
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 tintColor];
  [v4 setTintColor:v6];

  v8 = [*(a1 + 40) configuration];
  v7 = [v8 textColor];
  [v4 setTextColor:v7];
}

- (void)_setTextColor:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(UITableView *)self->_tableView visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * v9) textLabel];
        v11 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
        v12 = [v11 textColor];
        [v10 setTextColor:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v13 = [(UITableView *)self->_tableView headerViewForSection:0];
  v14 = [v13 textLabel];
  v15 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v16 = [v15 textColor];
  [v14 setTextColor:v16];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__NCSupplementaryViewPrototypeRecipeContentTintingViewController__setTextColor___block_invoke;
  v21[3] = &unk_278372B98;
  v17 = v4;
  v22 = v17;
  [(NCSupplementaryViewPrototypeRecipeViewController *)self updateConfiguration:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__NCSupplementaryViewPrototypeRecipeContentTintingViewController__setTextColor___block_invoke_2;
  v19[3] = &unk_278372BE8;
  v20 = v17;
  v18 = v17;
  [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)self _enumerateStack:v19];
}

- (void)_setTintColor:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__NCSupplementaryViewPrototypeRecipeContentTintingViewController__setTintColor___block_invoke;
  v9[3] = &unk_278372B98;
  v5 = v4;
  v10 = v5;
  [(NCSupplementaryViewPrototypeRecipeViewController *)self updateConfiguration:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NCSupplementaryViewPrototypeRecipeContentTintingViewController__setTintColor___block_invoke_2;
  v7[3] = &unk_278372BE8;
  v8 = v5;
  v6 = v5;
  [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)self _enumerateStack:v7];
}

- (void)_enumerateStack:(id)a3
{
  v6 = a3;
  [(NSPointerArray *)self->_weakStackViewControllers unui_compact];
  if ([(NSPointerArray *)self->_weakStackViewControllers count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSPointerArray *)self->_weakStackViewControllers pointerAtIndex:v4];
      if (v5)
      {
        v6[2](v6, v5);
      }

      ++v4;
    }

    while (v4 < [(NSPointerArray *)self->_weakStackViewControllers count]);
  }
}

@end