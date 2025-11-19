@interface FinanceKitSpendingSummariesViewControllerProvider
+ (id)makeViewControllerForDataProvider:(id)a3 navigationController:(id)a4;
- (_TtC9PassKitUI49FinanceKitSpendingSummariesViewControllerProvider)init;
@end

@implementation FinanceKitSpendingSummariesViewControllerProvider

+ (id)makeViewControllerForDataProvider:(id)a3 navigationController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _s9PassKitUI07FinanceB39SpendingSummariesViewControllerProviderC04makegH04with010navigationH0So06UIViewH0CAA0dbe11SummaryDataI7WrapperC_So012UINavigationH0CtFZ_0(v5, v6);

  return v7;
}

- (_TtC9PassKitUI49FinanceKitSpendingSummariesViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FinanceKitSpendingSummariesViewControllerProvider();
  return [(FinanceKitSpendingSummariesViewControllerProvider *)&v3 init];
}

@end