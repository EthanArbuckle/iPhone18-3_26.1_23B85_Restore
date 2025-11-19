@interface WFActionButtonConfigurationViewController
- (WFActionButtonConfigurationViewController)initWithConfigurationContext:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFActionButtonConfigurationViewController

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFActionButtonConfigurationViewController;
  [(WFActionButtonConfigurationViewController *)&v7 viewWillAppear:a3];
  v4 = [(WFActionButtonConfigurationViewController *)self sheetPresentationController];
  v5 = [v4 traitOverrides];
  [v5 setUserInterfaceStyle:2];

  v6 = [(WFActionButtonConfigurationViewController *)self sheetPresentationController];
  [v6 setPrefersGrabberVisible:1];
}

- (WFActionButtonConfigurationViewController)initWithConfigurationContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFActionButtonConfigurationViewController;
  return [(WFSystemActionConfigurationViewController *)&v4 initWithConfigurationContext:a3];
}

@end