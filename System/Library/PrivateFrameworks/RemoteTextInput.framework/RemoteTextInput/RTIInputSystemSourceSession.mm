@interface RTIInputSystemSourceSession
- (RTIDataPayload)currentForwardingDataPayload;
- (RTIInputSystemPayloadDelegate)forwardingPayloadDelegate;
- (RTIInputSystemPayloadDelegate)payloadDelegate;
- (RTIInputSystemSourceSession)init;
- (id)sessionIndependentPayloadDelegate;
- (void)addSessionDelegate:(id)delegate;
- (void)flushOperations;
- (void)handleForwardingResponseActionPayload:(id)payload;
- (void)handleTextActionPayload:(id)payload;
- (void)notifySessionDelegateDidBegin:(id)begin;
- (void)setSessionDelegate:(id)delegate;
@end

@implementation RTIInputSystemSourceSession

- (RTIInputSystemSourceSession)init
{
  v3.receiver = self;
  v3.super_class = RTIInputSystemSourceSession;
  result = [(RTIInputSystemSourceSession *)&v3 init];
  if (result)
  {
    result->_payloadVersion = 1;
  }

  return result;
}

- (void)flushOperations
{
  textOperations = [(RTIInputSystemSession *)self textOperations];

  if (textOperations)
  {
    WeakRetained = objc_loadWeakRetained(&self->_payloadDelegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained(&self->_payloadDelegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_alloc_init(RTIInputSystemDataPayload);
        textOperations2 = [(RTIInputSystemSession *)self textOperations];
        [(RTIInputSystemDataPayload *)v8 setTextOperations:textOperations2];

        v10 = objc_loadWeakRetained(&self->_payloadDelegate);
        [v10 handleTextActionPayload:v8];
      }
    }

    textOperations3 = [(RTIInputSystemSession *)self textOperations];
    documentState = [(RTIInputSystemSession *)self documentState];
    [(RTIInputSystemSession *)self _applyLocalTextOperations:textOperations3 toDocumentState:documentState];

    [(RTIInputSystemSession *)self setTextOperations:0];
  }
}

- (void)notifySessionDelegateDidBegin:(id)begin
{
  beginCopy = begin;
  if (objc_opt_respondsToSelector())
  {
    beginOptions = [(RTIInputSystemSession *)self beginOptions];
    [beginCopy inputSessionDidBegin:self options:beginOptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    [beginCopy inputSessionDidBegin:self];
  }
}

- (void)setSessionDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = RTIInputSystemSourceSession;
  delegateCopy = delegate;
  [(RTIInputSystemSession *)&v5 setSessionDelegate:delegateCopy];
  [(RTIInputSystemSourceSession *)self notifySessionDelegateDidBegin:delegateCopy, v5.receiver, v5.super_class];
}

- (void)addSessionDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = RTIInputSystemSourceSession;
  delegateCopy = delegate;
  [(RTIInputSystemSession *)&v5 addSessionDelegate:delegateCopy];
  [(RTIInputSystemSourceSession *)self notifySessionDelegateDidBegin:delegateCopy, v5.receiver, v5.super_class];
}

- (RTIDataPayload)currentForwardingDataPayload
{
  v3 = [RTIInputSystemDataPayload payloadWithData:0 version:[(RTIInputSystemSourceSession *)self payloadVersion]];
  documentTraits = [(RTIInputSystemSession *)self documentTraits];
  [v3 setDocumentTraits:documentTraits];

  documentState = [(RTIInputSystemSession *)self documentState];
  [v3 setDocumentState:documentState];

  _textOperations = [(RTIInputSystemSession *)self _textOperations];
  [v3 setTextOperations:_textOperations];

  uuid = [(RTIInputSystemSession *)self uuid];
  [v3 setSessionUUID:uuid];

  [v3 updateData];

  return v3;
}

- (void)handleForwardingResponseActionPayload:(id)payload
{
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_payloadDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_payloadDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_payloadDelegate);
      [v8 handleTextActionPayload:payloadCopy];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = payloadCopy;
  }

  else
  {
    data = [payloadCopy data];
    v9 = +[RTIInputSystemDataPayload payloadWithData:version:](RTIInputSystemDataPayload, "payloadWithData:version:", data, [payloadCopy version]);
  }

  payloadVersion = self->_payloadVersion;
  version = [payloadCopy version];
  if (payloadVersion >= version)
  {
    v13 = version;
  }

  else
  {
    v13 = payloadVersion;
  }

  self->_payloadVersion = v13;
  textOperations = [v9 textOperations];
  documentState = [(RTIInputSystemSession *)self documentState];
  [(RTIInputSystemSession *)self _applyLocalTextOperations:textOperations toDocumentState:documentState];
}

- (void)handleTextActionPayload:(id)payload
{
  payloadCopy = payload;
  forwardingPayloadDelegate = [(RTIInputSystemSourceSession *)self forwardingPayloadDelegate];

  if (forwardingPayloadDelegate)
  {
    forwardingPayloadDelegate2 = [(RTIInputSystemSourceSession *)self forwardingPayloadDelegate];
    [forwardingPayloadDelegate2 handleTextActionPayload:payloadCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [payloadCopy copy];
  }

  else
  {
    data = [payloadCopy data];
    v7 = +[RTIInputSystemDataPayload payloadWithData:version:](RTIInputSystemDataPayload, "payloadWithData:version:", data, [payloadCopy version]);
  }

  payloadVersion = self->_payloadVersion;
  version = [payloadCopy version];
  if (payloadVersion >= version)
  {
    v11 = version;
  }

  else
  {
    v11 = payloadVersion;
  }

  self->_payloadVersion = v11;
  if ([v7 version] == 1)
  {
    sessionUUID = [v7 sessionUUID];

    if (sessionUUID)
    {
      sessionUUID2 = [v7 sessionUUID];
      [(RTIInputSystemSession *)self setUuid:sessionUUID2];
    }

    data2 = [v7 data];

    if (!data2)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke;
      v29[3] = &unk_1E7513FA8;
      v29[4] = self;
      [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v29];
    }

    documentTraits = [v7 documentTraits];

    if (documentTraits)
    {
      documentTraits2 = [v7 documentTraits];
      v17 = [documentTraits2 copy];
      [(RTIInputSystemSession *)self setDocumentTraits:v17];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke_2;
      v28[3] = &unk_1E7513FA8;
      v28[4] = self;
      [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v28];
    }

    documentState = [v7 documentState];

    if (documentState)
    {
      documentState2 = [(RTIInputSystemSession *)self documentState];
      v20 = documentState2;
      if (documentState2)
      {
        v21 = documentState2;
      }

      else
      {
        v21 = objc_alloc_init(RTIDocumentState);
      }

      v22 = v21;

      v27 = 0;
      documentState3 = [v7 documentState];
      v24 = [documentState3 copy];
      v25 = [(RTIDocumentState *)v22 documentStateByMergingInDocumentState:v24 mergeResultOut:&v27];
      [(RTIInputSystemSession *)self setDocumentState:v25];

      if (v27)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke_3;
        v26[3] = &unk_1E7513FD0;
        v26[4] = self;
        v26[5] = v27;
        [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v26];
      }
    }
  }
}

void __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidEnd:*(a1 + 32) options:0];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidEnd:*(a1 + 32)];
  }
}

void __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 documentTraits];
    [v5 inputSession:v3 documentTraitsDidChange:v4];
  }
}

void __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 documentState];
    [v6 inputSession:v3 documentStateDidChange:v4 withMergeResult:*(a1 + 40)];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 32);
    v4 = [v5 documentState];
    [v6 inputSession:v5 documentStateDidChange:v4];
  }

LABEL_6:
}

- (id)sessionIndependentPayloadDelegate
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = RTILogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[RTIInputSystemSourceSession sessionIndependentPayloadDelegate]";
    _os_log_impl(&dword_19A2A6000, v2, OS_LOG_TYPE_DEFAULT, "%s  WARNING: -sessionIndependentPayloadDelegate is not implemented for this sourceSession", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (RTIInputSystemPayloadDelegate)forwardingPayloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingPayloadDelegate);

  return WeakRetained;
}

- (RTIInputSystemPayloadDelegate)payloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_payloadDelegate);

  return WeakRetained;
}

@end