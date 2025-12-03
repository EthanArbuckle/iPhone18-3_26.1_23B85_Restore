@interface WFNANDiscoveryResultsTableViewDataSource
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (WFNANDiscoveryResultsTableViewDataSource)initWithTableView:(id)view context:(id)context subscriber:(id)subscriber sections:(id)sections cellProvider:(id)provider;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation WFNANDiscoveryResultsTableViewDataSource

- (WFNANDiscoveryResultsTableViewDataSource)initWithTableView:(id)view context:(id)context subscriber:(id)subscriber sections:(id)sections cellProvider:(id)provider
{
  contextCopy = context;
  subscriberCopy = subscriber;
  sectionsCopy = sections;
  v19.receiver = self;
  v19.super_class = WFNANDiscoveryResultsTableViewDataSource;
  v16 = [(UITableViewDiffableDataSource *)&v19 initWithTableView:view cellProvider:provider];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sections, sections);
    objc_storeStrong(&v17->_context, context);
    objc_storeStrong(&v17->_subscriber, subscriber);
  }

  return v17;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WFNANDiscoveryResultsTableViewDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v8 = @"kWFLocNANDiscoveryResults";
    goto LABEL_5;
  }

  if (unsignedIntegerValue == 1)
  {
    v8 = @"kWFLocNANActiveDataSessions";
LABEL_5:
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFNANDiscoveryResultsTableViewDataSource *)self sections];
  section = [pathCopy section];

  v8 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue == 1 && [(WFNANTableViewContext *)self->_context getDataSessionsCountForSubscriber:self->_subscriber]> 0;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = -[WFNANTableViewContext getDataSessionAtIndex:forSubscriber:](self->_context, "getDataSessionAtIndex:forSubscriber:", [path row], self->_subscriber);
    [v7 stop];
    [(WFNANTableViewContext *)self->_context removeDataSession:v7 forSubscriber:self->_subscriber];
  }
}

@end