@interface CSDActivitySessionParticipantMonitor
- (void)evaluateConversation:(id)conversation;
@end

@implementation CSDActivitySessionParticipantMonitor

- (void)evaluateConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_1003D86B8(conversationCopy);
}

@end