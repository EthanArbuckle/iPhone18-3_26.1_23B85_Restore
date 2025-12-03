@interface SCLCustomDayEditorSource
- (SCLCustomDayEditorSource)initWithListController:(id)controller viewModel:(id)model day:(int64_t)day title:(id)title;
- (id)enabledForSpecifier:(id)specifier;
- (void)setEnabled:(id)enabled specifier:(id)specifier;
- (void)timeIntervalDataSource:(id)source didUpdateTimeIntervals:(id)intervals;
@end

@implementation SCLCustomDayEditorSource

- (SCLCustomDayEditorSource)initWithListController:(id)controller viewModel:(id)model day:(int64_t)day title:(id)title
{
  v27[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  titleCopy = title;
  v24.receiver = self;
  v24.super_class = SCLCustomDayEditorSource;
  v12 = [(SCLSpecifierDataSource *)&v24 initWithListController:controllerCopy viewModel:modelCopy];
  if (v12)
  {
    v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CUSTOM_DAY_ENABLED_GROUP"];
    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:titleCopy target:v12 set:sel_setEnabled_specifier_ get:sel_enabledForSpecifier_ detail:0 cell:6 edit:0];
    [v14 setProperty:@"CUSTOM_DAY_ENABLED_CELL" forKey:*MEMORY[0x277D3FFB8]];
    timeIntervals = [modelCopy timeIntervals];
    if (![timeIntervals count])
    {
      v16 = +[SCLTimeIntervalModel defaultTimeInterval];
      v27[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

      timeIntervals = v17;
    }

    v18 = [[SCLTimeIntervalDataSource alloc] initWithListController:controllerCopy timeIntervals:timeIntervals];
    timeSource = v12->_timeSource;
    v12->_timeSource = v18;

    [(SCLTimeIntervalDataSource *)v12->_timeSource setDelegate:v12];
    -[SCLSpecifierDataSource setActive:](v12->_timeSource, "setActive:", [modelCopy isEnabled]);
    v26 = v12->_timeSource;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    [(SCLSpecifierDataSource *)v12 setChildDataSources:v20];

    v25[0] = v13;
    v25[1] = v14;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    [(SCLSpecifierDataSource *)v12 setSpecifiers:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)enabledForSpecifier:(id)specifier
{
  v3 = MEMORY[0x277CCABB0];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  v5 = [v3 numberWithBool:{objc_msgSend(viewModel, "isEnabled")}];

  return v5;
}

- (void)setEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel setEnabled:bOOLValue];

  timeSource = [(SCLCustomDayEditorSource *)self timeSource];
  [timeSource setActive:bOOLValue];
}

- (void)timeIntervalDataSource:(id)source didUpdateTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel setTimeIntervals:intervalsCopy];
}

@end