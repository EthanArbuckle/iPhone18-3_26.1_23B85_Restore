@interface KTStaticKeyMock
+ (id)mockStaticKeyWithNotificationCenter:(id)center;
- (void)codeAvailable:(id)available code:(id)code;
- (void)deleteKTSession:(id)session complete:(id)complete;
- (void)getKTSessionByHandle:(id)handle complete:(id)complete;
- (void)getKTSessionByID:(id)d complete:(id)complete;
- (void)listKTSessions:(id)sessions;
- (void)postNotification:(id)notification state:(id)state;
- (void)setupCode:(id)code;
- (void)setupKTSession:(id)session complete:(id)complete;
@end

@implementation KTStaticKeyMock

+ (id)mockStaticKeyWithNotificationCenter:(id)center
{
  centerCopy = center;
  v4 = objc_alloc_init(KTStaticKeyMock);
  if (v4)
  {
    v5 = [MEMORY[0x277D73540] ktAccountPublicIDWithPKIString:@"apple-ktpki:YYGzMIGwAgEBAgEBBEEEzJxLXIZEEoaCbsZDjEf3lyd1CXEzzmihWMdRIRaqb2osfA3PJfg6dEVWUChkxJvAqUZG5u5FOxHwQoADqkoNOqFlMGMEFNk5nRWE6ZOuRDPPUCgu5P4sN9TbAgEBBEgwRgIhAPNU82BqsYeOt3XF1ph1a3cLXuJc2qcPsCNDXJDsCxf3AiEA4iSOYBMONpNBZ7p4hz2cprQMT7P/fPZCuPtPrHWeDj5NiQ==" error:0];
    [(KTStaticKeyMock *)v4 setPeerID:v5];

    v6 = dispatch_queue_create("KTStaticKeyMock", 0);
    [(KTStaticKeyMock *)v4 setMockQueue:v6];

    v7 = dispatch_queue_create("KTStaticKeyMock-WorkQueue", 0);
    [(KTStaticKeyMock *)v4 setMockWork:v7];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(KTStaticKeyMock *)v4 setMockHandles:dictionary];

    [(KTStaticKeyMock *)v4 setNotificationCenter:centerCopy];
    [(KTStaticKeyMock *)v4 setDelayCode:0];
    [(KTStaticKeyMock *)v4 setCodeFailure:0];
    v9 = v4;
  }

  return v4;
}

- (void)postNotification:(id)notification state:(id)state
{
  v13[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  stateCopy = state;
  v12 = *MEMORY[0x277D73610];
  v13[0] = notificationCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v8 mutableCopy];

  if (stateCopy)
  {
    [v9 setObject:stateCopy forKeyedSubscript:*MEMORY[0x277D73618]];
  }

  notificationCenter = [(KTStaticKeyMock *)self notificationCenter];
  [notificationCenter postNotificationName:*MEMORY[0x277D73608] object:0 userInfo:v9 deliverImmediately:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)codeAvailable:(id)available code:(id)code
{
  availableCopy = available;
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  dispatch_assert_queue_V2(mockQueue);

  if ([(KTStaticKeyMock *)self codeFailure])
  {
    [availableCopy setState:*MEMORY[0x277D73628]];
  }

  else
  {
    [availableCopy setState:*MEMORY[0x277D73620]];
    [availableCopy setSasCode:@"123456"];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:600.0];
    [availableCopy setSessionExpire:v6];
  }

  sessionID = [availableCopy sessionID];
  state = [availableCopy state];
  [(KTStaticKeyMock *)self postNotification:sessionID state:state];
}

- (void)setupCode:(id)code
{
  codeCopy = code;
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  dispatch_assert_queue_V2(mockQueue);

  if ([(KTStaticKeyMock *)self delayCode])
  {
    v6 = dispatch_time(0, 1000000000);
    mockQueue2 = [(KTStaticKeyMock *)self mockQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__KTStaticKeyMock_setupCode___block_invoke;
    v8[3] = &unk_279DDAA10;
    v8[4] = self;
    v9 = codeCopy;
    dispatch_after(v6, mockQueue2, v8);
  }

  else
  {
    [(KTStaticKeyMock *)self codeAvailable:codeCopy code:@"123456"];
  }
}

- (void)setupKTSession:(id)session complete:(id)complete
{
  sessionCopy = session;
  completeCopy = complete;
  v8 = dispatch_time(0, 1000000000);
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__KTStaticKeyMock_setupKTSession_complete___block_invoke;
  block[3] = &unk_279DDAA60;
  v13 = sessionCopy;
  selfCopy = self;
  v15 = completeCopy;
  v10 = completeCopy;
  v11 = sessionCopy;
  dispatch_after(v8, mockQueue, block);
}

void __43__KTStaticKeyMock_setupKTSession_complete___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D73548]);
  v3 = [a1[4] peer];
  [v2 setPeerHandle:v3];

  v4 = MEMORY[0x277CBEB58];
  v5 = [a1[4] peer];
  v6 = [v4 setWithObject:v5];
  v7 = [a1[4] otherNamesForPeer];
  v8 = [v6 setByAddingObjectsFromSet:v7];
  [v2 setExpectedPeerHandles:v8];

  v9 = [a1[5] mockHandles];
  v10 = [v2 sessionID];
  [v9 setObject:v2 forKeyedSubscript:v10];

  v11 = [a1[5] peerID];
  [v2 setPeerAccountIdentity:v11];

  [a1[5] codeAvailable:v2 code:@"123456"];
  v12 = [a1[5] mockWork];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__KTStaticKeyMock_setupKTSession_complete___block_invoke_2;
  v15[3] = &unk_279DDAA38;
  v13 = a1[6];
  v16 = v2;
  v17 = v13;
  v14 = v2;
  dispatch_async(v12, v15);
}

- (void)deleteKTSession:(id)session complete:(id)complete
{
  sessionCopy = session;
  completeCopy = complete;
  v8 = dispatch_time(0, 2000000000);
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__KTStaticKeyMock_deleteKTSession_complete___block_invoke;
  block[3] = &unk_279DDAA60;
  block[4] = self;
  v13 = sessionCopy;
  v14 = completeCopy;
  v10 = completeCopy;
  v11 = sessionCopy;
  dispatch_after(v8, mockQueue, block);
}

void __44__KTStaticKeyMock_deleteKTSession_complete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mockHandles];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) mockHandles];
    [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];

    [v3 setState:*MEMORY[0x277D73630]];
    v5 = *(a1 + 32);
    v6 = [v3 sessionID];
    v7 = [v3 state];
    [v5 postNotification:v6 state:v7];
  }

  v8 = [*(a1 + 32) mockWork];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__KTStaticKeyMock_deleteKTSession_complete___block_invoke_2;
  v9[3] = &unk_279DDAA88;
  v10 = *(a1 + 48);
  v11 = v3 != 0;
  dispatch_async(v8, v9);
}

- (void)listKTSessions:(id)sessions
{
  sessionsCopy = sessions;
  v5 = dispatch_time(0, 3000000000);
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__KTStaticKeyMock_listKTSessions___block_invoke;
  v8[3] = &unk_279DDAAB0;
  v8[4] = self;
  v9 = sessionsCopy;
  v7 = sessionsCopy;
  dispatch_after(v5, mockQueue, v8);
}

void __34__KTStaticKeyMock_listKTSessions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mockWork];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__KTStaticKeyMock_listKTSessions___block_invoke_2;
  v4[3] = &unk_279DDAA38;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __34__KTStaticKeyMock_listKTSessions___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) mockHandles];
  v2 = [v3 allValues];
  (*(v1 + 16))(v1, v2);
}

- (void)getKTSessionByHandle:(id)handle complete:(id)complete
{
  handleCopy = handle;
  completeCopy = complete;
  v8 = dispatch_time(0, 1000000000);
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__KTStaticKeyMock_getKTSessionByHandle_complete___block_invoke;
  block[3] = &unk_279DDAA60;
  block[4] = self;
  v13 = handleCopy;
  v14 = completeCopy;
  v10 = completeCopy;
  v11 = handleCopy;
  dispatch_after(v8, mockQueue, block);
}

void __49__KTStaticKeyMock_getKTSessionByHandle_complete___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(a1 + 32) mockHandles];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v9 = [*(a1 + 32) mockHandles];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 expectedPeerHandles];
        v12 = [v11 containsObject:*(a1 + 40)];

        if (v12)
        {
          [v2 addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 32) mockWork];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__KTStaticKeyMock_getKTSessionByHandle_complete___block_invoke_2;
  v17[3] = &unk_279DDAA38;
  v14 = *(a1 + 48);
  v18 = v2;
  v19 = v14;
  v15 = v2;
  dispatch_async(v13, v17);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)getKTSessionByID:(id)d complete:(id)complete
{
  dCopy = d;
  completeCopy = complete;
  v8 = dispatch_time(0, 1000000000);
  mockQueue = [(KTStaticKeyMock *)self mockQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__KTStaticKeyMock_getKTSessionByID_complete___block_invoke;
  block[3] = &unk_279DDAB00;
  v13 = dCopy;
  v14 = completeCopy;
  block[4] = self;
  v10 = dCopy;
  v11 = completeCopy;
  dispatch_after(v8, mockQueue, block);
}

void __45__KTStaticKeyMock_getKTSessionByID_complete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mockWork];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__KTStaticKeyMock_getKTSessionByID_complete___block_invoke_2;
  block[3] = &unk_279DDAAD8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  block[4] = v4;
  v7 = v5;
  dispatch_async(v2, block);
}

void __45__KTStaticKeyMock_getKTSessionByID_complete___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) mockHandles];
  v3 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  (*(v2 + 16))(v2, v3);
}

@end