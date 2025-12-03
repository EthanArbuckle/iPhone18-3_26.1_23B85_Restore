@interface PRWidgetEducationViewController
- (void)_updatePreferredContentSize;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PRWidgetEducationViewController

- (void)loadView
{
  v3 = objc_alloc_init(PRWidgetEducationView);
  [(PRWidgetEducationView *)v3 setDelegate:self];
  [(PRWidgetEducationViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRWidgetEducationViewController;
  [(PRWidgetEducationViewController *)&v3 viewDidLoad];
  [(PRWidgetEducationViewController *)self setModalPresentationStyle:2];
  [(PRWidgetEducationViewController *)self _updatePreferredContentSize];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRWidgetEducationViewController;
  [(PRWidgetEducationViewController *)&v3 viewDidLayoutSubviews];
  [(PRWidgetEducationViewController *)self _updatePreferredContentSize];
}

- (void)_updatePreferredContentSize
{
  view = [(PRWidgetEducationViewController *)self view];
  v4 = objc_opt_class();
  v5 = view;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  contentView = [v7 contentView];

  LODWORD(v9) = 1148846080;
  LODWORD(v10) = 1112014848;
  [contentView systemLayoutSizeFittingSize:420.0 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v9, v10}];
  v12 = v11;
  v14 = v13;

  [(PRWidgetEducationViewController *)self setPreferredContentSize:v12, v14];
}

@end