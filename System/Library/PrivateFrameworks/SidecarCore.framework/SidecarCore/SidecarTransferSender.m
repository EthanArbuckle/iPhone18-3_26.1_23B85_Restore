@interface SidecarTransferSender
- (SidecarTransferSender)initWithSession:(id)a3 requestID:(int64_t)a4 transferID:(int64_t)a5;
- (void)_sendCompletion:(id)a3;
- (void)sendItems:(id)a3 messageType:(int64_t)a4;
@end

@implementation SidecarTransferSender

- (void)_sendCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v6 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v6)
    {
      log = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      v6 = log;
      if (v8)
      {
        v9 = [v4 domain];
        v10 = [v4 code];
        v11 = [v4 localizedDescription];
        *buf = 138543875;
        v14 = v9;
        v15 = 2048;
        v16 = v10;
        v17 = 2113;
        v18 = v11;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v6 = log;
      }
    }

    goto LABEL_6;
  }

  if (!SidecarTransferSenderSliceData(self))
  {
LABEL_6:
    v5 = [(SidecarTransfer *)self delegate];
    [v5 sidecarTransfer:self didComplete:v4];
    goto LABEL_7;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  SidecarTransferSenderSetMessageData(self, v5);
  SidecarTransferSendMessage(self, v5);
LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendItems:(id)a3 messageType:(int64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SidecarTransferSender_sendItems_messageType___block_invoke;
  v9[3] = &unk_279BC2F80;
  v9[4] = self;
  v7 = v6;
  v10 = v7;
  v11 = a4;
  SidecarTransferLocked(self, v9);
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  SidecarMessageSetItemMetaData(v8, v7);
  if (SidecarTransferSenderSliceData(self))
  {
    SidecarTransferSenderSetMessageData(self, v8);
  }

  SidecarTransferSendMessage(self, v8);
}

void __47__SidecarTransferSender_sendItems_messageType___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 56) != -1)
  {
    __assert_rtn("[SidecarTransferSender sendItems:messageType:]_block_invoke", "SidecarTransfer.m", 437, "self->_itemID == -1");
  }

  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  *(*(a1 + 32) + 80) = *(a1 + 48);
}

- (SidecarTransferSender)initWithSession:(id)a3 requestID:(int64_t)a4 transferID:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = SidecarTransferSender;
  v5 = [(SidecarTransfer *)&v10 initWithSession:a3 requestID:a4 transferID:a5];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__SidecarTransferSender_initWithSession_requestID_transferID___block_invoke;
    v8[3] = &unk_279BC3670;
    v9 = v5;
    SidecarTransferLocked(v9, v8);
  }

  return v6;
}

@end