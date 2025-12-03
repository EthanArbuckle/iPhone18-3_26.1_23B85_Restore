@interface NCSupplementaryViewPrototypeRecipeContentTintingViewController
- (NCSupplementaryViewPrototypeRecipeContentTintingViewController)init;
- (id)_initWithGroupingIdentifier:(id)identifier stackSubordinate:(BOOL)subordinate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_enumerateStack:(id)stack;
- (void)_setTextColor:(id)color;
- (void)_setTintColor:(id)color;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
@end

@implementation NCSupplementaryViewPrototypeRecipeContentTintingViewController

- (NCSupplementaryViewPrototypeRecipeContentTintingViewController)init
{
  v3 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 stringWithFormat:@"color-config-%@", uUIDString];

  v7 = [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)self _initWithGroupingIdentifier:v6 stackSubordinate:0];
  return v7;
}

- (id)_initWithGroupingIdentifier:(id)identifier stackSubordinate:(BOOL)subordinate
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = NCSupplementaryViewPrototypeRecipeContentTintingViewController;
  v7 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_stackSubordinate = subordinate;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __111__NCSupplementaryViewPrototypeRecipeContentTintingViewController__initWithGroupingIdentifier_stackSubordinate___block_invoke;
    v10[3] = &unk_278372B98;
    v11 = identifierCopy;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] && objc_msgSend(pathCopy, "row") != 1)
  {
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"add-stack"];
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

    textLabel = [v9 textLabel];
    [textLabel setText:@"Add stack"];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:clearColor];
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"color-well"];
    if (v8)
    {
      v9 = v8;
      contentView = [v8 contentView];
      subviews = [contentView subviews];
      firstObject = [subviews firstObject];

      [firstObject removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"color-well"];
      v16 = objc_alloc(MEMORY[0x277D75368]);
      contentView2 = [v9 contentView];
      [contentView2 frame];
      firstObject = [v16 initWithFrame:{CGRectGetMaxX(v45) + -50.0, 0.0, 50.0, 50.0}];

      contentView3 = [v9 contentView];
      [contentView3 addSubview:firstObject];
    }

    v19 = [pathCopy row];
    v20 = v19 == 0;
    v21 = @"Text Color";
    if (!v19)
    {
      v21 = @"Tint Color";
    }

    v22 = v21;
    textLabel2 = [v9 textLabel];
    [textLabel2 setText:v22];

    [firstObject setTitle:v22];
    configuration = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
    v25 = configuration;
    if (v19)
    {
      [configuration textColor];
    }

    else
    {
      [configuration tintColor];
    }
    v26 = ;
    [firstObject setSelectedColor:v26];

    objc_initWeak(&location, self);
    v27 = MEMORY[0x277D750C8];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __98__NCSupplementaryViewPrototypeRecipeContentTintingViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v39 = &unk_278370538;
    objc_copyWeak(&v41, &location);
    clearColor = firstObject;
    v40 = clearColor;
    v42 = v20;
    v29 = [v27 actionWithTitle:v22 image:0 identifier:0 handler:&v36];
    [clearColor addAction:v29 forControlEvents:{4096, v36, v37, v38, v39}];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  [v9 setSelectionStyle:0];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:clearColor2];

  textLabel3 = [v9 textLabel];
  configuration2 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  textColor = [configuration2 textColor];
  [textLabel3 setTextColor:textColor];

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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"header", section}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"header"];
  }

  [(NSPointerArray *)self->_weakStackViewControllers unui_compact];
  textLabel = [v5 textLabel];
  v7 = MEMORY[0x277CCACA8];
  v8 = &stru_282FE84F8;
  if (!self->_stackSubordinate && [(NSPointerArray *)self->_weakStackViewControllers count])
  {
    v8 = @": Controls All Stack";
  }

  v9 = [v7 stringWithFormat:@"Color Configuration%@", v8];
  [textLabel setText:v9];

  textLabel2 = [v5 textLabel];
  configuration = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  textColor = [configuration textColor];
  [textLabel2 setTextColor:textColor];

  return v5;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  v5 = MEMORY[0x277D75348];
  viewCopy = view;
  clearColor = [v5 clearColor];
  [viewCopy setBackgroundColor:clearColor];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] == 2)
  {
    v5 = pathCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if ([path row] == 2)
  {
    v5 = 3;
    do
    {
      v6 = [NCSupplementaryViewPrototypeRecipeContentTintingViewController alloc];
      configuration = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
      groupingIdentifier = [configuration groupingIdentifier];
      v9 = [(NCSupplementaryViewPrototypeRecipeContentTintingViewController *)v6 _initWithGroupingIdentifier:groupingIdentifier stackSubordinate:1];

      delegate = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
      configuration2 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
      groupingIdentifier2 = [configuration2 groupingIdentifier];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __100__NCSupplementaryViewPrototypeRecipeContentTintingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v18[3] = &unk_278372BC0;
      v13 = groupingIdentifier2;
      v19 = v13;
      selfCopy = self;
      [v9 updateConfiguration:v18];
      [v9 setDelegate:delegate];
      [delegate requestsInsertForPrototypeRecipeViewController:v9];
      [delegate notificationListBaseComponentDidSignificantUserInteraction:self];
      weakStackViewControllers = self->_weakStackViewControllers;
      if (weakStackViewControllers)
      {
        weakObjectsPointerArray = weakStackViewControllers;
      }

      else
      {
        weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      }

      v16 = self->_weakStackViewControllers;
      self->_weakStackViewControllers = weakObjectsPointerArray;

      [(NSPointerArray *)self->_weakStackViewControllers addPointer:v9];
      v17 = [MEMORY[0x277CBEAA8] now];
      [(NCSupplementaryViewPrototypeRecipeViewController *)self setDateModified:v17];

      [(UITableView *)self->_tableView reloadData];
      [delegate requestsUpdatePositionIfNeededForPrototypeRecipeViewController:self];

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

- (void)_setTextColor:(id)color
{
  v28 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  visibleCells = [(UITableView *)self->_tableView visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        textLabel = [*(*(&v23 + 1) + 8 * v9) textLabel];
        configuration = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
        textColor = [configuration textColor];
        [textLabel setTextColor:textColor];

        ++v9;
      }

      while (v7 != v9);
      v7 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v13 = [(UITableView *)self->_tableView headerViewForSection:0];
  textLabel2 = [v13 textLabel];
  configuration2 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  textColor2 = [configuration2 textColor];
  [textLabel2 setTextColor:textColor2];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__NCSupplementaryViewPrototypeRecipeContentTintingViewController__setTextColor___block_invoke;
  v21[3] = &unk_278372B98;
  v17 = colorCopy;
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

- (void)_setTintColor:(id)color
{
  colorCopy = color;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__NCSupplementaryViewPrototypeRecipeContentTintingViewController__setTintColor___block_invoke;
  v9[3] = &unk_278372B98;
  v5 = colorCopy;
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

- (void)_enumerateStack:(id)stack
{
  stackCopy = stack;
  [(NSPointerArray *)self->_weakStackViewControllers unui_compact];
  if ([(NSPointerArray *)self->_weakStackViewControllers count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSPointerArray *)self->_weakStackViewControllers pointerAtIndex:v4];
      if (v5)
      {
        stackCopy[2](stackCopy, v5);
      }

      ++v4;
    }

    while (v4 < [(NSPointerArray *)self->_weakStackViewControllers count]);
  }
}

@end