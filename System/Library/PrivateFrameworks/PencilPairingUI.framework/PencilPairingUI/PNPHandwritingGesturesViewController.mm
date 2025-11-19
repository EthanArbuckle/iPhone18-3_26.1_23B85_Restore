@interface PNPHandwritingGesturesViewController
+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6;
- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 image:(id)a5;
- (void)addDeleteBulletItem;
- (void)addSpaceBulletItem;
- (void)viewDidLoad;
@end

@implementation PNPHandwritingGesturesViewController

+ (id)_controllerWithType:(int64_t)a3 buttonType:(int64_t)a4 deviceType:(int64_t)a5 delegate:(id)a6
{
  v9 = a6;
  v10 = [PNPHandwritingGesturesViewController alloc];
  v11 = PencilPairingUIBundle();
  v12 = [v11 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_TITLE" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v13 = PencilPairingUIBundle();
  v14 = [v13 localizedStringForKey:@"HANDWRITING_GESTURES_EDUCATION_PANEL_DETAIL" value:&stru_286FDFDB8 table:@"PencilSettings"];
  v15 = [(PNPHandwritingGesturesViewController *)v10 initWithTitle:v12 detailText:v14 icon:0 contentLayout:2];

  [(PNPWelcomeController *)v15 setControllerType:a3 buttonType:a4 deviceType:a5 delegate:v9];

  return v15;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = PNPHandwritingGesturesViewController;
  [(OBBaseWelcomeController *)&v22 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  v4 = [(PNPHandwritingGesturesViewController *)self view];
  [v4 setTintColor:v3];

  v5 = [(PNPHandwritingGesturesViewController *)self contentView];
  v6 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v6 setAxis:1];
  [v6 setSpacing:48.0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v6];
  v7 = [v6 leadingAnchor];
  v8 = [v5 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-18.0];
  [v9 setActive:1];

  v10 = [v6 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:18.0];
  [v12 setActive:1];

  v13 = [v6 topAnchor];
  v14 = [v5 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [v6 bottomAnchor];
  v17 = [v5 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  [(PNPHandwritingGesturesViewController *)self setBulletListView:v6];
  v19 = objc_alloc(MEMORY[0x277D75D18]);
  v20 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 addArrangedSubview:v20];

  v21 = [(PNPWelcomeController *)self features];
  if (v21)
  {
    [(PNPHandwritingGesturesViewController *)self addDeleteBulletItem];
  }

  if ((v21 & 2) != 0)
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

- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 image:(id)a5
{
  v8 = MEMORY[0x277D75A68];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v45 = objc_alloc_init(v8);
  [v45 setAxis:1];
  [v45 setSpacing:0.0];
  [v45 setAlignment:1];
  v12 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v12 setText:v11];

  [v12 setNumberOfLines:0];
  v13 = MEMORY[0x277D74300];
  v14 = *MEMORY[0x277D769D0];
  v15 = [(PNPHandwritingGesturesViewController *)self traitCollection];
  v16 = [v13 preferredFontForTextStyle:v14 compatibleWithTraitCollection:v15];

  v17 = [v16 fontDescriptor];
  v44 = [v17 fontDescriptorWithSymbolicTraits:2];

  v18 = MEMORY[0x277D74300];
  [v16 pointSize];
  v19 = [v18 fontWithDescriptor:v44 size:?];
  [v12 setFont:v19];

  v20 = [MEMORY[0x277D75348] labelColor];
  [v12 setTextColor:v20];

  LODWORD(v21) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v21];
  LODWORD(v22) = 1144750080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v22];
  [v45 addArrangedSubview:v12];
  v23 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v23 setText:v10];

  [v23 setNumberOfLines:0];
  v24 = MEMORY[0x277D74300];
  v25 = [(PNPHandwritingGesturesViewController *)self traitCollection];
  v26 = [v24 preferredFontForTextStyle:v14 compatibleWithTraitCollection:v25];
  [v23 setFont:v26];

  v27 = [MEMORY[0x277D75348] systemGrayColor];
  [v23 setTextColor:v27];

  LODWORD(v28) = 1148846080;
  [v23 setContentHuggingPriority:1 forAxis:v28];
  LODWORD(v29) = 1144750080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v29];
  [v45 addArrangedSubview:v23];
  v30 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v30 setAxis:0];
  [v30 setSpacing:18.0];
  [v30 setAlignment:3];
  v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
  [v9 size];
  v33 = v32;
  [v9 size];
  v35 = v34;

  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v31 setContentMode:1];
  [v30 addArrangedSubview:v31];
  [v30 addArrangedSubview:v45];
  v36 = [v31 widthAnchor];
  v37 = [v36 constraintGreaterThanOrEqualToConstant:105.0];
  [v37 setActive:1];

  v38 = [v31 heightAnchor];
  v39 = [v31 widthAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 multiplier:1.0 / (v33 / v35)];
  [v40 setActive:1];

  LODWORD(v41) = 1148846080;
  [v31 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v31 setContentHuggingPriority:0 forAxis:v42];
  v43 = [(PNPHandwritingGesturesViewController *)self bulletListView];
  [v43 addArrangedSubview:v30];
}

@end