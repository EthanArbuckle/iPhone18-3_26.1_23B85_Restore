@interface SCLTimeIntervalDataSource
- (NSArray)timeIntervals;
- (SCLTimeIntervalDataSource)initWithListController:(id)controller timeIntervals:(id)intervals;
- (SCLTimeIntervalDataSourceDelegate)delegate;
- (id)createSpecifiersForIntervalsAtIndex:(unint64_t)index;
- (id)intervalSpecifiers;
- (unint64_t)modelIndexForSpecifier:(id)specifier;
- (void)addInterval:(id)interval;
- (void)applySpecifiers;
- (void)configureSpecifier:(id)specifier forIndex:(unint64_t)index;
- (void)loadSpecifiers;
- (void)model:(id)model didAddIntervalAtIndexes:(id)indexes;
- (void)model:(id)model didDeleteIntervalAtIndex:(unint64_t)index;
- (void)model:(id)model didUpdateIntervalAtIndex:(unint64_t)index;
- (void)notifyDelegateOfModelUpdate;
- (void)reconfigureAllSpecifiers;
- (void)removeIntervalForSpecifier:(id)specifier;
- (void)setTimeInterval:(id)interval forSpecifier:(id)specifier;
- (void)setTimeIntervals:(id)intervals;
@end

@implementation SCLTimeIntervalDataSource

- (SCLTimeIntervalDataSource)initWithListController:(id)controller timeIntervals:(id)intervals
{
  controllerCopy = controller;
  intervalsCopy = intervals;
  v8 = objc_alloc_init(SCLSettingsViewModel);
  v17.receiver = self;
  v17.super_class = SCLTimeIntervalDataSource;
  v9 = [(SCLSpecifierDataSource *)&v17 initWithListController:controllerCopy viewModel:v8];

  if (v9)
  {
    v10 = [[SCLTimeIntervalModel alloc] initWithTimeIntervals:intervalsCopy];
    model = v9->_model;
    v9->_model = v10;

    [controllerCopy setWantsEditingMode:1];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    intervalGroupSpecifiers = v9->_intervalGroupSpecifiers;
    v9->_intervalGroupSpecifiers = v12;

    v14 = objc_alloc_init(MEMORY[0x277D4B760]);
    scheduleTimeFormatter = v9->_scheduleTimeFormatter;
    v9->_scheduleTimeFormatter = v14;

    [(SCLTimeIntervalDataSource *)v9 loadSpecifiers];
  }

  return v9;
}

- (NSArray)timeIntervals
{
  model = [(SCLTimeIntervalDataSource *)self model];
  timeIntervals = [model timeIntervals];

  return timeIntervals;
}

- (void)setTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  timeIntervals = [(SCLTimeIntervalModel *)self->_model timeIntervals];
  v5 = [intervalsCopy isEqual:timeIntervals];

  if ((v5 & 1) == 0)
  {
    [(SCLTimeIntervalModel *)self->_model setTimeIntervals:intervalsCopy];
    [(NSMutableArray *)self->_intervalGroupSpecifiers removeAllObjects];
    model = [(SCLTimeIntervalDataSource *)self model];
    timeIntervals2 = [model timeIntervals];
    v8 = [timeIntervals2 count];

    model2 = [(SCLTimeIntervalDataSource *)self model];
    v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v8}];
    [(SCLTimeIntervalDataSource *)self model:model2 didAddIntervalAtIndexes:v10];

    [(SCLTimeIntervalDataSource *)self applySpecifiers];
  }
}

- (void)loadSpecifiers
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"schooltime.addinterval"];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SCHEDULE_EDITOR_ADD_TIME_INTERVAL" value:@"Add Time" table:@"SchoolTimeSettings"];

  v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v7 = MEMORY[0x277CBEC38];
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SCLListControllerEditingEnabled"];
  [v6 setObject:&unk_28762D838 forKeyedSubscript:@"SCLListControllerCellEditingStyle"];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v6 setButtonAction:sel_addInterval_];
  v16[0] = v3;
  v16[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  addIntervalGroupSpecifiers = self->_addIntervalGroupSpecifiers;
  self->_addIntervalGroupSpecifiers = v8;

  model = [(SCLTimeIntervalDataSource *)self model];
  timeIntervals = [model timeIntervals];
  v12 = [timeIntervals count];

  model2 = [(SCLTimeIntervalDataSource *)self model];
  v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v12}];
  [(SCLTimeIntervalDataSource *)self model:model2 didAddIntervalAtIndexes:v14];

  [(SCLTimeIntervalDataSource *)self applySpecifiers];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)applySpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v3 addObjectsFromArray:self->_intervalGroupSpecifiers];
  [v3 addObjectsFromArray:self->_addIntervalGroupSpecifiers];
  [(SCLSpecifierDataSource *)self setSpecifiers:v3];
}

- (id)createSpecifiersForIntervalsAtIndex:(unint64_t)index
{
  v30[1] = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Group-%@", uUIDString];
  v20 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:v21];
  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setTimeInterval_forSpecifier_ get:0 detail:0 cell:-1 edit:0];
  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Interval-%@", uUIDString];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FFB8]];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v7 setObject:self->_scheduleTimeFormatter forKeyedSubscript:@"SCLTimeIntervalTableViewCellScheduleTimeFormatter"];
  [v7 setObject:self->_model forKeyedSubscript:@"SCLTimeIntervalTableViewCellDateConverter"];
  [(SCLTimeIntervalDataSource *)self configureSpecifier:v7 forIndex:index];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__SCLTimeIntervalDataSource_createSpecifiersForIntervalsAtIndex___block_invoke;
  v26[3] = &unk_279B6F0D8;
  objc_copyWeak(&v27, &location);
  v9 = [v26 copy];
  [v7 setObject:v9 forKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerStateHandler"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SCHEDULE_EDITOR_DELETE_TIME_INTERVAL_SWIPE_ACTION_TITLE" value:@"Delete" table:@"SchoolTimeSettings"];

  objc_initWeak(&from, v7);
  v12 = MEMORY[0x277D753C0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__SCLTimeIntervalDataSource_createSpecifiersForIntervalsAtIndex___block_invoke_47;
  v22[3] = &unk_279B6F100;
  objc_copyWeak(&v23, &location);
  objc_copyWeak(&v24, &from);
  v13 = [v12 contextualActionWithStyle:1 title:v11 handler:v22];
  v14 = MEMORY[0x277D75AD8];
  v30[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v16 = [v14 configurationWithActions:v15];

  [v7 setObject:v16 forKeyedSubscript:@"SCLListControllerTrailingSwipeActionsConfiguration"];
  v29[0] = v20;
  v29[1] = v7;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __65__SCLTimeIntervalDataSource_createSpecifiersForIntervalsAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained listController];
  [v7 beginUpdates];

  v8 = [v5 specifier];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 setObject:v9 forKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerState"];

  v21 = v5;
  [v5 reloadWithSpecifier:v8 animated:1];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = WeakRetained;
  v10 = [WeakRetained intervalSpecifiers];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    v14 = *MEMORY[0x277D40148];
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        if (v8 != v16)
        {
          [*(*(&v22 + 1) + 8 * v15) setObject:&unk_28762D850 forKeyedSubscript:@"SCLTimeIntervalTableViewCellPickerState"];
          v17 = [v16 propertyForKey:v14];
          [v17 reloadWithSpecifier:v16 animated:1];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v20 listController];
  [v18 endUpdates];

  v19 = *MEMORY[0x277D85DE8];
}

void __65__SCLTimeIntervalDataSource_createSpecifiersForIntervalsAtIndex___block_invoke_47(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (WeakRetained && v6)
  {
    [WeakRetained removeIntervalForSpecifier:v6];
  }

  v8[2](v8, 1);
}

- (void)reconfigureAllSpecifiers
{
  intervalSpecifiers = [(SCLTimeIntervalDataSource *)self intervalSpecifiers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SCLTimeIntervalDataSource_reconfigureAllSpecifiers__block_invoke;
  v4[3] = &unk_279B6F128;
  v4[4] = self;
  [intervalSpecifiers enumerateObjectsUsingBlock:v4];
}

- (void)configureSpecifier:(id)specifier forIndex:(unint64_t)index
{
  model = self->_model;
  specifierCopy = specifier;
  timeIntervals = [(SCLTimeIntervalModel *)model timeIntervals];
  v12 = [timeIntervals objectAtIndexedSubscript:index];

  constraintIntervals = [(SCLTimeIntervalModel *)self->_model constraintIntervals];
  v10 = [constraintIntervals objectAtIndexedSubscript:index];

  [specifierCopy setObject:v12 forKeyedSubscript:*MEMORY[0x277D401A8]];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[SCLTimeIntervalModel canRemoveTimeIntervals](self->_model, "canRemoveTimeIntervals")}];
  [specifierCopy setObject:v11 forKeyedSubscript:@"SCLListControllerEditingEnabled"];

  [specifierCopy setObject:&unk_28762D868 forKeyedSubscript:@"SCLListControllerCellEditingStyle"];
  [specifierCopy setObject:v10 forKeyedSubscript:@"SCLTimeIntervalTableViewCellConstrainingInterval"];
}

- (unint64_t)modelIndexForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  intervalSpecifiers = [(SCLTimeIntervalDataSource *)self intervalSpecifiers];
  v6 = [intervalSpecifiers indexOfObject:specifierCopy];

  return v6;
}

- (id)intervalSpecifiers
{
  intervalGroupSpecifiers = self->_intervalGroupSpecifiers;
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
  v4 = [(NSMutableArray *)intervalGroupSpecifiers filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t __47__SCLTimeIntervalDataSource_intervalSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x277D401A8]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)addInterval:(id)interval
{
  model = [(SCLTimeIntervalDataSource *)self model];
  canAppendTimeInterval = [model canAppendTimeInterval];

  if (canAppendTimeInterval)
  {
    model2 = [(SCLTimeIntervalDataSource *)self model];
    nextProposedTimeInterval = [model2 nextProposedTimeInterval];

    if (nextProposedTimeInterval)
    {
      model3 = [(SCLTimeIntervalDataSource *)self model];
      [model3 appendTimeInterval:nextProposedTimeInterval];

      model4 = [(SCLTimeIntervalDataSource *)self model];
      timeIntervals = [model4 timeIntervals];
      v10 = [timeIntervals count] - 1;

      model5 = [(SCLTimeIntervalDataSource *)self model];
      v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
      [(SCLTimeIntervalDataSource *)self model:model5 didAddIntervalAtIndexes:v12];
    }
  }
}

- (void)setTimeInterval:(id)interval forSpecifier:(id)specifier
{
  intervalCopy = interval;
  v7 = [(SCLTimeIntervalDataSource *)self modelIndexForSpecifier:specifier];
  [(SCLTimeIntervalModel *)self->_model replaceTimeIntervalAtIndex:v7 withTimeInterval:intervalCopy];

  model = [(SCLTimeIntervalDataSource *)self model];
  [(SCLTimeIntervalDataSource *)self model:model didUpdateIntervalAtIndex:v7];
}

- (void)removeIntervalForSpecifier:(id)specifier
{
  v4 = [(SCLTimeIntervalDataSource *)self modelIndexForSpecifier:specifier];
  model = [(SCLTimeIntervalDataSource *)self model];
  [model removeTimeIntervalAtIndex:v4];

  model2 = [(SCLTimeIntervalDataSource *)self model];
  [(SCLTimeIntervalDataSource *)self model:model2 didDeleteIntervalAtIndex:v4];
}

- (void)notifyDelegateOfModelUpdate
{
  delegate = [(SCLTimeIntervalDataSource *)self delegate];
  timeIntervals = [(SCLTimeIntervalDataSource *)self timeIntervals];
  [delegate timeIntervalDataSource:self didUpdateTimeIntervals:timeIntervals];
}

- (void)model:(id)model didAddIntervalAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  listController = [(SCLSpecifierDataSource *)self listController];
  [listController beginUpdates];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SCLTimeIntervalDataSource_model_didAddIntervalAtIndexes___block_invoke;
  v8[3] = &unk_279B6F170;
  v8[4] = self;
  [indexesCopy enumerateIndexesUsingBlock:v8];

  [(SCLTimeIntervalDataSource *)self reconfigureAllSpecifiers];
  [(SCLTimeIntervalDataSource *)self applySpecifiers];
  listController2 = [(SCLSpecifierDataSource *)self listController];
  [listController2 endUpdates];

  [(SCLTimeIntervalDataSource *)self notifyDelegateOfModelUpdate];
}

void __59__SCLTimeIntervalDataSource_model_didAddIntervalAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) createSpecifiersForIntervalsAtIndex:a2];
  [*(*(a1 + 32) + 64) addObjectsFromArray:v3];
}

- (void)model:(id)model didDeleteIntervalAtIndex:(unint64_t)index
{
  v15[2] = *MEMORY[0x277D85DE8];
  listController = [(SCLSpecifierDataSource *)self listController];
  [listController beginUpdates];

  intervalSpecifiers = [(SCLTimeIntervalDataSource *)self intervalSpecifiers];
  v8 = [intervalSpecifiers objectAtIndex:index];

  listController2 = [(SCLSpecifierDataSource *)self listController];
  v10 = [listController2 getGroupSpecifierForSpecifier:v8];

  intervalGroupSpecifiers = self->_intervalGroupSpecifiers;
  v15[0] = v8;
  v15[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [(NSMutableArray *)intervalGroupSpecifiers removeObjectsInArray:v12];

  [(SCLTimeIntervalDataSource *)self reconfigureAllSpecifiers];
  [(SCLTimeIntervalDataSource *)self applySpecifiers];
  listController3 = [(SCLSpecifierDataSource *)self listController];
  [listController3 endUpdates];

  [(SCLTimeIntervalDataSource *)self notifyDelegateOfModelUpdate];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)model:(id)model didUpdateIntervalAtIndex:(unint64_t)index
{
  listController = [(SCLSpecifierDataSource *)self listController];
  [listController beginUpdates];

  [(SCLTimeIntervalDataSource *)self reconfigureAllSpecifiers];
  intervalSpecifiers = [(SCLTimeIntervalDataSource *)self intervalSpecifiers];
  v10 = [intervalSpecifiers objectAtIndexedSubscript:index];

  v8 = [v10 objectForKeyedSubscript:*MEMORY[0x277D40148]];
  [v8 reloadWithSpecifier:v10 animated:0];
  listController2 = [(SCLSpecifierDataSource *)self listController];
  [listController2 endUpdates];

  [(SCLTimeIntervalDataSource *)self notifyDelegateOfModelUpdate];
}

- (SCLTimeIntervalDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end