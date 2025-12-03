@interface TTRIRecurrenceMonthDayChooserController
- (TTRIRecurrenceMonthDayChooserController)initWithDate:(id)date;
- (id)cellLabels;
- (id)daysOfTheMonth;
- (void)prepareForDisplay;
- (void)refreshCells;
- (void)selectCell:(id)cell atIndex:(int64_t)index;
- (void)setDaysOfTheMonth:(id)month;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence;
- (void)updateFromRecurrenceRule:(id)rule;
- (void)updateRecurrenceRuleBuilder:(id)builder;
@end

@implementation TTRIRecurrenceMonthDayChooserController

- (TTRIRecurrenceMonthDayChooserController)initWithDate:(id)date
{
  v7.receiver = self;
  v7.super_class = TTRIRecurrenceMonthDayChooserController;
  v3 = [(TTRIRecurrenceChooserController *)&v7 initWithDate:date];
  if (v3)
  {
    v4 = objc_opt_new();
    daysOfTheMonthSet = v3->_daysOfTheMonthSet;
    v3->_daysOfTheMonthSet = v4;
  }

  return v3;
}

- (id)daysOfTheMonth
{
  allObjects = [(NSMutableSet *)self->_daysOfTheMonthSet allObjects];
  v3 = [allObjects sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (void)setDaysOfTheMonth:(id)month
{
  v6 = [MEMORY[0x277CBEB98] setWithArray:month];
  v4 = [v6 mutableCopy];
  daysOfTheMonthSet = self->_daysOfTheMonthSet;
  self->_daysOfTheMonthSet = v4;
}

- (void)updateRecurrenceRuleBuilder:(id)builder
{
  builderCopy = builder;
  daysOfTheMonth = [(TTRIRecurrenceMonthDayChooserController *)self daysOfTheMonth];
  [builderCopy setDayNumbers:daysOfTheMonth];
}

- (void)updateFromRecurrenceRule:(id)rule
{
  ruleCopy = rule;
  daysOfTheMonth = [ruleCopy daysOfTheMonth];

  if (daysOfTheMonth)
  {
    daysOfTheMonth2 = [ruleCopy daysOfTheMonth];
    [(TTRIRecurrenceMonthDayChooserController *)self setDaysOfTheMonth:daysOfTheMonth2];

    [(TTRIRecurrenceMonthDayChooserController *)self refreshCells];
  }
}

- (id)cellLabels
{
  if (cellLabels_onceToken_0 != -1)
  {
    [TTRIRecurrenceMonthDayChooserController cellLabels];
  }

  v3 = cellLabels___cellLabels_0;

  return v3;
}

void __53__TTRIRecurrenceMonthDayChooserController_cellLabels__block_invoke()
{
  v0 = objc_opt_new();
  for (i = 1; i != 32; ++i)
  {
    v2 = CUIKLocalizedStringForInteger();
    [v0 addObject:v2];
  }

  v3 = cellLabels___cellLabels_0;
  cellLabels___cellLabels_0 = v0;
}

- (void)prepareForDisplay
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (![(NSMutableSet *)self->_daysOfTheMonthSet count])
  {
    v3 = [(TTRIRecurrenceChooserController *)self startDateComponents:16];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "day")}];
    v6[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [(TTRIRecurrenceMonthDayChooserController *)self setDaysOfTheMonth:v5];
  }
}

- (void)refreshCells
{
  allCells = [(TTRIRecurrenceGridChooserController *)self allCells];
  if ([allCells count])
  {
    v3 = 0;
    do
    {
      v4 = [allCells objectAtIndexedSubscript:v3];
      daysOfTheMonthSet = self->_daysOfTheMonthSet;
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:++v3];
      v7 = [(NSMutableSet *)daysOfTheMonthSet containsObject:v6];

      [v4 setSelected:v7];
    }

    while (v3 < [allCells count]);
  }
}

- (void)selectCell:(id)cell atIndex:(int64_t)index
{
  v11[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  if (-[NSMutableSet count](self->_daysOfTheMonthSet, "count") != 1 || ([cellCopy selected] & 1) == 0)
  {
    [cellCopy setSelected:{objc_msgSend(cellCopy, "selected") ^ 1}];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:index + 1];
    if ([cellCopy selected] && -[TTRIRecurrenceMonthDayChooserController prohibitsMultipleDaysInMonthlyRecurrence](self, "prohibitsMultipleDaysInMonthlyRecurrence"))
    {
      v11[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [(TTRIRecurrenceMonthDayChooserController *)self setDaysOfTheMonth:v8];

      [(TTRIRecurrenceMonthDayChooserController *)self refreshCells];
    }

    else
    {
      selected = [cellCopy selected];
      daysOfTheMonthSet = self->_daysOfTheMonthSet;
      if (selected)
      {
        [(NSMutableSet *)daysOfTheMonthSet addObject:v7];
      }

      else
      {
        [(NSMutableSet *)daysOfTheMonthSet removeObject:v7];
      }
    }

    [(TTRIRecurrenceChooserController *)self notifyDelegate];
  }
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self->_prohibitsMultipleDaysInMonthlyRecurrence != recurrence)
  {
    self->_prohibitsMultipleDaysInMonthlyRecurrence = recurrence;
    if (recurrence)
    {
      daysOfTheMonth = [(TTRIRecurrenceMonthDayChooserController *)self daysOfTheMonth];
      v5 = [daysOfTheMonth count];

      if (v5)
      {
        daysOfTheMonth2 = [(TTRIRecurrenceMonthDayChooserController *)self daysOfTheMonth];
        firstObject = [daysOfTheMonth2 firstObject];
        v9[0] = firstObject;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
        [(TTRIRecurrenceMonthDayChooserController *)self setDaysOfTheMonth:v8];

        [(TTRIRecurrenceMonthDayChooserController *)self refreshCells];
      }
    }
  }
}

@end