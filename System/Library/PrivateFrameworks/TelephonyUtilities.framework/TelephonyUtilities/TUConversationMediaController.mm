@interface TUConversationMediaController
- (TUConversationMediaController)initWithConversationDataSource:(id)a3;
- (TUConversationMediaControllerDelegate)delegate;
- (void)addDelegate:(id)a3;
- (void)mediaPrioritiesChangeForConversation:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateConversationWithUUID:(id)a3 participantPresentationContexts:(id)a4;
@end

@implementation TUConversationMediaController

- (TUConversationMediaController)initWithConversationDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUConversationMediaController;
  v6 = [(TUConversationMediaController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    [(TUConversationManagerDataSource *)v7->_dataSource setMediaDelegate:v7];
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
  v5 = [(TUConversationMediaController *)self delegates];
  [v5 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(TUConversationMediaController *)self delegates];
  [v5 removeObject:v4];
}

- (TUConversationMediaControllerDelegate)delegate
{
  v2 = [(TUConversationMediaController *)self delegates];
  v3 = [v2 anyObject];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationMediaController *)self delegates];
  [v5 removeAllObjects];

  v6 = [(TUConversationMediaController *)self delegates];
  [v6 addObject:v4];
}

- (void)updateConversationWithUUID:(id)a3 participantPresentationContexts:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Updating participants presentation contexts: %@ for conversation UUID: %@", &v11, 0x16u);
  }

  v9 = [(TUConversationMediaController *)self dataSource];
  [v9 updateConversationWithUUID:v6 participantPresentationContexts:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)mediaPrioritiesChangeForConversation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__TUConversationMediaController_mediaPrioritiesChangeForConversation___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __70__TUConversationMediaController_mediaPrioritiesChangeForConversation___block_invoke(uint64_t a1)
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
          [v7 mediaController:*(a1 + 32) participantMediaPrioritiesChangedForConversation:*(a1 + 40)];
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