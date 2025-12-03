@interface RPNearFieldPassiveClient
- (void)startDiscoveryWithApplicationLabels:(id)labels completion:(id)completion;
@end

@implementation RPNearFieldPassiveClient

- (void)startDiscoveryWithApplicationLabels:(id)labels completion:(id)completion
{
  labelsCopy = labels;
  completionCopy = completion;
  _ensureXPCStarted = [(RPNearFieldClient *)self _ensureXPCStarted];
  xpcCnx = [(RPNearFieldClient *)self xpcCnx];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__RPNearFieldPassiveClient_startDiscoveryWithApplicationLabels_completion___block_invoke;
  v17[3] = &unk_1E7C92DA8;
  v10 = completionCopy;
  v18 = v10;
  v11 = [xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__RPNearFieldPassiveClient_startDiscoveryWithApplicationLabels_completion___block_invoke_2;
  v14[3] = &unk_1E7C93470;
  v15 = labelsCopy;
  v16 = v10;
  v12 = v10;
  v13 = labelsCopy;
  [v11 startPassiveDiscoveryWithApplicationLabels:v13 completion:v14];
}

void __75__RPNearFieldPassiveClient_startDiscoveryWithApplicationLabels_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_RPNearFieldClient <= 90 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
  {
    __75__RPNearFieldPassiveClient_startDiscoveryWithApplicationLabels_completion___block_invoke_cold_1();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void __75__RPNearFieldPassiveClient_startDiscoveryWithApplicationLabels_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    if (gLogCategory_RPNearFieldClient <= 90 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
    {
      v5 = *(a1 + 32);
      LogPrintF();
    }
  }

  else if (gLogCategory_RPNearFieldClient <= 40 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
  {
    __75__RPNearFieldPassiveClient_startDiscoveryWithApplicationLabels_completion___block_invoke_2_cold_1(a1);
  }

  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v6);
  }
}

@end