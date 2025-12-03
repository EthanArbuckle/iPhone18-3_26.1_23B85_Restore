@interface RMSLegacyDAAPControlSession
- (RMSControlSessionDelegate)delegate;
- (RMSLegacyDAAPControlSession)init;
- (id)_stringFromRMSPlaybackCommand:(int64_t)command;
- (void)_initializeManagersWithControlInterface:(id)interface completionHandler:(id)handler;
- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler;
- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler;
- (void)dealloc;
- (void)logout;
- (void)nowPlayingManager:(id)manager artworkDataDidBecomeAvailable:(id)available identifier:(id)identifier;
- (void)nowPlayingManager:(id)manager didUpdateAudioRoutes:(id)routes;
- (void)nowPlayingManager:(id)manager didUpdateNowPlayingInfo:(id)info;
- (void)nowPlayingManager:(id)manager didUpdateVolume:(float)volume;
- (void)pickAudioRoute:(id)route completionHandler:(id)handler;
- (void)requestManagerFailedWithUnauthorizedError:(id)error;
- (void)requestManagerFailedWithUnknownError:(id)error;
- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler;
- (void)sendNavigationCommand:(int64_t)command;
- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler;
- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler;
- (void)setVolume:(float)volume completionHandler:(id)handler;
- (void)touchRemoteManagerDidDisconnect:(id)disconnect;
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

- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler
{
  serviceCopy = service;
  dCopy = d;
  handlerCopy = handler;
  objc_storeStrong(&self->_service, service);
  requestManager = self->_requestManager;
  hostName = [serviceCopy hostName];
  [(RMSDAAPRequestManager *)requestManager setHostName:hostName];

  -[RMSDAAPRequestManager setPort:](self->_requestManager, "setPort:", [serviceCopy port]);
  v15 = self->_requestManager;
  homeSharingGroupKey = [serviceCopy homeSharingGroupKey];
  [(RMSDAAPRequestManager *)v15 setHomeSharingGroupKey:homeSharingGroupKey];

  [(RMSDAAPRequestManager *)self->_requestManager setPairingGUID:dCopy];
  [(RMSDAAPRequestManager *)self->_requestManager setSessionIdentifier:0];
  objc_initWeak(&location, self);
  loginManager = self->_loginManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__RMSLegacyDAAPControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke;
  v19[3] = &unk_279B09240;
  objc_copyWeak(&v21, &location);
  v18 = handlerCopy;
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

- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CCACA8];
  v8 = [(RMSLegacyDAAPControlSession *)self _stringFromRMSPlaybackCommand:command];
  v9 = [v7 stringWithFormat:@"%s/1/%@", "ctrl-int", v8];

  requestManager = self->_requestManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__RMSLegacyDAAPControlSession_sendPlaybackCommand_completionHandler___block_invoke;
  v13[3] = &unk_279B08CF0;
  v11 = handlerCopy;
  v14 = v11;
  v12 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v9 method:@"POST" postData:0 queryArgs:0 completionHandler:v13];
  if ((command - 5) <= 1 && [(RMSDAAPNowPlayingManager *)self->_nowPlayingManager isObserving])
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

- (void)setVolume:(float)volume completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", (volume * 100.0)];
  requestManager = self->_requestManager;
  v15 = @"dmcp.volume";
  v16[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RMSLegacyDAAPControlSession_setVolume_completionHandler___block_invoke;
  v13[3] = &unk_279B08CF0;
  v14 = handlerCopy;
  v11 = handlerCopy;
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

- (void)pickAudioRoute:(id)route completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = MEMORY[0x277CCACA8];
  routeCopy = route;
  v9 = [v7 stringWithFormat:@"%s/1/%s", "ctrl-int", "setspeakers"];
  v10 = MEMORY[0x277CCACA8];
  macAddress = [routeCopy macAddress];

  v12 = [v10 stringWithFormat:@"0x%qx", macAddress];
  requestManager = self->_requestManager;
  v19 = @"speaker-id";
  v20[0] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__RMSLegacyDAAPControlSession_pickAudioRoute_completionHandler___block_invoke;
  v17[3] = &unk_279B08CF0;
  v18 = handlerCopy;
  v15 = handlerCopy;
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

- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler
{
  v4 = *&time;
  v16[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
  v14 = handlerCopy;
  v11 = handlerCopy;
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

- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler
{
  v22[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v21[0] = @"com.apple.itunes.liked-state";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v22[0] = v12;
  v21[1] = @"database-spec";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", iD];
  v22[1] = v13;
  v21[2] = @"item-spec";
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", d];
  v22[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  requestManager = self->_requestManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__RMSLegacyDAAPControlSession_setLikedState_itemID_databaseID_completionHandler___block_invoke;
  v19[3] = &unk_279B08CF0;
  v20 = handlerCopy;
  v17 = handlerCopy;
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

- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler
{
  v19[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "setproperty"];
  v19[0] = &unk_287486D50;
  v18[0] = @"com.apple.itunes.wishlist";
  v18[1] = @"database-spec";
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", d];
  v19[1] = v10;
  v18[2] = @"item-spec";
  wishlist = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:0x%llX'", wishlist];
  v19[2] = wishlist;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  requestManager = self->_requestManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__RMSLegacyDAAPControlSession_addToWishlist_databaseID_completionHandler___block_invoke;
  v16[3] = &unk_279B08CF0;
  v17 = handlerCopy;
  v14 = handlerCopy;
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

- (void)sendNavigationCommand:(int64_t)command
{
  if (command == 3 && [(RMSService *)self->_service isLegacyAppleTV])
  {

    [(RMSLegacyDAAPControlSession *)self sendPlaybackCommand:2 completionHandler:0];
  }

  else
  {
    touchRemoteManager = self->_touchRemoteManager;

    [(RMSDAAPTouchRemoteManager *)touchRemoteManager sendNavigationCommand:command];
  }
}

- (void)nowPlayingManager:(id)manager artworkDataDidBecomeAvailable:(id)available identifier:(id)identifier
{
  identifierCopy = identifier;
  availableCopy = available;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self artworkDataDidBecomeAvailable:availableCopy identifier:identifierCopy];
}

- (void)nowPlayingManager:(id)manager didUpdateAudioRoutes:(id)routes
{
  routesCopy = routes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self didUpdateAudioRoutes:routesCopy];
}

- (void)nowPlayingManager:(id)manager didUpdateNowPlayingInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSession:self didUpdateNowPlayingInfo:infoCopy];

  if ([(RMSNowPlayingInfo *)self->_nowPlayingInfo revisionNumber]>= 1 && ![(RMSNowPlayingInfo *)infoCopy revisionNumber])
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 controlSessionDidEnd:self];
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  self->_nowPlayingInfo = infoCopy;
}

- (void)nowPlayingManager:(id)manager didUpdateVolume:(float)volume
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v6 = volume;
  [WeakRetained controlSession:self didUpdateVolume:v6];
}

- (void)requestManagerFailedWithUnknownError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)requestManagerFailedWithUnauthorizedError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)touchRemoteManagerDidDisconnect:(id)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained controlSessionDidEnd:self];
}

- (void)_initializeManagersWithControlInterface:(id)interface completionHandler:(id)handler
{
  nowPlayingManager = self->_nowPlayingManager;
  handlerCopy = handler;
  interfaceCopy = interface;
  [(RMSDAAPNowPlayingManager *)nowPlayingManager setControlInterface:interfaceCopy];
  LODWORD(nowPlayingManager) = [interfaceCopy supportsDirectionalControl];

  if (nowPlayingManager)
  {
    [(RMSDAAPTouchRemoteManager *)self->_touchRemoteManager initiateControlWithCompletionHandler:handlerCopy];

    v8 = [(RMSDAAPRequestManager *)self->_requestManager requestWithPath:@"playqueue-contents" method:@"POST" postData:0 queryArgs:0 completionHandler:0];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

- (id)_stringFromRMSPlaybackCommand:(int64_t)command
{
  if ((command - 1) > 8)
  {
    return @"play";
  }

  else
  {
    return off_279B09260[command - 1];
  }
}

- (RMSControlSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end