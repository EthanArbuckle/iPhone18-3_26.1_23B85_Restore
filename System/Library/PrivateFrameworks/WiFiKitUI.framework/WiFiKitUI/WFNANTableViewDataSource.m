@interface WFNANTableViewDataSource
- (WFNANTableViewDataSource)initWithTableView:(id)a3 sections:(id)a4 cellProvider:(id)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
@end

@implementation WFNANTableViewDataSource

- (WFNANTableViewDataSource)initWithTableView:(id)a3 sections:(id)a4 cellProvider:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = WFNANTableViewDataSource;
  v9 = [(UITableViewDiffableDataSource *)&v12 initWithTableView:a3 cellProvider:a5];
  v10 = v9;
  if (v9)
  {
    [(WFNANTableViewDataSource *)v9 setSections:v8];
  }

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WFNANTableViewDataSource *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (v7 > 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_279EC5BA8[v7];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v10;
}

@end