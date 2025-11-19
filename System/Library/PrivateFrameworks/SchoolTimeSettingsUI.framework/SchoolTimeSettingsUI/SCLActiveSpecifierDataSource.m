@interface SCLActiveSpecifierDataSource
- (SCLActiveSpecifierDataSource)initWithListController:(id)a3 viewModel:(id)a4 options:(unint64_t)a5;
- (id)isSchoolTimeActive:(id)a3;
- (id)scheduleSummaryForSpecifier:(id)a3;
- (id)valueForScheduleSpecifier:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeFooterText;
- (void)setSchoolTimeActive:(id)a3 specifier:(id)a4;
- (void)showEditorForSpecifier:(id)a3;
@end

@implementation SCLActiveSpecifierDataSource

- (SCLActiveSpecifierDataSource)initWithListController:(id)a3 viewModel:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SCLActiveSpecifierDataSource;
  v9 = [(SCLSpecifierDataSource *)&v18 initWithListController:a3 viewModel:v8];
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
    if ((v5 & 2) == 0)
    {
      [v14 setControllerLoadAction:sel_showEditorForSpecifier_];
      [v14 setProperty:&unk_28762D898 forKey:*MEMORY[0x277D3FD68]];
    }

    [v14 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    if (v5)
    {
      [(SCLActiveSpecifierDataSource *)v9 removeFooterText];
    }

    scheduleSpecifier = v9->_scheduleSpecifier;
    v9->_scheduleSpecifier = v14;
    v16 = v14;

    [v8 addObserver:v9 forKeyPath:@"enabled" options:5 context:kActiveContext];
    [v8 addObserver:v9 forKeyPath:@"scheduleType" options:5 context:kScheduleTypeContext_0];
    [v8 addObserver:v9 forKeyPath:@"customSchedule" options:1 context:kScheduleTypeContext_0];
    [v8 addObserver:v9 forKeyPath:@"timeIntervals" options:1 context:kScheduleTypeContext_0];
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
  v2 = [(SCLActiveSpecifierDataSource *)self permanentSpecifiers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 propertyForKey:v6];

        if (v9)
        {
          [v8 removePropertyForKey:v6];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(SCLSpecifierDataSource *)self viewModel];
  [v3 removeObserver:self forKeyPath:@"enabled" context:kActiveContext];

  v4 = [(SCLSpecifierDataSource *)self viewModel];
  [v4 removeObserver:self forKeyPath:@"scheduleType" context:kScheduleTypeContext_0];

  v5 = [(SCLSpecifierDataSource *)self viewModel];
  [v5 removeObserver:self forKeyPath:@"customSchedule" context:kScheduleTypeContext_0];

  v6 = [(SCLSpecifierDataSource *)self viewModel];
  [v6 removeObserver:self forKeyPath:@"timeIntervals" context:kScheduleTypeContext_0];

  v7.receiver = self;
  v7.super_class = SCLActiveSpecifierDataSource;
  [(SCLSpecifierDataSource *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kActiveContext == a6)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v15 = [v14 BOOLValue];

    v16 = [(SCLActiveSpecifierDataSource *)self permanentSpecifiers];
    if (v15)
    {
      v17 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
      v18 = [v16 arrayByAddingObject:v17];

      [(SCLSpecifierDataSource *)self setSpecifiers:v18];
      goto LABEL_9;
    }

    [(SCLSpecifierDataSource *)self setSpecifiers:v16];
LABEL_8:

    goto LABEL_9;
  }

  if (kScheduleTypeContext_0 == a6)
  {
    v19 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
    v20 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
    v21 = [(SCLActiveSpecifierDataSource *)self scheduleSummaryForSpecifier:v20];
    [v19 setName:v21];

    v16 = [(SCLSpecifierDataSource *)self listController];
    v22 = [(SCLActiveSpecifierDataSource *)self scheduleSpecifier];
    [v16 reloadSpecifier:v22 animated:1];

    goto LABEL_8;
  }

  v23.receiver = self;
  v23.super_class = SCLActiveSpecifierDataSource;
  [(SCLSpecifierDataSource *)&v23 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_9:
}

- (id)valueForScheduleSpecifier:(id)a3
{
  v4 = MEMORY[0x277D4B750];
  v5 = [(SCLSpecifierDataSource *)self viewModel];
  v6 = [v4 scheduleSettingsWithViewModel:v5];

  v7 = [(SCLActiveSpecifierDataSource *)self formatter];
  v8 = [v6 schedule];
  v9 = [v7 stringFromSchedule:v8];

  return v9;
}

- (id)isSchoolTimeActive:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(SCLSpecifierDataSource *)self viewModel];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "isEnabled")}];

  return v5;
}

- (void)setSchoolTimeActive:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [(SCLSpecifierDataSource *)self viewModel];
  [v6 setEnabled:v5];
}

- (id)scheduleSummaryForSpecifier:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SCHEDULE_SUMMARY_CELL_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];

  return v4;
}

- (void)showEditorForSpecifier:(id)a3
{
  v10 = objc_alloc_init(SCLListViewController);
  [(SCLListViewController *)v10 setWantsEditingMode:1];
  v4 = [SCLDaySettingsSpecifierSource alloc];
  v5 = [(SCLSpecifierDataSource *)self viewModel];
  v6 = [(SCLDaySettingsSpecifierSource *)v4 initWithListController:v10 viewModel:v5];

  [(SCLSpecifierDataSource *)v6 setActive:1];
  [(SCLListViewController *)v10 setSpecifierSource:v6];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SCHEDULE_EDITOR_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
  [(SCLListViewController *)v10 setTitle:v8];

  v9 = [(SCLSpecifierDataSource *)self listController];
  [v9 showController:v10 animate:1];
}

@end