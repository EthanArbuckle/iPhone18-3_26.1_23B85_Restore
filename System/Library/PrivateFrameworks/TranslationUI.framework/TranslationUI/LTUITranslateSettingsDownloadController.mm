@interface LTUITranslateSettingsDownloadController
+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)a3;
+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)a3 headerController:(id)a4;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)a3 bundle:(id)a4;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)a3 bundle:(id)a4 usageContext:(unint64_t)a5;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)a3 bundle:(id)a4 usageContext:(unint64_t)a5 headerController:(id)a6;
- (void)loadBridge;
- (void)viewDidLoad;
@end

@implementation LTUITranslateSettingsDownloadController

+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)a3 headerController:(id)a4
{
  v5 = a4;
  v6 = [[LTUITranslateSettingsDownloadController alloc] initWithNibName:0 bundle:0 usageContext:a3 headerController:v5];

  return v6;
}

+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)a3
{
  v3 = [[LTUITranslateSettingsDownloadController alloc] initWithNibName:0 bundle:0 usageContext:a3];

  return v3;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = LTUITranslateSettingsDownloadController;
  v4 = [(LTUITranslateSettingsDownloadController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(LTUITranslateSettingsDownloadController *)v4 setUsageContext:0];
    [(LTUITranslateSettingsDownloadController *)v5 setHeaderViewPresentationController:0];
    [(LTUITranslateSettingsDownloadController *)v5 loadBridge];
    v6 = v5;
  }

  return v5;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)a3 bundle:(id)a4 usageContext:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = LTUITranslateSettingsDownloadController;
  v6 = [(LTUITranslateSettingsDownloadController *)&v10 initWithNibName:a3 bundle:a4];
  v7 = v6;
  if (v6)
  {
    [(LTUITranslateSettingsDownloadController *)v6 setUsageContext:a5];
    [(LTUITranslateSettingsDownloadController *)v7 setHeaderViewPresentationController:0];
    [(LTUITranslateSettingsDownloadController *)v7 loadBridge];
    v8 = v7;
  }

  return v7;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)a3 bundle:(id)a4 usageContext:(unint64_t)a5 headerController:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = LTUITranslateSettingsDownloadController;
  v11 = [(LTUITranslateSettingsDownloadController *)&v15 initWithNibName:a3 bundle:a4];
  v12 = v11;
  if (v11)
  {
    [(LTUITranslateSettingsDownloadController *)v11 setUsageContext:a5];
    [(LTUITranslateSettingsDownloadController *)v12 setHeaderViewPresentationController:v10];
    [(LTUITranslateSettingsDownloadController *)v12 loadBridge];
    v13 = v12;
  }

  return v12;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = LTUITranslateSettingsDownloadController;
  [(LTUITranslateSettingsDownloadController *)&v16 viewDidLoad];
  [(LTUITranslateSettingsDownloadController *)self addChildViewController:self->_bridge];
  v3 = [(LTUITranslateSettingsDownloadController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIViewController *)self->_bridge view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(UIViewController *)self->_bridge view];
  [v13 setAutoresizingMask:18];

  v14 = [(LTUITranslateSettingsDownloadController *)self view];
  v15 = [(UIViewController *)self->_bridge view];
  [v14 addSubview:v15];

  [(UIViewController *)self->_bridge didMoveToParentViewController:self];
}

- (void)loadBridge
{
  v3 = [(LTUITranslateSettingsDownloadController *)self usageContext];
  if (v3 == 2)
  {
    v5 = [(LTUITranslateSettingsDownloadController *)self headerViewPresentationController];

    if (v5)
    {
      v6 = [(LTUITranslateSettingsDownloadController *)self headerViewPresentationController];
      v7 = [LTUIHostedDownloadViewBridge personalTranslatorViewControllerWithAnimatedHeaderFor:v6];

      goto LABEL_10;
    }

    v4 = +[LTUIHostedDownloadViewBridge personalTranslatorViewController];
  }

  else
  {
    if (v3 == 1)
    {
      +[LTUIHostedDownloadViewBridge accessibilityViewController];
    }

    else
    {
      +[LTUIHostedDownloadViewBridge viewController];
    }
    v4 = ;
  }

  v7 = v4;
LABEL_10:
  bridge = self->_bridge;
  self->_bridge = v7;
}

@end