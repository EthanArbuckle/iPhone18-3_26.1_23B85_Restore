@interface SRUIFAceCommandRecord
- (SRUIFAceCommandRecord)initWithAceCommand:(id)command andCompletion:(id)completion;
- (SRUIFAceCommandRecordDelegate)delegate;
- (void)_setResult:(int64_t)result;
- (void)incrementNumberOfStartedActions;
- (void)incrementNumberOfStoppedActions;
- (void)incrementNumberOfSuccessfullyCompletedActions;
- (void)incrementNumberOfUnsuccessfullyCompletedActions;
@end

@implementation SRUIFAceCommandRecord

- (SRUIFAceCommandRecordDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)incrementNumberOfStartedActions
{
  v3 = [(SRUIFAceCommandRecord *)self numberOfStartedActions]+ 1;

  [(SRUIFAceCommandRecord *)self _setNumberOfStartedActions:v3];
}

- (void)incrementNumberOfSuccessfullyCompletedActions
{
  v24 = *MEMORY[0x277D85DE8];
  [(SRUIFAceCommandRecord *)self _setNumberOfSuccessfullyCompletedActions:[(SRUIFAceCommandRecord *)self numberOfSuccessfullyCompletedActions]+ 1];
  numberOfSuccessfullyCompletedActions = [(SRUIFAceCommandRecord *)self numberOfSuccessfullyCompletedActions];
  v4 = [(SRUIFAceCommandRecord *)self numberOfStoppedActions]+ numberOfSuccessfullyCompletedActions;
  numberOfStartedActions = [(SRUIFAceCommandRecord *)self numberOfStartedActions];
  if ([(SRUIFAceCommandRecord *)self result]== 2 || [(SRUIFAceCommandRecord *)self numberOfStartedActions]!= v4)
  {
    if ([(SRUIFAceCommandRecord *)self result]== 2 || v4 - numberOfStartedActions != 1)
    {
      result = [(SRUIFAceCommandRecord *)self result];
      v13 = *MEMORY[0x277CEF098];
      v14 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
      if (result == 2)
      {
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v13;
        aceCommand = [(SRUIFAceCommandRecord *)self aceCommand];
        aceId = [aceCommand aceId];
        *v21 = 136315394;
        *&v21[4] = "[SRUIFAceCommandRecord incrementNumberOfSuccessfullyCompletedActions]";
        *&v21[12] = 2112;
        *&v21[14] = aceId;
        _os_log_impl(&dword_26951F000, v15, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord Not marking ace command %@ as succeeded, because result is SRUIFAceCommandResultFailed.", v21, 0x16u);
      }

      else
      {
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v13;
        aceCommand2 = [(SRUIFAceCommandRecord *)self aceCommand];
        aceId2 = [aceCommand2 aceId];
        *v21 = 136316162;
        *&v21[4] = "[SRUIFAceCommandRecord incrementNumberOfSuccessfullyCompletedActions]";
        *&v21[12] = 2112;
        *&v21[14] = aceId2;
        *&v21[22] = 2048;
        numberOfStartedActions2 = [(SRUIFAceCommandRecord *)self numberOfStartedActions];
        *v23 = 2048;
        *&v23[2] = [(SRUIFAceCommandRecord *)self numberOfSuccessfullyCompletedActions];
        *&v23[10] = 2048;
        *&v23[12] = [(SRUIFAceCommandRecord *)self numberOfStoppedActions];
        _os_log_impl(&dword_26951F000, v15, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord Not marking ace command %@ as succeeded. %zd StartedActions != %zd SuccessfullyCompletedActions + %zd StoppedActions", v21, 0x34u);
      }

      goto LABEL_17;
    }

    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11;
      aceCommand3 = [(SRUIFAceCommandRecord *)self aceCommand];
      aceId3 = [aceCommand3 aceId];
      *v21 = 136316162;
      *&v21[4] = "[SRUIFAceCommandRecord incrementNumberOfSuccessfullyCompletedActions]";
      *&v21[12] = 2112;
      *&v21[14] = aceId3;
      *&v21[22] = 2048;
      numberOfStartedActions2 = [(SRUIFAceCommandRecord *)self numberOfSuccessfullyCompletedActions];
      *v23 = 2048;
      *&v23[2] = [(SRUIFAceCommandRecord *)self numberOfStoppedActions];
      *&v23[10] = 2048;
      *&v23[12] = [(SRUIFAceCommandRecord *)self numberOfStartedActions];
      v10 = "%s #aceCommandRecord Marking ace command %@ as succeeded while stopped. (%zd SuccessfullyCompletedActions + %zd StoppedActions) - %zd StartedActions == 1";
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      aceCommand3 = [(SRUIFAceCommandRecord *)self aceCommand];
      aceId3 = [aceCommand3 aceId];
      *v21 = 136316162;
      *&v21[4] = "[SRUIFAceCommandRecord incrementNumberOfSuccessfullyCompletedActions]";
      *&v21[12] = 2112;
      *&v21[14] = aceId3;
      *&v21[22] = 2048;
      numberOfStartedActions2 = [(SRUIFAceCommandRecord *)self numberOfStartedActions];
      *v23 = 2048;
      *&v23[2] = [(SRUIFAceCommandRecord *)self numberOfSuccessfullyCompletedActions];
      *&v23[10] = 2048;
      *&v23[12] = [(SRUIFAceCommandRecord *)self numberOfStoppedActions];
      v10 = "%s #aceCommandRecord Marking ace command %@ as succeeded. %zd StartedActions == %zd SuccessfullyCompletedActions + %zd StoppedActions";
LABEL_9:
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, v10, v21, 0x34u);
    }
  }

  [(SRUIFAceCommandRecord *)self _setResult:1, *v21, *&v21[16], numberOfStartedActions2, *v23, *&v23[16]];
LABEL_17:
  v20 = *MEMORY[0x277D85DE8];
}

- (SRUIFAceCommandRecord)initWithAceCommand:(id)command andCompletion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = SRUIFAceCommandRecord;
  v9 = [(SRUIFAceCommandRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_aceCommand, command);
    v11 = _Block_copy(completionCopy);
    commandCompletion = v10->_commandCompletion;
    v10->_commandCompletion = v11;

    v10->_result = 0;
  }

  return v10;
}

- (void)_setResult:(int64_t)result
{
  if (self->_result != result)
  {
    self->_result = result;
    delegate = [(SRUIFAceCommandRecord *)self delegate];
    [delegate aceCommandRecordDidChangeResult:self];
  }
}

- (void)incrementNumberOfStoppedActions
{
  v3 = [(SRUIFAceCommandRecord *)self numberOfStoppedActions]+ 1;

  [(SRUIFAceCommandRecord *)self _setNumberOfStoppedActions:v3];
}

- (void)incrementNumberOfUnsuccessfullyCompletedActions
{
  [(SRUIFAceCommandRecord *)self _setNumberOfUnsuccessfullyCompletedActions:[(SRUIFAceCommandRecord *)self numberOfUnsuccessfullyCompletedActions]+ 1];

  [(SRUIFAceCommandRecord *)self _setResult:2];
}

@end