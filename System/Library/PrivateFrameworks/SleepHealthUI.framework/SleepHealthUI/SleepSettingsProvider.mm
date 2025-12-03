@interface SleepSettingsProvider
- (_TtC13SleepHealthUI21SleepSettingsProvider)init;
- (void)dealloc;
- (void)sleepStore:(id)store sleepFocusConfigurationDidUpdate:(id)update;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation SleepSettingsProvider

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SleepHealthUI21SleepSettingsProvider_sleepStore);
  selfCopy = self;
  [v2 removeObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for SleepSettingsProvider();
  [(SleepSettingsProvider *)&v4 dealloc];
}

- (_TtC13SleepHealthUI21SleepSettingsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_269C76B94(changeCopy);
}

- (void)sleepStore:(id)store sleepFocusConfigurationDidUpdate:(id)update
{
  storeCopy = store;
  updateCopy = update;
  selfCopy = self;
  sub_269C76F78(updateCopy);
}

@end