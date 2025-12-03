@interface UserSettings
- (BOOL)isEqual:(id)equal;
- (NSSet)appLimits;
- (NSString)description;
- (NSString)pin;
- (_TtC14ScreenTimeCore12UserSettings)init;
- (_TtC14ScreenTimeCore12UserSettings)initWithAlwaysAllowed:(id)allowed appLimits:(id)limits appLimitsEnabled:(BOOL)enabled downtime:(id)downtime pin:(id)pin;
- (id)setWithAlwaysAllowed:(id)allowed;
- (id)setWithAppLimitsEnabled:(BOOL)enabled;
- (id)setWithDowntime:(id)downtime;
- (id)setWithPin:(id)pin;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UserSettings

- (NSSet)appLimits
{
  v2 = *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_appLimits);
  type metadata accessor for AppLimit();
  sub_1B83B1154(&qword_1EBA848B0, 255, type metadata accessor for AppLimit);

  v3 = sub_1B83DDE5C();

  return v3;
}

- (NSString)pin
{
  if (*(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_pin + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_pin);
    v3 = *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_pin + 8);

    v4 = sub_1B83DDCBC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC14ScreenTimeCore12UserSettings)initWithAlwaysAllowed:(id)allowed appLimits:(id)limits appLimitsEnabled:(BOOL)enabled downtime:(id)downtime pin:(id)pin
{
  type metadata accessor for AppLimit();
  sub_1B83B1154(&qword_1EBA848B0, 255, type metadata accessor for AppLimit);
  v12 = sub_1B83DDE7C();
  if (pin)
  {
    v13 = sub_1B83DDCEC();
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_alwaysAllowed) = allowed;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_appLimits) = v12;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_appLimitsEnabled) = enabled;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_downtime) = downtime;
  v15 = (self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_pin);
  *v15 = v13;
  v15[1] = v14;
  v19.receiver = self;
  v19.super_class = type metadata accessor for UserSettings();
  allowedCopy = allowed;
  downtimeCopy = downtime;
  return [(UserSettings *)&v19 init];
}

- (id)setWithAlwaysAllowed:(id)allowed
{
  allowedCopy = allowed;
  selfCopy = self;
  v6 = sub_1B83AEBD8(allowedCopy);

  return v6;
}

- (id)setWithAppLimitsEnabled:(BOOL)enabled
{
  selfCopy = self;
  v5 = sub_1B83AF340(enabled);

  return v5;
}

- (id)setWithDowntime:(id)downtime
{
  downtimeCopy = downtime;
  selfCopy = self;
  v6 = sub_1B83AF478(downtimeCopy);

  return v6;
}

- (id)setWithPin:(id)pin
{
  if (pin)
  {
    v4 = sub_1B83DDCEC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1B83AF5C4(v4, v6);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B83AF8A0(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B83AFFA4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B83B0078(v8);

  sub_1B83A5890(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_1B83B0350();

  v3 = sub_1B83DDCBC();

  return v3;
}

- (_TtC14ScreenTimeCore12UserSettings)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end