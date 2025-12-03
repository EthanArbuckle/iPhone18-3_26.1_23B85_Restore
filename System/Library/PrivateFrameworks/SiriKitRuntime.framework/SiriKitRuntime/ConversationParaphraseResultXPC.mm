@interface ConversationParaphraseResultXPC
- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)init;
- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ConversationParaphraseResultXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ConversationParaphraseResultXPC.encode(with:)(coderCopy);
}

- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized ConversationParaphraseResultXPC.init(coder:)(coderCopy);

  return v4;
}

- (_TtC14SiriKitRuntime31ConversationParaphraseResultXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end