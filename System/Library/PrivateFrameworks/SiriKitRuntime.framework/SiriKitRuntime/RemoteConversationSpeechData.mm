@interface RemoteConversationSpeechData
- (_TtC14SiriKitRuntime28RemoteConversationSpeechData)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RemoteConversationSpeechData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  RemoteConversationSpeechData.encode(with:)(coderCopy);
}

- (_TtC14SiriKitRuntime28RemoteConversationSpeechData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end