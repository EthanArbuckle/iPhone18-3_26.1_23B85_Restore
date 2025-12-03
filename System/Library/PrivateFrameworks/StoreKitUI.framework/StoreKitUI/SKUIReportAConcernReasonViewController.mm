@interface SKUIReportAConcernReasonViewController
- (SKUIReportAConcernReasonViewController)initWithCoder:(id)coder;
- (SKUIReportAConcernReasonViewController)initWithConfiguration:(id)configuration;
- (SKUIReportAConcernReasonViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUIReportAConcernReasonViewController

- (SKUIReportAConcernReasonViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIReportAConcernReasonViewController *)v5 initWithNibName:v6 bundle:v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_alloc_init(SKUIReportAConcernConfiguration);
  v14 = [(SKUIReportAConcernReasonViewController *)self initWithConfiguration:v13];

  return v14;
}

- (SKUIReportAConcernReasonViewController)initWithCoder:(id)coder
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIReportAConcernReasonViewController *)v4 initWithCoder:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = objc_alloc_init(SKUIReportAConcernConfiguration);
  v13 = [(SKUIReportAConcernReasonViewController *)self initWithConfiguration:v12];

  return v13;
}

- (SKUIReportAConcernReasonViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIReportAConcernReasonViewController *)v6 initWithConfiguration:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIReportAConcernReasonViewController;
  v14 = [(SKUIReportAConcernReasonViewController *)&v17 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, configuration);
  }

  return v15;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = SKUIReportAConcernReasonViewController;
  [(SKUIReportAConcernReasonViewController *)&v25 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"REPORT_A_CONCERN" value:&stru_2827FFAC8 table:0];
  [(SKUIReportAConcernReasonViewController *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"BACK" value:&stru_2827FFAC8 table:0];
  v8 = [v5 initWithTitle:v7 style:0 target:0 action:0];
  navigationItem = [(SKUIReportAConcernReasonViewController *)self navigationItem];
  [navigationItem setBackBarButtonItem:v8];

  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_2827FFAC8 table:0];
  v13 = [v10 initWithTitle:v12 style:0 target:self action:sel_cancelPressed_];
  navigationItem2 = [(SKUIReportAConcernReasonViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v13];

  v15 = objc_alloc(MEMORY[0x277D75B40]);
  v16 = [v15 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v16 setDelegate:self];
  v17 = [[SKUIReportAConcernReasonDataSource alloc] initWithTableView:v16];
  configuration = [(SKUIReportAConcernReasonViewController *)self configuration];
  reasons = [configuration reasons];
  [(SKUIReportAConcernReasonDataSource *)v17 setReasons:reasons];

  configuration2 = [(SKUIReportAConcernReasonViewController *)self configuration];
  selectReasonTitle = [configuration2 selectReasonTitle];
  [(SKUIReportAConcernReasonDataSource *)v17 setSelectReasonTitle:selectReasonTitle];

  configuration3 = [(SKUIReportAConcernReasonViewController *)self configuration];
  selectReasonSubtitle = [configuration3 selectReasonSubtitle];
  [(SKUIReportAConcernReasonDataSource *)v17 setSelectReasonSubtitle:selectReasonSubtitle];

  [v16 setDataSource:v17];
  [(SKUIReportAConcernReasonViewController *)self setDataSource:v17];
  view = [(SKUIReportAConcernReasonViewController *)self view];
  [view addSubview:v16];

  [(SKUIReportAConcernReasonViewController *)self setTableView:v16];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SKUIReportAConcernReasonViewController;
  [(SKUIReportAConcernReasonViewController *)&v13 viewWillLayoutSubviews];
  view = [(SKUIReportAConcernReasonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(SKUIReportAConcernReasonViewController *)self tableView];
  [tableView setFrame:{v5, v7, v9, v11}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  configuration = [(SKUIReportAConcernReasonViewController *)self configuration];
  reasons = [configuration reasons];
  v9 = [pathCopy row];

  v17 = [reasons objectAtIndexedSubscript:v9];

  configuration2 = [(SKUIReportAConcernReasonViewController *)self configuration];
  v11 = [configuration2 copy];

  v12 = [[SKUIReportAConcernDetailsViewController alloc] initWithConfiguration:v11];
  v13 = objc_alloc_init(SKUIReportAConcernMetadata);
  [(SKUIReportAConcernMetadata *)v13 setSelectedReason:v17];
  -[SKUIReportAConcernMetadata setItemIdentifier:](v13, "setItemIdentifier:", [v11 itemIdentifier]);
  reportConcernURL = [v11 reportConcernURL];
  [(SKUIReportAConcernMetadata *)v13 setReportConcernURL:reportConcernURL];

  [(SKUIReportAConcernDetailsViewController *)v12 setMetadata:v13];
  completion = [(SKUIReportAConcernReasonViewController *)self completion];
  [(SKUIReportAConcernDetailsViewController *)v12 setCompletion:completion];

  navigationController = [(SKUIReportAConcernReasonViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];
}

@end