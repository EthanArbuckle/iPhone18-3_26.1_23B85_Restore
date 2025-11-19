@interface WFNANDataSessionsTableViewDataSource
- (WFNANDataSessionsTableViewDataSource)initWithTableView:(id)a3 context:(id)a4 publisher:(id)a5 sections:(id)a6 cellProvider:(id)a7;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
@end

@implementation WFNANDataSessionsTableViewDataSource

- (WFNANDataSessionsTableViewDataSource)initWithTableView:(id)a3 context:(id)a4 publisher:(id)a5 sections:(id)a6 cellProvider:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = WFNANDataSessionsTableViewDataSource;
  v16 = [(UITableViewDiffableDataSource *)&v19 initWithTableView:a3 cellProvider:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sections, a6);
    objc_storeStrong(&v17->_context, a4);
    objc_storeStrong(&v17->_publisher, a5);
  }

  return v17;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WFNANDataSessionsTableViewDataSource *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"kWFLocNANActiveDataSessions" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  }

  return v8;
}

@end