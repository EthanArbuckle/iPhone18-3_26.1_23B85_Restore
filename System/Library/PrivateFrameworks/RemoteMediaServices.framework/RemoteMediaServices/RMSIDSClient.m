@interface RMSIDSClient
+ (id)sharedClient;
- (BOOL)_isCompanionAvailable;
- (BOOL)_isInMinimalConfiguration;
- (RMSIDSClient)init;
- (void)_handleAddToWishlistResponse:(id)a3;
- (void)_handleAudioRoutesDidUpdate:(id)a3;
- (void)_handleAvailableServicesDidUpdate:(id)a3;
- (void)_handleBeginDiscoverySessionResponse:(id)a3;
- (void)_handleBeginPairingSessionResponse:(id)a3;
- (void)_handleConnectToServiceResponse:(id)a3;
- (void)_handleDidBeginEditingText:(id)a3;
- (void)_handleDidEndEditingText:(id)a3;
- (void)_handleNowPlayingArtworkAvailable:(id)a3;
- (void)_handleNowPlayingArtworkDataResponse:(id)a3;
- (void)_handleNowPlayingInfoDidUpdate:(id)a3;
- (void)_handlePairingChallengeRequest:(id)a3;
- (void)_handlePairingDidFail:(id)a3;
- (void)_handlePairingDidSucceed:(id)a3;
- (void)_handlePickAudioRouteResponse:(id)a3;
- (void)_handleResponseCodeMessage:(id)a3;
- (void)_handleSendTextResponse:(id)a3;
- (void)_handleSessionDidEnd:(id)a3;
- (void)_handleSetLikedStateResponse:(id)a3;
- (void)_handleTimeoutForMessageWithIdentifier:(id)a3;
- (void)_handleUnpairServiceResponse:(id)a3;
- (void)_handleVolumeDidUpdate:(id)a3;
- (void)_handleWifiAvailabilityDidChange:(id)a3;
- (void)_invokeArtworkDataResponseBlock:(id)a3 artworkData:(id)a4;
- (void)_invokeBeginDiscoveryResponseBlock:(id)a3 success:(BOOL)a4 session:(int)a5;
- (void)_invokeBeginPairingResponseBlock:(id)a3 responseCode:(int64_t)a4 session:(int)a5;
- (void)_invokeCompletePairingChallengeResponseBlock:(id)a3 responseCode:(int64_t)a4 controlInterface:(id)a5;
- (void)_invokeConnectToServiceResponseBlock:(id)a3 responseCode:(int64_t)a4 responseData:(int)a5 controlInterface:(id)a6 session:(int)a7;
- (void)_invokeResponseCodeResponseBlock:(id)a3 responseCode:(int64_t)a4;
- (void)_invokeSetTextResponseBlock:(id)a3 responseCode:(int64_t)a4 session:(int)a5;
- (void)_sendMessage:(id)a3 type:(unsigned __int16)a4 sendTimeout:(int)a5 responseTimeout:(int)a6 queueOneID:(id)a7 priority:(int64_t)a8 inResponseToProtobuf:(id)a9 responseBlock:(id)a10;
- (void)_updateCompanionAvailability;
- (void)addToWishlist:(unint64_t)a3 databaseID:(unint64_t)a4 sessionIdentifier:(int)a5 completionHandler:(id)a6;
- (void)beginDiscoverySessionWithDiscoveryTypes:(int)a3 pairedNetworkNames:(id)a4 completionHandler:(id)a5;
- (void)beginObservingNowPlayingWithSessionIdentifier:(int)a3 completionHandler:(id)a4;
- (void)beginPairingSessionWithPasscode:(id)a3 appName:(id)a4 deviceName:(id)a5 deviceModel:(id)a6 completionHandler:(id)a7;
- (void)connectToService:(id)a3 pairingGUID:(id)a4 allowPairing:(BOOL)a5 completionHandler:(id)a6;
- (void)endDiscoverySession:(int)a3;
- (void)endObservingNowPlayingWithSessionIdentifier:(int)a3;
- (void)endPairingSession:(int)a3;
- (void)logoutWithSessionIdentifier:(int)a3;
- (void)pickAudioRouteWithMacAddress:(unint64_t)a3 sessionIdentifier:(int)a4 completionHandler:(id)a5;
- (void)requestArtworkDataForNowPlayingInfo:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 compressionQuality:(float)a6 completionHandler:(id)a7;
- (void)seekToPlaybackTime:(int)a3 sessionIdentifier:(int)a4;
- (void)sendHeartbeatWithSessionIdentifier:(int)a3 completionHandler:(id)a4;
- (void)sendNavigationCommand:(int64_t)a3 sessionIdentifier:(int)a4;
- (void)sendPlaybackCommand:(int64_t)a3 sessionIdentifier:(int)a4;
- (void)sendText:(id)a3 sessionIdentifier:(int)a4 completionHandler:(id)a5;
- (void)sendTouchEndWithDirection:(int64_t)a3 repeatCount:(unsigned int)a4 sessionIdentifier:(int)a5;
- (void)sendTouchMoveWithDirection:(int64_t)a3 repeatCount:(unsigned int)a4 sessionIdentifier:(int)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setLikedState:(int64_t)a3 itemID:(unint64_t)a4 databaseID:(unint64_t)a5 sessionIdentifier:(int)a6 completionHandler:(id)a7;
- (void)setVolume:(float)a3 sessionIdentifier:(int)a4;
- (void)unpairService:(id)a3 sessionIdentifier:(int)a4 completionHandler:(id)a5;
- (void)updatePairedNetworkNames:(id)a3 sessionIdentifier:(int)a4;
@end

@implementation RMSIDSClient

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[RMSIDSClient sharedClient];
  }

  v3 = sharedClient_sharedConnectionManager;

  return v3;
}

uint64_t __28__RMSIDSClient_sharedClient__block_invoke()
{
  sharedClient_sharedConnectionManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RMSIDSClient)init
{
  v12.receiver = self;
  v12.super_class = RMSIDSClient;
  v2 = [(RMSIDSClient *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    messageRecords = v2->_messageRecords;
    v2->_messageRecords = v3;

    v5 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.remotemediaservices"];
    idsService = v2->_idsService;
    v2->_idsService = v5;

    v7 = dispatch_queue_create("com.apple.remotemediaservices.ids", 0);
    idsDispatchQueue = v2->_idsDispatchQueue;
    v2->_idsDispatchQueue = v7;

    v9 = dispatch_get_global_queue(33, 0);
    idsOutgoingQueue = v2->_idsOutgoingQueue;
    v2->_idsOutgoingQueue = v9;

    [(IDSService *)v2->_idsService setProtobufAction:sel__handleAvailableServicesDidUpdate_ forIncomingRequestsOfType:4];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePairingChallengeRequest_ forIncomingRequestsOfType:40];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleNowPlayingInfoDidUpdate_ forIncomingRequestsOfType:12];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleNowPlayingArtworkAvailable_ forIncomingRequestsOfType:13];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleAudioRoutesDidUpdate_ forIncomingRequestsOfType:14];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleVolumeDidUpdate_ forIncomingRequestsOfType:15];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePairingDidSucceed_ forIncomingRequestsOfType:29];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePairingDidFail_ forIncomingRequestsOfType:30];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSessionDidEnd_ forIncomingRequestsOfType:37];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleWifiAvailabilityDidChange_ forIncomingRequestsOfType:38];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleDidBeginEditingText_ forIncomingRequestsOfType:42];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleDidEndEditingText_ forIncomingRequestsOfType:43];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleBeginDiscoverySessionResponse_ forIncomingResponsesOfType:2];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleConnectToServiceResponse_ forIncomingResponsesOfType:6];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleNowPlayingArtworkDataResponse_ forIncomingResponsesOfType:25];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleBeginPairingSessionResponse_ forIncomingResponsesOfType:27];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleHeartbeatResponse_ forIncomingResponsesOfType:17];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePickAudioRouteResponse_ forIncomingResponsesOfType:19];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSetLikedStateResponse_ forIncomingResponsesOfType:32];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleBeginObservingNowPlayingResponse_ forIncomingResponsesOfType:10];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSendTextResponse_ forIncomingResponsesOfType:45];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleUnpairServiceResponse_ forIncomingResponsesOfType:47];
    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_idsDispatchQueue];
    v2->_companionAvailable = 1;
    [(RMSIDSClient *)v2 _updateCompanionAvailability];
  }

  return v2;
}

- (void)beginDiscoverySessionWithDiscoveryTypes:(int)a3 pairedNetworkNames:(id)a4 completionHandler:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = a4;
  v12 = objc_opt_new();
  [v12 setDiscoveryTypes:v6];
  v10 = [v9 mutableCopy];

  [v12 setPairedNetworkNames:v10];
  [v12 setHasPairedNetworkNames:1];
  v11 = MEMORY[0x266721590](v8);

  [(RMSIDSClient *)self _sendMessage:v12 type:1 timeout:10 queueOneID:0 priority:200 responseBlock:v11];
}

- (void)updatePairedNetworkNames:(id)a3 sessionIdentifier:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v8 = objc_opt_new();
  [v8 setSessionIdentifier:v4];
  v7 = [v6 mutableCopy];

  [v8 setPairedNetworkNames:v7];
  [(RMSIDSClient *)self _sendMessage:v8 type:39 timeout:10 queueOneID:@"UpdatePairedNetworkNames" priority:200 responseBlock:0];
}

- (void)_handleBeginDiscoverySessionResponse:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSSessionMessage *)v5 initWithData:v6];

  v8 = [v4 context];

  v9 = [v8 incomingResponseIdentifier];

  v10 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v10;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Received begin discovery response", v12, 8u);
  }

  [(RMSIDSClient *)self _invokeBeginDiscoveryResponseBlock:v9 success:1 session:v10];
}

- (void)_invokeBeginDiscoveryResponseBlock:(id)a3 success:(BOOL)a4 session:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v10 = a3;
  v8 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  v9 = [v8 responseBlock];

  if (v9)
  {
    v9[2](v9, v6, v5);
  }

  else if (v6)
  {
    [(RMSIDSClient *)self endDiscoverySession:v5];
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v10];
}

- (void)_handleAvailableServicesDidUpdate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSAvailableServicesDidUpdateMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSAvailableServicesDidUpdateMessage *)v5 initWithData:v6];
  v8 = [(RMSAvailableServicesDidUpdateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received discovery available services update", v16, 8u);
  }

  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  [v10 setObject:v11 forKeyedSubscript:@"RMSIDSClientSessionIdentifierNotificationKey"];

  v12 = [(RMSAvailableServicesDidUpdateMessage *)v7 services];

  if (v12)
  {
    v13 = [(RMSAvailableServicesDidUpdateMessage *)v7 services];
    v14 = [RMSService servicesFromProtobufs:v13];

    [v10 setObject:v14 forKeyedSubscript:@"RMSIDSClientAvailableServicesNotificationKey"];
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:@"RMSIDSClientAvailableServicesDidUpdateNotification" object:self userInfo:v10];
}

- (void)endDiscoverySession:(int)a3
{
  v3 = *&a3;
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v3];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending end discovery message", v7, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v5 type:3 timeout:*MEMORY[0x277D18828] queueOneID:0 priority:200 responseBlock:0];
}

- (void)sendHeartbeatWithSessionIdentifier:(int)a3 completionHandler:(id)a4
{
  v4 = *&a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending heartbeat message", v10, 8u);
  }

  v9 = MEMORY[0x266721590](v6);
  [(RMSIDSClient *)self _sendMessage:v7 type:16 timeout:20 queueOneID:0 priority:300 responseBlock:v9];
}

- (void)connectToService:(id)a3 pairingGUID:(id)a4 allowPairing:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v15 = objc_opt_new();
  v13 = [v12 protobuf];

  [v15 setService:v13];
  [v15 setPairingGUID:v11];

  [v15 setAllowPairing:v6];
  v14 = MEMORY[0x266721590](v10);

  [(RMSIDSClient *)self _sendMessage:v15 type:5 sendTimeout:15 responseTimeout:60 queueOneID:0 priority:300 responseBlock:v14];
}

- (void)_handleConnectToServiceResponse:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSConnectToServiceResponseMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSConnectToServiceResponseMessage *)v5 initWithData:v6];

  v8 = [RMSControlInterface alloc];
  v9 = [(RMSConnectToServiceResponseMessage *)v7 controlInterface];
  v10 = [(RMSControlInterface *)v8 initWithProtobuf:v9];

  v11 = [(RMSConnectToServiceResponseMessage *)v7 sessionIdentifier];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v11;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Received connection response", v15, 8u);
  }

  v13 = [v4 context];
  v14 = [v13 incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeConnectToServiceResponseBlock:v14 responseCode:[(RMSConnectToServiceResponseMessage *)v7 responseCode] responseData:[(RMSConnectToServiceResponseMessage *)v7 responseData] controlInterface:v10 session:v11];
}

- (void)_handlePairingChallengeRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSPairingChallengeRequestMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSPairingChallengeRequestMessage *)v5 initWithData:v6];

  v8 = [(RMSPairingChallengeRequestMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received pairing challenge request", &buf, 8u);
  }

  v10 = [RMSPairingCredentials alloc];
  v11 = [(RMSPairingChallengeRequestMessage *)v7 pairingCredentials];
  v12 = [(RMSPairingCredentials *)v10 initWithProtobuf:v11];

  objc_initWeak(&buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__RMSIDSClient__handlePairingChallengeRequest___block_invoke;
  v19[3] = &unk_279B08B88;
  v22 = v8;
  objc_copyWeak(&v21, &buf);
  v13 = v4;
  v20 = v13;
  v14 = MEMORY[0x266721590](v19);
  v23[0] = @"RMSIDSClientSessionIdentifierNotificationKey";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v24[0] = v15;
  v24[1] = v12;
  v23[1] = @"RMSIDSClientPairingCredentialsNotificationKey";
  v23[2] = @"RMSIDSClientPairingCompletionHandlerNotificationKey";
  v16 = MEMORY[0x266721590](v14);
  v24[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 postNotificationName:@"RMSIDSClientDidReceivePairingChallengeRequestNotification" object:self userInfo:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&buf);
}

void __47__RMSIDSClient__handlePairingChallengeRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_opt_new();
  [v7 setSessionIdentifier:*(a1 + 48)];
  [v7 setCode:v5];

  [v7 setUserCancelled:a3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendMessage:v7 type:41 timeout:15 queueOneID:0 priority:300 inResponseToProtobuf:*(a1 + 32)];
}

- (void)logoutWithSessionIdentifier:(int)a3
{
  v3 = *&a3;
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v3];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending logout message", v7, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v5 type:7 timeout:*MEMORY[0x277D18828] queueOneID:0 priority:200 responseBlock:0];
}

- (void)_invokeConnectToServiceResponseBlock:(id)a3 responseCode:(int64_t)a4 responseData:(int)a5 controlInterface:(id)a6 session:(int)a7
{
  v7 = *&a7;
  v9 = *&a5;
  v15 = a3;
  v12 = a6;
  v13 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:v15];
  v14 = [v13 responseBlock];

  if (v14)
  {
    (v14)[2](v14, a4, v9, v12, v7);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v15];
}

- (void)_invokeCompletePairingChallengeResponseBlock:(id)a3 responseCode:(int64_t)a4 controlInterface:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:v11];
  v10 = [v9 responseBlock];

  if (v10)
  {
    (v10)[2](v10, a4, v8);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v11];
}

- (void)sendPlaybackCommand:(int64_t)a3 sessionIdentifier:(int)a4
{
  v4 = *&a4;
  v10 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  [v7 setPlaybackCommand:a3];
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending playback command", v9, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v7 type:8 timeout:5 queueOneID:0 priority:300 responseBlock:0];
}

- (void)setVolume:(float)a3 sessionIdentifier:(int)a4
{
  v4 = *&a4;
  v11 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  *&v8 = a3;
  [v7 setVolume:v8];
  [v7 setSessionIdentifier:v4];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending set volume message", v10, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v7 type:20 timeout:5 queueOneID:@"SetVolume" priority:300 responseBlock:0];
}

- (void)pickAudioRouteWithMacAddress:(unint64_t)a3 sessionIdentifier:(int)a4 completionHandler:(id)a5
{
  v5 = *&a4;
  v13 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_opt_new();
  [v9 setMacAddress:a3];
  [v9 setSessionIdentifier:v5];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v5;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pick audio route message", v12, 8u);
  }

  v11 = MEMORY[0x266721590](v8);
  [(RMSIDSClient *)self _sendMessage:v9 type:18 timeout:30 queueOneID:0 priority:200 responseBlock:v11];
}

- (void)_handlePickAudioRouteResponse:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received pick audio route response", v6, 2u);
  }

  [(RMSIDSClient *)self _handleResponseCodeMessage:v4];
}

- (void)seekToPlaybackTime:(int)a3 sessionIdentifier:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v10 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  [v7 setPlaybackTime:v5];
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending seek to playback time message", v9, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v7 type:35 timeout:5 queueOneID:@"SeekToPlaybackTime" priority:300 responseBlock:0];
}

- (void)setLikedState:(int64_t)a3 itemID:(unint64_t)a4 databaseID:(unint64_t)a5 sessionIdentifier:(int)a6 completionHandler:(id)a7
{
  v7 = *&a6;
  v17 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = objc_opt_new();
  [v13 setLikeState:a3];
  [v13 setItemID:a4];
  [v13 setDatabaseID:a5];
  [v13 setSessionIdentifier:v7];
  v14 = RMSLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v7;
    _os_log_impl(&dword_261E98000, v14, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending set like state message", v16, 8u);
  }

  v15 = MEMORY[0x266721590](v12);
  [(RMSIDSClient *)self _sendMessage:v13 type:31 timeout:10 queueOneID:0 priority:200 responseBlock:v15];
}

- (void)_handleSetLikedStateResponse:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received set like state response", v6, 2u);
  }

  [(RMSIDSClient *)self _handleResponseCodeMessage:v4];
}

- (void)addToWishlist:(unint64_t)a3 databaseID:(unint64_t)a4 sessionIdentifier:(int)a5 completionHandler:(id)a6
{
  v6 = *&a5;
  v15 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = objc_opt_new();
  [v11 setItemID:a3];
  [v11 setDatabaseID:a4];
  [v11 setSessionIdentifier:v6];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v6;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending add to wishlist message", v14, 8u);
  }

  v13 = MEMORY[0x266721590](v10);
  [(RMSIDSClient *)self _sendMessage:v11 type:33 timeout:10 queueOneID:0 priority:200 responseBlock:v13];
}

- (void)_handleAddToWishlistResponse:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received add to wishlist response", v6, 2u);
  }

  [(RMSIDSClient *)self _handleResponseCodeMessage:v4];
}

- (void)beginObservingNowPlayingWithSessionIdentifier:(int)a3 completionHandler:(id)a4
{
  v4 = *&a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending begin observing now playing message", v10, 8u);
  }

  v9 = MEMORY[0x266721590](v6);
  [(RMSIDSClient *)self _sendMessage:v7 type:9 timeout:10 queueOneID:0 priority:200 responseBlock:v9];
}

- (void)endObservingNowPlayingWithSessionIdentifier:(int)a3
{
  v3 = *&a3;
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v3];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending end observing now playing message", v7, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v5 type:11 timeout:*MEMORY[0x277D18828] queueOneID:0 priority:200 responseBlock:0];
}

- (void)_handleAudioRoutesDidUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSAudioRoutesDidUpdateMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSAudioRoutesDidUpdateMessage *)v5 initWithData:v6];
  v8 = [(RMSAudioRoutesDidUpdateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing audio routes update", buf, 8u);
  }

  v10 = [(RMSAudioRoutesDidUpdateMessage *)v7 audioRoutes];
  v11 = [RMSAudioRoute audioRoutesFromProtobufs:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v15[1] = @"RMSIDSClientNowPlayingAudioRoutesNotificationKey";
  v16[0] = v12;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 postNotificationName:@"RMSIDSClientNowPlayingAudioRoutesDidUpdateNotification" object:self userInfo:v13];
}

- (void)_handleVolumeDidUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSVolumeDidUpdateMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSVolumeDidUpdateMessage *)v5 initWithData:v6];
  v8 = [(RMSVolumeDidUpdateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing volume update", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v15[1] = @"RMSIDSClientNowPlayingVolumeNotificationKey";
  v16[0] = v10;
  v11 = MEMORY[0x277CCABB0];
  [(RMSVolumeDidUpdateMessage *)v7 volume];
  v12 = [v11 numberWithFloat:?];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 postNotificationName:@"RMSIDSClientNowPlayingVolumeDidUpdateNotification" object:self userInfo:v13];
}

- (void)_handleNowPlayingInfoDidUpdate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSNowPlayingInfoDidUpdateMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSNowPlayingInfoDidUpdateMessage *)v5 initWithData:v6];
  v8 = [RMSNowPlayingInfo alloc];
  v9 = [(RMSNowPlayingInfoDidUpdateMessage *)v7 nowPlayingInfo];
  v10 = [(RMSNowPlayingInfo *)v8 initWithProtobuf:v9];

  v11 = [(RMSNowPlayingInfoDidUpdateMessage *)v7 sessionIdentifier];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = v11;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing info update", buf, 8u);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{v11, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v16[1] = @"RMSIDSClientNowPlayingInfoNotificationKey";
  v17[0] = v13;
  v17[1] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:@"RMSIDSClientNowPlayingInfoDidUpdateNotification" object:self userInfo:v14];
}

- (void)_handleNowPlayingArtworkAvailable:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSNowPlayingArtworkAvailableMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSNowPlayingArtworkAvailableMessage *)v5 initWithData:v6];
  v8 = [(RMSNowPlayingArtworkAvailableMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing artwork update", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14[1] = @"RMSIDSClientNowPlayingArtworkIdentifierKey";
  v15[0] = v10;
  v11 = [(RMSNowPlayingArtworkAvailableMessage *)v7 artworkIdentifier];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:@"RMSIDSClientNowPlayingArtworkDidBecomeAvailableNotification" object:self userInfo:v12];
}

- (void)requestArtworkDataForNowPlayingInfo:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 compressionQuality:(float)a6 completionHandler:(id)a7
{
  v8 = *&a5;
  v9 = *&a4;
  v12 = a7;
  v13 = a3;
  v17 = objc_opt_new();
  v14 = [v13 artworkIdentifier];

  [v17 setArtworkIdentifier:v14];
  [v17 setWidth:v9];
  [v17 setHeight:v8];
  *&v15 = a6;
  [v17 setCompressionQuality:v15];
  v16 = MEMORY[0x266721590](v12);

  [(RMSIDSClient *)self _sendMessage:v17 type:24 timeout:30 queueOneID:@"RequestArtworkData" priority:200 responseBlock:v16];
}

- (void)_handleNowPlayingArtworkDataResponse:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 incomingResponseIdentifier];

  v7 = [v4 data];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v7 length];
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Received artwork data, length=%zd", &v10, 0xCu);
  }

  v9 = [v4 data];
  [(RMSIDSClient *)self _invokeArtworkDataResponseBlock:v6 artworkData:v9];
}

- (void)_invokeArtworkDataResponseBlock:(id)a3 artworkData:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:v9];
  v8 = [v7 responseBlock];

  if (v8)
  {
    (v8)[2](v8, v6);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v9];
}

- (void)sendTouchMoveWithDirection:(int64_t)a3 repeatCount:(unsigned int)a4 sessionIdentifier:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v12 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_new();
  [v9 setDirection:a3];
  [v9 setRepeatCount:v6];
  [v9 setSessionIdentifier:v5];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v5;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending touch move", v11, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v9 type:21 timeout:5 queueOneID:0 priority:300 responseBlock:0];
}

- (void)sendTouchEndWithDirection:(int64_t)a3 repeatCount:(unsigned int)a4 sessionIdentifier:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v12 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_new();
  [v9 setDirection:a3];
  [v9 setRepeatCount:v6];
  [v9 setSessionIdentifier:v5];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v5;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending touch end", v11, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v9 type:22 timeout:5 queueOneID:0 priority:300 responseBlock:0];
}

- (void)sendNavigationCommand:(int64_t)a3 sessionIdentifier:(int)a4
{
  v4 = *&a4;
  v10 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  [v7 setNavigationCommand:a3];
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending navigation command message", v9, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v7 type:23 timeout:5 queueOneID:0 priority:300 responseBlock:0];
}

- (void)beginPairingSessionWithPasscode:(id)a3 appName:(id)a4 deviceName:(id)a5 deviceModel:(id)a6 completionHandler:(id)a7
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = objc_opt_new();
  [v17 setPasscode:v12];
  [v17 setAppName:v16];

  [v17 setDeviceName:v15];
  [v17 setDeviceModel:v14];

  v18 = RMSLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v12;
    _os_log_impl(&dword_261E98000, v18, OS_LOG_TYPE_DEFAULT, "Sending begin pairing message with passcode [%@]", &v20, 0xCu);
  }

  v19 = MEMORY[0x266721590](v13);
  [(RMSIDSClient *)self _sendMessage:v17 type:26 timeout:20 queueOneID:0 priority:200 responseBlock:v19];
}

- (void)endPairingSession:(int)a3
{
  v3 = *&a3;
  v8 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v3];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending end pairing message", v7, 8u);
  }

  [(RMSIDSClient *)self _sendMessage:v5 type:28 timeout:*MEMORY[0x277D18828] queueOneID:0 priority:200 responseBlock:0];
}

- (void)_handleBeginPairingSessionResponse:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSBeginPairingResponseMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSBeginPairingResponseMessage *)v5 initWithData:v6];

  v8 = [(RMSBeginPairingResponseMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received begin pairing response", v12, 8u);
  }

  v10 = [v4 context];
  v11 = [v10 incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeBeginPairingResponseBlock:v11 responseCode:[(RMSBeginPairingResponseMessage *)v7 responseCode] session:v8];
}

- (void)_invokeBeginPairingResponseBlock:(id)a3 responseCode:(int64_t)a4 session:(int)a5
{
  v5 = *&a5;
  v10 = a3;
  v8 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  v9 = [v8 responseBlock];

  if (v9)
  {
    v9[2](v9, a4, v5);
  }

  else if (a4 == 1)
  {
    [(RMSIDSClient *)self endPairingSession:v5];
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v10];
}

- (void)_handlePairingDidSucceed:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSPairingSessionDidPairMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSPairingSessionDidPairMessage *)v5 initWithData:v6];
  v8 = [(RMSPairingSessionDidPairMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received successful pairing", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v16[0] = v10;
  v15[1] = @"RMSIDSClientServiceNetworkNameNotificationKey";
  v11 = [(RMSPairingSessionDidPairMessage *)v7 serviceNetworkName];
  v16[1] = v11;
  v15[2] = @"RMSIDSClientPairingGUIDNotificationKey";
  v12 = [(RMSPairingSessionDidPairMessage *)v7 pairingGUID];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 postNotificationName:@"RMSIDSClientDidPairWithServiceNotification" object:self userInfo:v13];
}

- (void)_handlePairingDidFail:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received failure pairing", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"RMSIDSClientPairingDidFailNotification" object:self userInfo:v11];
}

- (void)unpairService:(id)a3 sessionIdentifier:(int)a4 completionHandler:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v9 protobuf];

  [v10 setService:v11];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = a4;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending unpair service message", v14, 8u);
  }

  v13 = MEMORY[0x266721590](v8);
  [(RMSIDSClient *)self _sendMessage:v10 type:46 timeout:10 queueOneID:0 priority:200 responseBlock:v13];
}

- (void)_handleSessionDidEnd:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received session did end", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"RMSIDSClientSessionDidEndNotification" object:self userInfo:v11];
}

- (void)_handleWifiAvailabilityDidChange:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSWifiAvailabilityDidChangeMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSWifiAvailabilityDidChangeMessage *)v5 initWithData:v6];
  v8 = [(RMSWifiAvailabilityDidChangeMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(RMSWifiAvailabilityDidChangeMessage *)v7 wifiAvailable];
    v11 = @"unavailable";
    if (v10)
    {
      v11 = @"available";
    }

    *buf = 67109378;
    v19 = v8;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received wifi availability message: %@", buf, 0x12u);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v16[1] = @"RMSIDSClientWifiAvailabilityNotificationKey";
  v17[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMSWifiAvailabilityDidChangeMessage wifiAvailable](v7, "wifiAvailable")}];
  v17[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:@"RMSIDSClientWifiAvailabilityDidChangeNotification" object:self userInfo:v14];
}

- (void)_handleDidBeginEditingText:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received did begin editing text", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"RMSIDSClientDidBeginEditingTextNotification" object:self userInfo:v11];
}

- (void)_handleDidEndEditingText:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received did end editing text", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v8, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"RMSIDSClientDidEndEditingTextNotification" object:self userInfo:v11];
}

- (void)sendText:(id)a3 sessionIdentifier:(int)a4 completionHandler:(id)a5
{
  v5 = *&a4;
  v15 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setSessionIdentifier:v5];
  [v10 setText:v9];

  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v5;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending begin observing text input events", v14, 8u);
  }

  v12 = *MEMORY[0x277D18828];
  v13 = MEMORY[0x266721590](v8);

  [(RMSIDSClient *)self _sendMessage:v10 type:44 timeout:v12 queueOneID:0 priority:200 responseBlock:v13];
}

- (void)_handleSendTextResponse:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSendTextResponseMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSSendTextResponseMessage *)v5 initWithData:v6];

  v8 = [(RMSSendTextResponseMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received send text response", v12, 8u);
  }

  v10 = [v4 context];
  v11 = [v10 incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeSetTextResponseBlock:v11 responseCode:[(RMSSendTextResponseMessage *)v7 responseCode] session:v8];
}

- (void)_invokeSetTextResponseBlock:(id)a3 responseCode:(int64_t)a4 session:(int)a5
{
  v9 = a3;
  v7 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  v8 = [v7 responseBlock];

  if (v8)
  {
    v8[2](v8, a4);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v9];
}

- (void)_handleUnpairServiceResponse:(id)a3
{
  v4 = a3;
  v5 = [RMSResponseCodeMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSResponseCodeMessage *)v5 initWithData:v6];

  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Received unpair service response", v11, 2u);
  }

  v9 = [v4 context];
  v10 = [v9 incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeResponseCodeResponseBlock:v10 responseCode:[(RMSResponseCodeMessage *)v7 responseCode]];
}

- (void)_sendMessage:(id)a3 type:(unsigned __int16)a4 sendTimeout:(int)a5 responseTimeout:(int)a6 queueOneID:(id)a7 priority:(int64_t)a8 inResponseToProtobuf:(id)a9 responseBlock:(id)a10
{
  v16 = a3;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  idsOutgoingQueue = self->_idsOutgoingQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke;
  v25[3] = &unk_279B08BD8;
  v34 = a4;
  v26 = v16;
  v27 = v18;
  v28 = v19;
  v29 = v17;
  v30 = self;
  v31 = a8;
  v32 = a5;
  v33 = a6;
  v21 = v17;
  v22 = v19;
  v23 = v18;
  v24 = v16;
  dispatch_async(idsOutgoingQueue, v25);
}

void __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke(uint64_t a1)
{
  v38[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D189F0]);
  v3 = [*(a1 + 32) data];
  v4 = [v2 initWithProtobufData:v3 type:*(a1 + 88) isResponse:*(a1 + 40) != 0];

  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v37[0] = *MEMORY[0x277D18650];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 80)];
  v7 = *MEMORY[0x277D185A0];
  v38[0] = v6;
  v38[1] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277D185F0];
  v37[1] = v7;
  v37[2] = v8;
  v38[2] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v10 = [v5 initWithDictionary:v9];

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v11 context];
    v13 = [v12 outgoingResponseIdentifier];
    [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  if (*(a1 + 48))
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185B0]];
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  if (*(a1 + 72) == 300)
  {
    v15 = MEMORY[0x277CBEC38];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  v16 = *(*(a1 + 64) + 16);
  v17 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v18 = *(a1 + 72);
  v31 = 0;
  v32 = 0;
  v19 = [v16 sendProtobuf:v4 toDestinations:v17 priority:v18 options:v10 identifier:&v32 error:&v31];
  v20 = v32;
  v21 = v31;

  v22 = RMSLogger();
  v23 = v22;
  if (!v19 || v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke_cold_1((a1 + 88), v21, v23);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromRMSMessageType(*(a1 + 88));
    *buf = 138412546;
    v34 = v24;
    v35 = 2112;
    v36 = v20;
    _os_log_impl(&dword_261E98000, v23, OS_LOG_TYPE_DEFAULT, "Sent message of type: %@, IDS identifier: %@", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    v23 = objc_opt_new();
    [v23 setMessageType:*(a1 + 88)];
    v25 = [*(a1 + 48) copy];
    [v23 setResponseBlock:v25];

    [*(*(a1 + 64) + 8) setObject:v23 forKeyedSubscript:v20];
    objc_initWeak(buf, *(a1 + 64));
    v26 = dispatch_time(0, 1000000000 * *(a1 + 84));
    v27 = *(*(a1 + 64) + 24);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke_213;
    v28[3] = &unk_279B08BB0;
    objc_copyWeak(&v30, buf);
    v29 = v20;
    dispatch_after(v26, v27, v28);

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
LABEL_17:
  }
}

void __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke_213(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTimeoutForMessageWithIdentifier:*(a1 + 32)];
}

- (void)_handleResponseCodeMessage:(id)a3
{
  v4 = a3;
  v5 = [RMSResponseCodeMessage alloc];
  v6 = [v4 data];
  v9 = [(RMSResponseCodeMessage *)v5 initWithData:v6];

  v7 = [v4 context];

  v8 = [v7 incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeResponseCodeResponseBlock:v8 responseCode:[(RMSResponseCodeMessage *)v9 responseCode]];
}

- (void)_invokeResponseCodeResponseBlock:(id)a3 responseCode:(int64_t)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  v7 = [v6 responseBlock];

  if (v7)
  {
    v7[2](v7, a4);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v8];
}

- (void)_updateCompanionAvailability
{
  v3 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RMSIDSClient__updateCompanionAvailability__block_invoke;
  block[3] = &unk_279B088E8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __44__RMSIDSClient__updateCompanionAvailability__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isCompanionAvailable];
  if (*(*(a1 + 32) + 40) != v2)
  {
    v3 = v2;
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"unavailable";
      if (v3)
      {
        v5 = @"avalable";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Companion availability changed: %@", &v7, 0xCu);
    }

    *(*(a1 + 32) + 40) = v3;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"RMSIDSClientCompanionAvailabilityDidChangeNotification" object:*(a1 + 32)];
  }
}

- (BOOL)_isCompanionAvailable
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(RMSIDSClient *)self _isInMinimalConfiguration])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    [(IDSService *)self->_idsService devices];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v12 = 0u;
    v3 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if ([v7 isDefaultPairedDevice] && (objc_msgSend(v7, "isConnected") & 1) != 0)
          {
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v3;
}

- (BOOL)_isInMinimalConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.rootrobot"];
  v3 = [v2 stringForKey:@"configuration"];
  v4 = [@"minimal" isEqualToString:v3];

  return v4;
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v7 = a5;
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [RMSIDSClient service:v7 account:v8 incomingUnhandledProtobuf:? fromID:? context:?];
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a7;
  if (!a6)
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "IDS message %@ failed with error: %@", &v13, 0x16u);
    }

    [(RMSIDSClient *)self _handleTimeoutForMessageWithIdentifier:v10];
  }
}

- (void)_handleTimeoutForMessageWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = RMSLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromRMSMessageType([v5 messageType]);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "Handling timeout for message type: %@", &v11, 0xCu);
    }

    v8 = [v5 messageType];
    if (v8 <= 0x21)
    {
      if (((1 << v8) & 0x280050200) != 0)
      {
        [(RMSIDSClient *)self _invokeResponseCodeResponseBlock:v4 responseCode:-3];
        goto LABEL_7;
      }

      if (v8 == 25)
      {
        [(RMSIDSClient *)self _invokeArtworkDataResponseBlock:v4 artworkData:0];
        goto LABEL_7;
      }

      if (v8 == 26)
      {
        [(RMSIDSClient *)self _invokeBeginPairingResponseBlock:v4 responseCode:-3 session:0];
        goto LABEL_7;
      }
    }

    if (v8 == 5)
    {
      [(RMSIDSClient *)self _invokeConnectToServiceResponseBlock:v4 responseCode:-3 responseData:0 controlInterface:0 session:0];
    }

    else if (v8 == 1)
    {
      [(RMSIDSClient *)self _invokeBeginDiscoveryResponseBlock:v4 success:0 session:0];
    }

    else
    {
      v9 = RMSLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = NSStringFromRMSMessageType([v5 messageType]);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "No known timeout handler for message type %@", &v11, 0xCu);
      }

      [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:v4];
    }
  }

LABEL_7:
}

void __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke_cold_1(unsigned __int16 *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromRMSMessageType(*a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_261E98000, a3, OS_LOG_TYPE_ERROR, "Error sending message of type %@: %@", &v6, 0x16u);
}

- (void)service:(void *)a1 account:(NSObject *)a2 incomingUnhandledProtobuf:fromID:context:.cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 type];
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Unhandled message type: %d", v3, 8u);
}

@end