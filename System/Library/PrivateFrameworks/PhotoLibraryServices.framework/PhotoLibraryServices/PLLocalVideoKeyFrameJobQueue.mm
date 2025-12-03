@interface PLLocalVideoKeyFrameJobQueue
- (BOOL)addJobWithAssetObjectID:(id)d networkAccessAllowed:(BOOL)allowed clientBundleID:(id)iD libraryID:(id)libraryID error:(id *)error completionHandler:(id)handler;
- (BOOL)removeJob:(id)job;
- (PLLocalVideoKeyFrameJobQueue)init;
- (id)popNextJobToRun;
@end

@implementation PLLocalVideoKeyFrameJobQueue

- (BOOL)removeJob:(id)job
{
  jobCopy = job;
  os_unfair_lock_lock(&self->_lock);
  jobsByAssetObjectID = self->_jobsByAssetObjectID;
  assetObjectID = [jobCopy assetObjectID];
  v7 = [(NSMutableDictionary *)jobsByAssetObjectID objectForKeyedSubscript:assetObjectID];

  if (v7)
  {
    if (([(NSMutableOrderedSet *)self->_queuedJobs containsObject:jobCopy]& 1) != 0)
    {
      [(NSMutableOrderedSet *)self->_queuedJobs removeObject:jobCopy];
    }

    else
    {
      --self->_inflightCount;
    }

    v8 = self->_jobsByAssetObjectID;
    assetObjectID2 = [jobCopy assetObjectID];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:assetObjectID2];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7 != 0;
}

- (id)popNextJobToRun
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_inflightCount > 1)
  {
    firstObject = 0;
  }

  else
  {
    firstObject = [(NSMutableOrderedSet *)self->_queuedJobs firstObject];
    if (firstObject)
    {
      [(NSMutableOrderedSet *)self->_queuedJobs removeObjectAtIndex:0];
      ++self->_inflightCount;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (BOOL)addJobWithAssetObjectID:(id)d networkAccessAllowed:(BOOL)allowed clientBundleID:(id)iD libraryID:(id)libraryID error:(id *)error completionHandler:(id)handler
{
  allowedCopy = allowed;
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  libraryIDCopy = libraryID;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v18 = [(NSMutableDictionary *)self->_jobsByAssetObjectID objectForKeyedSubscript:dCopy];
  if (v18)
  {
    v19 = PLImageManagerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = dCopy;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "[key frame] existing job found adding new completion handler for asset: %@", buf, 0xCu);
    }

    [v18 addCompletionHandler:handlerCopy];
    goto LABEL_10;
  }

  if ([(NSMutableOrderedSet *)self->_queuedJobs count]< 0xC8)
  {
    v26 = objc_alloc_init(PLLocalVideoKeyFrameGenerationJob);
    [(PLLocalVideoKeyFrameGenerationJob *)v26 setAssetObjectID:dCopy];
    [(PLLocalVideoKeyFrameGenerationJob *)v26 setNetworkAccessAllowed:allowedCopy];
    [(PLLocalVideoKeyFrameGenerationJob *)v26 setClientBundleID:iDCopy];
    [(PLLocalVideoKeyFrameGenerationJob *)v26 setLibraryID:libraryIDCopy];
    [(PLLocalVideoKeyFrameGenerationJob *)v26 addCompletionHandler:handlerCopy];
    [(NSMutableOrderedSet *)self->_queuedJobs addObject:v26];
    jobsByAssetObjectID = self->_jobsByAssetObjectID;
    assetObjectID = [(PLLocalVideoKeyFrameGenerationJob *)v26 assetObjectID];
    [(NSMutableDictionary *)jobsByAssetObjectID setObject:v26 forKeyedSubscript:assetObjectID];

LABEL_10:
    v24 = 0;
    v25 = 1;
    goto LABEL_11;
  }

  v20 = PLImageManagerGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = dCopy;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[key frame] max queued jobs reached, failing request for asset: %@", buf, 0xCu);
  }

  v31 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E69BFF48];
  v32 = *MEMORY[0x1E696A278];
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Max queued jobs reached"];
  v33 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v24 = [v31 errorWithDomain:v21 code:47001 userInfo:v23];

  v25 = 0;
LABEL_11:
  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v29 = v24;
    *error = v24;
  }

  return v25;
}

- (PLLocalVideoKeyFrameJobQueue)init
{
  v9.receiver = self;
  v9.super_class = PLLocalVideoKeyFrameJobQueue;
  v2 = [(PLLocalVideoKeyFrameJobQueue *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    queuedJobs = v3->_queuedJobs;
    v3->_queuedJobs = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    jobsByAssetObjectID = v3->_jobsByAssetObjectID;
    v3->_jobsByAssetObjectID = v6;
  }

  return v3;
}

@end