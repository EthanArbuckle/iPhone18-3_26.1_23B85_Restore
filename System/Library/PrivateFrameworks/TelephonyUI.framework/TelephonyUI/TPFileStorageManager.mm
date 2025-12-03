@interface TPFileStorageManager
+ (id)sharedInstance;
- (NSURL)urlForFileSystem;
- (TPFileStorageManager)init;
- (id)imageWithName:(id)name;
- (id)urlsForLegacyFileSystem;
- (void)clearCacheWithCompletion:(id)completion;
- (void)clearLegacyStorageIfNecessary;
- (void)dealloc;
- (void)deleteStorageAtURLs:(id)ls;
- (void)saveImage:(id)image withName:(id)name;
- (void)urlForFileSystem;
- (void)urlsForLegacyFileSystem;
@end

@implementation TPFileStorageManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TPFileStorageManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (TPFileStorageManager)init
{
  v7.receiver = self;
  v7.super_class = TPFileStorageManager;
  v2 = [(TPFileStorageManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TelephonyUI.TPFileStorageManager", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_localeChanged name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

uint64_t __38__TPFileStorageManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (NSURL)urlForFileSystem
{
  urlForFileSystem = self->_urlForFileSystem;
  if (!urlForFileSystem)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    v5 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v11];
    v6 = v11;

    if (v5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", @"TelephonyUI", 10];
      v8 = [v5 URLByAppendingPathComponent:v7];
      v9 = self->_urlForFileSystem;
      self->_urlForFileSystem = v8;
    }

    else
    {
      v7 = TPDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [TPFileStorageManager urlForFileSystem];
      }
    }

    urlForFileSystem = self->_urlForFileSystem;
  }

  return urlForFileSystem;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TPFileStorageManager;
  [(TPFileStorageManager *)&v4 dealloc];
}

- (void)saveImage:(id)image withName:(id)name
{
  imageCopy = image;
  nameCopy = name;
  queue = [(TPFileStorageManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TPFileStorageManager_saveImage_withName___block_invoke;
  block[3] = &unk_1E7C0C580;
  block[4] = self;
  v12 = nameCopy;
  v13 = imageCopy;
  v9 = imageCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

void __43__TPFileStorageManager_saveImage_withName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) urlForFileSystem];
  if (v2)
  {
    v17 = 0;
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v2 path];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:&v17];

    if (!v5 || (v17 & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = 0;
      v7 = [v6 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v16];
      v8 = v16;

      if ((v7 & 1) == 0)
      {
        v9 = TPDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __43__TPFileStorageManager_saveImage_withName___block_invoke_cold_1();
        }
      }
    }

    v10 = [v2 URLByAppendingPathComponent:*(a1 + 40)];
    v11 = UIImagePNGRepresentation(*(a1 + 48));
    v15 = 0;
    v12 = [v11 writeToURL:v10 options:268435457 error:&v15];
    v13 = v15;

    if ((v12 & 1) == 0)
    {
      v14 = TPDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __43__TPFileStorageManager_saveImage_withName___block_invoke_cold_2();
      }
    }
  }
}

- (id)imageWithName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(TPFileStorageManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TPFileStorageManager_imageWithName___block_invoke;
  block[3] = &unk_1E7C0C478;
  block[4] = self;
  v6 = nameCopy;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(queue, block);

  v7 = v14[5];
  if (!v7)
  {
    [(TPFileStorageManager *)self clearLegacyStorageIfNecessary];
    v7 = v14[5];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __38__TPFileStorageManager_imageWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) urlForFileSystem];
  v3 = [v2 URLByAppendingPathComponent:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fileSystemRepresentation];
    if (!v5)
    {
      v9 = TPDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __38__TPFileStorageManager_imageWithName___block_invoke_cold_3();
      }

      goto LABEL_13;
    }

    v6 = open(v5, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      memset(&v24, 0, sizeof(v24));
      if (fstat(v6, &v24))
      {
        v8 = TPDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __38__TPFileStorageManager_imageWithName___block_invoke_cold_1(v7, v8);
        }

LABEL_7:

LABEL_8:
        v9 = 0;
        goto LABEL_9;
      }

      if (v24.st_size)
      {
        v18 = mmap(0, v24.st_size, 1, 1025, v7, 0);
        if (v18 == -1)
        {
          v8 = TPDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __38__TPFileStorageManager_imageWithName___block_invoke_cold_2(v7, v8);
          }

          goto LABEL_7;
        }

        v19 = v18;
        context.version = 0;
        memset(&context.retain, 0, 40);
        context.info = v24.st_size;
        context.deallocate = _mmapDeallocatorCallback;
        context.preferredSize = 0;
        v20 = CFAllocatorCreate(0, &context);
        if (!v20)
        {
          goto LABEL_8;
        }

        v21 = v20;
        v9 = CFDataCreateWithBytesNoCopy(0, v19, v24.st_size, v20);
        if (!v9)
        {
          munmap(v19, v24.st_size);
        }

        CFRelease(v21);
      }

      else
      {
        v22 = TPDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(context.version) = 0;
          _os_log_impl(&dword_1B4894000, v22, OS_LOG_TYPE_DEFAULT, "Memory mapping a zero byte file", &context, 2u);
        }

        v9 = CFDataCreate(0, 0, 0);
      }

LABEL_9:
      close(v7);
      if (v9)
      {
        v10 = [MEMORY[0x1E69DCAB8] imageWithData:v9];
        v11 = MEMORY[0x1E69DCAB8];
        v12 = [v10 CGImage];
        v13 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v13 scale];
        v15 = [v11 imageWithCGImage:v12 scale:objc_msgSend(v10 orientation:{"imageOrientation"), v14}];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

LABEL_13:
      }
    }
  }
}

- (void)clearCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(TPFileStorageManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TPFileStorageManager_clearCacheWithCompletion___block_invoke;
  v7[3] = &unk_1E7C0C048;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_barrier_async(queue, v7);
}

void __49__TPFileStorageManager_clearCacheWithCompletion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = a1;
  v3 = [*(a1 + 32) urlForFileSystem];
  v20 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:&v20];
  v5 = v20;

  v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * v9);
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = v10;
        v13 = [v12 removeItemAtURL:v11 error:&v19];
        v5 = v19;

        if (v13)
        {
          v14 = v5 == 0;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          v15 = TPDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v26 = v11;
            v27 = 2112;
            v28 = v5;
            _os_log_error_impl(&dword_1B4894000, v15, OS_LOG_TYPE_ERROR, "Error deleting file %@ %@", buf, 0x16u);
          }
        }

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *(v18 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v5 == 0, v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)urlsForLegacyFileSystem
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v28 = 0;
  v4 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v28];
  v5 = v28;

  if (v4)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v27 = v5;
    v7 = [defaultManager2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v27];
    v8 = v27;

    if (v7)
    {
      v21 = v8;
      v22 = v4;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = v7;
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            pathComponents = [v13 pathComponents];
            lastObject = [pathComponents lastObject];
            v16 = [lastObject hasPrefix:@"TelephonyUI"];

            if (v16)
            {
              [v2 addObject:v13];
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v10);
      }

      v8 = v21;
      v4 = v22;
    }

    else
    {
      v17 = TPDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [TPFileStorageManager urlsForLegacyFileSystem];
      }
    }
  }

  else
  {
    v7 = TPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TPFileStorageManager urlsForLegacyFileSystem];
    }

    v8 = v5;
  }

  v18 = [v2 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)clearLegacyStorageIfNecessary
{
  if (![(TPFileStorageManager *)self hasClearedLegacyStorage])
  {
    v3 = TPDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B4894000, v3, OS_LOG_TYPE_DEFAULT, "clear legacy storage", v5, 2u);
    }

    urlsForLegacyFileSystem = [(TPFileStorageManager *)self urlsForLegacyFileSystem];
    [(TPFileStorageManager *)self deleteStorageAtURLs:urlsForLegacyFileSystem];

    [(TPFileStorageManager *)self setHasClearedLegacyStorage:1];
  }
}

- (void)deleteStorageAtURLs:(id)ls
{
  lsCopy = ls;
  queue = [(TPFileStorageManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TPFileStorageManager_deleteStorageAtURLs___block_invoke;
  block[3] = &unk_1E7C0C368;
  v8 = lsCopy;
  v6 = lsCopy;
  dispatch_async(queue, block);
}

void __44__TPFileStorageManager_deleteStorageAtURLs___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v20;
    *&v3 = 138412546;
    v17 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E696AC08] defaultManager];
        v9 = [v7 path];
        v10 = [v8 fileExistsAtPath:v9];

        if (v10)
        {
          v11 = TPDefaultLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v7;
            _os_log_impl(&dword_1B4894000, v11, OS_LOG_TYPE_DEFAULT, "deleting legacy storage at URL: %@", buf, 0xCu);
          }

          v12 = [MEMORY[0x1E696AC08] defaultManager];
          v18 = 0;
          v13 = [v12 removeItemAtURL:v7 error:&v18];
          v14 = v18;

          if ((v13 & 1) == 0)
          {
            v15 = TPDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v24 = v7;
              v25 = 2112;
              v26 = v14;
              _os_log_error_impl(&dword_1B4894000, v15, OS_LOG_TYPE_ERROR, "Error deleting storage at %@ %@", buf, 0x16u);
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v1 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __43__TPFileStorageManager_saveImage_withName___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B4894000, v0, v1, "Error creating directory for mmap images %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__TPFileStorageManager_saveImage_withName___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B4894000, v0, v1, "Error writing image %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38__TPFileStorageManager_imageWithName___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B4894000, a2, OS_LOG_TYPE_ERROR, "fstat failed %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __38__TPFileStorageManager_imageWithName___block_invoke_cold_2(int a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = __error();
  v5 = strerror(*v4);
  v7[0] = 67109378;
  v7[1] = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&dword_1B4894000, a2, OS_LOG_TYPE_ERROR, "Could not mmap %d: %s", v7, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __38__TPFileStorageManager_imageWithName___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B4894000, v0, v1, "Can't get file system representation for file path %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)urlForFileSystem
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B4894000, v0, v1, "Error getting library cache Directory %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)urlsForLegacyFileSystem
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1B4894000, v0, v1, "Error getting library Directory %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end