@interface ICHTTPArchive
+ (ICHTTPArchive)sharedArchive;
- (ICHTTPArchive)initWithArchiveDirectoryPath:(id)a3 maxArchiveFiles:(int64_t)a4 maxArchiveBodyLength:(int64_t)a5 flushDelaySeconds:(int64_t)a6;
- (id)_archiveCreator;
- (id)_archiveForRequest:(id)a3;
- (id)_archiveForResponse:(id)a3 responseData:(id)a4;
- (id)_arrayFromHeaderDictionary:(id)a3;
- (void)_loadExistingArchivePaths;
- (void)_onQueueFlush;
- (void)_pruneOldArchives;
- (void)archiveRequest:(id)a3 withResponse:(id)a4 responseData:(id)a5 performanceMetrics:(id)a6;
- (void)dealloc;
- (void)flush;
@end

@implementation ICHTTPArchive

- (void)_pruneOldArchives
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if ((self->_maxArchiveFiles & 0x8000000000000000) == 0)
  {
    while ([(NSMutableArray *)self->_archiveFilePaths count]> self->_maxArchiveFiles)
    {
      v3 = [(NSMutableArray *)self->_archiveFilePaths lastObject];
      [v4 removeItemAtURL:v3 error:0];
      [(NSMutableArray *)self->_archiveFilePaths removeLastObject];
    }
  }
}

- (void)_loadExistingArchivePaths
{
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_archiveDirectoryPath isDirectory:1];
  v4 = [v8 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:0];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    [v5 sortUsingComparator:&__block_literal_global_108];
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  }

  archiveFilePaths = self->_archiveFilePaths;
  self->_archiveFilePaths = v6;
}

uint64_t __42__ICHTTPArchive__loadExistingArchivePaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_arrayFromHeaderDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        v18[0] = @"name";
        v18[1] = @"value";
        v19[0] = v9;
        v19[1] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_archiveForResponse:(id)a3 responseData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "statusCode")}];
    [v8 setObject:v10 forKey:@"status"];

    v11 = [MEMORY[0x1E695AC08] localizedStringForStatusCode:{objc_msgSend(v9, "statusCode")}];
    if (v11)
    {
      [v8 setObject:v11 forKey:@"statusText"];
    }

    [v8 setObject:@"HTTP/1.1" forKey:@"httpVersion"];
    v12 = [v9 allHeaderFields];
    v13 = [(ICHTTPArchive *)self _arrayFromHeaderDictionary:v12];
    [v8 setObject:v13 forKey:@"headers"];

    [v8 setObject:&unk_1F2C92098 forKey:@"headersSize"];
    if (v7 && (self->_maxArchiveBodyLength < 0 || [v7 length] < self->_maxArchiveBodyLength))
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = [v9 MIMEType];
      if (v15)
      {
        [v14 setObject:v15 forKey:@"mimeType"];
      }

      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      if (!v16)
      {
        v16 = [v7 base64EncodedStringWithOptions:0];
      }

      if ([v16 length])
      {
        [v14 setObject:v16 forKey:@"text"];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
        [v14 setObject:v17 forKey:@"bodySize"];
      }

      [v8 setObject:v14 forKey:@"content"];
    }
  }

  return v8;
}

- (id)_archiveForRequest:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 HTTPMethod];

  if (v6)
  {
    v7 = [v4 HTTPMethod];
    [v5 setObject:v7 forKey:@"method"];
  }

  [v5 setObject:@"HTTP/1.1" forKey:@"httpVersion"];
  v8 = [v4 allHTTPHeaderFields];
  v9 = [(ICHTTPArchive *)self _arrayFromHeaderDictionary:v8];
  [v5 setObject:v9 forKey:@"headers"];

  [v5 setObject:&unk_1F2C92098 forKey:@"headersSize"];
  v10 = [v4 HTTPBody];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
    if (!v11)
    {
      v11 = [v10 base64EncodedStringWithOptions:0];
    }

    if ([v11 length])
    {
      v19 = @"text";
      v20[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v5 setObject:v12 forKey:@"postData"];
    }
  }

  v13 = MEMORY[0x1E696AD98];
  v14 = [v4 HTTPBody];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
  [v5 setObject:v15 forKey:@"bodySize"];

  v16 = [v4 URL];
  v17 = [v16 absoluteString];

  if (v17)
  {
    [v5 setObject:v17 forKey:@"url"];
  }

  return v5;
}

- (id)_archiveCreator
{
  v17[2] = *MEMORY[0x1E69E9840];
  creatorDictionary = self->_creatorDictionary;
  if (!creatorDictionary)
  {
    v4 = +[ICClientInfo defaultInfo];
    v5 = [v4 clientIdentifier];
    v6 = v5;
    v7 = @"com.apple.itunescloud";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [v4 clientVersion];
    v10 = v9;
    v11 = @"1.0";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v16[0] = @"name";
    v16[1] = @"version";
    v17[0] = v8;
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v14 = self->_creatorDictionary;
    self->_creatorDictionary = v13;

    creatorDictionary = self->_creatorDictionary;
  }

  return creatorDictionary;
}

- (void)_onQueueFlush
{
  v25[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_loggedEvents count])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:@"1.2" forKey:@"version"];
    v5 = [(ICHTTPArchive *)self _archiveCreator];
    [v4 setObject:v5 forKey:@"creator"];

    [v4 setObject:self->_loggedEvents forKey:@"entries"];
    v24 = @"log";
    v25[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    currentArchiveFileName = self->_currentArchiveFileName;
    if (!currentArchiveFileName)
    {
      if (!self->_dateFormatter)
      {
        v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
        dateFormatter = self->_dateFormatter;
        self->_dateFormatter = v8;

        [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"yyyy-MM-dd_HH-mm-ss-SSSS"];
      }

      v10 = +[ICClientInfo defaultInfo];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v10 clientIdentifier];
      v13 = self->_dateFormatter;
      v14 = [MEMORY[0x1E695DF00] date];
      v15 = [(NSDateFormatter *)v13 stringFromDate:v14];
      v16 = [v11 stringWithFormat:@"%@_%@.har", v12, v15];
      v17 = self->_currentArchiveFileName;
      self->_currentArchiveFileName = v16;

      currentArchiveFileName = self->_currentArchiveFileName;
    }

    v18 = [(NSString *)self->_archiveDirectoryPath stringByAppendingPathComponent:currentArchiveFileName];
    v19 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:0];
    v20 = v19;
    if (v19)
    {
      [v19 writeToFile:v18 atomically:0];
    }

    archiveFilePaths = self->_archiveFilePaths;
    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
    [(NSMutableArray *)archiveFilePaths insertObject:v22 atIndex:0];

    [(ICHTTPArchive *)self _pruneOldArchives];
    if ([(NSMutableArray *)self->_loggedEvents count]>= 2)
    {
      [(NSMutableArray *)self->_loggedEvents removeAllObjects];
      v23 = self->_currentArchiveFileName;
      self->_currentArchiveFileName = 0;
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)flush
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__ICHTTPArchive_flush__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)archiveRequest:(id)a3 withResponse:(id)a4 responseData:(id)a5 performanceMetrics:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ICHTTPArchive_archiveRequest_withResponse_responseData_performanceMetrics___block_invoke;
  block[3] = &unk_1E7BF5908;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(accessQueue, block);
}

void __77__ICHTTPArchive_archiveRequest_withResponse_responseData_performanceMetrics___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[72] == 1)
  {
    v3 = [v2 _archiveForRequest:*(a1 + 40)];
    if (v3)
    {
      v17 = v3;
      v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      [v4 setObject:v17 forKey:@"request"];
      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = [*(a1 + 32) _archiveForResponse:v5 responseData:*(a1 + 56)];
        if (v6)
        {
          [v4 setObject:v6 forKey:@"response"];
        }
      }

      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = MEMORY[0x1E696AC80];
        v9 = MEMORY[0x1E695DF00];
        [v7 requestStartTime];
        v10 = [v9 dateWithTimeIntervalSince1970:?];
        v11 = [MEMORY[0x1E695DFE8] defaultTimeZone];
        v12 = [v8 stringFromDate:v10 timeZone:v11 formatOptions:1907];
        [v4 setValue:v12 forKey:@"startedDateTime"];
      }

      [*(*(a1 + 32) + 8) addObject:v4];
      v13 = *(a1 + 32);
      if (*(v13 + 96) >= 1 && (v14 = [*(v13 + 8) count], v13 = *(a1 + 32), v14 < 2))
      {
        v15 = *(v13 + 24);
        v16 = dispatch_time(0, 1000000000 * *(v13 + 96));
        dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        [v13 _onQueueFlush];
      }

      v3 = v17;
    }
  }
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__ICHTTPArchive_dealloc__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  flushTimer = self->_flushTimer;
  if (flushTimer)
  {
    dispatch_source_cancel(flushTimer);
  }

  v5.receiver = self;
  v5.super_class = ICHTTPArchive;
  [(ICHTTPArchive *)&v5 dealloc];
}

- (ICHTTPArchive)initWithArchiveDirectoryPath:(id)a3 maxArchiveFiles:(int64_t)a4 maxArchiveBodyLength:(int64_t)a5 flushDelaySeconds:(int64_t)a6
{
  v10 = a3;
  v32.receiver = self;
  v32.super_class = ICHTTPArchive;
  v11 = [(ICHTTPArchive *)&v32 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("com.apple.itunescloud.ICHTTPArchive.accessQueue", v14);
    v16 = *(v11 + 2);
    *(v11 + 2) = v15;

    v17 = *(v11 + 2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__ICHTTPArchive_initWithArchiveDirectoryPath_maxArchiveFiles_maxArchiveBodyLength_flushDelaySeconds___block_invoke;
    block[3] = &unk_1E7BF4958;
    v18 = v11;
    v27 = v18;
    v28 = v10;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    dispatch_async(v17, block);
    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v11 + 2));
    v20 = v18[3];
    v18[3] = v19;

    objc_initWeak(&location, v18);
    v21 = v18[3];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __101__ICHTTPArchive_initWithArchiveDirectoryPath_maxArchiveFiles_maxArchiveBodyLength_flushDelaySeconds___block_invoke_11;
    handler[3] = &unk_1E7BFA328;
    objc_copyWeak(&v24, &location);
    dispatch_source_set_event_handler(v21, handler);
    dispatch_source_set_timer(v18[3], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v18[3]);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __101__ICHTTPArchive_initWithArchiveDirectoryPath_maxArchiveFiles_maxArchiveBodyLength_flushDelaySeconds___block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v2 = +[ICClientInfo defaultInfo];
  v3 = MEMORY[0x1E696AEC0];
  v4 = MSVMediaLoggingDirectory();
  v19[0] = v4;
  v19[1] = @"HTTPArchives";
  v5 = [v2 clientIdentifier];
  v6 = v5;
  v7 = &stru_1F2C4A680;
  if (v5)
  {
    v7 = v5;
  }

  v19[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v9 = [v3 pathWithComponents:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = v9;

  v12 = *(a1 + 40);
  if (v12)
  {
    objc_storeStrong((*(a1 + 32) + 56), v12);
  }

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  if ([v13 fileExistsAtPath:*(*(a1 + 32) + 56) isDirectory:&v16] && (v16 & 1) == 0)
  {
    [v13 removeItemAtPath:*(*(a1 + 32) + 56) error:0];
  }

  [v13 createDirectoryAtPath:*(*(a1 + 32) + 56) withIntermediateDirectories:1 attributes:0 error:0];
  if ([v13 fileExistsAtPath:*(*(a1 + 32) + 56) isDirectory:&v16] && v16 == 1)
  {
    *(*(a1 + 32) + 72) = 1;
  }

  else
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a1 + 32) + 56);
      *buf = 138543362;
      v18 = v15;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "ICHTTPArchive directory '%{public}@' is not a directory! Disabling archiving", buf, 0xCu);
    }
  }

  *(*(a1 + 32) + 80) = *(a1 + 48);
  *(*(a1 + 32) + 88) = *(a1 + 56);
  *(*(a1 + 32) + 96) = *(a1 + 64);
  [*(a1 + 32) _loadExistingArchivePaths];
  [*(a1 + 32) _pruneOldArchives];
}

void __101__ICHTTPArchive_initWithArchiveDirectoryPath_maxArchiveFiles_maxArchiveBodyLength_flushDelaySeconds___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onQueueFlush];
}

+ (ICHTTPArchive)sharedArchive
{
  if (sharedArchive_sOnceToken != -1)
  {
    dispatch_once(&sharedArchive_sOnceToken, &__block_literal_global_8398);
  }

  v3 = sharedArchive_sSharedArchive;

  return v3;
}

uint64_t __30__ICHTTPArchive_sharedArchive__block_invoke()
{
  v0 = objc_alloc_init(ICHTTPArchive);
  v1 = sharedArchive_sSharedArchive;
  sharedArchive_sSharedArchive = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end