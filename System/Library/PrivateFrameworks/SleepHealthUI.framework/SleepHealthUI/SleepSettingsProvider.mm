@interface SleepSettingsProvider
- (_TtC13SleepHealthUI21SleepSettingsProvider)init;
- (void)dealloc;
- (void)sleepStore:(id)a3 sleepFocusConfigurationDidUpdate:(id)a4;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
@end

@implementation SleepSettingsProvider

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_sleepStore);
  v3 = self;
  [v2 removeObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for SleepSettingsProvider();
  [(SleepSettingsProvider *)&v4 dealloc];
}

- (_TtC13SleepHealthUI21SleepSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_269C76B94(v7);
}

- (void)sleepStore:(id)a3 sleepFocusConfigurationDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_269C76F78(v7);
}

@end