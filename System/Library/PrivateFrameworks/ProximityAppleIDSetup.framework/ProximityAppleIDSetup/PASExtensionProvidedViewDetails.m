@interface PASExtensionProvidedViewDetails
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)init;
- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)initWithCoder:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v2 = self;
  PASExtensionProvidedViewDetails.description.getter();

  v3 = sub_2610BC9D4();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PASExtensionProvidedViewDetails.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = PASExtensionProvidedViewDetails.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PASExtensionProvidedViewDetails.encode(with:)(v4);
}

- (_TtC21ProximityAppleIDSetup31PASExtensionProvidedViewDetails)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_26108DDD4();

  return v4;
}

@end