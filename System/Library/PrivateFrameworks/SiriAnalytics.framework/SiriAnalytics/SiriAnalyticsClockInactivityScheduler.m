@interface SiriAnalyticsClockInactivityScheduler
- (SiriAnalyticsClockInactivityScheduler)initWithSeconds:(int64_t)a3 queue:(id)a4 expiration:(id)a5 creation:(id)a6;
- (void)clockCreated;
- (void)clockExpiredWithCompletion:(id)a3;
- (void)clockForcefullyDestroyedWithCompletion:(id)a3;
- (void)destroyInactivityTimer;
- (void)startScheduling;
@end

@implementation SiriAnalyticsClockInactivityScheduler

- (SiriAnalyticsClockInactivityScheduler)initWithSeconds:(int64_t)a3 queue:(id)a4 expiration:(id)a5 creation:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v8;
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
  }

  v10 = a4;
  return ClockInactivityScheduler.init(seconds:queue:expiration:creation:)();
}

- (void)startScheduling
{
  v2 = self;
  sub_1D98A24C4();
}

- (void)destroyInactivityTimer
{
  v2 = self;
  sub_1D98A258C();
}

- (void)clockExpiredWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_1D98A26C0(v7, v6);
  sub_1D98750DC(v7);
}

- (void)clockForcefullyDestroyedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_1D98A27D0(v7, v6);
  sub_1D98750DC(v7);
}

- (void)clockCreated
{
  v2 = self;
  sub_1D98A2960();
}

@end