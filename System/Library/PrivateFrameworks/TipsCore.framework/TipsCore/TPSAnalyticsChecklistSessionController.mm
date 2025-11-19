@interface TPSAnalyticsChecklistSessionController
+ (TPSAnalyticsChecklistSessionController)sharedInstance;
- (BOOL)hasActiveSession;
- (BOOL)isFirstLaunch;
- (int64_t)sessionEndSuggestedTipsCount;
- (int64_t)sessionTipsCompleted;
- (void)continueSession;
- (void)setHasActiveSession:(BOOL)a3;
- (void)setIsFirstLaunch:(BOOL)a3;
- (void)setSessionEndSuggestedTipsCount:(int64_t)a3;
- (void)setSessionTipsCompleted:(int64_t)a3;
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

- (void)setIsFirstLaunch:(BOOL)a3
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_isFirstLaunch;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)hasActiveSession
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHasActiveSession:(BOOL)a3
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_hasActiveSession;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)sessionEndSuggestedTipsCount
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSessionEndSuggestedTipsCount:(int64_t)a3
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionEndSuggestedTipsCount;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)sessionTipsCompleted
{
  v3 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSessionTipsCompleted:(int64_t)a3
{
  v5 = OBJC_IVAR___TPSAnalyticsChecklistSessionController_sessionTipsCompleted;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)startSession
{
  v2 = self;
  sub_1C010113C();
}

- (void)continueSession
{
  v2 = self;
  sub_1C0101628();
}

- (void)stopSession
{
  v2 = self;
  sub_1C0101A1C();
}

@end