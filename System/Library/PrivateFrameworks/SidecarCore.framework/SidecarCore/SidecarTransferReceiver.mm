@interface SidecarTransferReceiver
- (SidecarTransferReceiver)initWithSession:(id)a3 requestID:(int64_t)a4;
- (void)handleMessage:(id)a3;
@end

@implementation SidecarTransferReceiver

- (void)handleMessage:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__64;
  v13 = __Block_byref_object_dispose__65;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SidecarTransferReceiver_handleMessage___block_invoke;
  v6[3] = &unk_279BC30C0;
  v8 = &v9;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  SidecarTransferLocked(self, v6);
  (*(v10[5] + 16))();

  _Block_object_dispose(&v9, 8);
}

uint64_t __41__SidecarTransferReceiver_handleMessage___block_invoke(uint64_t a1)
{
  v2 = SidecarTransferReceiverHandleMessage(*(a1 + 32), *(a1 + 40));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (SidecarTransferReceiver)initWithSession:(id)a3 requestID:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = SidecarTransferReceiver;
  return [(SidecarTransfer *)&v5 initWithSession:a3 requestID:a4 transferID:0];
}

@end