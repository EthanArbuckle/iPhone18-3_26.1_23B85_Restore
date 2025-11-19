@interface _PKProvisioningBackgroundCoordinator
- (_PKProvisioningBackgroundCoordinator)init;
- (_PKProvisioningBackgroundCoordinator)initWithPkContext:(id)a3 credential:(id)a4 previouslyAcceptedTerms:(BOOL)a5;
- (id)archivedState;
- (id)onRecoverableCheckpointReached;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)setOnRecoverableCheckpointReached:(id)a3;
@end

@implementation _PKProvisioningBackgroundCoordinator

- (id)onRecoverableCheckpointReached
{
  v2 = (self + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD44AE68;
    aBlock[3] = &block_descriptor_15;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOnRecoverableCheckpointReached:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1AD452788;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_1AD3C5FB8(v7);
}

- (_PKProvisioningBackgroundCoordinator)initWithPkContext:(id)a3 credential:(id)a4 previouslyAcceptedTerms:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = _s11PassKitCore19ProvisioningContextC02pkE0ACSo014PKProvisioningE0C_tcfC_0(v7);
  v10 = objc_allocWithZone(type metadata accessor for ProvisioningBackgroundCoordinator());
  v11 = sub_1AD451764(v9, v8, a5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)dealloc
{
  v2 = self;
  sub_1AD44D228();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ProvisioningBackgroundCoordinator();
  [(_PKProvisioningBackgroundCoordinator *)&v3 dealloc];
}

- (void)cancel
{
  v2 = self;
  sub_1AD44C3D0();
}

- (id)archivedState
{
  v2 = self;
  v3 = sub_1AD44C514();

  return v3;
}

- (void)invalidate
{
  v2 = self;
  sub_1AD44D228();
}

- (_PKProvisioningBackgroundCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end