@interface ChatMessagesXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation ChatMessagesXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ChatMessagesXPCEnvelope.encode(with:)(v4);
}

@end