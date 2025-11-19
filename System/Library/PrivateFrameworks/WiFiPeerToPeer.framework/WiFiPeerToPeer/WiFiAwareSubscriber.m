@interface WiFiAwareSubscriber
- (NSString)description;
- (WiFiAwareSubscriber)initWithConfiguration:(id)a3;
- (WiFiAwareSubscriberDelegate)delegate;
- (void)handleError:(int64_t)a3;
- (void)sendDataBlobForMulticastSession:(id)a3 toPeerAddress:(id)a4 usingMulticastAddress:(unsigned __int8)a5 completionHandler:(id)a6;
- (void)sendMessage:(id)a3 toPeerAddress:(id)a4 withInstanceID:(unsigned __int8)a5 completionHandler:(id)a6;
- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4;
- (void)subscribeDetectedMulticastError:(int64_t)a3 fromMulticastSender:(id)a4;
- (void)subscribeFailedToStartWithError:(int64_t)a3;
- (void)subscribeReceivedDataBlobForMulticastSession:(id)a3 fromPeer:(id)a4;
- (void)subscribeReceivedDiscoveryResult:(id)a3;
- (void)subscribeTerminatedWithReason:(int64_t)a3;
- (void)updateTimeout:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation WiFiAwareSubscriber

- (WiFiAwareSubscriber)initWithConfiguration:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = WiFiAwareSubscriber;
  v6 = [(WiFiAwareSubscriber *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [WiFiP2PXPCConnection alloc];
    v9 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v10 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiAwareSubscriber", 0, v9);
    v11 = [(WiFiP2PXPCConnection *)v8 initWithEndpointType:1 queue:v10 retryTimeout:+[WiFiP2PXPCConnection defaultRetryTimeout]];
    xpcConnection = v7->_xpcConnection;
    v7->_xpcConnection = v11;

    [(WiFiP2PXPCConnection *)v7->_xpcConnection setDelegate:v7];
  }

  return v7;
}

- (void)handleError:(int64_t)a3
{
  v5 = [(WiFiAwareSubscriber *)self delegate];
  v7 = v5;
  if (self->_subscribeID)
  {
    [v5 subscriber:self terminatedWithReason:-1];
  }

  else
  {
    [v5 subscriber:self failedToStartWithError:a3];
  }

  subscribeID = self->_subscribeID;
  self->_subscribeID = 0;
}

- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WiFiAwareSubscriber *)self configuration];
  [v7 createSubscribeWithConfiguration:v8 completionHandler:v6];
}

- (void)sendMessage:(id)a3 toPeerAddress:(id)a4 withInstanceID:(unsigned __int8)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__WiFiAwareSubscriber_sendMessage_toPeerAddress_withInstanceID_completionHandler___block_invoke;
  v15[3] = &unk_2787AAD88;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:a6];
}

- (void)sendDataBlobForMulticastSession:(id)a3 toPeerAddress:(id)a4 usingMulticastAddress:(unsigned __int8)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__WiFiAwareSubscriber_sendDataBlobForMulticastSession_toPeerAddress_usingMulticastAddress_completionHandler___block_invoke;
  v15[3] = &unk_2787AAD88;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:a6];
}

- (void)updateTimeout:(unint64_t)a3 completionHandler:(id)a4
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__WiFiAwareSubscriber_updateTimeout_completionHandler___block_invoke;
  v5[3] = &__block_descriptor_40_e44_v24__0___WiFiAwareSubscriberXPC__8___v__q_16l;
  v5[4] = a3;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v5 clientCompletionHandler:a4];
}

- (NSString)description
{
  subscribeID = self->_subscribeID;
  if (subscribeID)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", subscribeID];
  }

  else
  {
    v4 = @"unset";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(WiFiAwareSubscriber *)self configuration];
  v7 = [v6 serviceName];
  v8 = [v5 stringWithFormat:@"<WiFiAwareSubscriber: SubscribeID=%@, Service=%@>", v4, v7];

  return v8;
}

- (void)subscribeReceivedDiscoveryResult:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WiFiAwareSubscriber *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 subscriber:self receivedDiscoveryResult:v4];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 subscriber:self receivedDiscoveyResult:v4];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "WiFiAwareSubscriberDelegate %{public}@ is using deprecated method - (void)subscriber:receivedDiscoveyResult: should be using - (void)subscriber:receivedDiscoveryResult: instead.", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_fault_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "WiFiAwareSubscriberDelegate %{public}@ is missing required method - (void)subscriber:receivedDiscoveryResult:", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscribeDetectedMulticastError:(int64_t)a3 fromMulticastSender:(id)a4
{
  v6 = a4;
  v7 = [(WiFiAwareSubscriber *)self delegate];
  [v7 subscriber:self detectedMulticastError:a3 fromMulticastSender:v6];
}

- (void)subscribeReceivedDataBlobForMulticastSession:(id)a3 fromPeer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WiFiAwareSubscriber *)self delegate];
  [v8 subscriber:self receivedDataBlobForMulticastSession:v7 fromPeer:v6];
}

- (void)subscribeTerminatedWithReason:(int64_t)a3
{
  subscribeID = self->_subscribeID;
  self->_subscribeID = 0;

  v6 = [(WiFiAwareSubscriber *)self delegate];
  [v6 subscriber:self terminatedWithReason:a3];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)subscribeFailedToStartWithError:(int64_t)a3
{
  subscribeID = self->_subscribeID;
  self->_subscribeID = 0;

  v6 = [(WiFiAwareSubscriber *)self delegate];
  [v6 subscriber:self failedToStartWithError:a3];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (WiFiAwareSubscriberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end