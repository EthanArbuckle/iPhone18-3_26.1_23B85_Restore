@interface RMSIDSServer
+ (id)server;
- (RMSIDSServer)init;
- (void)_cleanupStaleSessions:(id)a3;
- (void)_handleAddToWishlist:(id)a3;
- (void)_handleBeginDiscovery:(id)a3;
- (void)_handleBeginObservingNowPlaying:(id)a3;
- (void)_handleBeginPairing:(id)a3;
- (void)_handleConnectToService:(id)a3;
- (void)_handleEndDiscovery:(id)a3;
- (void)_handleEndObservingNowPlaying:(id)a3;
- (void)_handleEndPairing:(id)a3;
- (void)_handleLogout:(id)a3;
- (void)_handleNavigationCommand:(id)a3;
- (void)_handleNowPlayingArtworkRequest:(id)a3;
- (void)_handlePairingChallengeResponse:(id)a3;
- (void)_handlePickAudioRoute:(id)a3;
- (void)_handlePlaybackCommand:(id)a3;
- (void)_handleSeekToPlaybackTime:(id)a3;
- (void)_handleSendText:(id)a3;
- (void)_handleSessionHeartbeat:(id)a3;
- (void)_handleSetLikeState:(id)a3;
- (void)_handleSetVolume:(id)a3;
- (void)_handleTouchEnd:(id)a3;
- (void)_handleTouchMove:(id)a3;
- (void)_handleUnpairService:(id)a3;
- (void)_handleUpdatePairedNetworkNames:(id)a3;
- (void)_sendData:(id)a3 type:(unsigned __int16)a4 priority:(int64_t)a5 timeout:(int)a6 queueOneID:(id)a7 inResponseTo:(id)a8;
- (void)controlSession:(id)a3 artworkDataDidBecomeAvailable:(id)a4 identifier:(id)a5;
- (void)controlSession:(id)a3 didReceivePairingChallengeRequestWithCredentials:(id)a4 completionHandler:(id)a5;
- (void)controlSession:(id)a3 didUpdateAudioRoutes:(id)a4;
- (void)controlSession:(id)a3 didUpdateNowPlayingInfo:(id)a4;
- (void)controlSession:(id)a3 didUpdateVolume:(float)a4;
- (void)controlSessionDidBeginEditingText:(id)a3;
- (void)controlSessionDidEnd:(id)a3;
- (void)controlSessionDidEndEditingText:(id)a3;
- (void)discoverySessionDidUpdateAvailableServices:(id)a3;
- (void)discoverySessionNetworkAvailabilityDidChange:(id)a3;
- (void)pairingSession:(id)a3 didPairWithServiceNetworkName:(id)a4 pairingGUID:(id)a5;
- (void)pairingSessionDidFail:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)sessionManager:(id)a3 sessionDidTimeout:(id)a4 withIdentifier:(int)a5;
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

    v11 = [(RMSSessionManager *)v2->_sessionManager persistedSessionIdentifiers];
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

    [(RMSIDSServer *)v2 _cleanupStaleSessions:v11];
  }

  return v2;
}

- (void)_handleSessionHeartbeat:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSSessionMessage *)v5 initWithData:v6];

  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  v10 = objc_opt_new();
  v11 = RMSLogger();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v15 = 67109120;
      v16 = v8;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Received heartbeat", &v15, 8u);
    }

    [(RMSSessionManager *)self->_sessionManager refreshSessionWithIdentifier:v8];
    v13 = 1;
  }

  else
  {
    if (v12)
    {
      v15 = 67109120;
      v16 = v8;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Received heartbeat, but session was no longer active - respond with timeout error", &v15, 8u);
    }

    v13 = 4294967293;
  }

  [v10 setResponseCode:v13];
  v14 = [v10 data];
  [(RMSIDSServer *)self _sendData:v14 type:17 priority:300 timeout:10 queueOneID:0 inResponseTo:v4];
}

- (void)_handleBeginDiscovery:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to begin discovery session", buf, 2u);
  }

  v6 = [RMSBeginDiscoveryMessage alloc];
  v7 = [v4 data];
  v8 = [(RMSBeginDiscoveryMessage *)v6 initWithData:v7];

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

    v11 = [(RMSBeginDiscoveryMessage *)v8 pairedNetworkNames];
    [v9 setPairedNetworkNames:v11];
  }

  v12 = *&RMSDiscoverySessionTimeout;
  sessionManager = self->_sessionManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__RMSIDSServer__handleBeginDiscovery___block_invoke;
  v16[3] = &unk_279B09098;
  v16[4] = self;
  v17 = v4;
  v18 = v9;
  v14 = v9;
  v15 = v4;
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

- (void)_handleUpdatePairedNetworkNames:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to update paired network names", v11, 2u);
  }

  v6 = [RMSUpdatePairedNetworNamesMessage alloc];
  v7 = [v4 data];

  v8 = [(RMSUpdatePairedNetworNamesMessage *)v6 initWithData:v7];
  v9 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:[(RMSUpdatePairedNetworNamesMessage *)v8 sessionIdentifier]];
  v10 = [(RMSUpdatePairedNetworNamesMessage *)v8 pairedNetworkNames];
  [v9 setPairedNetworkNames:v10];
}

- (void)_handleEndDiscovery:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to end discovery session", v10, 8u);
  }

  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:v8 completionHandler:&__block_literal_global_62];
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

- (void)_handleUnpairService:(id)a3
{
  v4 = a3;
  v5 = [RMSUnpairServiceMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSUnpairServiceMessage *)v5 initWithData:v6];

  v8 = [RMSService alloc];
  v9 = [(RMSUnpairServiceMessage *)v7 service];
  v10 = [(RMSService *)v8 initWithProtobuf:v9];

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
  v15 = v4;
  v13 = v4;
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

- (void)_handleConnectToService:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to connect to service", buf, 2u);
  }

  v6 = [RMSConnectToServiceMessage alloc];
  v7 = [v4 data];
  v8 = [(RMSConnectToServiceMessage *)v6 initWithData:v7];

  v9 = [RMSService alloc];
  v10 = [(RMSConnectToServiceMessage *)v8 service];
  v11 = [(RMSService *)v9 initWithProtobuf:v10];

  v12 = [(RMSConnectToServiceMessage *)v8 allowPairing];
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
  v26 = v12;
  v23 = v8;
  v24 = self;
  v25 = v4;
  v16 = v4;
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

- (void)_handlePairingChallengeResponse:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSPairingChallengeResponseMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSPairingChallengeResponseMessage *)v5 initWithData:v6];
  v8 = [(RMSPairingChallengeResponseMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received pairing response", v14, 8u);
  }

  pairingCompletionHandlers = self->_pairingCompletionHandlers;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v12 = [(NSMutableDictionary *)pairingCompletionHandlers objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [(RMSPairingChallengeResponseMessage *)v7 code];
    (v12)[2](v12, v13, [(RMSPairingChallengeResponseMessage *)v7 userCancelled]);
  }
}

- (void)_handleLogout:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for logout", v10, 8u);
  }

  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:v8 completionHandler:&__block_literal_global_75];
}

- (void)_handlePlaybackCommand:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSPlaybackCommandMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSPlaybackCommandMessage *)v5 initWithData:v6];
  v8 = [(RMSPlaybackCommandMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for playback command", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 sendPlaybackCommand:-[RMSPlaybackCommandMessage playbackCommand](v7 completionHandler:{"playbackCommand"), 0}];
}

- (void)_handleBeginObservingNowPlaying:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSSessionMessage *)v5 initWithData:v6];

  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to begin observing now playing", v13, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 beginObservingNowPlaying];
  v11 = objc_opt_new();
  [v11 setResponseCode:1];
  v12 = [v11 data];
  [(RMSIDSServer *)self _sendData:v12 type:10 timeout:15 queueOneID:0 inResponseTo:v4];
}

- (void)_handleEndObservingNowPlaying:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to end observing now playing session", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 endObservingNowPlaying];
}

- (void)_handlePickAudioRoute:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSPickAudioRouteMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSPickAudioRouteMessage *)v5 initWithData:v6];

  v8 = [(RMSPickAudioRouteMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to pick audio route", &buf, 8u);
  }

  v10 = objc_opt_new();
  [v10 setMacAddress:{-[RMSPickAudioRouteMessage macAddress](v7, "macAddress")}];
  v11 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  objc_initWeak(&buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__RMSIDSServer__handlePickAudioRoute___block_invoke;
  v13[3] = &unk_279B09178;
  v16 = v8;
  objc_copyWeak(&v15, &buf);
  v12 = v4;
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

- (void)_handleSetVolume:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSetVolumeMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSetVolumeMessage *)v5 initWithData:v6];
  v8 = [(RMSSetVolumeMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to set volume", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [(RMSSetVolumeMessage *)v7 volume];
  [v10 setVolume:0 completionHandler:?];
}

- (void)_handleSeekToPlaybackTime:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSeekToPlaybackTimeMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSeekToPlaybackTimeMessage *)v5 initWithData:v6];
  v8 = [(RMSSeekToPlaybackTimeMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received message to seek to playbacktime", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 seekToPlaybackTime:-[RMSSeekToPlaybackTimeMessage playbackTime](v7 completionHandler:{"playbackTime"), 0}];
}

- (void)_handleNowPlayingArtworkRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSNowPlayingArtworkRequestMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSNowPlayingArtworkRequestMessage *)v5 initWithData:v6];

  v8 = [(RMSNowPlayingArtworkRequestMessage *)v7 artworkIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Received artwork request for identifier: %@", &v21, 0xCu);
  }

  v10 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  v11 = [v10 artworkDataForIdentifier:v8];

  if (v11)
  {
    v12 = [(RMSNowPlayingArtworkRequestMessage *)v7 width];
    v13 = [(RMSNowPlayingArtworkRequestMessage *)v7 height];
    [(RMSNowPlayingArtworkRequestMessage *)v7 compressionQuality];
    v15 = v14;
    v16 = [MEMORY[0x277D755B8] imageWithData:v11];
    LODWORD(v17) = v15;
    v18 = [v16 rms_jpegDataScaledToSize:v12 compressionQuality:{v13, v17}];

    v19 = RMSLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 length];
      v21 = 134217984;
      v22 = v20;
      _os_log_impl(&dword_261E98000, v19, OS_LOG_TYPE_DEFAULT, "Sending artwork, size=%zd", &v21, 0xCu);
    }

    [(RMSIDSServer *)self _sendData:v18 type:25 timeout:*MEMORY[0x277D18828] queueOneID:@"ArtworkData" inResponseTo:v4];
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

- (void)_handleSetLikeState:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSetLikeStateMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSSetLikeStateMessage *)v5 initWithData:v6];

  v8 = [(RMSSetLikeStateMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to set like state", &buf, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  objc_initWeak(&buf, self);
  v11 = [(RMSSetLikeStateMessage *)v7 likeState];
  v12 = [(RMSSetLikeStateMessage *)v7 itemID];
  v13 = [(RMSSetLikeStateMessage *)v7 databaseID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__RMSIDSServer__handleSetLikeState___block_invoke;
  v15[3] = &unk_279B091A0;
  objc_copyWeak(&v17, &buf);
  v14 = v4;
  v16 = v14;
  [v10 setLikedState:v11 itemID:v12 databaseID:v13 completionHandler:v15];

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

- (void)_handleAddToWishlist:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSAddToWishlistMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSAddToWishlistMessage *)v5 initWithData:v6];

  v8 = [(RMSAddToWishlistMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to add to wishlist", &buf, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  objc_initWeak(&buf, self);
  v11 = [(RMSAddToWishlistMessage *)v7 itemID];
  v12 = [(RMSAddToWishlistMessage *)v7 databaseID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__RMSIDSServer__handleAddToWishlist___block_invoke;
  v14[3] = &unk_279B091A0;
  objc_copyWeak(&v16, &buf);
  v13 = v4;
  v15 = v13;
  [v10 addToWishlist:v11 databaseID:v12 completionHandler:v14];

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

- (void)_handleTouchMove:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSTouchMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSTouchMessage *)v5 initWithData:v6];
  v8 = [(RMSTouchMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for touch move", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 sendTouchMoveWithDirection:-[RMSTouchMessage direction](v7 repeatCount:{"direction"), -[RMSTouchMessage repeatCount](v7, "repeatCount")}];
}

- (void)_handleTouchEnd:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSTouchMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSTouchMessage *)v5 initWithData:v6];
  v8 = [(RMSTouchMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for touch end", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 sendTouchEndWithDirection:-[RMSTouchMessage direction](v7 repeatCount:{"direction"), -[RMSTouchMessage repeatCount](v7, "repeatCount")}];
}

- (void)_handleNavigationCommand:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSNavigationCommandMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSNavigationCommandMessage *)v5 initWithData:v6];
  v8 = [(RMSNavigationCommandMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request for navigation command", v11, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  [v10 sendNavigationCommand:{-[RMSNavigationCommandMessage navigationCommand](v7, "navigationCommand")}];
}

- (void)_handleBeginPairing:(id)a3
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Received request to begin pairing session", buf, 2u);
  }

  v6 = [RMSBeginPairingMessage alloc];
  v7 = [v4 data];
  v8 = [(RMSBeginPairingMessage *)v6 initWithData:v7];

  v9 = +[RMSPairingSession localPairingSession];
  [v9 setDelegate:self];
  v10 = [(RMSBeginPairingMessage *)v8 passcode];
  [v9 setPasscode:v10];

  v11 = [(RMSBeginPairingMessage *)v8 appName];
  [v9 setAdvertisedAppName:v11];

  v12 = [(RMSBeginPairingMessage *)v8 deviceName];
  [v9 setAdvertisedDeviceName:v12];

  v13 = [(RMSBeginPairingMessage *)v8 deviceModel];
  [v9 setAdvertisedDeviceModel:v13];

  v14 = *&RMSPairingSessionTimeout;
  sessionManager = self->_sessionManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__RMSIDSServer__handleBeginPairing___block_invoke;
  v18[3] = &unk_279B09098;
  v19 = v9;
  v20 = self;
  v21 = v4;
  v16 = v4;
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

- (void)_handleEndPairing:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSessionMessage alloc];
  v6 = [v4 data];

  v7 = [(RMSSessionMessage *)v5 initWithData:v6];
  v8 = [(RMSSessionMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to end pairing session", v10, 8u);
  }

  [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:v8 completionHandler:&__block_literal_global_94];
}

- (void)_handleSendText:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [RMSSendTextMessage alloc];
  v6 = [v4 data];
  v7 = [(RMSSendTextMessage *)v5 initWithData:v6];

  v8 = [(RMSSendTextMessage *)v7 sessionIdentifier];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v8;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Received request to send text", buf, 8u);
  }

  v10 = [(RMSSessionManager *)self->_sessionManager sessionWithIdentifier:v8];
  v11 = [(RMSSendTextMessage *)v7 text];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __32__RMSIDSServer__handleSendText___block_invoke;
  v13[3] = &unk_279B091C8;
  v15 = v8;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v10 sendText:v11 completionHandler:v13];
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

- (void)_cleanupStaleSessions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_opt_new();
        [v11 setSessionIdentifier:{objc_msgSend(v10, "intValue")}];
        v12 = RMSLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 intValue];
          *buf = 67109120;
          v20 = v13;
          _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "[Session %d] Session is stale, notifying client", buf, 8u);
        }

        v14 = [v11 data];
        [(RMSIDSServer *)self _sendData:v14 type:37 timeout:v8 queueOneID:0 inResponseTo:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)_sendData:(id)a3 type:(unsigned __int16)a4 priority:(int64_t)a5 timeout:(int)a6 queueOneID:(id)a7 inResponseTo:(id)a8
{
  v9 = *&a6;
  v11 = a4;
  v42[3] = *MEMORY[0x277D85DE8];
  v14 = a7;
  v15 = a8;
  v16 = MEMORY[0x277D189F0];
  v17 = a3;
  v18 = [[v16 alloc] initWithProtobufData:v17 type:v11 isResponse:v15 != 0];

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

  if (v15)
  {
    v25 = [v15 context];
    v26 = [v25 outgoingResponseIdentifier];
    [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  if (v14)
  {
    [v24 setObject:v14 forKeyedSubscript:*MEMORY[0x277D18630]];
  }

  if (a5 == 300)
  {
    v27 = MEMORY[0x277CBEC38];
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  idsService = self->_idsService;
  v29 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v35 = 0;
  v36 = 0;
  [(IDSService *)idsService sendProtobuf:v18 toDestinations:v29 priority:a5 options:v24 identifier:&v36 error:&v35];
  v30 = v36;
  v31 = v35;

  v32 = RMSLogger();
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [RMSIDSServer _sendData:v11 type:v31 priority:v33 timeout:? queueOneID:? inResponseTo:?];
    }
  }

  else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v34 = NSStringFromRMSMessageType(v11);
    *buf = 138412546;
    v38 = v34;
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&dword_261E98000, v33, OS_LOG_TYPE_DEFAULT, "Sent message of type: %@, IDS identifier: %@", buf, 0x16u);
  }
}

- (void)discoverySessionDidUpdateAvailableServices:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 availableServices];
  v6 = [RMSService protobufsFromServices:v5];
  v7 = [(RMSSessionManager *)self->_sessionManager identifierForSession:v4];

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
    v14 = v5;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending available services: %@", v12, 0x12u);
  }

  v11 = [v8 data];
  [(RMSIDSServer *)self _sendData:v11 type:4 timeout:*MEMORY[0x277D18828] queueOneID:@"AvailableServices" inResponseTo:0];
}

- (void)discoverySessionNetworkAvailabilityDidChange:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RMSSessionManager *)self->_sessionManager identifierForSession:v4];
  v6 = objc_opt_new();
  [v6 setSessionIdentifier:v5];
  [v6 setWifiAvailable:{objc_msgSend(v4, "isNetworkAvailable")}];
  v7 = RMSLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 isNetworkAvailable];
    v9 = @"unavailable";
    if (v8)
    {
      v9 = @"available";
    }

    v11[0] = 67109378;
    v11[1] = v5;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending wifi availability message: %@", v11, 0x12u);
  }

  v10 = [v6 data];
  [(RMSIDSServer *)self _sendData:v10 type:38 timeout:*MEMORY[0x277D18828] queueOneID:@"NetworkAvailability" inResponseTo:0];
}

- (void)controlSession:(id)a3 didReceivePairingChallengeRequestWithCredentials:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  sessionManager = self->_sessionManager;
  v10 = a4;
  v11 = [(RMSSessionManager *)sessionManager identifierForSession:a3];
  if (!self->_pairingCompletionHandlers)
  {
    v12 = objc_opt_new();
    pairingCompletionHandlers = self->_pairingCompletionHandlers;
    self->_pairingCompletionHandlers = v12;
  }

  v14 = MEMORY[0x266721590](v8);
  v15 = self->_pairingCompletionHandlers;
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v17 = objc_opt_new();
  [v17 setSessionIdentifier:v11];
  v18 = [v10 protobuf];

  [v17 setPairingCredentials:v18];
  v19 = RMSLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67109120;
    v21[1] = v11;
    _os_log_impl(&dword_261E98000, v19, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pairing request", v21, 8u);
  }

  v20 = [v17 data];
  [(RMSIDSServer *)self _sendData:v20 type:40 priority:300 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSession:(id)a3 didUpdateNowPlayingInfo:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  sessionManager = self->_sessionManager;
  v7 = a4;
  v8 = [(RMSSessionManager *)sessionManager identifierForSession:a3];
  v9 = objc_opt_new();
  v10 = [v7 protobuf];

  [v9 setNowPlayingInfo:v10];
  [v9 setSessionIdentifier:v8];
  v11 = RMSLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending now playing info update", v13, 8u);
  }

  v12 = [v9 data];
  [(RMSIDSServer *)self _sendData:v12 type:12 timeout:*MEMORY[0x277D18828] queueOneID:@"NowPlayingInfo" inResponseTo:0];
}

- (void)controlSession:(id)a3 artworkDataDidBecomeAvailable:(id)a4 identifier:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  [v11 setArtworkData:v9 forIdentifier:v8];

  v12 = [(RMSSessionManager *)self->_sessionManager identifierForSession:v10];
  v13 = objc_opt_new();
  [v13 setSessionIdentifier:v12];
  [v13 setArtworkIdentifier:v8];

  v14 = RMSLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v12;
    _os_log_impl(&dword_261E98000, v14, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending artwork updated notification", v16, 8u);
  }

  v15 = [v13 data];
  [(RMSIDSServer *)self _sendData:v15 type:13 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSession:(id)a3 didUpdateAudioRoutes:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [RMSAudioRoute protobufsFromAudioRoutes:v6];

  v10 = [(RMSSessionManager *)self->_sessionManager identifierForSession:v7];
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

  v13 = [v8 data];
  [(RMSIDSServer *)self _sendData:v13 type:14 timeout:*MEMORY[0x277D18828] queueOneID:@"AudioRoutes" inResponseTo:0];
}

- (void)controlSession:(id)a3 didUpdateVolume:(float)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [(RMSSessionManager *)self->_sessionManager identifierForSession:a3];
  v7 = objc_opt_new();
  *&v8 = a4;
  [v7 setVolume:v8];
  [v7 setSessionIdentifier:v6];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v6;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending volume update", v11, 8u);
  }

  v10 = [v7 data];
  [(RMSIDSServer *)self _sendData:v10 type:15 timeout:10 queueOneID:@"Volume" inResponseTo:0];
}

- (void)controlSessionDidBeginEditingText:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(RMSSessionManager *)self->_sessionManager identifierForSession:a3];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v4];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending did begin editing text notification", v8, 8u);
  }

  v7 = [v5 data];
  [(RMSIDSServer *)self _sendData:v7 type:42 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSessionDidEndEditingText:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(RMSSessionManager *)self->_sessionManager identifierForSession:a3];
  v5 = objc_opt_new();
  [v5 setSessionIdentifier:v4];
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending did begin editing text notification", v8, 8u);
  }

  v7 = [v5 data];
  [(RMSIDSServer *)self _sendData:v7 type:43 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)controlSessionDidEnd:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(RMSSessionManager *)self->_sessionManager identifierForSession:v4];

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

    v8 = [v5 data];
    [(RMSIDSServer *)self _sendData:v8 type:37 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];

    [(RMSSessionManager *)self->_sessionManager endSessionWithIdentifier:v6 completionHandler:0];
  }
}

- (void)pairingSession:(id)a3 didPairWithServiceNetworkName:(id)a4 pairingGUID:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a4;
  sessionManager = self->_sessionManager;
  v10 = a5;
  v11 = [(RMSSessionManager *)sessionManager identifierForSession:a3];
  v12 = objc_opt_new();
  [v12 setServiceNetworkName:v8];
  [v12 setPairingGUID:v10];

  [v12 setSessionIdentifier:v11];
  v13 = RMSLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = v11;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_261E98000, v13, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending pairing success with service network name: %@", v15, 0x12u);
  }

  v14 = [v12 data];
  [(RMSIDSServer *)self _sendData:v14 type:29 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)pairingSessionDidFail:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(RMSSessionManager *)self->_sessionManager identifierForSession:a3];
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

  v7 = [v5 data];
  [(RMSIDSServer *)self _sendData:v7 type:30 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];
}

- (void)sessionManager:(id)a3 sessionDidTimeout:(id)a4 withIdentifier:(int)a5
{
  v5 = *&a5;
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setSessionIdentifier:v5];
  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "[Session %d] Sending session ended due to timeout", buf, 8u);
  }

  v10 = [v8 data];
  [(RMSIDSServer *)self _sendData:v10 type:37 timeout:*MEMORY[0x277D18828] queueOneID:0 inResponseTo:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__RMSIDSServer_sessionManager_sessionDidTimeout_withIdentifier___block_invoke;
    v11[3] = &unk_279B091F0;
    v13 = v5;
    v12 = v7;
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

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v7 = a5;
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [RMSIDSClient service:v7 account:v8 incomingUnhandledProtobuf:? fromID:? context:?];
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