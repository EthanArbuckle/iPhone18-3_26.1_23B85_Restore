@interface STKUSSDAlertSession
- (BOOL)hasReceivedContent;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STKUSSDAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 event:(int64_t)a5 options:(id)a6 sound:(id)a7;
- (void)invalidate;
- (void)performUSSDUpdate:(id)a3;
- (void)setHasReceivedContent:(BOOL)a3;
@end

@implementation STKUSSDAlertSession

- (STKUSSDAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 event:(int64_t)a5 options:(id)a6 sound:(id)a7
{
  v15.receiver = self;
  v15.super_class = STKUSSDAlertSession;
  v8 = [(STKAlertSession *)&v15 initWithLogger:a3 responseProvider:a4 options:a6 sound:a7];
  v9 = v8;
  if (v8)
  {
    v8->_event = a5;
    v10 = [MEMORY[0x277CCAE98] anonymousListener];
    ussdListener = v9->_ussdListener;
    v9->_ussdListener = v10;

    [(NSXPCListener *)v9->_ussdListener setDelegate:v9];
    [(NSXPCListener *)v9->_ussdListener resume];
    v12 = [MEMORY[0x277CBEB18] array];
    connectionQueue = v9->_connectionQueue;
    v9->_connectionQueue = v12;
  }

  return v9;
}

- (void)invalidate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__STKUSSDAlertSession_invalidate__block_invoke;
  v4[3] = &unk_279B4C428;
  v4[4] = self;
  _STKWithLock(self, v4);
  v3.receiver = self;
  v3.super_class = STKUSSDAlertSession;
  [(STKAlertSession *)&v3 invalidate];
}

uint64_t __33__STKUSSDAlertSession_invalidate__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 41) & 1) == 0)
  {
    return [*(v1 + 88) invalidate];
  }

  return result;
}

- (BOOL)hasReceivedContent
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__STKUSSDAlertSession_hasReceivedContent__block_invoke;
  v4[3] = &unk_279B4C860;
  v4[4] = self;
  v4[5] = &v5;
  _STKWithLock(self, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setHasReceivedContent:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__STKUSSDAlertSession_setHasReceivedContent___block_invoke;
  v3[3] = &unk_279B4C888;
  v3[4] = self;
  v4 = a3;
  _STKWithLock(self, v3);
}

- (void)performUSSDUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__STKUSSDAlertSession_performUSSDUpdate___block_invoke;
  v6[3] = &unk_279B4C698;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _STKWithLock(self, v6);
}

void __41__STKUSSDAlertSession_performUSSDUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 96))
  {
    v2 = *(a1 + 40);
    v4 = [*(v1 + 96) remoteObjectProxy];
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = *(v1 + 104);
    v4 = MEMORY[0x266731D40](*(a1 + 40));
    [v3 addObject:?];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = STKUSSDSessionCommunicationInterface();
  [v6 setRemoteObjectInterface:v7];

  v8 = STKUSSDHostCommunicationInterface();
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:self];
  [v6 resume];
  objc_storeStrong(&self->_ussdConnection, a4);
  v9 = [(NSXPCConnection *)self->_ussdConnection remoteObjectProxy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_connectionQueue;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v17 + 1) + 8 * v14) + 16))(*(*(&v17 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_connectionQueue removeAllObjects];
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

@end