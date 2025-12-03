@interface TUConversationMediaController
- (TUConversationMediaController)initWithConversationDataSource:(id)source;
- (TUConversationMediaControllerDelegate)delegate;
- (void)addDelegate:(id)delegate;
- (void)mediaPrioritiesChangeForConversation:(id)conversation;
- (void)removeDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)updateConversationWithUUID:(id)d participantPresentationContexts:(id)contexts;
@end

@implementation TUConversationMediaController

- (TUConversationMediaController)initWithConversationDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = TUConversationMediaController;
  v6 = [(TUConversationMediaController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    [(TUConversationManagerDataSource *)v7->_dataSource setMediaDelegate:v7];
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
  delegates = [(TUConversationMediaController *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegates = [(TUConversationMediaController *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (TUConversationMediaControllerDelegate)delegate
{
  delegates = [(TUConversationMediaController *)self delegates];
  anyObject = [delegates anyObject];

  return anyObject;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(TUConversationMediaController *)self delegates];
  [delegates removeAllObjects];

  delegates2 = [(TUConversationMediaController *)self delegates];
  [delegates2 addObject:delegateCopy];
}

- (void)updateConversationWithUUID:(id)d participantPresentationContexts:(id)contexts
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextsCopy = contexts;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = contextsCopy;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Updating participants presentation contexts: %@ for conversation UUID: %@", &v11, 0x16u);
  }

  dataSource = [(TUConversationMediaController *)self dataSource];
  [dataSource updateConversationWithUUID:dCopy participantPresentationContexts:contextsCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)mediaPrioritiesChangeForConversation:(id)conversation
{
  conversationCopy = conversation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__TUConversationMediaController_mediaPrioritiesChangeForConversation___block_invoke;
  v6[3] = &unk_1E7424898;
  v6[4] = self;
  v7 = conversationCopy;
  v5 = conversationCopy;
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