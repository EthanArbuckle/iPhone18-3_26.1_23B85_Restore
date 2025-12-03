@interface PLAssetsdClientService
- (void)addPhotoLibraryUnavailabilityHandler:(id)handler;
- (void)downloadStatusForIdentifier:(id)identifier progress:(double)progress completed:(BOOL)completed data:(id)data error:(id)error;
- (void)libraryBecameUnavailable:(id)unavailable reason:(id)reason;
@end

@implementation PLAssetsdClientService

- (void)libraryBecameUnavailable:(id)unavailable reason:(id)reason
{
  v21 = *MEMORY[0x1E69E9840];
  unavailableCopy = unavailable;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy->_libraryUnavailabilityHandlers;
  libraryUnavailabilityHandlers = selfCopy->_libraryUnavailabilityHandlers;
  selfCopy->_libraryUnavailabilityHandlers = 0;

  objc_sync_exit(selfCopy);
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

- (void)downloadStatusForIdentifier:(id)identifier progress:(double)progress completed:(BOOL)completed data:(id)data error:(id)error
{
  completedCopy = completed;
  dataCopy = data;
  errorCopy = error;
  v13 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  dictionary = [v13 dictionary];
  [dictionary setObject:identifierCopy forKeyedSubscript:@"taskIdentifier"];

  if (progress >= 0.0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:progress];
    [dictionary setObject:v16 forKeyedSubscript:@"progress"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:completedCopy];
  [dictionary setObject:v17 forKeyedSubscript:@"completed"];

  if (errorCopy)
  {
    [dictionary setObject:errorCopy forKeyedSubscript:@"error"];
  }

  if (dataCopy)
  {
    [dictionary setObject:dataCopy forKeyedSubscript:@"data"];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PLGatekeeperUpdateCPLDownloadStatusNotification" object:self userInfo:dictionary];
}

- (void)addPhotoLibraryUnavailabilityHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  libraryUnavailabilityHandlers = selfCopy->_libraryUnavailabilityHandlers;
  if (!libraryUnavailabilityHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = selfCopy->_libraryUnavailabilityHandlers;
    selfCopy->_libraryUnavailabilityHandlers = v6;

    libraryUnavailabilityHandlers = selfCopy->_libraryUnavailabilityHandlers;
  }

  v8 = MEMORY[0x1AC5925C0](handlerCopy);
  [(NSMutableArray *)libraryUnavailabilityHandlers addObject:v8];

  objc_sync_exit(selfCopy);
}

@end