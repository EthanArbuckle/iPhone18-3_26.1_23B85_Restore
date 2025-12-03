@interface SKUIObjectInspectorViewController
+ (void)showInspectableObject:(id)object;
- (CGRect)calculateContentViewFrameWithParentBounds:(CGRect)bounds withTraitCollection:(id)collection;
- (NSString)friendlyName;
- (NSString)information;
- (SKUIObjectInspectorViewController)initWithInspectableObject:(id)object;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)beginSectionWithFriendlyName:(id)name;
- (void)dismiss;
- (void)endSection;
- (void)exposePropertyWithFriendlyName:(id)name value:(id)value;
- (void)handleBackgroundTap:(id)tap;
- (void)populate;
- (void)setFriendlyName:(id)name;
- (void)setInformation:(id)information;
- (void)setupConstraints;
- (void)showFromViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIObjectInspectorViewController

+ (void)showInspectableObject:(id)object
{
  objectCopy = object;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIObjectInspectorViewController showInspectableObject:];
  }

  v4 = [[SKUIObjectInspectorViewController alloc] initWithInspectableObject:objectCopy];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  keyWindow = [mEMORY[0x277D75128] keyWindow];
  rootViewController = [keyWindow rootViewController];

  [(SKUIObjectInspectorViewController *)v4 showFromViewController:rootViewController];
}

- (SKUIObjectInspectorViewController)initWithInspectableObject:(id)object
{
  objectCopy = object;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIObjectInspectorViewController initWithInspectableObject:];
  }

  v5 = [(SKUIObjectInspectorViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SKUIObjectInspectorViewController *)v5 setInspectableObject:objectCopy];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(SKUIObjectInspectorViewController *)v6 setSections:v7];
  }

  return v6;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = SKUIObjectInspectorViewController;
  [(SKUIObjectInspectorViewController *)&v37 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  navigationItem = [(SKUIObjectInspectorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(SKUIObjectInspectorViewController *)self view];
  [view setBackgroundColor:clearColor];

  view2 = [(SKUIObjectInspectorViewController *)self view];
  [view2 setOpaque:0];

  v8 = objc_alloc(MEMORY[0x277D75D68]);
  v9 = [MEMORY[0x277D75210] effectWithStyle:2];
  v10 = [v8 initWithEffect:v9];
  [(SKUIObjectInspectorViewController *)self setBackgroundView:v10];

  backgroundView = [(SKUIObjectInspectorViewController *)self backgroundView];
  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleBackgroundTap_];
  [backgroundView addGestureRecognizer:v12];

  v13 = objc_alloc(MEMORY[0x277D75D18]);
  view3 = [(SKUIObjectInspectorViewController *)self view];
  [view3 bounds];
  v15 = [v13 initWithFrame:?];
  [(SKUIObjectInspectorViewController *)self setContentView:v15];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  contentView = [(SKUIObjectInspectorViewController *)self contentView];
  [contentView setBackgroundColor:whiteColor];

  v18 = objc_alloc(MEMORY[0x277D75780]);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = *(MEMORY[0x277CBF3A0] + 8);
  v21 = *(MEMORY[0x277CBF3A0] + 16);
  v22 = *(MEMORY[0x277CBF3A0] + 24);
  v23 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], v20, v21, v22}];
  [(SKUIObjectInspectorViewController *)self setNavigationBar:v23];

  navigationBar = [(SKUIObjectInspectorViewController *)self navigationBar];
  navigationItem2 = [(SKUIObjectInspectorViewController *)self navigationItem];
  [navigationBar pushNavigationItem:navigationItem2 animated:0];

  v26 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v19, v20, v21, v22}];
  [(SKUIObjectInspectorViewController *)self setTableView:v26];

  tableView = [(SKUIObjectInspectorViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(SKUIObjectInspectorViewController *)self tableView];
  [tableView2 setDelegate:self];

  view4 = [(SKUIObjectInspectorViewController *)self view];
  backgroundView2 = [(SKUIObjectInspectorViewController *)self backgroundView];
  [view4 addSubview:backgroundView2];

  view5 = [(SKUIObjectInspectorViewController *)self view];
  contentView2 = [(SKUIObjectInspectorViewController *)self contentView];
  [view5 addSubview:contentView2];

  contentView3 = [(SKUIObjectInspectorViewController *)self contentView];
  tableView3 = [(SKUIObjectInspectorViewController *)self tableView];
  [contentView3 addSubview:tableView3];

  contentView4 = [(SKUIObjectInspectorViewController *)self contentView];
  navigationBar2 = [(SKUIObjectInspectorViewController *)self navigationBar];
  [contentView4 addSubview:navigationBar2];

  [(SKUIObjectInspectorViewController *)self setupConstraints];
  [(SKUIObjectInspectorViewController *)self populate];
}

- (void)setupConstraints
{
  backgroundView = [(SKUIObjectInspectorViewController *)self backgroundView];
  [backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  backgroundView2 = [(SKUIObjectInspectorViewController *)self backgroundView];
  widthAnchor = [backgroundView2 widthAnchor];
  view = [(SKUIObjectInspectorViewController *)self view];
  widthAnchor2 = [view widthAnchor];
  v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v8 setActive:1];

  backgroundView3 = [(SKUIObjectInspectorViewController *)self backgroundView];
  heightAnchor = [backgroundView3 heightAnchor];
  view2 = [(SKUIObjectInspectorViewController *)self view];
  heightAnchor2 = [view2 heightAnchor];
  v13 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v13 setActive:1];

  backgroundView4 = [(SKUIObjectInspectorViewController *)self backgroundView];
  centerXAnchor = [backgroundView4 centerXAnchor];
  view3 = [(SKUIObjectInspectorViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v18 setActive:1];

  backgroundView5 = [(SKUIObjectInspectorViewController *)self backgroundView];
  centerYAnchor = [backgroundView5 centerYAnchor];
  view4 = [(SKUIObjectInspectorViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v23 setActive:1];

  contentView = [(SKUIObjectInspectorViewController *)self contentView];
  topAnchor = [contentView topAnchor];

  contentView2 = [(SKUIObjectInspectorViewController *)self contentView];
  leftAnchor = [contentView2 leftAnchor];

  contentView3 = [(SKUIObjectInspectorViewController *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];

  contentView4 = [(SKUIObjectInspectorViewController *)self contentView];
  rightAnchor = [contentView4 rightAnchor];

  navigationBar = [(SKUIObjectInspectorViewController *)self navigationBar];
  [navigationBar setTranslatesAutoresizingMaskIntoConstraints:0];

  navigationBar2 = [(SKUIObjectInspectorViewController *)self navigationBar];
  topAnchor2 = [navigationBar2 topAnchor];
  v34 = [topAnchor2 constraintEqualToAnchor:topAnchor];
  [v34 setActive:1];

  navigationBar3 = [(SKUIObjectInspectorViewController *)self navigationBar];
  leftAnchor2 = [navigationBar3 leftAnchor];
  v37 = [leftAnchor2 constraintEqualToAnchor:leftAnchor];
  [v37 setActive:1];

  navigationBar4 = [(SKUIObjectInspectorViewController *)self navigationBar];
  rightAnchor2 = [navigationBar4 rightAnchor];
  v40 = [rightAnchor2 constraintEqualToAnchor:rightAnchor];
  [v40 setActive:1];

  tableView = [(SKUIObjectInspectorViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(SKUIObjectInspectorViewController *)self tableView];
  topAnchor3 = [tableView2 topAnchor];
  navigationBar5 = [(SKUIObjectInspectorViewController *)self navigationBar];
  bottomAnchor2 = [navigationBar5 bottomAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2];
  [v46 setActive:1];

  tableView3 = [(SKUIObjectInspectorViewController *)self tableView];
  leftAnchor3 = [tableView3 leftAnchor];
  v49 = [leftAnchor3 constraintEqualToAnchor:leftAnchor];
  [v49 setActive:1];

  tableView4 = [(SKUIObjectInspectorViewController *)self tableView];
  bottomAnchor3 = [tableView4 bottomAnchor];
  v52 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v52 setActive:1];

  tableView5 = [(SKUIObjectInspectorViewController *)self tableView];
  rightAnchor3 = [tableView5 rightAnchor];
  v55 = [rightAnchor3 constraintEqualToAnchor:rightAnchor];
  [v55 setActive:1];
}

- (void)handleBackgroundTap:(id)tap
{
  if ([tap state] == 3)
  {

    [(SKUIObjectInspectorViewController *)self dismiss];
  }
}

- (void)showFromViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(SKUIObjectInspectorViewController *)self view];
  [view2 setFrame:{v7, v9, v11, v13}];

  backgroundView = [(SKUIObjectInspectorViewController *)self backgroundView];
  [backgroundView setAlpha:0.0];

  view3 = [(SKUIObjectInspectorViewController *)self view];
  [view3 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  traitCollection = [controllerCopy traitCollection];
  [(SKUIObjectInspectorViewController *)self calculateContentViewFrameWithParentBounds:traitCollection withTraitCollection:v18, v20, v22, v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  contentView = [(SKUIObjectInspectorViewController *)self contentView];
  [contentView setFrame:{v27, v29, v31, v33}];

  CGAffineTransformMakeScale(&v40, 0.9, 0.9);
  contentView2 = [(SKUIObjectInspectorViewController *)self contentView];
  v39 = v40;
  [contentView2 setTransform:&v39];

  contentView3 = [(SKUIObjectInspectorViewController *)self contentView];
  [contentView3 setAlpha:0.0];

  view4 = [(SKUIObjectInspectorViewController *)self view];
  [view addSubview:view4];

  [controllerCopy addChildViewController:self];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __60__SKUIObjectInspectorViewController_showFromViewController___block_invoke;
  v38[3] = &unk_2781F80F0;
  v38[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v38 animations:0.2];
}

void __60__SKUIObjectInspectorViewController_showFromViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) contentView];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) contentView];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v4 setTransform:v6];
}

- (void)dismiss
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SKUIObjectInspectorViewController_dismiss__block_invoke;
  v3[3] = &unk_2781F80F0;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__SKUIObjectInspectorViewController_dismiss__block_invoke_2;
  v2[3] = &unk_2781F84A0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.2];
}

void __44__SKUIObjectInspectorViewController_dismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) contentView];
  [v3 setAlpha:0.0];

  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  v4 = [*(a1 + 32) contentView];
  v5 = v6;
  [v4 setTransform:&v5];
}

void __44__SKUIObjectInspectorViewController_dismiss__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];
}

- (CGRect)calculateContentViewFrameWithParentBounds:(CGRect)bounds withTraitCollection:(id)collection
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  userInterfaceIdiom = [collection userInterfaceIdiom];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v9 = CGRectGetWidth(v19);
  v10 = v9;
  if (userInterfaceIdiom)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v11 = CGRectGetHeight(v20);
    if (v10 < v11)
    {
      v11 = v10;
    }

    v12 = round(v11 * 0.8);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v13 = CGRectGetMidX(v21) - v12 * 0.5;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v14 = CGRectGetMidY(v22) - v12 * 0.5;
    v15 = v12;
  }

  else
  {
    v12 = v9 * 0.95;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v15 = CGRectGetHeight(v23) * 0.9;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v13 = CGRectGetMidX(v24) - v12 * 0.5;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v14 = CGRectGetMidY(v25) - v15 * 0.5;
  }

  v16 = v13;
  v17 = v12;
  v18 = v15;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v14;
  result.origin.x = v16;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__SKUIObjectInspectorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2781F8348;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

void __88__SKUIObjectInspectorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21 = [v2 view];
  [v21 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) traitCollection];
  [v2 calculateContentViewFrameWithParentBounds:v11 withTraitCollection:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) contentView];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (void)populate
{
  inspectableObject = [(SKUIObjectInspectorViewController *)self inspectableObject];
  [inspectableObject populateObjectInspector:self];

  friendlyName = [(SKUIObjectInspectorViewController *)self friendlyName];

  if (!friendlyName)
  {
    inspectableObject2 = [(SKUIObjectInspectorViewController *)self inspectableObject];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(SKUIObjectInspectorViewController *)self setFriendlyName:v7];
  }

  tableView = [(SKUIObjectInspectorViewController *)self tableView];
  [tableView reloadData];
}

- (void)setFriendlyName:(id)name
{
  nameCopy = name;
  navigationItem = [(SKUIObjectInspectorViewController *)self navigationItem];
  [navigationItem setTitle:nameCopy];
}

- (NSString)friendlyName
{
  navigationItem = [(SKUIObjectInspectorViewController *)self navigationItem];
  title = [navigationItem title];

  return title;
}

- (void)setInformation:(id)information
{
  informationCopy = information;
  navigationItem = [(SKUIObjectInspectorViewController *)self navigationItem];
  [navigationItem setPrompt:informationCopy];
}

- (NSString)information
{
  navigationItem = [(SKUIObjectInspectorViewController *)self navigationItem];
  prompt = [navigationItem prompt];

  return prompt;
}

- (void)beginSectionWithFriendlyName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(_SKUIInspectablePropertySection);
  [(SKUIObjectInspectorViewController *)self setCurrentSection:v5];

  currentSection = [(SKUIObjectInspectorViewController *)self currentSection];
  [currentSection setFriendlyName:nameCopy];
}

- (void)endSection
{
  currentSection = [(SKUIObjectInspectorViewController *)self currentSection];

  if (currentSection)
  {
    sections = [(SKUIObjectInspectorViewController *)self sections];
    currentSection2 = [(SKUIObjectInspectorViewController *)self currentSection];
    [sections addObject:currentSection2];

    [(SKUIObjectInspectorViewController *)self setCurrentSection:0];
  }
}

- (void)exposePropertyWithFriendlyName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v10 = objc_alloc_init(_SKUIInspectableProperty);
  [(_SKUIInspectableProperty *)v10 setFriendlyName:nameCopy];

  [(_SKUIInspectableProperty *)v10 setValue:valueCopy];
  currentSection = [(SKUIObjectInspectorViewController *)self currentSection];
  properties = [currentSection properties];
  [properties addObject:v10];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(SKUIObjectInspectorViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(SKUIObjectInspectorViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  properties = [v6 properties];
  v8 = [properties count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"PropertyReuseIdentifier", path}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"PropertyReuseIdentifier"];
  }

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(SKUIObjectInspectorViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  friendlyName = [v6 friendlyName];

  return friendlyName;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  sections = [(SKUIObjectInspectorViewController *)self sections];
  v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  properties = [v10 properties];
  v12 = [pathCopy row];

  v17 = [properties objectAtIndexedSubscript:v12];

  friendlyName = [v17 friendlyName];
  textLabel = [cellCopy textLabel];
  [textLabel setText:friendlyName];

  valueString = [v17 valueString];
  detailTextLabel = [cellCopy detailTextLabel];

  [detailTextLabel setText:valueString];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sections = [(SKUIObjectInspectorViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  properties = [v9 properties];
  v16 = [properties objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  v12 = MEMORY[0x277CCACA8];
  friendlyName = [v16 friendlyName];
  valueString = [v16 valueString];
  v15 = [v12 stringWithFormat:@"%@: %@", friendlyName, valueString];

  [generalPasteboard setString:v15];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

+ (void)showInspectableObject:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIObjectInspectorViewController showInspectableObject:]";
}

- (void)initWithInspectableObject:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIObjectInspectorViewController initWithInspectableObject:]";
}

@end