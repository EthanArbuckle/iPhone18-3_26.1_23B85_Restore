@interface WLDetailViewController
- (WLDetailViewController)initWithContext:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setCustomNavigationTitleView;
- (void)viewDidLoad;
@end

@implementation WLDetailViewController

- (WLDetailViewController)initWithContext:(id)a3
{
  v39[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = WLDetailViewController;
  v5 = [(WLDetailViewController *)&v38 init];
  if (v5)
  {
    v37 = 0;
    v6 = [WLDetailItem items:v4 size:&v37];
    data = v5->_data;
    v5->_data = v6;

    v36 = v4;
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
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v12 setBackgroundColor:v13];

    [v12 setDataSource:v5];
    [v12 setDelegate:v5];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(WLDetailViewController *)v5 view];
    [v14 addSubview:v12];

    v27 = MEMORY[0x277CCAAD0];
    v33 = [v12 topAnchor];
    v34 = [(WLDetailViewController *)v5 view];
    v32 = [v34 topAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v39[0] = v31;
    v29 = [v12 leftAnchor];
    v30 = [(WLDetailViewController *)v5 view];
    v28 = [v30 leftAnchor];
    v26 = [v29 constraintEqualToAnchor:v28];
    v39[1] = v26;
    v25 = [v12 rightAnchor];
    v15 = [(WLDetailViewController *)v5 view];
    v16 = [v15 rightAnchor];
    v17 = [v25 constraintEqualToAnchor:v16];
    v39[2] = v17;
    v18 = [v12 bottomAnchor];
    v19 = [(WLDetailViewController *)v5 view];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v39[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v27 activateConstraints:v22];

    v4 = v36;
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
  v5 = [(WLDetailViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];

  [(WLDetailViewController *)self setCustomNavigationTitleView];
}

- (void)setCustomNavigationTitleView
{
  v47[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(MEMORY[0x277D756B8]);
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
  [v5 setFont:v7];

  [v5 setTextAlignment:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D75348] labelColor];
  [v5 setTextColor:v8];

  v44 = self;
  v9 = [(WLDetailViewController *)self title];
  [v5 setText:v9];

  [v3 addSubview:v5];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  v11 = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setTextAlignment:1];
  v12 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v10 setFont:v12];

  v13 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v10 setTextColor:v13];

  [v10 setText:self->_size];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v10];
  v32 = MEMORY[0x277CCAAD0];
  v42 = [v5 topAnchor];
  v40 = [v3 topAnchor];
  v38 = [v42 constraintEqualToAnchor:v40];
  v47[0] = v38;
  v36 = [v5 leftAnchor];
  v45 = v3;
  v34 = [v3 leftAnchor];
  v14 = [v36 constraintEqualToAnchor:v34];
  v47[1] = v14;
  v15 = [v5 rightAnchor];
  v16 = [v3 rightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v47[2] = v17;
  v18 = [v5 bottomAnchor];
  v19 = [v10 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v47[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  [v32 activateConstraints:v21];

  v33 = MEMORY[0x277CCAAD0];
  v43 = [v10 topAnchor];
  v41 = [v5 bottomAnchor];
  v39 = [v43 constraintEqualToAnchor:v41];
  v46[0] = v39;
  v37 = [v10 leftAnchor];
  v35 = [v45 leftAnchor];
  v22 = [v37 constraintEqualToAnchor:v35];
  v46[1] = v22;
  v23 = [v10 rightAnchor];
  v24 = [v45 rightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v46[2] = v25;
  v26 = [v10 bottomAnchor];
  v27 = [v45 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v46[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
  [v33 activateConstraints:v29];

  v30 = [(WLDetailViewController *)v44 navigationItem];
  [v30 setTitleView:v45];

  v31 = *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_data objectAtIndex:self->_isNothingImported + a4];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WLDetailViewCell" forIndexPath:v6];
  v8 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = -[NSArray objectAtIndex:](self->_data, "objectAtIndex:", [v6 section] + self->_isNothingImported);
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

  v11 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v12 = [v10 symbolTintColor];

  if (v12)
  {
    v13 = [v10 symbolTintColor];
    v14 = [v11 imageProperties];
    [v14 setTintColor:v13];
  }

  v15 = MEMORY[0x277D755B8];
  v16 = [v10 symbol];
  v17 = [v15 systemImageNamed:v16];
  [v11 setImage:v17];

  v18 = [v10 text];
  [v11 setText:v18];

  v19 = [v10 secondaryText];
  [v11 setSecondaryText:v19];

  [v7 setContentConfiguration:v11];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_isNothingImported + a4 > 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = WLLocalizedString();
  }

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self->_isNothingImported + a4;
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