@interface STUsageDetailsSelection
+ (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)shared;
- (NSNumber)usageReportTypeForLocalUser;
- (NSString)deviceIdentifierForLocalUser;
- (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)init;
- (id)deviceIdentifierForChildUserDSID:(id)d;
- (id)observeDeviceIdentifierChangesForChildUserDSID:(id)d onChange:(id)change;
- (id)usageReportTypeForChildUserDSID:(id)d;
- (void)setDeviceIdentifierForLocalUser:(id)user;
- (void)setDeviceIdentifierTo:(id)to forChildUserDSID:(id)d;
- (void)setUsageReportTypeForLocalUser:(id)user;
- (void)setUsageReportTypeTo:(id)to forChildUserDSID:(id)d;
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
  selfCopy = self;
  v4 = sub_264CC459C();
  stringForKey_ = [v2 stringForKey_];

  if (stringForKey_)
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

- (void)setDeviceIdentifierForLocalUser:(id)user
{
  if (user)
  {
    sub_264CC45DC();
    v4 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    selfCopy = self;
    v6 = sub_264CC459C();
  }

  else
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    selfCopy2 = self;
    v6 = 0;
  }

  v8 = sub_264CC459C();
  [v4 setObject:v6 forKey:v8];

  swift_unknownObjectRelease();
}

- (NSNumber)usageReportTypeForLocalUser
{
  selfCopy = self;
  v3 = sub_264C80F08();

  return v3;
}

- (void)setUsageReportTypeForLocalUser:(id)user
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  userCopy = user;
  selfCopy = self;
  v7 = sub_264CC459C();
  [v4 setObject:userCopy forKey:v7];
}

- (id)deviceIdentifierForChildUserDSID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_264C8133C(dCopy);
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

- (void)setDeviceIdentifierTo:(id)to forChildUserDSID:(id)d
{
  if (to)
  {
    v6 = sub_264CC45DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  dCopy = d;
  selfCopy = self;
  sub_264C815BC(v6, v8, dCopy);
}

- (id)observeDeviceIdentifierChangesForChildUserDSID:(id)d onChange:(id)change
{
  v6 = _Block_copy(change);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  dCopy = d;
  selfCopy = self;
  v10 = sub_264C81904(dCopy, sub_264C83C0C, v7);

  return v10;
}

- (id)usageReportTypeForChildUserDSID:(id)d
{
  dCopy = d;
  selfCopy = self;
  v6 = sub_264C82550(dCopy);

  return v6;
}

- (void)setUsageReportTypeTo:(id)to forChildUserDSID:(id)d
{
  toCopy = to;
  dCopy = d;
  selfCopy = self;
  sub_264C82784(to, dCopy);
}

- (_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end