@interface RTIInputSystemSession
- (RTIInputSystemSessionDelegate)sessionDelegate;
- (RTITextOperations)textOperations;
- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3;
- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4;
- (void)_applyLocalTextOperations:(id)a3 toDocumentState:(id)a4;
- (void)_createTextOperationsIfNecessary;
- (void)addSessionDelegate:(id)a3;
- (void)beginOptionsSafeAccess:(id)a3;
- (void)documentStateSafeAccess:(id)a3;
- (void)documentTraitsSafeAccess:(id)a3;
- (void)enumerateSessionDelegatesUsingBlock:(id)a3;
- (void)modifyAndFlushTextOperations:(id)a3;
- (void)modifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4;
- (void)textOperationsSafeAccess:(id)a3;
- (void)uuidSafeAccess:(id)a3;
@end

@implementation RTIInputSystemSession

- (RTIInputSystemSessionDelegate)sessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);

  return WeakRetained;
}

- (void)uuidSafeAccess:(id)a3
{
  v5 = a3;
  v6 = [(RTIInputSystemSession *)self uuid];
  (*(a3 + 2))(v5, v6);
}

- (void)beginOptionsSafeAccess:(id)a3
{
  v5 = a3;
  v6 = [(RTIInputSystemSession *)self beginOptions];
  (*(a3 + 2))(v5, v6);
}

- (void)documentTraitsSafeAccess:(id)a3
{
  v5 = a3;
  v6 = [(RTIInputSystemSession *)self documentTraits];
  (*(a3 + 2))(v5, v6);
}

- (void)documentStateSafeAccess:(id)a3
{
  v5 = a3;
  v6 = [(RTIInputSystemSession *)self documentState];
  (*(a3 + 2))(v5, v6);
}

- (void)textOperationsSafeAccess:(id)a3
{
  v5 = a3;
  v6 = [(RTIInputSystemSession *)self textOperations];
  (*(a3 + 2))(v5, v6);
}

- (void)_createTextOperationsIfNecessary
{
  if (!self->_textOperations)
  {
    v4 = [RTITextOperations alloc];
    v7 = [(RTIInputSystemSession *)self uuid];
    v5 = [(RTITextOperations *)v4 initWithTargetSessionUUID:v7];
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

- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(RTIInputSystemSession *)self textOperations];
    (*(a3 + 2))(v5, v6);
  }

  [(RTIInputSystemSession *)self flushOperations];
  v7 = [(RTIInputSystemSession *)self documentState];
  v8 = [v7 copy];

  return v8;
}

- (void)modifyAndFlushTextOperations:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(RTIInputSystemSession *)self textOperations];
    (*(a3 + 2))(v5, v6);
  }

  [(RTIInputSystemSession *)self flushOperations];
}

- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(RTIInputSystemSession *)self textOperations];
    v6[2](v6, v8);
  }

  [(RTIInputSystemSession *)self flushOperations];
  if (v7)
  {
    v7[2](v7, 255);
  }

  v9 = [(RTIInputSystemSession *)self documentState];
  v10 = [v9 copy];

  return v10;
}

- (void)modifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [(RTIInputSystemSession *)self textOperations];
    v8[2](v8, v7);
  }

  [(RTIInputSystemSession *)self flushOperations];
  if (v6)
  {
    v6[2](v6, 255);
  }
}

- (void)_applyLocalTextOperations:(id)a3 toDocumentState:(id)a4
{
  v57 = a3;
  v5 = a4;
  v6 = [v5 textCheckingAnnotatedString];

  if (v6)
  {
    v7 = [v5 textCheckingAnnotatedString];
    v8 = [v7 string];
    v9 = [v5 documentState];
    v10 = [v9 contextBeforeInput];
    LODWORD(v6) = [v8 isEqualToString:v10];
  }

  v11 = [v57 textToAssert];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69D9590]);
    v13 = [v57 textToAssert];
    v14 = [v12 initWithContextBefore:v13 markedText:0 selectedText:0 contextAfter:0 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    [v5 setDocumentState:v14];
  }

  if ([v57 selectionRangeToAssert] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v57 selectionRangeToAssert];
    [v5 setSelectedTextRange:{v15, v16}];
  }

  v17 = [v57 keyboardOutput];
  v18 = [v17 unmarkIfNecessary];
  v19 = [v17 textToCommit];
  v20 = [v17 acceptedCandidate];
  v21 = [v20 input];
  v22 = [v21 length];

  if (v22)
  {
    v23 = [v5 documentState];
    v24 = [v20 input];
    v25 = [v20 candidate];
    v26 = [v23 documentStateAfterReplacingText:v24 withText:v25];
    [v5 setDocumentState:v26];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_12;
    }

    v23 = [v5 documentState];
    v24 = [v20 candidate];
    v25 = [v23 documentStateAfterInsertingText:v24];
    [v5 setDocumentState:v25];
  }

LABEL_12:
  if (v19)
  {
    v27 = [v5 documentState];
    v28 = [v27 documentStateAfterSettingMarkedText:v19 selectedRange:{objc_msgSend(v19, "length"), 0}];
    [v5 setDocumentState:v28];

LABEL_15:
    v29 = [v5 documentState];
    v30 = [v29 documentStateAfterUnmarkingText];
    [v5 setDocumentState:v30];

    goto LABEL_16;
  }

  if (v18)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ([v17 forwardDeletionCount] && objc_msgSend(v17, "forwardDeletionCount"))
  {
    v31 = 0;
    do
    {
      v32 = [v5 documentState];
      v33 = [v32 documentStateAfterDeletingForward];
      [v5 setDocumentState:v33];

      ++v31;
    }

    while (v31 < [v17 forwardDeletionCount]);
  }

  v34 = [v17 insertionTextAfterSelection];

  if (v34)
  {
    v35 = [v5 documentState];
    v36 = [v17 insertionTextAfterSelection];
    v37 = [v35 documentStateAfterInsertingTextAfterSelection:v36];
    [v5 setDocumentState:v37];
  }

  if ([v17 deletionCount] && objc_msgSend(v17, "deletionCount"))
  {
    v38 = 0;
    do
    {
      v39 = [v5 documentState];
      v40 = [v39 documentStateAfterDeletingBackward];
      [v5 setDocumentState:v40];

      ++v38;
    }

    while (v38 < [v17 deletionCount]);
  }

  v41 = [v17 insertionText];
  v42 = [v41 length];

  if (v42)
  {
    v43 = [v5 documentState];
    v44 = [v17 insertionText];
    v45 = [v43 documentStateAfterInsertingText:v44];
    [v5 setDocumentState:v45];
  }

  v46 = [v57 intermediateText];

  if (v46)
  {
    v47 = [v57 intermediateText];
    v48 = [v5 documentState];
    v49 = [v47 displayString];
    v50 = [v47 selectedRange];
    v52 = [v48 documentStateAfterSettingMarkedText:v49 selectedRange:{v50, v51}];
    [v5 setDocumentState:v52];
  }

  if (v6)
  {
    v53 = objc_alloc(MEMORY[0x1E696AAB0]);
    v54 = [v5 documentState];
    v55 = [v54 contextBeforeInput];
    v56 = [v53 initWithString:v55 attributes:&unk_1F0DA38A8];
    [v5 setTextCheckingAnnotatedString:v56];
  }
}

- (void)addSessionDelegate:(id)a3
{
  v4 = a3;
  extraSessionDelegates = self->_extraSessionDelegates;
  v8 = v4;
  if (!extraSessionDelegates)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_extraSessionDelegates;
    self->_extraSessionDelegates = v6;

    v4 = v8;
    extraSessionDelegates = self->_extraSessionDelegates;
  }

  [(NSHashTable *)extraSessionDelegates addObject:v4];
}

- (void)enumerateSessionDelegatesUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTIInputSystemSession *)self sessionDelegate];

    if (v5)
    {
      v6 = [(RTIInputSystemSession *)self sessionDelegate];
      v4[2](v4, v6);
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

          v4[2](v4, *(*(&v14 + 1) + 8 * v12++));
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