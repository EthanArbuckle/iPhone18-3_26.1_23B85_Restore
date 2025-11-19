@interface SRUIFAceCommandRecords
- (SRUIFAceCommandRecords)init;
- (SRUIFAceCommandRecordsDelegate)delegate;
- (id)_recordForAceCommand:(id)a3;
- (id)aceCommandWithIdentifier:(id)a3;
- (id)pendingAddViewsWithReflectionDialogPhaseWithRefId:(id)a3;
- (int64_t)resultForAceCommand:(id)a3;
- (void)aceCommandRecordDidChangeResult:(id)a3;
- (void)recordActionCompletedForAceCommand:(id)a3 success:(BOOL)a4;
- (void)recordActionStartedForAceCommand:(id)a3;
- (void)recordActionStoppedForAceCommand:(id)a3;
- (void)registerAceCommand:(id)a3 completion:(id)a4;
@end

@implementation SRUIFAceCommandRecords

- (SRUIFAceCommandRecords)init
{
  v6.receiver = self;
  v6.super_class = SRUIFAceCommandRecords;
  v2 = [(SRUIFAceCommandRecords *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    recordsByCommandIdentifier = v2->_recordsByCommandIdentifier;
    v2->_recordsByCommandIdentifier = v3;
  }

  return v2;
}

- (SRUIFAceCommandRecordsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)aceCommandRecordDidChangeResult:(id)a3
{
  v4 = a3;
  v7 = [(SRUIFAceCommandRecords *)self delegate];
  v5 = [v4 aceCommand];
  v6 = [v4 commandCompletion];

  [v7 aceCommandRecords:self didChangeResultForCommand:v5 completion:v6];
}

- (void)registerAceCommand:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 aceId];
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[SRUIFAceCommandRecords registerAceCommand:completion:]";
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord identifier=%@", &v22, 0x16u);
    }

    v11 = [(SRUIFAceCommandRecords *)self aceCommandWithIdentifier:v8];
    if (v11)
    {
      if (([v6 isEqual:v11] & 1) == 0)
      {
        v12 = [[SRUIFAceCommandRecord alloc] initWithAceCommand:v6 andCompletion:v7];
        [(SRUIFAceCommandRecord *)v12 setDelegate:self];
        v13 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
        [v13 setObject:v12 forKey:v8];
      }

      if (![v6 isEqual:v11])
      {
        goto LABEL_16;
      }

      v14 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
      v15 = [v11 aceId];
      v16 = [v14 objectForKey:v15];

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
        v18 = v20;
        if (v7 && v20)
        {
          [v20 setRefId:v8];
          v21 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            [(SRUIFAceCommandRecords *)v11 registerAceCommand:v21 completion:v16];
          }

          v7[2](v7, v18);
        }

        goto LABEL_14;
      }

      if ([(SRUIFAceCommandRecord *)v16 result]== 2)
      {
        v17 = 0x277D47208;
        goto LABEL_20;
      }

      v18 = 0;
    }

    else
    {
      v16 = [[SRUIFAceCommandRecord alloc] initWithAceCommand:v6 andCompletion:v7];
      [(SRUIFAceCommandRecord *)v16 setDelegate:self];
      v18 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
      [v18 setObject:v16 forKey:v8];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SRUIFAceCommandRecords registerAceCommand:v6 completion:v10];
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)pendingAddViewsWithReflectionDialogPhaseWithRefId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SRUIFAceCommandRecords_pendingAddViewsWithReflectionDialogPhaseWithRefId___block_invoke;
  v12[3] = &unk_279C62968;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

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

- (id)aceCommandWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 aceCommand];

  return v7;
}

- (id)_recordForAceCommand:(id)a3
{
  v4 = a3;
  [(SRUIFAceCommandRecords *)self registerAceCommand:v4 completion:0];
  v5 = [(SRUIFAceCommandRecords *)self _recordsByCommandIdentifier];
  v6 = [v4 aceId];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (void)recordActionStartedForAceCommand:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRUIFAceCommandRecords recordActionStartedForAceCommand:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord aceCommand=%@", &v8, 0x16u);
  }

  v6 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:v4];
  [v6 incrementNumberOfStartedActions];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordActionStoppedForAceCommand:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SRUIFAceCommandRecords recordActionStoppedForAceCommand:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord aceCommand=%@", &v8, 0x16u);
  }

  v6 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:v4];
  [v6 incrementNumberOfStoppedActions];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordActionCompletedForAceCommand:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:v6];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 result];
    v11 = @"SRUIFAceCommandResultNone";
    if (v10 == 1)
    {
      v11 = @"SRUIFAceCommandResultSucceeded";
    }

    if (v10 == 2)
    {
      v11 = @"SRUIFAceCommandResultFailed";
    }

    v12 = v11;
    v14 = 136316674;
    v15 = "[SRUIFAceCommandRecords recordActionCompletedForAceCommand:success:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2048;
    v21 = [v7 numberOfStartedActions];
    v22 = 2048;
    v23 = [v7 numberOfStoppedActions];
    v24 = 2048;
    v25 = [v7 numberOfSuccessfullyCompletedActions];
    v26 = 2048;
    v27 = [v7 numberOfUnsuccessfullyCompletedActions];
    _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord aceCommand=%@ result=%@ StartedActions=%zd StoppedActions=%zd SuccessfulActions=%zd UnsuccessfulActions=%zd ", &v14, 0x48u);
  }

  if (![v7 result])
  {
    if (v4)
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

- (int64_t)resultForAceCommand:(id)a3
{
  v3 = [(SRUIFAceCommandRecords *)self _recordForAceCommand:a3];
  v4 = [v3 result];

  return v4;
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