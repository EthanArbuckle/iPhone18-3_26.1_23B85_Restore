@interface PFDeferredLaunchTaskCoordinator
+ (PFDeferredLaunchTaskCoordinator)sharedInstance;
- (void)deferWork:(id)work;
- (void)deferWorkOnQueue:(id)queue withBlock:(id)block;
- (void)scheduleDefaultDeferralDeadline;
- (void)scheduleDeferralDeadlineAfter:(double)after;
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

- (void)scheduleDeferralDeadlineAfter:(double)after
{
  selfCopy = self;
  sub_1D915C8E0(after);
}

- (void)scheduleDefaultDeferralDeadline
{
  swift_beginAccess();
  v3 = *&qword_1ECABB648;
  selfCopy = self;
  sub_1D915C8E0(v3);
}

- (void)deferWorkOnQueue:(id)queue withBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  sub_1D8D2D034(queue, sub_1D8D99DA8, v7);
}

- (void)deferWork:(id)work
{
  v4 = _Block_copy(work);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D8D2D034(0, sub_1D8D99DB0, v5);
}

- (void)stopDeferring
{
  selfCopy = self;
  sub_1D915D068();
}

@end