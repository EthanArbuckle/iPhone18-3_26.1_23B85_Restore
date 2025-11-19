@interface TUSimulatedConversationController
- (TUSimulatedConversationController)init;
- (TUSimulatedConversationController)initWithDataSource:(id)a3;
- (void)addRemoteParticipantWithHandle:(id)a3 update:(id)a4 toConversation:(id)a5;
- (void)createIncomingConversationWithHandles:(id)a3;
- (void)dealloc;
- (void)removeRemoteParticipant:(id)a3 fromConversation:(id)a4;
- (void)updateParticipant:(id)a3 withUpdate:(id)a4 onConversation:(id)a5;
@end

@implementation TUSimulatedConversationController

- (TUSimulatedConversationController)init
{
  v3 = objc_alloc_init(TUSimulatedConversationControllerXPCClient);
  v4 = [(TUSimulatedConversationController *)self initWithDataSource:v3];

  return v4;
}

- (TUSimulatedConversationController)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUSimulatedConversationController;
  v6 = [(TUSimulatedConversationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(TUSimulatedConversationController *)self dataSource];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = TUSimulatedConversationController;
  [(TUSimulatedConversationController *)&v4 dealloc];
}

- (void)updateParticipant:(id)a3 withUpdate:(id)a4 onConversation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUSimulatedConversationController *)self dataSource];
  [v11 updateParticipant:v10 withUpdate:v9 onConversation:v8];
}

- (void)addRemoteParticipantWithHandle:(id)a3 update:(id)a4 toConversation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUSimulatedConversationController *)self dataSource];
  [v11 addRemoteParticipantWithHandle:v10 update:v9 toConversation:v8];
}

- (void)removeRemoteParticipant:(id)a3 fromConversation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUSimulatedConversationController *)self dataSource];
  [v8 removeRemoteParticipant:v7 fromConversation:v6];
}

- (void)createIncomingConversationWithHandles:(id)a3
{
  v4 = a3;
  v5 = [(TUSimulatedConversationController *)self dataSource];
  [v5 createIncomingConversationWithHandles:v4];
}

@end