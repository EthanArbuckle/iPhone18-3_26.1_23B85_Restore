@interface SidecarTransfer
- (SidecarTransfer)initWithSession:(id)session requestID:(int64_t)d transferID:(int64_t)iD;
- (SidecarTransferDelegate)delegate;
- (id)_resumeMessage:(id)message;
@end

@implementation SidecarTransfer

- (SidecarTransferDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_resumeMessage:(id)message
{
  result = message;
  __break(1u);
  return result;
}

- (SidecarTransfer)initWithSession:(id)session requestID:(int64_t)d transferID:(int64_t)iD
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = SidecarTransfer;
  v9 = [(SidecarTransfer *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SidecarTransfer_initWithSession_requestID_transferID___block_invoke;
    v12[3] = &unk_279BC3318;
    v13 = v9;
    dCopy = d;
    v14 = sessionCopy;
    iDCopy = iD;
    SidecarTransferLocked(v13, v12);
  }

  return v10;
}

void __56__SidecarTransfer_initWithSession_requestID_transferID___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 48);
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  *(*(a1 + 32) + 48) = *(a1 + 56);
}

@end