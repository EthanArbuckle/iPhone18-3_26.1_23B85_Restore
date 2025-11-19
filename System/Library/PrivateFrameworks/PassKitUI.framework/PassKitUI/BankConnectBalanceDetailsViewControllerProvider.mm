@interface BankConnectBalanceDetailsViewControllerProvider
+ (id)makeViewControllerWithBankConnectItem:(id)a3;
- (_TtC9PassKitUI47BankConnectBalanceDetailsViewControllerProvider)init;
@end

@implementation BankConnectBalanceDetailsViewControllerProvider

+ (id)makeViewControllerWithBankConnectItem:(id)a3
{
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46360));
  v5 = a3;
  v6 = sub_1BE04F894();

  return v6;
}

- (_TtC9PassKitUI47BankConnectBalanceDetailsViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BankConnectBalanceDetailsViewControllerProvider();
  return [(BankConnectBalanceDetailsViewControllerProvider *)&v3 init];
}

@end