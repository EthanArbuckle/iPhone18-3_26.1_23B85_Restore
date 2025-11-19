@interface TTRIRecurrenceWeekdayChooserController
- (TTRIRecurrenceWeekdayChooserController)initWithDate:(id)a3;
- (id)cellForRow:(int64_t)a3;
- (int)_dayMask;
- (void)_setCell:(id)a3 selected:(BOOL)a4;
- (void)rowTapped:(int64_t)a3;
- (void)setDaysOfTheWeek:(id)a3;
- (void)updateFromRecurrenceRule:(id)a3;
- (void)updateRecurrenceRuleBuilder:(id)a3;
@end

@implementation TTRIRecurrenceWeekdayChooserController

- (TTRIRecurrenceWeekdayChooserController)initWithDate:(id)a3
{
  v15.receiver = self;
  v15.super_class = TTRIRecurrenceWeekdayChooserController;
  v3 = [(TTRIRecurrenceChooserController *)&v15 initWithDate:a3];
  v4 = v3;
  if (v3)
  {
    [(TTRIRecurrenceWeekdayChooserController *)v3 setDaysOfTheWeek:MEMORY[0x277CBEBF8]];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    selectedRows = v4->_selectedRows;
    v4->_selectedRows = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    cells = v4->_cells;
    v4->_cells = v7;

    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v10;
      v10 = [[TTRICustomRecurrenceTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];

      v12 = [(TTRIRecurrenceWeekdayChooserController *)v4 _calStringForDayOfWeek:v9];
      v13 = [(TTRICustomRecurrenceTableViewCell *)v10 textLabel];
      [v13 setText:v12];

      [(NSMutableArray *)v4->_cells addObject:v10];
      ++v9;
    }

    while (v9 != 7);
  }

  return v4;
}

- (void)setDaysOfTheWeek:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_daysOfTheWeek != v5)
  {
    objc_storeStrong(&self->_daysOfTheWeek, a3);
    [(NSMutableArray *)self->_selectedRows removeAllObjects];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          selectedRows = self->_selectedRows;
          v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v13 + 1) + 8 * v10), "dayOfTheWeek", v13) - 1}];
          [(NSMutableArray *)selectedRows addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)cellForRow:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:?];
  selectedRows = self->_selectedRows;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(TTRIRecurrenceWeekdayChooserController *)self _setCell:v5 selected:[(NSMutableArray *)selectedRows containsObject:v7]];

  return v5;
}

- (void)rowTapped:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  selectedRows = self->_selectedRows;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableArray *)selectedRows containsObject:v6];

  if ([(NSMutableArray *)self->_selectedRows count]!= 1 || (v7 & 1) == 0)
  {
    v8 = self->_selectedRows;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    if (v7)
    {
      [(NSMutableArray *)v8 removeObject:v9];
    }

    else
    {
      [(NSMutableArray *)v8 addObject:v9];
    }

    v10 = [(TTRIRecurrenceWeekdayChooserController *)self cellForRow:a3];
    [(TTRIRecurrenceWeekdayChooserController *)self _setCell:v10 selected:v7 ^ 1u];

    v11 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_selectedRows;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277D44718] dayOfWeek:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "integerValue", v18) + 1}];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(TTRIRecurrenceWeekdayChooserController *)self setDaysOfTheWeek:v11];
    [(TTRIRecurrenceChooserController *)self notifyDelegate];
  }
}

- (void)updateRecurrenceRuleBuilder:(id)a3
{
  v4 = a3;
  [v4 setDays:{-[TTRIRecurrenceWeekdayChooserController _dayMask](self, "_dayMask")}];
}

- (void)updateFromRecurrenceRule:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 daysOfTheWeek];

  if (v5)
  {
    v6 = [v4 daysOfTheWeek];
    [(TTRIRecurrenceWeekdayChooserController *)self setDaysOfTheWeek:v6];
  }

  else
  {
    v6 = [(TTRIRecurrenceChooserController *)self startDateComponents:512];
    v7 = [MEMORY[0x277D44718] dayOfWeek:{objc_msgSend(v6, "weekday")}];
    v9[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(TTRIRecurrenceWeekdayChooserController *)self setDaysOfTheWeek:v8];
  }
}

- (void)_setCell:(id)a3 selected:(BOOL)a4
{
  if (a4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [a3 setAccessoryType:v5];
}

- (int)_dayMask
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TTRIRecurrenceWeekdayChooserController *)self daysOfTheWeek];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= +[TTRIRecurrenceChooserController dayFromNumber:](TTRIRecurrenceChooserController, "dayFromNumber:", [*(*(&v9 + 1) + 8 * i) dayOfTheWeek]);
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end