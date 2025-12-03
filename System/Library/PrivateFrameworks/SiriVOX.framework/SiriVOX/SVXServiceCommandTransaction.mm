@interface SVXServiceCommandTransaction
- (SVXServiceCommandTransaction)initWithPerformer:(id)performer command:(id)command handlers:(id)handlers taskTracker:(id)tracker dependencies:(id)dependencies completion:(id)completion;
- (id)description;
- (void)_addBlockedTransaction:(id)transaction;
- (void)_didHandleAll;
- (void)_didPrepareAll;
- (void)_dispatchCompletionWithResult:(id)result;
- (void)_handle;
- (void)_handler:(id)_handler didHandleWithResult:(id)result completion:(id)completion;
- (void)_invalidate;
- (void)_prepare;
- (void)_removeBlockingTransaction:(id)transaction;
- (void)_unblockDependentTransactions;
- (void)addBlockedTransaction:(id)transaction;
- (void)dealloc;
- (void)handler:(id)handler didHandleWithResult:(id)result completion:(id)completion;
- (void)handler:(id)handler didPrepareSuccessfully:(BOOL)successfully context:(id)context completion:(id)completion;
- (void)invalidate;
- (void)removeBlockingTransaction:(id)transaction;
@end

@implementation SVXServiceCommandTransaction

- (void)_dispatchCompletionWithResult:(id)result
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, result);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)_unblockDependentTransactions
{
  if ([(NSHashTable *)self->_blockedTransactions count])
  {
    setRepresentation = [(NSHashTable *)self->_blockedTransactions setRepresentation];
    performer = self->_performer;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__SVXServiceCommandTransaction__unblockDependentTransactions__block_invoke;
    v6[3] = &unk_279C68FE8;
    v7 = setRepresentation;
    selfCopy = self;
    v5 = setRepresentation;
    [(SVXPerforming *)performer performBlock:v6 withOptions:0];
  }
}

void __61__SVXServiceCommandTransaction__unblockDependentTransactions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeBlockingTransaction:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[SVXServiceCommandTransaction _invalidate]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  self->_state = 5;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  aceId = [(SAAceCommand *)self->_command aceId];
  v6 = [v4 initWithFormat:@"Service command handling context invalidated for command %@.", aceId];
  v7 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v6];
  [(SVXServiceCommandTransaction *)self _dispatchCompletionWithResult:v7];

  [(SVXServiceCommandTransaction *)self _unblockDependentTransactions];
  blockedTransactions = self->_blockedTransactions;
  self->_blockedTransactions = 0;

  blockingTransactions = self->_blockingTransactions;
  self->_blockingTransactions = 0;

  preparedContextsByHandlerIdentifier = self->_preparedContextsByHandlerIdentifier;
  self->_preparedContextsByHandlerIdentifier = 0;

  preparedResultsByHandlerIdentifier = self->_preparedResultsByHandlerIdentifier;
  self->_preparedResultsByHandlerIdentifier = 0;

  taskTracker = self->_taskTracker;
  self->_taskTracker = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_didHandleAll
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[SVXServiceCommandTransaction _didHandleAll]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", &v14, 0x16u);
  }

  state = self->_state;
  if (state == 3)
  {
    self->_state = 4;
    v6 = [(NSMutableDictionary *)self->_handledResultsByHandlerIdentifier count];
    if (v6 == 1)
    {
      allValues = [(NSMutableDictionary *)self->_handledResultsByHandlerIdentifier allValues];
      firstObject = [allValues firstObject];
    }

    else
    {
      if (!v6)
      {
        v7 = +[SVXServiceCommandResult resultIgnored];
LABEL_12:
        [(SVXServiceCommandTransaction *)self _dispatchCompletionWithResult:v7];
        [(SVXServiceCommandTransaction *)self _unblockDependentTransactions];
        blockedTransactions = self->_blockedTransactions;
        self->_blockedTransactions = 0;

        taskTracker = self->_taskTracker;
        self->_taskTracker = 0;

        goto LABEL_13;
      }

      allValues = [(NSMutableDictionary *)self->_handledResultsByHandlerIdentifier allValues];
      firstObject = [SVXServiceCommandResult resultWithResults:allValues];
    }

    v7 = firstObject;

    goto LABEL_12;
  }

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[SVXServiceCommandTransaction _didHandleAll]";
    v16 = 2048;
    selfCopy = state;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v14, 0x16u);
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handler:(id)_handler didHandleWithResult:(id)result completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  _handlerCopy = _handler;
  resultCopy = result;
  completionCopy = completion;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[SVXServiceCommandTransaction _handler:didHandleWithResult:completion:]";
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s %@", &v20, 0x16u);
  }

  state = self->_state;
  if (state == 3)
  {
    if (resultCopy)
    {
      handledResultsByHandlerIdentifier = self->_handledResultsByHandlerIdentifier;
      if (!handledResultsByHandlerIdentifier)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v16 = self->_handledResultsByHandlerIdentifier;
        self->_handledResultsByHandlerIdentifier = v15;

        handledResultsByHandlerIdentifier = self->_handledResultsByHandlerIdentifier;
      }

      identifier = [_handlerCopy identifier];
      [(NSMutableDictionary *)handledResultsByHandlerIdentifier setObject:resultCopy forKey:identifier];
    }
  }

  else
  {
    v18 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[SVXServiceCommandTransaction _handler:didHandleWithResult:completion:]";
      v22 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v20, 0x16u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handle
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[SVXServiceCommandTransaction _handle]";
    v43 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  state = self->_state;
  if (state == 2)
  {
    if ([(NSMutableSet *)self->_blockingTransactions count])
    {
      v6 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        blockingTransactions = self->_blockingTransactions;
        *buf = 136315394;
        v42 = "[SVXServiceCommandTransaction _handle]";
        v43 = 2112;
        selfCopy = blockingTransactions;
        v8 = "%s Ignored because blocked by %@.";
        v9 = v6;
LABEL_9:
        _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, v8, buf, 0x16u);
      }
    }

    else
    {
      self->_state = 3;
      objc_initWeak(buf, self);
      v11 = dispatch_group_create();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = self->_handlers;
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v12)
      {
        v28 = *v37;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            dispatch_group_enter(v11);
            identifier = [v14 identifier];
            v16 = [(NSMutableDictionary *)self->_preparedResultsByHandlerIdentifier objectForKey:identifier];
            bOOLValue = [v16 BOOLValue];

            if (bOOLValue)
            {
              command = self->_command;
              v19 = [(NSMutableDictionary *)self->_preparedContextsByHandlerIdentifier objectForKey:identifier];
              taskTracker = self->_taskTracker;
              v33[0] = MEMORY[0x277D85DD0];
              v33[1] = 3221225472;
              v33[2] = __39__SVXServiceCommandTransaction__handle__block_invoke;
              v33[3] = &unk_279C690D8;
              objc_copyWeak(&v35, buf);
              v33[4] = v14;
              v34 = v11;
              [v14 handleCommand:command withContext:v19 taskTracker:taskTracker completion:v33];

              objc_destroyWeak(&v35);
            }

            else
            {
              v21 = objc_alloc(MEMORY[0x277CCACA8]);
              aceId = [(SAAceCommand *)self->_command aceId];
              v23 = [v21 initWithFormat:@"Failed to prepare command %@.", aceId];
              v24 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v23];
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_3;
              v31[3] = &unk_279C68FC0;
              v32 = v11;
              [(SVXServiceCommandTransaction *)self _handler:v14 didHandleWithResult:v24 completion:v31];
            }
          }

          v12 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v12);
      }

      v25 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_4;
      block[3] = &unk_279C690B0;
      block[4] = self;
      objc_copyWeak(&v30, buf);
      dispatch_group_notify(v11, v25, block);

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v42 = "[SVXServiceCommandTransaction _handle]";
      v43 = 2048;
      selfCopy = state;
      v8 = "%s Ignored because state is %ld.";
      v9 = v10;
      goto LABEL_9;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __39__SVXServiceCommandTransaction__handle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_2;
  v6[3] = &unk_279C68FC0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [WeakRetained handler:v5 didHandleWithResult:v3 completion:v6];
}

void __39__SVXServiceCommandTransaction__handle__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__SVXServiceCommandTransaction__handle__block_invoke_5;
  v2[3] = &unk_279C69088;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 performBlock:v2];
  objc_destroyWeak(&v3);
}

void __39__SVXServiceCommandTransaction__handle__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didHandleAll];
}

- (void)_didPrepareAll
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SVXServiceCommandTransaction _didPrepareAll]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  state = self->_state;
  if (state == 1)
  {
    self->_state = 2;
    [(SVXServiceCommandTransaction *)self _handle];
  }

  else
  {
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[SVXServiceCommandTransaction _didPrepareAll]";
      v10 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_prepare
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[SVXServiceCommandTransaction _prepare]";
    v32 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  state = self->_state;
  if (state)
  {
    v6 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "[SVXServiceCommandTransaction _prepare]";
      v32 = 2048;
      selfCopy = state;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s Ignored because state is %ld.", buf, 0x16u);
    }
  }

  else
  {
    self->_state = 1;
    objc_initWeak(buf, self);
    v7 = dispatch_group_create();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_handlers;
    v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = *v26;
      v15 = v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          dispatch_group_enter(v7);
          if (objc_opt_respondsToSelector())
          {
            command = self->_command;
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke;
            v22[3] = &unk_279C69060;
            objc_copyWeak(&v24, buf);
            v22[4] = v11;
            v23 = v7;
            [v11 prepareToHandleCommand:command completion:v22];

            objc_destroyWeak(&v24);
          }

          else
          {
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v20[0] = __40__SVXServiceCommandTransaction__prepare__block_invoke_3;
            v20[1] = &unk_279C68FC0;
            v21 = v7;
            [(SVXServiceCommandTransaction *)self _handler:v11 didPrepareSuccessfully:1 context:0 completion:v19, v15];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v13 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke_4;
    block[3] = &unk_279C690B0;
    block[4] = self;
    objc_copyWeak(&v18, buf);
    dispatch_group_notify(v7, v13, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __40__SVXServiceCommandTransaction__prepare__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke_2;
  v8[3] = &unk_279C68FC0;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  [WeakRetained handler:v7 didPrepareSuccessfully:a2 context:v5 completion:v8];
}

void __40__SVXServiceCommandTransaction__prepare__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__SVXServiceCommandTransaction__prepare__block_invoke_5;
  v2[3] = &unk_279C69088;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 performBlock:v2];
  objc_destroyWeak(&v3);
}

void __40__SVXServiceCommandTransaction__prepare__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPrepareAll];
}

- (void)_removeBlockingTransaction:(id)transaction
{
  v13 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[SVXServiceCommandTransaction _removeBlockingTransaction:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2112;
    v12 = transactionCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s %@ is no longer blocked by %@.", &v7, 0x20u);
  }

  [(NSMutableSet *)self->_blockingTransactions removeObject:transactionCopy];
  [(SVXServiceCommandTransaction *)self _handle];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addBlockedTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = transactionCopy;
  v9 = transactionCopy;
  if ((self->_state & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [transactionCopy removeBlockingTransaction:self];
  }

  else
  {
    blockedTransactions = self->_blockedTransactions;
    if (!blockedTransactions)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_blockedTransactions;
      self->_blockedTransactions = weakObjectsHashTable;

      v5 = v9;
      blockedTransactions = self->_blockedTransactions;
    }

    [(NSHashTable *)blockedTransactions addObject:v5];
  }
}

- (void)handler:(id)handler didHandleWithResult:(id)result completion:(id)completion
{
  handlerCopy = handler;
  resultCopy = result;
  completionCopy = completion;
  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SVXServiceCommandTransaction_handler_didHandleWithResult_completion___block_invoke;
  v15[3] = &unk_279C69038;
  v15[4] = self;
  v16 = handlerCopy;
  v17 = resultCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = resultCopy;
  v14 = handlerCopy;
  [(SVXPerforming *)performer performBlock:v15];
}

- (void)handler:(id)handler didPrepareSuccessfully:(BOOL)successfully context:(id)context completion:(id)completion
{
  handlerCopy = handler;
  contextCopy = context;
  completionCopy = completion;
  performer = self->_performer;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SVXServiceCommandTransaction_handler_didPrepareSuccessfully_context_completion___block_invoke;
  v17[3] = &unk_279C69010;
  v17[4] = self;
  v18 = handlerCopy;
  successfullyCopy = successfully;
  v19 = contextCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = contextCopy;
  v16 = handlerCopy;
  [(SVXPerforming *)performer performBlock:v17];
}

- (void)removeBlockingTransaction:(id)transaction
{
  transactionCopy = transaction;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SVXServiceCommandTransaction_removeBlockingTransaction___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

- (void)addBlockedTransaction:(id)transaction
{
  transactionCopy = transaction;
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SVXServiceCommandTransaction_addBlockedTransaction___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  [(SVXPerforming *)performer performBlock:v7];
}

- (void)invalidate
{
  performer = self->_performer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SVXServiceCommandTransaction_invalidate__block_invoke;
  v3[3] = &unk_279C68FC0;
  v3[4] = self;
  [(SVXPerforming *)performer performBlock:v3];
}

- (SVXServiceCommandTransaction)initWithPerformer:(id)performer command:(id)command handlers:(id)handlers taskTracker:(id)tracker dependencies:(id)dependencies completion:(id)completion
{
  v64 = *MEMORY[0x277D85DE8];
  performerCopy = performer;
  commandCopy = command;
  handlersCopy = handlers;
  trackerCopy = tracker;
  dependenciesCopy = dependencies;
  completionCopy = completion;
  v61.receiver = self;
  v61.super_class = SVXServiceCommandTransaction;
  v20 = [(SVXServiceCommandTransaction *)&v61 init];
  v21 = v20;
  if (v20)
  {
    v45 = trackerCopy;
    v48 = performerCopy;
    objc_storeStrong(&v20->_performer, performer);
    v21->_state = 0;
    v47 = commandCopy;
    v22 = [commandCopy copy];
    command = v21->_command;
    v21->_command = v22;

    v24 = [handlersCopy copy];
    handlers = v21->_handlers;
    v21->_handlers = v24;

    objc_storeStrong(&v21->_taskTracker, tracker);
    v44 = completionCopy;
    v26 = MEMORY[0x26D642680](completionCopy);
    completion = v21->_completion;
    v21->_completion = v26;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v46 = handlersCopy;
    obj = handlersCopy;
    v28 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v57 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v33 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dependenciesCopy, "count")}];
            blockingTransactions = v21->_blockingTransactions;
            v21->_blockingTransactions = v33;

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v35 = dependenciesCopy;
            v36 = [v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v54;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v54 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v53 + 1) + 8 * j);
                  if ([v32 shouldDependOnCommand:v40[6]])
                  {
                    [(NSMutableSet *)v21->_blockingTransactions addObject:v40];
                    [v40 addBlockedTransaction:v21];
                  }
                }

                v37 = [v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
              }

              while (v37);
            }
          }
        }

        v29 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v29);
    }

    performer = v21->_performer;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __103__SVXServiceCommandTransaction_initWithPerformer_command_handlers_taskTracker_dependencies_completion___block_invoke;
    v51[3] = &unk_279C68FC0;
    v52 = v21;
    [(SVXPerforming *)performer performBlock:v51 withOptions:0];

    commandCopy = v47;
    performerCopy = v48;
    trackerCopy = v45;
    handlersCopy = v46;
    completionCopy = v44;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)dealloc
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  aceId = [(SAAceCommand *)self->_command aceId];
  v5 = [v3 initWithFormat:@"Service command handling context deallocated for command %@.", aceId];
  v6 = [SVXServiceCommandResult resultFailureWithErrorCode:0 reason:v5];
  [(SVXServiceCommandTransaction *)self _dispatchCompletionWithResult:v6];

  v7.receiver = self;
  v7.super_class = SVXServiceCommandTransaction;
  [(SVXServiceCommandTransaction *)&v7 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = SVXServiceCommandTransaction;
  v4 = [(SVXServiceCommandTransaction *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {command = %@, handlers = %@, taskTracker = %@}", v4, self->_command, self->_handlers, self->_taskTracker];

  return v5;
}

@end