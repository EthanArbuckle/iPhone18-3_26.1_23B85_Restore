@interface ProvisioningCarKeyStepTransact
- (_TtC11PassKitCore30ProvisioningCarKeyStepTransact)init;
- (void)contactlessInterfaceSession:(id)session didFinishTransactionWithContext:(id)context;
- (void)contactlessInterfaceSessionDidTerminate:(id)terminate;
- (void)contactlessInterfaceSessionDidTerminate:(void *)terminate withErrorCode:;
@end

@implementation ProvisioningCarKeyStepTransact

- (_TtC11PassKitCore30ProvisioningCarKeyStepTransact)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactlessInterfaceSessionDidTerminate:(id)terminate
{
  v4 = objc_opt_self();
  selfCopy = self;
  errorWithSeverity_ = [v4 errorWithSeverity_];
  sub_1AD500C5C(errorWithSeverity_);
}

- (void)contactlessInterfaceSession:(id)session didFinishTransactionWithContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  selfCopy = self;
  sub_1AD502B40(context);
}

- (void)contactlessInterfaceSessionDidTerminate:(void *)terminate withErrorCode:
{
  v2 = objc_opt_self();
  terminateCopy = terminate;
  errorWithSeverity_ = [v2 errorWithSeverity_];
  sub_1AD500C5C(errorWithSeverity_);
}

@end