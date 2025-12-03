@interface SidecarTransferSender
- (SidecarTransferSender)initWithSession:(id)session requestID:(int64_t)d transferID:(int64_t)iD;
- (void)_sendCompletion:(id)completion;
- (void)sendItems:(id)items messageType:(int64_t)type;
@end

@implementation SidecarTransferSender

- (void)_sendCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v6)
    {
      log = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      v6 = log;
      if (v8)
      {
        domain = [completionCopy domain];
        code = [completionCopy code];
        localizedDescription = [completionCopy localizedDescription];
        *buf = 138543875;
        v14 = domain;
        v15 = 2048;
        v16 = code;
        v17 = 2113;
        v18 = localizedDescription;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v6 = log;
      }
    }

    goto LABEL_6;
  }

  if (!SidecarTransferSenderSliceData(self))
  {
LABEL_6:
    delegate = [(SidecarTransfer *)self delegate];
    [delegate sidecarTransfer:self didComplete:completionCopy];
    goto LABEL_7;
  }

  delegate = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  SidecarTransferSenderSetMessageData(self, delegate);
  SidecarTransferSendMessage(self, delegate);
LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendItems:(id)items messageType:(int64_t)type
{
  itemsCopy = items;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SidecarTransferSender_sendItems_messageType___block_invoke;
  v9[3] = &unk_279BC2F80;
  v9[4] = self;
  v7 = itemsCopy;
  v10 = v7;
  typeCopy = type;
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

- (SidecarTransferSender)initWithSession:(id)session requestID:(int64_t)d transferID:(int64_t)iD
{
  v10.receiver = self;
  v10.super_class = SidecarTransferSender;
  v5 = [(SidecarTransfer *)&v10 initWithSession:session requestID:d transferID:iD];
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