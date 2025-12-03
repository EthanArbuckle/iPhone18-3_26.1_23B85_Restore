@interface PeopleLegacyResult
- (_TtC6People18PeopleLegacyResult)init;
- (_TtC6People18PeopleLegacyResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PeopleLegacyResult

- (_TtC6People18PeopleLegacyResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_22F05A408();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22F05A164(coderCopy);
}

- (_TtC6People18PeopleLegacyResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end