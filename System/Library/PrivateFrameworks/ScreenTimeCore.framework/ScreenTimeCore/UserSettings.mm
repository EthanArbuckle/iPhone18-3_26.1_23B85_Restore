@interface UserSettings
- (BOOL)isEqual:(id)a3;
- (NSSet)appLimits;
- (NSString)description;
- (NSString)pin;
- (_TtC14ScreenTimeCore12UserSettings)init;
- (_TtC14ScreenTimeCore12UserSettings)initWithAlwaysAllowed:(id)a3 appLimits:(id)a4 appLimitsEnabled:(BOOL)a5 downtime:(id)a6 pin:(id)a7;
- (id)setWithAlwaysAllowed:(id)a3;
- (id)setWithAppLimitsEnabled:(BOOL)a3;
- (id)setWithDowntime:(id)a3;
- (id)setWithPin:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (_TtC14ScreenTimeCore12UserSettings)initWithAlwaysAllowed:(id)a3 appLimits:(id)a4 appLimitsEnabled:(BOOL)a5 downtime:(id)a6 pin:(id)a7
{
  type metadata accessor for AppLimit();
  sub_1B83B1154(&qword_1EBA848B0, 255, type metadata accessor for AppLimit);
  v12 = sub_1B83DDE7C();
  if (a7)
  {
    v13 = sub_1B83DDCEC();
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_alwaysAllowed) = a3;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_appLimits) = v12;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_appLimitsEnabled) = a5;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_downtime) = a6;
  v15 = (self + OBJC_IVAR____TtC14ScreenTimeCore12UserSettings_pin);
  *v15 = v13;
  v15[1] = v14;
  v19.receiver = self;
  v19.super_class = type metadata accessor for UserSettings();
  v16 = a3;
  v17 = a6;
  return [(UserSettings *)&v19 init];
}

- (id)setWithAlwaysAllowed:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B83AEBD8(v4);

  return v6;
}

- (id)setWithAppLimitsEnabled:(BOOL)a3
{
  v4 = self;
  v5 = sub_1B83AF340(a3);

  return v5;
}

- (id)setWithDowntime:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B83AF478(v4);

  return v6;
}

- (id)setWithPin:(id)a3
{
  if (a3)
  {
    v4 = sub_1B83DDCEC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_1B83AF5C4(v4, v6);

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B83AF8A0(v4);
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1B83AFFA4();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1B83B0078(v8);

  sub_1B83A5890(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
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