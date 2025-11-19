@interface CSDConversationPersistenceController
- (void)enumerateActiveConversations:(id)a3;
- (void)removeAllConversations;
- (void)removeConversation:(id)a3;
- (void)updateConversation:(id)a3;
@end

@implementation CSDConversationPersistenceController

- (void)updateConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003CA94C();
}

- (void)removeConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003CAFE0();
}

- (void)removeAllConversations
{
  v2 = self;
  sub_1003CB638();
}

- (void)enumerateActiveConversations:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_1003CBBA0();
}

@end