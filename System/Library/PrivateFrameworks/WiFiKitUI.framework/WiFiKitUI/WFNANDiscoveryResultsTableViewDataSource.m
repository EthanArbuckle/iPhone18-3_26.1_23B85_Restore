@interface WFNANDiscoveryResultsTableViewDataSource
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (WFNANDiscoveryResultsTableViewDataSource)initWithTableView:(id)a3 context:(id)a4 subscriber:(id)a5 sections:(id)a6 cellProvider:(id)a7;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation WFNANDiscoveryResultsTableViewDataSource

- (WFNANDiscoveryResultsTableViewDataSource)initWithTableView:(id)a3 context:(id)a4 subscriber:(id)a5 sections:(id)a6 cellProvider:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = WFNANDiscoveryResultsTableViewDataSource;
  v16 = [(UITableViewDiffableDataSource *)&v19 initWithTableView:a3 cellProvider:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sections, a6);
    objc_storeStrong(&v17->_context, a4);
    objc_storeStrong(&v17->_subscriber, a5);
  }

  return v17;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WFNANDiscoveryResultsTableViewDataSource *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    v8 = @"kWFLocNANDiscoveryResults";
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = @"kWFLocNANActiveDataSessions";
LABEL_5:
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFNANDiscoveryResultsTableViewDataSource *)self sections];
  v7 = [v5 section];

  v8 = [v6 objectAtIndexedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  return v9 == 1 && [(WFNANTableViewContext *)self->_context getDataSessionsCountForSubscriber:self->_subscriber]> 0;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = -[WFNANTableViewContext getDataSessionAtIndex:forSubscriber:](self->_context, "getDataSessionAtIndex:forSubscriber:", [a5 row], self->_subscriber);
    [v7 stop];
    [(WFNANTableViewContext *)self->_context removeDataSession:v7 forSubscriber:self->_subscriber];
  }
}

@end