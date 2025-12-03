@interface SYBacklinkMonitorOperation
- (SYBacklinkMonitorOperation)initWithDelegate:(id)delegate processingQueue:(id)queue inputUserActivityInfo:(id)info processIdentifier:(int)identifier;
- (SYBacklinkMonitorOperationDelegate)delegate;
- (SYBacklinkMonitorOperationDelegate_Testing)_testingDelegate;
- (id)description;
- (int64_t)type;
- (void)_finishProcessingAndNotify;
- (void)_searchBacklinksForInputUserActivity;
- (void)_setOperationState:(int64_t)state;
- (void)_showOrHideBacklinkIndicatorForDomainIdentifiers:(id)identifiers linkedIdentifiers:(id)linkedIdentifiers;
- (void)beginProcessing;
@end

@implementation SYBacklinkMonitorOperation

- (SYBacklinkMonitorOperation)initWithDelegate:(id)delegate processingQueue:(id)queue inputUserActivityInfo:(id)info processIdentifier:(int)identifier
{
  delegateCopy = delegate;
  queueCopy = queue;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = SYBacklinkMonitorOperation;
  v13 = [(SYBacklinkMonitorOperation *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v14->_processingQueue, queue);
    objc_storeStrong(&v14->_inputUserActivityInfo, info);
    v14->_processIdentifier = identifier;
    if (objc_opt_respondsToSelector())
    {
      objc_storeWeak(&v14->__testingDelegate, delegateCopy);
    }
  }

  return v14;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SYBacklinkMonitorOperation;
  v3 = [(SYBacklinkMonitorOperation *)&v8 description];
  _operationState = [(SYBacklinkMonitorOperation *)self _operationState];
  if (_operationState > 3)
  {
    v5 = &stru_2838DFF18;
  }

  else
  {
    v5 = off_27856BD88[_operationState];
  }

  v6 = [v3 stringByAppendingFormat:@" state: %@", v5];

  return v6;
}

- (int64_t)type
{
  _indicatorCommand = [(SYBacklinkMonitorOperation *)self _indicatorCommand];

  if (!_indicatorCommand)
  {
    return 0;
  }

  _indicatorCommand2 = [(SYBacklinkMonitorOperation *)self _indicatorCommand];
  if ([_indicatorCommand2 isActive])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (void)beginProcessing
{
  v8 = *MEMORY[0x277D85DE8];
  processingQueue = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(processingQueue);

  v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "BacklinkOperation %p: Begin processing.", &v6, 0xCu);
  }

  [(SYBacklinkMonitorOperation *)self _searchBacklinksForInputUserActivity];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_searchBacklinksForInputUserActivity
{
  v15 = *MEMORY[0x277D85DE8];
  processingQueue = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(processingQueue);

  [(SYBacklinkMonitorOperation *)self _setOperationState:1];
  inputUserActivityInfo = [(SYBacklinkMonitorOperation *)self inputUserActivityInfo];
  v5 = inputUserActivityInfo;
  if (inputUserActivityInfo && SYIsLinkableUserActivity(inputUserActivityInfo))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__SYBacklinkMonitorOperation__searchBacklinksForInputUserActivity__block_invoke;
    v10[3] = &unk_27856BD18;
    v10[5] = v6;
    v10[4] = self;
    [SYItemIndexingManager fetchIdentifiersLinkedToUserActivity:v5 completion:v10];
  }

  else
  {
    v7 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"not linkable";
      if (!v5)
      {
        v8 = @"nil";
      }

      *buf = 134218242;
      selfCopy = self;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "BacklinkOperation %p: Skipping query, input activity is %@.", buf, 0x16u);
    }

    [(SYBacklinkMonitorOperation *)self _showOrHideBacklinkIndicatorForDomainIdentifiers:0 linkedIdentifiers:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __66__SYBacklinkMonitorOperation__searchBacklinksForInputUserActivity__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = [*(a1 + 32) _testingForcedFoundLinkedIdentifiers];

  v13 = v11;
  v14 = v10;
  if (v12)
  {
    v14 = [*(a1 + 32) _testingForcedFoundDomainIdentifiers];

    v13 = [*(a1 + 32) _testingForcedFoundLinkedIdentifiers];
  }

  v15 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 134218496;
    v25 = v16;
    v26 = 2048;
    v27 = [v13 count];
    v28 = 2048;
    v29 = (v8 - v9) * 1000.0;
    _os_log_impl(&dword_225901000, v15, OS_LOG_TYPE_DEFAULT, "BacklinkOperation %p: Found %ld item(s) linked to current activity. Query duration: %0.0f ms.", buf, 0x20u);
  }

  v17 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SYBacklinkMonitorOperation__searchBacklinksForInputUserActivity__block_invoke_30;
  block[3] = &unk_27856B578;
  block[4] = *(a1 + 32);
  v22 = v14;
  v23 = v13;
  v18 = v13;
  v19 = v14;
  dispatch_async(v17, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_showOrHideBacklinkIndicatorForDomainIdentifiers:(id)identifiers linkedIdentifiers:(id)linkedIdentifiers
{
  identifiersCopy = identifiers;
  linkedIdentifiersCopy = linkedIdentifiers;
  processingQueue = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(processingQueue);

  [(SYBacklinkMonitorOperation *)self _setOperationState:2];
  _testingForcedFoundLinkedIdentifiers = [(SYBacklinkMonitorOperation *)self _testingForcedFoundLinkedIdentifiers];

  if (_testingForcedFoundLinkedIdentifiers)
  {
    v10 = dispatch_time(0, 100000000);
    processingQueue2 = [(SYBacklinkMonitorOperation *)self processingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__SYBacklinkMonitorOperation__showOrHideBacklinkIndicatorForDomainIdentifiers_linkedIdentifiers___block_invoke;
    block[3] = &unk_27856B880;
    block[4] = self;
    dispatch_after(v10, processingQueue2, block);
  }

  else
  {
    v12 = linkedIdentifiersCopy;
    v13 = identifiersCopy;
    v14 = v13;
    if (!v12)
    {

      v12 = MEMORY[0x277CBEBF8];
      v14 = MEMORY[0x277CBEBF8];
    }

    v15 = [[SYShowBacklinkIndicatorCommand alloc] initWithDomainIdentifiers:v14 linkIdentifiers:v12];
    [(SYBacklinkMonitorOperation *)self set_indicatorCommand:v15];

    _indicatorCommand = [(SYBacklinkMonitorOperation *)self _indicatorCommand];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__SYBacklinkMonitorOperation__showOrHideBacklinkIndicatorForDomainIdentifiers_linkedIdentifiers___block_invoke_2;
    v17[3] = &unk_27856B880;
    v17[4] = self;
    [_indicatorCommand runWithCompletion:v17];
  }
}

void __97__SYBacklinkMonitorOperation__showOrHideBacklinkIndicatorForDomainIdentifiers_linkedIdentifiers___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SYBacklinkMonitorOperation__showOrHideBacklinkIndicatorForDomainIdentifiers_linkedIdentifiers___block_invoke_3;
  block[3] = &unk_27856B880;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)_finishProcessingAndNotify
{
  v9 = *MEMORY[0x277D85DE8];
  processingQueue = [(SYBacklinkMonitorOperation *)self processingQueue];
  dispatch_assert_queue_V2(processingQueue);

  [(SYBacklinkMonitorOperation *)self _setOperationState:3];
  v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "BacklinkOperation %p: Finished, notifying delegate.", &v7, 0xCu);
  }

  delegate = [(SYBacklinkMonitorOperation *)self delegate];
  [delegate backlinkMonitorOperationDidFinish:self];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setOperationState:(int64_t)state
{
  operationState = self->__operationState;
  if (operationState > 1)
  {
    if (operationState == 2)
    {
      if (state != 3)
      {
        v8 = @"PreparingResults";
        goto LABEL_15;
      }
    }

    else if (operationState == 3)
    {
      v8 = @"Finished";
LABEL_15:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = currentHandler;
      if (state > 3)
      {
        v11 = &stru_2838DFF18;
      }

      else
      {
        v11 = off_27856BD88[state];
      }

      [currentHandler handleFailureInMethod:a2 object:self file:@"SYBacklinkMonitorOperation.m" lineNumber:205 description:{@"Invalid state transition %@ -> %@ for backlink monitor operation %@", v8, v11, self}];
    }
  }

  else
  {
    if (operationState)
    {
      if (operationState != 1 || (state & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        goto LABEL_19;
      }

      v8 = @"SearchingBacklinks";
      goto LABEL_15;
    }

    if ((state & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v8 = @"Initial";
      goto LABEL_15;
    }
  }

LABEL_19:
  self->__operationState = state;
  _testingDelegate = [(SYBacklinkMonitorOperation *)self _testingDelegate];
  [_testingDelegate backlinkMonitorOperationDidChangeState:self];
}

- (SYBacklinkMonitorOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SYBacklinkMonitorOperationDelegate_Testing)_testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__testingDelegate);

  return WeakRetained;
}

@end