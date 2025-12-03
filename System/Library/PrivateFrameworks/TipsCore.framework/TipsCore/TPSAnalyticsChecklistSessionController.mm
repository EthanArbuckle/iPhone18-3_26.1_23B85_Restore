@interface TPSAnalyticsChecklistSessionController
+ (TPSAnalyticsChecklistSessionController)sharedInstance;
- (BOOL)hasActiveSession;
- (BOOL)isFirstLaunch;
- (int64_t)sessionEndSuggestedTipsCount;
- (int64_t)sessionTipsCompleted;
- (void)continueSession;
- (void)setHasActiveSession:(BOOL)session;
- (void)setIsFirstLaunch:(BOOL)launch;
- (void)setSessionEndSuggestedTipsCount:(int64_t)count;
- (void)setSessionTipsCompleted:(int64_t)completed;
- (void)startSession;
- (void)stopSession;
@end

@implementation TPSAnalyticsChecklistSessionController

+ (TPSAnalyticsChecklistSessionController)sharedInstance
{
  if (qword_1EBE05C98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBE05CA0;

  return v3;
}

- (BOOL)isFirstLaunch
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsFirstLaunch:(BOOL)launch
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  swift_beginAccess();
  *(&self->super.isa + v5) = launch;
}

- (BOOL)hasActiveSession
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHasActiveSession:(BOOL)session
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  *(&self->super.isa + v5) = session;
}

- (int64_t)sessionEndSuggestedTipsCount
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSessionEndSuggestedTipsCount:(int64_t)count
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  *(&self->super.isa + v5) = count;
}

- (int64_t)sessionTipsCompleted
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSessionTipsCompleted:(int64_t)completed
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  *(&self->super.isa + v5) = completed;
}

- (void)startSession
{
  selfCopy = self;
  sub_1C010113C();
}

- (void)continueSession
{
  selfCopy = self;
  sub_1C0101628();
}

- (void)stopSession
{
  selfCopy = self;
  sub_1C0101A1C();
}

@end