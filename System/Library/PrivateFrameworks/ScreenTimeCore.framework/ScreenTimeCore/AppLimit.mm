@interface AppLimit
- (NSSet)allowedTimes;
- (NSSet)websites;
- (_TtC14ScreenTimeCore8AppLimit)init;
- (_TtC14ScreenTimeCore8AppLimit)initWithIdentifier:(id)identifier enabled:(BOOL)enabled apps:(id)apps categories:(id)categories websites:(id)websites blockAtLimit:(BOOL)limit allowedTimes:(id)times;
- (id)setWithBlockAtLimit:(BOOL)limit;
- (id)setWithEnabled:(BOOL)enabled;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppLimit

- (NSSet)websites
{
  v2 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_websites);
  sub_1B83DD8EC();
  sub_1B83ADA88(&qword_1EBA84A30, 255, MEMORY[0x1E6968FB0]);

  v3 = sub_1B83DDE5C();

  return v3;
}

- (NSSet)allowedTimes
{
  v2 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_allowedTimes);
  type metadata accessor for AppLimitSchedule();
  sub_1B83ADA88(&qword_1EBA84A38, v3, type metadata accessor for AppLimitSchedule);

  v4 = sub_1B83DDE5C();

  return v4;
}

- (_TtC14ScreenTimeCore8AppLimit)initWithIdentifier:(id)identifier enabled:(BOOL)enabled apps:(id)apps categories:(id)categories websites:(id)websites blockAtLimit:(BOOL)limit allowedTimes:(id)times
{
  enabledCopy = enabled;
  limitCopy = limit;
  v10 = sub_1B83DD98C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD96C();
  v15 = sub_1B83DDE7C();
  v16 = sub_1B83DDE7C();
  sub_1B83DD8EC();
  sub_1B83ADA88(&qword_1EBA84A30, 255, MEMORY[0x1E6968FB0]);
  v17 = sub_1B83DDE7C();
  type metadata accessor for AppLimitSchedule();
  sub_1B83ADA88(&qword_1EBA84A38, v18, type metadata accessor for AppLimitSchedule);
  v19 = sub_1B83DDE7C();
  (*(v11 + 16))(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_identifier, v14, v10);
  v20 = limitCopy;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_enabled) = enabledCopy;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_apps) = v15;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_categories) = v16;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_websites) = v17;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_blockAtLimit) = v20;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_allowedTimes) = v19;
  v21 = type metadata accessor for AppLimit();
  v27.receiver = self;
  v27.super_class = v21;
  v22 = [(AppLimit *)&v27 init];
  (*(v11 + 8))(v14, v10);
  return v22;
}

- (id)setWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = sub_1B83A994C(enabledCopy);

  return v5;
}

- (id)setWithBlockAtLimit:(BOOL)limit
{
  limitCopy = limit;
  selfCopy = self;
  v5 = sub_1B83A9B9C(limitCopy);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B83AB798(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B83DD97C();

  return v3;
}

- (_TtC14ScreenTimeCore8AppLimit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end