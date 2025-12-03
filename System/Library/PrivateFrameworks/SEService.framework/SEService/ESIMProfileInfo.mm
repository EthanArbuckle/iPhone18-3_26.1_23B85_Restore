@interface ESIMProfileInfo
- (NSString)description;
- (_TtC9SEService15ESIMProfileInfo)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ESIMProfileInfo

- (NSString)description
{
  selfCopy = self;
  ESIMProfileInfo.description.getter();

  v3 = sub_1C7C7D2E4();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
  v5 = *&self->iccid[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
  coderCopy = coder;
  selfCopy = self;
  v8 = sub_1C7C7D2E4();
  v9 = sub_1C7C7D2E4();
  [coderCopy encodeObject:v8 forKey:v9];

  v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
  v11 = sub_1C7C7D2E4();
  [coderCopy encodeInteger:v10 forKey:v11];
}

- (_TtC9SEService15ESIMProfileInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end