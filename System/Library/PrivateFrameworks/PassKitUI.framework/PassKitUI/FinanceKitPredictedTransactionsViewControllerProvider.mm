@interface FinanceKitPredictedTransactionsViewControllerProvider
+ (id)makeViewControllerForPass:(id)pass navigationController:(id)controller;
- (_TtC9PassKitUI53FinanceKitPredictedTransactionsViewControllerProvider)init;
@end

@implementation FinanceKitPredictedTransactionsViewControllerProvider

+ (id)makeViewControllerForPass:(id)pass navigationController:(id)controller
{
  v6 = type metadata accessor for FinanceKitPredictedTransactionsView();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationController();
  v10 = swift_allocObject();
  *(v10 + 16) = controller;
  passCopy = pass;
  controllerCopy = controller;
  v13 = passCopy;
  v14 = controllerCopy;
  sub_1BD982048(v13, v10, v9);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46A98));
  v16 = sub_1BE04F894();

  return v16;
}

- (_TtC9PassKitUI53FinanceKitPredictedTransactionsViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FinanceKitPredictedTransactionsViewControllerProvider();
  return [(FinanceKitPredictedTransactionsViewControllerProvider *)&v3 init];
}

@end