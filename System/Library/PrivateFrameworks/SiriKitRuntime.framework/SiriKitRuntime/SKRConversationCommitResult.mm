@interface SKRConversationCommitResult
- (SKRConversationCommitResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRConversationCommitResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ConversationCommitResultXPC.encode(with:)(coderCopy);
}

- (SKRConversationCommitResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end