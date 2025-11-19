@interface SASEngagementMonitor
- (SASEngagementMonitor)init;
- (SASUserEngagementContext)currentEngagementContext;
- (void)setCurrentEngagementContext:(id)a3;
- (void)stop;
@end

@implementation SASEngagementMonitor

- (SASUserEngagementContext)currentEngagementContext
{
  v3 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCurrentEngagementContext:(id)a3
{
  v5 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)stop
{
  if (*(&self->super.isa + OBJC_IVAR___SASEngagementMonitor_task))
  {
    *(&self->super.isa + OBJC_IVAR___SASEngagementMonitor_task) = 0;
    v2 = self;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC298988, &qword_1C818FBB0);
    sub_1C8188A0C();

    v3 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
    swift_beginAccess();
    v4 = *(&v2->super.isa + v3);
    *(&v2->super.isa + v3) = 0;
  }
}

- (SASEngagementMonitor)init
{
  *(&self->super.isa + OBJC_IVAR___SASEngagementMonitor_currentEngagementContext) = 0;
  *(&self->super.isa + OBJC_IVAR___SASEngagementMonitor_task) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EngagementMonitor();
  return [(SASEngagementMonitor *)&v3 init];
}

@end