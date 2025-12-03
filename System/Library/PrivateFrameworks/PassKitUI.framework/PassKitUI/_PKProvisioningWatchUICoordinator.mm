@interface _PKProvisioningWatchUICoordinator
- (PKProvisioningWatchUICoordinatorDelegate)delegate;
- (_PKProvisioningWatchUICoordinator)init;
- (_PKProvisioningWatchUICoordinator)initWithManualEntrySetupContext:(int64_t)context provisioningController:(id)controller skipRequirements:(BOOL)requirements;
- (_PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)context provisioningController:(id)controller credential:(id)credential;
- (void)cancel;
- (void)continueWithFieldsModel:(id)model;
- (void)dealloc;
- (void)preflightWithFieldModel:(id)model completion:(id)completion;
- (void)reset;
@end

@implementation _PKProvisioningWatchUICoordinator

- (PKProvisioningWatchUICoordinatorDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_PKProvisioningWatchUICoordinator)initWithSetupContext:(int64_t)context provisioningController:(id)controller credential:(id)credential
{
  controllerCopy = controller;
  credentialCopy = credential;
  v9 = sub_1BD3F5998(context, controllerCopy, credentialCopy);

  return v9;
}

- (_PKProvisioningWatchUICoordinator)initWithManualEntrySetupContext:(int64_t)context provisioningController:(id)controller skipRequirements:(BOOL)requirements
{
  requirementsCopy = requirements;
  controllerCopy = controller;
  v8 = sub_1BD3F5D74(context, controllerCopy, requirementsCopy);

  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  sub_1BD3F1DCC();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ProvisioningWatchUICoordinator();
  [(_PKProvisioningWatchUICoordinator *)&v3 dealloc];
}

- (void)continueWithFieldsModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1BD3F10E4(modelCopy);
}

- (void)preflightWithFieldModel:(id)model completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  modelCopy = model;
  selfCopy = self;
  sub_1BD3F11EC(modelCopy, sub_1BD166E88, v7);
}

- (void)reset
{
  selfCopy = self;
  sub_1BD3F1DCC();
}

- (void)cancel
{
  selfCopy = self;
  sub_1BD3F2628();
}

- (_PKProvisioningWatchUICoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end