@interface RMSDAAPNowPlayingManager
- (BOOL)_audioRoutes:(id)routes equalAudioRoutes:(id)audioRoutes;
- (RMSDAAPNowPlayingManager)initWithRequestManager:(id)manager;
- (RMSDAAPNowPlayingManagerDelegate)delegate;
- (void)_cancelArtworkRetryTimer;
- (void)_refreshNowPlayingInfoRequest;
- (void)_requestArtworkDataIfNecessaryForNowPlayingInfo:(id)info;
- (void)_requestAudioRoutes;
- (void)_requestNowPlayingInfoWithCompletionHandler:(id)handler;
- (void)_requestVolume;
- (void)_scheduleArtworkRetryForNowPlayingInfo:(id)info delay:(double)delay;
- (void)beginObservingNowPlaying;
- (void)endObservingNowPlaying;
@end

@implementation RMSDAAPNowPlayingManager

- (RMSDAAPNowPlayingManager)initWithRequestManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = RMSDAAPNowPlayingManager;
  v6 = [(RMSDAAPNowPlayingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestManager, manager);
  }

  return v7;
}

- (void)beginObservingNowPlaying
{
  if (self->_isObserving)
  {
    v2 = RMSLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_261E98000, v2, OS_LOG_TYPE_DEFAULT, "NowPlayingManager asked to begin observing, but observing was already in progress", buf, 2u);
    }
  }

  else
  {
    self->_isObserving = 1;
    objc_initWeak(buf, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__RMSDAAPNowPlayingManager_beginObservingNowPlaying__block_invoke;
    v4[3] = &unk_279B08DA8;
    objc_copyWeak(&v5, buf);
    [(RMSDAAPNowPlayingManager *)self _requestNowPlayingInfoWithCompletionHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void __52__RMSDAAPNowPlayingManager_beginObservingNowPlaying__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      objc_storeStrong(WeakRetained + 2, a3);
      v8[9] = 0;
      v9 = objc_loadWeakRetained(v8 + 15);
      [v9 nowPlayingManager:v8 didUpdateNowPlayingInfo:v6];

      [v8 _requestArtworkDataIfNecessaryForNowPlayingInfo:v6];
      if ([v8[3] supportsSpeakerSelection])
      {
        [v8 _requestAudioRoutes];
      }

      if ([v8[3] supportsVolumeControl])
      {
        [v8 _requestVolume];
      }

      [v8 _refreshNowPlayingInfoRequest];
    }

    else
    {
      [WeakRetained[2] setRevisionNumber:0];
      v10 = v8[9];
      if (v10 >= 9)
      {
        v10 = 9;
      }

      v8[9] = (v10 + 1);
      v11 = RMSLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v8[9];
        *buf = 134217984;
        v17 = v12;
        _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "Now playing info unavailable, retrying in %zd seconds", buf, 0xCu);
      }

      v13 = dispatch_time(0, 1000000000 * v8[9]);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__RMSDAAPNowPlayingManager_beginObservingNowPlaying__block_invoke_1;
      block[3] = &unk_279B08898;
      objc_copyWeak(&v15, (a1 + 32));
      dispatch_after(v13, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v15);
    }
  }
}

void __52__RMSDAAPNowPlayingManager_beginObservingNowPlaying__block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshNowPlayingInfoRequest];
}

- (void)endObservingNowPlaying
{
  self->_isObserving = 0;
  currentNowPlayingInfo = self->_currentNowPlayingInfo;
  self->_currentNowPlayingInfo = 0;

  currentAudioRoutes = self->_currentAudioRoutes;
  self->_currentAudioRoutes = 0;

  lastVolume = self->_lastVolume;
  self->_lastVolume = 0;

  self->_requestBackoffInterval = 0;
  self->_artworkRequestBackoffInterval = 0;
  [(NSURLSessionDataTask *)self->_nowPlayingInfoRequest cancel];
  [(NSURLSessionDataTask *)self->_artworkRequest cancel];
  [(NSURLSessionDataTask *)self->_audioRoutesRequest cancel];
  [(NSURLSessionDataTask *)self->_volumeRequest cancel];

  [(RMSDAAPNowPlayingManager *)self _cancelArtworkRetryTimer];
}

- (void)_refreshNowPlayingInfoRequest
{
  if (self->_isObserving)
  {
    self->_isObserving = 0;
    [(RMSDAAPNowPlayingManager *)self beginObservingNowPlaying];
  }
}

- (void)_requestNowPlayingInfoWithCompletionHandler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "playstatusupdate"];
  [(NSURLSessionDataTask *)self->_nowPlayingInfoRequest cancel];
  v14 = @"revision-number";
  requestManager = self->_requestManager;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[RMSNowPlayingInfo revisionNumber](self->_currentNowPlayingInfo, "revisionNumber")}];
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__RMSDAAPNowPlayingManager__requestNowPlayingInfoWithCompletionHandler___block_invoke;
  v12[3] = &unk_279B08CF0;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v5 method:@"GET" postData:0 queryArgs:v8 completionHandler:v12];
  nowPlayingInfoRequest = self->_nowPlayingInfoRequest;
  self->_nowPlayingInfoRequest = v10;
}

void __72__RMSDAAPNowPlayingManager__requestNowPlayingInfoWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 == 1)
  {
    v6 = [RMSDAAPParser objectWithData:v5];
    v7 = RMSLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412290;
      v35 = v6;
      _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Received now-playing info: %@", &v34, 0xCu);
    }

    v8 = objc_opt_new();
    v9 = [v6 objectForKeyedSubscript:@"dmap.itemid"];
    [v8 setItemID:{objc_msgSend(v9, "longLongValue")}];

    v10 = [v6 objectForKeyedSubscript:@"dmap.databaseid"];
    [v8 setDatabaseID:{objc_msgSend(v10, "longLongValue")}];

    v11 = [v6 objectForKeyedSubscript:@"dmap.itemname"];
    [v8 setTrackName:v11];

    v12 = [v6 objectForKeyedSubscript:@"daap.songartist"];
    [v8 setArtistName:v12];

    v13 = [v6 objectForKeyedSubscript:@"daap.songalbum"];
    [v8 setAlbumName:v13];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v8 setTimestamp:?];
    v14 = [v6 objectForKeyedSubscript:@"daap.songtimeremaining"];
    [v8 setTimeRemaining:{objc_msgSend(v14, "unsignedIntValue")}];

    v15 = [v6 objectForKeyedSubscript:@"daap.songtime"];
    [v8 setTotalDuration:{objc_msgSend(v15, "unsignedIntValue")}];

    v16 = [v6 objectForKeyedSubscript:@"dmcp.playstatusrevision"];
    [v8 setRevisionNumber:{objc_msgSend(v16, "intValue")}];

    v17 = [v6 objectForKeyedSubscript:@"com.apple.itunes.likeable"];
    [v8 setLikeable:{objc_msgSend(v17, "BOOLValue")}];

    v18 = [v6 objectForKeyedSubscript:@"com.apple.itunes.can-add-to-wishlist"];
    [v8 setCanWishlist:{objc_msgSend(v18, "BOOLValue")}];

    v19 = [v6 objectForKeyedSubscript:@"com.apple.itunes.has-chapter-data"];
    [v8 setHasChapterData:{objc_msgSend(v19, "BOOLValue")}];

    v20 = [v6 objectForKeyedSubscript:@"mediaKind"];
    v21 = [v20 integerValue];

    if (v21 <= 4095)
    {
      if (v21 > 127)
      {
        if (v21 <= 511)
        {
          if (v21 != 128 && v21 != 256)
          {
            goto LABEL_53;
          }
        }

        else if (v21 != 512 && v21 != 1024 && v21 != 2048)
        {
          goto LABEL_53;
        }
      }

      else if ((v21 - 1) > 0x3F || ((1 << (v21 - 1)) & 0x800000008000808BLL) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v21 < 0x40000)
    {
      if (v21 >= 0x8000)
      {
        if (v21 != 0x8000 && v21 != 0x10000 && v21 != 0x20000)
        {
          goto LABEL_53;
        }
      }

      else if (v21 != 4096 && v21 != 0x2000 && v21 != 0x4000)
      {
        goto LABEL_53;
      }
    }

    else if (v21 < 0x200000)
    {
      if (v21 != 0x40000 && v21 != 0x80000 && v21 != 0x100000)
      {
        goto LABEL_53;
      }
    }

    else if (v21 >= 0x800000)
    {
      if (v21 != 0x800000 && v21 != 0x1000000)
      {
        goto LABEL_53;
      }
    }

    else if (v21 != 0x200000 && v21 != 0x400000)
    {
LABEL_53:
      v21 = 0;
    }

    [v8 setMediaKind:v21];
    v22 = [v6 objectForKeyedSubscript:@"dacp.available-skip-states"];
    v23 = [v22 integerValue];

    [v8 setCanSkipPrevious:(v23 >> 2) & 1];
    [v8 setCanSkipNext:(v23 >> 1) & 1];
    v24 = [v6 objectForKeyedSubscript:@"dacp.playerstate"];
    v25 = [v24 integerValue];

    if ((v25 - 1) >= 6)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    [v8 setPlaybackState:v26];
    v27 = [v6 objectForKeyedSubscript:@"com.apple.itunes.liked-state"];
    v28 = [v27 integerValue];

    if ((v28 - 1) >= 3)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    [v8 setLikedState:v29];
    v30 = [v6 objectForKeyedSubscript:@"dacp.scrubbable"];
    v31 = v30;
    if (v30)
    {
      if ([v30 BOOLValue])
      {
        v32 = 1;
      }

      else
      {
        v32 = -1;
      }
    }

    else
    {
      v32 = 0;
    }

    [v8 setScrubbableState:v32];

    goto LABEL_27;
  }

  v8 = 0;
LABEL_27:
  v33 = *(a1 + 32);
  if (v33)
  {
    (*(v33 + 16))(v33, a2, v8);
  }
}

- (void)_requestArtworkDataIfNecessaryForNowPlayingInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  artworkIdentifier = [infoCopy artworkIdentifier];
  v6 = artworkIdentifier;
  if (!artworkIdentifier)
  {
    v11 = RMSLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "Now playing is empty, don't fetch artwork", buf, 2u);
    }

    [(NSURLSessionDataTask *)self->_artworkRequest cancel];
    currentArtworkIdentifier = self->_currentArtworkIdentifier;
    self->_currentArtworkIdentifier = 0;
    goto LABEL_12;
  }

  if (([artworkIdentifier isEqualToString:self->_currentArtworkIdentifier] & 1) == 0)
  {
    [(NSURLSessionDataTask *)self->_artworkRequest cancel];
    [(RMSDAAPNowPlayingManager *)self _cancelArtworkRetryTimer];
    objc_storeStrong(&self->_currentArtworkIdentifier, v6);
    v7 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
    currentArtworkIdentifier = [v7 artworkDataForNowPlayingInfo:infoCopy];

    if (currentArtworkIdentifier)
    {
      v9 = RMSLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Artwork was cached for identifier: %@", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained nowPlayingManager:self artworkDataDidBecomeAvailable:currentArtworkIdentifier identifier:v6];
    }

    else
    {
      WeakRetained = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "nowplayingartwork"];
      objc_initWeak(buf, self);
      requestManager = self->_requestManager;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __76__RMSDAAPNowPlayingManager__requestArtworkDataIfNecessaryForNowPlayingInfo___block_invoke;
      v15[3] = &unk_279B08DD0;
      objc_copyWeak(&v18, buf);
      v16 = infoCopy;
      v17 = v6;
      v13 = [(RMSDAAPRequestManager *)requestManager requestWithPath:WeakRetained method:@"GET" postData:0 queryArgs:0 completionHandler:v15];
      artworkRequest = self->_artworkRequest;
      self->_artworkRequest = v13;

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }

LABEL_12:
  }
}

void __76__RMSDAAPNowPlayingManager__requestArtworkDataIfNecessaryForNowPlayingInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2 == 1 && [v5 length])
    {
      *(WeakRetained + 10) = 0;
      v7 = +[RMSNowPlayingArtworkCache sharedArtworkCache];
      [v7 setArtworkData:v5 forNowPlayingInfo:*(a1 + 32)];

      v8 = objc_loadWeakRetained(WeakRetained + 15);
      [v8 nowPlayingManager:WeakRetained artworkDataDidBecomeAvailable:v5 identifier:*(a1 + 40)];
    }

    else
    {
      v9 = *(WeakRetained + 11);
      *(WeakRetained + 11) = 0;

      v10 = *(WeakRetained + 10);
      if (v10 >= 9)
      {
        v10 = 9;
      }

      *(WeakRetained + 10) = v10 + 1;
      v11 = RMSLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(WeakRetained + 10);
        v13 = 134217984;
        v14 = v12;
        _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "Artwork unavailable, retrying in %zd seconds", &v13, 0xCu);
      }

      [WeakRetained _scheduleArtworkRetryForNowPlayingInfo:*(a1 + 32) delay:*(WeakRetained + 10)];
    }
  }
}

- (void)_scheduleArtworkRetryForNowPlayingInfo:(id)info delay:(double)delay
{
  infoCopy = info;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  artworkRetryTimer = self->_artworkRetryTimer;
  self->_artworkRetryTimer = v7;

  objc_initWeak(&location, self);
  v9 = self->_artworkRetryTimer;
  v10 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, (delay * 1000000000.0) / 10);
  v11 = self->_artworkRetryTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __73__RMSDAAPNowPlayingManager__scheduleArtworkRetryForNowPlayingInfo_delay___block_invoke;
  handler[3] = &unk_279B08BB0;
  objc_copyWeak(&v15, &location);
  v14 = infoCopy;
  v12 = infoCopy;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(self->_artworkRetryTimer);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __73__RMSDAAPNowPlayingManager__scheduleArtworkRetryForNowPlayingInfo_delay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestArtworkDataIfNecessaryForNowPlayingInfo:*(a1 + 32)];
}

- (void)_cancelArtworkRetryTimer
{
  artworkRetryTimer = self->_artworkRetryTimer;
  if (artworkRetryTimer)
  {
    dispatch_source_cancel(artworkRetryTimer);
    v4 = self->_artworkRetryTimer;
    self->_artworkRetryTimer = 0;
  }
}

- (void)_requestAudioRoutes
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "getspeakers"];
  [(NSURLSessionDataTask *)self->_audioRoutesRequest cancel];
  requestManager = self->_requestManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RMSDAAPNowPlayingManager__requestAudioRoutes__block_invoke;
  v7[3] = &unk_279B08DF8;
  objc_copyWeak(&v8, &location);
  v5 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v3 method:@"POST" postData:0 queryArgs:0 completionHandler:v7];
  audioRoutesRequest = self->_audioRoutesRequest;
  self->_audioRoutesRequest = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __47__RMSDAAPNowPlayingManager__requestAudioRoutes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2 == 1 && WeakRetained)
  {
    v23 = WeakRetained;
    v24 = v5;
    v8 = [RMSDAAPParser objectWithData:v5];
    v9 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = objc_opt_new();
          v16 = [v14 objectForKeyedSubscript:@"dmap.itemname"];
          [v15 setDisplayName:v16];

          v17 = [v14 objectForKeyedSubscript:@"dacp.macAddress"];
          [v15 setMacAddress:{objc_msgSend(v17, "longLongValue")}];

          v18 = [v14 objectForKeyedSubscript:@"dacp.supportsVideo"];
          [v15 setSupportsVideo:{objc_msgSend(v18, "BOOLValue")}];

          v19 = [v14 objectForKeyedSubscript:@"dacp.selectedForVideo"];
          v20 = [v19 BOOLValue];

          v21 = [v14 objectForKeyedSubscript:@"dacp.selectedForAudio"];
          LOBYTE(v19) = [v21 BOOLValue];

          [v15 setSelected:(v19 | v20) & 1];
          [v9 addObject:v15];
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v7 = v23;
    if (([v23 _audioRoutes:v9 equalAudioRoutes:v23[12]] & 1) == 0)
    {
      objc_storeStrong(v23 + 12, v9);
      v22 = objc_loadWeakRetained(v23 + 15);
      [v22 nowPlayingManager:v23 didUpdateAudioRoutes:v9];
    }

    v5 = v24;
  }
}

- (void)_requestVolume
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "getproperty"];
  [(NSURLSessionDataTask *)self->_volumeRequest cancel];
  requestManager = self->_requestManager;
  v11 = @"properties";
  v12[0] = @"dmcp.volume";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__RMSDAAPNowPlayingManager__requestVolume__block_invoke;
  v8[3] = &unk_279B08DF8;
  objc_copyWeak(&v9, &location);
  v6 = [(RMSDAAPRequestManager *)requestManager requestWithPath:v3 method:@"POST" postData:0 queryArgs:v5 completionHandler:v8];
  volumeRequest = self->_volumeRequest;
  self->_volumeRequest = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__RMSDAAPNowPlayingManager__requestVolume__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [RMSDAAPParser objectWithData:v14];
    v6 = [v5 objectForKeyedSubscript:@"dacp.volume"];
    [v6 floatValue];
    v8 = v7;

    [WeakRetained[13] floatValue];
    if (v8 != *&v9 || !WeakRetained[13])
    {
      *&v9 = v8;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      v11 = WeakRetained[13];
      WeakRetained[13] = v10;

      v12 = objc_loadWeakRetained(WeakRetained + 15);
      *&v13 = v8;
      [v12 nowPlayingManager:WeakRetained didUpdateVolume:v13];
    }
  }
}

- (BOOL)_audioRoutes:(id)routes equalAudioRoutes:(id)audioRoutes
{
  v32 = *MEMORY[0x277D85DE8];
  routesCopy = routes;
  audioRoutesCopy = audioRoutes;
  v7 = [routesCopy count];
  if (v7 == [audioRoutesCopy count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = routesCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      v21 = routesCopy;
      while (1)
      {
        v12 = 0;
LABEL_5:
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = audioRoutesCopy;
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = *v23;
LABEL_9:
        v18 = 0;
        while (1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([v13 isEqualToAudioRoute:*(*(&v22 + 1) + 8 * v18)])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v16)
            {
              goto LABEL_9;
            }

            goto LABEL_20;
          }
        }

        if (++v12 != v10)
        {
          goto LABEL_5;
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        v19 = 1;
        routesCopy = v21;
        if (!v10)
        {
          goto LABEL_22;
        }
      }

LABEL_20:

      v19 = 0;
      routesCopy = v21;
    }

    else
    {
      v19 = 1;
    }

LABEL_22:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (RMSDAAPNowPlayingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end