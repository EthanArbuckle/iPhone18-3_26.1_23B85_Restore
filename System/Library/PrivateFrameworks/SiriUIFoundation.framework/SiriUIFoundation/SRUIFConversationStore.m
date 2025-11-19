@interface SRUIFConversationStore
- (SRUIFConversationStore)init;
- (void)_registerConversation:(id)a3 withIdentifier:(id)a4;
- (void)fetchConversationWithIdentifier:(id)a3 completionBlock:(id)a4;
- (void)removeConversationWithIdentifier:(id)a3 completionBlock:(id)a4;
- (void)saveConversation:(id)a3 withIdentifier:(id)a4 completionBlock:(id)a5;
@end

@implementation SRUIFConversationStore

- (SRUIFConversationStore)init
{
  v8.receiver = self;
  v8.super_class = SRUIFConversationStore;
  v2 = [(SRUIFConversationStore *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    conversationsByIdentifier = v2->_conversationsByIdentifier;
    v2->_conversationsByIdentifier = v3;

    v5 = dispatch_queue_create("SRUIFConversationStore", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)_registerConversation:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SRUIFConversationStore *)self _conversationsByIdentifier];
  [v8 setObject:v7 forKey:v6];
}

- (void)saveConversation:(id)a3 withIdentifier:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__SRUIFConversationStore_saveConversation_withIdentifier_completionBlock___block_invoke;
  v15[3] = &unk_279C62640;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __74__SRUIFConversationStore_saveConversation_withIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _registerConversation:*(a1 + 40) withIdentifier:*(a1 + 48)];
  v2 = [*(a1 + 40) propertyListRepresentation];
  v15 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:&v15];
  v4 = v15;
  if (v3)
  {
    v5 = SRUIFFileURLForConversationWithIdentifier(*(a1 + 48));
    v14 = v4;
    v6 = [v3 writeToURL:v5 options:805306369 error:&v14];
    v7 = v14;

    if (v6)
    {
      v8 = *MEMORY[0x277CBE878];
      v13 = v7;
      v9 = [v5 setResourceValue:MEMORY[0x277CBEC38] forKey:v8 error:&v13];
      v4 = v13;

      if (v9)
      {
        v6 = 1;
      }

      else
      {
        v10 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          __74__SRUIFConversationStore_saveConversation_withIdentifier_completionBlock___block_invoke_cold_1(v5, v10);
        }

        v11 = [MEMORY[0x277CCAA00] defaultManager];
        [v11 removeItemAtURL:v5 error:0];

        v6 = 0;
      }
    }

    else
    {
      v4 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v6, v4);
  }
}

- (void)fetchConversationWithIdentifier:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SRUIFConversationStore_fetchConversationWithIdentifier_completionBlock___block_invoke;
  block[3] = &unk_279C62158;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __74__SRUIFConversationStore_fetchConversationWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _conversationsByIdentifier];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = SRUIFFileURLForConversationWithIdentifier(*(a1 + 40));
    v16 = 0;
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v5 options:1 error:&v16];
    v4 = v16;
    if (v6)
    {
      [*(a1 + 32) removeConversationWithIdentifier:*(a1 + 40) completionBlock:0];
      v15 = 0;
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v15];
      v8 = v15;

      if (v7)
      {
        v9 = [[SRUIFConversation alloc] initWithPropertyListRepresentation:v7];
        v3 = v9;
        if (v9)
        {
          v10 = [(SRUIFConversation *)v9 lastItem];
          [v3 _setLastRestoredItem:v10];

          [*(a1 + 32) saveConversation:v3 withIdentifier:*(a1 + 40) completionBlock:0];
          [*(a1 + 32) _registerConversation:v3 withIdentifier:*(a1 + 40)];
        }

        else
        {
          v11 = [SRUIFConversationError errorWithCode:100 localizedFailureReason:@"Unable to decode conversation from property list"];

          v8 = v11;
        }
      }

      else
      {
        v3 = 0;
      }

      v4 = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  found = AFIsFileNotFoundError();
  v13 = *(a1 + 48);
  if (v13)
  {
    if (found)
    {
      v14 = 0;
    }

    else
    {
      v14 = v4;
    }

    (*(v13 + 16))(v13, v3, v14);
  }
}

- (void)removeConversationWithIdentifier:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SRUIFConversationStore_removeConversationWithIdentifier_completionBlock___block_invoke;
  block[3] = &unk_279C62158;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __75__SRUIFConversationStore_removeConversationWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _conversationsByIdentifier];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = SRUIFFileURLForConversationWithIdentifier(*(a1 + 40));
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v8];
  v6 = v8;

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void __74__SRUIFConversationStore_saveConversation_withIdentifier_completionBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SRUIFConversationStore saveConversation:withIdentifier:completionBlock:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s Unable to exclude %@ from backup; deleting.", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end