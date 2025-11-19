@interface TextAnimator
- (NSDictionary)configuration;
- (NSString)fromPhase;
- (NSString)toPhase;
- (_NSTextAnimatorStateSnapshot)stateSnapshot;
- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator)init;
- (double)duration;
- (double)nextAnimationTriggerDelay;
- (void)cancel;
- (void)invalidate;
- (void)pause;
- (void)resume;
- (void)setConfiguration:(id)a3;
- (void)setStateSnapshot:(id)a3;
- (void)setToPhase:(id)a3;
- (void)start;
- (void)startWithDuration:(double)a3;
@end

@implementation TextAnimator

- (_TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)start
{
  v2 = self;
  TextAnimator.start()();
}

- (void)startWithDuration:(double)a3
{
  v4 = self;
  TextAnimator.start(duration:)(a3);
}

- (void)pause
{
  v2 = self;
  TextAnimator.pause()();
}

- (void)resume
{
  v2 = self;
  TextAnimator.resume()();
}

- (void)invalidate
{
  v2 = self;
  TextAnimator.invalidate()();
}

- (double)duration
{
  v2 = self;
  v3 = TextAnimator.duration.getter();

  return v3;
}

- (NSString)toPhase
{
  v2 = self;
  v3 = TextAnimator.toPhase.getter();

  return v3;
}

- (void)setToPhase:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__phase);
  *v6 = v4;
  v6[1] = v5;
}

- (NSString)fromPhase
{
  v2 = self;
  v3 = TextAnimator.fromPhase.getter();

  return v3;
}

- (NSDictionary)configuration
{
  if (*(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration))
  {

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    swift_weakLoadStrong();

    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setConfiguration:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC20TextAnimationSupportP33_EB92A35C21DD52D72B91A53CA741919412TextAnimator__configuration) = v4;
}

- (_NSTextAnimatorStateSnapshot)stateSnapshot
{
  v2 = self;
  v3 = TextAnimator.stateSnapshot.getter();

  return v3;
}

- (void)setStateSnapshot:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  TextAnimator.stateSnapshot.setter(a3);
}

- (double)nextAnimationTriggerDelay
{
  v2 = self;
  TextAnimator.nextAnimationTriggerDelay.getter();
  v4 = v3;

  return v4;
}

- (void)cancel
{
  v2 = self;
  TextAnimator.cancel()();
}

@end