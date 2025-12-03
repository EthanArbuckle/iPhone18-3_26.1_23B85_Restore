@interface NCBacklightAssertionManager
+ (id)sharedManager;
- (NCBacklightAssertionManager)init;
- (void)assertion:(id)assertion didCancelWithError:(id)error;
- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error;
- (void)assertionWasAcquired:(id)acquired;
- (void)queue_acquireAssertionWithReason:(unint64_t)reason onScene:(id)scene completion:(id)completion;
- (void)queue_releaseAssertionWithReason:(unint64_t)reason;
@end

@implementation NCBacklightAssertionManager

+ (id)sharedManager
{
  if (qword_280D03DD0 != -1)
  {
    swift_once();
  }

  v3 = qword_280D03DE0;

  return v3;
}

- (void)queue_acquireAssertionWithReason:(unint64_t)reason onScene:(id)scene completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  sceneCopy = scene;
  selfCopy = self;
  sub_21E91ED60(reason, scene, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)queue_releaseAssertionWithReason:(unint64_t)reason
{
  selfCopy = self;
  sub_21E91D4A8(reason);
}

- (NCBacklightAssertionManager)init
{
  *(&self->super.isa + OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion) = 0;
  *(&self->super.isa + OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount) = 0;
  v2 = (&self->super.isa + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
  *v2 = 0;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = NCBacklightAssertionManager;
  return [(NCBacklightAssertionManager *)&v4 init];
}

- (void)assertionWasAcquired:(id)acquired
{
  acquiredCopy = acquired;
  selfCopy = self;
  NCBacklightAssertionManager.assertionWasAcquired(_:)(acquiredCopy);
}

- (void)assertion:(id)assertion didCancelWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  NCBacklightAssertionManager.assertion(_:didCancelWithError:)(assertionCopy, error);
}

- (void)assertion:(id)assertion didFailToAcquireWithError:(id)error
{
  assertionCopy = assertion;
  errorCopy = error;
  selfCopy = self;
  NCBacklightAssertionManager.assertion(_:didFailToAcquireWithError:)(assertionCopy, errorCopy);
}

@end