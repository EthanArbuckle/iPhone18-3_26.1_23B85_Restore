@interface NCBacklightAssertionManager
+ (id)sharedManager;
- (NCBacklightAssertionManager)init;
- (void)assertion:(id)a3 didCancelWithError:(id)a4;
- (void)assertion:(id)a3 didFailToAcquireWithError:(id)a4;
- (void)assertionWasAcquired:(id)a3;
- (void)queue_acquireAssertionWithReason:(unint64_t)a3 onScene:(id)a4 completion:(id)a5;
- (void)queue_releaseAssertionWithReason:(unint64_t)a3;
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

- (void)queue_acquireAssertionWithReason:(unint64_t)a3 onScene:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a4;
  v10 = self;
  sub_21E91ED60(a3, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)queue_releaseAssertionWithReason:(unint64_t)a3
{
  v4 = self;
  sub_21E91D4A8(a3);
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

- (void)assertionWasAcquired:(id)a3
{
  v4 = a3;
  v5 = self;
  NCBacklightAssertionManager.assertionWasAcquired(_:)(v4);
}

- (void)assertion:(id)a3 didCancelWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  NCBacklightAssertionManager.assertion(_:didCancelWithError:)(v6, a4);
}

- (void)assertion:(id)a3 didFailToAcquireWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  NCBacklightAssertionManager.assertion(_:didFailToAcquireWithError:)(v6, v8);
}

@end