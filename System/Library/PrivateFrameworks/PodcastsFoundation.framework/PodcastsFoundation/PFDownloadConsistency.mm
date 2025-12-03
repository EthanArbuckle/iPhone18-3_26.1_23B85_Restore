@interface PFDownloadConsistency
- (PFDownloadConsistency)init;
- (void)beginEnforcementWithCompletionHandler:(id)handler;
- (void)endEnforcement;
@end

@implementation PFDownloadConsistency

- (void)beginEnforcementWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8E899BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1D8DBC7B0(v7, v6);
  sub_1D8D15664(v7);
}

- (void)endEnforcement
{
  v3 = OBJC_IVAR___PFDownloadConsistency_listener;
  if (*(&self->super.isa + OBJC_IVAR___PFDownloadConsistency_listener))
  {
    selfCopy = self;

    sub_1D917785C();

    v5 = *(&self->super.isa + v3);
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (PFDownloadConsistency)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end