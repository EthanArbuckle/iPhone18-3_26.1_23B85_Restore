@interface RTIInputSystemSourceSession
- (RTIDataPayload)currentForwardingDataPayload;
- (RTIInputSystemPayloadDelegate)forwardingPayloadDelegate;
- (RTIInputSystemPayloadDelegate)payloadDelegate;
- (RTIInputSystemSourceSession)init;
- (id)sessionIndependentPayloadDelegate;
- (void)addSessionDelegate:(id)a3;
- (void)flushOperations;
- (void)handleForwardingResponseActionPayload:(id)a3;
- (void)handleTextActionPayload:(id)a3;
- (void)notifySessionDelegateDidBegin:(id)a3;
- (void)setSessionDelegate:(id)a3;
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
  v3 = [(RTIInputSystemSession *)self textOperations];

  if (v3)
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
        v9 = [(RTIInputSystemSession *)self textOperations];
        [(RTIInputSystemDataPayload *)v8 setTextOperations:v9];

        v10 = objc_loadWeakRetained(&self->_payloadDelegate);
        [v10 handleTextActionPayload:v8];
      }
    }

    v11 = [(RTIInputSystemSession *)self textOperations];
    v12 = [(RTIInputSystemSession *)self documentState];
    [(RTIInputSystemSession *)self _applyLocalTextOperations:v11 toDocumentState:v12];

    [(RTIInputSystemSession *)self setTextOperations:0];
  }
}

- (void)notifySessionDelegateDidBegin:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(RTIInputSystemSession *)self beginOptions];
    [v5 inputSessionDidBegin:self options:v4];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 inputSessionDidBegin:self];
  }
}

- (void)setSessionDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = RTIInputSystemSourceSession;
  v4 = a3;
  [(RTIInputSystemSession *)&v5 setSessionDelegate:v4];
  [(RTIInputSystemSourceSession *)self notifySessionDelegateDidBegin:v4, v5.receiver, v5.super_class];
}

- (void)addSessionDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = RTIInputSystemSourceSession;
  v4 = a3;
  [(RTIInputSystemSession *)&v5 addSessionDelegate:v4];
  [(RTIInputSystemSourceSession *)self notifySessionDelegateDidBegin:v4, v5.receiver, v5.super_class];
}

- (RTIDataPayload)currentForwardingDataPayload
{
  v3 = [RTIInputSystemDataPayload payloadWithData:0 version:[(RTIInputSystemSourceSession *)self payloadVersion]];
  v4 = [(RTIInputSystemSession *)self documentTraits];
  [v3 setDocumentTraits:v4];

  v5 = [(RTIInputSystemSession *)self documentState];
  [v3 setDocumentState:v5];

  v6 = [(RTIInputSystemSession *)self _textOperations];
  [v3 setTextOperations:v6];

  v7 = [(RTIInputSystemSession *)self uuid];
  [v3 setSessionUUID:v7];

  [v3 updateData];

  return v3;
}

- (void)handleForwardingResponseActionPayload:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_payloadDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_payloadDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_payloadDelegate);
      [v8 handleTextActionPayload:v16];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v16;
  }

  else
  {
    v10 = [v16 data];
    v9 = +[RTIInputSystemDataPayload payloadWithData:version:](RTIInputSystemDataPayload, "payloadWithData:version:", v10, [v16 version]);
  }

  payloadVersion = self->_payloadVersion;
  v12 = [v16 version];
  if (payloadVersion >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = payloadVersion;
  }

  self->_payloadVersion = v13;
  v14 = [v9 textOperations];
  v15 = [(RTIInputSystemSession *)self documentState];
  [(RTIInputSystemSession *)self _applyLocalTextOperations:v14 toDocumentState:v15];
}

- (void)handleTextActionPayload:(id)a3
{
  v4 = a3;
  v5 = [(RTIInputSystemSourceSession *)self forwardingPayloadDelegate];

  if (v5)
  {
    v6 = [(RTIInputSystemSourceSession *)self forwardingPayloadDelegate];
    [v6 handleTextActionPayload:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 copy];
  }

  else
  {
    v8 = [v4 data];
    v7 = +[RTIInputSystemDataPayload payloadWithData:version:](RTIInputSystemDataPayload, "payloadWithData:version:", v8, [v4 version]);
  }

  payloadVersion = self->_payloadVersion;
  v10 = [v4 version];
  if (payloadVersion >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = payloadVersion;
  }

  self->_payloadVersion = v11;
  if ([v7 version] == 1)
  {
    v12 = [v7 sessionUUID];

    if (v12)
    {
      v13 = [v7 sessionUUID];
      [(RTIInputSystemSession *)self setUuid:v13];
    }

    v14 = [v7 data];

    if (!v14)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke;
      v29[3] = &unk_1E7513FA8;
      v29[4] = self;
      [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v29];
    }

    v15 = [v7 documentTraits];

    if (v15)
    {
      v16 = [v7 documentTraits];
      v17 = [v16 copy];
      [(RTIInputSystemSession *)self setDocumentTraits:v17];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __55__RTIInputSystemSourceSession_handleTextActionPayload___block_invoke_2;
      v28[3] = &unk_1E7513FA8;
      v28[4] = self;
      [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v28];
    }

    v18 = [v7 documentState];

    if (v18)
    {
      v19 = [(RTIInputSystemSession *)self documentState];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = objc_alloc_init(RTIDocumentState);
      }

      v22 = v21;

      v27 = 0;
      v23 = [v7 documentState];
      v24 = [v23 copy];
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