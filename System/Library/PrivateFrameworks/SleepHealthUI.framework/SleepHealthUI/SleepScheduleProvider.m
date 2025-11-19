@interface SleepScheduleProvider
- (_TtC13SleepHealthUI21SleepScheduleProvider)init;
- (void)dealloc;
- (void)sleepStore:(id)a3 sleepEventDidOccur:(id)a4;
- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4;
@end

@implementation SleepScheduleProvider

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore);
  v3 = self;
  [v2 removeObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for SleepScheduleProvider();
  [(SleepScheduleProvider *)&v4 dealloc];
}

- (_TtC13SleepHealthUI21SleepScheduleProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_269D37D54(a4);
}

- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_269D380DC(v7, "[%{public}s] Observed sleep event record change to %{public}s");
}

- (void)sleepStore:(id)a3 sleepEventDidOccur:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_269D380DC(v7, "[%{public}s] Observed sleep event %{public}s");
}

@end