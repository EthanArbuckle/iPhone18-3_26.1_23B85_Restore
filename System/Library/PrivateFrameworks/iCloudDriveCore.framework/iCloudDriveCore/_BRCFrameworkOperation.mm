@interface _BRCFrameworkOperation
- (void)finishWithResult:(id)result error:(id)error;
- (void)invalidate;
- (void)setRemoteClientProxy:(id)proxy;
- (void)start;
@end

@implementation _BRCFrameworkOperation

- (void)setRemoteClientProxy:(id)proxy
{
  proxyCopy = proxy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___BRCFrameworkOperation_setRemoteClientProxy___block_invoke;
  v8[3] = &unk_2784FF540;
  v8[4] = selfCopy;
  v6 = [proxyCopy remoteObjectProxyWithErrorHandler:v8];
  remoteClientProxy = selfCopy->_remoteClientProxy;
  selfCopy->_remoteClientProxy = v6;

  [(BROperationClient *)selfCopy->_remoteClientProxy setRemoteOperationProxy:selfCopy userInfo:0];
  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  if (!self->_startedFinish)
  {
    [(_BRCOperation *)self cancel];
  }

  [(_BRCFrameworkOperation *)self setRemoteClientProxy:0];
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _remoteClientProxy || _ignoreMissingRemoteClientProxy%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  self->_startedFinish = 1;
  v5.receiver = self;
  v5.super_class = _BRCFrameworkOperation;
  [(_BRCOperation *)&v5 finishWithResult:result error:error];
  [(_BRCFrameworkOperation *)self setRemoteClientProxy:0];
}

@end