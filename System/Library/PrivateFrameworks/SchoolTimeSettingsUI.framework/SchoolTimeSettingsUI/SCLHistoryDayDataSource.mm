@interface SCLHistoryDayDataSource
- (SCLHistoryDayDataSource)initWithListController:(id)controller viewModel:(id)model historyGroup:(id)group title:(id)title;
@end

@implementation SCLHistoryDayDataSource

- (SCLHistoryDayDataSource)initWithListController:(id)controller viewModel:(id)model historyGroup:(id)group title:(id)title
{
  v30[3] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  titleCopy = title;
  v29.receiver = self;
  v29.super_class = SCLHistoryDayDataSource;
  v12 = [(SCLSpecifierDataSource *)&v29 initWithListController:controller viewModel:model];
  if (v12)
  {
    v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HISTORY_CELL_GROUP" name:titleCopy];
    v14 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"HISTORY_CELL-0x%p", v12];
    v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    v17 = objc_opt_class();
    v18 = *MEMORY[0x277D3FE58];
    [v16 setProperty:v17 forKey:*MEMORY[0x277D3FE58]];
    v19 = MEMORY[0x277CCABB0];
    items = [groupCopy items];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(items, "count")}];
    v22 = *MEMORY[0x277D401A8];
    [v16 setProperty:v21 forKey:*MEMORY[0x277D401A8]];

    [(SCLHistoryDayDataSource *)v12 setCountSpecifier:v16];
    v23 = MEMORY[0x277D3FAD8];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"HISTORY_ITEM_CELL-0x%p", v12];
    v25 = [v23 preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    [v25 setProperty:objc_opt_class() forKey:v18];
    [v25 setProperty:groupCopy forKey:v22];
    [(SCLHistoryDayDataSource *)v12 setItemSpecifier:v25];
    v30[0] = v13;
    v30[1] = v16;
    v30[2] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    [(SCLSpecifierDataSource *)v12 setSpecifiers:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

@end