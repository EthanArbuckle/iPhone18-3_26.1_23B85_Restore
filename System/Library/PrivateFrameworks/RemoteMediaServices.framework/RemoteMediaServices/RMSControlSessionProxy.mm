@interface RMSControlSessionProxy
- (RMSControlSessionDelegate)delegate;
- (RMSControlSessionProxy)init;
- (void)_handleAudioRoutesDidUpdateNotification:(id)notification;
- (void)_handleDidBeginEditingTextNotification:(id)notification;
- (void)_handleDidEndEditingTextNotification:(id)notification;
- (void)_handleDidReceivePairingChallengeRequestNotification:(id)notification;
- (void)_handleNowPlayingArtworkDidBecomeAvailableNotification:(id)notification;
- (void)_handleNowPlayingInfoDidUpdateNotification:(id)notification;
- (void)_handleSessionDidEndNotification:(id)notification;
- (void)_handleVolumeDidUpdateNotification:(id)notification;
- (void)_notifyDelegateForArtworkChange;
- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler;
- (void)beginObservingNowPlaying;
- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler;
- (void)dealloc;
- (void)endObservingNowPlaying;
- (void)heartbeatDidFail;
- (void)logout;
- (void)pickAudioRoute:(id)route completionHandler:(id)handler;
- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler;
- (void)sendNavigationCommand:(int64_t)command;
- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler;
- (void)sendText:(id)text completionHandler:(id)handler;
- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(unsigned int)count;
- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count;
- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler;
- (void)setVolume:(float)volume completionHandler:(id)handler;
@end

@implementation RMSControlSessionProxy

- (RMSControlSessionProxy)init
{
  v7.receiver = self;
  v7.super_class = RMSControlSessionProxy;
  v2 = [(RMSSessionProxy *)&v7 initWithTimeout:*&RMSControlSessionTimeout];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleDidReceivePairingChallengeRequestNotification_ name:@"RMSIDSClientDidReceivePairingChallengeRequestNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleNowPlayingInfoDidUpdateNotification_ name:@"RMSIDSClientNowPlayingInfoDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleNowPlayingArtworkDidBecomeAvailableNotification_ name:@"RMSIDSClientNowPlayingArtworkDidBecomeAvailableNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleAudioRoutesDidUpdateNotification_ name:@"RMSIDSClientNowPlayingAudioRoutesDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleVolumeDidUpdateNotification_ name:@"RMSIDSClientNowPlayingVolumeDidUpdateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleSessionDidEndNotification_ name:@"RMSIDSClientSessionDidEndNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleDidBeginEditingTextNotification_ name:@"RMSIDSClientDidBeginEditingTextNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__handleDidEndEditingTextNotification_ name:@"RMSIDSClientDidEndEditingTextNotification" object:0];
    v4 = +[RMSIDSClient sharedClient];
    idsClient = v2->_idsClient;
    v2->_idsClient = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(RMSSessionProxy *)self endHeartbeat];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RMSControlSessionProxy;
  [(RMSSessionProxy *)&v4 dealloc];
}

- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler
{
  pairingCopy = pairing;
  serviceCopy = service;
  dCopy = d;
  handlerCopy = handler;
  objc_storeStrong(&self->_service, service);
  [(RMSSessionProxy *)self setSessionIdentifier:0];
  objc_initWeak(&location, self);
  idsClient = self->_idsClient;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__RMSControlSessionProxy_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke;
  v17[3] = &unk_279B093F8;
  v15 = serviceCopy;
  v18 = v15;
  objc_copyWeak(&v20, &location);
  v16 = handlerCopy;
  v19 = v16;
  [(RMSIDSClient *)idsClient connectToService:v15 pairingGUID:dCopy allowPairing:pairingCopy completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __86__RMSControlSessionProxy_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a2 == 3)
  {
    v16 = +[RMSPairingRecordStore sharedRecordStore];
    v17 = [*(a1 + 32) networkName];
    [v16 removePairingRecordForServiceWithNetworkName:v17];

LABEL_10:
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v9 = RMSLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = a5;
      _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Control session proxy received successful connection response, sessionIdentifier=%d", v18, 8u);
    }

    if (([*(a1 + 32) isTVRemoteCoreSupported] & 1) == 0)
    {
      v10 = [*(a1 + 32) networkName];

      if (v10)
      {
        v11 = +[RMSPairingRecordStore sharedRecordStore];
        v12 = [MEMORY[0x277CCAD78] UUID];
        v13 = [v12 UUIDString];
        v14 = [*(a1 + 32) networkName];
        [v11 savePairingRecord:v13 forServiceWithNetworkName:v14];
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setSessionIdentifier:a5];

    v16 = objc_loadWeakRetained((a1 + 48));
    [v16 beginHeartbeat];
    goto LABEL_10;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();
}

- (void)logout
{
  if ([(RMSSessionProxy *)self sessionIdentifier])
  {
    [(RMSIDSClient *)self->_idsClient logoutWithSessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier]];

    [(RMSSessionProxy *)self endHeartbeat];
  }
}

- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  v6 = [(RMSSessionProxy *)self sessionIdentifier:command];

  [(RMSIDSClient *)idsClient sendPlaybackCommand:command sessionIdentifier:v6];
}

- (void)setVolume:(float)volume completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];
  *&v7 = volume;

  [(RMSIDSClient *)idsClient setVolume:sessionIdentifier sessionIdentifier:v7];
}

- (void)pickAudioRoute:(id)route completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  -[RMSIDSClient pickAudioRouteWithMacAddress:sessionIdentifier:completionHandler:](idsClient, "pickAudioRouteWithMacAddress:sessionIdentifier:completionHandler:", [route macAddress], -[RMSSessionProxy sessionIdentifier](self, "sessionIdentifier"), handlerCopy);
}

- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler
{
  v4 = *&time;
  idsClient = self->_idsClient;
  v6 = [(RMSSessionProxy *)self sessionIdentifier:*&time];

  [(RMSIDSClient *)idsClient seekToPlaybackTime:v4 sessionIdentifier:v6];
}

- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  [(RMSIDSClient *)idsClient setLikedState:state itemID:d databaseID:iD sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  [(RMSIDSClient *)idsClient addToWishlist:wishlist databaseID:d sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)beginObservingNowPlaying
{
  objc_initWeak(&location, self);
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__RMSControlSessionProxy_beginObservingNowPlaying__block_invoke;
  v5[3] = &unk_279B08930;
  objc_copyWeak(&v6, &location);
  [(RMSIDSClient *)idsClient beginObservingNowPlayingWithSessionIdentifier:sessionIdentifier completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__RMSControlSessionProxy_beginObservingNowPlaying__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained beginObservingNowPlaying];
  }
}

- (void)endObservingNowPlaying
{
  if ([(RMSSessionProxy *)self sessionIdentifier])
  {
    idsClient = self->_idsClient;
    sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

    [(RMSIDSClient *)idsClient endObservingNowPlayingWithSessionIdentifier:sessionIdentifier];
  }
}

- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count
{
  v4 = *&count;
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

  [(RMSIDSClient *)idsClient sendTouchMoveWithDirection:direction repeatCount:v4 sessionIdentifier:sessionIdentifier];
}

- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(unsigned int)count
{
  v4 = *&count;
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

  [(RMSIDSClient *)idsClient sendTouchEndWithDirection:direction repeatCount:v4 sessionIdentifier:sessionIdentifier];
}

- (void)sendNavigationCommand:(int64_t)command
{
  idsClient = self->_idsClient;
  sessionIdentifier = [(RMSSessionProxy *)self sessionIdentifier];

  [(RMSIDSClient *)idsClient sendNavigationCommand:command sessionIdentifier:sessionIdentifier];
}

- (void)sendText:(id)text completionHandler:(id)handler
{
  idsClient = self->_idsClient;
  handlerCopy = handler;
  textCopy = text;
  [(RMSIDSClient *)idsClient sendText:textCopy sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier] completionHandler:handlerCopy];
}

- (void)heartbeatDidFail
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)_notifyDelegateForArtworkChange
{
  artworkIdentifier = [(RMSNowPlayingInfo *)self->_nowPlayingInfo artworkIdentifier];
  v3 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  v4 = [v3 artworkDataForIdentifier:artworkIdentifier];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self artworkDataDidBecomeAvailable:v4 identifier:artworkIdentifier];
}

- (void)_handleDidReceivePairingChallengeRequestNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__RMSControlSessionProxy__handleDidReceivePairingChallengeRequestNotification___block_invoke;
  v6[3] = &unk_279B09020;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __79__RMSControlSessionProxy__handleDidReceivePairingChallengeRequestNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userInfo];
  v4 = [v3 objectForKeyedSubscript:@"RMSIDSClientPairingCredentialsNotificationKey"];
  v5 = [*(a1 + 40) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"RMSIDSClientPairingCompletionHandlerNotificationKey"];
  [WeakRetained controlSession:v2 didReceivePairingChallengeRequestWithCredentials:v4 completionHandler:v6];
}

- (void)_handleNowPlayingInfoDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientNowPlayingInfoNotificationKey"];

    LODWORD(userInfo) = [v5 revisionNumber];
    if (userInfo >= [(RMSNowPlayingInfo *)self->_nowPlayingInfo revisionNumber])
    {
      artworkIdentifier = [(RMSNowPlayingInfo *)self->_nowPlayingInfo artworkIdentifier];
      artworkIdentifier2 = [v5 artworkIdentifier];
      objc_storeStrong(&self->_nowPlayingInfo, v5);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained controlSession:self didUpdateNowPlayingInfo:v5];

      if (([artworkIdentifier2 isEqualToString:artworkIdentifier] & 1) == 0 && artworkIdentifier2 != artworkIdentifier)
      {
        [(RMSControlSessionProxy *)self _notifyDelegateForArtworkChange];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_handleAudioRoutesDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientNowPlayingAudioRoutesNotificationKey"];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained controlSession:self didUpdateAudioRoutes:v5];
  }
}

- (void)_handleVolumeDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"RMSIDSClientNowPlayingVolumeNotificationKey"];
    [v5 floatValue];
    v7 = v6;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LODWORD(v9) = v7;
    [WeakRetained controlSession:self didUpdateVolume:v9];
  }
}

- (void)_handleNowPlayingArtworkDidBecomeAvailableNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notificationCopy])
  {
    userInfo = [notificationCopy userInfo];
    v6 = [userInfo objectForKey:@"RMSIDSClientNowPlayingArtworkIdentifierKey"];

    artworkIdentifier = [(RMSNowPlayingInfo *)self->_nowPlayingInfo artworkIdentifier];
    if ([v6 isEqualToString:artworkIdentifier])
    {
      v8 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
      v9 = [v8 artworkDataForIdentifier:artworkIdentifier];

      if (v9)
      {
        v10 = RMSLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Control session was notified of avialable artwork for [%@], but data is already in cache", buf, 0xCu);
        }
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v13 = v12;
        v15 = v14;

        objc_initWeak(buf, self);
        idsClient = self->_idsClient;
        nowPlayingInfo = self->_nowPlayingInfo;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __81__RMSControlSessionProxy__handleNowPlayingArtworkDidBecomeAvailableNotification___block_invoke;
        v19[3] = &unk_279B09420;
        v20 = v6;
        objc_copyWeak(&v21, buf);
        LODWORD(v18) = 1050253722;
        [(RMSIDSClient *)idsClient requestArtworkDataForNowPlayingInfo:nowPlayingInfo width:v13 height:v15 compressionQuality:v19 completionHandler:v18];
        objc_destroyWeak(&v21);

        objc_destroyWeak(buf);
      }
    }

    else
    {
      v9 = RMSLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = artworkIdentifier;
        _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Control session was notified of available artwork for [%@], but current now playing is [%@]", buf, 0x16u);
      }
    }
  }
}

void __81__RMSControlSessionProxy__handleNowPlayingArtworkDidBecomeAvailableNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
  [v4 setArtworkData:v3 forIdentifier:*(a1 + 32)];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyDelegateForArtworkChange];
}

- (void)_handleSessionDidEndNotification:(id)notification
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notification])
  {
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Control session ended", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__RMSControlSessionProxy__handleSessionDidEndNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __59__RMSControlSessionProxy__handleSessionDidEndNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) endHeartbeat];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained controlSessionDidEnd:*(a1 + 32)];
}

- (void)_handleDidBeginEditingTextNotification:(id)notification
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notification])
  {
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Control session did begin editing text", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__RMSControlSessionProxy__handleDidBeginEditingTextNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__RMSControlSessionProxy__handleDidBeginEditingTextNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained controlSessionDidBeginEditingText:*(a1 + 32)];
}

- (void)_handleDidEndEditingTextNotification:(id)notification
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:notification])
  {
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Control session did end diting text", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RMSControlSessionProxy__handleDidEndEditingTextNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__RMSControlSessionProxy__handleDidEndEditingTextNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained controlSessionDidEndEditingText:*(a1 + 32)];
}

- (RMSControlSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end