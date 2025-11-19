@interface STUsageDetailsSelection
+ (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)shared;
- (NSNumber)usageReportTypeForLocalUser;
- (NSString)deviceIdentifierForLocalUser;
- (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)init;
- (id)deviceIdentifierForChildUserDSID:(id)a3;
- (id)observeDeviceIdentifierChangesForChildUserDSID:(id)a3 onChange:(id)a4;
- (id)usageReportTypeForChildUserDSID:(id)a3;
- (void)setDeviceIdentifierForLocalUser:(id)a3;
- (void)setDeviceIdentifierTo:(id)a3 forChildUserDSID:(id)a4;
- (void)setUsageReportTypeForLocalUser:(id)a3;
- (void)setUsageReportTypeTo:(id)a3 forChildUserDSID:(id)a4;
@end

@implementation STUsageDetailsSelection

+ (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)shared
{
  if (qword_27FFA8FE8 != -1)
  {
    swift_once();
  }

  v3 = qword_27FFA9A80;

  return v3;
}

- (NSString)deviceIdentifierForLocalUser
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v3 = self;
  v4 = sub_264CC459C();
  v5 = [v2 stringForKey_];

  if (v5)
  {
    sub_264CC45DC();

    v6 = sub_264CC459C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setDeviceIdentifierForLocalUser:(id)a3
{
  if (a3)
  {
    sub_264CC45DC();
    v4 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    v5 = self;
    v6 = sub_264CC459C();
  }

  else
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    v7 = self;
    v6 = 0;
  }

  v8 = sub_264CC459C();
  [v4 setObject:v6 forKey:v8];

  swift_unknownObjectRelease();
}

- (NSNumber)usageReportTypeForLocalUser
{
  v2 = self;
  v3 = sub_264C80F08();

  return v3;
}

- (void)setUsageReportTypeForLocalUser:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v5 = a3;
  v6 = self;
  v7 = sub_264CC459C();
  [v4 setObject:v5 forKey:v7];
}

- (id)deviceIdentifierForChildUserDSID:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264C8133C(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_264CC459C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setDeviceIdentifierTo:(id)a3 forChildUserDSID:(id)a4
{
  if (a3)
  {
    v6 = sub_264CC45DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a4;
  v10 = self;
  sub_264C815BC(v6, v8, v9);
}

- (id)observeDeviceIdentifierChangesForChildUserDSID:(id)a3 onChange:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_264C81904(v8, sub_264C83C0C, v7);

  return v10;
}

- (id)usageReportTypeForChildUserDSID:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_264C82550(v4);

  return v6;
}

- (void)setUsageReportTypeTo:(id)a3 forChildUserDSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_264C82784(a3, v8);
}

- (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end