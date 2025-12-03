@interface ChatMessagesXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation ChatMessagesXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ChatMessagesXPCEnvelope.encode(with:)(coderCopy);
}

@end