@interface SECHardwareInfoInternal
- (NSData)casdCertificate;
- (NSString)hardwareReleaseVersionString;
- (_TtC9SEService23SECHardwareInfoInternal)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SECHardwareInfoInternal

- (NSString)hardwareReleaseVersionString
{
  v2 = *(self + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_hardwareReleaseVersionString);
  v3 = *(self + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_hardwareReleaseVersionString + 8);

  v4 = sub_1C7C7D2E4();

  return v4;
}

- (NSData)casdCertificate
{
  v2 = *(self + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_casdCertificate);
  v3 = *(self + OBJC_IVAR____TtC9SEService23SECHardwareInfoInternal_casdCertificate + 8);
  sub_1C7BED654(v2, v3);
  v4 = sub_1C7C7D024();
  sub_1C7BDF778(v2, v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SECHardwareInfoInternal.encode(with:)(v4);
}

- (_TtC9SEService23SECHardwareInfoInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end