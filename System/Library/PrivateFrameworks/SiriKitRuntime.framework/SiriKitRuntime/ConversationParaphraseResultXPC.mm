@interface ConversationParaphraseResultXPC
- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)init;
- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ConversationParaphraseResultXPC

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationParaphraseResultXPC.encode(with:)(v4);
}

- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized ConversationParaphraseResultXPC.init(coder:)(v3);

  return v4;
}

- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end