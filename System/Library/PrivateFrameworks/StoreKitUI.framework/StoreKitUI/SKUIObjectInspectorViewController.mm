@interface SKUIObjectInspectorViewController
+ (void)showInspectableObject:(id)a3;
- (CGRect)calculateContentViewFrameWithParentBounds:(CGRect)a3 withTraitCollection:(id)a4;
- (NSString)friendlyName;
- (NSString)information;
- (SKUIObjectInspectorViewController)initWithInspectableObject:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)beginSectionWithFriendlyName:(id)a3;
- (void)dismiss;
- (void)endSection;
- (void)exposePropertyWithFriendlyName:(id)a3 value:(id)a4;
- (void)handleBackgroundTap:(id)a3;
- (void)populate;
- (void)setFriendlyName:(id)a3;
- (void)setInformation:(id)a3;
- (void)setupConstraints;
- (void)showFromViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIObjectInspectorViewController

+ (void)showInspectableObject:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIObjectInspectorViewController showInspectableObject:];
  }

  v4 = [[SKUIObjectInspectorViewController alloc] initWithInspectableObject:v3];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 keyWindow];
  v7 = [v6 rootViewController];

  [(SKUIObjectInspectorViewController *)v4 showFromViewController:v7];
}

- (SKUIObjectInspectorViewController)initWithInspectableObject:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIObjectInspectorViewController initWithInspectableObject:];
  }

  v5 = [(SKUIObjectInspectorViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SKUIObjectInspectorViewController *)v5 setInspectableObject:v4];
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
  v4 = [(SKUIObjectInspectorViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(SKUIObjectInspectorViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(SKUIObjectInspectorViewController *)self view];
  [v7 setOpaque:0];

  v8 = objc_alloc(MEMORY[0x277D75D68]);
  v9 = [MEMORY[0x277D75210] effectWithStyle:2];
  v10 = [v8 initWithEffect:v9];
  [(SKUIObjectInspectorViewController *)self setBackgroundView:v10];

  v11 = [(SKUIObjectInspectorViewController *)self backgroundView];
  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleBackgroundTap_];
  [v11 addGestureRecognizer:v12];

  v13 = objc_alloc(MEMORY[0x277D75D18]);
  v14 = [(SKUIObjectInspectorViewController *)self view];
  [v14 bounds];
  v15 = [v13 initWithFrame:?];
  [(SKUIObjectInspectorViewController *)self setContentView:v15];

  v16 = [MEMORY[0x277D75348] whiteColor];
  v17 = [(SKUIObjectInspectorViewController *)self contentView];
  [v17 setBackgroundColor:v16];

  v18 = objc_alloc(MEMORY[0x277D75780]);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = *(MEMORY[0x277CBF3A0] + 8);
  v21 = *(MEMORY[0x277CBF3A0] + 16);
  v22 = *(MEMORY[0x277CBF3A0] + 24);
  v23 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], v20, v21, v22}];
  [(SKUIObjectInspectorViewController *)self setNavigationBar:v23];

  v24 = [(SKUIObjectInspectorViewController *)self navigationBar];
  v25 = [(SKUIObjectInspectorViewController *)self navigationItem];
  [v24 pushNavigationItem:v25 animated:0];

  v26 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v19, v20, v21, v22}];
  [(SKUIObjectInspectorViewController *)self setTableView:v26];

  v27 = [(SKUIObjectInspectorViewController *)self tableView];
  [v27 setDataSource:self];

  v28 = [(SKUIObjectInspectorViewController *)self tableView];
  [v28 setDelegate:self];

  v29 = [(SKUIObjectInspectorViewController *)self view];
  v30 = [(SKUIObjectInspectorViewController *)self backgroundView];
  [v29 addSubview:v30];

  v31 = [(SKUIObjectInspectorViewController *)self view];
  v32 = [(SKUIObjectInspectorViewController *)self contentView];
  [v31 addSubview:v32];

  v33 = [(SKUIObjectInspectorViewController *)self contentView];
  v34 = [(SKUIObjectInspectorViewController *)self tableView];
  [v33 addSubview:v34];

  v35 = [(SKUIObjectInspectorViewController *)self contentView];
  v36 = [(SKUIObjectInspectorViewController *)self navigationBar];
  [v35 addSubview:v36];

  [(SKUIObjectInspectorViewController *)self setupConstraints];
  [(SKUIObjectInspectorViewController *)self populate];
}

- (void)setupConstraints
{
  v3 = [(SKUIObjectInspectorViewController *)self backgroundView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(SKUIObjectInspectorViewController *)self backgroundView];
  v5 = [v4 widthAnchor];
  v6 = [(SKUIObjectInspectorViewController *)self view];
  v7 = [v6 widthAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [(SKUIObjectInspectorViewController *)self backgroundView];
  v10 = [v9 heightAnchor];
  v11 = [(SKUIObjectInspectorViewController *)self view];
  v12 = [v11 heightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(SKUIObjectInspectorViewController *)self backgroundView];
  v15 = [v14 centerXAnchor];
  v16 = [(SKUIObjectInspectorViewController *)self view];
  v17 = [v16 centerXAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(SKUIObjectInspectorViewController *)self backgroundView];
  v20 = [v19 centerYAnchor];
  v21 = [(SKUIObjectInspectorViewController *)self view];
  v22 = [v21 centerYAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(SKUIObjectInspectorViewController *)self contentView];
  v56 = [v24 topAnchor];

  v25 = [(SKUIObjectInspectorViewController *)self contentView];
  v26 = [v25 leftAnchor];

  v27 = [(SKUIObjectInspectorViewController *)self contentView];
  v28 = [v27 bottomAnchor];

  v29 = [(SKUIObjectInspectorViewController *)self contentView];
  v30 = [v29 rightAnchor];

  v31 = [(SKUIObjectInspectorViewController *)self navigationBar];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(SKUIObjectInspectorViewController *)self navigationBar];
  v33 = [v32 topAnchor];
  v34 = [v33 constraintEqualToAnchor:v56];
  [v34 setActive:1];

  v35 = [(SKUIObjectInspectorViewController *)self navigationBar];
  v36 = [v35 leftAnchor];
  v37 = [v36 constraintEqualToAnchor:v26];
  [v37 setActive:1];

  v38 = [(SKUIObjectInspectorViewController *)self navigationBar];
  v39 = [v38 rightAnchor];
  v40 = [v39 constraintEqualToAnchor:v30];
  [v40 setActive:1];

  v41 = [(SKUIObjectInspectorViewController *)self tableView];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = [(SKUIObjectInspectorViewController *)self tableView];
  v43 = [v42 topAnchor];
  v44 = [(SKUIObjectInspectorViewController *)self navigationBar];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(SKUIObjectInspectorViewController *)self tableView];
  v48 = [v47 leftAnchor];
  v49 = [v48 constraintEqualToAnchor:v26];
  [v49 setActive:1];

  v50 = [(SKUIObjectInspectorViewController *)self tableView];
  v51 = [v50 bottomAnchor];
  v52 = [v51 constraintEqualToAnchor:v28];
  [v52 setActive:1];

  v53 = [(SKUIObjectInspectorViewController *)self tableView];
  v54 = [v53 rightAnchor];
  v55 = [v54 constraintEqualToAnchor:v30];
  [v55 setActive:1];
}

- (void)handleBackgroundTap:(id)a3
{
  if ([a3 state] == 3)
  {

    [(SKUIObjectInspectorViewController *)self dismiss];
  }
}

- (void)showFromViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SKUIObjectInspectorViewController *)self view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(SKUIObjectInspectorViewController *)self backgroundView];
  [v15 setAlpha:0.0];

  v16 = [(SKUIObjectInspectorViewController *)self view];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v4 traitCollection];
  [(SKUIObjectInspectorViewController *)self calculateContentViewFrameWithParentBounds:v25 withTraitCollection:v18, v20, v22, v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(SKUIObjectInspectorViewController *)self contentView];
  [v34 setFrame:{v27, v29, v31, v33}];

  CGAffineTransformMakeScale(&v40, 0.9, 0.9);
  v35 = [(SKUIObjectInspectorViewController *)self contentView];
  v39 = v40;
  [v35 setTransform:&v39];

  v36 = [(SKUIObjectInspectorViewController *)self contentView];
  [v36 setAlpha:0.0];

  v37 = [(SKUIObjectInspectorViewController *)self view];
  [v5 addSubview:v37];

  [v4 addChildViewController:self];
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

- (CGRect)calculateContentViewFrameWithParentBounds:(CGRect)a3 withTraitCollection:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [a4 userInterfaceIdiom];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v9 = CGRectGetWidth(v19);
  v10 = v9;
  if (v8)
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__SKUIObjectInspectorViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2781F8348;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
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
  v3 = [(SKUIObjectInspectorViewController *)self inspectableObject];
  [v3 populateObjectInspector:self];

  v4 = [(SKUIObjectInspectorViewController *)self friendlyName];

  if (!v4)
  {
    v5 = [(SKUIObjectInspectorViewController *)self inspectableObject];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(SKUIObjectInspectorViewController *)self setFriendlyName:v7];
  }

  v8 = [(SKUIObjectInspectorViewController *)self tableView];
  [v8 reloadData];
}

- (void)setFriendlyName:(id)a3
{
  v4 = a3;
  v5 = [(SKUIObjectInspectorViewController *)self navigationItem];
  [v5 setTitle:v4];
}

- (NSString)friendlyName
{
  v2 = [(SKUIObjectInspectorViewController *)self navigationItem];
  v3 = [v2 title];

  return v3;
}

- (void)setInformation:(id)a3
{
  v4 = a3;
  v5 = [(SKUIObjectInspectorViewController *)self navigationItem];
  [v5 setPrompt:v4];
}

- (NSString)information
{
  v2 = [(SKUIObjectInspectorViewController *)self navigationItem];
  v3 = [v2 prompt];

  return v3;
}

- (void)beginSectionWithFriendlyName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_SKUIInspectablePropertySection);
  [(SKUIObjectInspectorViewController *)self setCurrentSection:v5];

  v6 = [(SKUIObjectInspectorViewController *)self currentSection];
  [v6 setFriendlyName:v4];
}

- (void)endSection
{
  v3 = [(SKUIObjectInspectorViewController *)self currentSection];

  if (v3)
  {
    v4 = [(SKUIObjectInspectorViewController *)self sections];
    v5 = [(SKUIObjectInspectorViewController *)self currentSection];
    [v4 addObject:v5];

    [(SKUIObjectInspectorViewController *)self setCurrentSection:0];
  }
}

- (void)exposePropertyWithFriendlyName:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_alloc_init(_SKUIInspectableProperty);
  [(_SKUIInspectableProperty *)v10 setFriendlyName:v7];

  [(_SKUIInspectableProperty *)v10 setValue:v6];
  v8 = [(SKUIObjectInspectorViewController *)self currentSection];
  v9 = [v8 properties];
  [v9 addObject:v10];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(SKUIObjectInspectorViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(SKUIObjectInspectorViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 properties];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"PropertyReuseIdentifier", a4}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"PropertyReuseIdentifier"];
  }

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(SKUIObjectInspectorViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 friendlyName];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SKUIObjectInspectorViewController *)self sections];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v11 = [v10 properties];
  v12 = [v7 row];

  v17 = [v11 objectAtIndexedSubscript:v12];

  v13 = [v17 friendlyName];
  v14 = [v8 textLabel];
  [v14 setText:v13];

  v15 = [v17 valueString];
  v16 = [v8 detailTextLabel];

  [v16 setText:v15];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKUIObjectInspectorViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v10 = [v9 properties];
  v16 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v11 = [MEMORY[0x277D75810] generalPasteboard];
  v12 = MEMORY[0x277CCACA8];
  v13 = [v16 friendlyName];
  v14 = [v16 valueString];
  v15 = [v12 stringWithFormat:@"%@: %@", v13, v14];

  [v11 setString:v15];
  [v7 deselectRowAtIndexPath:v6 animated:1];
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