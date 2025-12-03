@interface SRUIFDelayedActionCommandCache
- (SRUIFDelayedActionCommandCache)initWithDelegate:(id)delegate;
- (SRUIFDelayedActionCommandCacheDelegate)delegate;
- (id)_commandHandler;
- (void)_invalidateDelayedActionTimer:(id)timer withKey:(id)key;
- (void)_performCommandsWithDelayedActionCommand:(id)command;
- (void)_performDelayedActionCommandTimerAction:(id)action;
- (void)cancelDelayedActionWithDelayedActionCancelCommand:(id)command completion:(id)completion;
- (void)dealloc;
- (void)enqueueDelayedActionCommand:(id)command completion:(id)completion;
- (void)invalidatePendingCommands;
- (void)performDismissalCommands;
@end

@implementation SRUIFDelayedActionCommandCache

- (SRUIFDelayedActionCommandCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = SRUIFDelayedActionCommandCache;
  v5 = [(SRUIFDelayedActionCommandCache *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    delayedActionTimersByIdentifier = v5->_delayedActionTimersByIdentifier;
    v5->_delayedActionTimersByIdentifier = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dismissalDelayedActionCommandsByIdentifier = v5->_dismissalDelayedActionCommandsByIdentifier;
    v5->_dismissalDelayedActionCommandsByIdentifier = v8;

    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)dealloc
{
  [(SRUIFDelayedActionCommandCache *)self invalidatePendingCommands];
  v3.receiver = self;
  v3.super_class = SRUIFDelayedActionCommandCache;
  [(SRUIFDelayedActionCommandCache *)&v3 dealloc];
}

- (void)enqueueDelayedActionCommand:(id)command completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[SRUIFDelayedActionCommandCache enqueueDelayedActionCommand:completion:]";
    _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  aceId = [commandCopy aceId];
  timerValue = [commandCopy timerValue];

  if (timerValue)
  {
    timerValue2 = [commandCopy timerValue];
    [timerValue2 doubleValue];
    v14 = v13 / 1000.0;

    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      commands = [commandCopy commands];
      *buf = 136315906;
      v35 = "[SRUIFDelayedActionCommandCache enqueueDelayedActionCommand:completion:]";
      v36 = 2112;
      v37 = commandCopy;
      v38 = 2048;
      v39 = v14;
      v40 = 2112;
      v41 = commands;
      _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_DEFAULT, "%s Enqueue delayed action command: %@, delay: %f, commands: %@", buf, 0x2Au);
    }

    v18 = objc_alloc(MEMORY[0x277CEEEA8]);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processIdentifier = [processInfo processIdentifier];
    v21 = MEMORY[0x277CCACA8];
    aceId2 = [commandCopy aceId];
    v23 = [v21 stringWithFormat:@"SiriDelayedActionCommandAssertion-%@", aceId2];
    v24 = [v18 initWithPID:processIdentifier flags:1 reason:4 name:v23 withHandler:0];

    v25 = MEMORY[0x277CBEBB8];
    v26 = [[_SRUIFAssertingDelayedActionCommand alloc] initWithCommand:commandCopy assertion:v24];
    v27 = [v25 scheduledTimerWithTimeInterval:self target:sel__performDelayedActionCommandTimerAction_ selector:v26 userInfo:0 repeats:v14];

    [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier setObject:v27 forKey:aceId];
  }

  else
  {
    v28 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      commands2 = [commandCopy commands];
      *buf = 136315650;
      v35 = "[SRUIFDelayedActionCommandCache enqueueDelayedActionCommand:completion:]";
      v36 = 2112;
      v37 = commandCopy;
      v38 = 2112;
      v39 = *&commands2;
      _os_log_impl(&dword_26951F000, v29, OS_LOG_TYPE_DEFAULT, "%s Enqueue dismissal action command: %@, commands: %@", buf, 0x20u);
    }

    [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier setObject:commandCopy forKey:aceId];
  }

  v31 = objc_alloc_init(MEMORY[0x277D47218]);
  aceId3 = [commandCopy aceId];
  [v31 setRefId:aceId3];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v31);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)cancelDelayedActionWithDelayedActionCancelCommand:(id)command completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[SRUIFDelayedActionCommandCache cancelDelayedActionWithDelayedActionCancelCommand:completion:]";
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v16, 0xCu);
  }

  delayedActionAceId = [commandCopy delayedActionAceId];
  v10 = [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier objectForKey:delayedActionAceId];
  if (v10)
  {
    [(SRUIFDelayedActionCommandCache *)self _invalidateDelayedActionTimer:v10 withKey:delayedActionAceId];
    v11 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier objectForKey:delayedActionAceId];
    if (v12)
    {
      [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier removeObjectForKey:delayedActionAceId];
      v13 = 0x277D47218;
    }

    else
    {
      v13 = 0x277D47208;
    }

    v11 = objc_alloc_init(*v13);
  }

  aceId = [commandCopy aceId];
  [v11 setRefId:aceId];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_performDelayedActionCommandTimerAction:(id)action
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SRUIFDelayedActionCommandCache _performDelayedActionCommandTimerAction:]";
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  userInfo = [actionCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = userInfo;
    command = [v8 command];
    [(SRUIFDelayedActionCommandCache *)self _performCommandsWithDelayedActionCommand:command];
    delayedActionTimersByIdentifier = self->_delayedActionTimersByIdentifier;
    aceId = [command aceId];
    [(NSMutableDictionary *)delayedActionTimersByIdentifier removeObjectForKey:aceId];

    assertion = [v8 assertion];
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[SRUIFDelayedActionCommandCache _performDelayedActionCommandTimerAction:]";
      v17 = 2112;
      v18 = assertion;
      v19 = 2112;
      v20 = command;
      _os_log_impl(&dword_26951F000, v13, OS_LOG_TYPE_DEFAULT, "%s Invalidating assertion: %@ for delayed action command: %@", &v15, 0x20u);
    }

    [assertion invalidate];
  }

  [actionCopy invalidate];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePendingCommands
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SRUIFDelayedActionCommandCache invalidatePendingCommands]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  allKeys = [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier objectForKey:v9];
        if (v10)
        {
          [(SRUIFDelayedActionCommandCache *)self _invalidateDelayedActionTimer:v10 withKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateDelayedActionTimer:(id)timer withKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  keyCopy = key;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    userInfo = [timerCopy userInfo];
    v19 = 136315394;
    v20 = "[SRUIFDelayedActionCommandCache _invalidateDelayedActionTimer:withKey:]";
    v21 = 2112;
    v22 = userInfo;
    _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s Invalidating delayed action timer with userInfo: %@", &v19, 0x16u);
  }

  userInfo2 = [timerCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = userInfo2;
    assertion = [v13 assertion];
    v15 = *v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      command = [v13 command];
      v19 = 136315650;
      v20 = "[SRUIFDelayedActionCommandCache _invalidateDelayedActionTimer:withKey:]";
      v21 = 2112;
      v22 = assertion;
      v23 = 2112;
      v24 = command;
      _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_DEFAULT, "%s Invalidating assertion: %@ for delayed action command: %@", &v19, 0x20u);
    }

    [assertion invalidate];
  }

  [timerCopy invalidate];

  [(NSMutableDictionary *)self->_delayedActionTimersByIdentifier removeObjectForKey:keyCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)performDismissalCommands
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[SRUIFDelayedActionCommandCache performDismissalCommands]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  allKeys = [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier objectForKey:v9];
        if (v10)
        {
          [(SRUIFDelayedActionCommandCache *)self _performCommandsWithDelayedActionCommand:v10];
          [(NSMutableDictionary *)self->_dismissalDelayedActionCommandsByIdentifier removeObjectForKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_commandHandler
{
  v2 = objc_alloc_init(MEMORY[0x277CEF1D8]);

  return v2;
}

- (void)_performCommandsWithDelayedActionCommand:(id)command
{
  v26 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    commands = [commandCopy commands];
    *buf = 136315650;
    v21 = "[SRUIFDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]";
    v22 = 2112;
    v23 = commandCopy;
    v24 = 2112;
    v25 = commands;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s Performing delayed action command: %@ with commands: %@", buf, 0x20u);
  }

  _commandHandler = [(SRUIFDelayedActionCommandCache *)self _commandHandler];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  objc_initWeak(buf, self);
  commands2 = [commandCopy commands];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke;
  v15[3] = &unk_279C61C48;
  v11 = _commandHandler;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = commandCopy;
  v18 = v13;
  objc_copyWeak(&v19, buf);
  [commands2 enumerateObjectsUsingBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_2;
    v12[3] = &unk_279C61BD0;
    v13 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_32;
    v7[3] = &unk_279C61C20;
    v6 = v13;
    v8 = v6;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    objc_copyWeak(&v11, (a1 + 56));
    [v5 handleCommand:v6 commandHandler:v12 completion:v7];
    objc_destroyWeak(&v11);
  }
}

void __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[SRUIFDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_INFO, "%s Received response for delayed command: %@, response: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_32(id *a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      *buf = 136315394;
      v16 = "[SRUIFDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_INFO, "%s Delayed command succeeded: %@", buf, 0x16u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_33;
    v10[3] = &unk_279C61BF8;
    v11 = a1[5];
    v12 = a1[4];
    v13 = a1[6];
    objc_copyWeak(&v14, a1 + 7);
    dispatch_async(MEMORY[0x277D85CD0], v10);
    objc_destroyWeak(&v14);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_32_cold_1(a1, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_33(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 48) commands];
  v4 = [v3 count];

  if (v2 == v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 48);
        v10 = 136315394;
        v11 = "[SRUIFDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]_block_invoke";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_INFO, "%s Successfully handled all commands for %@", &v10, 0x16u);
      }

      v8 = [WeakRetained delegate];
      [v8 commandCache:WeakRetained didSuccessfullyHandleCommandsInDelayedActionCommand:*(a1 + 48)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (SRUIFDelayedActionCommandCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __75__SRUIFDelayedActionCommandCache__performCommandsWithDelayedActionCommand___block_invoke_32_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 136315650;
  v6 = "[SRUIFDelayedActionCommandCache _performCommandsWithDelayedActionCommand:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s Delayed command failed: %@ with error: %@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end