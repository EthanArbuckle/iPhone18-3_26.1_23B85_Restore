@interface STIntroCommunicationLimitsPickerViewModel
- (_TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel)init;
- (_TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel)initWithSelection:(int64_t)a3;
- (int64_t)selection;
- (void)setSelection:(int64_t)a3;
@end

@implementation STIntroCommunicationLimitsPickerViewModel

- (int64_t)selection
{
  swift_getKeyPath();
  sub_264C637F0(&qword_27FFA9028, type metadata accessor for STIntroCommunicationLimitsPickerViewModel);
  v3 = self;
  sub_264CC308C();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection);

  return v4;
}

- (void)setSelection:(int64_t)a3
{
  v4 = self;
  sub_264C61260(a3);
}

- (_TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel)initWithSelection:(int64_t)a3
{
  sub_264CC309C();
  *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel__selection) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for STIntroCommunicationLimitsPickerViewModel(0);
  return [(STIntroCommunicationLimitsPickerViewModel *)&v6 init];
}

- (_TtC20ScreenTimeSettingsUI41STIntroCommunicationLimitsPickerViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end