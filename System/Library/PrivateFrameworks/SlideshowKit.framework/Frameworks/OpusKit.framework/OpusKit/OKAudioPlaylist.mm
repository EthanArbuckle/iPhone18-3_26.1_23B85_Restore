@interface OKAudioPlaylist
- (BOOL)isPlaying;
- (OKAudioPlaylist)initWithAudioItems:(id)items presentation:(id)presentation;
- (OKAudioPlaylist)initWithAudioURLs:(id)ls presentation:(id)presentation;
- (OKMediaItem)playingItem;
- (double)playingMusicCurrentTime;
- (double)playingMusicDuration;
- (id)currentMedia;
- (void)_playMediaItem:(id)item forMediaItem:(id)mediaItem;
- (void)audioFinishedPlaying:(id)playing;
- (void)dealloc;
- (void)next;
- (void)play;
- (void)prev;
- (void)rewind;
- (void)setCurrentMedia:(id)media;
- (void)setPlaying:(BOOL)playing;
- (void)setPlayingMusicCurrentTime:(double)time;
- (void)stop;
@end

@implementation OKAudioPlaylist

- (OKAudioPlaylist)initWithAudioURLs:(id)ls presentation:(id)presentation
{
  v6 = [(OKAudioPlaylist *)self init];
  if (v6)
  {
    v6->_ducker = objc_alloc_init(OKAudioDucker);
    v6->_presentation = presentation;
    v6->_loops = 1;
    v6->_mediaItems = [presentation mediaItemsForURLs:ls];
    v6->_mediaItemOperationQueue = objc_alloc_init(MEMORY[0x277CCABD8]);
    v6->_players = objc_opt_new();
    [(NSOperationQueue *)v6->_mediaItemOperationQueue setName:@"Audio Media Queue"];
    v6->_accessQueue = dispatch_queue_create("Access Queue Audio Playlist", 0);
    [(NSOperationQueue *)v6->_mediaItemOperationQueue setQualityOfService:33];
    [(NSOperationQueue *)v6->_mediaItemOperationQueue setUnderlyingQueue:v6->_accessQueue];
    objc_storeWeak(&v6->_delegate, 0);
  }

  return v6;
}

- (OKAudioPlaylist)initWithAudioItems:(id)items presentation:(id)presentation
{
  v6 = [items valueForKey:@"url"];

  return [(OKAudioPlaylist *)self initWithAudioURLs:v6 presentation:presentation];
}

- (void)dealloc
{
  [(OKAudioDucker *)self->_ducker cancel];
  mediaItemOperationQueue = self->_mediaItemOperationQueue;
  if (mediaItemOperationQueue)
  {

    self->_mediaItemOperationQueue = 0;
  }

  mediaItems = self->_mediaItems;
  if (mediaItems)
  {

    self->_mediaItems = 0;
  }

  ducker = self->_ducker;
  if (ducker)
  {

    self->_ducker = 0;
  }

  players = self->_players;
  if (players)
  {

    self->_players = 0;
  }

  currentMedia = self->_currentMedia;
  if (currentMedia)
  {

    self->_currentMedia = 0;
  }

  accessQueue = self->_accessQueue;
  if (accessQueue)
  {

    self->_accessQueue = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v9.receiver = self;
  v9.super_class = OKAudioPlaylist;
  [(OKAudioPlaylist *)&v9 dealloc];
}

- (OKMediaItem)playingItem
{
  result = [(NSArray *)self->_mediaItems count];
  if (result)
  {
    mediaItems = self->_mediaItems;
    currentPlayerIndex = self->_currentPlayerIndex;

    return [(NSArray *)mediaItems objectAtIndex:currentPlayerIndex];
  }

  return result;
}

- (void)setCurrentMedia:(id)media
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__OKAudioPlaylist_setCurrentMedia___block_invoke;
  v4[3] = &unk_279C90078;
  v4[4] = self;
  v4[5] = media;
  dispatch_sync(accessQueue, v4);
}

- (id)currentMedia
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__OKAudioPlaylist_currentMedia__block_invoke;
  v5[3] = &unk_279C90BC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPlaying
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__OKAudioPlaylist_isPlaying__block_invoke;
  v5[3] = &unk_279C90BC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlaying:(BOOL)playing
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__OKAudioPlaylist_setPlaying___block_invoke;
  v4[3] = &unk_279C90868;
  v4[4] = self;
  playingCopy = playing;
  dispatch_sync(accessQueue, v4);
}

- (double)playingMusicDuration
{
  v2 = [-[OKAudioPlaylist currentMedia](self "currentMedia")];
  if (v2)
  {
    [v2 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (double)playingMusicCurrentTime
{
  v2 = [-[OKAudioPlaylist currentMedia](self "currentMedia")];
  if (v2)
  {
    [v2 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (void)setPlayingMusicCurrentTime:(double)time
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__OKAudioPlaylist_setPlayingMusicCurrentTime___block_invoke;
  v4[3] = &unk_279C903C0;
  v4[4] = self;
  *&v4[5] = time;
  dispatch_sync(accessQueue, v4);
}

uint64_t __46__OKAudioPlaylist_setPlayingMusicCurrentTime___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  CMTimeMakeWithSeconds(&v3, *(a1 + 40), 1);
  return [v1 seekToTime:&v3];
}

- (void)_playMediaItem:(id)item forMediaItem:(id)mediaItem
{
  if (!-[NSMutableDictionary objectForKey:](self->_players, "objectForKey:", [mediaItem uniquePath]))
  {
    currentMedia = self->_currentMedia;
    if (currentMedia)
    {

      self->_currentMedia = 0;
    }

    itemCopy = item;
    self->_currentMedia = itemCopy;
    [(AVPlayer *)itemCopy setUsesExternalPlaybackWhileExternalScreenIsActive:1];
    [(AVPlayer *)self->_currentMedia setAllowsExternalPlayback:0];
    -[NSMutableDictionary setValue:forKey:](self->_players, "setValue:forKey:", self->_currentMedia, [mediaItem uniquePath]);
  }

  self->_playing = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_audioFinishedPlaying_ name:*MEMORY[0x277CE60C0] object:{-[AVPlayer currentItem](self->_currentMedia, "currentItem")}];
  [(OKAudioDucker *)self->_ducker volume];
  [(AVPlayer *)self->_currentMedia setVolume:?];
  ducker = self->_ducker;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__OKAudioPlaylist__playMediaItem_forMediaItem___block_invoke;
  v11[3] = &unk_279C90CB8;
  v11[4] = self;
  [(OKAudioDucker *)ducker setSetVolumeBlock:v11];
  [(AVPlayer *)self->_currentMedia play];
  [(OKAudioPlaylistDelegate *)[(OKAudioPlaylist *)self delegate] audioStartedPlayingWithAVAsset:[(AVPlayerItem *)[(AVPlayer *)self->_currentMedia currentItem] asset]];
}

- (void)play
{
  if ([(NSArray *)self->_mediaItems count])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__OKAudioPlaylist_play__block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_sync(accessQueue, block);
  }
}

uint64_t __23__OKAudioPlaylist_play__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    v3 = [*(v1 + 8) objectAtIndex:*(v1 + 32)];
    if ([*(*(v2 + 32) + 16) objectForKey:{objc_msgSend(v3, "uniquePath")}])
    {
      v4 = *(v2 + 32);
      v5 = *(v4 + 72);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __23__OKAudioPlaylist_play__block_invoke_3;
      v6[3] = &unk_279C90078;
      v6[4] = v4;
      v6[5] = v3;
      return [v5 addOperationWithBlock:v6];
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __23__OKAudioPlaylist_play__block_invoke_2;
      v7[3] = &unk_279C90CE0;
      v7[4] = *(v2 + 32);
      v7[5] = v3;
      return [*(*(v2 + 32) + 72) addOperation:{objc_msgSend(v3, "avAssetWithCompletionHandler:", v7)}];
    }
  }

  return result;
}

uint64_t __23__OKAudioPlaylist_play__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CE6598] playerWithPlayerItem:{objc_msgSend(MEMORY[0x277CE65B0], "playerItemWithAsset:")}];
  v4 = *(a1 + 40);

  return [v2 _playMediaItem:v3 forMediaItem:v4];
}

uint64_t __23__OKAudioPlaylist_play__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[2] objectForKey:{objc_msgSend(*(a1 + 40), "uniquePath")}];
  v4 = *(a1 + 40);

  return [v2 _playMediaItem:v3 forMediaItem:v4];
}

- (void)stop
{
  if ([(NSArray *)self->_mediaItems count])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__OKAudioPlaylist_stop__block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_sync(accessQueue, block);
  }
}

uint64_t __23__OKAudioPlaylist_stop__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = result;
    [*(v2 + 48) setSetVolumeBlock:0];
    [*(*(v3 + 32) + 72) cancelAllOperations];
    *(*(v3 + 32) + 24) = 0;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:*(v3 + 32) name:*MEMORY[0x277CE60C0] object:{objc_msgSend(*(*(v3 + 32) + 40), "currentItem")}];
    [*(*(v3 + 32) + 40) pause];
    [*(*(v3 + 32) + 48) endFading:1];
    v5 = [*(v3 + 32) delegate];
    v6 = [objc_msgSend(*(*(v3 + 32) + 40) "currentItem")];

    return [v5 audioFinishedPlayingWithAVAsset:v6];
  }

  return result;
}

- (void)next
{
  if ([(NSArray *)self->_mediaItems count])
  {
    [(OKAudioPlaylist *)self stop];
    [(OKAudioPlaylist *)self setPlayingMusicCurrentTime:0.0];
    currentPlayerIndex = self->_currentPlayerIndex;
    v4 = currentPlayerIndex == [(NSArray *)self->_mediaItems count]- 1 ? 0 : currentPlayerIndex + 1;
    self->_currentPlayerIndex = v4;
    if (self->_loops)
    {

      [(OKAudioPlaylist *)self play];
    }
  }
}

- (void)prev
{
  if ([(NSArray *)self->_mediaItems count])
  {
    currentPlayerIndex = self->_currentPlayerIndex;
    [(OKAudioPlaylist *)self rewind];
    if (!currentPlayerIndex)
    {
      currentPlayerIndex = [(NSArray *)self->_mediaItems count];
    }

    self->_currentPlayerIndex = currentPlayerIndex - 1;
    if (self->_loops)
    {

      [(OKAudioPlaylist *)self play];
    }
  }
}

- (void)rewind
{
  [(OKAudioPlaylist *)self stop];
  [(OKAudioPlaylist *)self setPlayingMusicCurrentTime:0.0];
  self->_currentPlayerIndex = 0;
}

- (void)audioFinishedPlaying:(id)playing
{
  if ([(OKAudioPlaylist *)self isPlaying])
  {

    [(OKAudioPlaylist *)self next];
  }
}

@end