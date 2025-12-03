@interface Experience
- (_TtC21SiriInformationSearch10Experience)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Experience

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Experience.encode(with:)(coderCopy);
}

- (_TtC21SiriInformationSearch10Experience)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end