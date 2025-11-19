@interface SEPackageDetails
- (NSString)description;
- (_TtC9SEService16SEPackageDetails)init;
- (_TtC9SEService16SEPackageDetails)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEPackageDetails

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SEPackageDetails.encode(with:)(v4);
}

- (_TtC9SEService16SEPackageDetails)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1C7C17684(v3);

  return v4;
}

- (NSString)description
{
  v2 = self;
  SEPackageDetails.description.getter();

  v3 = sub_1C7C7D2E4();

  return v3;
}

- (_TtC9SEService16SEPackageDetails)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end