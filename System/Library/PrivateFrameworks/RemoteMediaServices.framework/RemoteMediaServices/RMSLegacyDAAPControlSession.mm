@interface RMSLegacyDAAPControlSession
- (RMSControlSessionDelegate)delegate;
- (RMSLegacyDAAPControlSession)init;
- (id)_stringFromRMSPlaybackCommand:(int64_t)a3;
- (void)_initializeManagersWithControlInterface:(id)a3 completionHandler:(id)a4;
- (void)addToWishlist:(unint64_t)a3 databaseID:(unint64_t)a4 completionHandler:(id)a5;
- (void)connectToService:(id)a3 pairingGUID:(id)a4 allowPairing:(BOOL)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)logout;
- (void)nowPlayingManager:(id)a3 artworkDataDidBecomeAvailable:(id)a4 identifier:(id)a5;
- (void)nowPlayingManager:(id)a3 didUpdateAudioRoutes:(id)a4;
- (void)nowPlayingManager:(id)a3 didUpdateNowPlayingInfo:(id)a4;
- (void)nowPlayingManager:(id)a3 didUpdateVolume:(float)a4;
- (void)pickAudioRoute:(id)a3 completionHandler:(id)a4;
- (void)requestManagerFailedWithUnauthorizedError:(id)a3;
- (void)requestManagerFailedWithUnknownError:(id)a3;
- (void)seekToPlaybackTime:(int)a3 completionHandler:(id)a4;
- (void)sendNavigationCommand:(int64_t)a3;
- (void)sendPlaybackCommand:(int64_t)a3 completionHandler:(id)a4;
- (void)setLikedState:(int64_t)a3 itemID:(unint64_t)a4 databaseID:(unint64_t)a5 completionHandler:(id)a6;
- (void)setVolume:(float)a3 completionHandler:(id)a4;
- (void)touchRemoteManagerDidDisconnect:(id)a3;
@end

@implementation RMSLegacyDAAPControlSession

- (RMSLegacyDAAPControlSession)init
{
  v12.receiver = self;
  v12.super_class = RMSLegacyDAAPControlSession;
  v2 = [(RMSLegacyDAAPControlSession *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    requestManager = v2->_requestManager;
    v2->_requestManager = v3;

    [(RMSDAAPRequestManager *)v2->_requestManager setDelegate:v2];
    v5 = [[RMSDAAPLoginManager alloc] initWithRequestManager:v2->_requestManager];
    loginManager = v2->_loginManager;
    v2->_loginManager = v5;

    v7 = [[RMSDAAPNowPlayingManager alloc] initWithRequestManager:v2->_requestManager];
    nowPlayingManager = v2->_nowPlayingManager;
    v2->_nowPlayingManager = v7;

    [(RMSDAAPNowPlayingManager *)v2->_nowPlayingManager setDelegate:v2];
    v9 = [[RMSDAAPTouchRemoteManager alloc] initWithRequestManager:v2->_requestManager];
    touchRemoteManager = v2->_touchRemoteManager;
    v2->_touchRemoteManager = v9;

    [(RMSDAAPTouchRemoteManager *)v2->_touchRemoteManager setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(RMSDAAPNowPlayingManager *)self->_nowPlayingManager endObservingNowPlaying];
  v3.receiver = self;
  v3.super_class = RMSLegacyDAAPControlSession;
  [(RMSLegacyDAAPControlSession *)&v3 dealloc];
}

- (void)connectToService:(id)a3 pairingGUID:(id)a4 allowPairing:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_storeStrong(&self->_service, a3);
  requestManager = self->_requestManager;
  v14 = [v10 hostName];
  [(RMSDAAPRequestManager *)requestManager setHostName:v14];

  -[RMSDAAPRequestManager setPort:](self->_requestManager, "setPort:", [v10 port]);
  v15 = self->_requestManager;
  v16 = [v10 homeSharingGroupKey];
  [(RMSDAAPRequestManager *)v15 setHomeSharingGroupKey:v16];

  [(RMSDAAPRequestManager *)self->_requestManager setPairingGUID:v11];
  [(RMSDAAPRequestManager *)self->_requestManager setSessionIdentifier:0];
  objc_initWeak(&location, self);
  loginManager = self->_loginManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__RMSLegacyDAAPControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke;
  v19[3] = &unk_279B09240;
  objc_copyWeak(&v21, &location);
  v18 = v12;
  v20 = v18;
  [(RMSDAAPLoginManager *)loginManager loginWithCompletionHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __91__RMSLegacyDAAPControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__RMSLegacyDAAPControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke_2;
    v7[3] = &unk_279B09218;
    v9 = *(a1 + 32);
    v8 = v5;
    [WeakRetained _initializeManagersWithControlInterface:v8 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)logout
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "logout"];
  v3 = [(RMSDAAPRequestManager *)self->_requestManager requestWithPath:v4 method:@"GET" postData:0 queryArgs:0 completionHandler:0];
}

- (void)sendPlaybackCommand:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = [(RMSLegacyDAAPControlSession *)self _stringFromRMSPlaybackCommand:a3];
  v9 = [v7 stringWithFormat:@"%s/1/%@", "ctrl-int", v8];

  requestManager = self->_requestManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__RMSLegacyDAAPControlSession_sendPlaybackCommand_completionHandler___block_invoke;
  v13[3] = &unk_279B08CF0;
  v11 = v6;
  v14 = v11;
  v12 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v9 method:@"POST" postData:0 queryArgs:0 completionHandler:v13];
  if ((a3 - 5) <= 1 && [(RMSDAAPNowPlayingManager *)self->_nowPlayingManager isObserving])
  {
    [(RMSDAAPNowPlayingManager *)self->_nowPlayingManager endObservingNowPlaying];
    [(RMSDAAPNowPlayingManager *)self->_nowPlayingManager beginObservingNowPlaying];
  }
}

uint64_t __69__RMSLegacyDAAPControlSession_sendPlaybackCommand_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setVolume:(float)a3 completionHandler:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (a3 * 100.0)];
  requestManager = self->_requestManager;
  v15 = @"dmcp.volume";
  v16[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RMSLegacyDAAPControlSession_setVolume_completionHandler___block_invoke;
  v13[3] = &unk_279B08CF0;
  v14 = v6;
  v11 = v6;
  v12 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v7 method:@"POST" postData:0 queryArgs:v10 completionHandler:v13];
}

uint64_t __59__RMSLegacyDAAPControlSession_setVolume_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pickAudioRoute:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [v7 stringWithFormat:@"%s/1/%s", "ctrl-int", "setspeakers"];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v8 macAddress];

  v12 = [v10 stringWithFormat:@"0x%qx", v11];
  requestManager = self->_requestManager;
  v19 = @"speaker-id";
  v20[0] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__RMSLegacyDAAPControlSession_pickAudioRoute_completionHandler___block_invoke;
  v17[3] = &unk_279B08CF0;
  v18 = v6;
  v15 = v6;
  v16 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v9 method:@"POST" postData:0 queryArgs:v14 completionHandler:v17];
}

uint64_t __64__RMSLegacyDAAPControlSession_pickAudioRoute_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)seekToPlaybackTime:(int)a3 completionHandler:(id)a4
{
  v4 = *&a3;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v15 = @"dacp.playingtime";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  requestManager = self->_requestManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__RMSLegacyDAAPControlSession_seekToPlaybackTime_completionHandler___block_invoke;
  v13[3] = &unk_279B08CF0;
  v14 = v6;
  v11 = v6;
  v12 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v7 method:@"POST" postData:0 queryArgs:v9 completionHandler:v13];
}

uint64_t __68__RMSLegacyDAAPControlSession_seekToPlaybackTime_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setLikedState:(int64_t)a3 itemID:(unint64_t)a4 databaseID:(unint64_t)a5 completionHandler:(id)a6
{
  v22[3] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v21[0] = @"com.apple.itunes.liked-state";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v22[0] = v12;
  v21[1] = @"database-spec";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", a5];
  v22[1] = v13;
  v21[2] = @"item-spec";
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", a4];
  v22[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  requestManager = self->_requestManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__RMSLegacyDAAPControlSession_setLikedState_itemID_databaseID_completionHandler___block_invoke;
  v19[3] = &unk_279B08CF0;
  v20 = v10;
  v17 = v10;
  v18 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v11 method:@"POST" postData:0 queryArgs:v15 completionHandler:v19];
}

uint64_t __81__RMSLegacyDAAPControlSession_setLikedState_itemID_databaseID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addToWishlist:(unint64_t)a3 databaseID:(unint64_t)a4 completionHandler:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v19[0] = &unk_287486D50;
  v18[0] = @"com.apple.itunes.wishlist";
  v18[1] = @"database-spec";
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", a4];
  v19[1] = v10;
  v18[2] = @"item-spec";
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", a3];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  requestManager = self->_requestManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__RMSLegacyDAAPControlSession_addToWishlist_databaseID_completionHandler___block_invoke;
  v16[3] = &unk_279B08CF0;
  v17 = v8;
  v14 = v8;
  v15 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v9 method:@"POST" postData:0 queryArgs:v12 completionHandler:v16];
}

uint64_t __74__RMSLegacyDAAPControlSession_addToWishlist_databaseID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendNavigationCommand:(int64_t)a3
{
  if (a3 == 3 && [(RMSService *)self->_service isLegacyAppleTV])
  {

    [(RMSLegacyDAAPControlSession *)self sendPlaybackCommand:2 completionHandler:0];
  }

  else
  {
    touchRemoteManager = self->_touchRemoteManager;

    [(RMSDAAPTouchRemoteManager *)touchRemoteManager sendNavigationCommand:a3];
  }
}

- (void)nowPlayingManager:(id)a3 artworkDataDidBecomeAvailable:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self artworkDataDidBecomeAvailable:v8 identifier:v7];
}

- (void)nowPlayingManager:(id)a3 didUpdateAudioRoutes:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self didUpdateAudioRoutes:v5];
}

- (void)nowPlayingManager:(id)a3 didUpdateNowPlayingInfo:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self didUpdateNowPlayingInfo:v5];

  if ([(RMSNowPlayingInfo *)self->_nowPlayingInfo revisionNumber]>= 1 && ![(RMSNowPlayingInfo *)v5 revisionNumber])
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 controlSessionDidEnd:self];
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  self->_nowPlayingInfo = v5;
}

- (void)nowPlayingManager:(id)a3 didUpdateVolume:(float)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v6 = a4;
  [WeakRetained controlSession:self didUpdateVolume:v6];
}

- (void)requestManagerFailedWithUnknownError:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)requestManagerFailedWithUnauthorizedError:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)touchRemoteManagerDidDisconnect:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)_initializeManagersWithControlInterface:(id)a3 completionHandler:(id)a4
{
  nowPlayingManager = self->_nowPlayingManager;
  v9 = a4;
  v7 = a3;
  [(RMSDAAPNowPlayingManager *)nowPlayingManager setControlInterface:v7];
  LODWORD(nowPlayingManager) = [v7 supportsDirectionalControl];

  if (nowPlayingManager)
  {
    [(RMSDAAPTouchRemoteManager *)self->_touchRemoteManager initiateControlWithCompletionHandler:v9];

    v8 = [(RMSDAAPRequestManager *)self->_requestManager requestWithPath:@"playqueue-contents" method:@"POST" postData:0 queryArgs:0 completionHandler:0];
  }

  else
  {
    (*(v9 + 2))(v9, 1);
  }
}

- (id)_stringFromRMSPlaybackCommand:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return @"play";
  }

  else
  {
    return off_279B09260[a3 - 1];
  }
}

- (RMSControlSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end