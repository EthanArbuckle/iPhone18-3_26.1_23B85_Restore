@interface RTIInputSystemSession
- (RTIInputSystemSessionDelegate)sessionDelegate;
- (RTITextOperations)textOperations;
- (id)documentStateAfterModifyAndFlushTextOperations:(id)operations;
- (id)documentStateAfterModifyAndFlushTextOperations:(id)operations resultHandler:(id)handler;
- (void)_applyLocalTextOperations:(id)operations toDocumentState:(id)state;
- (void)_createTextOperationsIfNecessary;
- (void)addSessionDelegate:(id)delegate;
- (void)beginOptionsSafeAccess:(id)access;
- (void)documentStateSafeAccess:(id)access;
- (void)documentTraitsSafeAccess:(id)access;
- (void)enumerateSessionDelegatesUsingBlock:(id)block;
- (void)modifyAndFlushTextOperations:(id)operations;
- (void)modifyAndFlushTextOperations:(id)operations resultHandler:(id)handler;
- (void)textOperationsSafeAccess:(id)access;
- (void)uuidSafeAccess:(id)access;
@end

@implementation RTIInputSystemSession

- (RTIInputSystemSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (void)uuidSafeAccess:(id)access
{
  accessCopy = access;
  uuid = [(RTIInputSystemSession *)self uuid];
  (*(access + 2))(accessCopy, uuid);
}

- (void)beginOptionsSafeAccess:(id)access
{
  accessCopy = access;
  beginOptions = [(RTIInputSystemSession *)self beginOptions];
  (*(access + 2))(accessCopy, beginOptions);
}

- (void)documentTraitsSafeAccess:(id)access
{
  accessCopy = access;
  documentTraits = [(RTIInputSystemSession *)self documentTraits];
  (*(access + 2))(accessCopy, documentTraits);
}

- (void)documentStateSafeAccess:(id)access
{
  accessCopy = access;
  documentState = [(RTIInputSystemSession *)self documentState];
  (*(access + 2))(accessCopy, documentState);
}

- (void)textOperationsSafeAccess:(id)access
{
  accessCopy = access;
  textOperations = [(RTIInputSystemSession *)self textOperations];
  (*(access + 2))(accessCopy, textOperations);
}

- (void)_createTextOperationsIfNecessary
{
  if (!self->_textOperations)
  {
    v4 = [RTITextOperations alloc];
    uuid = [(RTIInputSystemSession *)self uuid];
    v5 = [(RTITextOperations *)v4 initWithTargetSessionUUID:uuid];
    textOperations = self->_textOperations;
    self->_textOperations = v5;
  }
}

- (RTITextOperations)textOperations
{
  [(RTIInputSystemSession *)self _createTextOperationsIfNecessary];
  textOperations = self->_textOperations;

  return textOperations;
}

- (id)documentStateAfterModifyAndFlushTextOperations:(id)operations
{
  if (operations)
  {
    operationsCopy = operations;
    textOperations = [(RTIInputSystemSession *)self textOperations];
    (*(operations + 2))(operationsCopy, textOperations);
  }

  [(RTIInputSystemSession *)self flushOperations];
  documentState = [(RTIInputSystemSession *)self documentState];
  v8 = [documentState copy];

  return v8;
}

- (void)modifyAndFlushTextOperations:(id)operations
{
  if (operations)
  {
    operationsCopy = operations;
    textOperations = [(RTIInputSystemSession *)self textOperations];
    (*(operations + 2))(operationsCopy, textOperations);
  }

  [(RTIInputSystemSession *)self flushOperations];
}

- (id)documentStateAfterModifyAndFlushTextOperations:(id)operations resultHandler:(id)handler
{
  operationsCopy = operations;
  handlerCopy = handler;
  if (operationsCopy)
  {
    textOperations = [(RTIInputSystemSession *)self textOperations];
    operationsCopy[2](operationsCopy, textOperations);
  }

  [(RTIInputSystemSession *)self flushOperations];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 255);
  }

  documentState = [(RTIInputSystemSession *)self documentState];
  v10 = [documentState copy];

  return v10;
}

- (void)modifyAndFlushTextOperations:(id)operations resultHandler:(id)handler
{
  operationsCopy = operations;
  handlerCopy = handler;
  if (operationsCopy)
  {
    textOperations = [(RTIInputSystemSession *)self textOperations];
    operationsCopy[2](operationsCopy, textOperations);
  }

  [(RTIInputSystemSession *)self flushOperations];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 255);
  }
}

- (void)_applyLocalTextOperations:(id)operations toDocumentState:(id)state
{
  operationsCopy = operations;
  stateCopy = state;
  textCheckingAnnotatedString = [stateCopy textCheckingAnnotatedString];

  if (textCheckingAnnotatedString)
  {
    textCheckingAnnotatedString2 = [stateCopy textCheckingAnnotatedString];
    string = [textCheckingAnnotatedString2 string];
    documentState = [stateCopy documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    LODWORD(textCheckingAnnotatedString) = [string isEqualToString:contextBeforeInput];
  }

  textToAssert = [operationsCopy textToAssert];

  if (textToAssert)
  {
    v12 = objc_alloc(MEMORY[0x1E69D9590]);
    textToAssert2 = [operationsCopy textToAssert];
    v14 = [v12 initWithContextBefore:textToAssert2 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    [stateCopy setDocumentState:v14];
  }

  if ([operationsCopy selectionRangeToAssert] != 0x7FFFFFFFFFFFFFFFLL)
  {
    selectionRangeToAssert = [operationsCopy selectionRangeToAssert];
    [stateCopy setSelectedTextRange:{selectionRangeToAssert, v16}];
  }

  keyboardOutput = [operationsCopy keyboardOutput];
  unmarkIfNecessary = [keyboardOutput unmarkIfNecessary];
  textToCommit = [keyboardOutput textToCommit];
  acceptedCandidate = [keyboardOutput acceptedCandidate];
  input = [acceptedCandidate input];
  v22 = [input length];

  if (v22)
  {
    documentState2 = [stateCopy documentState];
    input2 = [acceptedCandidate input];
    candidate = [acceptedCandidate candidate];
    v26 = [documentState2 documentStateAfterReplacingText:input2 withText:candidate];
    [stateCopy setDocumentState:v26];
  }

  else
  {
    if (!acceptedCandidate)
    {
      goto LABEL_12;
    }

    documentState2 = [stateCopy documentState];
    input2 = [acceptedCandidate candidate];
    candidate = [documentState2 documentStateAfterInsertingText:input2];
    [stateCopy setDocumentState:candidate];
  }

LABEL_12:
  if (textToCommit)
  {
    documentState3 = [stateCopy documentState];
    v28 = [documentState3 documentStateAfterSettingMarkedText:textToCommit selectedRange:{objc_msgSend(textToCommit, "length"), 0}];
    [stateCopy setDocumentState:v28];

LABEL_15:
    documentState4 = [stateCopy documentState];
    documentStateAfterUnmarkingText = [documentState4 documentStateAfterUnmarkingText];
    [stateCopy setDocumentState:documentStateAfterUnmarkingText];

    goto LABEL_16;
  }

  if (unmarkIfNecessary)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ([keyboardOutput forwardDeletionCount] && objc_msgSend(keyboardOutput, "forwardDeletionCount"))
  {
    v31 = 0;
    do
    {
      documentState5 = [stateCopy documentState];
      documentStateAfterDeletingForward = [documentState5 documentStateAfterDeletingForward];
      [stateCopy setDocumentState:documentStateAfterDeletingForward];

      ++v31;
    }

    while (v31 < [keyboardOutput forwardDeletionCount]);
  }

  insertionTextAfterSelection = [keyboardOutput insertionTextAfterSelection];

  if (insertionTextAfterSelection)
  {
    documentState6 = [stateCopy documentState];
    insertionTextAfterSelection2 = [keyboardOutput insertionTextAfterSelection];
    v37 = [documentState6 documentStateAfterInsertingTextAfterSelection:insertionTextAfterSelection2];
    [stateCopy setDocumentState:v37];
  }

  if ([keyboardOutput deletionCount] && objc_msgSend(keyboardOutput, "deletionCount"))
  {
    v38 = 0;
    do
    {
      documentState7 = [stateCopy documentState];
      documentStateAfterDeletingBackward = [documentState7 documentStateAfterDeletingBackward];
      [stateCopy setDocumentState:documentStateAfterDeletingBackward];

      ++v38;
    }

    while (v38 < [keyboardOutput deletionCount]);
  }

  insertionText = [keyboardOutput insertionText];
  v42 = [insertionText length];

  if (v42)
  {
    documentState8 = [stateCopy documentState];
    insertionText2 = [keyboardOutput insertionText];
    v45 = [documentState8 documentStateAfterInsertingText:insertionText2];
    [stateCopy setDocumentState:v45];
  }

  intermediateText = [operationsCopy intermediateText];

  if (intermediateText)
  {
    intermediateText2 = [operationsCopy intermediateText];
    documentState9 = [stateCopy documentState];
    displayString = [intermediateText2 displayString];
    selectedRange = [intermediateText2 selectedRange];
    v52 = [documentState9 documentStateAfterSettingMarkedText:displayString selectedRange:{selectedRange, v51}];
    [stateCopy setDocumentState:v52];
  }

  if (textCheckingAnnotatedString)
  {
    v53 = objc_alloc(MEMORY[0x1E696AAB0]);
    documentState10 = [stateCopy documentState];
    contextBeforeInput2 = [documentState10 contextBeforeInput];
    v56 = [v53 initWithString:contextBeforeInput2 attributes:&unk_1F0DA38A8];
    [stateCopy setTextCheckingAnnotatedString:v56];
  }
}

- (void)addSessionDelegate:(id)delegate
{
  delegateCopy = delegate;
  extraSessionDelegates = self->_extraSessionDelegates;
  v8 = delegateCopy;
  if (!extraSessionDelegates)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_extraSessionDelegates;
    self->_extraSessionDelegates = weakObjectsHashTable;

    delegateCopy = v8;
    extraSessionDelegates = self->_extraSessionDelegates;
  }

  [(NSHashTable *)extraSessionDelegates addObject:delegateCopy];
}

- (void)enumerateSessionDelegatesUsingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    sessionDelegate = [(RTIInputSystemSession *)self sessionDelegate];

    if (sessionDelegate)
    {
      sessionDelegate2 = [(RTIInputSystemSession *)self sessionDelegate];
      blockCopy[2](blockCopy, sessionDelegate2);
    }

    v7 = [(NSHashTable *)self->_extraSessionDelegates copy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * v12++));
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end