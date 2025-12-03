@interface WLDetailViewController
- (WLDetailViewController)initWithContext:(id)context;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setCustomNavigationTitleView;
- (void)viewDidLoad;
@end

@implementation WLDetailViewController

- (WLDetailViewController)initWithContext:(id)context
{
  v39[4] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v38.receiver = self;
  v38.super_class = WLDetailViewController;
  v5 = [(WLDetailViewController *)&v38 init];
  if (v5)
  {
    v37 = 0;
    v6 = [WLDetailItem items:contextCopy size:&v37];
    data = v5->_data;
    v5->_data = v6;

    v36 = contextCopy;
    if ([(NSArray *)v5->_data count])
    {
      v8 = [(NSArray *)v5->_data objectAtIndexedSubscript:0];
      v5->_isNothingImported = [v8 count] == 0;
    }

    else
    {
      v5->_isNothingImported = 0;
    }

    v35 = objc_alloc_init(MEMORY[0x277CCA8E8]);
    v9 = [v35 stringFromByteCount:v37];
    size = v5->_size;
    v5->_size = v9;

    v11 = objc_alloc(MEMORY[0x277D75B40]);
    v12 = [v11 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"WLDetailViewCell"];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v12 setBackgroundColor:systemBackgroundColor];

    [v12 setDataSource:v5];
    [v12 setDelegate:v5];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(WLDetailViewController *)v5 view];
    [view addSubview:v12];

    v27 = MEMORY[0x277CCAAD0];
    topAnchor = [v12 topAnchor];
    view2 = [(WLDetailViewController *)v5 view];
    topAnchor2 = [view2 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[0] = v31;
    leftAnchor = [v12 leftAnchor];
    view3 = [(WLDetailViewController *)v5 view];
    leftAnchor2 = [view3 leftAnchor];
    v26 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v39[1] = v26;
    rightAnchor = [v12 rightAnchor];
    view4 = [(WLDetailViewController *)v5 view];
    rightAnchor2 = [view4 rightAnchor];
    v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v39[2] = v17;
    bottomAnchor = [v12 bottomAnchor];
    view5 = [(WLDetailViewController *)v5 view];
    bottomAnchor2 = [view5 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v27 activateConstraints:v22];

    contextCopy = v36;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WLDetailViewController;
  [(WLDetailViewController *)&v6 viewDidLoad];
  v3 = WLLocalizedString();
  [(WLDetailViewController *)self setTitle:v3];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
  navigationItem = [(WLDetailViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  [(WLDetailViewController *)self setCustomNavigationTitleView];
}

- (void)setCustomNavigationTitleView
{
  v47[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:clearColor2];

  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
  [v5 setFont:v7];

  [v5 setTextAlignment:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v5 setTextColor:labelColor];

  selfCopy = self;
  title = [(WLDetailViewController *)self title];
  [v5 setText:title];

  [v3 addSubview:v5];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  clearColor3 = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:clearColor3];

  [v10 setTextAlignment:1];
  v12 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v10 setFont:v12];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v10 setTextColor:secondaryLabelColor];

  [v10 setText:self->_size];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v10];
  v32 = MEMORY[0x277CCAAD0];
  topAnchor = [v5 topAnchor];
  topAnchor2 = [v3 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[0] = v38;
  leftAnchor = [v5 leftAnchor];
  v45 = v3;
  leftAnchor2 = [v3 leftAnchor];
  v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v47[1] = v14;
  rightAnchor = [v5 rightAnchor];
  rightAnchor2 = [v3 rightAnchor];
  v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v47[2] = v17;
  bottomAnchor = [v5 bottomAnchor];
  topAnchor3 = [v10 topAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v47[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  [v32 activateConstraints:v21];

  v33 = MEMORY[0x277CCAAD0];
  topAnchor4 = [v10 topAnchor];
  bottomAnchor2 = [v5 bottomAnchor];
  v39 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v46[0] = v39;
  leftAnchor3 = [v10 leftAnchor];
  leftAnchor4 = [v45 leftAnchor];
  v22 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v46[1] = v22;
  rightAnchor3 = [v10 rightAnchor];
  rightAnchor4 = [v45 rightAnchor];
  v25 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v46[2] = v25;
  bottomAnchor3 = [v10 bottomAnchor];
  bottomAnchor4 = [v45 bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v46[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [v33 activateConstraints:v29];

  navigationItem = [(WLDetailViewController *)selfCopy navigationItem];
  [navigationItem setTitleView:v45];

  v31 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  section = [(NSArray *)self->_data objectAtIndex:self->_isNothingImported + section];
  v5 = [section count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WLDetailViewCell" forIndexPath:pathCopy];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:secondarySystemBackgroundColor];

  v9 = -[NSArray objectAtIndex:](self->_data, "objectAtIndex:", [pathCopy section] + self->_isNothingImported);
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  symbolTintColor = [v10 symbolTintColor];

  if (symbolTintColor)
  {
    symbolTintColor2 = [v10 symbolTintColor];
    imageProperties = [valueCellConfiguration imageProperties];
    [imageProperties setTintColor:symbolTintColor2];
  }

  v15 = MEMORY[0x277D755B8];
  symbol = [v10 symbol];
  v17 = [v15 systemImageNamed:symbol];
  [valueCellConfiguration setImage:v17];

  text = [v10 text];
  [valueCellConfiguration setText:text];

  secondaryText = [v10 secondaryText];
  [valueCellConfiguration setSecondaryText:secondaryText];

  [v7 setContentConfiguration:valueCellConfiguration];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_isNothingImported + section > 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = WLLocalizedString();
  }

  return v7;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = self->_isNothingImported + section;
  if (!v7)
  {
    v8 = @"DETAIL_SUCCESS_SECTION_FOOTER_TITLE";
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = @"DETAIL_IMPORT_ERROR_SECTION_FOOTER_TITLE";
LABEL_5:
    v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v8];
    v10 = WLLocalizedString();

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end