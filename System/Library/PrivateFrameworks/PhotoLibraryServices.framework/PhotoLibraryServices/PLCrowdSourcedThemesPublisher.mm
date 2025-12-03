@interface PLCrowdSourcedThemesPublisher
+ (id)_biomeStreamForStream:(unint64_t)stream pathManager:(id)manager;
+ (id)_nameForStream:(unint64_t)stream;
+ (id)publishedUUIDsInStream:(unint64_t)stream pathManager:(id)manager;
+ (void)publishUUIDs:(id)ds stream:(unint64_t)stream pathManager:(id)manager;
@end

@implementation PLCrowdSourcedThemesPublisher

+ (id)_biomeStreamForStream:(unint64_t)stream pathManager:(id)manager
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v6 = [manager internalDirectoryWithSubType:1 additionalPathComponents:0 createIfNeeded:1 error:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = [MEMORY[0x1E698F130] newPrivateStreamDefaultConfigurationWithStoreBasePath:v6];
    if (stream == 1)
    {
      v15 = objc_alloc(MEMORY[0x1E698F120]);
      segmentSize = [v8 segmentSize];
      v11 = 7776000.0;
      v12 = v15;
      v13 = 1;
    }

    else
    {
      if (stream)
      {
LABEL_10:
        v17 = [self _nameForStream:stream];
        if (v17)
        {
          v14 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:v17 storeConfig:v8 eventDataClass:0];
        }

        else
        {
          v18 = PLBackendGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            streamCopy = stream;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "PLCrowdSourcedThemesAssetEvent: Stream %tu is not supported.", buf, 0xCu);
          }

          v14 = 0;
        }

        goto LABEL_16;
      }

      v9 = objc_alloc(MEMORY[0x1E698F120]);
      segmentSize = [v8 segmentSize];
      v11 = 0.0;
      v12 = v9;
      v13 = 0;
    }

    v16 = [v12 initPruneOnAccess:1 filterByAgeOnRead:v13 maxAge:segmentSize maxStreamSize:v11];
    [v8 setPruningPolicy:v16];

    goto LABEL_10;
  }

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    streamCopy = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "PLCrowdSourcedThemesAssetEvent: Failed to create private directory for Biome stream data. Error: %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_16:

  return v14;
}

+ (id)_nameForStream:(unint64_t)stream
{
  v3 = @"com.apple.photos.geoanalytics.sent";
  if (stream != 1)
  {
    v3 = 0;
  }

  if (stream)
  {
    return v3;
  }

  else
  {
    return @"com.apple.photos.geoanalytics";
  }
}

+ (void)publishUUIDs:(id)ds stream:(unint64_t)stream pathManager:(id)manager
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v9 = [self _biomeStreamForStream:stream pathManager:manager];
  v10 = v9;
  if (v9)
  {
    source = [v9 source];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [PLCrowdSourcedThemesAssetEvent alloc];
          v19 = [(PLCrowdSourcedThemesAssetEvent *)v18 initWithUUID:v17, v20];
          [source sendEvent:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else
  {
    source = PLBackendGetLog();
    if (os_log_type_enabled(source, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      streamCopy = stream;
      _os_log_impl(&dword_19BF1F000, source, OS_LOG_TYPE_ERROR, "PLCrowdSourcedThemesAssetEvent: Failed to create a biome stream with name %tu.", buf, 0xCu);
    }
  }
}

+ (id)publishedUUIDsInStream:(unint64_t)stream pathManager:(id)manager
{
  v31 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = [self _biomeStreamForStream:stream pathManager:managerCopy];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [v7 publisherFromStartTime:0.0];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__27151;
    v29 = __Block_byref_object_dispose__27152;
    v30 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__PLCrowdSourcedThemesPublisher_publishedUUIDsInStream_pathManager___block_invoke;
    v21[3] = &unk_1E756A2D8;
    v21[4] = &buf;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __68__PLCrowdSourcedThemesPublisher_publishedUUIDsInStream_pathManager___block_invoke_1;
    v19 = &unk_1E756A300;
    v10 = v8;
    v20 = v10;
    v11 = [v9 sinkWithCompletion:v21 receiveInput:&v16];
    if ([v10 count:v16]|| !*(*(&buf + 1) + 40))
    {
      v12 = v10;
    }

    else
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(*(&buf + 1) + 40);
        *v22 = 134218242;
        streamCopy = stream;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "PLCrowdSourcedThemesAssetEvent: Error reading published items from stream %tu: %@.", v22, 0x16u);
      }

      v12 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = stream;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "PLCrowdSourcedThemesAssetEvent: Failed to create a biome stream for stream %tu.", &buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

void __68__PLCrowdSourcedThemesPublisher_publishedUUIDsInStream_pathManager___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  v5 = PLBackendGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PLCrowdSourcedThemesAssetEvent: Publish error: %@.", &v10, 0xCu);
    }

    v8 = [v3 error];
    v9 = *(*(a1 + 32) + 8);
    v6 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "PLCrowdSourcedThemesAssetEvent: Publish completed.", &v10, 2u);
  }
}

void __68__PLCrowdSourcedThemesPublisher_publishedUUIDsInStream_pathManager___block_invoke_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 eventBody];
  v3 = [v4 uuid];
  [v2 addObject:v3];
}

@end