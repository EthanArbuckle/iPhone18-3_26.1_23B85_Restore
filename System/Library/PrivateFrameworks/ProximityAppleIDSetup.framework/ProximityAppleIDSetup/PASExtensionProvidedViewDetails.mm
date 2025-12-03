@interface PASExtensionProvidedViewDetails
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)init;
- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PASExtensionProvidedViewDetails

- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)init
{
  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  PASExtensionProvidedViewDetails.description.getter();

  v3 = sub_2610BC9D4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PASExtensionProvidedViewDetails.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = PASExtensionProvidedViewDetails.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PASExtensionProvidedViewDetails.encode(with:)(coderCopy);
}

- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_26108DDD4();

  return v4;
}

@end