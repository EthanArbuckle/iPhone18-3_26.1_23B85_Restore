@interface _BRCFrameworkOperation
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)setRemoteClientProxy:(id)a3;
- (void)start;
@end

@implementation _BRCFrameworkOperation

- (void)setRemoteClientProxy:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___BRCFrameworkOperation_setRemoteClientProxy___block_invoke;
  v8[3] = &unk_2784FF540;
  v8[4] = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v8];
  remoteClientProxy = v5->_remoteClientProxy;
  v5->_remoteClientProxy = v6;

  [(BROperationClient *)v5->_remoteClientProxy setRemoteOperationProxy:v5 userInfo:0];
  objc_sync_exit(v5);
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  self->_startedFinish = 1;
  v5.receiver = self;
  v5.super_class = _BRCFrameworkOperation;
  [(_BRCOperation *)&v5 finishWithResult:a3 error:a4];
  [(_BRCFrameworkOperation *)self setRemoteClientProxy:0];
}

@end