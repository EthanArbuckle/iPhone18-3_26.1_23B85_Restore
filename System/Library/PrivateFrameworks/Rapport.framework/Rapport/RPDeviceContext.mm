@interface RPDeviceContext
- (void)invalidate;
- (void)pairVerify;
- (void)systemInfoResponse:(id)response error:(id)error;
@end

@implementation RPDeviceContext

- (void)invalidate
{
  discovery = self->_discovery;
  self->_discovery = 0;

  [(RPLegacySession *)self->_session invalidate];
  session = self->_session;
  self->_session = 0;
}

- (void)pairVerify
{
  [(RPLegacySession *)self->_session invalidate];
  v3 = objc_alloc_init(RPLegacySession);
  session = self->_session;
  self->_session = v3;

  [(RPLegacySession *)self->_session setPeerDevice:self->_device];
  [(RPLegacySession *)self->_session setSecurityFlags:3];
  [(RPLegacySession *)self->_session setServiceType:@"RPLegacyServiceTypeSystem"];
  v5 = self->_session;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__RPDeviceContext_pairVerify__block_invoke;
  v8[3] = &unk_1E7C92D58;
  v8[4] = self;
  [(RPLegacySession *)v5 activateWithCompletion:v8];
  v6 = self->_session;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__RPDeviceContext_pairVerify__block_invoke_2;
  v7[3] = &unk_1E7C92D58;
  v7[4] = self;
  [(RPLegacySession *)v6 pairVerifyWithFlags:8 completion:v7];
}

void __29__RPDeviceContext_pairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      __29__RPDeviceContext_pairVerify__block_invoke_cold_1();
    }

    [*(*(a1 + 32) + 32) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v3 = v6;
  }
}

void __29__RPDeviceContext_pairVerify__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    __29__RPDeviceContext_pairVerify__block_invoke_2_cold_1(a1);
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    [*(*(a1 + 32) + 16) setSystemPairState:30];
  }

LABEL_6:
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__RPDeviceContext_pairVerify__block_invoke_3;
  v6[3] = &unk_1E7C94A80;
  v6[4] = v4;
  [v5 requestSystemInfoWithCompletion:v6];
}

- (void)systemInfoResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (responseCopy)
  {
    [(RPDevice *)self->_device updateWithSystemInfo:?];
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPDeviceContext systemInfoResponse:? error:?];
    }

    self->_state = 4;
    [(RPLegacyDeviceDiscovery *)self->_discovery _foundDevice:self];
  }

  else
  {
    [RPDeviceContext systemInfoResponse:? error:?];
  }

  [(RPLegacySession *)self->_session invalidate];
  session = self->_session;
  self->_session = 0;
}

- (uint64_t)systemInfoResponse:(uint64_t)result error:.cold.2(uint64_t result)
{
  *(result + 12) = 3;
  if (gLogCategory_RPLegacySupport <= 60)
  {
    OUTLINED_FUNCTION_6();
    if (!v2 || (result = _LogCategory_Initialize(), result))
    {
      v3 = *(v1 + 16);
      return LogPrintF();
    }
  }

  return result;
}

@end