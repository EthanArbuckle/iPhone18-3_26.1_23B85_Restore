@interface SCLCustomDayEditorSource
- (SCLCustomDayEditorSource)initWithListController:(id)a3 viewModel:(id)a4 day:(int64_t)a5 title:(id)a6;
- (id)enabledForSpecifier:(id)a3;
- (void)setEnabled:(id)a3 specifier:(id)a4;
- (void)timeIntervalDataSource:(id)a3 didUpdateTimeIntervals:(id)a4;
@end

@implementation SCLCustomDayEditorSource

- (SCLCustomDayEditorSource)initWithListController:(id)a3 viewModel:(id)a4 day:(int64_t)a5 title:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v24.receiver = self;
  v24.super_class = SCLCustomDayEditorSource;
  v12 = [(SCLSpecifierDataSource *)&v24 initWithListController:v9 viewModel:v10];
  if (v12)
  {
    v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CUSTOM_DAY_ENABLED_GROUP"];
    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:v12 set:sel_setEnabled_specifier_ get:sel_enabledForSpecifier_ detail:0 cell:6 edit:0];
    [v14 setProperty:@"CUSTOM_DAY_ENABLED_CELL" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [v10 timeIntervals];
    if (![v15 count])
    {
      v16 = +[SCLTimeIntervalModel defaultTimeInterval];
      v27[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

      v15 = v17;
    }

    v18 = [[SCLTimeIntervalDataSource alloc] initWithListController:v9 timeIntervals:v15];
    timeSource = v12->_timeSource;
    v12->_timeSource = v18;

    [(SCLTimeIntervalDataSource *)v12->_timeSource setDelegate:v12];
    -[SCLSpecifierDataSource setActive:](v12->_timeSource, "setActive:", [v10 isEnabled]);
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

- (id)enabledForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(SCLSpecifierDataSource *)self viewModel];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isEnabled")}];

  return v5;
}

- (void)setEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(SCLSpecifierDataSource *)self viewModel];
  [v6 setEnabled:v5];

  v7 = [(SCLCustomDayEditorSource *)self timeSource];
  [v7 setActive:v5];
}

- (void)timeIntervalDataSource:(id)a3 didUpdateTimeIntervals:(id)a4
{
  v5 = a4;
  v6 = [(SCLSpecifierDataSource *)self viewModel];
  [v6 setTimeIntervals:v5];
}

@end