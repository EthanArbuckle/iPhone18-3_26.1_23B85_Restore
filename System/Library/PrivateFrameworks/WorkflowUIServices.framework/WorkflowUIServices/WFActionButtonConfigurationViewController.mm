@interface WFActionButtonConfigurationViewController
- (WFActionButtonConfigurationViewController)initWithConfigurationContext:(id)context;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFActionButtonConfigurationViewController

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = WFActionButtonConfigurationViewController;
  [(WFActionButtonConfigurationViewController *)&v7 viewWillAppear:appear];
  sheetPresentationController = [(WFActionButtonConfigurationViewController *)self sheetPresentationController];
  traitOverrides = [sheetPresentationController traitOverrides];
  [traitOverrides setUserInterfaceStyle:2];

  sheetPresentationController2 = [(WFActionButtonConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController2 setPrefersGrabberVisible:1];
}

- (WFActionButtonConfigurationViewController)initWithConfigurationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = WFActionButtonConfigurationViewController;
  return [(WFSystemActionConfigurationViewController *)&v4 initWithConfigurationContext:context];
}

@end