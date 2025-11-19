@interface PeopleLegacyResult
- (_TtC6People18PeopleLegacyResult)init;
- (_TtC6People18PeopleLegacyResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PeopleLegacyResult

- (_TtC6People18PeopleLegacyResult)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_22F05A408();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22F05A164(v4);
}

- (_TtC6People18PeopleLegacyResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end