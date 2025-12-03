@interface SiriAnalyticsClockInactivityScheduler
- (SiriAnalyticsClockInactivityScheduler)initWithSeconds:(int64_t)seconds queue:(id)queue expiration:(id)expiration creation:(id)creation;
- (void)clockCreated;
- (void)clockExpiredWithCompletion:(id)completion;
- (void)clockForcefullyDestroyedWithCompletion:(id)completion;
- (void)destroyInactivityTimer;
- (void)startScheduling;
@end

@implementation SiriAnalyticsClockInactivityScheduler

- (SiriAnalyticsClockInactivityScheduler)initWithSeconds:(int64_t)seconds queue:(id)queue expiration:(id)expiration creation:(id)creation
{
  v8 = _Block_copy(expiration);
  v9 = _Block_copy(creation);
  *(swift_allocObject() + 16) = v8;
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
  }

  queueCopy = queue;
  return ClockInactivityScheduler.init(seconds:queue:expiration:creation:)();
}

- (void)startScheduling
{
  selfCopy = self;
  sub_1D98A24C4();
}

- (void)destroyInactivityTimer
{
  selfCopy = self;
  sub_1D98A258C();
}

- (void)clockExpiredWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D98A2E78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1D98A26C0(v7, v6);
  sub_1D98750DC(v7);
}

- (void)clockForcefullyDestroyedWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D988C448;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1D98A27D0(v7, v6);
  sub_1D98750DC(v7);
}

- (void)clockCreated
{
  selfCopy = self;
  sub_1D98A2960();
}

@end