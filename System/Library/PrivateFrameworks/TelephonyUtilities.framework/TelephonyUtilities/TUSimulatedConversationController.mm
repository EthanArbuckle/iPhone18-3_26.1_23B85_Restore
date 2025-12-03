@interface TUSimulatedConversationController
- (TUSimulatedConversationController)init;
- (TUSimulatedConversationController)initWithDataSource:(id)source;
- (void)addRemoteParticipantWithHandle:(id)handle update:(id)update toConversation:(id)conversation;
- (void)createIncomingConversationWithHandles:(id)handles;
- (void)dealloc;
- (void)removeRemoteParticipant:(id)participant fromConversation:(id)conversation;
- (void)updateParticipant:(id)participant withUpdate:(id)update onConversation:(id)conversation;
@end

@implementation TUSimulatedConversationController

- (TUSimulatedConversationController)init
{
  v3 = objc_alloc_init(TUSimulatedConversationControllerXPCClient);
  v4 = [(TUSimulatedConversationController *)self initWithDataSource:v3];

  return v4;
}

- (TUSimulatedConversationController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = TUSimulatedConversationController;
  v6 = [(TUSimulatedConversationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (void)dealloc
{
  dataSource = [(TUSimulatedConversationController *)self dataSource];
  [dataSource invalidate];

  v4.receiver = self;
  v4.super_class = TUSimulatedConversationController;
  [(TUSimulatedConversationController *)&v4 dealloc];
}

- (void)updateParticipant:(id)participant withUpdate:(id)update onConversation:(id)conversation
{
  conversationCopy = conversation;
  updateCopy = update;
  participantCopy = participant;
  dataSource = [(TUSimulatedConversationController *)self dataSource];
  [dataSource updateParticipant:participantCopy withUpdate:updateCopy onConversation:conversationCopy];
}

- (void)addRemoteParticipantWithHandle:(id)handle update:(id)update toConversation:(id)conversation
{
  conversationCopy = conversation;
  updateCopy = update;
  handleCopy = handle;
  dataSource = [(TUSimulatedConversationController *)self dataSource];
  [dataSource addRemoteParticipantWithHandle:handleCopy update:updateCopy toConversation:conversationCopy];
}

- (void)removeRemoteParticipant:(id)participant fromConversation:(id)conversation
{
  conversationCopy = conversation;
  participantCopy = participant;
  dataSource = [(TUSimulatedConversationController *)self dataSource];
  [dataSource removeRemoteParticipant:participantCopy fromConversation:conversationCopy];
}

- (void)createIncomingConversationWithHandles:(id)handles
{
  handlesCopy = handles;
  dataSource = [(TUSimulatedConversationController *)self dataSource];
  [dataSource createIncomingConversationWithHandles:handlesCopy];
}

@end