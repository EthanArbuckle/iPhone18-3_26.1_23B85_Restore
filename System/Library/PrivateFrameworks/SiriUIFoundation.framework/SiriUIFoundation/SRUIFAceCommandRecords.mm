@interface SRUIFAceCommandRecords
- (SRUIFAceCommandRecords)init;
- (SRUIFAceCommandRecordsDelegate)delegate;
- (id)_recordForAceCommand:(id)command;
- (id)aceCommandWithIdentifier:(id)identifier;
- (id)pendingAddViewsWithReflectionDialogPhaseWithRefId:(id)id;
- (int64_t)resultForAceCommand:(id)command;
- (void)aceCommandRecordDidChangeResult:(id)result;
- (void)recordActionCompletedForAceCommand:(id)command success:(BOOL)success;
- (void)recordActionStartedForAceCommand:(id)command;
- (void)recordActionStoppedForAceCommand:(id)command;
- (void)registerAceCommand:(id)command completion:(id)completion;
@end

@implementation SRUIFAceCommandRecords

- (SRUIFAceCommandRecords)init
{
  v6.receiver = self;
  v6.super_class = SRUIFAceCommandRecords;
  v2 = [(SRUIFAceCommandRecords *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    recordsByCommandIdentifier = v2->_recordsByCommandIdentifier;
    v2->_recordsByCommandIdentifier = dictionary;
  }

  return v2;
}

- (SRUIFAceCommandRecordsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)aceCommandRecordDidChangeResult:(id)result
{
  resultCopy = result;
  delegate = [(SRUIFAceCommandRecords *)self delegate];
  aceCommand = [resultCopy aceCommand];
  commandCompletion = [resultCopy commandCompletion];

  [delegate aceCommandRecords:self didChangeResultForCommand:aceCommand completion:commandCompletion];
}

- (void)registerAceCommand:(id)command completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  completionCopy = completion;
  aceId = [commandCopy aceId];
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (aceId)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[SRUIFAceCommandRecords registerAceCommand:completion:]";
      v24 = 2112;
      v25 = aceId;
      _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord identifier=%@", &v22, 0x16u);
    }

    v11 = [(SRUIFAceCommandRecords *)self aceCommandWithIdentifier:aceId];
    if (v11)
    {
      if (([commandCopy isEqual:v11] & 1) == 0)
      {
        v12 = [[SRUIFAceCommandRecord alloc] initWithAceCommand:commandCopy andCompletion:completionCopy];
        [(SRUIFAceCommandRecord *)v12 setDelegate:self];
        _recordsByCommandIdentifier = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
        [_recordsByCommandIdentifier setObject:v12 forKey:aceId];
      }

      if (![commandCopy isEqual:v11])
      {
        goto LABEL_16;
      }

      _recordsByCommandIdentifier2 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
      aceId2 = [v11 aceId];
      v16 = [_recordsByCommandIdentifier2 objectForKey:aceId2];

      if (!v16)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      if ([(SRUIFAceCommandRecord *)v16 result]== 1)
      {
        v17 = 0x277D47218;
LABEL_20:
        v20 = objc_alloc_init(*v17);
        _recordsByCommandIdentifier3 = v20;
        if (completionCopy && v20)
        {
          [v20 setRefId:aceId];
          v21 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            [(SRUIFAceCommandRecords *)v11 registerAceCommand:v21 completion:v16];
          }

          completionCopy[2](completionCopy, _recordsByCommandIdentifier3);
        }

        goto LABEL_14;
      }

      if ([(SRUIFAceCommandRecord *)v16 result]== 2)
      {
        v17 = 0x277D47208;
        goto LABEL_20;
      }

      _recordsByCommandIdentifier3 = 0;
    }

    else
    {
      v16 = [[SRUIFAceCommandRecord alloc] initWithAceCommand:commandCopy andCompletion:completionCopy];
      [(SRUIFAceCommandRecord *)v16 setDelegate:self];
      _recordsByCommandIdentifier3 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
      [_recordsByCommandIdentifier3 setObject:v16 forKey:aceId];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SRUIFAceCommandRecords registerAceCommand:commandCopy completion:v10];
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)pendingAddViewsWithReflectionDialogPhaseWithRefId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _recordsByCommandIdentifier = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SRUIFAceCommandRecords_pendingAddViewsWithReflectionDialogPhaseWithRefId___block_invoke;
  v12[3] = &unk_279C62968;
  v13 = idCopy;
  v7 = v5;
  v14 = v7;
  v8 = idCopy;
  [_recordsByCommandIdentifier enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __76__SRUIFAceCommandRecords_pendingAddViewsWithReflectionDialogPhaseWithRefId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [v13 aceCommand];
  v5 = [v4 refId];
  if (![v5 isEqualToString:*(a1 + 32)])
  {
    goto LABEL_6;
  }

  v6 = [v13 result];

  v7 = v13;
  if (!v6)
  {
    v8 = [v13 aceCommand];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = v13;
    if (isKindOfClass)
    {
      v4 = [v13 aceCommand];
      v10 = [v4 sruif_dialogPhase];
      v11 = [v10 isReflectionDialogPhase];

      if (!v11)
      {
LABEL_7:

        v7 = v13;
        goto LABEL_8;
      }

      v12 = *(a1 + 40);
      v5 = [v13 aceCommand];
      [v12 addObject:v5];
LABEL_6:

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)aceCommandWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _recordsByCommandIdentifier = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
  v6 = [_recordsByCommandIdentifier objectForKey:identifierCopy];

  aceCommand = [v6 aceCommand];

  return aceCommand;
}

- (id)_recordForAceCommand:(id)command
{
  commandCopy = command;
  [(SRUIFAceCommandRecords *)self registerAceCommand:commandCopy completion:0];
  _recordsByCommandIdentifier = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
  aceId = [commandCopy aceId];

  v7 = [_recordsByCommandIdentifier objectForKey:aceId];

  return v7;
}

- (void)recordActionStartedForAceCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRUIFAceCommandRecords recordActionStartedForAceCommand:]";
    v10 = 2112;
    v11 = commandCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord aceCommand=%@", &v8, 0x16u);
  }

  v6 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:commandCopy];
  [v6 incrementNumberOfStartedActions];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordActionStoppedForAceCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRUIFAceCommandRecords recordActionStoppedForAceCommand:]";
    v10 = 2112;
    v11 = commandCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord aceCommand=%@", &v8, 0x16u);
  }

  v6 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:commandCopy];
  [v6 incrementNumberOfStoppedActions];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordActionCompletedForAceCommand:(id)command success:(BOOL)success
{
  successCopy = success;
  v28 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v7 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:commandCopy];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    result = [v7 result];
    v11 = @"SRUIFAceCommandResultNone";
    if (result == 1)
    {
      v11 = @"SRUIFAceCommandResultSucceeded";
    }

    if (result == 2)
    {
      v11 = @"SRUIFAceCommandResultFailed";
    }

    v12 = v11;
    v14 = 136316674;
    v15 = "[SRUIFAceCommandRecords recordActionCompletedForAceCommand:success:]";
    v16 = 2112;
    v17 = commandCopy;
    v18 = 2112;
    v19 = v12;
    v20 = 2048;
    numberOfStartedActions = [v7 numberOfStartedActions];
    v22 = 2048;
    numberOfStoppedActions = [v7 numberOfStoppedActions];
    v24 = 2048;
    numberOfSuccessfullyCompletedActions = [v7 numberOfSuccessfullyCompletedActions];
    v26 = 2048;
    numberOfUnsuccessfullyCompletedActions = [v7 numberOfUnsuccessfullyCompletedActions];
    _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord aceCommand=%@ result=%@ StartedActions=%zd StoppedActions=%zd SuccessfulActions=%zd UnsuccessfulActions=%zd ", &v14, 0x48u);
  }

  if (![v7 result])
  {
    if (successCopy)
    {
      [v7 incrementNumberOfSuccessfullyCompletedActions];
    }

    else
    {
      [v7 incrementNumberOfUnsuccessfullyCompletedActions];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int64_t)resultForAceCommand:(id)command
{
  v3 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:command];
  result = [v3 result];

  return result;
}

- (void)registerAceCommand:(void *)a3 completion:.cold.1(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 aceId];
  v8 = 136315906;
  v9 = "[SRUIFAceCommandRecords registerAceCommand:completion:]";
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  v14 = 2048;
  v15 = [a3 result];
  _os_log_error_impl(&dword_26951F000, v5, OS_LOG_TYPE_ERROR, "%s #aceCommandRecord Client received Ace Command %@ but aceId %@ was already in the registry with SRUIFAceCommandResult = %ld, running completion.", &v8, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerAceCommand:(uint64_t)a1 completion:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SRUIFAceCommandRecords registerAceCommand:completion:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26951F000, a2, OS_LOG_TYPE_ERROR, "%s #aceCommandRecord Attempt to register Ace Command %@ with no aceId", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end