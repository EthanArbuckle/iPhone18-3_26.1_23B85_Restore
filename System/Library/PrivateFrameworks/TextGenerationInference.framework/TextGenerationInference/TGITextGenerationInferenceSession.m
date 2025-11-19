@interface TGITextGenerationInferenceSession
- (TGITextGenerationInferenceSession)initWithUUID:(id)a3 configuration:(id)a4 inferenceRunnerManager:(id)a5;
- (TGTextGenerationOperationDelegate)delegate;
- (id).cxx_construct;
- (id)enqueueOperation:(id)a3;
- (shared_ptr<TGITextGenerationInferenceSessionStateCache>)stateCache;
- (void)cancelOperationWithExecutionUUID:(id)a3;
@end

@implementation TGITextGenerationInferenceSession

- (TGITextGenerationInferenceSession)initWithUUID:(id)a3 configuration:(id)a4 inferenceRunnerManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = TGITextGenerationInferenceSession;
  v11 = [(TGITextGenerationInferenceSession *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    v13 = *(v11 + 2);
    *(v11 + 2) = v12;

    v14 = [v9 copy];
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

    objc_storeStrong(v11 + 4, a5);
  }

  return v11;
}

- (id)enqueueOperation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [(TGITextGenerationInferenceSession *)self inferenceRunnerManager];
  [v6 enqueueOperation:v4 executionUUID:v5 session:self];

  return v5;
}

- (void)cancelOperationWithExecutionUUID:(id)a3
{
  v5 = a3;
  v4 = [(TGITextGenerationInferenceSession *)self inferenceRunnerManager];
  [v4 cancelOperationWithExecutionUUID:v5];
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