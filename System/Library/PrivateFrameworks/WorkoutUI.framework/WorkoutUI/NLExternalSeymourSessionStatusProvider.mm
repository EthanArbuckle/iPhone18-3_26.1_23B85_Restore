@interface NLExternalSeymourSessionStatusProvider
- (BOOL)externalSessionActive;
- (NLExternalSeymourSessionStatusProvider)init;
- (void)setExternalSessionActive:(BOOL)a3;
- (void)updateStatus;
@end

@implementation NLExternalSeymourSessionStatusProvider

- (BOOL)externalSessionActive
{
  v3 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setExternalSessionActive:(BOOL)a3
{
  v5 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (NLExternalSeymourSessionStatusProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateStatus
{
  v2 = self;
  ExternalSeymourSessionStatusProvider.updateStatus()();
}

@end