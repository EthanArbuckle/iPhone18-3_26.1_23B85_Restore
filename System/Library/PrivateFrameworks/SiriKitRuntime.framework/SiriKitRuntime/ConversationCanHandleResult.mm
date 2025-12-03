@interface ConversationCanHandleResult
- (_TtC14SiriKitRuntime27ConversationCanHandleResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ConversationCanHandleResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ConversationCanHandleResult.encode(with:)(coderCopy);
}

- (_TtC14SiriKitRuntime27ConversationCanHandleResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end