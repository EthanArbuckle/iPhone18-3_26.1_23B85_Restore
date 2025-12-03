@interface PNPHandwritingGesturesViewController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (void)addBulletedListItemWithTitle:(id)title description:(id)description image:(id)image;
- (void)addDeleteBulletItem;
- (void)addSpaceBulletItem;
- (void)viewDidLoad;
@end

@implementation PNPHandwritingGesturesViewController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = [PNPHandwritingGesturesViewController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_DETAIL" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v15 = [(PNPHandwritingGesturesViewController *)v10 initWithTitle:v12 detailText:v14 icon:0 contentLayout:2];

  [(PNPWelcomeController *)v15 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v15;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = PNPHandwritingGesturesViewController;
  [(OBBaseWelcomeController *)&v22 viewDidLoad];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  view = [(PNPHandwritingGesturesViewController *)self view];
  [view setTintColor:systemBlueColor];

  contentView = [(PNPHandwritingGesturesViewController *)self contentView];
  v6 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v6 setAxis:1];
  [v6 setSpacing:48.0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v6];
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-18.0];
  [v9 setActive:1];

  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:18.0];
  [v12 setActive:1];

  topAnchor = [v6 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v18 setActive:1];

  [(PNPHandwritingGesturesViewController *)self setBulletListView:v6];
  v19 = objc_alloc(MEMORY[0x277D75D18]);
  v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 addArrangedSubview:v20];

  features = [(PNPWelcomeController *)self features];
  if (features)
  {
    [(PNPHandwritingGesturesViewController *)self addDeleteBulletItem];
  }

  if ((features & 2) != 0)
  {
    [(PNPHandwritingGesturesViewController *)self addSpaceBulletItem];
  }
}

- (void)addDeleteBulletItem
{
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_DELETE_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_DELETE_DETAIL" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_delete" renderingMode:1];
  [(PNPHandwritingGesturesViewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addSpaceBulletItem
{
  v7 = PencilPairingUIBundle();
  v3 = [v7 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_SPACE_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v4 = PencilPairingUIBundle();
  v5 = [v4 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_SPACE_DETAIL" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_make_space" renderingMode:1];
  [(PNPHandwritingGesturesViewController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addBulletedListItemWithTitle:(id)title description:(id)description image:(id)image
{
  v8 = MEMORY[0x277D75A68];
  imageCopy = image;
  descriptionCopy = description;
  titleCopy = title;
  v45 = objc_alloc_init(v8);
  [v45 setAxis:1];
  [v45 setSpacing:0.0];
  [v45 setAlignment:1];
  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v12 setText:titleCopy];

  [v12 setNumberOfLines:0];
  v13 = MEMORY[0x277D74300];
  v14 = *MEMORY[0x277D769D0];
  traitCollection = [(PNPHandwritingGesturesViewController *)self traitCollection];
  v16 = [v13 preferredFontForTextStyle:v14 compatibleWithTraitCollection:traitCollection];

  fontDescriptor = [v16 fontDescriptor];
  v44 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v18 = MEMORY[0x277D74300];
  [v16 pointSize];
  v19 = [v18 fontWithDescriptor:v44 size:?];
  [v12 setFont:v19];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v12 setTextColor:labelColor];

  LODWORD(v21) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v21];
  LODWORD(v22) = 1144750080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v22];
  [v45 addArrangedSubview:v12];
  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v23 setText:descriptionCopy];

  [v23 setNumberOfLines:0];
  v24 = MEMORY[0x277D74300];
  traitCollection2 = [(PNPHandwritingGesturesViewController *)self traitCollection];
  v26 = [v24 preferredFontForTextStyle:v14 compatibleWithTraitCollection:traitCollection2];
  [v23 setFont:v26];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v23 setTextColor:systemGrayColor];

  LODWORD(v28) = 1148846080;
  [v23 setContentHuggingPriority:1 forAxis:v28];
  LODWORD(v29) = 1144750080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v29];
  [v45 addArrangedSubview:v23];
  v30 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v30 setAxis:0];
  [v30 setSpacing:18.0];
  [v30 setAlignment:3];
  v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageCopy];
  [imageCopy size];
  v33 = v32;
  [imageCopy size];
  v35 = v34;

  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v31 setContentMode:1];
  [v30 addArrangedSubview:v31];
  [v30 addArrangedSubview:v45];
  widthAnchor = [v31 widthAnchor];
  v37 = [widthAnchor constraintGreaterThanOrEqualToConstant:105.0];
  [v37 setActive:1];

  heightAnchor = [v31 heightAnchor];
  widthAnchor2 = [v31 widthAnchor];
  v40 = [heightAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 / (v33 / v35)];
  [v40 setActive:1];

  LODWORD(v41) = 1148846080;
  [v31 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v31 setContentHuggingPriority:0 forAxis:v42];
  bulletListView = [(PNPHandwritingGesturesViewController *)self bulletListView];
  [bulletListView addArrangedSubview:v30];
}

@end