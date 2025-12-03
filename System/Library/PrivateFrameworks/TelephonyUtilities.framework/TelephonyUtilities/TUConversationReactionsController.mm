@interface TUConversationReactionsController
- (TUConversationReactionsController)initWithConversationDataSource:(id)source;
- (void)addDelegate:(id)delegate;
- (void)conversation:(id)conversation participant:(id)participant didReact:(id)react;
- (void)conversation:(id)conversation participantDidStopReacting:(id)reacting;
- (void)removeDelegate:(id)delegate;
@end

@implementation TUConversationReactionsController

- (TUConversationReactionsController)initWithConversationDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = TUConversationReactionsController;
  v6 = [(TUConversationReactionsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    [(TUConversationManagerDataSource *)v7->_dataSource setReactionsDelegate:v7];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = weakObjectsHashTable;
  }

  return v7;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegates = [(TUConversationReactionsController *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegates = [(TUConversationReactionsController *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)conversation:(id)conversation participant:(id)participant didReact:(id)react
{
  conversationCopy = conversation;
  participantCopy = participant;
  reactCopy = react;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__TUConversationReactionsController_conversation_participant_didReact___block_invoke;
  v14[3] = &unk_1E7425188;
  v14[4] = self;
  v15 = conversationCopy;
  v16 = participantCopy;
  v17 = reactCopy;
  v11 = reactCopy;
  v12 = participantCopy;
  v13 = conversationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __71__TUConversationReactionsController_conversation_participant_didReact___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 reactionsController:*(a1 + 32) conversation:*(a1 + 40) participant:*(a1 + 48) didReact:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)conversation:(id)conversation participantDidStopReacting:(id)reacting
{
  conversationCopy = conversation;
  reactingCopy = reacting;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__TUConversationReactionsController_conversation_participantDidStopReacting___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v11 = conversationCopy;
  v12 = reactingCopy;
  v8 = reactingCopy;
  v9 = conversationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__TUConversationReactionsController_conversation_participantDidStopReacting___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 reactionsController:*(a1 + 32) conversation:*(a1 + 40) participantDidStopReacting:*(a1 + 48)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end