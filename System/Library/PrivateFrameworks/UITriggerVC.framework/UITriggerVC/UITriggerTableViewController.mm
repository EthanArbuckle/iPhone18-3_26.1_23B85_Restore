@interface UITriggerTableViewController
- (BOOL)requestPluginList;
- (BOOL)triggerUIProvider:(id)provider;
- (id)sectionStringForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tailStringForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_extractSections:(id)sections;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)idsRequestUITriggerResponse:(id)response;
- (void)idsUIProvidersResponse:(id)response;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation UITriggerTableViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = UITriggerTableViewController;
  [(UITriggerTableViewController *)&v12 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.carousel.uitrigger"];
  idsService = self->_idsService;
  self->_idsService = v3;

  [(IDSService *)self->_idsService setProtobufAction:sel_idsUIProvidersResponse_ forIncomingResponsesOfType:1];
  [(IDSService *)self->_idsService setProtobufAction:sel_idsRequestUITriggerResponse_ forIncomingResponsesOfType:2];
  [(IDSService *)self->_idsService addDelegate:self queue:MEMORY[0x277D85CD0]];
  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(UITriggerTableViewController *)self setTableView:v6];

  tableView = [(UITriggerTableViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(UITriggerTableViewController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(UITriggerTableViewController *)self tableView];
  [(UITriggerTableViewController *)self setView:tableView3];

  [(UITriggerTableViewController *)self setLoading:1];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(UITriggerTableViewController *)self setSectionList:v10];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(UITriggerTableViewController *)self setSectionContents:v11];

  [(UITriggerTableViewController *)self requestPluginList];
}

- (void)dealloc
{
  tableView = [(UITriggerTableViewController *)self tableView];
  delegate = [tableView delegate];

  if (delegate == self)
  {
    tableView2 = [(UITriggerTableViewController *)self tableView];
    [tableView2 setDelegate:0];
  }

  tableView3 = [(UITriggerTableViewController *)self tableView];
  dataSource = [tableView3 dataSource];

  if (dataSource == self)
  {
    tableView4 = [(UITriggerTableViewController *)self tableView];
    [tableView4 setDataSource:0];
  }

  v9.receiver = self;
  v9.super_class = UITriggerTableViewController;
  [(UITriggerTableViewController *)&v9 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = UITriggerTableViewController;
  [(UITriggerTableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillLayoutSubviews
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarFrame];
  v14 = v13;

  tableView = [(UITriggerTableViewController *)self tableView];
  [tableView setFrame:{v5, v7 + v14, v9, v11 - v14}];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(UITriggerTableViewController *)self loading])
  {
    return 1;
  }

  sectionList = [(UITriggerTableViewController *)self sectionList];
  v6 = [sectionList count];

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(UITriggerTableViewController *)self loading])
  {
    return 1;
  }

  sectionList = [(UITriggerTableViewController *)self sectionList];
  v8 = [sectionList objectAtIndexedSubscript:section];

  sectionContents = [(UITriggerTableViewController *)self sectionContents];
  v10 = [sectionContents objectForKeyedSubscript:v8];
  v11 = [v10 count];

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"MyReuseIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"MyReuseIdentifier"];
  }

  if ([(UITriggerTableViewController *)self loading])
  {
    textLabel = [v7 textLabel];
    [textLabel setText:@"Loading..."];
  }

  else
  {
    sectionList = [(UITriggerTableViewController *)self sectionList];
    textLabel = [sectionList objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    sectionContents = [(UITriggerTableViewController *)self sectionContents];
    v11 = [sectionContents objectForKeyedSubscript:textLabel];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    textLabel2 = [v7 textLabel];
    [textLabel2 setText:v12];
  }

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(UITriggerTableViewController *)self loading])
  {
    v6 = 0;
  }

  else
  {
    sectionList = [(UITriggerTableViewController *)self sectionList];
    v6 = [sectionList objectAtIndexedSubscript:section];
  }

  return v6;
}

- (id)sectionStringForIndexPath:(id)path
{
  pathCopy = path;
  if ([(UITriggerTableViewController *)self loading])
  {
    v5 = 0;
  }

  else
  {
    section = [pathCopy section];
    sectionList = [(UITriggerTableViewController *)self sectionList];
    v5 = [sectionList objectAtIndexedSubscript:section];
  }

  return v5;
}

- (id)tailStringForIndexPath:(id)path
{
  pathCopy = path;
  if ([(UITriggerTableViewController *)self loading])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UITriggerTableViewController *)self sectionStringForIndexPath:pathCopy];
    sectionContents = [(UITriggerTableViewController *)self sectionContents];
    v8 = [sectionContents objectForKeyedSubscript:v6];
    v5 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (pathCopy && ![(UITriggerTableViewController *)self loading])
  {
    v8 = [(UITriggerTableViewController *)self sectionStringForIndexPath:pathCopy];
    v9 = [(UITriggerTableViewController *)self tailStringForIndexPath:pathCopy];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, v9];
    NSLog(&cfstr_TriggeringUiPr.isa, v10);
    [(UITriggerTableViewController *)self triggerUIProvider:v10];
    v11 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__UITriggerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    block[3] = &unk_279DFEC78;
    v13 = viewCopy;
    v14 = pathCopy;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }
}

- (void)_extractSections:(id)sections
{
  v34 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = sectionsCopy;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v5)
  {
    v7 = 0;
    v8 = @"XXX";
    sectionContents2 = v4;
    goto LABEL_21;
  }

  v6 = v5;
  v7 = 0;
  v8 = @"XXX";
  v9 = *v30;
  v25 = v4;
  do
  {
    v10 = 0;
    v27 = v6;
    do
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      if (([v11 hasPrefix:v8] & 1) == 0)
      {
        if (v7)
        {
          sectionContents = [(UITriggerTableViewController *)self sectionContents];
          [sectionContents setObject:v7 forKey:v8];
        }

        v13 = [v11 componentsSeparatedByString:@"."];
        if ([v13 count] < 4)
        {
          NSLog(&cfstr_UiTriggerHasTo.isa, v11);
          v7 = 0;
        }

        else
        {
          v14 = MEMORY[0x277CCACA8];
          [v13 objectAtIndexedSubscript:0];
          v15 = v9;
          v17 = v16 = v8;
          v18 = [v13 objectAtIndexedSubscript:1];
          v19 = [v13 objectAtIndexedSubscript:2];
          v20 = [v14 stringWithFormat:@"%@.%@.%@", v17, v18, v19];

          v9 = v15;
          v4 = v25;

          [v26 addObject:v20];
          v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v8 = v20;
          v6 = v27;
        }
      }

      if (v7)
      {
        v21 = [(__CFString *)v8 length]+ 1;
        if (v21 < [v11 length])
        {
          v22 = [v11 substringFromIndex:v21];
          [v7 addObject:v22];
        }
      }

      ++v10;
    }

    while (v6 != v10);
    v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v6);

  if (v7)
  {
    sectionContents2 = [(UITriggerTableViewController *)self sectionContents];
    [sectionContents2 setObject:v7 forKey:v8];
LABEL_21:
  }

  [(UITriggerTableViewController *)self setSectionList:v26];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)idsUIProvidersResponse:(id)response
{
  responseCopy = response;
  v5 = [CSLUIPBUIPluginListResponse alloc];
  data = [responseCopy data];

  v11 = [(CSLUIPBUIPluginListResponse *)v5 initWithData:data];
  names = [(CSLUIPBUIPluginListResponse *)v11 names];
  NSLog(&cfstr_Providers.isa, names);

  names2 = [(CSLUIPBUIPluginListResponse *)v11 names];
  v9 = [names2 sortedArrayUsingComparator:&__block_literal_global];

  [(UITriggerTableViewController *)self _extractSections:v9];
  [(UITriggerTableViewController *)self setLoading:0];
  tableView = [(UITriggerTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)idsRequestUITriggerResponse:(id)response
{
  responseCopy = response;
  v5 = [CSLUIPBUIPluginTriggerResponse alloc];
  data = [responseCopy data];

  v13 = [(CSLUIPBUIPluginTriggerResponse *)v5 initWithData:data];
  if (![(CSLUIPBUIPluginTriggerResponse *)v13 success])
  {
    v7 = MEMORY[0x277D75110];
    v8 = MEMORY[0x277CCACA8];
    errorString = [(CSLUIPBUIPluginTriggerResponse *)v13 errorString];
    v10 = [v8 stringWithFormat:@"Failed to trigger UI provider because %@", errorString];
    v11 = [v7 alertControllerWithTitle:@"UITrigger Failure" message:v10 preferredStyle:1];

    v12 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:1 handler:0];
    [v11 addAction:v12];

    [(UITriggerTableViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (BOOL)requestPluginList
{
  v3 = objc_alloc_init(CSLUIPBUIPluginListRequest);
  v4 = [(UITriggerTableViewController *)self sendProtobufRequest:v3 type:1 priority:300 expectsResponse:1 errorHandler:&__block_literal_global_74 withTimeout:30.0];

  return v4 != 0;
}

- (BOOL)triggerUIProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(CSLUIPBUIPluginTriggerRequest);
  [(CSLUIPBUIPluginTriggerRequest *)v5 setName:providerCopy];

  v6 = [(UITriggerTableViewController *)self sendProtobufRequest:v5 type:2 priority:300 expectsResponse:1 errorHandler:&__block_literal_global_80 withTimeout:30.0];

  return v6 != 0;
}

@end