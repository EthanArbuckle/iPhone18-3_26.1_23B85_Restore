@interface PFDeferredLaunchTaskCoordinator
+ (PFDeferredLaunchTaskCoordinator)sharedInstance;
- (void)deferWork:(id)a3;
- (void)deferWorkOnQueue:(id)a3 withBlock:(id)a4;
- (void)scheduleDefaultDeferralDeadline;
- (void)scheduleDeferralDeadlineAfter:(double)a3;
- (void)stopDeferring;
@end

@implementation PFDeferredLaunchTaskCoordinator

+ (PFDeferredLaunchTaskCoordinator)sharedInstance
{
  if (qword_1EDCD2408 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD2410;

  return v3;
}

- (void)scheduleDeferralDeadlineAfter:(double)a3
{
  v4 = self;
  sub_1D915C8E0(a3);
}

- (void)scheduleDefaultDeferralDeadline
{
  swift_beginAccess();
  v3 = *&qword_1ECABB648;
  v4 = self;
  sub_1D915C8E0(v3);
}

- (void)deferWorkOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1D8D2D034(a3, sub_1D8D99DA8, v7);
}

- (void)deferWork:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1D8D2D034(0, sub_1D8D99DB0, v5);
}

- (void)stopDeferring
{
  v2 = self;
  sub_1D915D068();
}

@end