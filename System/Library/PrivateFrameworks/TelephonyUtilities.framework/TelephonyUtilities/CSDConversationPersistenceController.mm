@interface CSDConversationPersistenceController
- (void)enumerateActiveConversations:(id)conversations;
- (void)removeAllConversations;
- (void)removeConversation:(id)conversation;
- (void)updateConversation:(id)conversation;
@end

@implementation CSDConversationPersistenceController

- (void)updateConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_1003CA94C();
}

- (void)removeConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_1003CAFE0();
}

- (void)removeAllConversations
{
  selfCopy = self;
  sub_1003CB638();
}

- (void)enumerateActiveConversations:(id)conversations
{
  v4 = _Block_copy(conversations);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_1003CBBA0();
}

@end