@interface SleepScheduleProvider
- (_TtC13SleepHealthUI21SleepScheduleProvider)init;
- (void)dealloc;
- (void)sleepStore:(id)store sleepEventDidOccur:(id)occur;
- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change;
- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change;
@end

@implementation SleepScheduleProvider

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore);
  selfCopy = self;
  [v2 removeObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for SleepScheduleProvider();
  [(SleepScheduleProvider *)&v4 dealloc];
}

- (_TtC13SleepHealthUI21SleepScheduleProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_269D37D54(change);
}

- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_269D380DC(changeCopy, "[%{public}s] Observed sleep event record change to %{public}s");
}

- (void)sleepStore:(id)store sleepEventDidOccur:(id)occur
{
  storeCopy = store;
  occurCopy = occur;
  selfCopy = self;
  sub_269D380DC(occurCopy, "[%{public}s] Observed sleep event %{public}s");
}

@end