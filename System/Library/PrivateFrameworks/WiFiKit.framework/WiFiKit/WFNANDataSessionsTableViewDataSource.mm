@interface WFNANDataSessionsTableViewDataSource
- (WFNANDataSessionsTableViewDataSource)initWithTableView:(id)view context:(id)context publisher:(id)publisher sections:(id)sections cellProvider:(id)provider;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation WFNANDataSessionsTableViewDataSource

- (WFNANDataSessionsTableViewDataSource)initWithTableView:(id)view context:(id)context publisher:(id)publisher sections:(id)sections cellProvider:(id)provider
{
  contextCopy = context;
  publisherCopy = publisher;
  sectionsCopy = sections;
  v19.receiver = self;
  v19.super_class = WFNANDataSessionsTableViewDataSource;
  v16 = [(UITableViewDiffableDataSource *)&v19 initWithTableView:view cellProvider:provider];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sections, sections);
    objc_storeStrong(&v17->_context, context);
    objc_storeStrong(&v17->_publisher, publisher);
  }

  return v17;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WFNANDataSessionsTableViewDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
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