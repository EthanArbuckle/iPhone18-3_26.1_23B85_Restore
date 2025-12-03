@interface WiFiAwareSubscriber
- (NSString)description;
- (WiFiAwareSubscriber)initWithConfiguration:(id)configuration;
- (WiFiAwareSubscriberDelegate)delegate;
- (void)handleError:(int64_t)error;
- (void)sendDataBlobForMulticastSession:(id)session toPeerAddress:(id)address usingMulticastAddress:(unsigned __int8)multicastAddress completionHandler:(id)handler;
- (void)sendMessage:(id)message toPeerAddress:(id)address withInstanceID:(unsigned __int8)d completionHandler:(id)handler;
- (void)startConnectionUsingProxy:(id)proxy completionHandler:(id)handler;
- (void)subscribeDetectedMulticastError:(int64_t)error fromMulticastSender:(id)sender;
- (void)subscribeFailedToStartWithError:(int64_t)error;
- (void)subscribeReceivedDataBlobForMulticastSession:(id)session fromPeer:(id)peer;
- (void)subscribeReceivedDiscoveryResult:(id)result;
- (void)subscribeTerminatedWithReason:(int64_t)reason;
- (void)updateTimeout:(unint64_t)timeout completionHandler:(id)handler;
@end

@implementation WiFiAwareSubscriber

- (WiFiAwareSubscriber)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = WiFiAwareSubscriber;
  v6 = [(WiFiAwareSubscriber *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
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

- (void)handleError:(int64_t)error
{
  delegate = [(WiFiAwareSubscriber *)self delegate];
  v7 = delegate;
  if (self->_subscribeID)
  {
    [delegate subscriber:self terminatedWithReason:-1];
  }

  else
  {
    [delegate subscriber:self failedToStartWithError:error];
  }

  subscribeID = self->_subscribeID;
  self->_subscribeID = 0;
}

- (void)startConnectionUsingProxy:(id)proxy completionHandler:(id)handler
{
  handlerCopy = handler;
  proxyCopy = proxy;
  configuration = [(WiFiAwareSubscriber *)self configuration];
  [proxyCopy createSubscribeWithConfiguration:configuration completionHandler:handlerCopy];
}

- (void)sendMessage:(id)message toPeerAddress:(id)address withInstanceID:(unsigned __int8)d completionHandler:(id)handler
{
  messageCopy = message;
  addressCopy = address;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__WiFiAwareSubscriber_sendMessage_toPeerAddress_withInstanceID_completionHandler___block_invoke;
  v15[3] = &unk_2787AAD88;
  v16 = messageCopy;
  v17 = addressCopy;
  dCopy = d;
  v13 = addressCopy;
  v14 = messageCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:handler];
}

- (void)sendDataBlobForMulticastSession:(id)session toPeerAddress:(id)address usingMulticastAddress:(unsigned __int8)multicastAddress completionHandler:(id)handler
{
  sessionCopy = session;
  addressCopy = address;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__WiFiAwareSubscriber_sendDataBlobForMulticastSession_toPeerAddress_usingMulticastAddress_completionHandler___block_invoke;
  v15[3] = &unk_2787AAD88;
  v16 = sessionCopy;
  v17 = addressCopy;
  multicastAddressCopy = multicastAddress;
  v13 = addressCopy;
  v14 = sessionCopy;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:handler];
}

- (void)updateTimeout:(unint64_t)timeout completionHandler:(id)handler
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__WiFiAwareSubscriber_updateTimeout_completionHandler___block_invoke;
  v5[3] = &__block_descriptor_40_e44_v24__0___WiFiAwareSubscriberXPC__8___v__q_16l;
  v5[4] = timeout;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v5 clientCompletionHandler:handler];
}

- (NSString)description
{
  subscribeID = self->_subscribeID;
  if (subscribeID)
  {
    subscribeID = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", subscribeID];
  }

  else
  {
    subscribeID = @"unset";
  }

  v5 = MEMORY[0x277CCACA8];
  configuration = [(WiFiAwareSubscriber *)self configuration];
  serviceName = [configuration serviceName];
  v8 = [v5 stringWithFormat:@"<WiFiAwareSubscriber: SubscribeID=%@, Service=%@>", subscribeID, serviceName];

  return v8;
}

- (void)subscribeReceivedDiscoveryResult:(id)result
{
  v9 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  delegate = [(WiFiAwareSubscriber *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate subscriber:self receivedDiscoveryResult:resultCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate subscriber:self receivedDiscoveyResult:resultCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = delegate;
      _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "WiFiAwareSubscriberDelegate %{public}@ is using deprecated method - (void)subscriber:receivedDiscoveyResult: should be using - (void)subscriber:receivedDiscoveryResult: instead.", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v7 = 138543362;
    v8 = delegate;
    _os_log_fault_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "WiFiAwareSubscriberDelegate %{public}@ is missing required method - (void)subscriber:receivedDiscoveryResult:", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscribeDetectedMulticastError:(int64_t)error fromMulticastSender:(id)sender
{
  senderCopy = sender;
  delegate = [(WiFiAwareSubscriber *)self delegate];
  [delegate subscriber:self detectedMulticastError:error fromMulticastSender:senderCopy];
}

- (void)subscribeReceivedDataBlobForMulticastSession:(id)session fromPeer:(id)peer
{
  peerCopy = peer;
  sessionCopy = session;
  delegate = [(WiFiAwareSubscriber *)self delegate];
  [delegate subscriber:self receivedDataBlobForMulticastSession:sessionCopy fromPeer:peerCopy];
}

- (void)subscribeTerminatedWithReason:(int64_t)reason
{
  subscribeID = self->_subscribeID;
  self->_subscribeID = 0;

  delegate = [(WiFiAwareSubscriber *)self delegate];
  [delegate subscriber:self terminatedWithReason:reason];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)subscribeFailedToStartWithError:(int64_t)error
{
  subscribeID = self->_subscribeID;
  self->_subscribeID = 0;

  delegate = [(WiFiAwareSubscriber *)self delegate];
  [delegate subscriber:self failedToStartWithError:error];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (WiFiAwareSubscriberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end