@interface WFCompactFileThumbnailViewController
- (WFCompactFileThumbnailViewController)initWithFileType:(id)type filename:(id)filename;
- (double)contentHeightForWidth:(double)width;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFCompactFileThumbnailViewController

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc(MEMORY[0x277D75B90]);
  view = [(WFCompactFileThumbnailViewController *)self view];
  v7 = [v5 initWithView:view];

  v8 = [MEMORY[0x277D75860] effectWithPreview:v7];
  v9 = [MEMORY[0x277D75890] styleWithEffect:v8 shape:0];

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFCompactFileThumbnailViewController;
  changeCopy = change;
  [(WFCompactFileThumbnailViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFCompactFileThumbnailViewController *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(WFCompactThumbnailViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)width
{
  [(WFCompactFileThumbnailViewController *)self loadViewIfNeeded];
  view = [(WFCompactFileThumbnailViewController *)self view];
  [view systemLayoutSizeFittingSize:{width, *(MEMORY[0x277D76C78] + 8)}];
  v7 = v6;

  return v7;
}

- (void)loadView
{
  v62[10] = *MEMORY[0x277D85DE8];
  v61.receiver = self;
  v61.super_class = WFCompactFileThumbnailViewController;
  [(WFCompactFileThumbnailViewController *)&v61 loadView];
  fileType = [(WFCompactFileThumbnailViewController *)self fileType];
  documentIcon = [fileType documentIcon];
  uIImage = [documentIcon UIImage];

  v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:uIImage];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(WFCompactFileThumbnailViewController *)self view];
  [view addSubview:v5];

  wf_disclosureImage = [MEMORY[0x277D755B8] wf_disclosureImage];
  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:wf_disclosureImage];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v7 setTintColor:systemGrayColor];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(WFCompactFileThumbnailViewController *)self view];
  [view2 addSubview:v7];

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  filename = [(WFCompactFileThumbnailViewController *)self filename];
  [v10 setText:filename];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v10 setFont:v12];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setTextAlignment:4];
  [v10 setNumberOfLines:5];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v13];
  view3 = [(WFCompactFileThumbnailViewController *)self view];
  [view3 addSubview:v10];

  v42 = MEMORY[0x277CCAAD0];
  topAnchor = [v5 topAnchor];
  view4 = [(WFCompactFileThumbnailViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v55 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:12.0];
  v62[0] = v55;
  bottomAnchor = [v5 bottomAnchor];
  view5 = [(WFCompactFileThumbnailViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v51 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-12.0];
  v62[1] = v51;
  leadingAnchor = [v5 leadingAnchor];
  view6 = [(WFCompactFileThumbnailViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v62[2] = v46;
  v49 = v5;
  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [v10 centerYAnchor];
  v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v62[3] = v43;
  topAnchor3 = [v10 topAnchor];
  view7 = [(WFCompactFileThumbnailViewController *)self view];
  topAnchor4 = [view7 topAnchor];
  v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
  v62[4] = v37;
  bottomAnchor3 = [v10 bottomAnchor];
  view8 = [(WFCompactFileThumbnailViewController *)self view];
  bottomAnchor4 = [view8 bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
  v62[5] = v32;
  leadingAnchor3 = [v10 leadingAnchor];
  trailingAnchor = [v5 trailingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
  v62[6] = v29;
  leadingAnchor4 = [v7 leadingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v26 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:20.0];
  v62[7] = v26;
  v40 = v7;
  trailingAnchor3 = [v7 trailingAnchor];
  selfCopy = self;
  view9 = [(WFCompactFileThumbnailViewController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v62[8] = v18;
  centerYAnchor3 = [v7 centerYAnchor];
  view10 = [(WFCompactFileThumbnailViewController *)self view];
  centerYAnchor4 = [view10 centerYAnchor];
  v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v62[9] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:10];
  [v42 activateConstraints:v23];

  v24 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:selfCopy];
  view11 = [(WFCompactFileThumbnailViewController *)selfCopy view];
  [view11 addInteraction:v24];
}

- (WFCompactFileThumbnailViewController)initWithFileType:(id)type filename:(id)filename
{
  typeCopy = type;
  filenameCopy = filename;
  v15.receiver = self;
  v15.super_class = WFCompactFileThumbnailViewController;
  v9 = [(WFCompactFileThumbnailViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileType, type);
    v11 = [filenameCopy copy];
    filename = v10->_filename;
    v10->_filename = v11;

    v13 = v10;
  }

  return v10;
}

@end