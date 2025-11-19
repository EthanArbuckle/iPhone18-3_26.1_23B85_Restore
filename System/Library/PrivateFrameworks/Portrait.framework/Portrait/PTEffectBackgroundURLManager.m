@interface PTEffectBackgroundURLManager
+ (CGSize)findSize:(CGSize)a3 maxSize:(CGSize)a4;
- (BOOL)copyAsFullsizeAndThumbnailFromPixelBuffer:(__CVBuffer *)a3 outputPathFullsize:(id)a4 outputPathThumbnail:(id)a5;
- (PTEffectBackgroundURLManager)initWithUserBackgrounds:(BOOL)a3;
- (id)arrayToPlist:(id)a3;
- (id)asyncWorkerQueue;
- (id)backgroundsWithType:(int64_t)a3;
- (id)createBuiltInBackgroundURLsWithFiles:(id)a3 extension:(id)a4 subdirectory:(id)a5;
- (id)makeUniqueFilename;
- (id)plistToArray:(id)a3;
- (void)addUserBackground:(id)a3 ciImage:(id)a4 backgroundToReplace:(id)a5 withOptions:(id)a6 completion:(id)a7;
- (void)hasUserBackgroundWithPixelBuffer:(id)a3 ciImage:(id)a4 completion:(id)a5;
- (void)loadUserBackgroundWithPath:(id)a3;
- (void)removeUserBackground:(id)a3 withOptions:(id)a4 completion:(id)a5;
@end

@implementation PTEffectBackgroundURLManager

- (PTEffectBackgroundURLManager)initWithUserBackgrounds:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PTEffectBackgroundURLManager;
  v3 = [(PTEffectBackgroundURLManager *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)loadUserBackgroundWithPath:(id)a3
{
  v59[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_userBackgroundDirectory, a3);
  userBackgroundDirectory = self->_userBackgroundDirectory;
  if (userBackgroundDirectory)
  {
    v7 = [(NSURL *)userBackgroundDirectory path];

    if (v7)
    {
      v45 = v5;
      v8 = MEMORY[0x277CBEBC0];
      v9 = [(NSURL *)self->_userBackgroundDirectory path];
      v10 = [v9 stringByAppendingPathComponent:@"content.plist"];
      v11 = [v8 fileURLWithPath:v10];
      userBackgroundPList = self->_userBackgroundPList;
      self->_userBackgroundPList = v11;

      v13 = MEMORY[0x277CBEBC0];
      v14 = [(NSURL *)self->_userBackgroundDirectory path];
      v15 = [v14 stringByAppendingPathComponent:@"images"];
      v16 = [v13 fileURLWithPath:v15];
      userBackgroundDirectoryImages = self->_userBackgroundDirectoryImages;
      self->_userBackgroundDirectoryImages = v16;

      v18 = MEMORY[0x277CBEBC0];
      v19 = [(NSURL *)self->_userBackgroundDirectory path];
      v20 = [v19 stringByAppendingPathComponent:@"thumbnails"];
      v21 = [v18 fileURLWithPath:v20];
      userBackgroundDirectoryThumbnails = self->_userBackgroundDirectoryThumbnails;
      self->_userBackgroundDirectoryThumbnails = v21;

      v23 = self->_userBackgroundDirectoryThumbnails;
      v59[0] = self->_userBackgroundDirectoryImages;
      v59[1] = v23;
      [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v24 = v51 = 0u;
      v25 = [v24 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (!v25)
      {
        goto LABEL_24;
      }

      v26 = v25;
      v27 = *v49;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v48 + 1) + 8 * v28);
          v47 = 0;
          fileManager = self->_fileManager;
          v31 = [v29 path];
          LOBYTE(fileManager) = [(NSFileManager *)fileManager fileExistsAtPath:v31 isDirectory:&v47];

          if ((fileManager & 1) == 0)
          {
            v36 = self->_fileManager;
            v37 = [v29 path];
            v46 = 0;
            v38 = [(NSFileManager *)v36 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:&v46];
            v34 = v46;

            v39 = _PTLogSystem();
            v35 = v39;
            if (v38)
            {
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                v40 = [v29 path];
                *buf = 138412290;
                v55 = v40;
                _os_log_impl(&dword_2243FB000, v35, OS_LOG_TYPE_INFO, "Created %@", buf, 0xCu);
                goto LABEL_15;
              }
            }

            else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = [v29 path];
              *buf = 138412546;
              v55 = v40;
              v56 = 2112;
              v57 = v34;
              _os_log_error_impl(&dword_2243FB000, v35, OS_LOG_TYPE_ERROR, "Error creating directory %@ error %@", buf, 0x16u);
LABEL_15:
            }

LABEL_19:

            goto LABEL_20;
          }

          v32 = v47;
          v33 = _PTLogSystem();
          v34 = v33;
          if (v32)
          {
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              goto LABEL_20;
            }

            v35 = [v29 path];
            *buf = 138412290;
            v55 = v35;
            _os_log_impl(&dword_2243FB000, v34, OS_LOG_TYPE_INFO, "Found background replacement directory %@", buf, 0xCu);
            goto LABEL_19;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [(PTEffectBackgroundURLManager *)v52 loadUserBackgroundWithPath:v29, &v53, v34];
          }

LABEL_20:

          ++v28;
        }

        while (v26 != v28);
        v41 = [v24 countByEnumeratingWithState:&v48 objects:v58 count:16];
        v26 = v41;
        if (!v41)
        {
LABEL_24:

          v42 = objc_opt_new();
          pixelBufferUtil = self->_pixelBufferUtil;
          self->_pixelBufferUtil = v42;

          v5 = v45;
          goto LABEL_28;
        }
      }
    }
  }

  v44 = _PTLogSystem();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager loadUserBackgroundWithPath:];
  }

  self->_loadCustomBackgrounds = 0;
LABEL_28:
}

- (id)asyncWorkerQueue
{
  asyncWorkerQueue = self->_asyncWorkerQueue;
  if (!asyncWorkerQueue)
  {
    v4 = dispatch_queue_create("com.apple.portrait.PTEffectBackgroundURLManager", 0);
    v5 = self->_asyncWorkerQueue;
    self->_asyncWorkerQueue = v4;

    asyncWorkerQueue = self->_asyncWorkerQueue;
  }

  return asyncWorkerQueue;
}

- (id)createBuiltInBackgroundURLsWithFiles:(id)a3 extension:(id)a4 subdirectory:(id)a5
{
  v5 = objc_opt_new();
  v6 = _PTLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  v7 = [v5 copy];

  return v7;
}

- (id)backgroundsWithType:(int64_t)a3
{
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  return 0;
}

- (id)makeUniqueFilename
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.heic", v3];

  return v4;
}

- (void)hasUserBackgroundWithPixelBuffer:(id)a3 ciImage:(id)a4 completion:(id)a5
{
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }
}

- (void)addUserBackground:(id)a3 ciImage:(id)a4 backgroundToReplace:(id)a5 withOptions:(id)a6 completion:(id)a7
{
  v7 = _PTLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }
}

- (void)removeUserBackground:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }
}

+ (CGSize)findSize:(CGSize)a3 maxSize:(CGSize)a4
{
  v4 = a3.width / a4.width;
  v5 = a3.width / a4.width;
  v6 = a3.height / a4.height;
  v7 = a3.height / a4.height;
  if (v5 > 1.0 || v7 > 1.0)
  {
    if (v5 >= 1.0)
    {
      if (v7 >= 1.0)
      {
        a3 = a4;
      }

      else
      {
        if (a4.width * v6 < a4.width)
        {
          a4.width = a4.width * v6;
        }

        if (a4.width < a3.width)
        {
          a3.width = a4.width;
        }
      }
    }

    else
    {
      height = a4.height * v4;
      if (a4.height * v4 >= a4.height)
      {
        height = a4.height;
      }

      if (height < a3.height)
      {
        a3.height = height;
      }
    }
  }

  v10 = floor(a3.width);
  v11 = floor(a3.height);
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)copyAsFullsizeAndThumbnailFromPixelBuffer:(__CVBuffer *)a3 outputPathFullsize:(id)a4 outputPathThumbnail:(id)a5
{
  v5 = _PTLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  return 0;
}

- (id)arrayToPlist:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v27[0] = @"fullsize";
        v10 = [v9 fullsizeURL];
        v11 = [v10 path];
        v28[0] = v11;
        v27[1] = @"thumbnail";
        v12 = [v9 thumbnailURL];
        v13 = [v12 path];
        v28[1] = v13;
        v27[2] = @"inputBufferChecksum";
        v14 = [v9 inputBufferChecksum];
        if (v14)
        {
          v3 = [v9 inputBufferChecksum];
          v15 = v3;
        }

        else
        {
          v15 = &stru_2837D16E8;
        }

        v28[2] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
        [v20 addObject:v16];

        if (v14)
        {
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  v25 = @"content";
  v26 = v20;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  return v17;
}

- (id)plistToArray:(id)a3
{
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PTEffectBackgroundURLManager createBuiltInBackgroundURLsWithFiles:extension:subdirectory:];
  }

  return 0;
}

- (void)loadUserBackgroundWithPath:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_2243FB000, a4, OS_LOG_TYPE_ERROR, "%@ is not a directory", a1, 0xCu);
}

@end