@interface _PBFGalleryEnqueuedRefreshGalleryRequest
- (_PBFGalleryEnqueuedRefreshGalleryRequest)initWithOptions:(unint64_t)options powerLogReason:(int64_t)reason sessionId:(id)id;
- (void)addCompletionHandler:(id)handler;
- (void)fireCompletionHandlersWithError:(id)error faceGalleryConfiguration:(id)configuration lastUpdateDate:(id)date didUpdate:(BOOL)update;
@end

@implementation _PBFGalleryEnqueuedRefreshGalleryRequest

- (_PBFGalleryEnqueuedRefreshGalleryRequest)initWithOptions:(unint64_t)options powerLogReason:(int64_t)reason sessionId:(id)id
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = _PBFGalleryEnqueuedRefreshGalleryRequest;
  v9 = [(_PBFGalleryEnqueuedRefreshGalleryRequest *)&v13 init];
  if (v9)
  {
    v10 = [idCopy copy];
    sessionId = v9->_sessionId;
    v9->_sessionId = v10;

    v9->_options = options;
    v9->_powerLogReason = reason;
  }

  return v9;
}

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = handlerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_finalized)
    {
      v10[2](v10, selfCopy->_finalizedGalleryConfiguration, selfCopy->_finalizedLastUpdateDate, selfCopy->_finalizedDidUpdate, selfCopy->_finalizedError);
    }

    else
    {
      completionHandlers = selfCopy->_completionHandlers;
      if (!completionHandlers)
      {
        v7 = objc_opt_new();
        v8 = selfCopy->_completionHandlers;
        selfCopy->_completionHandlers = v7;

        completionHandlers = selfCopy->_completionHandlers;
      }

      v9 = [v10 copy];
      [(NSMutableArray *)completionHandlers addObject:v9];
    }

    objc_sync_exit(selfCopy);

    handlerCopy = v10;
  }
}

- (void)fireCompletionHandlersWithError:(id)error faceGalleryConfiguration:(id)configuration lastUpdateDate:(id)date didUpdate:(BOOL)update
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  configurationCopy = configuration;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_finalized)
  {
    objc_storeStrong(&selfCopy->_finalizedError, error);
    v15 = [configurationCopy copy];
    finalizedGalleryConfiguration = selfCopy->_finalizedGalleryConfiguration;
    selfCopy->_finalizedGalleryConfiguration = v15;

    v17 = [dateCopy copy];
    finalizedLastUpdateDate = selfCopy->_finalizedLastUpdateDate;
    selfCopy->_finalizedLastUpdateDate = v17;

    selfCopy->_finalizedDidUpdate = update;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = selfCopy->_completionHandlers;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v20)
    {
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v19);
          }

          (*(*(*(&v23 + 1) + 8 * v22) + 16))(*(*(&v23 + 1) + 8 * v22));
          ++v22;
        }

        while (v20 != v22);
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v20);
    }

    [(NSMutableArray *)selfCopy->_completionHandlers removeAllObjects];
    selfCopy->_finalized = 1;
  }

  objc_sync_exit(selfCopy);
}

@end