@interface STCustomizeDaysListController
- (STCustomizeDaysListController)init;
- (STCustomizeDaysListControllerDelegate)delegate;
- (id)_localizedDayNames;
- (id)_localizedDayOrder;
- (id)budgetTime:(id)time;
- (id)datePickerForSpecifier:(id)specifier;
- (id)specifiers;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier;
- (void)datePickerChanged:(id)changed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(STCustomizeDaysListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    timeByDay = [(STCustomizeDaysListController *)self timeByDay];
    [delegate customizeDaysListController:self didFinishEditingTimeByDay:timeByDay];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STCustomizeDaysListController.viewWillDisappear", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = STCustomizeDaysListController;
  [(STCustomizeDaysListController *)&v7 viewWillDisappear:disappearCopy];
}

- (id)_localizedDayOrder
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstWeekday = [currentCalendar firstWeekday];

  for (i = 8; i > 1; --i)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:firstWeekday];
    [v2 addObject:v6];

    if ((firstWeekday + 1) <= 7)
    {
      ++firstWeekday;
    }

    else
    {
      firstWeekday = 1;
    }
  }

  v7 = [v2 copy];

  return v7;
}

- (id)_localizedDayNames
{
  v2 = objc_opt_new();
  [v2 setFormattingContext:3];
  standaloneWeekdaySymbols = [v2 standaloneWeekdaySymbols];

  return standaloneWeekdaySymbols;
}

- (id)specifiers
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v25 = *MEMORY[0x277D3FC48];
    [(STCustomizeDaysListController *)selfCopy setSelectedDaySpecifier:0];
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28766E5A8 target:selfCopy set:0 get:0 detail:0 cell:4 edit:0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setIdentifier:uUIDString];

    v7 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F9E0] preferredHeight];
    v8 = [v7 numberWithDouble:?];
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40140]];

    [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v24 = v4;
    [(STCustomizeDaysListController *)selfCopy setTimePickerSpecifier:v4];
    _localizedDayNames = [(STCustomizeDaysListController *)selfCopy _localizedDayNames];
    _localizedDayOrder = [(STCustomizeDaysListController *)selfCopy _localizedDayOrder];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(_localizedDayNames, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = _localizedDayOrder;
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

          unsignedIntegerValue = [*(*(&v27 + 1) + 8 * v15) unsignedIntegerValue];
          v17 = [_localizedDayNames objectAtIndex:unsignedIntegerValue - 1];
          [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v17 target:selfCopy set:0 get:sel_budgetTime_ detail:0 cell:4 edit:0];
          v19 = v18 = selfCopy;
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
          [v19 setUserInfo:v20];

          [v11 addObject:v19];
          selfCopy = v18;

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v21 = [v11 copy];
    v22 = *(&selfCopy->super.super.super.super.super.isa + v25);
    *(&selfCopy->super.super.super.super.super.isa + v25) = v21;

    v3 = *(&selfCopy->super.super.super.super.super.isa + v25);
  }

  return v3;
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = *MEMORY[0x277D40148];
  v5 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40148]];
  selectedDaySpecifier = [(STCustomizeDaysListController *)self selectedDaySpecifier];

  if (selectedDaySpecifier == specifierCopy)
  {
    tableCellGrayTextColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
    detailTextLabel = [v5 detailTextLabel];
    [detailTextLabel setTextColor:tableCellGrayTextColor];

    timePickerSpecifier = [(STCustomizeDaysListController *)self timePickerSpecifier];
    [(STCustomizeDaysListController *)self removeSpecifier:timePickerSpecifier animated:1];

    selectedDaySpecifier2 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    identifier = [selectedDaySpecifier2 identifier];
    [(STCustomizeDaysListController *)self highlightSpecifierWithID:identifier];

    [(STCustomizeDaysListController *)self setSelectedDaySpecifier:0];
  }

  else
  {
    selectedDaySpecifier3 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    v8 = [selectedDaySpecifier3 objectForKeyedSubscript:v4];

    detailTextLabel2 = [v5 detailTextLabel];
    textColor = [detailTextLabel2 textColor];
    detailTextLabel3 = [v8 detailTextLabel];
    [detailTextLabel3 setTextColor:textColor];

    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    detailTextLabel4 = [v5 detailTextLabel];
    [detailTextLabel4 setTextColor:tableCellBlueTextColor];

    [(STCustomizeDaysListController *)self setSelectedDaySpecifier:specifierCopy];
    timePickerSpecifier2 = [(STCustomizeDaysListController *)self timePickerSpecifier];
    [(STCustomizeDaysListController *)self removeSpecifier:timePickerSpecifier2 animated:1];

    timePickerSpecifier3 = [(STCustomizeDaysListController *)self timePickerSpecifier];
    selectedDaySpecifier4 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    [(STCustomizeDaysListController *)self insertSpecifier:timePickerSpecifier3 afterSpecifier:selectedDaySpecifier4 animated:1];

    selectedDaySpecifier5 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    identifier2 = [selectedDaySpecifier5 identifier];
    [(STCustomizeDaysListController *)self highlightSpecifierWithID:identifier2];
  }
}

- (id)budgetTime:(id)time
{
  userInfo = [time userInfo];
  timeByDay = [(STCustomizeDaysListController *)self timeByDay];
  v6 = [timeByDay objectForKeyedSubscript:userInfo];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STCustomizeDaysListController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  timePickerSpecifier = [(STCustomizeDaysListController *)self timePickerSpecifier];

  if (v9 != timePickerSpecifier)
  {
    [(STCustomizeDaysListController *)self _showOrHidePickerSpecifierForSpecifier:v9];
  }

  v11.receiver = self;
  v11.super_class = STCustomizeDaysListController;
  [(STCustomizeDaysListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  calendar = [changedCopy calendar];
  date = [changedCopy date];

  v17 = [calendar components:96 fromDate:date];

  selectedDaySpecifier = [(STCustomizeDaysListController *)self selectedDaySpecifier];
  userInfo = [selectedDaySpecifier userInfo];

  timeByDay = [(STCustomizeDaysListController *)self timeByDay];
  v10 = [timeByDay mutableCopy];

  [v10 setObject:v17 forKeyedSubscript:userInfo];
  v11 = [v10 copy];
  [(STCustomizeDaysListController *)self setTimeByDay:v11];

  selectedDaySpecifier2 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
  [(STCustomizeDaysListController *)self reloadSpecifier:selectedDaySpecifier2];

  selectedDaySpecifier3 = [(STCustomizeDaysListController *)self selectedDaySpecifier];
  v14 = [selectedDaySpecifier3 objectForKeyedSubscript:*MEMORY[0x277D40148]];

  tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
  detailTextLabel = [v14 detailTextLabel];
  [detailTextLabel setTextColor:tableCellBlueTextColor];
}

- (id)datePickerForSpecifier:(id)specifier
{
  v4 = MEMORY[0x277D753E8];
  specifierCopy = specifier;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setPreferredDatePickerStyle:1];
  [v7 setDatePickerMode:3];
  [v7 _setAllowsZeroCountDownDuration:1];
  v8 = objc_opt_new();
  timePickerSpecifier = [(STCustomizeDaysListController *)self timePickerSpecifier];

  if (timePickerSpecifier == specifierCopy)
  {
    selectedDaySpecifier = [(STCustomizeDaysListController *)self selectedDaySpecifier];
    userInfo = [selectedDaySpecifier userInfo];

    timeByDay = [(STCustomizeDaysListController *)self timeByDay];
    v13 = [timeByDay objectForKeyedSubscript:userInfo];

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

  calendar = [v7 calendar];
  v16 = [calendar dateFromComponents:v8];
  [v7 setDate:v16 animated:1];

  return v7;
}

- (STCustomizeDaysListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end