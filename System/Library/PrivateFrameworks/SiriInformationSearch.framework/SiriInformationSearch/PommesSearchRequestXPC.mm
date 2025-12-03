@interface PommesSearchRequestXPC
- (_TtC21SiriInformationSearch22PommesSearchRequestXPC)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PommesSearchRequestXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PommesSearchRequestXPC.encode(with:)(coderCopy);
}

- (_TtC21SiriInformationSearch22PommesSearchRequestXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end