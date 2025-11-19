@interface ProvisioningCarKeyStepTransact
- (_TtC11PassKitCore30ProvisioningCarKeyStepTransact)init;
- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4;
- (void)contactlessInterfaceSessionDidTerminate:(id)a3;
- (void)contactlessInterfaceSessionDidTerminate:(void *)a1 withErrorCode:;
@end

@implementation ProvisioningCarKeyStepTransact

- (_TtC11PassKitCore30ProvisioningCarKeyStepTransact)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactlessInterfaceSessionDidTerminate:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  v5 = [v4 errorWithSeverity_];
  sub_1AD500C5C(v5);
}

- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1AD502B40(a4);
}

- (void)contactlessInterfaceSessionDidTerminate:(void *)a1 withErrorCode:
{
  v2 = objc_opt_self();
  v4 = a1;
  v3 = [v2 errorWithSeverity_];
  sub_1AD500C5C(v3);
}

@end