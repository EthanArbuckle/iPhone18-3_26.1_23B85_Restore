@interface NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController
- (NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController)init;
- (id)_alertActionForMaterialRecipe:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)loadView;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
@end

@implementation NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController

- (NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController)init
{
  v5.receiver = self;
  v5.super_class = NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController;
  v2 = [(NCSupplementaryViewPrototypeRecipeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCSupplementaryViewPrototypeRecipeViewController *)v2 updateConfiguration:&__block_literal_global_37];
  }

  return v3;
}

void __79__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75348];
  v3 = a2;
  v4 = [v2 systemWhiteColor];
  v5 = [v4 colorWithAlphaComponent:0.4];
  [v3 setTintColor:v5];

  v6 = [MEMORY[0x277D75348] systemBlackColor];
  [v3 setTextColor:v6];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  [(UITableView *)self->_tableView setScrollEnabled:0];
  v5 = self->_tableView;

  [(NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController *)self setView:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"cell"];
    v8 = [MEMORY[0x277D75348] clearColor];
    [v7 setBackgroundColor:v8];

    [v7 setSelectionStyle:0];
  }

  if ([v6 row] > 2)
  {
    v13 = @"2 Auxiliary Options Without Title";
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v6 row] + 1;
    v11 = [v6 row];
    v12 = @"s";
    if (!v11)
    {
      v12 = &stru_282FE84F8;
    }

    v13 = [v9 stringWithFormat:@"%lu Auxiliary Option%@", v10, v12];
  }

  v14 = [v7 textLabel];
  [v14 setText:v13];

  v15 = [v7 textLabel];
  v16 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v17 = [v16 textColor];
  [v15 setTextColor:v17];

  return v7;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 cellForRowAtIndexPath:v5];
  [v7 setSelected:0];

  v8 = [v6 cellForRowAtIndexPath:v5];

  [v8 setAccessoryType:0];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"header", a4}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"header"];
  }

  v6 = [v5 textLabel];
  [v6 setText:@"Select Number of Auxiliary Option Buttons"];

  v7 = [v5 textLabel];
  v8 = [(NCSupplementaryViewPrototypeRecipeViewController *)self configuration];
  v9 = [v8 textColor];
  [v7 setTextColor:v9];

  return v5;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v5 = MEMORY[0x277D75348];
  v6 = a3;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 cellForRowAtIndexPath:v6];
  [v8 setSelected:1];

  v9 = [v7 cellForRowAtIndexPath:v6];

  [v9 setAccessoryType:3];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v15 = &unk_278372BC0;
  v16 = self;
  v17 = v6;
  v10 = v6;
  [(NCSupplementaryViewPrototypeRecipeViewController *)self updateConfiguration:&v12];
  v11 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate:v12];
  [v11 notificationListBaseComponentDidSignificantUserInteraction:self];
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 40) row];
  if (v4 <= 1)
  {
    if (!v4)
    {
      v9 = [*(a1 + 32) configuration];
      [v9 materialRecipe];
      v10 = MTStringFromMaterialRecipe();

      v11 = MEMORY[0x277D750C8];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v32[3] = &unk_278372C10;
      objc_copyWeak(&v35, &location);
      v32[4] = *(a1 + 32);
      v12 = v3;
      v33 = v12;
      v13 = v10;
      v34 = v13;
      v14 = [v11 actionWithTitle:@"Change Material" image:0 identifier:0 handler:v32];
      v39[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      [v12 setAuxiliaryOptionActions:v15];

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Change Material? Current Material is %@", v13];
      [v12 setAuxiliaryOptionsSummaryText:v16];

      objc_destroyWeak(&v35);
      goto LABEL_13;
    }

    if (v4 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v17 = MEMORY[0x277D750C8];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_301;
    v28[3] = &unk_27836F428;
    objc_copyWeak(&v29, &location);
    v18 = [v17 actionWithTitle:@"Keep" image:0 identifier:0 handler:v28];
    v37[0] = v18;
    v19 = MEMORY[0x277D750C8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
    v26[3] = &unk_278371940;
    objc_copyWeak(&v27, &location);
    v26[4] = *(a1 + 32);
    v20 = [v19 actionWithTitle:@"Remove" image:0 identifier:0 handler:v26];
    v37[1] = v20;
    v21 = MEMORY[0x277D750C8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5;
    v24[3] = &unk_27836F428;
    objc_copyWeak(&v25, &location);
    v22 = [v21 actionWithTitle:@"Noop" image:0 identifier:0 handler:v24];
    v37[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [v3 setAuxiliaryOptionActions:v23];

    [v3 setAuxiliaryOptionsSummaryText:@"Keep or remove?"];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    goto LABEL_13;
  }

  if (v4 == 3)
  {
LABEL_7:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_287;
    aBlock[3] = &unk_27836F428;
    objc_copyWeak(&v31, &location);
    v5 = _Block_copy(aBlock);
    v6 = [MEMORY[0x277D750C8] actionWithTitle:@"Configure Tint Color" image:0 identifier:0 handler:v5];
    v38[0] = v6;
    v7 = [MEMORY[0x277D750C8] actionWithTitle:@"Configure Text Color" image:0 identifier:0 handler:v5];
    v38[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [v3 setAuxiliaryOptionActions:v8];

    if ([*(a1 + 40) row] == 3)
    {
      [v3 setAuxiliaryOptionsSummaryText:0];
    }

    else
    {
      [v3 setAuxiliaryOptionsSummaryText:@"Configure the colors?"];
    }

    objc_destroyWeak(&v31);
  }

LABEL_13:
  objc_destroyWeak(&location);
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v4 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Select Material" message:0 preferredStyle:0];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [&unk_2830157E8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(&unk_2830157E8);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [*(a1 + 32) _alertActionForMaterialRecipe:{objc_msgSend(v9, "integerValue")}];
          [v4 addAction:v10];
          v11 = [*(a1 + 40) materialRecipe];
          if (v11 == [v9 integerValue])
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current Material: %@", *(a1 + 48)];
            [v4 setMessage:v12];
          }
        }

        v6 = [&unk_2830157E8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v13 = [MEMORY[0x277D750F8] actionWithTitle:@"Dismiss" style:1 handler:0];
    [v4 addAction:v13];
    v3 = v15;
    [v15 presentViewController:v4 animated:1 completion:0];
    v14 = [v15 delegate];
    [v14 notificationListBaseComponentDidSignificantUserInteraction:v15];
  }
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_287(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75360]);
    v5 = [v4 view];
    [v5 setTag:0];

    v6 = [v13 title];
    [v4 setTitle:v6];

    [v4 setDelegate:WeakRetained];
    v7 = [v13 title];
    LOBYTE(v6) = [v7 isEqualToString:@"Configure Tint Color"];
    v8 = [WeakRetained configuration];
    v9 = v8;
    if (v6)
    {
      [v8 tintColor];
    }

    else
    {
      [v8 textColor];
    }
    v10 = ;

    if (v10)
    {
      [v4 setSelectedColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] whiteColor];
      [v4 setSelectedColor:v11];
    }

    [WeakRetained presentViewController:v4 animated:1 completion:0];
    v12 = [WeakRetained delegate];
    [v12 notificationListBaseComponentDidSignificantUserInteraction:WeakRetained];
  }
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_301(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateConfiguration:&__block_literal_global_303];
    v2 = [v3 delegate];
    [v2 notificationListBaseComponentDidSignificantUserInteraction:v3];

    WeakRetained = v3;
  }
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAuxiliaryOptionActions:0];
  [v2 setAuxiliaryOptionsSummaryText:0];
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 requestsRemovalForPrototypeRecipeViewController:*(a1 + 32)];
    [v3 notificationListBaseComponentDidSignificantUserInteraction:v4];

    WeakRetained = v4;
  }
}

void __109__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 notificationListBaseComponentDidSignificantUserInteraction:v3];

    WeakRetained = v3;
  }
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v6 = a3;
  v7 = [(NCSupplementaryViewPrototypeRecipeViewController *)self delegate];
  [v7 notificationListBaseComponentDidSignificantUserInteraction:self];

  v8 = [v6 title];
  v9 = [v8 isEqualToString:@"Configure Tint Color"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __129__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_colorPickerViewController_didSelectColor_continuously___block_invoke;
  v11[3] = &unk_278372C38;
  v14 = v9;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [(NCSupplementaryViewPrototypeRecipeViewController *)self updateConfiguration:v11];
}

void __129__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController_colorPickerViewController_didSelectColor_continuously___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) selectedColor];
  v5 = NilColorIfTransparent(v4);

  if (*(a1 + 48) == 1)
  {
    [v3 setTintColor:v5];
  }

  else
  {
    [v3 setTextColor:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(*(a1 + 40) + 1024) visibleCells];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) textLabel];
          [v11 setTextColor:v5];

          v12 = [*(*(a1 + 40) + 1024) headerViewForSection:0];
          v13 = [v12 textLabel];
          [v13 setTextColor:v5];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (id)_alertActionForMaterialRecipe:(int64_t)a3
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D750F8];
  v5 = MTStringFromMaterialRecipe();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController__alertActionForMaterialRecipe___block_invoke;
  v8[3] = &unk_278372C80;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
  v6 = [v4 actionWithTitle:v5 style:0 handler:v8];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);

  return v6;
}

void __105__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController__alertActionForMaterialRecipe___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __105__NCSupplementaryViewPrototypeRecipeContentAuxiliaryOptionsViewController__alertActionForMaterialRecipe___block_invoke_2;
    v4[3] = &__block_descriptor_40_e65_v16__0__NCNotificationListMutableSupplementaryViewConfiguration_8l;
    v4[4] = *(a1 + 40);
    [WeakRetained updateConfiguration:v4];
  }
}

@end