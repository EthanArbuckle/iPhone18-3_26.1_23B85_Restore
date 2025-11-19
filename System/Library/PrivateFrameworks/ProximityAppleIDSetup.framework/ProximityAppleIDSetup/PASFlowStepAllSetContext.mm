@interface PASFlowStepAllSetContext
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext)init;
- (_TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext)initWithCoder:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PASFlowStepAllSetContext

- (NSString)description
{
  v2 = self;
  PASFlowStepAllSetContext.description.getter();

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

  v6 = PASFlowStepAllSetContext.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = PASFlowStepAllSetContext.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PASFlowStepAllSetContext.encode(with:)(v4);
}

- (_TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_260FE7EE4(v3);

  return v4;
}

- (_TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end