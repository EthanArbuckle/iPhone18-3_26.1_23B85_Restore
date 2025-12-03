@interface VideosExtrasBookmarkController
+ (id)sharedInstance;
- (BOOL)pushBookmarkForAsset:(id)asset bookmarkTime:(double)time playedToNominalLength:(BOOL)length;
- (BOOL)pushBookmarkForIdentifier:(id)identifier bookmarkTime:(double)time playedToNominalLength:(BOOL)length;
- (VideosExtrasBookmarkController)init;
- (void)_loadAllBookmarksWithRemainingIdentifiers:(id)identifiers bookmarkTimes:(id)times completionBlock:(id)block;
- (void)pullBookmarksForAssets:(id)assets completionBlock:(id)block;
- (void)pullBookmarksForIdentifiers:(id)identifiers completionBlock:(id)block;
@end

@implementation VideosExtrasBookmarkController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[VideosExtrasBookmarkController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

void __48__VideosExtrasBookmarkController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VideosExtrasBookmarkController);
  v1 = sharedInstance___sharedInstance_1;
  sharedInstance___sharedInstance_1 = v0;
}

- (VideosExtrasBookmarkController)init
{
  v39.receiver = self;
  v39.super_class = VideosExtrasBookmarkController;
  v8 = [(VideosExtrasBookmarkController *)&v39 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  VideosExtrasLoggingToOSLogging(6, @"Initializing extras bookmarking...", v2, v3, v4, v5, v6, v7, v37);
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_opt_class();
  v38 = NSStringFromClass(v10);
  v11 = [v9 initWithFormat:@"com.apple.%@.queue.%p"];

  v12 = dispatch_queue_create([v11 UTF8String], 0);
  v13 = *(v8 + 1);
  *(v8 + 1) = v12;

  domainForExtrasValues = [MEMORY[0x1E69D4868] domainForExtrasValues];
  v15 = *(v8 + 2);
  *(v8 + 2) = domainForExtrasValues;

  v21 = *(v8 + 2);
  if (!v21)
  {
    v35 = @"Failed to initialize extras bookmarking. Extras playback position domain is nil!";
LABEL_8:
    VideosExtrasLoggingToOSLogging(3, v35, v21, v16, v17, v18, v19, v20, v38);

    v34 = 0;
    goto LABEL_9;
  }

  v22 = [MEMORY[0x1E69D4878] serviceForValueDomain:?];
  v23 = *(v8 + 3);
  *(v8 + 3) = v22;

  if (!*(v8 + 3))
  {
    v35 = @"Failed to initialize extras bookmarking. Extras playback position value service is nil!";
    goto LABEL_8;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = *(v8 + 4);
  *(v8 + 4) = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v27 = *(v8 + 5);
  *(v8 + 5) = dictionary2;

  *(v8 + 6) = 0x4024000000000000;
  VideosExtrasLoggingToOSLogging(6, @"Done initializing extras bookmarking.", v28, v29, v30, v31, v32, v33, v38);

LABEL_5:
  v34 = v8;
LABEL_9:

  return v34;
}

- (void)pullBookmarksForAssets:(id)assets completionBlock:(id)block
{
  v6 = MEMORY[0x1E695DF70];
  blockCopy = block;
  assetsCopy = assets;
  v9 = objc_alloc_init(v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__VideosExtrasBookmarkController_pullBookmarksForAssets_completionBlock___block_invoke;
  v11[3] = &unk_1E872EAC8;
  v12 = v9;
  v10 = v9;
  [assetsCopy enumerateObjectsUsingBlock:v11];

  [(VideosExtrasBookmarkController *)self pullBookmarksForIdentifiers:v10 completionBlock:blockCopy];
}

void __73__VideosExtrasBookmarkController_pullBookmarksForAssets_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bookmarkID];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5DB25C0;
  }

  v5 = v4;
  [*(a1 + 32) addObject:?];
}

- (void)pullBookmarksForIdentifiers:(id)identifiers completionBlock:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  if (identifiersCopy && [identifiersCopy count])
  {
    VideosExtrasLoggingToOSLogging(6, @"Pulling bookmark times for identifiers: %@ ...", v8, v9, v10, v11, v12, v13, identifiersCopy);
    v14 = [identifiersCopy mutableCopy];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__VideosExtrasBookmarkController_pullBookmarksForIdentifiers_completionBlock___block_invoke;
    v17[3] = &unk_1E872DF40;
    v18 = identifiersCopy;
    v19 = v15;
    v20 = blockCopy;
    v16 = v15;
    [(VideosExtrasBookmarkController *)self _loadAllBookmarksWithRemainingIdentifiers:v14 bookmarkTimes:v16 completionBlock:v17];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

uint64_t __78__VideosExtrasBookmarkController_pullBookmarksForIdentifiers_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  VideosExtrasLoggingToOSLogging(6, @"Done pulling bookmark times for identifiers: %@, times: %@", a3, a4, a5, a6, a7, a8, *(a1 + 32));
  result = *(a1 + 48);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

- (BOOL)pushBookmarkForAsset:(id)asset bookmarkTime:(double)time playedToNominalLength:(BOOL)length
{
  lengthCopy = length;
  bookmarkID = [asset bookmarkID];
  LOBYTE(lengthCopy) = [(VideosExtrasBookmarkController *)self pushBookmarkForIdentifier:bookmarkID bookmarkTime:lengthCopy playedToNominalLength:time];

  return lengthCopy;
}

- (BOOL)pushBookmarkForIdentifier:(id)identifier bookmarkTime:(double)time playedToNominalLength:(BOOL)length
{
  lengthCopy = length;
  identifierCopy = identifier;
  v15 = identifierCopy;
  if (identifierCopy && [identifierCopy length])
  {
    VideosExtrasLoggingToOSLogging(6, @"Bookmark update requested for identifier: %@, bookmark time: %.1f, played to nominal length: %d", v9, v10, v11, v12, v13, v14, v15);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__VideosExtrasBookmarkController_pushBookmarkForIdentifier_bookmarkTime_playedToNominalLength___block_invoke;
    block[3] = &unk_1E872EAF0;
    block[4] = self;
    v17 = v15;
    v34 = v17;
    v35 = &v36;
    dispatch_sync(queue, block);
    if (*(v37 + 24) == 1)
    {
      v18 = [(NSMutableDictionary *)self->_entities objectForKeyedSubscript:v17];
      if (!v18)
      {
        v18 = [objc_alloc(MEMORY[0x1E69D4870]) initWithPlaybackPositionDomain:self->_domain ubiquitousIdentifier:v17 foreignDatabaseEntityID:0];
      }

      [v18 setBookmarkTimestamp:CFAbsoluteTimeGetCurrent()];
      timeCopy = 0.0;
      if (!lengthCopy)
      {
        timeCopy = time;
      }

      [v18 setBookmarkTime:timeCopy];
      if (lengthCopy)
      {
        userPlayCount = [v18 userPlayCount] + 1;
      }

      else
      {
        userPlayCount = [v18 userPlayCount];
      }

      [v18 setUserPlayCount:userPlayCount];
      [v18 setHasBeenPlayed:lengthCopy];
      VideosExtrasLoggingToOSLogging(6, @"Pushing bookmark for identifier: %@, bookmark time: %.1f, played to nominal length: %@", v22, v23, v24, v25, v26, v27, v17);
      extrasService = self->_extrasService;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __95__VideosExtrasBookmarkController_pushBookmarkForIdentifier_bookmarkTime_playedToNominalLength___block_invoke_2;
      v30[3] = &unk_1E872EB18;
      v31 = v17;
      selfCopy = self;
      [(SBCPlaybackPositionValueService *)extrasService pushPlaybackPositionEntity:v18 completionBlock:v30];
    }

    _Block_object_dispose(&v36, 8);
    v21 = 1;
  }

  else
  {
    VideosExtrasLoggingToOSLogging(6, @"Skipping bookmark push for identifier: %@.  No bookmark ID found.", v9, v10, v11, v12, v13, v14, v15);
    v21 = 0;
  }

  return v21;
}

void __95__VideosExtrasBookmarkController_pushBookmarkForIdentifier_bookmarkTime_playedToNominalLength___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v18 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v10 = CFAbsoluteTimeGetCurrent() - v3;
    if (v10 >= *(a1[4] + 48))
    {
      VideosExtrasLoggingToOSLogging(6, @"Proceeding with bookmark update since it has been %.0f seconds since the last update for identifier: %@", v4, v5, v6, v7, v8, v9, *&v10);
    }

    else
    {
      VideosExtrasLoggingToOSLogging(6, @"Skipping bookmark update since its only been %.0f seconds since the last update for identifier: %@", v4, v5, v6, v7, v8, v9, *&v10);
      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [*(a1[4] + 40) setObject:v11 forKeyedSubscript:a1[5]];

    VideosExtrasLoggingToOSLogging(6, @"Proceeding with bookmark update since the identifier hasn't been updated in the recent past. identifier: %@", v12, v13, v14, v15, v16, v17, a1[5]);
  }
}

void __95__VideosExtrasBookmarkController_pushBookmarkForIdentifier_bookmarkTime_playedToNominalLength___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a3;
  [v6 bookmarkTime];
  VideosExtrasLoggingToOSLogging(6, @"Completed bookmark push for identifier: %@, success: %@, error: %@, bookmark time: %.1f", v9, v10, v11, v12, v13, v14, v7);

  if (v6)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(v16 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__VideosExtrasBookmarkController_pushBookmarkForIdentifier_bookmarkTime_playedToNominalLength___block_invoke_3;
    block[3] = &unk_1E872E008;
    block[4] = v16;
    v19 = v15;
    v20 = v6;
    dispatch_sync(v17, block);
  }
}

- (void)_loadAllBookmarksWithRemainingIdentifiers:(id)identifiers bookmarkTimes:(id)times completionBlock:(id)block
{
  identifiersCopy = identifiers;
  timesCopy = times;
  blockCopy = block;
  firstObject = [identifiersCopy firstObject];
  if (firstObject)
  {
    [identifiersCopy removeObjectAtIndex:0];
    if ([firstObject length])
    {
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
      [(NSMutableDictionary *)self->_updateTimeForEntities setObject:v18 forKeyedSubscript:firstObject];

      VideosExtrasLoggingToOSLogging(6, @"Pulling bookmark for identifier: %@", v19, v20, v21, v22, v23, v24, firstObject);
      v25 = [objc_alloc(MEMORY[0x1E69D4870]) initWithPlaybackPositionDomain:self->_domain ubiquitousIdentifier:firstObject foreignDatabaseEntityID:0];
      extrasService = self->_extrasService;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __106__VideosExtrasBookmarkController__loadAllBookmarksWithRemainingIdentifiers_bookmarkTimes_completionBlock___block_invoke;
      v27[3] = &unk_1E872EB40;
      v28 = firstObject;
      selfCopy = self;
      v30 = timesCopy;
      v31 = identifiersCopy;
      v32 = blockCopy;
      [(SBCPlaybackPositionValueService *)extrasService pullPlaybackPositionEntity:v25 completionBlock:v27];
    }

    else
    {
      VideosExtrasLoggingToOSLogging(6, @"Skipping bookmark pull for identifier: %@. No bookmark id found.", v12, v13, v14, v15, v16, v17, firstObject);
      [timesCopy addObject:&unk_1F5E5CCD8];
      [(VideosExtrasBookmarkController *)self _loadAllBookmarksWithRemainingIdentifiers:identifiersCopy bookmarkTimes:timesCopy completionBlock:blockCopy];
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

void __106__VideosExtrasBookmarkController__loadAllBookmarksWithRemainingIdentifiers_bookmarkTimes_completionBlock___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  [v7 bookmarkTime];
  VideosExtrasLoggingToOSLogging(6, @"Completed bookmark pull for identifier: %@, success: %@, error: %@, bookmark time: %.1f", v10, v11, v12, v13, v14, v15, v8);

  v16 = 0.0;
  if (v7)
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(v18 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__VideosExtrasBookmarkController__loadAllBookmarksWithRemainingIdentifiers_bookmarkTimes_completionBlock___block_invoke_2;
    block[3] = &unk_1E872E008;
    block[4] = v18;
    v25 = v17;
    v20 = v7;
    v26 = v20;
    dispatch_sync(v19, block);

    if (a2)
    {
      [v20 bookmarkTime];
      v16 = v21;
    }
  }

  v22 = *(a1 + 48);
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  [v22 addObject:v23];

  [*(a1 + 40) _loadAllBookmarksWithRemainingIdentifiers:*(a1 + 56) bookmarkTimes:*(a1 + 48) completionBlock:*(a1 + 64)];
}

@end