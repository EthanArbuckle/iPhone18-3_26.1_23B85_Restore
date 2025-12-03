@interface SUAudioPlayer
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (SUAudioPlayer)initWithURL:(id)l;
- (SUPlayerStatus)playerStatus;
- (id)_newFadeInAudioMixForAsset:(id)asset;
- (id)valueForNowPlayingKey:(id)key;
- (void)_applyNowPlayingInfo;
- (void)_destroyPlayer;
- (void)_destroyPlayerItem;
- (void)_failWithError:(id)error;
- (void)_handleAssetValuesDidLoad;
- (void)_itemFailedToPlayToEndNotification:(id)notification;
- (void)_itemPlayedToEndNotification:(id)notification;
- (void)_postStatusChangeNotification;
- (void)_setPlayerState:(int64_t)state;
- (void)_updateForPeriodicTickWithTime:(double)time;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)play;
- (void)seekToTime:(double)time;
- (void)setValue:(id)value forNowPlayingKey:(id)key;
- (void)stop;
@end

@implementation SUAudioPlayer

- (SUAudioPlayer)initWithURL:(id)l
{
  v7.receiver = self;
  v7.super_class = SUAudioPlayer;
  v4 = [(SUAudioPlayer *)&v7 init];
  if (v4)
  {
    v4->_url = l;
    v5 = objc_alloc_init(SUPlayerStatus);
    v4->_status = v5;
    [(SUPlayerStatus *)v5 setPlayerState:0];
  }

  return v4;
}

- (void)dealloc
{
  [(SUAudioPlayer *)self _destroyPlayer];
  [(SUAudioPlayer *)self _destroyPlayerItem];

  v3.receiver = self;
  v3.super_class = SUAudioPlayer;
  [(SUAudioPlayer *)&v3 dealloc];
}

- (SUPlayerStatus)playerStatus
{
  v2 = [(SUPlayerStatus *)self->_status copy];

  return v2;
}

- (void)play
{
  if (self->_asset)
  {
    player = self->_player;
    if (player)
    {

      [(AVPlayer *)player play];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v6 = [v5 initWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E6987C00], 0}];
    v7 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:self->_url options:v6];
    self->_asset = v7;
    [(AVAssetResourceLoader *)[(AVURLAsset *)v7 resourceLoader] setDelegate:self queue:dispatch_get_global_queue(0, 0)];
    asset = self->_asset;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"duration", @"tracks", 0}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __21__SUAudioPlayer_play__block_invoke;
    v10[3] = &unk_1E8164348;
    v10[4] = v4;
    [(AVURLAsset *)asset loadValuesAsynchronouslyForKeys:v9 completionHandler:v10];
    [(SUAudioPlayer *)self _setPlayerState:1];
  }
}

void __21__SUAudioPlayer_play__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__SUAudioPlayer_play__block_invoke_2;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __21__SUAudioPlayer_play__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return [v1 _handleAssetValuesDidLoad];
}

- (void)seekToTime:(double)time
{
  player = self->_player;
  CMTimeMakeWithSeconds(&v4, time, 1);
  [(AVPlayer *)player seekToTime:&v4];
}

- (void)setValue:(id)value forNowPlayingKey:(id)key
{
  nowPlayingInfo = self->_nowPlayingInfo;
  if (value)
  {
    if (!nowPlayingInfo)
    {
      nowPlayingInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_nowPlayingInfo = nowPlayingInfo;
    }

    [(NSMutableDictionary *)nowPlayingInfo setObject:value forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)nowPlayingInfo removeObjectForKey:key];
  }

  [(SUAudioPlayer *)self _applyNowPlayingInfo];
}

- (void)stop
{
  [(AVPlayer *)self->_player pause];
  [(SUAudioPlayer *)self _destroyPlayer];
  [(SUAudioPlayer *)self _destroyPlayerItem];

  [(SUAudioPlayer *)self _setPlayerState:5];
}

- (id)valueForNowPlayingKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_nowPlayingInfo objectForKey:key];

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (![path isEqualToString:{@"status", object, change, context}])
  {
    return;
  }

  player = self->_player;
  if (player == object)
  {
    if ([(AVPlayer *)player status]!= AVPlayerStatusFailed)
    {
      return;
    }

    v11 = self->_player;
    goto LABEL_9;
  }

  playerItem = self->_playerItem;
  if (playerItem != object)
  {
    return;
  }

  status = [(AVPlayerItem *)playerItem status];
  if (status != 1)
  {
    if (status != 2)
    {
      return;
    }

    v11 = self->_playerItem;
LABEL_9:
    error = [v11 error];

    [(SUAudioPlayer *)self _failWithError:error];
    return;
  }

  v13 = self->_player;

  [(AVPlayer *)v13 play];
}

- (void)_itemFailedToPlayToEndNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SUAudioPlayer__itemFailedToPlayToEndNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __52__SUAudioPlayer__itemFailedToPlayToEndNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[7] error];

  return [v1 _failWithError:v2];
}

- (void)_itemPlayedToEndNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SUAudioPlayer__itemPlayedToEndNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v6 = objc_alloc_init(SUPastisOperation);
  [(SUPastisOperation *)v6 setLoadingRequest:resource];
  [(SUPastisOperation *)v6 setKeyURL:self->_keyUrl];
  [(SUPastisOperation *)v6 setCertificateURL:self->_certificateUrl];
  [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];

  return 1;
}

- (void)_applyNowPlayingInfo
{
  v3 = [(SUPlayerStatus *)self->_status playerState]- 1;
  defaultCenter = [MEMORY[0x1E6970850] defaultCenter];
  if (v3 > 2)
  {
    nowPlayingInfo = 0;
  }

  else
  {
    nowPlayingInfo = self->_nowPlayingInfo;
  }

  [defaultCenter setNowPlayingInfo:nowPlayingInfo];
}

- (void)_destroyPlayer
{
  if (self->_timeObserver)
  {
    [(AVPlayer *)self->_player removeTimeObserver:?];

    self->_timeObserver = 0;
  }

  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"status"];

  self->_player = 0;
}

- (void)_destroyPlayerItem
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987A20] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6987A10] object:0];
  [(AVPlayerItem *)self->_playerItem removeObserver:self forKeyPath:@"status"];

  self->_playerItem = 0;
}

- (void)_failWithError:(id)error
{
  [(SUPlayerStatus *)self->_status setError:error];

  [(SUAudioPlayer *)self _setPlayerState:4];
}

- (void)_handleAssetValuesDidLoad
{
  v15 = 0;
  if ([(AVURLAsset *)self->_asset statusOfValueForKey:@"duration" error:&v15]== 2 && [(AVURLAsset *)self->_asset statusOfValueForKey:@"tracks" error:&v15]== 2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6988098]);
    self->_player = v3;
    [(AVPlayer *)v3 setAllowsExternalPlayback:0];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"status" options:0 context:0];
    v4 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    player = self->_player;
    CMTimeMakeWithSeconds(&time, 1.0, 4);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__SUAudioPlayer__handleAssetValuesDidLoad__block_invoke;
    v13[3] = &unk_1E8166FD0;
    v13[4] = v4;
    v6 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&time queue:MEMORY[0x1E69E96A0] usingBlock:v13];
    self->_timeObserver = v6;
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:self->_asset];
    self->_playerItem = v8;
    [(AVPlayerItem *)v8 addObserver:self forKeyPath:@"status" options:0 context:0];
    v9 = [(SUAudioPlayer *)self _newFadeInAudioMixForAsset:self->_asset];
    [(AVPlayerItem *)self->_playerItem setAudioMix:v9];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__itemFailedToPlayToEndNotification_ name:*MEMORY[0x1E6987A20] object:0];
    [defaultCenter addObserver:self selector:sel__itemPlayedToEndNotification_ name:*MEMORY[0x1E6987A10] object:self->_playerItem];
    [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:self->_playerItem];
    status = self->_status;
    asset = self->_asset;
    if (asset)
    {
      [(AVURLAsset *)asset duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [(SUPlayerStatus *)status setDuration:CMTimeGetSeconds(&time)];
    [(SUAudioPlayer *)self _postStatusChangeNotification];
  }

  else
  {
    [(SUAudioPlayer *)self _failWithError:v15];
  }
}

uint64_t __42__SUAudioPlayer__handleAssetValuesDidLoad__block_invoke(uint64_t a1, CMTime *a2)
{
  v3 = [*(a1 + 32) object];
  v5 = *a2;
  return [v3 _updateForPeriodicTickWithTime:CMTimeGetSeconds(&v5)];
}

- (id)_newFadeInAudioMixForAsset:(id)asset
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [asset tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v16 = *MEMORY[0x1E6960CC0];
    v9 = *(MEMORY[0x1E6960CC0] + 16);
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x1E6988040]);
        [v12 setTrackID:{objc_msgSend(v11, "trackID")}];
        *&v17.value = v16;
        v17.epoch = v9;
        [v12 setVolume:&v17 atTime:0.0];
        CMTimeMakeWithSeconds(&v17, 0.3, 1);
        LODWORD(v13) = 1.0;
        [v12 setVolume:&v17 atTime:v13];
        [v4 addObject:v12];

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = objc_alloc_init(MEMORY[0x1E6988038]);
  [v14 setInputParameters:v4];

  return v14;
}

- (void)_postStatusChangeNotification
{
  selfCopy = self;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUAudioPlayerStatusChangeNotification" object:self];
}

- (void)_setPlayerState:(int64_t)state
{
  if ([(SUPlayerStatus *)self->_status playerState]!= state)
  {
    [(SUPlayerStatus *)self->_status setPlayerState:state];
    [(SUAudioPlayer *)self _applyNowPlayingInfo];

    [(SUAudioPlayer *)self _postStatusChangeNotification];
  }
}

- (void)_updateForPeriodicTickWithTime:(double)time
{
  [(SUPlayerStatus *)self->_status duration];
  v6 = v5;
  [(SUPlayerStatus *)self->_status setCurrentTime:time];
  if (v6 >= time)
  {
    timeCopy = v6;
  }

  else
  {
    timeCopy = time;
  }

  [(SUPlayerStatus *)self->_status setDuration:timeCopy];
  playerState = [(SUPlayerStatus *)self->_status playerState];
  [(AVPlayer *)self->_player rate];
  v10 = 3;
  if (playerState != 2)
  {
    v10 = playerState;
  }

  if (v9 <= 0.00000011921)
  {
    v11 = v10;
  }

  else
  {
    v11 = 2;
  }

  if ([(SUPlayerStatus *)self->_status playerState]!= v11)
  {
    [(SUPlayerStatus *)self->_status setPlayerState:v11];
    [(SUAudioPlayer *)self _applyNowPlayingInfo];
  }

  if (!self->_didPostForPreviewHistory && time >= 5.0)
  {
    storeItemIdentifier = self->_storeItemIdentifier;
    if (storeItemIdentifier)
    {
      v13 = SUCreatePreviewHistoryOperation(storeItemIdentifier);
      [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
      self->_didPostForPreviewHistory = 1;
    }
  }

  [(SUAudioPlayer *)self _postStatusChangeNotification];
}

@end