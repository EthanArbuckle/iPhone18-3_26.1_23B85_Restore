@interface VUIPlistMediaDatabase
+ (id)_sortedEntitiesArray:(id)array;
+ (void)_addItem:(id)item itemByIdentifier:(id)identifier;
+ (void)_removeItem:(id)item itemByIdentifier:(id)identifier;
- (BOOL)_parseDatabase;
- (BOOL)_saveWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)saveToFileURL:(id)l error:(id *)error;
- (NSArray)episodes;
- (NSArray)homeVideos;
- (NSArray)movieRentals;
- (NSArray)movies;
- (NSArray)seasons;
- (NSArray)shows;
- (VUIPlistMediaDatabase)init;
- (VUIPlistMediaDatabase)initWithURL:(id)l;
- (id)_dictionaryRepresentation;
- (id)_seasons;
- (id)entityForIdentifier:(id)identifier;
- (id)itemForIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)_addEpisode:(id)episode showIdentifier:(id)identifier seasonIdentifier:(id)seasonIdentifier;
- (void)_addHomeVideo:(id)video;
- (void)_addMovie:(id)movie;
- (void)_addMovieRental:(id)rental;
- (void)_addSeason:(id)season showIdentifier:(id)identifier;
- (void)_addShow:(id)show;
- (void)_parseDatabaseAndSendNotification;
- (void)_removeEntityWithIdentifier:(id)identifier;
- (void)_removeEpisode:(id)episode fromSeason:(id)season;
- (void)_removeHomeVideo:(id)video;
- (void)_removeMovie:(id)movie;
- (void)_removeMovieRental:(id)rental;
- (void)_removeSeason:(id)season fromShow:(id)show;
- (void)_removeShow:(id)show;
- (void)_startMonitoringDatabaseFile;
- (void)addEntity:(id)entity showIdentifier:(id)identifier seasonIdentifier:(id)seasonIdentifier;
- (void)dealloc;
- (void)removeDownloadedMediaForIdentifier:(id)identifier;
- (void)removeEntityWithIdentifier:(id)identifier;
- (void)updateEntity:(id)entity propertyName:(id)name propertyValue:(id)value;
- (void)updateEntityWithIdentifier:(id)identifier propertyName:(id)name propertyValue:(id)value;
@end

@implementation VUIPlistMediaDatabase

- (VUIPlistMediaDatabase)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(VUIPlistMediaDatabase *)self init];
  if (v5)
  {
    v6 = [lCopy copy];
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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__VUIPlistMediaDatabase_movies__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__VUIPlistMediaDatabase_movieRentals__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VUIPlistMediaDatabase_homeVideos__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__VUIPlistMediaDatabase_shows__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__VUIPlistMediaDatabase_seasons__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__VUIPlistMediaDatabase_episodes__block_invoke;
  v6[3] = &unk_1E872DB58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialDispatchQueue, v6);

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

- (void)addEntity:(id)entity showIdentifier:(id)identifier seasonIdentifier:(id)seasonIdentifier
{
  entityCopy = entity;
  identifierCopy = identifier;
  seasonIdentifierCopy = seasonIdentifier;
  identifier = [entityCopy identifier];
  v12 = [identifier length];

  if (!v12)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"An entity must have an identifier to be added to the library"];
  }

  v13 = [entityCopy copy];
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUIPlistMediaDatabase_addEntity_showIdentifier_seasonIdentifier___block_invoke;
  block[3] = &unk_1E872E5D8;
  v15 = v13;
  v22 = v15;
  selfCopy = self;
  v16 = identifierCopy;
  v24 = v16;
  v17 = seasonIdentifierCopy;
  v25 = v17;
  dispatch_sync(serialDispatchQueue, block);

  v20 = 0;
  LOBYTE(serialDispatchQueue) = [(VUIPlistMediaDatabase *)self _saveWithError:&v20];
  v18 = v20;
  if ((serialDispatchQueue & 1) == 0)
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

- (void)removeEntityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(VUIPlistMediaDatabase *)self removeDownloadedMediaForIdentifier:identifierCopy];
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VUIPlistMediaDatabase_removeEntityWithIdentifier___block_invoke;
  block[3] = &unk_1E872D990;
  block[4] = self;
  v6 = identifierCopy;
  v11 = v6;
  dispatch_sync(serialDispatchQueue, block);

  v9 = 0;
  LOBYTE(serialDispatchQueue) = [(VUIPlistMediaDatabase *)self _saveWithError:&v9];
  v7 = v9;
  if ((serialDispatchQueue & 1) == 0)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIPlistMediaDatabase addEntity:showIdentifier:seasonIdentifier:];
    }
  }
}

- (void)updateEntity:(id)entity propertyName:(id)name propertyValue:(id)value
{
  v27[2] = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  nameCopy = name;
  valueCopy = value;
  if (entityCopy)
  {
    serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUIPlistMediaDatabase_updateEntity_propertyName_propertyValue___block_invoke;
    block[3] = &unk_1E872E008;
    v12 = entityCopy;
    v23 = v12;
    v13 = valueCopy;
    v24 = v13;
    v14 = nameCopy;
    v25 = v14;
    dispatch_sync(serialDispatchQueue, block);

    if (v14)
    {
      null = v13;
      if (!null)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v26[0] = VUIPlistMediaEntityPropertyDidChangePropertyNameKey;
      v26[1] = VUIPlistMediaEntityPropertyDidChangePropertyValueKey;
      v27[0] = v14;
      v27[1] = null;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:VUIPlistMediaEntityPropertyDidChange object:v12 userInfo:v16];
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

- (void)updateEntityWithIdentifier:(id)identifier propertyName:(id)name propertyValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v10 = [(VUIPlistMediaDatabase *)self entityForIdentifier:identifier];
  [(VUIPlistMediaDatabase *)self updateEntity:v10 propertyName:nameCopy propertyValue:valueCopy];
}

- (id)entityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VUIPlistMediaDatabase_entityForIdentifier___block_invoke;
  block[3] = &unk_1E872E628;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(serialDispatchQueue, block);

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

- (void)removeDownloadedMediaForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(VUIPlistMediaDatabase *)self itemForIdentifier:identifierCopy];
  v6 = v5;
  if (v5)
  {
    filePathURL = [v5 filePathURL];
    v8 = VUIDefaultLogObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (filePathURL)
    {
      if (v9)
      {
        *buf = 138412290;
        v17 = filePathURL;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Deleting downloaded video at %@", buf, 0xCu);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      v11 = [defaultManager removeItemAtURL:filePathURL error:&v15];
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
    filePathURL = VUIDefaultLogObject();
    if (os_log_type_enabled(filePathURL, OS_LOG_TYPE_ERROR))
    {
      [VUIPlistMediaDatabase removeDownloadedMediaForIdentifier:];
    }
  }
}

- (id)itemForIdentifier:(id)identifier
{
  v3 = [(VUIPlistMediaDatabase *)self entityForIdentifier:identifier];
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

- (BOOL)_saveWithError:(id *)error
{
  fileURL = [(VUIPlistMediaDatabase *)self fileURL];
  LOBYTE(error) = [(VUIPlistMediaDatabase *)self saveToFileURL:fileURL error:error];

  return error;
}

- (BOOL)saveToFileURL:(id)l error:(id *)error
{
  lCopy = l;
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
  serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__VUIPlistMediaDatabase_saveToFileURL_error___block_invoke;
  v11[3] = &unk_1E872E650;
  v11[4] = self;
  v13 = &v15;
  v8 = lCopy;
  v12 = v8;
  v14 = &v21;
  dispatch_sync(serialDispatchQueue, v11);

  if (error)
  {
    *error = v16[5];
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
  homeVideoByIdentifier = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  v4 = [homeVideoByIdentifier hash];

  movieByIdentifier = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  v6 = [movieByIdentifier hash] ^ v4;

  movieRentalByIdentifier = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  v8 = [movieRentalByIdentifier hash];

  showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
  v10 = v8 ^ [showByIdentifier hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        homeVideoByIdentifier = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
        homeVideoByIdentifier2 = [(VUIPlistMediaDatabase *)v6 homeVideoByIdentifier];
        v9 = homeVideoByIdentifier;
        v10 = homeVideoByIdentifier2;
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

        movieByIdentifier = [(VUIPlistMediaDatabase *)self movieByIdentifier];
        movieByIdentifier2 = [(VUIPlistMediaDatabase *)v6 movieByIdentifier];
        v9 = movieByIdentifier;
        v16 = movieByIdentifier2;
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

        movieRentalByIdentifier = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
        movieRentalByIdentifier2 = [(VUIPlistMediaDatabase *)v6 movieRentalByIdentifier];
        v9 = movieRentalByIdentifier;
        v20 = movieRentalByIdentifier2;
        v11 = v20;
        if (v9 == v20)
        {

LABEL_24:
          showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
          showByIdentifier2 = [(VUIPlistMediaDatabase *)v6 showByIdentifier];
          v9 = showByIdentifier;
          v24 = showByIdentifier2;
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
  fileURL = [(VUIPlistMediaDatabase *)self fileURL];
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL];
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
      v47 = fileURL;
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
            identifier = [(VUIPlistMediaDatabaseEntity *)v13 identifier];
            [(NSMutableDictionary *)movieByIdentifier vui_setObjectIfNotNil:v13 forKey:identifier];
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
            identifier2 = [(VUIPlistMediaDatabaseEntity *)v21 identifier];
            [(NSMutableDictionary *)movieRentalByIdentifier vui_setObjectIfNotNil:v21 forKey:identifier2];
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
            identifier3 = [(VUIPlistMediaDatabaseEntity *)v29 identifier];
            [(NSMutableDictionary *)homeVideoByIdentifier vui_setObjectIfNotNil:v29 forKey:identifier3];
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
            identifier4 = [(VUIPlistMediaDatabaseEntity *)v37 identifier];
            [(NSMutableDictionary *)showByIdentifier vui_setObjectIfNotNil:v37 forKey:identifier4];
          }

          v34 = [v32 countByEnumeratingWithState:&v50 objects:v67 count:16];
        }

        while (v34);
      }

      v4 = v46;
      fileURL = v47;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIPlistMediaDatabaseContentsDidChangeNotification" object:self];
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
  movieByIdentifier = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke;
  v30[3] = &unk_1E872E678;
  v30[4] = &v31;
  [movieByIdentifier enumerateKeysAndObjectsUsingBlock:v30];

  [v3 setObject:v32[5] forKey:@"Movies"];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  movieRentalByIdentifier = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_2;
  v23[3] = &unk_1E872E678;
  v23[4] = &v24;
  [movieRentalByIdentifier enumerateKeysAndObjectsUsingBlock:v23];

  [v3 setObject:v25[5] forKey:@"MovieRentals"];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  homeVideoByIdentifier = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_3;
  v16[3] = &unk_1E872E678;
  v16[4] = &v17;
  [homeVideoByIdentifier enumerateKeysAndObjectsUsingBlock:v16];

  [v3 setObject:v18[5] forKey:@"HomeVideos"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__VUIPlistMediaDatabase__dictionaryRepresentation__block_invoke_4;
  v9[3] = &unk_1E872E6A0;
  v9[4] = &v10;
  [showByIdentifier enumerateKeysAndObjectsUsingBlock:v9];

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
  showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
  allValues = [showByIdentifier allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allValues;
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

        seasons = [*(*(&v14 + 1) + 8 * i) seasons];
        [v3 addObjectsFromArray:seasons];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [objc_opt_class() _sortedEntitiesArray:v3];

  return v12;
}

- (void)_addShow:(id)show
{
  v31 = *MEMORY[0x1E69E9840];
  showCopy = show;
  identifier = [showCopy identifier];
  [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = showCopy;
  seasons = [showCopy seasons];
  v6 = [seasons countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(seasons);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        identifier2 = [v10 identifier];
        [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:identifier2];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        episodes = [v10 episodes];
        v13 = [episodes countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(episodes);
              }

              identifier3 = [*(*(&v21 + 1) + 8 * j) identifier];
              [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:identifier3];
            }

            v14 = [episodes countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v14);
        }
      }

      v7 = [seasons countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
  [showByIdentifier setObject:v20 forKey:identifier];
}

- (void)_addSeason:(id)season showIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  seasonCopy = season;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
    v9 = [showByIdentifier objectForKey:identifierCopy];

    if (v9)
    {
      identifier = [seasonCopy identifier];
      [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:identifier];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      episodes = [seasonCopy episodes];
      v12 = [episodes countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(episodes);
            }

            identifier2 = [*(*(&v19 + 1) + 8 * v15) identifier];
            [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:identifier2];

            ++v15;
          }

          while (v13 != v15);
          v13 = [episodes countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      seasons = [v9 seasons];
      v18 = [seasons mutableCopy];

      [v18 addObject:seasonCopy];
      [v9 setSeasons:v18];
    }
  }
}

- (void)_addEpisode:(id)episode showIdentifier:(id)identifier seasonIdentifier:(id)seasonIdentifier
{
  episodeCopy = episode;
  if (identifier)
  {
    if (seasonIdentifier)
    {
      v17 = episodeCopy;
      seasonIdentifierCopy = seasonIdentifier;
      identifierCopy = identifier;
      showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
      v12 = [showByIdentifier objectForKey:identifierCopy];

      v13 = [v12 seasonForIdentifier:seasonIdentifierCopy];

      episodeCopy = v17;
      if (v13)
      {
        identifier = [v17 identifier];
        [(VUIPlistMediaDatabase *)self _removeEntityWithIdentifier:identifier];

        episodes = [v13 episodes];
        v16 = [episodes mutableCopy];

        [v16 addObject:v17];
        [v13 setEpisodes:v16];

        episodeCopy = v17;
      }
    }
  }
}

- (void)_addHomeVideo:(id)video
{
  videoCopy = video;
  v5 = objc_opt_class();
  homeVideoByIdentifier = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  [v5 _addItem:videoCopy itemByIdentifier:homeVideoByIdentifier];
}

- (void)_addMovie:(id)movie
{
  movieCopy = movie;
  v5 = objc_opt_class();
  movieByIdentifier = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  [v5 _addItem:movieCopy itemByIdentifier:movieByIdentifier];
}

- (void)_addMovieRental:(id)rental
{
  rentalCopy = rental;
  v5 = objc_opt_class();
  movieRentalByIdentifier = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  [v5 _addItem:rentalCopy itemByIdentifier:movieRentalByIdentifier];
}

+ (void)_addItem:(id)item itemByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemCopy = item;
  [self _removeItem:itemCopy itemByIdentifier:identifierCopy];
  identifier = [itemCopy identifier];
  [identifierCopy setObject:itemCopy forKey:identifier];
}

- (void)_removeShow:(id)show
{
  showCopy = show;
  showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
  identifier = [showCopy identifier];

  [showByIdentifier removeObjectForKey:identifier];
}

- (void)_removeSeason:(id)season fromShow:(id)show
{
  showCopy = show;
  seasonCopy = season;
  seasons = [showCopy seasons];
  v8 = [seasons mutableCopy];

  [v8 removeObject:seasonCopy];
  [showCopy setSeasons:v8];
}

- (void)_removeEpisode:(id)episode fromSeason:(id)season
{
  seasonCopy = season;
  episodeCopy = episode;
  episodes = [seasonCopy episodes];
  v8 = [episodes mutableCopy];

  [v8 removeObject:episodeCopy];
  [seasonCopy setEpisodes:v8];
}

- (void)_removeHomeVideo:(id)video
{
  videoCopy = video;
  v5 = objc_opt_class();
  homeVideoByIdentifier = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
  [v5 _removeItem:videoCopy itemByIdentifier:homeVideoByIdentifier];
}

- (void)_removeMovie:(id)movie
{
  movieCopy = movie;
  v5 = objc_opt_class();
  movieByIdentifier = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  [v5 _removeItem:movieCopy itemByIdentifier:movieByIdentifier];
}

- (void)_removeMovieRental:(id)rental
{
  rentalCopy = rental;
  v5 = objc_opt_class();
  movieRentalByIdentifier = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
  [v5 _removeItem:rentalCopy itemByIdentifier:movieRentalByIdentifier];
}

+ (void)_removeItem:(id)item itemByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [item identifier];
  [identifierCopy removeObjectForKey:identifier];
}

- (void)_removeEntityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  movieByIdentifier = [(VUIPlistMediaDatabase *)self movieByIdentifier];
  v6 = [movieByIdentifier objectForKey:identifierCopy];

  if (v6)
  {
    [(VUIPlistMediaDatabase *)self _removeMovie:v6];
  }

  else
  {
    movieRentalByIdentifier = [(VUIPlistMediaDatabase *)self movieRentalByIdentifier];
    v6 = [movieRentalByIdentifier objectForKey:identifierCopy];

    if (v6)
    {
      [(VUIPlistMediaDatabase *)self _removeMovieRental:v6];
    }

    else
    {
      homeVideoByIdentifier = [(VUIPlistMediaDatabase *)self homeVideoByIdentifier];
      v6 = [homeVideoByIdentifier objectForKey:identifierCopy];

      if (v6)
      {
        [(VUIPlistMediaDatabase *)self _removeHomeVideo:v6];
      }

      else
      {
        showByIdentifier = [(VUIPlistMediaDatabase *)self showByIdentifier];
        v6 = [showByIdentifier objectForKey:identifierCopy];

        if (v6)
        {
          [(VUIPlistMediaDatabase *)self _removeShow:v6];
        }

        else
        {
          showByIdentifier2 = [(VUIPlistMediaDatabase *)self showByIdentifier];
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __53__VUIPlistMediaDatabase__removeEntityWithIdentifier___block_invoke;
          v11[3] = &unk_1E872E6C8;
          v12 = identifierCopy;
          selfCopy = self;
          v14 = 0;
          [showByIdentifier2 enumerateKeysAndObjectsUsingBlock:v11];
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

+ (id)_sortedEntitiesArray:(id)array
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  arrayCopy = array;
  v5 = [v3 sortDescriptorWithKey:@"title" ascending:1];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [arrayCopy sortedArrayUsingDescriptors:v6];

  v8 = [v7 copy];

  return v8;
}

- (void)_startMonitoringDatabaseFile
{
  v16 = *MEMORY[0x1E69E9840];
  fileURL = [(VUIPlistMediaDatabase *)self fileURL];
  path = [fileURL path];
  [path getCString:v15 maxLength:1024 encoding:4];
  v5 = open(v15, 0x8000);
  if (v5 != -1)
  {
    v6 = v5;
    v7 = v5;
    serialDispatchQueue = [(VUIPlistMediaDatabase *)self serialDispatchQueue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9728], v7, 0x23uLL, serialDispatchQueue);

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