@interface RMSIDSClient
+ (id)sharedClient;
- (BOOL)_isCompanionAvailable;
- (BOOL)_isInMinimalConfiguration;
- (RMSIDSClient)init;
- (void)_handleAddToWishlistResponse:(id)response;
- (void)_handleAudioRoutesDidUpdate:(id)update;
- (void)_handleAvailableServicesDidUpdate:(id)update;
- (void)_handleBeginDiscoverySessionResponse:(id)response;
- (void)_handleBeginPairingSessionResponse:(id)response;
- (void)_handleConnectToServiceResponse:(id)response;
- (void)_handleDidBeginEditingText:(id)text;
- (void)_handleDidEndEditingText:(id)text;
- (void)_handleNowPlayingArtworkAvailable:(id)available;
- (void)_handleNowPlayingArtworkDataResponse:(id)response;
- (void)_handleNowPlayingInfoDidUpdate:(id)update;
- (void)_handlePairingChallengeRequest:(id)request;
- (void)_handlePairingDidFail:(id)fail;
- (void)_handlePairingDidSucceed:(id)succeed;
- (void)_handlePickAudioRouteResponse:(id)response;
- (void)_handleResponseCodeMessage:(id)message;
- (void)_handleSendTextResponse:(id)response;
- (void)_handleSessionDidEnd:(id)end;
- (void)_handleSetLikedStateResponse:(id)response;
- (void)_handleTimeoutForMessageWithIdentifier:(id)identifier;
- (void)_handleUnpairServiceResponse:(id)response;
- (void)_handleVolumeDidUpdate:(id)update;
- (void)_handleWifiAvailabilityDidChange:(id)change;
- (void)_invokeArtworkDataResponseBlock:(id)block artworkData:(id)data;
- (void)_invokeBeginDiscoveryResponseBlock:(id)block success:(BOOL)success session:(int)session;
- (void)_invokeBeginPairingResponseBlock:(id)block responseCode:(int64_t)code session:(int)session;
- (void)_invokeCompletePairingChallengeResponseBlock:(id)block responseCode:(int64_t)code controlInterface:(id)interface;
- (void)_invokeConnectToServiceResponseBlock:(id)block responseCode:(int64_t)code responseData:(int)data controlInterface:(id)interface session:(int)session;
- (void)_invokeResponseCodeResponseBlock:(id)block responseCode:(int64_t)code;
- (void)_invokeSetTextResponseBlock:(id)block responseCode:(int64_t)code session:(int)session;
- (void)_sendMessage:(id)message type:(unsigned __int16)type sendTimeout:(int)timeout responseTimeout:(int)responseTimeout queueOneID:(id)d priority:(int64_t)priority inResponseToProtobuf:(id)protobuf responseBlock:(id)self0;
- (void)_updateCompanionAvailability;
- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d sessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)beginDiscoverySessionWithDiscoveryTypes:(int)types pairedNetworkNames:(id)names completionHandler:(id)handler;
- (void)beginObservingNowPlayingWithSessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)beginPairingSessionWithPasscode:(id)passcode appName:(id)name deviceName:(id)deviceName deviceModel:(id)model completionHandler:(id)handler;
- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler;
- (void)endDiscoverySession:(int)session;
- (void)endObservingNowPlayingWithSessionIdentifier:(int)identifier;
- (void)endPairingSession:(int)session;
- (void)logoutWithSessionIdentifier:(int)identifier;
- (void)pickAudioRouteWithMacAddress:(unint64_t)address sessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)requestArtworkDataForNowPlayingInfo:(id)info width:(unsigned int)width height:(unsigned int)height compressionQuality:(float)quality completionHandler:(id)handler;
- (void)seekToPlaybackTime:(int)time sessionIdentifier:(int)identifier;
- (void)sendHeartbeatWithSessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)sendNavigationCommand:(int64_t)command sessionIdentifier:(int)identifier;
- (void)sendPlaybackCommand:(int64_t)command sessionIdentifier:(int)identifier;
- (void)sendText:(id)text sessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(unsigned int)count sessionIdentifier:(int)identifier;
- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count sessionIdentifier:(int)identifier;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD sessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)setVolume:(float)volume sessionIdentifier:(int)identifier;
- (void)unpairService:(id)service sessionIdentifier:(int)identifier completionHandler:(id)handler;
- (void)updatePairedNetworkNames:(id)names sessionIdentifier:(int)identifier;
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

- (void)beginDiscoverySessionWithDiscoveryTypes:(int)types pairedNetworkNames:(id)names completionHandler:(id)handler
{
  v6 = *&types;
  handlerCopy = handler;
  namesCopy = names;
  v12 = objc_opt_new();
  [v12 setDiscoveryTypes:v6];
  v10 = [namesCopy mutableCopy];

  [v12 setPairedNetworkNames:v10];
  [v12 setHasPairedNetworkNames:1];
  v11 = MEMORY[0x266721590](handlerCopy);

  [(RMSIDSClient *)self _sendMessage:v12 type:1 timeout:10 queueOneID:0 priority:200 responseBlock:v11];
}

- (void)updatePairedNetworkNames:(id)names sessionIdentifier:(int)identifier
{
  v4 = *&identifier;
  namesCopy = names;
  v8 = objc_opt_new();
  [v8 setSessionIdentifier:v4];
  v7 = [namesCopy mutableCopy];

  [v8 setPairedNetworkNames:v7];
  [(RMSIDSClient *)self _sendMessage:v8 type:39 timeout:10 queueOneID:@"UpdatePairedNetworkNames" priority:200 responseBlock:0];
}

- (void)_handleBeginDiscoverySessionResponse:(id)response
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [RMSSessionMessage alloc];
  data = [responseCopy data];
  v7 = [(RMSSessionMessage *)v5 initWithData:data];

  context = [responseCopy context];

  incomingResponseIdentifier = [context incomingResponseIdentifier];

  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Received begin discovery response", v12, 8u);
  }

  [(RMSIDSClient *)self _invokeBeginDiscoveryResponseBlock:incomingResponseIdentifier success:1 session:sessionIdentifier];
}

- (void)_invokeBeginDiscoveryResponseBlock:(id)block success:(BOOL)success session:(int)session
{
  v5 = *&session;
  successCopy = success;
  blockCopy = block;
  v8 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  responseBlock = [v8 responseBlock];

  if (responseBlock)
  {
    responseBlock[2](responseBlock, successCopy, v5);
  }

  else if (successCopy)
  {
    [(RMSIDSClient *)self endDiscoverySession:v5];
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
}

- (void)_handleAvailableServicesDidUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [RMSAvailableServicesDidUpdateMessage alloc];
  data = [updateCopy data];

  v7 = [(RMSAvailableServicesDidUpdateMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSAvailableServicesDidUpdateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received discovery available services update", v16, 8u);
  }

  v10 = objc_opt_new();
  v11 = [MEMORY[0x277CCABB0] numberWithInt:sessionIdentifier];
  [v10 setObject:v11 forKeyedSubscript:@"RMSIDSClientSessionIdentifierNotificationKey"];

  services = [(RMSAvailableServicesDidUpdateMessage *)v7 services];

  if (services)
  {
    services2 = [(RMSAvailableServicesDidUpdateMessage *)v7 services];
    v14 = [RMSService servicesFromProtobufs:services2];

    [v10 setObject:v14 forKeyedSubscript:@"RMSIDSClientAvailableServicesNotificationKey"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientAvailableServicesDidUpdateNotification" object:self userInfo:v10];
}

- (void)endDiscoverySession:(int)session
{
  v3 = *&session;
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

- (void)sendHeartbeatWithSessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v4 = *&identifier;
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_opt_new();
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending heartbeat message", v10, 8u);
  }

  v9 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v7 type:16 timeout:20 queueOneID:0 priority:300 responseBlock:v9];
}

- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler
{
  pairingCopy = pairing;
  handlerCopy = handler;
  dCopy = d;
  serviceCopy = service;
  v15 = objc_opt_new();
  protobuf = [serviceCopy protobuf];

  [v15 setService:protobuf];
  [v15 setPairingGUID:dCopy];

  [v15 setAllowPairing:pairingCopy];
  v14 = MEMORY[0x266721590](handlerCopy);

  [(RMSIDSClient *)self _sendMessage:v15 type:5 sendTimeout:15 responseTimeout:60 queueOneID:0 priority:300 responseBlock:v14];
}

- (void)_handleConnectToServiceResponse:(id)response
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [RMSConnectToServiceResponseMessage alloc];
  data = [responseCopy data];
  v7 = [(RMSConnectToServiceResponseMessage *)v5 initWithData:data];

  v8 = [RMSControlInterface alloc];
  controlInterface = [(RMSConnectToServiceResponseMessage *)v7 controlInterface];
  v10 = [(RMSControlInterface *)v8 initWithProtobuf:controlInterface];

  sessionIdentifier = [(RMSConnectToServiceResponseMessage *)v7 sessionIdentifier];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Received connection response", v15, 8u);
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeConnectToServiceResponseBlock:incomingResponseIdentifier responseCode:[(RMSConnectToServiceResponseMessage *)v7 responseCode] responseData:[(RMSConnectToServiceResponseMessage *)v7 responseData] controlInterface:v10 session:sessionIdentifier];
}

- (void)_handlePairingChallengeRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [RMSPairingChallengeRequestMessage alloc];
  data = [requestCopy data];
  v7 = [(RMSPairingChallengeRequestMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSPairingChallengeRequestMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received pairing challenge request", &buf, 8u);
  }

  v10 = [RMSPairingCredentials alloc];
  pairingCredentials = [(RMSPairingChallengeRequestMessage *)v7 pairingCredentials];
  v12 = [(RMSPairingCredentials *)v10 initWithProtobuf:pairingCredentials];

  objc_initWeak(&buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__RMSIDSClient__handlePairingChallengeRequest___block_invoke;
  v19[3] = &unk_279B08B88;
  v22 = sessionIdentifier;
  objc_copyWeak(&v21, &buf);
  v13 = requestCopy;
  v20 = v13;
  v14 = MEMORY[0x266721590](v19);
  v23[0] = @"RMSIDSClientSessionIdentifierNotificationKey";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:sessionIdentifier];
  v24[0] = v15;
  v24[1] = v12;
  v23[1] = @"RMSIDSClientPairingCredentialsNotificationKey";
  v23[2] = @"RMSIDSClientPairingCompletionHandlerNotificationKey";
  v16 = MEMORY[0x266721590](v14);
  v24[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientDidReceivePairingChallengeRequestNotification" object:self userInfo:v17];

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

- (void)logoutWithSessionIdentifier:(int)identifier
{
  v3 = *&identifier;
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

- (void)_invokeConnectToServiceResponseBlock:(id)block responseCode:(int64_t)code responseData:(int)data controlInterface:(id)interface session:(int)session
{
  v7 = *&session;
  v9 = *&data;
  blockCopy = block;
  interfaceCopy = interface;
  v13 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:blockCopy];
  responseBlock = [v13 responseBlock];

  if (responseBlock)
  {
    (responseBlock)[2](responseBlock, code, v9, interfaceCopy, v7);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
}

- (void)_invokeCompletePairingChallengeResponseBlock:(id)block responseCode:(int64_t)code controlInterface:(id)interface
{
  blockCopy = block;
  interfaceCopy = interface;
  v9 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:blockCopy];
  responseBlock = [v9 responseBlock];

  if (responseBlock)
  {
    (responseBlock)[2](responseBlock, code, interfaceCopy);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
}

- (void)sendPlaybackCommand:(int64_t)command sessionIdentifier:(int)identifier
{
  v4 = *&identifier;
  v10 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  [v7 setPlaybackCommand:command];
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

- (void)setVolume:(float)volume sessionIdentifier:(int)identifier
{
  v4 = *&identifier;
  v11 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  *&v8 = volume;
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

- (void)pickAudioRouteWithMacAddress:(unint64_t)address sessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v5 = *&identifier;
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = objc_opt_new();
  [v9 setMacAddress:address];
  [v9 setSessionIdentifier:v5];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v5;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pick audio route message", v12, 8u);
  }

  v11 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v9 type:18 timeout:30 queueOneID:0 priority:200 responseBlock:v11];
}

- (void)_handlePickAudioRouteResponse:(id)response
{
  responseCopy = response;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received pick audio route response", v6, 2u);
  }

  [(RMSIDSClient *)self _handleResponseCodeMessage:responseCopy];
}

- (void)seekToPlaybackTime:(int)time sessionIdentifier:(int)identifier
{
  v4 = *&identifier;
  v5 = *&time;
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

- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD sessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v7 = *&identifier;
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v13 = objc_opt_new();
  [v13 setLikeState:state];
  [v13 setItemID:d];
  [v13 setDatabaseID:iD];
  [v13 setSessionIdentifier:v7];
  v14 = RMSLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v7;
    _os_log_impl(&dword_261E98000, v14, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending set like state message", v16, 8u);
  }

  v15 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v13 type:31 timeout:10 queueOneID:0 priority:200 responseBlock:v15];
}

- (void)_handleSetLikedStateResponse:(id)response
{
  responseCopy = response;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received set like state response", v6, 2u);
  }

  [(RMSIDSClient *)self _handleResponseCodeMessage:responseCopy];
}

- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d sessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v6 = *&identifier;
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v11 = objc_opt_new();
  [v11 setItemID:wishlist];
  [v11 setDatabaseID:d];
  [v11 setSessionIdentifier:v6];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v6;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending add to wishlist message", v14, 8u);
  }

  v13 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v11 type:33 timeout:10 queueOneID:0 priority:200 responseBlock:v13];
}

- (void)_handleAddToWishlistResponse:(id)response
{
  responseCopy = response;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received add to wishlist response", v6, 2u);
  }

  [(RMSIDSClient *)self _handleResponseCodeMessage:responseCopy];
}

- (void)beginObservingNowPlayingWithSessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v4 = *&identifier;
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_opt_new();
  [v7 setSessionIdentifier:v4];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending begin observing now playing message", v10, 8u);
  }

  v9 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v7 type:9 timeout:10 queueOneID:0 priority:200 responseBlock:v9];
}

- (void)endObservingNowPlayingWithSessionIdentifier:(int)identifier
{
  v3 = *&identifier;
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

- (void)_handleAudioRoutesDidUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [RMSAudioRoutesDidUpdateMessage alloc];
  data = [updateCopy data];

  v7 = [(RMSAudioRoutesDidUpdateMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSAudioRoutesDidUpdateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing audio routes update", buf, 8u);
  }

  audioRoutes = [(RMSAudioRoutesDidUpdateMessage *)v7 audioRoutes];
  v11 = [RMSAudioRoute audioRoutesFromProtobufs:audioRoutes];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v15[1] = @"RMSIDSClientNowPlayingAudioRoutesNotificationKey";
  v16[0] = v12;
  v16[1] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientNowPlayingAudioRoutesDidUpdateNotification" object:self userInfo:v13];
}

- (void)_handleVolumeDidUpdate:(id)update
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [RMSVolumeDidUpdateMessage alloc];
  data = [updateCopy data];

  v7 = [(RMSVolumeDidUpdateMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSVolumeDidUpdateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing volume update", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v15[1] = @"RMSIDSClientNowPlayingVolumeNotificationKey";
  v16[0] = v10;
  v11 = MEMORY[0x277CCABB0];
  [(RMSVolumeDidUpdateMessage *)v7 volume];
  v12 = [v11 numberWithFloat:?];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientNowPlayingVolumeDidUpdateNotification" object:self userInfo:v13];
}

- (void)_handleNowPlayingInfoDidUpdate:(id)update
{
  v20 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [RMSNowPlayingInfoDidUpdateMessage alloc];
  data = [updateCopy data];

  v7 = [(RMSNowPlayingInfoDidUpdateMessage *)v5 initWithData:data];
  v8 = [RMSNowPlayingInfo alloc];
  nowPlayingInfo = [(RMSNowPlayingInfoDidUpdateMessage *)v7 nowPlayingInfo];
  v10 = [(RMSNowPlayingInfo *)v8 initWithProtobuf:nowPlayingInfo];

  sessionIdentifier = [(RMSNowPlayingInfoDidUpdateMessage *)v7 sessionIdentifier];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing info update", buf, 8u);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v16[1] = @"RMSIDSClientNowPlayingInfoNotificationKey";
  v17[0] = v13;
  v17[1] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientNowPlayingInfoDidUpdateNotification" object:self userInfo:v14];
}

- (void)_handleNowPlayingArtworkAvailable:(id)available
{
  v18 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  v5 = [RMSNowPlayingArtworkAvailableMessage alloc];
  data = [availableCopy data];

  v7 = [(RMSNowPlayingArtworkAvailableMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSNowPlayingArtworkAvailableMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received now playing artwork update", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14[1] = @"RMSIDSClientNowPlayingArtworkIdentifierKey";
  v15[0] = v10;
  artworkIdentifier = [(RMSNowPlayingArtworkAvailableMessage *)v7 artworkIdentifier];
  v15[1] = artworkIdentifier;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientNowPlayingArtworkDidBecomeAvailableNotification" object:self userInfo:v12];
}

- (void)requestArtworkDataForNowPlayingInfo:(id)info width:(unsigned int)width height:(unsigned int)height compressionQuality:(float)quality completionHandler:(id)handler
{
  v8 = *&height;
  v9 = *&width;
  handlerCopy = handler;
  infoCopy = info;
  v17 = objc_opt_new();
  artworkIdentifier = [infoCopy artworkIdentifier];

  [v17 setArtworkIdentifier:artworkIdentifier];
  [v17 setWidth:v9];
  [v17 setHeight:v8];
  *&v15 = quality;
  [v17 setCompressionQuality:v15];
  v16 = MEMORY[0x266721590](handlerCopy);

  [(RMSIDSClient *)self _sendMessage:v17 type:24 timeout:30 queueOneID:@"RequestArtworkData" priority:200 responseBlock:v16];
}

- (void)_handleNowPlayingArtworkDataResponse:(id)response
{
  v12 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  data = [responseCopy data];
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [data length];
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Received artwork data, length=%zd", &v10, 0xCu);
  }

  data2 = [responseCopy data];
  [(RMSIDSClient *)self _invokeArtworkDataResponseBlock:incomingResponseIdentifier artworkData:data2];
}

- (void)_invokeArtworkDataResponseBlock:(id)block artworkData:(id)data
{
  blockCopy = block;
  dataCopy = data;
  v7 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:blockCopy];
  responseBlock = [v7 responseBlock];

  if (responseBlock)
  {
    (responseBlock)[2](responseBlock, dataCopy);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
}

- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count sessionIdentifier:(int)identifier
{
  v5 = *&identifier;
  v6 = *&count;
  v12 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_new();
  [v9 setDirection:direction];
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

- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(unsigned int)count sessionIdentifier:(int)identifier
{
  v5 = *&identifier;
  v6 = *&count;
  v12 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_new();
  [v9 setDirection:direction];
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

- (void)sendNavigationCommand:(int64_t)command sessionIdentifier:(int)identifier
{
  v4 = *&identifier;
  v10 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  [v7 setNavigationCommand:command];
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

- (void)beginPairingSessionWithPasscode:(id)passcode appName:(id)name deviceName:(id)deviceName deviceModel:(id)model completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  handlerCopy = handler;
  modelCopy = model;
  deviceNameCopy = deviceName;
  nameCopy = name;
  v17 = objc_opt_new();
  [v17 setPasscode:passcodeCopy];
  [v17 setAppName:nameCopy];

  [v17 setDeviceName:deviceNameCopy];
  [v17 setDeviceModel:modelCopy];

  v18 = RMSLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = passcodeCopy;
    _os_log_impl(&dword_261E98000, v18, OS_LOG_TYPE_DEFAULT, "Sending begin pairing message with passcode [%@]", &v20, 0xCu);
  }

  v19 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v17 type:26 timeout:20 queueOneID:0 priority:200 responseBlock:v19];
}

- (void)endPairingSession:(int)session
{
  v3 = *&session;
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

- (void)_handleBeginPairingSessionResponse:(id)response
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [RMSBeginPairingResponseMessage alloc];
  data = [responseCopy data];
  v7 = [(RMSBeginPairingResponseMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSBeginPairingResponseMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received begin pairing response", v12, 8u);
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeBeginPairingResponseBlock:incomingResponseIdentifier responseCode:[(RMSBeginPairingResponseMessage *)v7 responseCode] session:sessionIdentifier];
}

- (void)_invokeBeginPairingResponseBlock:(id)block responseCode:(int64_t)code session:(int)session
{
  v5 = *&session;
  blockCopy = block;
  v8 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  responseBlock = [v8 responseBlock];

  if (responseBlock)
  {
    responseBlock[2](responseBlock, code, v5);
  }

  else if (code == 1)
  {
    [(RMSIDSClient *)self endPairingSession:v5];
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
}

- (void)_handlePairingDidSucceed:(id)succeed
{
  v19 = *MEMORY[0x277D85DE8];
  succeedCopy = succeed;
  v5 = [RMSPairingSessionDidPairMessage alloc];
  data = [succeedCopy data];

  v7 = [(RMSPairingSessionDidPairMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSPairingSessionDidPairMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received successful pairing", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v16[0] = v10;
  v15[1] = @"RMSIDSClientServiceNetworkNameNotificationKey";
  serviceNetworkName = [(RMSPairingSessionDidPairMessage *)v7 serviceNetworkName];
  v16[1] = serviceNetworkName;
  v15[2] = @"RMSIDSClientPairingGUIDNotificationKey";
  pairingGUID = [(RMSPairingSessionDidPairMessage *)v7 pairingGUID];
  v16[2] = pairingGUID;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientDidPairWithServiceNotification" object:self userInfo:v13];
}

- (void)_handlePairingDidFail:(id)fail
{
  v17 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  v5 = [RMSSessionMessage alloc];
  data = [failCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received failure pairing", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientPairingDidFailNotification" object:self userInfo:v11];
}

- (void)unpairService:(id)service sessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  serviceCopy = service;
  v10 = objc_opt_new();
  protobuf = [serviceCopy protobuf];

  [v10 setService:protobuf];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = identifier;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending unpair service message", v14, 8u);
  }

  v13 = MEMORY[0x266721590](handlerCopy);
  [(RMSIDSClient *)self _sendMessage:v10 type:46 timeout:10 queueOneID:0 priority:200 responseBlock:v13];
}

- (void)_handleSessionDidEnd:(id)end
{
  v17 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = [RMSSessionMessage alloc];
  data = [endCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received session did end", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientSessionDidEndNotification" object:self userInfo:v11];
}

- (void)_handleWifiAvailabilityDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [RMSWifiAvailabilityDidChangeMessage alloc];
  data = [changeCopy data];

  v7 = [(RMSWifiAvailabilityDidChangeMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSWifiAvailabilityDidChangeMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    wifiAvailable = [(RMSWifiAvailabilityDidChangeMessage *)v7 wifiAvailable];
    v11 = @"unavailable";
    if (wifiAvailable)
    {
      v11 = @"available";
    }

    *buf = 67109378;
    v19 = sessionIdentifier;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received wifi availability message: %@", buf, 0x12u);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v16[1] = @"RMSIDSClientWifiAvailabilityNotificationKey";
  v17[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMSWifiAvailabilityDidChangeMessage wifiAvailable](v7, "wifiAvailable")}];
  v17[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientWifiAvailabilityDidChangeNotification" object:self userInfo:v14];
}

- (void)_handleDidBeginEditingText:(id)text
{
  v17 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = [RMSSessionMessage alloc];
  data = [textCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received did begin editing text", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientDidBeginEditingTextNotification" object:self userInfo:v11];
}

- (void)_handleDidEndEditingText:(id)text
{
  v17 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = [RMSSessionMessage alloc];
  data = [textCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received did end editing text", buf, 8u);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{sessionIdentifier, @"RMSIDSClientSessionIdentifierNotificationKey"}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RMSIDSClientDidEndEditingTextNotification" object:self userInfo:v11];
}

- (void)sendText:(id)text sessionIdentifier:(int)identifier completionHandler:(id)handler
{
  v5 = *&identifier;
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  textCopy = text;
  v10 = objc_opt_new();
  [v10 setSessionIdentifier:v5];
  [v10 setText:textCopy];

  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v5;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending begin observing text input events", v14, 8u);
  }

  v12 = *MEMORY[0x277D18828];
  v13 = MEMORY[0x266721590](handlerCopy);

  [(RMSIDSClient *)self _sendMessage:v10 type:44 timeout:v12 queueOneID:0 priority:200 responseBlock:v13];
}

- (void)_handleSendTextResponse:(id)response
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [RMSSendTextResponseMessage alloc];
  data = [responseCopy data];
  v7 = [(RMSSendTextResponseMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSSendTextResponseMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received send text response", v12, 8u);
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeSetTextResponseBlock:incomingResponseIdentifier responseCode:[(RMSSendTextResponseMessage *)v7 responseCode] session:sessionIdentifier];
}

- (void)_invokeSetTextResponseBlock:(id)block responseCode:(int64_t)code session:(int)session
{
  blockCopy = block;
  v7 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  responseBlock = [v7 responseBlock];

  if (responseBlock)
  {
    responseBlock[2](responseBlock, code);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
}

- (void)_handleUnpairServiceResponse:(id)response
{
  responseCopy = response;
  v5 = [RMSResponseCodeMessage alloc];
  data = [responseCopy data];
  v7 = [(RMSResponseCodeMessage *)v5 initWithData:data];

  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Received unpair service response", v11, 2u);
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeResponseCodeResponseBlock:incomingResponseIdentifier responseCode:[(RMSResponseCodeMessage *)v7 responseCode]];
}

- (void)_sendMessage:(id)message type:(unsigned __int16)type sendTimeout:(int)timeout responseTimeout:(int)responseTimeout queueOneID:(id)d priority:(int64_t)priority inResponseToProtobuf:(id)protobuf responseBlock:(id)self0
{
  messageCopy = message;
  dCopy = d;
  protobufCopy = protobuf;
  blockCopy = block;
  idsOutgoingQueue = self->_idsOutgoingQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __117__RMSIDSClient__sendMessage_type_sendTimeout_responseTimeout_queueOneID_priority_inResponseToProtobuf_responseBlock___block_invoke;
  v25[3] = &unk_279B08BD8;
  typeCopy = type;
  v26 = messageCopy;
  v27 = protobufCopy;
  v28 = blockCopy;
  v29 = dCopy;
  selfCopy = self;
  priorityCopy = priority;
  timeoutCopy = timeout;
  responseTimeoutCopy = responseTimeout;
  v21 = dCopy;
  v22 = blockCopy;
  v23 = protobufCopy;
  v24 = messageCopy;
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

- (void)_handleResponseCodeMessage:(id)message
{
  messageCopy = message;
  v5 = [RMSResponseCodeMessage alloc];
  data = [messageCopy data];
  v9 = [(RMSResponseCodeMessage *)v5 initWithData:data];

  context = [messageCopy context];

  incomingResponseIdentifier = [context incomingResponseIdentifier];

  [(RMSIDSClient *)self _invokeResponseCodeResponseBlock:incomingResponseIdentifier responseCode:[(RMSResponseCodeMessage *)v9 responseCode]];
}

- (void)_invokeResponseCodeResponseBlock:(id)block responseCode:(int64_t)code
{
  blockCopy = block;
  v6 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:?];
  responseBlock = [v6 responseBlock];

  if (responseBlock)
  {
    responseBlock[2](responseBlock, code);
  }

  [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:blockCopy];
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

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [RMSIDSClient service:protobufCopy account:v8 incomingUnhandledProtobuf:? fromID:? context:?];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = identifierCopy;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "IDS message %@ failed with error: %@", &v13, 0x16u);
    }

    [(RMSIDSClient *)self _handleTimeoutForMessageWithIdentifier:identifierCopy];
  }
}

- (void)_handleTimeoutForMessageWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_messageRecords objectForKeyedSubscript:identifierCopy];
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

    messageType = [v5 messageType];
    if (messageType <= 0x21)
    {
      if (((1 << messageType) & 0x280050200) != 0)
      {
        [(RMSIDSClient *)self _invokeResponseCodeResponseBlock:identifierCopy responseCode:-3];
        goto LABEL_7;
      }

      if (messageType == 25)
      {
        [(RMSIDSClient *)self _invokeArtworkDataResponseBlock:identifierCopy artworkData:0];
        goto LABEL_7;
      }

      if (messageType == 26)
      {
        [(RMSIDSClient *)self _invokeBeginPairingResponseBlock:identifierCopy responseCode:-3 session:0];
        goto LABEL_7;
      }
    }

    if (messageType == 5)
    {
      [(RMSIDSClient *)self _invokeConnectToServiceResponseBlock:identifierCopy responseCode:-3 responseData:0 controlInterface:0 session:0];
    }

    else if (messageType == 1)
    {
      [(RMSIDSClient *)self _invokeBeginDiscoveryResponseBlock:identifierCopy success:0 session:0];
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

      [(NSMutableDictionary *)self->_messageRecords removeObjectForKey:identifierCopy];
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