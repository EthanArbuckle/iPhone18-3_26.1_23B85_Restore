@interface _UIApplicationIntelligenceSupport
+ (Class)remoteContextWrapperClass;
+ (_UIApplicationIntelligenceSupport)sharedInstance;
+ (void)collectRemoteContentForRootViews:(id)views withRemoteContextWrapper:(id)wrapper;
- (void)setApplicationState:(int64_t)state;
@end

@implementation _UIApplicationIntelligenceSupport

+ (_UIApplicationIntelligenceSupport)sharedInstance
{
  if (qword_1ED4914E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED4914F0;

  return v3;
}

- (void)setApplicationState:(int64_t)state
{
  *(&self->super.isa + OBJC_IVAR____UIApplicationIntelligenceSupport_applicationState) = state;
  sub_18A4A40F8();
  selfCopy = self;
  sub_18A4A40D8();
  sub_188B00CD0();
  sub_18A4A40C8();
}

+ (Class)remoteContextWrapperClass
{
  sub_18A4A3498();

  return swift_getObjCClassFromMetadata();
}

+ (void)collectRemoteContentForRootViews:(id)views withRemoteContextWrapper:(id)wrapper
{
  sub_188A34624(0, &qword_1ED48F680);
  v5 = sub_18A4A7548();
  swift_unknownObjectRetain();
  sub_18917F238(v5, wrapper);
  swift_unknownObjectRelease();
}

@end