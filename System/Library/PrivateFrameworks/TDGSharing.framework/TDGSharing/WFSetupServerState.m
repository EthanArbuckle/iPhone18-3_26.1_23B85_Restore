@interface WFSetupServerState
- (WFSetupServerState)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSetupServerState

- (WFSetupServerState)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR___WFSetupServerState_activationFlow;
  *v4 = 0;
  v4[8] = 1;
  *(&self->super.isa + OBJC_IVAR___WFSetupServerState_serviceState) = 0;
  *(&self->super.isa + OBJC_IVAR___WFSetupServerState_sessionState) = 0;
  *(&self->super.isa + OBJC_IVAR___WFSetupServerState_advertisementBehavior) = 0;
  swift_beginAccess();
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(WFSetupServerState *)&v6 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  WFSetupServerState.encode(with:)(v4);
}

@end