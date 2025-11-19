@interface _PKProvisioningWatchUICoordinator
- (PKProvisioningWatchUICoordinatorDelegate)delegate;
- (_PKProvisioningWatchUICoordinator)init;
- (_PKProvisioningWatchUICoordinator)initWithManualEntrySetupContext:(int64_t)a3 provisioningController:(id)a4 skipRequirements:(BOOL)a5;
- (_PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)a3 provisioningController:(id)a4 credential:(id)a5;
- (void)cancel;
- (void)continueWithFieldsModel:(id)a3;
- (void)dealloc;
- (void)preflightWithFieldModel:(id)a3 completion:(id)a4;
- (void)reset;
@end

@implementation _PKProvisioningWatchUICoordinator

- (PKProvisioningWatchUICoordinatorDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)a3 provisioningController:(id)a4 credential:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_1BD3F5998(a3, v7, v8);

  return v9;
}

- (_PKProvisioningWatchUICoordinator)initWithManualEntrySetupContext:(int64_t)a3 provisioningController:(id)a4 skipRequirements:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = sub_1BD3F5D74(a3, v7, v5);

  return v8;
}

- (void)dealloc
{
  v2 = self;
  sub_1BD3F1DCC();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ProvisioningWatchUICoordinator();
  [(_PKProvisioningWatchUICoordinator *)&v3 dealloc];
}

- (void)continueWithFieldsModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD3F10E4(v4);
}

- (void)preflightWithFieldModel:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1BD3F11EC(v8, sub_1BD166E88, v7);
}

- (void)reset
{
  v2 = self;
  sub_1BD3F1DCC();
}

- (void)cancel
{
  v2 = self;
  sub_1BD3F2628();
}

- (_PKProvisioningWatchUICoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end