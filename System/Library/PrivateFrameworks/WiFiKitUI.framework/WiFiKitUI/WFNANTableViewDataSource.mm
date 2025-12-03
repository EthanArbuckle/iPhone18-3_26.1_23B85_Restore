@interface WFNANTableViewDataSource
- (WFNANTableViewDataSource)initWithTableView:(id)view sections:(id)sections cellProvider:(id)provider;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation WFNANTableViewDataSource

- (WFNANTableViewDataSource)initWithTableView:(id)view sections:(id)sections cellProvider:(id)provider
{
  sectionsCopy = sections;
  v12.receiver = self;
  v12.super_class = WFNANTableViewDataSource;
  v9 = [(UITableViewDiffableDataSource *)&v12 initWithTableView:view cellProvider:provider];
  v10 = v9;
  if (v9)
  {
    [(WFNANTableViewDataSource *)v9 setSections:sectionsCopy];
  }

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WFNANTableViewDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue > 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = off_279EC5BA8[unsignedIntegerValue];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v10;
}

@end