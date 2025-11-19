@interface SKRConversationTurnDataXPC
- (SKRConversationTurnDataXPC)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRConversationTurnDataXPC

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationTurnDataXPC.encode(with:)(v4);
}

- (SKRConversationTurnDataXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end