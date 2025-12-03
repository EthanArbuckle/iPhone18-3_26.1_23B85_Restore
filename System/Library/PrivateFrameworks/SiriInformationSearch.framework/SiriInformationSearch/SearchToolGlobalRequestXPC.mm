@interface SearchToolGlobalRequestXPC
- (_TtC21SiriInformationSearch26SearchToolGlobalRequestXPC)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SearchToolGlobalRequestXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SearchToolGlobalRequestXPC.encode(with:)(coderCopy);
}

- (_TtC21SiriInformationSearch26SearchToolGlobalRequestXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end