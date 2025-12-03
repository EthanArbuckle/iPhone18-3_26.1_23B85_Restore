@interface RMSIDSServer
+ (id)server;
- (RMSIDSServer)init;
- (void)_cleanupStaleSessions:(id)sessions;
- (void)_handleAddToWishlist:(id)wishlist;
- (void)_handleBeginDiscovery:(id)discovery;
- (void)_handleBeginObservingNowPlaying:(id)playing;
- (void)_handleBeginPairing:(id)pairing;
- (void)_handleConnectToService:(id)service;
- (void)_handleEndDiscovery:(id)discovery;
- (void)_handleEndObservingNowPlaying:(id)playing;
- (void)_handleEndPairing:(id)pairing;
- (void)_handleLogout:(id)logout;
- (void)_handleNavigationCommand:(id)command;
- (void)_handleNowPlayingArtworkRequest:(id)request;
- (void)_handlePairingChallengeResponse:(id)response;
- (void)_handlePickAudioRoute:(id)route;
- (void)_handlePlaybackCommand:(id)command;
- (void)_handleSeekToPlaybackTime:(id)time;
- (void)_handleSendText:(id)text;
- (void)_handleSessionHeartbeat:(id)heartbeat;
- (void)_handleSetLikeState:(id)state;
- (void)_handleSetVolume:(id)volume;
- (void)_handleTouchEnd:(id)end;
- (void)_handleTouchMove:(id)move;
- (void)_handleUnpairService:(id)service;
- (void)_handleUpdatePairedNetworkNames:(id)names;
- (void)_sendData:(id)data type:(unsigned __int16)type priority:(int64_t)priority timeout:(int)timeout queueOneID:(id)d inResponseTo:(id)to;
- (void)controlSession:(id)session artworkDataDidBecomeAvailable:(id)available identifier:(id)identifier;
- (void)controlSession:(id)session didReceivePairingChallengeRequestWithCredentials:(id)credentials completionHandler:(id)handler;
- (void)controlSession:(id)session didUpdateAudioRoutes:(id)routes;
- (void)controlSession:(id)session didUpdateNowPlayingInfo:(id)info;
- (void)controlSession:(id)session didUpdateVolume:(float)volume;
- (void)controlSessionDidBeginEditingText:(id)text;
- (void)controlSessionDidEnd:(id)end;
- (void)controlSessionDidEndEditingText:(id)text;
- (void)discoverySessionDidUpdateAvailableServices:(id)services;
- (void)discoverySessionNetworkAvailabilityDidChange:(id)change;
- (void)pairingSession:(id)session didPairWithServiceNetworkName:(id)name pairingGUID:(id)d;
- (void)pairingSessionDidFail:(id)fail;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)sessionManager:(id)manager sessionDidTimeout:(id)timeout withIdentifier:(int)identifier;
@end

@implementation RMSIDSServer

+ (id)server
{
  if (server_onceToken != -1)
  {
    +[RMSIDSServer server];
  }

  v3 = server_server;

  return v3;
}

uint64_t __22__RMSIDSServer_server__block_invoke()
{
  server_server = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RMSIDSServer)init
{
  v17.receiver = self;
  v17.super_class = RMSIDSServer;
  v2 = [(RMSIDSServer *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sessionManager = v2->_sessionManager;
    v2->_sessionManager = v3;

    [(RMSSessionManager *)v2->_sessionManager setDelegate:v2];
    v5 = objc_opt_new();
    nowPlayingSessions = v2->_nowPlayingSessions;
    v2->_nowPlayingSessions = v5;

    v7 = objc_opt_new();
    pairingSessions = v2->_pairingSessions;
    v2->_pairingSessions = v7;

    v9 = objc_opt_new();
    touchRemoteSessions = v2->_touchRemoteSessions;
    v2->_touchRemoteSessions = v9;

    persistedSessionIdentifiers = [(RMSSessionManager *)v2->_sessionManager persistedSessionIdentifiers];
    v12 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.remotemediaservices"];
    idsService = v2->_idsService;
    v2->_idsService = v12;

    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSessionHeartbeat_ forIncomingRequestsOfType:16];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleBeginDiscovery_ forIncomingRequestsOfType:1];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleEndDiscovery_ forIncomingRequestsOfType:3];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleUnpairService_ forIncomingRequestsOfType:46];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleConnectToService_ forIncomingRequestsOfType:5];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleLogout_ forIncomingRequestsOfType:7];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePlaybackCommand_ forIncomingRequestsOfType:8];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePickAudioRoute_ forIncomingRequestsOfType:18];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSetVolume_ forIncomingRequestsOfType:20];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleTouchMove_ forIncomingRequestsOfType:21];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleTouchEnd_ forIncomingRequestsOfType:22];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleNavigationCommand_ forIncomingRequestsOfType:23];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleBeginObservingNowPlaying_ forIncomingRequestsOfType:9];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleEndObservingNowPlaying_ forIncomingRequestsOfType:11];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleNowPlayingArtworkRequest_ forIncomingRequestsOfType:24];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleBeginPairing_ forIncomingRequestsOfType:26];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleEndPairing_ forIncomingRequestsOfType:28];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSetLikeState_ forIncomingRequestsOfType:31];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleAddToWishlist_ forIncomingRequestsOfType:33];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSeekToPlaybackTime_ forIncomingRequestsOfType:35];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleUpdatePairedNetworkNames_ forIncomingRequestsOfType:39];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handleSendText_ forIncomingRequestsOfType:44];
    [(IDSService *)v2->_idsService setProtobufAction:sel__handlePairingChallengeResponse_ forIncomingResponsesOfType:41];
    v14 = v2->_idsService;
    v15 = dispatch_get_global_queue(25, 0);
    [(IDSService *)v14 addDelegate:v2 queue:v15];

    [(RMSIDSServer *)v2 _cleanupStaleSessions:persistedSessionIdentifiers];
  }

  return v2;
}

- (void)_handleSessionHeartbeat:(id)heartbeat
{
  v17 = *MEMORY[0x277D85DE8];
  heartbeatCopy = heartbeat;
  v5 = [RMSSessionMessage alloc];
  data = [heartbeatCopy data];
  v7 = [(RMSSessionMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  v10 = objc_opt_new();
  v11 = RMSLogger();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v15 = 67109120;
      v16 = sessionIdentifier;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Received heartbeat", &v15, 8u);
    }

    [(RMSSessionManager *)self->_sessionManager refreshSessionWithIdentifier:sessionIdentifier];
    v13 = 1;
  }

  else
  {
    if (v12)
    {
      v15 = 67109120;
      v16 = sessionIdentifier;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Received heartbeat, but session was no longer active - respond with timeout error", &v15, 8u);
    }

    v13 = 4294967293;
  }

  [v10 setResponseCode:v13];
  data2 = [v10 data];
  [(RMSIDSServer *)self _sendData:data2 type:17 priority:300 timeout:10 queueOneID:0 inResponseTo:heartbeatCopy];
}

- (void)_handleBeginDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to begin discovery session", buf, 2u);
  }

  v6 = [RMSBeginDiscoveryMessage alloc];
  data = [discoveryCopy data];
  v8 = [(RMSBeginDiscoveryMessage *)v6 initWithData:data];

  v9 = +[RMSDiscoverySession localDiscoverySession];
  [v9 setDiscoveryTypes:{-[RMSBeginDiscoveryMessage discoveryTypes](v8, "discoveryTypes")}];
  [v9 setDelegate:self];
  if ([(RMSBeginDiscoveryMessage *)v8 hasPairedNetworkNames])
  {
    v10 = RMSLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Client supplied a list of paired network names, use this for filtering discovery", buf, 2u);
    }

    pairedNetworkNames = [(RMSBeginDiscoveryMessage *)v8 pairedNetworkNames];
    [v9 setPairedNetworkNames:pairedNetworkNames];
  }

  v12 = *&RMSDiscoverySessionTimeout;
  sessionManager = self->_sessionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__RMSIDSServer__handleBeginDiscovery___block_invoke;
  v16[3] = &unk_279B09098;
  v16[4] = self;
  v17 = discoveryCopy;
  v18 = v9;
  v14 = v9;
  v15 = discoveryCopy;
  [(RMSSessionManager *)sessionManager beginSession:v14 timeout:v12 shouldTakePowerAssertion:1 completionHandler:v16];
}

void __38__RMSIDSServer__handleBeginDiscovery___block_invoke(uint64_t a1, int a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__RMSIDSServer__handleBeginDiscovery___block_invoke_2;
  v4[3] = &unk_279B09070;
  v7 = a2;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __38__RMSIDSServer__handleBeginDiscovery___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setSessionIdentifier:*(a1 + 56)];
  v3 = RMSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v9 = 67109120;
    v10 = v4;
    _os_log_impl(&dword_261E98000, v3, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending begin discovery response", &v9, 8u);
  }

  v5 = *(a1 + 32);
  v6 = [v2 data];
  [v5 _sendData:v6 type:2 timeout:10 queueOneID:0 inResponseTo:*(a1 + 40)];

  [*(a1 + 48) beginDiscovery];
  if (([*(a1 + 48) isNetworkAvailable] & 1) == 0)
  {
    v7 = RMSLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      v9 = 67109120;
      v10 = v8;
      _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "[Session %d] Network not available, immediately notify client", &v9, 8u);
    }

    [*(a1 + 32) discoverySessionNetworkAvailabilityDidChange:*(a1 + 48)];
  }
}

- (void)_handleUpdatePairedNetworkNames:(id)names
{
  namesCopy = names;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to update paired network names", v11, 2u);
  }

  v6 = [RMSUpdatePairedNetworNamesMessage alloc];
  data = [namesCopy data];

  v8 = [(RMSUpdatePairedNetworNamesMessage *)v6 initWithData:data];
  v9 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:[(RMSUpdatePairedNetworNamesMessage *)v8 sessionIdentifier]];
  pairedNetworkNames = [(RMSUpdatePairedNetworNamesMessage *)v8 pairedNetworkNames];
  [v9 setPairedNetworkNames:pairedNetworkNames];
}

- (void)_handleEndDiscovery:(id)discovery
{
  v11 = *MEMORY[0x277D85DE8];
  discoveryCopy = discovery;
  v5 = [RMSSessionMessage alloc];
  data = [discoveryCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to end discovery session", v10, 8u);
  }

  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:sessionIdentifier completionHandler:&__block_literal_global_62];
}

void __36__RMSIDSServer__handleEndDiscovery___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__RMSIDSServer__handleEndDiscovery___block_invoke_2;
  block[3] = &unk_279B088E8;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_handleUnpairService:(id)service
{
  serviceCopy = service;
  v5 = [RMSUnpairServiceMessage alloc];
  data = [serviceCopy data];
  v7 = [(RMSUnpairServiceMessage *)v5 initWithData:data];

  v8 = [RMSService alloc];
  service = [(RMSUnpairServiceMessage *)v7 service];
  v10 = [(RMSService *)v8 initWithProtobuf:service];

  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "Received request to unpair service", buf, 2u);
  }

  v12 = +[RMSPairingSession localPairingSession];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__RMSIDSServer__handleUnpairService___block_invoke;
  v14[3] = &unk_279B090E0;
  v14[4] = self;
  v15 = serviceCopy;
  v13 = serviceCopy;
  [v12 unpairService:v10 completionHandler:v14];
}

void __37__RMSIDSServer__handleUnpairService___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setResponseCode:a2];
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromRMSResponseCode(a2);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Sending unpairing result: %@", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = [v4 data];
  [v7 _sendData:v8 type:47 timeout:10 queueOneID:0 inResponseTo:*(a1 + 40)];
}

- (void)_handleConnectToService:(id)service
{
  serviceCopy = service;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to connect to service", buf, 2u);
  }

  v6 = [RMSConnectToServiceMessage alloc];
  data = [serviceCopy data];
  v8 = [(RMSConnectToServiceMessage *)v6 initWithData:data];

  v9 = [RMSService alloc];
  service = [(RMSConnectToServiceMessage *)v8 service];
  v11 = [(RMSService *)v9 initWithProtobuf:service];

  allowPairing = [(RMSConnectToServiceMessage *)v8 allowPairing];
  if ([(RMSService *)v11 isTVRemoteCoreSupported])
  {
    +[RMSControlSession localControlSession];
  }

  else
  {
    +[RMSControlSession daapControlSession];
  }
  v13 = ;
  [v13 setDelegate:self];
  sessionManager = self->_sessionManager;
  v15 = *&RMSControlSessionTimeout;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__RMSIDSServer__handleConnectToService___block_invoke;
  v20[3] = &unk_279B09130;
  v21 = v13;
  v22 = v11;
  v26 = allowPairing;
  v23 = v8;
  selfCopy = self;
  v25 = serviceCopy;
  v16 = serviceCopy;
  v17 = v8;
  v18 = v11;
  v19 = v13;
  [(RMSSessionManager *)sessionManager beginSession:v19 timeout:v15 shouldTakePowerAssertion:0 completionHandler:v20];
}

void __40__RMSIDSServer__handleConnectToService___block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) pairingGUID];
  v7 = *(a1 + 72);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__RMSIDSServer__handleConnectToService___block_invoke_2;
  v9[3] = &unk_279B09108;
  v11 = a2;
  v8 = *(a1 + 64);
  v9[4] = *(a1 + 56);
  v10 = v8;
  [v4 connectToService:v5 pairingGUID:v6 allowPairing:v7 completionHandler:v9];
}

void __40__RMSIDSServer__handleConnectToService___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setResponseCode:a2];
  v9 = [v7 protobuf];

  [v8 setControlInterface:v9];
  [v8 setSessionIdentifier:*(a1 + 48)];
  [v8 setResponseData:a3];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v12 = NSStringFromRMSResponseCode(a2);
    v15[0] = 67109378;
    v15[1] = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending connection result: %@", v15, 0x12u);
  }

  v13 = *(a1 + 32);
  v14 = [v8 data];
  [v13 _sendData:v14 type:6 priority:300 timeout:15 queueOneID:0 inResponseTo:*(a1 + 40)];

  if (a2 != 1)
  {
    [*(*(a1 + 32) + 8) endSessionWithIdentifier:*(a1 + 48) completionHandler:0];
  }
}

- (void)_handlePairingChallengeResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = [RMSPairingChallengeResponseMessage alloc];
  data = [responseCopy data];

  v7 = [(RMSPairingChallengeResponseMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSPairingChallengeResponseMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received pairing response", v14, 8u);
  }

  pairingCompletionHandlers = self->_pairingCompletionHandlers;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:sessionIdentifier];
  v12 = [(NSMutableDictionary *)pairingCompletionHandlers objectForKeyedSubscript:v11];

  if (v12)
  {
    code = [(RMSPairingChallengeResponseMessage *)v7 code];
    (v12)[2](v12, code, [(RMSPairingChallengeResponseMessage *)v7 userCancelled]);
  }
}

- (void)_handleLogout:(id)logout
{
  v11 = *MEMORY[0x277D85DE8];
  logoutCopy = logout;
  v5 = [RMSSessionMessage alloc];
  data = [logoutCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for logout", v10, 8u);
  }

  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:sessionIdentifier completionHandler:&__block_literal_global_75];
}

- (void)_handlePlaybackCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = [RMSPlaybackCommandMessage alloc];
  data = [commandCopy data];

  v7 = [(RMSPlaybackCommandMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSPlaybackCommandMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for playback command", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 sendPlaybackCommand:-[RMSPlaybackCommandMessage playbackCommand](v7 completionHandler:{"playbackCommand"), 0}];
}

- (void)_handleBeginObservingNowPlaying:(id)playing
{
  v14 = *MEMORY[0x277D85DE8];
  playingCopy = playing;
  v5 = [RMSSessionMessage alloc];
  data = [playingCopy data];
  v7 = [(RMSSessionMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to begin observing now playing", v13, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 beginObservingNowPlaying];
  v11 = objc_opt_new();
  [v11 setResponseCode:1];
  data2 = [v11 data];
  [(RMSIDSServer *)self _sendData:data2 type:10 timeout:15 queueOneID:0 inResponseTo:playingCopy];
}

- (void)_handleEndObservingNowPlaying:(id)playing
{
  v12 = *MEMORY[0x277D85DE8];
  playingCopy = playing;
  v5 = [RMSSessionMessage alloc];
  data = [playingCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to end observing now playing session", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 endObservingNowPlaying];
}

- (void)_handlePickAudioRoute:(id)route
{
  v18 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v5 = [RMSPickAudioRouteMessage alloc];
  data = [routeCopy data];
  v7 = [(RMSPickAudioRouteMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSPickAudioRouteMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to pick audio route", &buf, 8u);
  }

  v10 = objc_opt_new();
  [v10 setMacAddress:{-[RMSPickAudioRouteMessage macAddress](v7, "macAddress")}];
  v11 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  objc_initWeak(&buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__RMSIDSServer__handlePickAudioRoute___block_invoke;
  v13[3] = &unk_279B09178;
  v16 = sessionIdentifier;
  objc_copyWeak(&v15, &buf);
  v12 = routeCopy;
  v14 = v12;
  [v11 pickAudioRoute:v10 completionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&buf);
}

void __38__RMSIDSServer__handlePickAudioRoute___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setResponseCode:a2];
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = NSStringFromRMSResponseCode(a2);
    v10[0] = 67109378;
    v10[1] = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pick route response: %@", v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [v4 data];
  [WeakRetained _sendData:v9 type:19 timeout:30 queueOneID:0 inResponseTo:*(a1 + 32)];
}

- (void)_handleSetVolume:(id)volume
{
  v12 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v5 = [RMSSetVolumeMessage alloc];
  data = [volumeCopy data];

  v7 = [(RMSSetVolumeMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSetVolumeMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to set volume", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [(RMSSetVolumeMessage *)v7 volume];
  [v10 setVolume:0 completionHandler:?];
}

- (void)_handleSeekToPlaybackTime:(id)time
{
  v12 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = [RMSSeekToPlaybackTimeMessage alloc];
  data = [timeCopy data];

  v7 = [(RMSSeekToPlaybackTimeMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSeekToPlaybackTimeMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received message to seek to playbacktime", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 seekToPlaybackTime:-[RMSSeekToPlaybackTimeMessage playbackTime](v7 completionHandler:{"playbackTime"), 0}];
}

- (void)_handleNowPlayingArtworkRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [RMSNowPlayingArtworkRequestMessage alloc];
  data = [requestCopy data];
  v7 = [(RMSNowPlayingArtworkRequestMessage *)v5 initWithData:data];

  artworkIdentifier = [(RMSNowPlayingArtworkRequestMessage *)v7 artworkIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = artworkIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Received artwork request for identifier: %@", &v21, 0xCu);
  }

  v10 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  v11 = [v10 artworkDataForIdentifier:artworkIdentifier];

  if (v11)
  {
    width = [(RMSNowPlayingArtworkRequestMessage *)v7 width];
    height = [(RMSNowPlayingArtworkRequestMessage *)v7 height];
    [(RMSNowPlayingArtworkRequestMessage *)v7 compressionQuality];
    v15 = v14;
    v16 = [MEMORY[0x277D755B8] imageWithData:v11];
    LODWORD(v17) = v15;
    v18 = [v16 rms_jpegDataScaledToSize:width compressionQuality:{height, v17}];

    v19 = RMSLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 length];
      v21 = 134217984;
      v22 = v20;
      _os_log_impl(&dword_261E98000, v19, OS_LOG_TYPE_DEFAULT, "Sending artwork, size=%zd", &v21, 0xCu);
    }

    [(RMSIDSServer *)self _sendData:v18 type:25 timeout:*MEMORY[0x277D18828] queueOneID:@"ArtworkData" inResponseTo:requestCopy];
  }

  else
  {
    v18 = RMSLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_261E98000, v18, OS_LOG_TYPE_DEFAULT, "Artwork data not found", &v21, 2u);
    }
  }
}

- (void)_handleSetLikeState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [RMSSetLikeStateMessage alloc];
  data = [stateCopy data];
  v7 = [(RMSSetLikeStateMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSSetLikeStateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to set like state", &buf, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  objc_initWeak(&buf, self);
  likeState = [(RMSSetLikeStateMessage *)v7 likeState];
  itemID = [(RMSSetLikeStateMessage *)v7 itemID];
  databaseID = [(RMSSetLikeStateMessage *)v7 databaseID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__RMSIDSServer__handleSetLikeState___block_invoke;
  v15[3] = &unk_279B091A0;
  objc_copyWeak(&v17, &buf);
  v14 = stateCopy;
  v16 = v14;
  [v10 setLikedState:likeState itemID:itemID databaseID:databaseID completionHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&buf);
}

void __36__RMSIDSServer__handleSetLikeState___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setResponseCode:a2];
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromRMSResponseCode(a2);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Sending set like state response: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v4 data];
  [WeakRetained _sendData:v8 type:32 timeout:15 queueOneID:0 inResponseTo:*(a1 + 32)];
}

- (void)_handleAddToWishlist:(id)wishlist
{
  v18 = *MEMORY[0x277D85DE8];
  wishlistCopy = wishlist;
  v5 = [RMSAddToWishlistMessage alloc];
  data = [wishlistCopy data];
  v7 = [(RMSAddToWishlistMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSAddToWishlistMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to add to wishlist", &buf, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  objc_initWeak(&buf, self);
  itemID = [(RMSAddToWishlistMessage *)v7 itemID];
  databaseID = [(RMSAddToWishlistMessage *)v7 databaseID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__RMSIDSServer__handleAddToWishlist___block_invoke;
  v14[3] = &unk_279B091A0;
  objc_copyWeak(&v16, &buf);
  v13 = wishlistCopy;
  v15 = v13;
  [v10 addToWishlist:itemID databaseID:databaseID completionHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&buf);
}

void __37__RMSIDSServer__handleAddToWishlist___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setResponseCode:a2];
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromRMSResponseCode(a2);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Sending add to wishlist response: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v4 data];
  [WeakRetained _sendData:v8 type:32 timeout:15 queueOneID:0 inResponseTo:*(a1 + 32)];
}

- (void)_handleTouchMove:(id)move
{
  v12 = *MEMORY[0x277D85DE8];
  moveCopy = move;
  v5 = [RMSTouchMessage alloc];
  data = [moveCopy data];

  v7 = [(RMSTouchMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSTouchMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for touch move", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 sendTouchMoveWithDirection:-[RMSTouchMessage direction](v7 repeatCount:{"direction"), -[RMSTouchMessage repeatCount](v7, "repeatCount")}];
}

- (void)_handleTouchEnd:(id)end
{
  v12 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = [RMSTouchMessage alloc];
  data = [endCopy data];

  v7 = [(RMSTouchMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSTouchMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for touch end", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 sendTouchEndWithDirection:-[RMSTouchMessage direction](v7 repeatCount:{"direction"), -[RMSTouchMessage repeatCount](v7, "repeatCount")}];
}

- (void)_handleNavigationCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = [RMSNavigationCommandMessage alloc];
  data = [commandCopy data];

  v7 = [(RMSNavigationCommandMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSNavigationCommandMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for navigation command", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  [v10 sendNavigationCommand:{-[RMSNavigationCommandMessage navigationCommand](v7, "navigationCommand")}];
}

- (void)_handleBeginPairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to begin pairing session", buf, 2u);
  }

  v6 = [RMSBeginPairingMessage alloc];
  data = [pairingCopy data];
  v8 = [(RMSBeginPairingMessage *)v6 initWithData:data];

  v9 = +[RMSPairingSession localPairingSession];
  [v9 setDelegate:self];
  passcode = [(RMSBeginPairingMessage *)v8 passcode];
  [v9 setPasscode:passcode];

  appName = [(RMSBeginPairingMessage *)v8 appName];
  [v9 setAdvertisedAppName:appName];

  deviceName = [(RMSBeginPairingMessage *)v8 deviceName];
  [v9 setAdvertisedDeviceName:deviceName];

  deviceModel = [(RMSBeginPairingMessage *)v8 deviceModel];
  [v9 setAdvertisedDeviceModel:deviceModel];

  v14 = *&RMSPairingSessionTimeout;
  sessionManager = self->_sessionManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__RMSIDSServer__handleBeginPairing___block_invoke;
  v18[3] = &unk_279B09098;
  v19 = v9;
  selfCopy = self;
  v21 = pairingCopy;
  v16 = pairingCopy;
  v17 = v9;
  [(RMSSessionManager *)sessionManager beginSession:v17 timeout:v14 shouldTakePowerAssertion:1 completionHandler:v18];
}

void __36__RMSIDSServer__handleBeginPairing___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) beginPairing];
  v4 = objc_opt_new();
  [v4 setSessionIdentifier:a2];
  [v4 setResponseCode:1];
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending begin pairing response", v8, 8u);
  }

  v6 = *(a1 + 40);
  v7 = [v4 data];
  [v6 _sendData:v7 type:27 timeout:15 queueOneID:0 inResponseTo:*(a1 + 48)];
}

- (void)_handleEndPairing:(id)pairing
{
  v11 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v5 = [RMSSessionMessage alloc];
  data = [pairingCopy data];

  v7 = [(RMSSessionMessage *)v5 initWithData:data];
  sessionIdentifier = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to end pairing session", v10, 8u);
  }

  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:sessionIdentifier completionHandler:&__block_literal_global_94];
}

- (void)_handleSendText:(id)text
{
  v18 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = [RMSSendTextMessage alloc];
  data = [textCopy data];
  v7 = [(RMSSendTextMessage *)v5 initWithData:data];

  sessionIdentifier = [(RMSSendTextMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = sessionIdentifier;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to send text", buf, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:sessionIdentifier];
  text = [(RMSSendTextMessage *)v7 text];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__RMSIDSServer__handleSendText___block_invoke;
  v13[3] = &unk_279B091C8;
  v15 = sessionIdentifier;
  v13[4] = self;
  v14 = textCopy;
  v12 = textCopy;
  [v10 sendText:text completionHandler:v13];
}

void __32__RMSIDSServer__handleSendText___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  [v4 setResponseCode:a2];
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending send text response", v9, 8u);
  }

  v7 = *(a1 + 32);
  v8 = [v4 data];
  [v7 _sendData:v8 type:45 timeout:15 queueOneID:0 inResponseTo:*(a1 + 40)];
}

- (void)_cleanupStaleSessions:(id)sessions
{
  v22 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [sessionsCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x277D18828];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sessionsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_opt_new();
        [v11 setSessionIdentifier:{objc_msgSend(v10, "intValue")}];
        v12 = RMSLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          intValue = [v10 intValue];
          *buf = 67109120;
          v20 = intValue;
          _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Session is stale, notifying client", buf, 8u);
        }

        data = [v11 data];
        [(RMSIDSServer *)self _sendData:data type:37 timeout:v8 queueOneID:0 inResponseTo:0];
      }

      v6 = [sessionsCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)_sendData:(id)data type:(unsigned __int16)type priority:(int64_t)priority timeout:(int)timeout queueOneID:(id)d inResponseTo:(id)to
{
  v9 = *&timeout;
  typeCopy = type;
  v42[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  toCopy = to;
  v16 = MEMORY[0x277D189F0];
  dataCopy = data;
  v18 = [[v16 alloc] initWithProtobufData:dataCopy type:typeCopy isResponse:toCopy != 0];

  v19 = objc_alloc(MEMORY[0x277CBEB38]);
  v41[0] = *MEMORY[0x277D18650];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v21 = *MEMORY[0x277D185A0];
  v42[0] = v20;
  v42[1] = MEMORY[0x277CBEC38];
  v22 = *MEMORY[0x277D185F0];
  v41[1] = v21;
  v41[2] = v22;
  v42[2] = MEMORY[0x277CBEC38];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v24 = [v19 initWithDictionary:v23];

  if (toCopy)
  {
    context = [toCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    [v24 setObject:outgoingResponseIdentifier forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  if (dCopy)
  {
    [v24 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  if (priority == 300)
  {
    v27 = MEMORY[0x277CBEC38];
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  idsService = self->_idsService;
  v29 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v35 = 0;
  v36 = 0;
  [(IDSService *)idsService sendProtobuf:v18 toDestinations:v29 priority:priority options:v24 identifier:&v36 error:&v35];
  v30 = v36;
  v31 = v35;

  v32 = RMSLogger();
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [RMSIDSServer _sendData:typeCopy type:v31 priority:v33 timeout:? queueOneID:? inResponseTo:?];
    }
  }

  else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v34 = NSStringFromRMSMessageType(typeCopy);
    *buf = 138412546;
    v38 = v34;
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&dword_261E98000, v33, OS_LOG_TYPE_DEFAULT, "Sent message of type: %@, IDS identifier: %@", buf, 0x16u);
  }
}

- (void)discoverySessionDidUpdateAvailableServices:(id)services
{
  v15 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  availableServices = [servicesCopy availableServices];
  v6 = [RMSService protobufsFromServices:availableServices];
  v7 = [(RMSSessionManager *)self->_sessionManager identifierForSession:servicesCopy];

  v8 = objc_opt_new();
  v9 = [v6 mutableCopy];
  [v8 setServices:v9];

  [v8 setSessionIdentifier:v7];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = v7;
    v13 = 2112;
    v14 = availableServices;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending available services: %@", v12, 0x12u);
  }

  data = [v8 data];
  [(RMSIDSServer *)self _sendData:data type:4 timeout:*MEMORY[0x277D18828] queueOneID:@"AvailableServices" inResponseTo:0];
}

- (void)discoverySessionNetworkAvailabilityDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [(RMSSessionManager *)self->_sessionManager identifierForSession:changeCopy];
  v6 = objc_opt_new();
  [v6 setSessionIdentifier:v5];
  [v6 setWifiAvailable:{objc_msgSend(changeCopy, "isNetworkAvailable")}];
  v7 = RMSLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isNetworkAvailable = [changeCopy isNetworkAvailable];
    v9 = @"unavailable";
    if (isNetworkAvailable)
    {
      v9 = @"available";
    }

    v11[0] = 67109378;
    v11[1] = v5;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending wifi availability message: %@", v11, 0x12u);
  }

  data = [v6 data];
  [(RMSIDSServer *)self _sendData:data type:38 timeout:*MEMORY[0x277D18828] queueOneID:@"NetworkAvailability" inResponseTo:0];
}

- (void)controlSession:(id)session didReceivePairingChallengeRequestWithCredentials:(id)credentials completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  sessionManager = self->_sessionManager;
  credentialsCopy = credentials;
  v11 = [(RMSSessionManager *)sessionManager identifierForSession:session];
  if (!self->_pairingCompletionHandlers)
  {
    v12 = objc_opt_new();
    pairingCompletionHandlers = self->_pairingCompletionHandlers;
    self->_pairingCompletionHandlers = v12;
  }

  v14 = MEMORY[0x266721590](handlerCopy);
  v15 = self->_pairingCompletionHandlers;
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v17 = objc_opt_new();
  [v17 setSessionIdentifier:v11];
  protobuf = [credentialsCopy protobuf];

  [v17 setPairingCredentials:protobuf];
  v19 = RMSLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67109120;
    v21[1] = v11;
    _os_log_impl(&dword_261E98000, v19, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pairing request", v21, 8u);
  }

  data = [v17 data];
  [(RMSIDSServer *)self _sendData:data type:40 priority:300 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSession:(id)session didUpdateNowPlayingInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  sessionManager = self->_sessionManager;
  infoCopy = info;
  v8 = [(RMSSessionManager *)sessionManager identifierForSession:session];
  v9 = objc_opt_new();
  protobuf = [infoCopy protobuf];

  [v9 setNowPlayingInfo:protobuf];
  [v9 setSessionIdentifier:v8];
  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending now playing info update", v13, 8u);
  }

  data = [v9 data];
  [(RMSIDSServer *)self _sendData:data type:12 timeout:*MEMORY[0x277D18828] queueOneID:@"NowPlayingInfo" inResponseTo:0];
}

- (void)controlSession:(id)session artworkDataDidBecomeAvailable:(id)available identifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  availableCopy = available;
  sessionCopy = session;
  v11 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  [v11 setArtworkData:availableCopy forIdentifier:identifierCopy];

  v12 = [(RMSSessionManager *)self->_sessionManager identifierForSession:sessionCopy];
  v13 = objc_opt_new();
  [v13 setSessionIdentifier:v12];
  [v13 setArtworkIdentifier:identifierCopy];

  v14 = RMSLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v12;
    _os_log_impl(&dword_261E98000, v14, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending artwork updated notification", v16, 8u);
  }

  data = [v13 data];
  [(RMSIDSServer *)self _sendData:data type:13 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSession:(id)session didUpdateAudioRoutes:(id)routes
{
  v15 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  sessionCopy = session;
  v8 = objc_opt_new();
  v9 = [RMSAudioRoute protobufsFromAudioRoutes:routesCopy];

  v10 = [(RMSSessionManager *)self->_sessionManager identifierForSession:sessionCopy];
  v11 = [v9 mutableCopy];
  [v8 setAudioRoutes:v11];

  [v8 setSessionIdentifier:v10];
  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v10;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending audio routes update", v14, 8u);
  }

  data = [v8 data];
  [(RMSIDSServer *)self _sendData:data type:14 timeout:*MEMORY[0x277D18828] queueOneID:@"AudioRoutes" inResponseTo:0];
}

- (void)controlSession:(id)session didUpdateVolume:(float)volume
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(RMSSessionManager *)self->_sessionManager identifierForSession:session];
  v7 = objc_opt_new();
  *&v8 = volume;
  [v7 setVolume:v8];
  [v7 setSessionIdentifier:v6];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v6;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending volume update", v11, 8u);
  }

  data = [v7 data];
  [(RMSIDSServer *)self _sendData:data type:15 timeout:10 queueOneID:@"Volume" inResponseTo:0];
}

- (void)controlSessionDidBeginEditingText:(id)text
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(RMSSessionManager *)self->_sessionManager identifierForSession:text];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v4];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending did begin editing text notification", v8, 8u);
  }

  data = [v5 data];
  [(RMSIDSServer *)self _sendData:data type:42 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSessionDidEndEditingText:(id)text
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(RMSSessionManager *)self->_sessionManager identifierForSession:text];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v4];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending did begin editing text notification", v8, 8u);
  }

  data = [v5 data];
  [(RMSIDSServer *)self _sendData:data type:43 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSessionDidEnd:(id)end
{
  v10 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = objc_opt_new();
  v6 = [(RMSSessionManager *)self->_sessionManager identifierForSession:endCopy];

  if (v6)
  {
    [v5 setSessionIdentifier:v6];
    v7 = RMSLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending control session ended", v9, 8u);
    }

    data = [v5 data];
    [(RMSIDSServer *)self _sendData:data type:37 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];

    [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:v6 completionHandler:0];
  }
}

- (void)pairingSession:(id)session didPairWithServiceNetworkName:(id)name pairingGUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  sessionManager = self->_sessionManager;
  dCopy = d;
  v11 = [(RMSSessionManager *)sessionManager identifierForSession:session];
  v12 = objc_opt_new();
  [v12 setServiceNetworkName:nameCopy];
  [v12 setPairingGUID:dCopy];

  [v12 setSessionIdentifier:v11];
  v13 = RMSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = v11;
    v16 = 2112;
    v17 = nameCopy;
    _os_log_impl(&dword_261E98000, v13, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pairing success with service network name: %@", v15, 0x12u);
  }

  data = [v12 data];
  [(RMSIDSServer *)self _sendData:data type:29 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)pairingSessionDidFail:(id)fail
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(RMSSessionManager *)self->_sessionManager identifierForSession:fail];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v4];
  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:v4 completionHandler:0];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pairing session failed message", v8, 8u);
  }

  data = [v5 data];
  [(RMSIDSServer *)self _sendData:data type:30 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)sessionManager:(id)manager sessionDidTimeout:(id)timeout withIdentifier:(int)identifier
{
  v5 = *&identifier;
  v16 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  v8 = objc_opt_new();
  [v8 setSessionIdentifier:v5];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending session ended due to timeout", buf, 8u);
  }

  data = [v8 data];
  [(RMSIDSServer *)self _sendData:data type:37 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__RMSIDSServer_sessionManager_sessionDidTimeout_withIdentifier___block_invoke;
    v11[3] = &unk_279B091F0;
    v13 = v5;
    v12 = timeoutCopy;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

uint64_t __64__RMSIDSServer_sessionManager_sessionDidTimeout_withIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = RMSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_261E98000, v2, OS_LOG_TYPE_DEFAULT, "[Session %d] Ending discovery session on main queue", v5, 8u);
  }

  return [*(a1 + 32) endDiscovery];
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

- (void)_sendData:(NSObject *)a3 type:priority:timeout:queueOneID:inResponseTo:.cold.1(unsigned __int16 a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromRMSMessageType(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_261E98000, a3, OS_LOG_TYPE_ERROR, "Error sending message of type %@: %@", &v6, 0x16u);
}

@end