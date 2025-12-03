@interface UserID
+ (id)local;
+ (id)remoteWithAltDSID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC14ScreenTimeCore6UserID)init;
- (id)altDSIDAndReturnError:(id *)error;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UserID

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_1B83DDCBC();
  [coderCopy encodeInteger:v4 forKey:v7];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
  v9 = *(&selfCopy->type + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
  v10 = sub_1B83DDCBC();
  v11 = sub_1B83DDCBC();
  [coderCopy encodeObject:v10 forKey:v11];
}

+ (id)local
{
  v2 = type metadata accessor for UserID();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC14ScreenTimeCore6UserID_type] = 0;
  v4 = &v3[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID];
  *v4 = 0x6C61636F6CLL;
  *(v4 + 1) = 0xE500000000000000;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

+ (id)remoteWithAltDSID:(id)d
{
  v3 = sub_1B83DDCEC();
  v5 = v4;
  v6 = type metadata accessor for UserID();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC14ScreenTimeCore6UserID_type] = 1;
  v8 = &v7[OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID];
  *v8 = v3;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (id)altDSIDAndReturnError:(id *)error
{
  if (*(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type))
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
    v4 = *(&self->type + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);

    v5 = sub_1B83DDCBC();
  }

  else
  {
    sub_1B83B9E24();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    if (error)
    {
      v9 = sub_1B83DD8BC();

      v10 = v9;
      v5 = 0;
      *error = v9;
    }

    else
    {

      v5 = 0;
    }
  }

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

  v6 = sub_1B83B9F64(v8);

  sub_1B83A5890(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_1B83DE25C();
  MEMORY[0x1B8CBD740](*(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type));
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
  v4 = *(&self->type + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
  selfCopy = self;
  sub_1B83DDD5C();
  v6 = sub_1B83DE23C();

  return v6;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type);
  if (v2)
  {
    if (v2 != 1)
    {
      v9 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID_type);
      selfCopy = self;
      result = sub_1B83DE19C();
      __break(1u);
      return result;
    }

    v3 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
    v4 = *(&self->type + OBJC_IVAR____TtC14ScreenTimeCore6UserID__altDSID);
    selfCopy2 = self;
    MEMORY[0x1B8CBD290](v3, v4);
  }

  v6 = sub_1B83DDCBC();

  return v6;
}

- (_TtC14ScreenTimeCore6UserID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end