@interface SKRConversationCommitResult
- (SKRConversationCommitResult)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRConversationCommitResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationCommitResultXPC.encode(with:)(v4);
}

- (SKRConversationCommitResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end