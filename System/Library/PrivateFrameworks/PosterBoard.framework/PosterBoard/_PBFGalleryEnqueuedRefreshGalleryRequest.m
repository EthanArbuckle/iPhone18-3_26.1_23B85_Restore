@interface _PBFGalleryEnqueuedRefreshGalleryRequest
- (_PBFGalleryEnqueuedRefreshGalleryRequest)initWithOptions:(unint64_t)a3 powerLogReason:(int64_t)a4 sessionId:(id)a5;
- (void)addCompletionHandler:(id)a3;
- (void)fireCompletionHandlersWithError:(id)a3 faceGalleryConfiguration:(id)a4 lastUpdateDate:(id)a5 didUpdate:(BOOL)a6;
@end

@implementation _PBFGalleryEnqueuedRefreshGalleryRequest

- (_PBFGalleryEnqueuedRefreshGalleryRequest)initWithOptions:(unint64_t)a3 powerLogReason:(int64_t)a4 sessionId:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = _PBFGalleryEnqueuedRefreshGalleryRequest;
  v9 = [(_PBFGalleryEnqueuedRefreshGalleryRequest *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    sessionId = v9->_sessionId;
    v9->_sessionId = v10;

    v9->_options = a3;
    v9->_powerLogReason = a4;
  }

  return v9;
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if (v5->_finalized)
    {
      v10[2](v10, v5->_finalizedGalleryConfiguration, v5->_finalizedLastUpdateDate, v5->_finalizedDidUpdate, v5->_finalizedError);
    }

    else
    {
      completionHandlers = v5->_completionHandlers;
      if (!completionHandlers)
      {
        v7 = objc_opt_new();
        v8 = v5->_completionHandlers;
        v5->_completionHandlers = v7;

        completionHandlers = v5->_completionHandlers;
      }

      v9 = [v10 copy];
      [(NSMutableArray *)completionHandlers addObject:v9];
    }

    objc_sync_exit(v5);

    v4 = v10;
  }
}

- (void)fireCompletionHandlersWithError:(id)a3 faceGalleryConfiguration:(id)a4 lastUpdateDate:(id)a5 didUpdate:(BOOL)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  objc_sync_enter(v14);
  if (!v14->_finalized)
  {
    objc_storeStrong(&v14->_finalizedError, a3);
    v15 = [v12 copy];
    finalizedGalleryConfiguration = v14->_finalizedGalleryConfiguration;
    v14->_finalizedGalleryConfiguration = v15;

    v17 = [v13 copy];
    finalizedLastUpdateDate = v14->_finalizedLastUpdateDate;
    v14->_finalizedLastUpdateDate = v17;

    v14->_finalizedDidUpdate = a6;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v14->_completionHandlers;
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

    [(NSMutableArray *)v14->_completionHandlers removeAllObjects];
    v14->_finalized = 1;
  }

  objc_sync_exit(v14);
}

@end