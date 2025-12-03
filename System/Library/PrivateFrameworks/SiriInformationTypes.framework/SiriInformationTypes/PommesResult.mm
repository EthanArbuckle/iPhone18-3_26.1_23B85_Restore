@interface PommesResult
- (_TtC21SiriInformationSearch12PommesResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PommesResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PommesResult.encode(with:)(coderCopy);
}

- (_TtC21SiriInformationSearch12PommesResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end