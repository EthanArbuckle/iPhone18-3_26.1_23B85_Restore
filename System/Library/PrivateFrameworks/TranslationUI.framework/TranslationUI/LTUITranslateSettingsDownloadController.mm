@interface LTUITranslateSettingsDownloadController
+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context;
+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context headerController:(id)controller;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context;
- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context headerController:(id)controller;
- (void)loadBridge;
- (void)viewDidLoad;
@end

@implementation LTUITranslateSettingsDownloadController

+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context headerController:(id)controller
{
  controllerCopy = controller;
  v6 = [[LTUITranslateSettingsDownloadController alloc] initWithNibName:0 bundle:0 usageContext:context headerController:controllerCopy];

  return v6;
}

+ (id)translateSettingsDownloadControllerWithUsageContext:(unint64_t)context
{
  v3 = [[LTUITranslateSettingsDownloadController alloc] initWithNibName:0 bundle:0 usageContext:context];

  return v3;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = LTUITranslateSettingsDownloadController;
  v4 = [(LTUITranslateSettingsDownloadController *)&v8 initWithNibName:name bundle:bundle];
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

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context
{
  v10.receiver = self;
  v10.super_class = LTUITranslateSettingsDownloadController;
  v6 = [(LTUITranslateSettingsDownloadController *)&v10 initWithNibName:name bundle:bundle];
  v7 = v6;
  if (v6)
  {
    [(LTUITranslateSettingsDownloadController *)v6 setUsageContext:context];
    [(LTUITranslateSettingsDownloadController *)v7 setHeaderViewPresentationController:0];
    [(LTUITranslateSettingsDownloadController *)v7 loadBridge];
    v8 = v7;
  }

  return v7;
}

- (LTUITranslateSettingsDownloadController)initWithNibName:(id)name bundle:(id)bundle usageContext:(unint64_t)context headerController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = LTUITranslateSettingsDownloadController;
  v11 = [(LTUITranslateSettingsDownloadController *)&v15 initWithNibName:name bundle:bundle];
  v12 = v11;
  if (v11)
  {
    [(LTUITranslateSettingsDownloadController *)v11 setUsageContext:context];
    [(LTUITranslateSettingsDownloadController *)v12 setHeaderViewPresentationController:controllerCopy];
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
  view = [(LTUITranslateSettingsDownloadController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(UIViewController *)self->_bridge view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(UIViewController *)self->_bridge view];
  [view3 setAutoresizingMask:18];

  view4 = [(LTUITranslateSettingsDownloadController *)self view];
  view5 = [(UIViewController *)self->_bridge view];
  [view4 addSubview:view5];

  [(UIViewController *)self->_bridge didMoveToParentViewController:self];
}

- (void)loadBridge
{
  usageContext = [(LTUITranslateSettingsDownloadController *)self usageContext];
  if (usageContext == 2)
  {
    headerViewPresentationController = [(LTUITranslateSettingsDownloadController *)self headerViewPresentationController];

    if (headerViewPresentationController)
    {
      headerViewPresentationController2 = [(LTUITranslateSettingsDownloadController *)self headerViewPresentationController];
      v7 = [LTUIHostedDownloadViewBridge personalTranslatorViewControllerWithAnimatedHeaderFor:headerViewPresentationController2];

      goto LABEL_10;
    }

    v4 = +[LTUIHostedDownloadViewBridge personalTranslatorViewController];
  }

  else
  {
    if (usageContext == 1)
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