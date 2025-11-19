@interface TGITextGenerationInferenceRunner
- (TGITextGenerationInferenceRunner)initWithQueue:(id)a3 executionUUID:(id)a4 operation:(id)a5 session:(id)a6;
- (TGITextGenerationInferenceWordFragment)runIncrementalInferenceWithTokenIDs:(TGITextGenerationInferenceWordFragment *__return_ptr)retstr;
- (id).cxx_construct;
- (shared_ptr<TGITextGenerationInferenceDecodingPolicy>)decodingPolicy;
- (shared_ptr<TGITextGenerationInferenceModelInterface>)model;
- (void)cancel;
- (void)run;
@end

@implementation TGITextGenerationInferenceRunner

- (TGITextGenerationInferenceRunner)initWithQueue:(id)a3 executionUUID:(id)a4 operation:(id)a5 session:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = TGITextGenerationInferenceRunner;
  v15 = [(TGITextGenerationInferenceRunner *)&v22 init];
  if (v15)
  {
    v16 = [v13 copy];
    operation = v15->_operation;
    v15->_operation = v16;

    objc_storeStrong(&v15->_session, a6);
    objc_storeStrong(&v15->_workQueue, a3);
    *&v15->_canceled = 256;
    v18 = [v12 copy];
    executionUUID = v15->_executionUUID;
    v15->_executionUUID = v18;

    TGITextGenerationInferenceDecodingPolicy::create(v20);
  }

  return 0;
}

- (void)run
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26D3C1000, log, OS_LOG_TYPE_ERROR, "Failed to run operation: %@, model is nil", buf, 0xCu);
}

- (TGITextGenerationInferenceWordFragment)runIncrementalInferenceWithTokenIDs:(TGITextGenerationInferenceWordFragment *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  v6 = [v1 workQueue];
  dispatch_assert_queue_V2(v6);

  if (!v3[1])
  {
    [TGITextGenerationInferenceRunner runIncrementalInferenceWithTokenIDs:];
  }

  if ([v4 shouldDoCacheLookUp])
  {
    v7 = [v4 session];
    v8 = v7;
    if (v7)
    {
      [v7 stateCache];
      v7 = __p[0];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
    }

    TGITextGenerationInferenceSessionStateCache::cacheEntryForTokenIDs(v7, v3, &v25);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    if (v27)
    {
      v9 = *v28;
      [v4 model];
      (*(*v23 + 64))(__p);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      retstr->var0 = v9;
      if (SHIBYTE(v22) < 0)
      {
        std::string::__init_copy_ctor_external(&retstr->var1, __p[0], __p[1]);
      }

      else
      {
        *retstr->var1.var0.var0.var0 = *__p;
        *(&retstr->var1.var0.var1 + 2) = v22;
      }

      [v4 model];
      (*(*v23 + 16))(v23, v3[1], &v25);
      result = v24;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (SHIBYTE(v22) < 0)
      {
        v18 = __p[0];
        goto LABEL_38;
      }

      return result;
    }

    [v4 setShouldDoCacheLookUp:0];
  }

  v10 = *(*v3 + 4 * v3[1] - 4);
  [v4 model];
  (*(*v25 + 48))(v25, v10);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  [v4 decodingPolicy];
  v11 = v23;
  [v4 model];
  (*(*v19 + 32))(&v25);
  TGITextGenerationInferenceDecodingPolicy::stateWithLogits(v11, v25, *(&v25 + 1), __p);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v12 = [v4 session];
  v13 = v12;
  if (v12)
  {
    [v12 stateCache];
    v14 = v23;
  }

  else
  {
    v14 = 0;
    v23 = 0;
    v24 = 0;
  }

  [v4 model];
  (*(*v19 + 24))(&v25);
  TGITextGenerationInferenceSessionStateCache::addCacheEntryForStepState(v14, &v25, __p);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v15 = *__p[0];
  [v4 model];
  (*(*v23 + 64))(&v25);
  result = v24;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  retstr->var0 = v15;
  p_var1 = &retstr->var1;
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    *&p_var1->__r_.__value_.__l.__data_ = v25;
    p_var1->__r_.__value_.__r.__words[2] = v26;
    return result;
  }

  std::string::__init_copy_ctor_external(p_var1, v25, *(&v25 + 1));
  if (SHIBYTE(v26) < 0)
  {
    v18 = v25;
LABEL_38:
    operator delete(v18);
  }

  return result;
}

- (void)cancel
{
  v6 = [(TGITextGenerationInferenceRunner *)self workQueue];
  dispatch_assert_queue_not_V2(v6);

  [(TGITextGenerationInferenceRunner *)self setCanceled:1];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:89 userInfo:0];
  v3 = [(TGITextGenerationInferenceRunner *)self session];
  v4 = [v3 delegate];
  v5 = [(TGITextGenerationInferenceRunner *)self executionUUID];
  [v4 operationWithExecutionUUID:v5 didFailWithError:v7];
}

- (shared_ptr<TGITextGenerationInferenceModelInterface>)model
{
  objc_copyCppObjectAtomic(v2, &self->_model, __copy_helper_atomic_property_);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (shared_ptr<TGITextGenerationInferenceDecodingPolicy>)decodingPolicy
{
  objc_copyCppObjectAtomic(v2, &self->_decodingPolicy, __copy_helper_atomic_property__11);
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end