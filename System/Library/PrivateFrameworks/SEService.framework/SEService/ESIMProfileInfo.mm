@interface ESIMProfileInfo
- (NSString)description;
- (_TtC9SEService15ESIMProfileInfo)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ESIMProfileInfo

- (NSString)description
{
  v2 = self;
  ESIMProfileInfo.description.getter();

  v3 = sub_1C7C7D2E4();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
  v5 = *&self->iccid[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
  v6 = a3;
  v7 = self;
  v8 = sub_1C7C7D2E4();
  v9 = sub_1C7C7D2E4();
  [v6 encodeObject:v8 forKey:v9];

  v10 = *(&v7->super.isa + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
  v11 = sub_1C7C7D2E4();
  [v6 encodeInteger:v10 forKey:v11];
}

- (_TtC9SEService15ESIMProfileInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end