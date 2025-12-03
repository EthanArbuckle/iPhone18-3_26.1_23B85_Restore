@interface SEPackageDetails
- (NSString)description;
- (_TtC9SEService16SEPackageDetails)init;
- (_TtC9SEService16SEPackageDetails)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEPackageDetails

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SEPackageDetails.encode(with:)(coderCopy);
}

- (_TtC9SEService16SEPackageDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1C7C17684(coderCopy);

  return v4;
}

- (NSString)description
{
  selfCopy = self;
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