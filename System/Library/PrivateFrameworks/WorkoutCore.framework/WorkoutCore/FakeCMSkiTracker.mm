@interface FakeCMSkiTracker
- (void)startLiveUpdatesWithHandler:(id)handler;
- (void)stopLiveUpdates;
@end

@implementation FakeCMSkiTracker

- (void)startLiveUpdatesWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler);
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler);
  v8 = *(&self->super._internal + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler);
  *v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CMLiveSkiData?, @unowned NSError?) -> ();
  v6[1] = v5;
  selfCopy = self;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ())?(v7);
  FakeCMSkiTracker.startTimer()();
}

- (void)stopLiveUpdates
{
  selfCopy = self;
  FakeCMSkiTracker.stopLiveUpdates()();
}

@end