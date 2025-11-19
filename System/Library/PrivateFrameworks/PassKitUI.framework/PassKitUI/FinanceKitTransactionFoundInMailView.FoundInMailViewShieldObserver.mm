@interface FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver
- (_TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver)init;
- (void)appProtectionCoordinatorDidFailAccess:(id)a3;
- (void)appProtectionCoordinatorDidGainAccess:(id)a3;
- (void)applicationWillEnterForeground;
- (void)applicationWillResignActive;
- (void)dealloc;
@end

@implementation FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver

- (void)dealloc
{
  swift_getKeyPath();
  v8 = self;
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver);
  v3 = self;
  sub_1BE04B594();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  v5 = v3;
  v6 = v4;
  sub_1BE04BE44();

  v7.receiver = v5;
  v7.super_class = type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0);
  [(FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver *)&v7 dealloc];
}

- (void)appProtectionCoordinatorDidGainAccess:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD9B637C();
}

- (void)appProtectionCoordinatorDidFailAccess:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD9B6564();
}

- (void)applicationWillResignActive
{
  v2 = self;
  sub_1BD9B4AF8();
}

- (void)applicationWillEnterForeground
{
  v2 = self;
  sub_1BD9B4D48();
}

- (_TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end