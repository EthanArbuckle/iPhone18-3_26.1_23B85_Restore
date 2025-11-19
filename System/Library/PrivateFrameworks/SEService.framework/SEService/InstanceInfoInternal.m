@interface InstanceInfoInternal
- (NSData)securityDomainKeyInfo;
- (_TtC9SEService20InstanceInfoInternal)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation InstanceInfoInternal

- (NSData)securityDomainKeyInfo
{
  v2 = (self + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo);
  v3 = *(self + OBJC_IVAR____TtC9SEService20InstanceInfoInternal_securityDomainKeyInfo + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1C7BED654(*v2, v3);
    v6 = sub_1C7C7D024();
    sub_1C7BE49C8(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  InstanceInfoInternal.encode(with:)(v4);
}

- (_TtC9SEService20InstanceInfoInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end