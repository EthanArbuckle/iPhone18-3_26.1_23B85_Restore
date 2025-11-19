@interface VUIMediaInfoFetchController
+ (void)initialize;
- (BOOL)mediaInfoContainsImageAtIndex:(unint64_t)a3;
- (BOOL)mediaInfoContainsPlayerAtIndex:(unint64_t)a3;
- (VUIMediaInfoFetchController)initWithMediaInfos:(id)a3;
- (id)_createPlayerWithPlaylist:(id)a3 isForPrewarming:(BOOL)a4;
- (id)_identifierForPlaylist:(id)a3 isForPrewarming:(BOOL)a4;
- (id)_prewarmIndices;
- (id)loadPlayerAtIndex:(unint64_t)a3;
- (int64_t)queuePriorityForIndex:(int64_t)a3 itemCount:(int64_t)a4 selectedIndex:(int64_t)a5;
- (void)_populateQueueWithMediaInfos:(id)a3;
- (void)_removePrewarmedPlayerForIdentifier:(id)a3;
- (void)_updateImageOperationPriorities;
- (void)_updatePrewarmedPlayers;
- (void)appendMediaInfos:(id)a3;
- (void)clearCachedImageExclude:(int64_t)a3;
- (void)clearPreloadedPlayback;
- (void)dealloc;
- (void)loadImageAtIndex:(unint64_t)a3 completion:(id)a4;
- (void)populatePlaylistWithMediaItems:(id)a3 atIndex:(unint64_t)a4;
- (void)preLoadNextImageFromCurrentIndexIfNeeded:(int64_t)a3;
- (void)removeMediaInfoAtIndex:(unint64_t)a3;
- (void)removePopulatedMediaItems:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndex:(unint64_t)a3;
- (void)setMediaInfo:(id)a3 atIndex:(unint64_t)a4;
- (void)setMediaInfos:(id)a3;
- (void)setPreloadPlaybackEnabled:(BOOL)a3;
- (void)startImageOperationAtIndex:(int64_t)a3;
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

- (VUIMediaInfoFetchController)initWithMediaInfos:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = VUIMediaInfoFetchController;
  v5 = [(VUIMediaInfoFetchController *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v9 = *(v5 + 5);
    *(v5 + 5) = v8;

    v10 = [MEMORY[0x1E695DF70] array];
    v11 = *(v5 + 6);
    *(v5 + 6) = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = *(v5 + 7);
    *(v5 + 7) = v12;

    *(v5 + 24) = xmmword_1E4297170;
    v5[8] = 0;
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("VUIMediaInfoImageDecodingQueue", v14);
    v16 = *(v5 + 8);
    *(v5 + 8) = v15;

    v17 = +[VUIFeaturesConfiguration sharedInstance];
    v18 = [v17 mediaShowcaseConfig];
    *(v5 + 9) = [v18 preloadImageBatchSize];

    v19 = [v5 imageQueue];
    [v19 setMaxConcurrentOperationCount:1];

    [v5 _populateQueueWithMediaInfos:v4];
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
    v5 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
    v6 = [v5 allValues];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "clearPreloadedPlayback with players %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 stop];
        [v13 invalidate];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  [v14 removeAllObjects];
}

- (void)clearCachedImageExclude:(int64_t)a3
{
  v5 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      if (a3 != v7)
      {
        v8 = [(VUIMediaInfoFetchController *)self imageOperations];
        v9 = [v8 objectAtIndex:v7];

        [v9 cancel];
        v10 = [(VUIMediaInfoFetchController *)self imageOperations];
        [v10 removeObjectAtIndex:v7];

        v11 = [(VUIMediaInfoFetchController *)self mediaInfos];
        v12 = [v11 objectAtIndexedSubscript:v7];

        v13 = [[VUIMediaInfoImageFetchOperation alloc] initWithMediaInfo:v12];
        v14 = [(VUIMediaInfoFetchController *)self imageOperations];
        [v14 insertObject:v13 atIndex:a3];
      }

      ++v7;
      v15 = [(VUIMediaInfoFetchController *)self mediaInfos];
      v16 = [v15 count];
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

- (void)_populateQueueWithMediaInfos:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [[VUIMediaInfoImageFetchOperation alloc] initWithMediaInfo:*(*(&v13 + 1) + 8 * v9)];
        if (v7 < [(VUIMediaInfoFetchController *)self batchSize])
        {
          v11 = [(VUIMediaInfoFetchController *)self imageQueue];
          [v11 addOperation:v10];

          [(VUIMediaInfoImageFetchOperation *)v10 setAddedToQueue:1];
          ++v7;
        }

        v12 = [(VUIMediaInfoFetchController *)self imageOperations];
        [v12 addObject:v10];

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(VUIMediaInfoFetchController *)self _updateImageOperationPriorities];
}

- (void)setIndex:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "setIndex: called with %lu", &v6, 0xCu);
  }

  self->_index = a3;
  [(VUIMediaInfoFetchController *)self _updateImageOperationPriorities];
  [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
}

- (void)_updateImageOperationPriorities
{
  v3 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v4 = [v3 count];

  v5 = [(VUIMediaInfoFetchController *)self index];
  if (v4 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v4; ++i)
    {
      v8 = [(VUIMediaInfoFetchController *)self imageOperations];
      v9 = [v8 objectAtIndexedSubscript:i];

      [v9 setQueuePriority:{-[VUIMediaInfoFetchController queuePriorityForIndex:itemCount:selectedIndex:](self, "queuePriorityForIndex:itemCount:selectedIndex:", i, v4, v6)}];
    }
  }
}

- (int64_t)queuePriorityForIndex:(int64_t)a3 itemCount:(int64_t)a4 selectedIndex:(int64_t)a5
{
  v5 = a3 - a5;
  if (a3 - a5 < 0)
  {
    v5 = a5 - a3;
  }

  v6 = a4 + a3 - a5;
  if (v6 < 0)
  {
    v6 = a5 - (a4 + a3);
  }

  v7 = a3 - (a4 + a5);
  if (v7 < 0)
  {
    v7 = a4 + a5 - a3;
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
  v3 = [(VUIMediaInfoFetchController *)self isPreloadPlaybackEnabled];
  v4 = sLogObject_10;
  v5 = os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = v4;
      v7 = [(VUIMediaInfoFetchController *)self mediaInfos];
      *buf = 134218240;
      v75 = self;
      v76 = 2048;
      v77 = [v7 count];
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm Updating prewarmed players for %lu media info(s)", buf, 0x16u);
    }

    v8 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(VUIMediaInfoFetchController *)self _prewarmIndices];
      v11 = sLogObject_10;
      if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v10 count];
        *buf = 134218240;
        v75 = self;
        v76 = 2048;
        v77 = v13;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm prewarm %lu players", buf, 0x16u);
      }

      v14 = [MEMORY[0x1E695DF70] array];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v15 = v10;
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
            v21 = [(VUIMediaInfoFetchController *)self mediaInfos];
            v22 = [v21 objectAtIndex:{objc_msgSend(v20, "unsignedIntegerValue")}];

            [v14 addObject:v22];
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
      v24 = v14;
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

            v29 = [*(*(&v62 + 1) + 8 * j) tvpPlaylist];
            v30 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:v29 isForPrewarming:1];

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
      v31 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
      v32 = [v31 allKeys];

      v33 = [v32 countByEnumeratingWithState:&v58 objects:v71 count:16];
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
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v58 + 1) + 8 * k);
            if (([v23 containsObject:v37] & 1) == 0)
            {
              [(VUIMediaInfoFetchController *)self _removePrewarmedPlayerForIdentifier:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v58 objects:v71 count:16];
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

            v42 = [*(*(&v54 + 1) + 8 * m) tvpPlaylist];
            v43 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:v42 isForPrewarming:1];
            if (v43)
            {
              v44 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
              v45 = [v44 objectForKey:v43];
              if (v42)
              {
                v46 = v45 == 0;
              }

              else
              {
                v46 = 0;
              }

              if (v46)
              {
                v48 = [v42 currentMediaItem];
                v49 = [v48 hasTrait:v52];

                if (!v49)
                {
                  goto LABEL_48;
                }

                v50 = sLogObject_10;
                if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218242;
                  v75 = self;
                  v76 = 2112;
                  v77 = v43;
                  _os_log_impl(&dword_1E323F000, v50, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm Creating and starting prewarm player with identifier [%@]", buf, 0x16u);
                }

                v44 = [(VUIMediaInfoFetchController *)self _createPlayerWithPlaylist:v42 isForPrewarming:1];
                [v44 pause];
                v47 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
                [v47 setObject:v44 forKey:v43];
              }

              else
              {
                v47 = v45;
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
    v75 = self;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) updatePrewarm is skipped because isPreloadPlaybackEnabled is disabled", buf, 0xCu);
  }
}

- (id)_prewarmIndices
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(VUIMediaInfoFetchController *)self playerPreloadOffset];
  v5 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [v5 count];

  v7 = v6 - 1;
  if ([(VUIMediaInfoFetchController *)self index]< v6 - 1)
  {
    v7 = [(VUIMediaInfoFetchController *)self index];
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v8 = &unk_1F5E5E8C8;
    }

    else
    {
      if (v4)
      {
        v9 = v7 - 1;
        for (i = 1; i <= v4; ++i)
        {
          if (i <= v7)
          {
            v11 = v9;
          }

          else
          {
            v11 = v6 - v4 + i - 1;
          }

          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          [v3 addObject:v12];

          --v9;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        [v3 addObject:v13];

        for (j = 1; j <= v4; ++j)
        {
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v7 + j) % v6];
          [v3 addObject:v15];
        }
      }

      else
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        [v3 addObject:v16];
      }

      v8 = [v3 allObjects];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)_removePrewarmedPlayerForIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "MediaInfoFetch::(%p) Invalidating prewarm player with identifier [%@]", &v9, 0x16u);
  }

  v6 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  v7 = [v6 objectForKey:v4];

  [v7 stop];
  [v7 invalidate];
  v8 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
  [v8 removeObjectForKey:v4];
}

- (id)_identifierForPlaylist:(id)a3 isForPrewarming:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 currentMediaItem];
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v5 mediaItemURL];
    v8 = [v9 absoluteString];
  }

  v10 = &stru_1F5DB25C0;
  if (v4)
  {
    v10 = @"Prewarm ";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v10, v8];

  return v11;
}

- (void)setPreloadPlaybackEnabled:(BOOL)a3
{
  self->_preloadPlaybackEnabled = a3;
  if (a3)
  {
    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }

  else
  {
    [(VUIMediaInfoFetchController *)self clearPreloadedPlayback];
  }
}

- (void)setMediaInfos:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "setMediaInfos: called with %@", &v18, 0xCu);
  }

  v6 = [(VUIMediaInfoFetchController *)self imageQueue];
  [v6 cancelAllOperations];

  v7 = [(VUIMediaInfoFetchController *)self imageOperations];
  [v7 removeAllObjects];

  if (v4)
  {
    v8 = [v4 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v8;

    [(VUIMediaInfoFetchController *)self _populateQueueWithMediaInfos:v4];
  }

  else
  {
    v10 = self->_mediaInfos;
    self->_mediaInfos = MEMORY[0x1E695E0F0];
  }

  v11 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(VUIMediaInfoFetchController *)self index];
    v14 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v15 = [v14 count];

    if (v13 >= v15)
    {
      v17 = [(VUIMediaInfoFetchController *)self mediaInfos];
      -[VUIMediaInfoFetchController setIndex:](self, "setIndex:", [v17 count] - 1);
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

- (void)setMediaInfo:(id)a3 atIndex:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v6;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "setMediaInfo:atIndex: called with %@ at index %lu", &v20, 0x16u);
  }

  v8 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v9 = [v8 count];

  if (v9 > a4)
  {
    v10 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v11 = [v10 mutableCopy];

    v12 = [(VUIMediaInfoFetchController *)self imageOperations];
    v13 = [v12 objectAtIndex:a4];

    [v13 cancel];
    v14 = [(VUIMediaInfoFetchController *)self imageOperations];
    [v14 removeObjectAtIndex:a4];

    [v11 setObject:v6 atIndexedSubscript:a4];
    v15 = [v11 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v15;

    v17 = [[VUIMediaInfoImageFetchOperation alloc] initWithMediaInfo:v6];
    v18 = [(VUIMediaInfoFetchController *)self imageQueue];
    [v18 addOperation:v17];

    [(VUIMediaInfoImageFetchOperation *)v17 setAddedToQueue:1];
    v19 = [(VUIMediaInfoFetchController *)self imageOperations];
    [v19 insertObject:v17 atIndex:a4];

    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }
}

- (void)appendMediaInfos:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "appendMediaInfos: called with mediaInfos %@", &v10, 0xCu);
  }

  if (v4)
  {
    v6 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v7 = [v6 mutableCopy];

    [v7 addObjectsFromArray:v4];
    v8 = [v7 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v8;

    [(VUIMediaInfoFetchController *)self _populateQueueWithMediaInfos:v4];
    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }
}

- (void)removeMediaInfoAtIndex:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = sLogObject_10;
  if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = a3;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "removeMediaInfoAtIndex: called with index %lu", &v15, 0xCu);
  }

  v6 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v9 = [v8 mutableCopy];

    [v9 removeObjectAtIndex:a3];
    v10 = [v9 copy];
    mediaInfos = self->_mediaInfos;
    self->_mediaInfos = v10;

    v12 = [(VUIMediaInfoFetchController *)self imageOperations];
    v13 = [v12 objectAtIndex:a3];

    [v13 cancel];
    v14 = [(VUIMediaInfoFetchController *)self imageOperations];
    [v14 removeObjectAtIndex:a3];

    [(VUIMediaInfoFetchController *)self _updatePrewarmedPlayers];
  }
}

- (id)_createPlayerWithPlaylist:(id)a3 isForPrewarming:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:v6 isForPrewarming:v4];
    v8 = [[VUIPlayer alloc] initWithName:v7];
    v9 = v8;
    if (v4)
    {
      [(VUIPlayer *)v8 setWaitsAfterPreparingMediaItems:1];
      [(VUIPlayer *)v9 setSendsPlayerReports:0];
    }

    [(VUIPlayer *)v9 setPlaylist:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadImageAtIndex:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke;
  aBlock[3] = &unk_1E8732270;
  v7 = v6;
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
  v11 = [(VUIMediaInfoFetchController *)self imageOperations];
  v12 = [v11 count];

  if (v12 <= a3)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIMediaInfoFetchControllerErrorDomain" code:1 userInfo:0];
    (*(v10 + 2))(v10, 0, v14, 0);
  }

  else
  {
    v13 = [(VUIMediaInfoFetchController *)self imageOperations];
    v14 = [v13 objectAtIndex:a3];

    if ([v14 isFinished])
    {
      v15 = [v14 image];
      v16 = [v14 error];
      (*(v10 + 2))(v10, v15, v16, [v14 imageLoadFinished]);
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__VUIMediaInfoFetchController_loadImageAtIndex_completion___block_invoke_5;
      v17[3] = &unk_1E8732270;
      v18 = v10;
      [v14 addCompletion:v17];
      v15 = v18;
    }

    [(VUIMediaInfoFetchController *)self preLoadNextImageFromCurrentIndexIfNeeded:a3];
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

- (void)preLoadNextImageFromCurrentIndexIfNeeded:(int64_t)a3
{
  v5 = [(VUIMediaInfoFetchController *)self batchSize];
  if (v5 / 2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 / 2;
  }

  v7 = a3 + 1;
  v8 = a3 - 1;
  do
  {
    [(VUIMediaInfoFetchController *)self startImageOperationAtIndex:v8];
    [(VUIMediaInfoFetchController *)self startImageOperationAtIndex:v7++];
    --v8;
    --v6;
  }

  while (v6);
}

- (void)startImageOperationAtIndex:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = [(VUIMediaInfoFetchController *)self imageOperations];
    v6 = [v5 count];

    if (v6 > a3)
    {
      v7 = [(VUIMediaInfoFetchController *)self imageOperations];
      v9 = [v7 objectAtIndexedSubscript:a3];

      if (([v9 addedToQueue] & 1) == 0)
      {
        v8 = [(VUIMediaInfoFetchController *)self imageQueue];
        [v8 addOperation:v9];

        [v9 setAddedToQueue:1];
      }
    }
  }
}

- (void)populatePlaylistWithMediaItems:(id)a3 atIndex:(unint64_t)a4
{
  v20 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v8 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    do
    {
      if (a4 != v10)
      {
        v11 = [(VUIMediaInfoFetchController *)self mediaInfos];
        v12 = [v11 objectAtIndex:v10];

        v13 = [v12 tvpPlaylist];
        v14 = [v13 currentMediaItem];

        if (v14)
        {
          v15 = [v12 tvpPlaylist];
          v16 = [v15 currentMediaItem];
          [v6 addObject:v16];

          [v7 addIndex:v10];
        }
      }

      ++v10;
      v17 = [(VUIMediaInfoFetchController *)self mediaInfos];
      v18 = [v17 count];
    }

    while (v10 < v18);
  }

  if ([v6 count])
  {
    if ([v7 count])
    {
      v19 = [v6 count];
      if (v19 == [v7 count])
      {
        [v20 insertItems:v6 atIndexes:v7];
      }
    }
  }
}

- (void)removePopulatedMediaItems:(id)a3 atIndex:(unint64_t)a4
{
  v10 = a3;
  v5 = [v10 trackList];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = MEMORY[0x1E696AD50];
    v8 = [v10 trackList];
    v9 = [v7 indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];

    [v9 removeIndex:a4];
    [v10 removeItemsAtIndexes:v9];
  }
}

- (id)loadPlayerAtIndex:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v20 = 0;
  }

  else
  {
    v7 = [(VUIMediaInfoFetchController *)self mediaInfos];
    v8 = [v7 objectAtIndex:a3];

    v9 = [v8 tvpPlaylist];
    v10 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:v9 isForPrewarming:0];
    v11 = [(VUIMediaInfoFetchController *)self _identifierForPlaylist:v9 isForPrewarming:1];
    v12 = [(VUIMediaInfoFetchController *)self prewarmedPlayers];
    v13 = [v12 objectForKey:v11];

    v14 = sLogObject_10;
    if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v13 name];
      v22 = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Creating playback player for identifier [%@].  Prewarm player for this identifier is [%@]", &v22, 0x16u);
    }

    v17 = v9;
    v18 = v17;
    if (v13)
    {
      v19 = sLogObject_10;
      if (os_log_type_enabled(sLogObject_10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Setting playlist from prewarm player on playback player", &v22, 2u);
      }

      v18 = [v13 playlist];
    }

    v20 = [(VUIMediaInfoFetchController *)self _createPlayerWithPlaylist:v18 isForPrewarming:0];
  }

  return v20;
}

- (BOOL)mediaInfoContainsImageAtIndex:(unint64_t)a3
{
  v5 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v8 = [v7 objectAtIndex:a3];

  v9 = [v8 imageProxies];
  v10 = [v9 count] != 0;

  return v10;
}

- (BOOL)mediaInfoContainsPlayerAtIndex:(unint64_t)a3
{
  v5 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(VUIMediaInfoFetchController *)self mediaInfos];
  v8 = [v7 objectAtIndex:a3];

  v9 = [v8 tvpPlaylist];
  v10 = v9 != 0;

  return v10;
}

@end