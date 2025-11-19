@interface STCustomizeDaysListController
- (STCustomizeDaysListController)init;
- (STCustomizeDaysListControllerDelegate)delegate;
- (id)_localizedDayNames;
- (id)_localizedDayOrder;
- (id)budgetTime:(id)a3;
- (id)datePickerForSpecifier:(id)a3;
- (id)specifiers;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)a3;
- (void)datePickerChanged:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation STCustomizeDaysListController

- (STCustomizeDaysListController)init
{
  v6.receiver = self;
  v6.super_class = STCustomizeDaysListController;
  v2 = [(STCustomizeDaysListController *)&v6 init];
  if (v2)
  {
    v3 = +[STScreenTimeSettingsUIBundle bundle];
    v4 = [v3 localizedStringForKey:@"AllowanceCustomizeDaysSpecifierName" value:&stru_28766E5A8 table:0];
    [(STCustomizeDaysListController *)v2 setTitle:v4];
  }

  return v2;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(STCustomizeDaysListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(STCustomizeDaysListController *)self timeByDay];
    [v5 customizeDaysListController:self didFinishEditingTimeByDay:v6];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCustomizeDaysListController.viewWillDisappear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STCustomizeDaysListController;
  [(STCustomizeDaysListController *)&v7 viewWillDisappear:v3];
}

- (id)_localizedDayOrder
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 firstWeekday];

  for (i = 8; i > 1; --i)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    [v2 addObject:v6];

    if ((v4 + 1) <= 7)
    {
      ++v4;
    }

    else
    {
      v4 = 1;
    }
  }

  v7 = [v2 copy];

  return v7;
}

- (id)_localizedDayNames
{
  v2 = objc_opt_new();
  [v2 setFormattingContext:3];
  v3 = [v2 standaloneWeekdaySymbols];

  return v3;
}

- (id)specifiers
{
  v2 = self;
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v25 = *MEMORY[0x277D3FC48];
    [(STCustomizeDaysListController *)v2 setSelectedDaySpecifier:0];
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:v2 set:0 get:0 detail:0 cell:4 edit:0];
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    [v4 setIdentifier:v6];

    v7 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v8 = [v7 numberWithDouble:?];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40140]];

    [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v24 = v4;
    [(STCustomizeDaysListController *)v2 setTimePickerSpecifier:v4];
    v9 = [(STCustomizeDaysListController *)v2 _localizedDayNames];
    v10 = [(STCustomizeDaysListController *)v2 _localizedDayOrder];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        v15 = 0;
        do
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v27 + 1) + 8 * v15) unsignedIntegerValue];
          v17 = [v9 objectAtIndex:v16 - 1];
          [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v17 target:v2 set:0 get:sel_budgetTime_ detail:0 cell:4 edit:0];
          v19 = v18 = v2;
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
          [v19 setUserInfo:v20];

          [v11 addObject:v19];
          v2 = v18;

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v21 = [v11 copy];
    v22 = *(&v2->super.super.super.super.super.isa + v25);
    *(&v2->super.super.super.super.super.isa + v25) = v21;

    v3 = *(&v2->super.super.super.super.super.isa + v25);
  }

  return v3;
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)a3
{
  v24 = a3;
  v4 = *MEMORY[0x277D40148];
  v5 = [v24 objectForKeyedSubscript:*MEMORY[0x277D40148]];
  v6 = [(STCustomizeDaysListController *)self selectedDaySpecifier];

  if (v6 == v24)
  {
    v19 = [MEMORY[0x277D75348] tableCellGrayTextColor];
    v20 = [v5 detailTextLabel];
    [v20 setTextColor:v19];

    v21 = [(STCustomizeDaysListController *)self timePickerSpecifier];
    [(STCustomizeDaysListController *)self removeSpecifier:v21 animated:1];

    v22 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    v23 = [v22 identifier];
    [(STCustomizeDaysListController *)self highlightSpecifierWithID:v23];

    [(STCustomizeDaysListController *)self setSelectedDaySpecifier:0];
  }

  else
  {
    v7 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    v8 = [v7 objectForKeyedSubscript:v4];

    v9 = [v5 detailTextLabel];
    v10 = [v9 textColor];
    v11 = [v8 detailTextLabel];
    [v11 setTextColor:v10];

    v12 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v13 = [v5 detailTextLabel];
    [v13 setTextColor:v12];

    [(STCustomizeDaysListController *)self setSelectedDaySpecifier:v24];
    v14 = [(STCustomizeDaysListController *)self timePickerSpecifier];
    [(STCustomizeDaysListController *)self removeSpecifier:v14 animated:1];

    v15 = [(STCustomizeDaysListController *)self timePickerSpecifier];
    v16 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    [(STCustomizeDaysListController *)self insertSpecifier:v15 afterSpecifier:v16 animated:1];

    v17 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    v18 = [v17 identifier];
    [(STCustomizeDaysListController *)self highlightSpecifierWithID:v18];
  }
}

- (id)budgetTime:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [(STCustomizeDaysListController *)self timeByDay];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [STAllowance timeIntervalForAllowanceDateComponents:v6];
    v8 = v7;
    v9 = objc_opt_new();
    [v9 setFormattingContext:1];
    [v9 setUnitsStyle:2];
    [v9 setAllowedUnits:96];
    v10 = [v9 stringFromTimeInterval:v8];
  }

  else
  {
    v10 = &stru_28766E5A8;
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STCustomizeDaysListController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  v10 = [(STCustomizeDaysListController *)self timePickerSpecifier];

  if (v9 != v10)
  {
    [(STCustomizeDaysListController *)self _showOrHidePickerSpecifierForSpecifier:v9];
  }

  v11.receiver = self;
  v11.super_class = STCustomizeDaysListController;
  [(STCustomizeDaysListController *)&v11 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)datePickerChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 calendar];
  v6 = [v4 date];

  v17 = [v5 components:96 fromDate:v6];

  v7 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
  v8 = [v7 userInfo];

  v9 = [(STCustomizeDaysListController *)self timeByDay];
  v10 = [v9 mutableCopy];

  [v10 setObject:v17 forKeyedSubscript:v8];
  v11 = [v10 copy];
  [(STCustomizeDaysListController *)self setTimeByDay:v11];

  v12 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
  [(STCustomizeDaysListController *)self reloadSpecifier:v12];

  v13 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D40148]];

  v15 = [MEMORY[0x277D75348] tableCellBlueTextColor];
  v16 = [v14 detailTextLabel];
  [v16 setTextColor:v15];
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = MEMORY[0x277D753E8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setPreferredDatePickerStyle:1];
  [v7 setDatePickerMode:3];
  [v7 _setAllowsZeroCountDownDuration:1];
  v8 = objc_opt_new();
  v9 = [(STCustomizeDaysListController *)self timePickerSpecifier];

  if (v9 == v5)
  {
    v10 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    v11 = [v10 userInfo];

    v12 = [(STCustomizeDaysListController *)self timeByDay];
    v13 = [v12 objectForKeyedSubscript:v11];

    if (v13)
    {
      v14 = v13;

      v8 = v14;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [STCustomizeDaysListController datePickerForSpecifier:];
  }

  v15 = [v7 calendar];
  v16 = [v15 dateFromComponents:v8];
  [v7 setDate:v16 animated:1];

  return v7;
}

- (STCustomizeDaysListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end