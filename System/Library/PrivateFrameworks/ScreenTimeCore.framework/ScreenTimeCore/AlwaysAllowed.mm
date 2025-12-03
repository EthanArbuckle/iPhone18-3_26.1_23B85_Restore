@interface AlwaysAllowed
+ (id)defaultAlwaysAllowed;
- (BOOL)isEqual:(id)equal;
- (NSSet)apps;
- (_TtC14ScreenTimeCore13AlwaysAllowed)init;
- (_TtC14ScreenTimeCore13AlwaysAllowed)initWithApps:(id)apps;
- (id)addWithApp:(id)app;
- (id)removeWithApp:(id)app;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AlwaysAllowed

- (NSSet)apps
{
  v2 = *(self + OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps);

  v3 = sub_1B83DDE5C();

  return v3;
}

- (_TtC14ScreenTimeCore13AlwaysAllowed)initWithApps:(id)apps
{
  *(self + OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps) = sub_1B83DDE7C();
  v5.receiver = self;
  v5.super_class = type metadata accessor for AlwaysAllowed();
  return [(AlwaysAllowed *)&v5 init];
}

+ (id)defaultAlwaysAllowed
{
  v2 = sub_1B83A5654(&unk_1F303F000);
  swift_arrayDestroy();
  v3 = type metadata accessor for AlwaysAllowed();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (id)addWithApp:(id)app
{
  v4 = sub_1B83DDCEC();
  v6 = v5;
  v7 = *(self + OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84850, &qword_1B83E8FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B83E80B0;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  selfCopy = self;

  v10 = sub_1B83A57BC(inited, v7);
  swift_setDeallocating();
  sub_1B83A583C(inited + 32);
  v11 = type metadata accessor for AlwaysAllowed();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps] = v10;
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = [(AlwaysAllowed *)&v15 init];

  return v13;
}

- (id)removeWithApp:(id)app
{
  v4 = sub_1B83DDCEC();
  v6 = v5;
  v7 = *(self + OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84850, &qword_1B83E8FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B83E80B0;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  selfCopy = self;

  v10 = sub_1B83A321C(inited, v7);
  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v12 = type metadata accessor for AlwaysAllowed();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps] = v10;
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = [(AlwaysAllowed *)&v16 init];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(self + OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1B83DDE5C();
  v7 = sub_1B83DDCBC();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (int64_t)hash
{
  sub_1B83DE25C();
  v3 = *(self + OBJC_IVAR____TtC14ScreenTimeCore13AlwaysAllowed_apps);
  selfCopy = self;
  sub_1B83A52D0(v7, v3);
  v5 = sub_1B83DE23C();

  return v5;
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

  v6 = sub_1B83A2460(v8);

  sub_1B83A5890(v8);
  return v6 & 1;
}

- (_TtC14ScreenTimeCore13AlwaysAllowed)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end