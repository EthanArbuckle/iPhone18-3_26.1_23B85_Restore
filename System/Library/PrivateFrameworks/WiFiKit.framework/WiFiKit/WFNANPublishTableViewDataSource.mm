@interface WFNANPublishTableViewDataSource
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (WFNANPublishTableViewDataSource)initWithTableView:(id)view context:(id)context sections:(id)sections cellProvider:(id)provider;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation WFNANPublishTableViewDataSource

- (WFNANPublishTableViewDataSource)initWithTableView:(id)view context:(id)context sections:(id)sections cellProvider:(id)provider
{
  contextCopy = context;
  sectionsCopy = sections;
  v15.receiver = self;
  v15.super_class = WFNANPublishTableViewDataSource;
  v12 = [(UITableViewDiffableDataSource *)&v15 initWithTableView:view cellProvider:provider];
  v13 = v12;
  if (v12)
  {
    [(WFNANPublishTableViewDataSource *)v12 setSections:sectionsCopy];
    [(WFNANPublishTableViewDataSource *)v13 setContext:contextCopy];
  }

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WFNANPublishTableViewDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v8 = @"kWFLocNANAddPublisher";
    goto LABEL_5;
  }

  if (unsignedIntegerValue == 1)
  {
    v8 = @"kWFLocNANPublishers";
LABEL_5:
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(WFNANPublishTableViewDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"kWFLocNANPassphraseWarning" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  }

  return v8;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFNANPublishTableViewDataSource *)self sections];
  section = [pathCopy section];

  v8 = [sections objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue == 1 && [(WFNANTableViewContext *)self->_context getPublishersCount]> 0;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    context = self->_context;
    v7 = [path row];

    [(WFNANTableViewContext *)context removePublisherAtIndex:v7];
  }
}

@end