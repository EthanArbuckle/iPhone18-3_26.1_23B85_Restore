@interface FinanceKitSpendingSummariesViewControllerProvider
+ (id)makeViewControllerForDataProvider:(id)provider navigationController:(id)controller;
- (_TtC9PassKitUI49FinanceKitSpendingSummariesViewControllerProvider)init;
@end

@implementation FinanceKitSpendingSummariesViewControllerProvider

+ (id)makeViewControllerForDataProvider:(id)provider navigationController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  v7 = _s9PassKitUI07FinanceB39SpendingSummariesViewControllerProviderC04makegH04with010navigationH0So06UIViewH0CAA0dbe11SummaryDataI7WrapperC_So012UINavigationH0CtFZ_0(providerCopy, controllerCopy);

  return v7;
}

- (_TtC9PassKitUI49FinanceKitSpendingSummariesViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FinanceKitSpendingSummariesViewControllerProvider();
  return [(FinanceKitSpendingSummariesViewControllerProvider *)&v3 init];
}

@end