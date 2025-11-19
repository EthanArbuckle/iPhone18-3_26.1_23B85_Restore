@interface WiFiP2PSPITransactionRequestor
+ (id)shared;
- (WiFiP2PSPITransactionRequestor)init;
- (void)_removeOpenTransaction:(int64_t)a3;
- (void)beginTransaction:(int64_t)a3 completionHandler:(id)a4;
- (void)endTransaction:(int64_t)a3 completionHandler:(id)a4;
- (void)handleConnectionEstablishedWithProxy:(id)a3;
@end

@implementation WiFiP2PSPITransactionRequestor

+ (id)shared
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_4);
  }

  v3 = qword_280B20B78;

  return v3;
}

- (WiFiP2PSPITransactionRequestor)init
{
  v11.receiver = self;
  v11.super_class = WiFiP2PSPITransactionRequestor;
  v2 = [(WiFiP2PSPITransactionRequestor *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    openTransactions = v2->_openTransactions;
    v2->_openTransactions = v3;

    v5 = [WiFiP2PXPCConnection alloc];
    v6 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v7 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiP2PSPI", 0, v6);
    v8 = [(WiFiP2PXPCConnection *)v5 initWithEndpointType:0 queue:v7 retryTimeout:-1];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v8;

    [(WiFiP2PXPCConnection *)v2->_xpcConnection setDelegate:v2];
  }

  return v2;
}

uint64_t __40__WiFiP2PSPITransactionRequestor_shared__block_invoke()
{
  qword_280B20B78 = objc_alloc_init(WiFiP2PSPITransactionRequestor);

  return MEMORY[0x2821F96F8]();
}

- (void)handleConnectionEstablishedWithProxy:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_openTransactions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 beginTransaction:objc_msgSend(*(*(&v11 + 1) + 8 * v9++) completionHandler:{"integerValue", v11), &__block_literal_global_53}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeOpenTransaction:(int64_t)a3
{
  openTransactions = self->_openTransactions;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [(NSMutableArray *)openTransactions indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = self->_openTransactions;

    [(NSMutableArray *)v7 removeObjectAtIndex:v6];
  }
}

- (void)beginTransaction:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__WiFiP2PSPITransactionRequestor_beginTransaction_completionHandler___block_invoke;
  v13[3] = &unk_2787AB3C0;
  v13[5] = v14;
  v13[6] = a3;
  v13[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WiFiP2PSPITransactionRequestor_beginTransaction_completionHandler___block_invoke_2;
  v9[3] = &unk_2787AB3E8;
  v11 = v14;
  v12 = a3;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13 clientCompletionHandler:v9];

  _Block_object_dispose(v14, 8);
}

void __69__WiFiP2PSPITransactionRequestor_beginTransaction_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = *(a1[4] + 8);
  v6 = MEMORY[0x277CCABB0];
  v7 = a1[6];
  v8 = a3;
  v11 = a2;
  v9 = [v6 numberWithInteger:v7];
  [v5 addObject:v9];

  v10 = a1[6];
  *(*(a1[5] + 8) + 24) = 1;
  [v11 beginTransaction:v10 completionHandler:v8];
}

uint64_t __69__WiFiP2PSPITransactionRequestor_beginTransaction_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [*(a1 + 32) _removeOpenTransaction:*(a1 + 56)];
    }

    if (![*(*(a1 + 32) + 8) count])
    {
      [*(*(a1 + 32) + 16) stop];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)endTransaction:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  xpcConnection = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__WiFiP2PSPITransactionRequestor_endTransaction_completionHandler___block_invoke;
  v13[3] = &unk_2787AB3C0;
  v13[5] = v14;
  v13[6] = a3;
  v13[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__WiFiP2PSPITransactionRequestor_endTransaction_completionHandler___block_invoke_2;
  v9[3] = &unk_2787AB3E8;
  v11 = v14;
  v12 = a3;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v13 clientCompletionHandler:v9];

  _Block_object_dispose(v14, 8);
}

void __67__WiFiP2PSPITransactionRequestor_endTransaction_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v7 = a3;
  v9 = a2;
  [v5 _removeOpenTransaction:v6];
  v8 = a1[6];
  *(*(a1[5] + 8) + 24) = 1;
  [v9 endTransaction:v8 completionHandler:v7];
}

uint64_t __67__WiFiP2PSPITransactionRequestor_endTransaction_completionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _removeOpenTransaction:*(a1 + 56)];
  }

  if (![*(*(a1 + 32) + 8) count])
  {
    [*(*(a1 + 32) + 16) stop];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end