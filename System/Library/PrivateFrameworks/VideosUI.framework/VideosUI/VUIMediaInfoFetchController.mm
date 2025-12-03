@interface VUIMediaInfoFetchController
+ (void)initialize;
- (BOOL)mediaInfoContainsImageAtIndex:(unint64_t)index;
- (BOOL)mediaInfoContainsPlayerAtIndex:(unint64_t)index;
- (VUIMediaInfoFetchController)initWithMediaInfos:(id)infos;
- (id)_createPlayerWithPlaylist:(id)playlist isForPrewarming:(BOOL)prewarming;
- (id)_identifierForPlaylist:(id)playlist isForPrewarming:(BOOL)prewarming;
- (id)_prewarmIndices;
- (id)loadPlayerAtIndex:(unint64_t)index;
- (int64_t)queuePriorityForIndex:(int64_t)index itemCount:(int64_t)count selectedIndex:(int64_t)selectedIndex;
- (void)_populateQueueWithMediaInfos:(id)infos;
- (void)_removePrewarmedPlayerForIdentifier:(id)identifier;
- (void)_updateImageOperationPriorities;
- (void)_updatePrewarmedPlayers;
- (void)appendMediaInfos:(id)infos;
- (void)clearCachedImageExclude:(int64_t)exclude;
- (void)clearPreloadedPlayback;
- (void)dealloc;
- (void)loadImageAtIndex:(unint64_t)index completion:(id)completion;
- (void)populatePlaylistWithMediaItems:(id)items atIndex:(unint64_t)index;
- (void)preLoadNextImageFromCurrentIndexIfNeeded:(int64_t)needed;
- (void)removeMediaInfoAtIndex:(unint64_t)index;
- (void)removePopulatedMediaItems:(id)items atIndex:(unint64_t)index;
- (void)setIndex:(unint64_t)index;
- (void)setMediaInfo:(id)info atIndex:(unint64_t)index;
- (void)setMediaInfos:(id)infos;
- (void)setPreloadPlaybackEnabled:(BOOL)enabled;
- (void)startImageOperationAtIndex:(int64_t)index;
@end

@implementation VUIMediaInfoFetchController

+ (void)initialize
{
  if (initialize_onceToken_3 != -1)
  {
    +[VUIMediaInfoFetchController initialize];
  }
}

void __41__VUIMediaInfoFetchController_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIMediaInfoFetchController");
  v1 = sLogObject_10;
  sLogObject_10 = v0;
}

- (VUIMediaInfoFetchController)initWithMediaInfos:(id)infos
{
  infosCopy = infos;
  v21.receiver = self;
  v21.super_class = VUIMediaInfoFetchController;
  v5 = [(VUIMediaInfoFetchController *)&v21 init];
  if (v5)
  {
    v6 = [infosCopy copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v9 = *(v5 + 5);
    *(v5 + 5) = v8;

    array = [MEMORY[0x1E695DF70] array];
    v11 = *(v5 + 6);
    *(v5 + 6) = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = *(v5 + 7);
    *(v5 + 7) = dictionary;

    *(v5 + 24) = xmmword_1E4297170;
    v5[8] = 0;
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("VUIMediaInfoImageDecodingQueue", v14);
    v16 = *(v5 + 8);
    *(v5 + 8) = v15;

    v17 = +[VUIFeaturesConfiguration sharedInstance];
    mediaShowcaseConfig = [v17 mediaShowcaseConfig];
    *(v5 + 9) = [mediaShowcaseConfig preloadImageBatchSize];

    imageQueue = [v5 imageQueue];
    [imageQueue setMaxConcurrentOperationCount:1];

    [v5 _populateQueueWithMediaInfos:infosCopy];
  }

  return v5;
}

- (void)clearPreloadedPlayback
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    prewarmedPlayers = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
    allValues = [prewarmedPlayers allValues];
    *buf = 138412290;
    v21 = allValues;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "clearPreloadedPlayback with players %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  prewarmedPlayers2 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  allValues2 = [prewarmedPlayers2 allValues];

  v9 = [allValues2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 stop];
        [v13 invalidate];
      }

      v10 = [allValues2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  prewarmedPlayers3 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  [prewarmedPlayers3 removeAllObjects];
}

- (void)clearCachedImageExclude:(int64_t)exclude
{
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [mediaInfos count];

  if (v6)
  {
    v7 = 0;
    do
    {
      if (exclude != v7)
      {
        imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
        v9 = [imageOperations objectAtIndex:v7];

        [v9 cancel];
        imageOperations2 = [(VUIMediaInfoFetchController *)self imageOperations];
        [imageOperations2 removeObjectAtIndex:v7];

        mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
        v12 = [mediaInfos2 objectAtIndexedSubscript:v7];

        v13 = [[VUIMediaInfoImageFetchOperation alloc] initWithMediaInfo:v12];
        imageOperations3 = [(VUIMediaInfoFetchController *)self imageOperations];
        [imageOperations3 insertObject:v13 atIndex:exclude];
      }

      ++v7;
      mediaInfos3 = [(VUIMediaInfoFetchController *)self mediaInfos];
      v16 = [mediaInfos3 count];
    }

    while (v7 < v16);
  }
}

- (void)dealloc
{
  v3 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "dealloc cleaning", buf, 2u);
  }

  [(VUIMediaInfoFetchController *)self setMediaInfos:MEMORY[0x1E695E0F0]];
  v4.receiver = self;
  v4.super_class = VUIMediaInfoFetchController;
  [(VUIMediaInfoFetchController *)&v4 dealloc];
}

- (void)_populateQueueWithMediaInfos:(id)infos
{
  v18 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [infosCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(infosCopy);
        }

        v10 = [[VUIMediaInfoImageFetchOperation alloc] initWithMediaInfo:*(*(&v13 + 1) + 8 * v9)];
        if (v7 < [(VUIMediaInfoFetchController *)self batchSize])
        {
          imageQueue = [(VUIMediaInfoFetchController *)self imageQueue];
          [imageQueue addOperation:v10];

          [(VUIMediaInfoImageFetchOperation *)v10 setAddedToQueue:1];
          ++v7;
        }

        imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
        [imageOperations addObject:v10];

        ++v9;
      }

      while (v6 != v9);
      v6 = [infosCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(VUIMediaInfoFetchController *)self _updateImageOperationPriorities];
}

- (void)setIndex:(unint64_t)index
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "setIndex: called with %lu", &v6, 0xCu);
  }

  self->_index = index;
  [(VUIMediaInfoFetchController *)self _updateImageOperationPriorities];
  [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
}

- (void)_updateImageOperationPriorities
{
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v4 = [mediaInfos count];

  index = [(VUIMediaInfoFetchController *)self index];
  if (v4 >= 1)
  {
    v6 = index;
    for (i = 0; i != v4; ++i)
    {
      imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
      v9 = [imageOperations objectAtIndexedSubscript:i];

      [v9 setQueuePriority:{-[VUIMediaInfoFetchController queuePriorityForIndex:itemCount:selectedIndex:](self, "queuePriorityForIndex:itemCount:selectedIndex:", i, v4, v6)}];
    }
  }
}

- (int64_t)queuePriorityForIndex:(int64_t)index itemCount:(int64_t)count selectedIndex:(int64_t)selectedIndex
{
  v5 = index - selectedIndex;
  if (index - selectedIndex < 0)
  {
    v5 = selectedIndex - index;
  }

  v6 = count + index - selectedIndex;
  if (v6 < 0)
  {
    v6 = selectedIndex - (count + index);
  }

  v7 = index - (count + selectedIndex);
  if (v7 < 0)
  {
    v7 = count + selectedIndex - index;
  }

  if (v6 >= v7)
  {
    v6 = v7;
  }

  if (v5 >= v6)
  {
    v5 = v6;
  }

  if (v5)
  {
    return 4 * (v5 == 1);
  }

  else
  {
    return 8;
  }
}

- (void)_updatePrewarmedPlayers
{
  v78 = *MEMORY[0x1E69E9840];
  isPreloadPlaybackEnabled = [(VUIMediaInfoFetchController *)self isPreloadPlaybackEnabled];
  v4 = sLogObject_10;
  v5 = os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT);
  if (isPreloadPlaybackEnabled)
  {
    if (v5)
    {
      v6 = v4;
      mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
      *buf = 134218240;
      selfCopy4 = self;
      v76 = 2048;
      v77 = [mediaInfos count];
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm Updating prewarmed players for %lu media info(s)", buf, 0x16u);
    }

    mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v9 = [mediaInfos2 count];

    if (v9)
    {
      _prewarmIndices = [(VUIMediaInfoFetchController *)self _prewarmIndices];
      v11 = sLogObject_10;
      if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [_prewarmIndices count];
        *buf = 134218240;
        selfCopy4 = self;
        v76 = 2048;
        v77 = v13;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm prewarm %lu players", buf, 0x16u);
      }

      array = [MEMORY[0x1E695DF70] array];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v15 = _prewarmIndices;
      v16 = [v15 countByEnumeratingWithState:&v66 objects:v73 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v67;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v67 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v66 + 1) + 8 * i);
            mediaInfos3 = [(VUIMediaInfoFetchController *)self mediaInfos];
            v22 = [mediaInfos3 objectAtIndex:{objc_msgSend(v20, "unsignedIntegerValue")}];

            [array addObject:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v66 objects:v73 count:16];
        }

        while (v17);
      }

      v23 = [MEMORY[0x1E695DFA8] set];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v24 = array;
      v25 = [v24 countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v63;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v63 != v27)
            {
              objc_enumerationMutation(v24);
            }

            tvpPlaylist = [*(*(&v62 + 1) + 8 * j) tvpPlaylist];
            v30 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:tvpPlaylist isForPrewarming:1];

            if (v30)
            {
              [v23 addObject:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v62 objects:v72 count:16];
        }

        while (v26);
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      prewarmedPlayers = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
      allKeys = [prewarmedPlayers allKeys];

      v33 = [allKeys countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v59;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v59 != v35)
            {
              objc_enumerationMutation(allKeys);
            }

            v37 = *(*(&v58 + 1) + 8 * k);
            if (([v23 containsObject:v37] & 1) == 0)
            {
              [(VUIMediaInfoFetchController *)self _removePrewarmedPlayerForIdentifier:v37];
            }
          }

          v34 = [allKeys countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v34);
      }

      v51 = v15;

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v24;
      v38 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v55;
        v52 = *MEMORY[0x1E69D5E38];
        do
        {
          for (m = 0; m != v39; ++m)
          {
            if (*v55 != v40)
            {
              objc_enumerationMutation(obj);
            }

            tvpPlaylist2 = [*(*(&v54 + 1) + 8 * m) tvpPlaylist];
            v43 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:tvpPlaylist2 isForPrewarming:1];
            if (v43)
            {
              prewarmedPlayers2 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
              v45 = [prewarmedPlayers2 objectForKey:v43];
              if (tvpPlaylist2)
              {
                v46 = v45 == 0;
              }

              else
              {
                v46 = 0;
              }

              if (v46)
              {
                currentMediaItem = [tvpPlaylist2 currentMediaItem];
                v49 = [currentMediaItem hasTrait:v52];

                if (!v49)
                {
                  goto LABEL_48;
                }

                v50 = sLogObject_10;
                if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  selfCopy4 = self;
                  v76 = 2112;
                  v77 = v43;
                  _os_log_impl(&dword_1E323F000, v50, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm Creating and starting prewarm player with identifier [%@]", buf, 0x16u);
                }

                prewarmedPlayers2 = [(VUIMediaInfoFetchController *)self _createPlayerWithPlaylist:tvpPlaylist2 isForPrewarming:1];
                [prewarmedPlayers2 pause];
                prewarmedPlayers3 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
                [prewarmedPlayers3 setObject:prewarmedPlayers2 forKey:v43];
              }

              else
              {
                prewarmedPlayers3 = v45;
              }
            }

LABEL_48:
          }

          v39 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
        }

        while (v39);
      }
    }
  }

  else if (v5)
  {
    *buf = 134217984;
    selfCopy4 = self;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm is skipped because isPreloadPlaybackEnabled is disabled", buf, 0xCu);
  }
}

- (id)_prewarmIndices
{
  v3 = [MEMORY[0x1E695DFA8] set];
  playerPreloadOffset = [(VUIMediaInfoFetchController *)self playerPreloadOffset];
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [mediaInfos count];

  index = v6 - 1;
  if ([(VUIMediaInfoFetchController *)self index]< v6 - 1)
  {
    index = [(VUIMediaInfoFetchController *)self index];
  }

  if (v6)
  {
    if (v6 == 1)
    {
      allObjects = &unk_1F5E5E8C8;
    }

    else
    {
      if (playerPreloadOffset)
      {
        v9 = index - 1;
        for (i = 1; i <= playerPreloadOffset; ++i)
        {
          if (i <= index)
          {
            v11 = v9;
          }

          else
          {
            v11 = v6 - playerPreloadOffset + i - 1;
          }

          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          [v3 addObject:v12];

          --v9;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        [v3 addObject:v13];

        for (j = 1; j <= playerPreloadOffset; ++j)
        {
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(index + j) % v6];
          [v3 addObject:v15];
        }
      }

      else
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
        [v3 addObject:v16];
      }

      allObjects = [v3 allObjects];
    }
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (void)_removePrewarmedPlayerForIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = identifierCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) Invalidating prewarm player with identifier [%@]", &v9, 0x16u);
  }

  prewarmedPlayers = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  v7 = [prewarmedPlayers objectForKey:identifierCopy];

  [v7 stop];
  [v7 invalidate];
  prewarmedPlayers2 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  [prewarmedPlayers2 removeObjectForKey:identifierCopy];
}

- (id)_identifierForPlaylist:(id)playlist isForPrewarming:(BOOL)prewarming
{
  prewarmingCopy = prewarming;
  currentMediaItem = [playlist currentMediaItem];
  v6 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  v7 = v6;
  if (v6)
  {
    absoluteString = v6;
  }

  else
  {
    mediaItemURL = [currentMediaItem mediaItemURL];
    absoluteString = [mediaItemURL absoluteString];
  }

  v10 = &stru_1F5DB25C0;
  if (prewarmingCopy)
  {
    v10 = @"Prewarm ";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, absoluteString];

  return v11;
}

- (void)setPreloadPlaybackEnabled:(BOOL)enabled
{
  self->_preloadPlaybackEnabled = enabled;
  if (enabled)
  {
    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }

  else
  {
    [(VUIMediaInfoFetchController *)self clearPreloadedPlayback];
  }
}

- (void)setMediaInfos:(id)infos
{
  v20 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = infosCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "setMediaInfos: called with %@", &v18, 0xCu);
  }

  imageQueue = [(VUIMediaInfoFetchController *)self imageQueue];
  [imageQueue cancelAllOperations];

  imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
  [imageOperations removeAllObjects];

  if (infosCopy)
  {
    v8 = [infosCopy copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v8;

    [(VUIMediaInfoFetchController *)self _populateQueueWithMediaInfos:infosCopy];
  }

  else
  {
    v10 = self->_mediaInfos;
    self->_mediaInfos = MEMORY[0x1E695E0F0];
  }

  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v12 = [mediaInfos count];

  if (v12)
  {
    index = [(VUIMediaInfoFetchController *)self index];
    mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v15 = [mediaInfos2 count];

    if (index >= v15)
    {
      mediaInfos3 = [(VUIMediaInfoFetchController *)self mediaInfos];
      -[VUIMediaInfoFetchController setIndex:](self, "setIndex:", [mediaInfos3 count] - 1);
    }

    else
    {
      [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
    }
  }

  else
  {
    v16 = sLogObject_10;
    if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "setMediaInfos: called with empty mediaInfos array.  Invalidating all prewarm players", &v18, 2u);
    }

    [(VUIMediaInfoFetchController *)self clearPreloadedPlayback];
  }
}

- (void)setMediaInfo:(id)info atIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = infoCopy;
    v22 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "setMediaInfo:atIndex: called with %@ at index %lu", &v20, 0x16u);
  }

  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v9 = [mediaInfos count];

  if (v9 > index)
  {
    mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v11 = [mediaInfos2 mutableCopy];

    imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
    v13 = [imageOperations objectAtIndex:index];

    [v13 cancel];
    imageOperations2 = [(VUIMediaInfoFetchController *)self imageOperations];
    [imageOperations2 removeObjectAtIndex:index];

    [v11 setObject:infoCopy atIndexedSubscript:index];
    v15 = [v11 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v15;

    v17 = [[VUIMediaInfoImageFetchOperation alloc] initWithMediaInfo:infoCopy];
    imageQueue = [(VUIMediaInfoFetchController *)self imageQueue];
    [imageQueue addOperation:v17];

    [(VUIMediaInfoImageFetchOperation *)v17 setAddedToQueue:1];
    imageOperations3 = [(VUIMediaInfoFetchController *)self imageOperations];
    [imageOperations3 insertObject:v17 atIndex:index];

    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }
}

- (void)appendMediaInfos:(id)infos
{
  v12 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = infosCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "appendMediaInfos: called with mediaInfos %@", &v10, 0xCu);
  }

  if (infosCopy)
  {
    mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
    v7 = [mediaInfos mutableCopy];

    [v7 addObjectsFromArray:infosCopy];
    v8 = [v7 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v8;

    [(VUIMediaInfoFetchController *)self _populateQueueWithMediaInfos:infosCopy];
    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }
}

- (void)removeMediaInfoAtIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "removeMediaInfoAtIndex: called with index %lu", &v15, 0xCu);
  }

  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v7 = [mediaInfos count];

  if (v7 > index)
  {
    mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v9 = [mediaInfos2 mutableCopy];

    [v9 removeObjectAtIndex:index];
    v10 = [v9 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v10;

    imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
    v13 = [imageOperations objectAtIndex:index];

    [v13 cancel];
    imageOperations2 = [(VUIMediaInfoFetchController *)self imageOperations];
    [imageOperations2 removeObjectAtIndex:index];

    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }
}

- (id)_createPlayerWithPlaylist:(id)playlist isForPrewarming:(BOOL)prewarming
{
  prewarmingCopy = prewarming;
  playlistCopy = playlist;
  if (playlistCopy)
  {
    v7 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:playlistCopy isForPrewarming:prewarmingCopy];
    v8 = [[VUIPlayer alloc] initWithName:v7];
    v9 = v8;
    if (prewarmingCopy)
    {
      [(VUIPlayer *)v8 setWaitsAfterPreparingMediaItems:1];
      [(VUIPlayer *)v9 setSendsPlayerReports:0];
    }

    [(VUIPlayer *)v9 setPlaylist:playlistCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadImageAtIndex:(unint64_t)index completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke;
  aBlock[3] = &unk_1E8732270;
  v7 = completionCopy;
  v24 = v7;
  v8 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_3;
  v19[3] = &unk_1E87322C0;
  objc_copyWeak(&v21, &location);
  v9 = v8;
  v20 = v9;
  v10 = _Block_copy(v19);
  imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
  v12 = [imageOperations count];

  if (v12 <= index)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIMediaInfoFetchControllerErrorDomain" code:1 userInfo:0];
    (*(v10 + 2))(v10, 0, v14, 0);
  }

  else
  {
    imageOperations2 = [(VUIMediaInfoFetchController *)self imageOperations];
    v14 = [imageOperations2 objectAtIndex:index];

    if ([v14 isFinished])
    {
      image = [v14 image];
      error = [v14 error];
      (*(v10 + 2))(v10, image, error, [v14 imageLoadFinished]);
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_5;
      v17[3] = &unk_1E8732270;
      v18 = v10;
      [v14 addCompletion:v17];
      image = v18;
    }

    [(VUIMediaInfoFetchController *)self preLoadNextImageFromCurrentIndexIfNeeded:index];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_2;
  v12[3] = &unk_1E8732248;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v13 = v7;
  v16 = a4;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 40), *(a1 + 56));
  }

  return result;
}

void __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = [MEMORY[0x1E69DF6D0] canHandleDecodingOnRenderThread];
    if (!v7 || (v10 & 1) != 0)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v11 = [WeakRetained imageDecodingQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_4;
      v12[3] = &unk_1E8732298;
      v13 = v7;
      v15 = *(a1 + 32);
      v14 = v8;
      v16 = a4;
      dispatch_async(v11, v12);
    }
  }
}

uint64_t __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) image];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)preLoadNextImageFromCurrentIndexIfNeeded:(int64_t)needed
{
  batchSize = [(VUIMediaInfoFetchController *)self batchSize];
  if (batchSize / 2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = batchSize / 2;
  }

  v7 = needed + 1;
  v8 = needed - 1;
  do
  {
    [(VUIMediaInfoFetchController *)self startImageOperationAtIndex:v8];
    [(VUIMediaInfoFetchController *)self startImageOperationAtIndex:v7++];
    --v8;
    --v6;
  }

  while (v6);
}

- (void)startImageOperationAtIndex:(int64_t)index
{
  if ((index & 0x8000000000000000) == 0)
  {
    imageOperations = [(VUIMediaInfoFetchController *)self imageOperations];
    v6 = [imageOperations count];

    if (v6 > index)
    {
      imageOperations2 = [(VUIMediaInfoFetchController *)self imageOperations];
      v9 = [imageOperations2 objectAtIndexedSubscript:index];

      if (([v9 addedToQueue] & 1) == 0)
      {
        imageQueue = [(VUIMediaInfoFetchController *)self imageQueue];
        [imageQueue addOperation:v9];

        [v9 setAddedToQueue:1];
      }
    }
  }
}

- (void)populatePlaylistWithMediaItems:(id)items atIndex:(unint64_t)index
{
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v9 = [mediaInfos count];

  if (v9)
  {
    v10 = 0;
    do
    {
      if (index != v10)
      {
        mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
        v12 = [mediaInfos2 objectAtIndex:v10];

        tvpPlaylist = [v12 tvpPlaylist];
        currentMediaItem = [tvpPlaylist currentMediaItem];

        if (currentMediaItem)
        {
          tvpPlaylist2 = [v12 tvpPlaylist];
          currentMediaItem2 = [tvpPlaylist2 currentMediaItem];
          [array addObject:currentMediaItem2];

          [indexSet addIndex:v10];
        }
      }

      ++v10;
      mediaInfos3 = [(VUIMediaInfoFetchController *)self mediaInfos];
      v18 = [mediaInfos3 count];
    }

    while (v10 < v18);
  }

  if ([array count])
  {
    if ([indexSet count])
    {
      v19 = [array count];
      if (v19 == [indexSet count])
      {
        [itemsCopy insertItems:array atIndexes:indexSet];
      }
    }
  }
}

- (void)removePopulatedMediaItems:(id)items atIndex:(unint64_t)index
{
  itemsCopy = items;
  trackList = [itemsCopy trackList];
  v6 = [trackList count];

  if (v6 >= 2)
  {
    v7 = MEMORY[0x1E696AD50];
    trackList2 = [itemsCopy trackList];
    v9 = [v7 indexSetWithIndexesInRange:{0, objc_msgSend(trackList2, "count")}];

    [v9 removeIndex:index];
    [itemsCopy removeItemsAtIndexes:v9];
  }
}

- (id)loadPlayerAtIndex:(unint64_t)index
{
  v26 = *MEMORY[0x1E69E9840];
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [mediaInfos count];

  if (v6 <= index)
  {
    v20 = 0;
  }

  else
  {
    mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v8 = [mediaInfos2 objectAtIndex:index];

    tvpPlaylist = [v8 tvpPlaylist];
    v10 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:tvpPlaylist isForPrewarming:0];
    v11 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:tvpPlaylist isForPrewarming:1];
    prewarmedPlayers = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
    v13 = [prewarmedPlayers objectForKey:v11];

    v14 = sLogObject_10;
    if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      name = [v13 name];
      v22 = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = name;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Creating playback player for identifier [%@].  Prewarm player for this identifier is [%@]", &v22, 0x16u);
    }

    v17 = tvpPlaylist;
    playlist = v17;
    if (v13)
    {
      v19 = sLogObject_10;
      if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Setting playlist from prewarm player on playback player", &v22, 2u);
      }

      playlist = [v13 playlist];
    }

    v20 = [(VUIMediaInfoFetchController *)self _createPlayerWithPlaylist:playlist isForPrewarming:0];
  }

  return v20;
}

- (BOOL)mediaInfoContainsImageAtIndex:(unint64_t)index
{
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [mediaInfos count];

  if (v6 <= index)
  {
    return 0;
  }

  mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v8 = [mediaInfos2 objectAtIndex:index];

  imageProxies = [v8 imageProxies];
  v10 = [imageProxies count] != 0;

  return v10;
}

- (BOOL)mediaInfoContainsPlayerAtIndex:(unint64_t)index
{
  mediaInfos = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [mediaInfos count];

  if (v6 <= index)
  {
    return 0;
  }

  mediaInfos2 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v8 = [mediaInfos2 objectAtIndex:index];

  tvpPlaylist = [v8 tvpPlaylist];
  v10 = tvpPlaylist != 0;

  return v10;
}

@end