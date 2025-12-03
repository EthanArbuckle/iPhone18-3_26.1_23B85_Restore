@interface TGITextGenerationInferenceSession
- (TGITextGenerationInferenceSession)initWithUUID:(id)d configuration:(id)configuration inferenceRunnerManager:(id)manager;
- (TGTextGenerationOperationDelegate)delegate;
- (id).cxx_construct;
- (id)enqueueOperation:(id)operation;
- (shared_ptr<TGITextGenerationInferenceSessionStateCache>)stateCache;
- (void)cancelOperationWithExecutionUUID:(id)d;
@end

@implementation TGITextGenerationInferenceSession

- (TGITextGenerationInferenceSession)initWithUUID:(id)d configuration:(id)configuration inferenceRunnerManager:(id)manager
{
  dCopy = d;
  configurationCopy = configuration;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = TGITextGenerationInferenceSession;
  v11 = [(TGITextGenerationInferenceSession *)&v20 init];
  if (v11)
  {
    v12 = [dCopy copy];
    v13 = *(v11 + 2);
    *(v11 + 2) = v12;

    v14 = [configurationCopy copy];
    v15 = *(v11 + 3);
    *(v11 + 3) = v14;

    TGITextGenerationInferenceSessionStateCache::create(0x400, &v19);
    v16 = v19;
    v19 = 0uLL;
    v17 = *(v11 + 6);
    *(v11 + 40) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      if (*(&v19 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
      }
    }

    objc_storeStrong(v11 + 4, manager);
  }

  return v11;
}

- (id)enqueueOperation:(id)operation
{
  operationCopy = operation;
  uUID = [MEMORY[0x277CCAD78] UUID];
  inferenceRunnerManager = [(TGITextGenerationInferenceSession *)self inferenceRunnerManager];
  [inferenceRunnerManager enqueueOperation:operationCopy executionUUID:uUID session:self];

  return uUID;
}

- (void)cancelOperationWithExecutionUUID:(id)d
{
  dCopy = d;
  inferenceRunnerManager = [(TGITextGenerationInferenceSession *)self inferenceRunnerManager];
  [inferenceRunnerManager cancelOperationWithExecutionUUID:dCopy];
}

- (TGTextGenerationOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (shared_ptr<TGITextGenerationInferenceSessionStateCache>)stateCache
{
  objc_copyCppObjectAtomic(v2, &self->_stateCache, __copy_helper_atomic_property__1);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end