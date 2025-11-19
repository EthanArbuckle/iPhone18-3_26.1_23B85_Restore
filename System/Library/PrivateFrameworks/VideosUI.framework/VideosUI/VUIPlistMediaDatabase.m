@interface VUIPlistMediaDatabase
+ (id)_sortedEntitiesArray:(id)a3;
+ (void)_addItem:(id)a3 itemByIdentifier:(id)a4;
+ (void)_removeItem:(id)a3 itemByIdentifier:(id)a4;
- (BOOL)_parseDatabase;
- (BOOL)_saveWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)saveToFileURL:(id)a3 error:(id *)a4;
- (NSArray)episodes;
- (NSArray)homeVideos;
- (NSArray)movieRentals;
- (NSArray)movies;
- (NSArray)seasons;
- (NSArray)shows;
- (VUIPlistMediaDatabase)init;
- (VUIPlistMediaDatabase)initWithURL:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_seasons;
- (id)entityForIdentifier:(id)a3;
- (id)itemForIdentifier:(id)a3;
- (unint64_t)hash;
- (void)_addEpisode:(id)a3 showIdentifier:(id)a4 seasonIdentifier:(id)a5;
- (void)_addHomeVideo:(id)a3;
- (void)_addMovie:(id)a3;
- (void)_addMovieRental:(id)a3;
- (void)_addSeason:(id)a3 showIdentifier:(id)a4;
- (void)_addShow:(id)a3;
- (void)_parseDatabaseAndSendNotification;
- (void)_removeEntityWithIdentifier:(id)a3;
- (void)_removeEpisode:(id)a3 fromSeason:(id)a4;
- (void)_removeHomeVideo:(id)a3;
- (void)_removeMovie:(id)a3;
- (void)_removeMovieRental:(id)a3;
- (void)_removeSeason:(id)a3 fromShow:(id)a4;
- (void)_removeShow:(id)a3;
- (void)_startMonitoringDatabaseFile;
- (void)addEntity:(id)a3 showIdentifier:(id)a4 seasonIdentifier:(id)a5;
- (void)dealloc;
- (void)removeDownloadedMediaForIdentifier:(id)a3;
- (void)removeEntityWithIdentifier:(id)a3;
- (void)updateEntity:(id)a3 propertyName:(id)a4 propertyValue:(id)a5;
- (void)updateEntityWithIdentifier:(id)a3 propertyName:(id)a4 propertyValue:(id)a5;
@end

@implementation VUIPlistMediaDatabase

- (VUIPlistMediaDatabase)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlistMediaDatabase *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    [(VUIPlistMediaDatabase *)v5 _parseDatabase];
    [(VUIPlistMediaDatabase *)v5 _startMonitoringDatabaseFile];
  }

  return v5;
}

- (VUIPlistMediaDatabase)init
{
  v14.receiver = self;
  v14.super_class = VUIPlistMediaDatabase;
  v2 = [(VUIPlistMediaDatabase *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    homeVideoByIdentifier = v2->_homeVideoByIdentifier;
    v2->_homeVideoByIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    movieByIdentifier = v2->_movieByIdentifier;
    v2->_movieByIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    movieRentalByIdentifier = v2->_movieRentalByIdentifier;
    v2->_movieRentalByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    showByIdentifier = v2->_showByIdentifier;
    v2->_showByIdentifier = v9;

    v11 = dispatch_queue_create("com.apple.videosui.VUIPlistMediaDatabase.serialDispatchQueue", 0);
    serialDispatchQueue = v2->_serialDispatchQueue;
    v2->_serialDispatchQueue = v11;
  }

  return v2;
}

- (void)dealloc
{
  databaseFileDispatchSource = self->_databaseFileDispatchSource;
  if (databaseFileDispatchSource)
  {
    dispatch_source_cancel(databaseFileDispatchSource);
  }

  v4.receiver = self;
  v4.super_class = VUIPlistMediaDatabase;
  [(VUIPlistMediaDatabase *)&v4 dealloc];
}

- (NSArray)movies
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__VUIPlistMediaDatabase_movies__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [objc_opt_class() _sortedEntitiesArray:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__VUIPlistMediaDatabase_movies__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) movieByIdentifier];
  v2 = [v6 allValues];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSArray)movieRentals
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__VUIPlistMediaDatabase_movieRentals__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [objc_opt_class() _sortedEntitiesArray:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__VUIPlistMediaDatabase_movieRentals__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) movieRentalByIdentifier];
  v2 = [v6 allValues];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSArray)homeVideos
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VUIPlistMediaDatabase_homeVideos__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [objc_opt_class() _sortedEntitiesArray:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__VUIPlistMediaDatabase_homeVideos__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) homeVideoByIdentifier];
  v2 = [v6 allValues];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSArray)shows
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__VUIPlistMediaDatabase_shows__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [objc_opt_class() _sortedEntitiesArray:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__VUIPlistMediaDatabase_shows__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) showByIdentifier];
  v2 = [v6 allValues];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSArray)seasons
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__VUIPlistMediaDatabase_seasons__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__VUIPlistMediaDatabase_seasons__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _seasons];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)episodes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__VUIPlistMediaDatabase_episodes__block_invoke;
  v6[3] = &unk_1E872DB58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [objc_opt_class() _sortedEntitiesArray:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__VUIPlistMediaDatabase_episodes__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _seasons];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) episodes];
        [v7 addObjectsFromArray:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)addEntity:(id)a3 showIdentifier:(id)a4 seasonIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = [v11 length];

  if (!v12)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"An entity must have an identifier to be added to the library"];
  }

  v13 = [v8 copy];
  v14 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUIPlistMediaDatabase_addEntity_showIdentifier_seasonIdentifier___block_invoke;
  block[3] = &unk_1E872E5D8;
  v15 = v13;
  v22 = v15;
  v23 = self;
  v16 = v9;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  dispatch_sync(v14, block);

  v20 = 0;
  LOBYTE(v14) = [(VUIPlistMediaDatabase *)self _saveWithError:&v20];
  v18 = v20;
  if ((v14 & 1) == 0)
  {
    v19 = VUIDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VUIPlistMediaDatabase addEntity:showIdentifier:seasonIdentifier:];
    }
  }
}

uint64_t __67__VUIPlistMediaDatabase_addEntity_showIdentifier_seasonIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);

        return [v11 _addHomeVideo:v12];
      case 5:
        if (![*(a1 + 48) length])
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A show identifier must be provided to add a season to the library"];
        }

        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = *(a1 + 48);

        return [v15 _addSeason:v16 showIdentifier:v17];
      case 4:
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);

        return [v7 _addShow:v8];
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);

      return [v13 _addMovieRental:v14];
    }

    else if (result == 2)
    {
      if (![*(a1 + 48) length])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A show identifier must be provided to add an episode to the library"];
      }

      if (![*(a1 + 56) length])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"A season identifier must be provided to add an episode to the library"];
      }

      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);

      return [v3 _addEpisode:v4 showIdentifier:v5 seasonIdentifier:v6];
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    return [v9 _addMovie:v10];
  }

  return result;
}

- (void)removeEntityWithIdentifier:(id)a3
{
  v4 = a3;
  [(VUIPlistMediaDatabase *)self removeDownloadedMediaForIdentifier:v4];
  v5 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VUIPlistMediaDatabase_removeEntityWithIdentifier___block_invoke;
  block[3] = &unk_1E872D990;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(v5, block);

  v9 = 0;
  LOBYTE(v5) = [(VUIPlistMediaDatabase *)self _saveWithError:&v9];
  v7 = v9;
  if ((v5 & 1) == 0)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIPlistMediaDatabase addEntity:showIdentifier:seasonIdentifier:];
    }
  }
}

- (void)updateEntity:(id)a3 propertyName:(id)a4 propertyValue:(id)a5
{
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUIPlistMediaDatabase_updateEntity_propertyName_propertyValue___block_invoke;
    block[3] = &unk_1E872E008;
    v12 = v8;
    v23 = v12;
    v13 = v10;
    v24 = v13;
    v14 = v9;
    v25 = v14;
    dispatch_sync(v11, block);

    if (v14)
    {
      v15 = v13;
      if (!v15)
      {
        v15 = [MEMORY[0x1E695DFB0] null];
      }

      v26[0] = VUIPlistMediaEntityPropertyDidChangePropertyNameKey;
      v26[1] = VUIPlistMediaEntityPropertyDidChangePropertyValueKey;
      v27[0] = v14;
      v27[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      [v17 postNotificationName:VUIPlistMediaEntityPropertyDidChange object:v12 userInfo:v16];
    }

    v21 = 0;
    v18 = [(VUIPlistMediaDatabase *)self _saveWithError:&v21];
    v19 = v21;
    if (!v18)
    {
      v20 = VUIDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [VUIPlistMediaDatabase addEntity:showIdentifier:seasonIdentifier:];
      }
    }
  }
}

- (void)updateEntityWithIdentifier:(id)a3 propertyName:(id)a4 propertyValue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(VUIPlistMediaDatabase *)self entityForIdentifier:a3];
  [(VUIPlistMediaDatabase *)self updateEntity:v10 propertyName:v9 propertyValue:v8];
}

- (id)entityForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VUIPlistMediaDatabase_entityForIdentifier___block_invoke;
  block[3] = &unk_1E872E628;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__VUIPlistMediaDatabase_entityForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) movieByIdentifier];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) movieRentalByIdentifier];
    v7 = [v6 objectForKey:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [*(a1 + 32) homeVideoByIdentifier];
      v11 = [v10 objectForKey:*(a1 + 40)];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v14 = [*(a1 + 32) showByIdentifier];
        v15 = [v14 objectForKey:*(a1 + 40)];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v18 = [*(a1 + 32) showByIdentifier];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __45__VUIPlistMediaDatabase_entityForIdentifier___block_invoke_2;
          v21[3] = &unk_1E872E600;
          v19 = *(a1 + 40);
          v20 = *(a1 + 48);
          v22 = v19;
          v23 = v20;
          [v18 enumerateKeysAndObjectsUsingBlock:v21];
        }
      }
    }
  }
}

void __45__VUIPlistMediaDatabase_entityForIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 seasonForIdentifier:*(a1 + 32)];
  v9 = v6;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    v7 = v9;
    *a4 = 1;
  }

  else
  {
    v8 = [0 episodeForIdentifier:*(a1 + 32)];
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
      *a4 = 1;
    }

    v7 = 0;
  }
}

- (void)removeDownloadedMediaForIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIPlistMediaDatabase *)self itemForIdentifier:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 filePathURL];
    v8 = VUIDefaultLogObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v17 = v7;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Deleting downloaded video at %@", buf, 0xCu);
      }

      v10 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      v11 = [v10 removeItemAtURL:v7 error:&v15];
      v8 = v15;

      if ((v11 & 1) == 0)
      {
        v12 = VUIDefaultLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [VUIPlistMediaDatabase removeDownloadedMediaForIdentifier:];
        }
      }

      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Removing local file path from database", buf, 2u);
      }

      [(VUIPlistMediaDatabase *)self updateEntity:v6 propertyName:@"filePathURL" propertyValue:0];
    }

    else if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "No file path exists for database item; not deleting downloaded video", buf, 2u);
    }

    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Removing offline FPS keys from database and setting state to NotDownloaded", buf, 2u);
    }

    [(VUIPlistMediaDatabase *)self updateEntity:v6 propertyName:@"offlineFPSKeys" propertyValue:0];
    [(VUIPlistMediaDatabase *)self updateEntity:v6 propertyName:@"downloadState" propertyValue:VUIPlistDatabaseItemDownloadStateNotDownloaded];
  }

  else
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [VUIPlistMediaDatabase removeDownloadedMediaForIdentifier:];
    }
  }
}

- (id)itemForIdentifier:(id)a3
{
  v3 = [(VUIPlistMediaDatabase *)self entityForIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_saveWithError:(id *)a3
{
  v5 = [(VUIPlistMediaDatabase *)self fileURL];
  LOBYTE(a3) = [(VUIPlistMediaDatabase *)self saveToFileURL:v5 error:a3];

  return a3;
}

- (BOOL)saveToFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v7 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__VUIPlistMediaDatabase_saveToFileURL_error___block_invoke;
  v11[3] = &unk_1E872E650;
  v11[4] = self;
  v13 = &v15;
  v8 = v6;
  v12 = v8;
  v14 = &v21;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __45__VUIPlistMediaDatabase_saveToFileURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dictionaryRepresentation];
  v3 = *(*(a1 + 48) + 8);
  obj = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:100 options:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
    [v5 removeItemAtURL:*(a1 + 40) error:0];
    v6 = [*(a1 + 40) URLByDeletingLastPathComponent];
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v9];
    objc_storeStrong((v7 + 40), v9);
    *(*(*(a1 + 56) + 8) + 24) = v8;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = [v4 writeToURL:*(a1 + 40) atomically:1];
    }
  }
}

- (unint64_t)hash
{
  v3 = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  v4 = [v3 hash];

  v5 = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  v8 = [v7 hash];

  v9 = [(VUIPlistMediaDatabase *)self showByIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
        v8 = [(VUIPlistMediaDatabase *)v6 homeVideoByIdentifier];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
            goto LABEL_29;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v14 = [(VUIPlistMediaDatabase *)self movieByIdentifier];
        v15 = [(VUIPlistMediaDatabase *)v6 movieByIdentifier];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v16)
          {
            goto LABEL_29;
          }

          v17 = [v9 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v18 = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
        v19 = [(VUIPlistMediaDatabase *)v6 movieRentalByIdentifier];
        v9 = v18;
        v20 = v19;
        v11 = v20;
        if (v9 == v20)
        {

LABEL_24:
          v22 = [(VUIPlistMediaDatabase *)self showByIdentifier];
          v23 = [(VUIPlistMediaDatabase *)v6 showByIdentifier];
          v9 = v22;
          v24 = v23;
          v11 = v24;
          if (v9 == v24)
          {
            v12 = 1;
          }

          else
          {
            v12 = 0;
            if (v9 && v24)
            {
              v12 = [v9 isEqual:v24];
            }
          }

          goto LABEL_29;
        }

        v12 = 0;
        if (v9 && v20)
        {
          v21 = [v9 isEqual:v20];

          if ((v21 & 1) == 0)
          {
LABEL_22:
            v12 = 0;
LABEL_30:

            goto LABEL_31;
          }

          goto LABEL_24;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v12 = 0;
  }

LABEL_31:

  return v12;
}

- (BOOL)_parseDatabase
{
  v71 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_movieByIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_movieRentalByIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_homeVideoByIdentifier removeAllObjects];
  [(NSMutableDictionary *)self->_showByIdentifier removeAllObjects];
  v3 = [(VUIPlistMediaDatabase *)self fileURL];
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
  if (v4)
  {
    v66 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v66];
    v6 = v66;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v45 = v6;
      v46 = v4;
      v47 = v3;
      v43 = v5;
      v8 = v5;
      [v8 objectForKey:@"Movies"];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = v65 = 0u;
      v9 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v63;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v63 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = [[VUIPlistMediaDatabaseItem alloc] initWithDictionary:*(*(&v62 + 1) + 8 * i)];
            movieByIdentifier = self->_movieByIdentifier;
            v15 = [(VUIPlistMediaDatabaseEntity *)v13 identifier];
            [(NSMutableDictionary *)movieByIdentifier vui_setObjectIfNotNil:v13 forKey:v15];
          }

          v10 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        }

        while (v10);
      }

      v44 = isKindOfClass;
      v16 = [v8 objectForKey:@"MovieRentals"];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v59;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v59 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [[VUIPlistMediaDatabaseItem alloc] initWithDictionary:*(*(&v58 + 1) + 8 * j)];
            movieRentalByIdentifier = self->_movieRentalByIdentifier;
            v23 = [(VUIPlistMediaDatabaseEntity *)v21 identifier];
            [(NSMutableDictionary *)movieRentalByIdentifier vui_setObjectIfNotNil:v21 forKey:v23];
          }

          v18 = [v16 countByEnumeratingWithState:&v58 objects:v69 count:16];
        }

        while (v18);
      }

      v48 = v8;
      v24 = [v8 objectForKey:@"HomeVideos", v16];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v25 = [v24 countByEnumeratingWithState:&v54 objects:v68 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v55;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v55 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [[VUIPlistMediaDatabaseItem alloc] initWithDictionary:*(*(&v54 + 1) + 8 * k)];
            homeVideoByIdentifier = self->_homeVideoByIdentifier;
            v31 = [(VUIPlistMediaDatabaseEntity *)v29 identifier];
            [(NSMutableDictionary *)homeVideoByIdentifier vui_setObjectIfNotNil:v29 forKey:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v54 objects:v68 count:16];
        }

        while (v26);
      }

      v32 = [v48 objectForKey:@"Shows"];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v33 = [v32 countByEnumeratingWithState:&v50 objects:v67 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v51;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [[VUIPlistMediaDatabaseShow alloc] initWithDictionary:*(*(&v50 + 1) + 8 * m)];
            showByIdentifier = self->_showByIdentifier;
            v39 = [(VUIPlistMediaDatabaseEntity *)v37 identifier];
            [(NSMutableDictionary *)showByIdentifier vui_setObjectIfNotNil:v37 forKey:v39];
          }

          v34 = [v32 countByEnumeratingWithState:&v50 objects:v67 count:16];
        }

        while (v34);
      }

      v4 = v46;
      v3 = v47;
      v6 = v45;
      isKindOfClass = v44;
      v5 = v43;
      v40 = v48;
    }

    else
    {
      v40 = VUIDefaultLogObject();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [VUIPlistMediaDatabase _parseDatabase];
      }
    }
  }

  else
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VUIPlistMediaDatabase _parseDatabase];
    }

    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_parseDatabaseAndSendNotification
{
  [(VUIPlistMediaDatabase *)self _parseDatabase];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"VUIPlistMediaDatabaseContentsDidChangeNotification" object:self];
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke;
  v30[3] = &unk_1E872E678;
  v30[4] = &v31;
  [v4 enumerateKeysAndObjectsUsingBlock:v30];

  [v3 setObject:v32[5] forKey:@"Movies"];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_2;
  v23[3] = &unk_1E872E678;
  v23[4] = &v24;
  [v5 enumerateKeysAndObjectsUsingBlock:v23];

  [v3 setObject:v25[5] forKey:@"MovieRentals"];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_3;
  v16[3] = &unk_1E872E678;
  v16[4] = &v17;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];

  [v3 setObject:v18[5] forKey:@"HomeVideos"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(VUIPlistMediaDatabase *)self showByIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_4;
  v9[3] = &unk_1E872E6A0;
  v9[4] = &v10;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  [v3 setObject:v11[5] forKey:@"Shows"];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v31, 8);

  return v3;
}

void __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 dictionaryRepresentation];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

void __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 dictionaryRepresentation];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

void __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 dictionaryRepresentation];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

void __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 dictionaryRepresentation];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

- (id)_seasons
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(VUIPlistMediaDatabase *)self showByIdentifier];
  v5 = [v4 allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) seasons];
        [v3 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [objc_opt_class() _sortedEntitiesArray:v3];

  return v12;
}

- (void)_addShow:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = [v4 identifier];
  [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v4;
  v5 = [v4 seasons];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 identifier];
        [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:v11];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v10 episodes];
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v21 + 1) + 8 * j) identifier];
              [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v14);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = [(VUIPlistMediaDatabase *)self showByIdentifier];
  [v18 setObject:v20 forKey:v19];
}

- (void)_addSeason:(id)a3 showIdentifier:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(VUIPlistMediaDatabase *)self showByIdentifier];
    v9 = [v8 objectForKey:v7];

    if (v9)
    {
      v10 = [v6 identifier];
      [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:v10];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [v6 episodes];
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v19 + 1) + 8 * v15) identifier];
            [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      v17 = [v9 seasons];
      v18 = [v17 mutableCopy];

      [v18 addObject:v6];
      [v9 setSeasons:v18];
    }
  }
}

- (void)_addEpisode:(id)a3 showIdentifier:(id)a4 seasonIdentifier:(id)a5
{
  v8 = a3;
  if (a4)
  {
    if (a5)
    {
      v17 = v8;
      v9 = a5;
      v10 = a4;
      v11 = [(VUIPlistMediaDatabase *)self showByIdentifier];
      v12 = [v11 objectForKey:v10];

      v13 = [v12 seasonForIdentifier:v9];

      v8 = v17;
      if (v13)
      {
        v14 = [v17 identifier];
        [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:v14];

        v15 = [v13 episodes];
        v16 = [v15 mutableCopy];

        [v16 addObject:v17];
        [v13 setEpisodes:v16];

        v8 = v17;
      }
    }
  }
}

- (void)_addHomeVideo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  [v5 _addItem:v4 itemByIdentifier:v6];
}

- (void)_addMovie:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  [v5 _addItem:v4 itemByIdentifier:v6];
}

- (void)_addMovieRental:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  [v5 _addItem:v4 itemByIdentifier:v6];
}

+ (void)_addItem:(id)a3 itemByIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 _removeItem:v7 itemByIdentifier:v6];
  v8 = [v7 identifier];
  [v6 setObject:v7 forKey:v8];
}

- (void)_removeShow:(id)a3
{
  v4 = a3;
  v6 = [(VUIPlistMediaDatabase *)self showByIdentifier];
  v5 = [v4 identifier];

  [v6 removeObjectForKey:v5];
}

- (void)_removeSeason:(id)a3 fromShow:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 seasons];
  v8 = [v7 mutableCopy];

  [v8 removeObject:v6];
  [v5 setSeasons:v8];
}

- (void)_removeEpisode:(id)a3 fromSeason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 episodes];
  v8 = [v7 mutableCopy];

  [v8 removeObject:v6];
  [v5 setEpisodes:v8];
}

- (void)_removeHomeVideo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  [v5 _removeItem:v4 itemByIdentifier:v6];
}

- (void)_removeMovie:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  [v5 _removeItem:v4 itemByIdentifier:v6];
}

- (void)_removeMovieRental:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  [v5 _removeItem:v4 itemByIdentifier:v6];
}

+ (void)_removeItem:(id)a3 itemByIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 identifier];
  [v5 removeObjectForKey:v6];
}

- (void)_removeEntityWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    [(VUIPlistMediaDatabase *)self _removeMovie:v6];
  }

  else
  {
    v7 = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
    v6 = [v7 objectForKey:v4];

    if (v6)
    {
      [(VUIPlistMediaDatabase *)self _removeMovieRental:v6];
    }

    else
    {
      v8 = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
      v6 = [v8 objectForKey:v4];

      if (v6)
      {
        [(VUIPlistMediaDatabase *)self _removeHomeVideo:v6];
      }

      else
      {
        v9 = [(VUIPlistMediaDatabase *)self showByIdentifier];
        v6 = [v9 objectForKey:v4];

        if (v6)
        {
          [(VUIPlistMediaDatabase *)self _removeShow:v6];
        }

        else
        {
          v10 = [(VUIPlistMediaDatabase *)self showByIdentifier];
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __53__VUIPlistMediaDatabase__removeEntityWithIdentifier___block_invoke;
          v11[3] = &unk_1E872E6C8;
          v12 = v4;
          v13 = self;
          v14 = 0;
          [v10 enumerateKeysAndObjectsUsingBlock:v11];
        }
      }
    }
  }
}

void __53__VUIPlistMediaDatabase__removeEntityWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 seasonForIdentifier:*(a1 + 32)];
  v9 = v6;
  if (v6)
  {
    [*(a1 + 40) _removeSeason:v6 fromShow:*(a1 + 48)];
    v7 = v9;
    *a4 = 1;
  }

  else
  {
    v8 = [0 episodeForIdentifier:*(a1 + 32)];
    if (v8)
    {
      [*(a1 + 40) _removeEpisode:v8 fromSeason:0];
      *a4 = 1;
    }

    v7 = 0;
  }
}

+ (id)_sortedEntitiesArray:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [v3 sortDescriptorWithKey:@"title" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v8 = [v7 copy];

  return v8;
}

- (void)_startMonitoringDatabaseFile
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlistMediaDatabase *)self fileURL];
  v4 = [v3 path];
  [v4 getCString:v15 maxLength:1024 encoding:4];
  v5 = open(v15, 0x8000);
  if (v5 != -1)
  {
    v6 = v5;
    v7 = v5;
    v8 = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9728], v7, 0x23uLL, v8);

    if (v9)
    {
      [(VUIPlistMediaDatabase *)self setDatabaseFileDispatchSource:v9];
      objc_initWeak(&location, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __53__VUIPlistMediaDatabase__startMonitoringDatabaseFile__block_invoke;
      handler[3] = &unk_1E872E4B8;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v9, handler);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __53__VUIPlistMediaDatabase__startMonitoringDatabaseFile__block_invoke_2;
      v10[3] = &__block_descriptor_36_e5_v8__0l;
      v11 = v6;
      dispatch_source_set_cancel_handler(v9, v10);
      dispatch_resume(v9);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      close(v6);
    }
  }
}

void __53__VUIPlistMediaDatabase__startMonitoringDatabaseFile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _parseDatabaseAndSendNotification];
}

@end