@interface TUConversationReactionsController
- (TUConversationReactionsController)initWithConversationDataSource:(id)a3;
- (void)addDelegate:(id)a3;
- (void)conversation:(id)a3 participant:(id)a4 didReact:(id)a5;
- (void)conversation:(id)a3 participantDidStopReacting:(id)a4;
- (void)removeDelegate:(id)a3;
@end

@implementation TUConversationReactionsController

- (TUConversationReactionsController)initWithConversationDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUConversationReactionsController;
  v6 = [(TUConversationReactionsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    [(TUConversationManagerDataSource *)v7->_dataSource setReactionsDelegate:v7];
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v7->_delegates;
    v7->_delegates = v8;
  }

  return v7;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(TUConversationReactionsController *)self delegates];
  [v5 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(TUConversationReactionsController *)self delegates];
  [v5 removeObject:v4];
}

- (void)conversation:(id)a3 participant:(id)a4 didReact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__TUConversationReactionsController_conversation_participant_didReact___block_invoke;
  v14[3] = &unk_1E7425188;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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

- (void)conversation:(id)a3 participantDidStopReacting:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__TUConversationReactionsController_conversation_participantDidStopReacting___block_invoke;
  block[3] = &unk_1E7424FD8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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