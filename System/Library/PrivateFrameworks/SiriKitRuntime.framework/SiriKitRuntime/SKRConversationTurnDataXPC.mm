@interface SKRConversationTurnDataXPC
- (SKRConversationTurnDataXPC)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRConversationTurnDataXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ConversationTurnDataXPC.encode(with:)(coderCopy);
}

- (SKRConversationTurnDataXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end