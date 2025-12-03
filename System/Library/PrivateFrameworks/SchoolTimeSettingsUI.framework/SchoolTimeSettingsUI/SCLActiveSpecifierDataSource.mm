@interface SCLActiveSpecifierDataSource
- (SCLActiveSpecifierDataSource)initWithListController:(id)controller viewModel:(id)model options:(unint64_t)options;
- (id)isSchoolTimeActive:(id)active;
- (id)scheduleSummaryForSpecifier:(id)specifier;
- (id)valueForScheduleSpecifier:(id)specifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeFooterText;
- (void)setSchoolTimeActive:(id)active specifier:(id)specifier;
- (void)showEditorForSpecifier:(id)specifier;
@end

@implementation SCLActiveSpecifierDataSource

- (SCLActiveSpecifierDataSource)initWithListController:(id)controller viewModel:(id)model options:(unint64_t)options
{
  optionsCopy = options;
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = SCLActiveSpecifierDataSource;
  v9 = [(SCLSpecifierDataSource *)&v18 initWithListController:controller viewModel:modelCopy];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277D4B740]);
    formatter = v9->_formatter;
    v9->_formatter = v10;

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [(SCLActiveSpecifierDataSource *)v9 setBundle:v12];
    [(SCLActiveSpecifierDataSource *)v9 setTable:@"SchoolTimeSettings"];
    v13 = [MEMORY[0x277D3FAE0] loadSpecifiersFromPlist:@"SCLActiveSettings" inBundle:v12 target:v9 stringsTable:@"SchoolTimeSettings"];
    [(SCLActiveSpecifierDataSource *)v9 setPermanentSpecifiers:v13];
    v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28762AB68 target:v9 set:0 get:sel_valueForScheduleSpecifier_ detail:0 cell:4 edit:0];
    [v14 setProperty:@"ACTIVE_SCHEDULE_SUMMARY" forKey:*MEMORY[0x277D3FFB8]];
    if ((optionsCopy & 2) == 0)
    {
      [v14 setControllerLoadAction:sel_showEditorForSpecifier_];
      [v14 setProperty:&unk_28762D898 forKey:*MEMORY[0x277D3FD68]];
    }

    [v14 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    if (optionsCopy)
    {
      [(SCLActiveSpecifierDataSource *)v9 removeFooterText];
    }

    scheduleSpecifier = v9->_scheduleSpecifier;
    v9->_scheduleSpecifier = v14;
    v16 = v14;

    [modelCopy addObserver:v9 forKeyPath:@"enabled" options:5 context:kActiveContext];
    [modelCopy addObserver:v9 forKeyPath:@"scheduleType" options:5 context:kScheduleTypeContext_0];
    [modelCopy addObserver:v9 forKeyPath:@"customSchedule" options:1 context:kScheduleTypeContext_0];
    [modelCopy addObserver:v9 forKeyPath:@"timeIntervals" options:1 context:kScheduleTypeContext_0];
  }

  return v9;
}

- (void)removeFooterText
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  permanentSpecifiers = [(SCLActiveSpecifierDataSource *)self permanentSpecifiers];
  v3 = [permanentSpecifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x277D3FF88];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(permanentSpecifiers);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 propertyForKey:v6];

        if (v9)
        {
          [v8 removePropertyForKey:v6];
        }
      }

      v4 = [permanentSpecifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel removeObserver:self forKeyPath:@"enabled" context:kActiveContext];

  viewModel2 = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel2 removeObserver:self forKeyPath:@"scheduleType" context:kScheduleTypeContext_0];

  viewModel3 = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel3 removeObserver:self forKeyPath:@"customSchedule" context:kScheduleTypeContext_0];

  viewModel4 = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel4 removeObserver:self forKeyPath:@"timeIntervals" context:kScheduleTypeContext_0];

  v7.receiver = self;
  v7.super_class = SCLActiveSpecifierDataSource;
  [(SCLSpecifierDataSource *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (kActiveContext == context)
  {
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    bOOLValue = [v14 BOOLValue];

    permanentSpecifiers = [(SCLActiveSpecifierDataSource *)self permanentSpecifiers];
    if (bOOLValue)
    {
      scheduleSpecifier = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
      v18 = [permanentSpecifiers arrayByAddingObject:scheduleSpecifier];

      [(SCLSpecifierDataSource *)self setSpecifiers:v18];
      goto LABEL_9;
    }

    [(SCLSpecifierDataSource *)self setSpecifiers:permanentSpecifiers];
LABEL_8:

    goto LABEL_9;
  }

  if (kScheduleTypeContext_0 == context)
  {
    scheduleSpecifier2 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
    scheduleSpecifier3 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
    v21 = [(SCLActiveSpecifierDataSource *)self scheduleSummaryForSpecifier:scheduleSpecifier3];
    [scheduleSpecifier2 setName:v21];

    permanentSpecifiers = [(SCLSpecifierDataSource *)self listController];
    scheduleSpecifier4 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
    [permanentSpecifiers reloadSpecifier:scheduleSpecifier4 animated:1];

    goto LABEL_8;
  }

  v23.receiver = self;
  v23.super_class = SCLActiveSpecifierDataSource;
  [(SCLSpecifierDataSource *)&v23 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_9:
}

- (id)valueForScheduleSpecifier:(id)specifier
{
  v4 = MEMORY[0x277D4B750];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  v6 = [v4 scheduleSettingsWithViewModel:viewModel];

  formatter = [(SCLActiveSpecifierDataSource *)self formatter];
  schedule = [v6 schedule];
  v9 = [formatter stringFromSchedule:schedule];

  return v9;
}

- (id)isSchoolTimeActive:(id)active
{
  v3 = MEMORY[0x277CCABB0];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  v5 = [v3 numberWithBool:{objc_msgSend(viewModel, "isEnabled")}];

  return v5;
}

- (void)setSchoolTimeActive:(id)active specifier:(id)specifier
{
  bOOLValue = [active BOOLValue];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  [viewModel setEnabled:bOOLValue];
}

- (id)scheduleSummaryForSpecifier:(id)specifier
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SCHEDULE_SUMMARY_CELL_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];

  return v4;
}

- (void)showEditorForSpecifier:(id)specifier
{
  v10 = objc_alloc_init(SCLListViewController);
  [(SCLListViewController *)v10 setWantsEditingMode:1];
  v4 = [SCLDaySettingsSpecifierSource alloc];
  viewModel = [(SCLSpecifierDataSource *)self viewModel];
  v6 = [(SCLDaySettingsSpecifierSource *)v4 initWithListController:v10 viewModel:viewModel];

  [(SCLSpecifierDataSource *)v6 setActive:1];
  [(SCLListViewController *)v10 setSpecifierSource:v6];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SCHEDULE_EDITOR_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
  [(SCLListViewController *)v10 setTitle:v8];

  listController = [(SCLSpecifierDataSource *)self listController];
  [listController showController:v10 animate:1];
}

@end