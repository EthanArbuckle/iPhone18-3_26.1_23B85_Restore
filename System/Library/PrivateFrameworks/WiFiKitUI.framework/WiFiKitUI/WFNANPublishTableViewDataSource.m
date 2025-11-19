@interface WFNANPublishTableViewDataSource
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (WFNANPublishTableViewDataSource)initWithTableView:(id)a3 context:(id)a4 sections:(id)a5 cellProvider:(id)a6;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation WFNANPublishTableViewDataSource

- (WFNANPublishTableViewDataSource)initWithTableView:(id)a3 context:(id)a4 sections:(id)a5 cellProvider:(id)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = WFNANPublishTableViewDataSource;
  v12 = [(UITableViewDiffableDataSource *)&v15 initWithTableView:a3 cellProvider:a6];
  v13 = v12;
  if (v12)
  {
    [(WFNANPublishTableViewDataSource *)v12 setSections:v11];
    [(WFNANPublishTableViewDataSource *)v13 setContext:v10];
  }

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WFNANPublishTableViewDataSource *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (!v7)
  {
    v8 = @"kWFLocNANAddPublisher";
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = @"kWFLocNANPublishers";
LABEL_5:
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(WFNANPublishTableViewDataSource *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"kWFLocNANPassphraseWarning" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v8;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFNANPublishTableViewDataSource *)self sections];
  v7 = [v5 section];

  v8 = [v6 objectAtIndexedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  return v9 == 1 && [(WFNANTableViewContext *)self->_context getPublishersCount]> 0;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    context = self->_context;
    v7 = [a5 row];

    [(WFNANTableViewContext *)context removePublisherAtIndex:v7];
  }
}

@end