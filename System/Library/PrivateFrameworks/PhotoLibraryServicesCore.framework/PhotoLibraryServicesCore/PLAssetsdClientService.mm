@interface PLAssetsdClientService
- (void)addPhotoLibraryUnavailabilityHandler:(id)a3;
- (void)downloadStatusForIdentifier:(id)a3 progress:(double)a4 completed:(BOOL)a5 data:(id)a6 error:(id)a7;
- (void)libraryBecameUnavailable:(id)a3 reason:(id)a4;
@end

@implementation PLAssetsdClientService

- (void)libraryBecameUnavailable:(id)a3 reason:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = v8->_libraryUnavailabilityHandlers;
  libraryUnavailabilityHandlers = v8->_libraryUnavailabilityHandlers;
  v8->_libraryUnavailabilityHandlers = 0;

  objc_sync_exit(v8);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v9;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * v15) + 16))(*(*(&v16 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)downloadStatusForIdentifier:(id)a3 progress:(double)a4 completed:(BOOL)a5 data:(id)a6 error:(id)a7
{
  v8 = a5;
  v19 = a6;
  v12 = a7;
  v13 = MEMORY[0x1E695DF90];
  v14 = a3;
  v15 = [v13 dictionary];
  [v15 setObject:v14 forKeyedSubscript:@"taskIdentifier"];

  if (a4 >= 0.0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v15 setObject:v16 forKeyedSubscript:@"progress"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [v15 setObject:v17 forKeyedSubscript:@"completed"];

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:@"error"];
  }

  if (v19)
  {
    [v15 setObject:v19 forKeyedSubscript:@"data"];
  }

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 postNotificationName:@"PLGatekeeperUpdateCPLDownloadStatusNotification" object:self userInfo:v15];
}

- (void)addPhotoLibraryUnavailabilityHandler:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  libraryUnavailabilityHandlers = v4->_libraryUnavailabilityHandlers;
  if (!libraryUnavailabilityHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = v4->_libraryUnavailabilityHandlers;
    v4->_libraryUnavailabilityHandlers = v6;

    libraryUnavailabilityHandlers = v4->_libraryUnavailabilityHandlers;
  }

  v8 = MEMORY[0x1AC5925C0](v9);
  [(NSMutableArray *)libraryUnavailabilityHandlers addObject:v8];

  objc_sync_exit(v4);
}

@end