@interface E5RunnerObjC
+ (BOOL)compileModelAtPath:(id)a3 modelType:(int64_t)a4 error:(id *)a5;
+ (BOOL)compileModelWithConfiguration:(id)a3 error:(id *)a4;
+ (BOOL)doesModelRequireCompilationAtPath:(id)a3 modelType:(int64_t)a4;
+ (BOOL)doesModelRequireCompilationWithConfiguration:(id)a3 bundleCachePath:(id)a4;
+ (id)compiledModelAtPath:(id)a3 modelType:(int64_t)a4 bundleCachePath:(id)a5 error:(id *)a6;
+ (id)compiledModelWithConfiguration:(id)a3 bundleCachePath:(id)a4 error:(id *)a5;
+ (id)log;
- (BOOL)setKVCacheEntryWithTokens:(id)a3 tokens:(id)a4 tokenMasks:(id)a5 startIndex:(int64_t)a6 error:(id *)a7;
- (BOOL)supportsModularAttention;
- (E5RunnerObjC)initWithModelConfiguration:(id)a3 error:(id *)a4;
- (id)createKVCacheEntry:(_NSRange)a3 error:(id *)a4;
- (id)getEmbeddingsWithTokenID:(int)a3;
- (uint64_t)runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:;
- (void)enableTelemetryWithIdentifier:(id)a3;
- (void)moveToDynamicState;
- (void)moveToFullyLoadedState;
- (void)purgeSteps:(id)a3;
- (void)runTokens:(id)a3 tokenMasks:(id)a4 computeLogitsTokenCount:(int64_t)a5 outputBlock:(id)a6;
- (void)runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:;
- (void)setEncodedImages:(id)a3;
@end

@implementation E5RunnerObjC

- (void)moveToFullyLoadedState
{
  aneSession = self->_aneSession;
  if (aneSession)
  {
    [(TGIE5ANESessionObjC *)aneSession resume];
  }

  v4 = *(*self->ajax_e5_model.__ptr_ + 64);

  v4();
}

- (void)moveToDynamicState
{
  aneSession = self->_aneSession;
  if (aneSession)
  {
    [(TGIE5ANESessionObjC *)aneSession stop];
  }

  v4 = *(*self->ajax_e5_model.__ptr_ + 56);

  v4();
}

+ (id)log
{
  if (+[E5RunnerObjC log]::onceToken != -1)
  {
    +[E5RunnerObjC log];
  }

  v3 = +[E5RunnerObjC log]::log;

  return v3;
}

uint64_t __19__E5RunnerObjC_log__block_invoke()
{
  +[E5RunnerObjC log]::log = os_log_create("com.apple.tokengenerationinference", "E5LanguageModel");

  return MEMORY[0x2821F96F8]();
}

- (E5RunnerObjC)initWithModelConfiguration:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = E5RunnerObjC;
  if ([(E5RunnerObjC *)&v10 init])
  {
    v6 = +[E5RunnerObjC log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_220940000, v6, OS_LOG_TYPE_DEFAULT, "Initializing E5RunnerObjC with model configuration: %@", buf, 0xCu);
    }

    if (v5)
    {
      [v5 modelConfiguration];
    }

    else
    {
      v20 = 0;
      *__p = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      *buf = 0u;
    }

    cgm::token_generation_inference::ajax::AJAXE5MLModelLoader::createModelFromBundle(buf, v7);
  }

  v8 = 0;

  return v8;
}

- (BOOL)supportsModularAttention
{
  ptr = self->ajax_e5_model.__ptr_;
  if (ptr)
  {
  }

  return ptr;
}

- (void)runTokens:(id)a3 tokenMasks:(id)a4 computeLogitsTokenCount:(int64_t)a5 outputBlock:(id)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31 = v12;
  if (v11)
  {
    v13 = v12;
    v14 = [v11 count];
    if (v14 != [v10 count])
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        [(E5RunnerObjC *)log runTokens:v16 tokenMasks:v17 computeLogitsTokenCount:v18 outputBlock:v19, v20, v21, v22];
      }

      v23 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrong number of token masks"];
      v35[0] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v26 = [v23 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:6 userInfo:v25];

      v13[2](v13, 0, v26);
    }
  }

  v27 = [v10 count];
  if (v27 != __p.__end_ - __p.__begin_)
  {
    __assert_rtn("[E5RunnerObjC runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:]", "E5RunnerObjC.mm", 235, "[tokens count] == tokensVector.size()");
  }

  ptr = self->ajax_e5_model.__ptr_;
  v33[0] = &unk_28344DB50;
  v33[1] = &v31;
  v33[3] = v33;
  (**ptr)(ptr, &__p, v29, a5, v33);
  std::__function::__value_func<void ()(cgm::token_generation_inference::ajax::AJAXE5MLModel::Logits const&)>::~__value_func[abi:ne200100](v33);
  v32 = v29;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

- (void)purgeSteps:(id)a3
{
  v4 = a3;
  ptr = self->ajax_e5_model.__ptr_;
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Model does not support modular attention.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = v6;
  (*(*v7 + 16))(v7, &__p);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

- (id)createKVCacheEntry:(_NSRange)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  ptr = self->ajax_e5_model.__ptr_;
  {
    (*(*v7 + 8))(v21);
    v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v8 appendBytes:*v21[0] length:v21[0][2]];
    [v8 appendBytes:v21[0][1] length:v21[0][2]];
    std::unique_ptr<TGIE5KVCacheEntry>::~unique_ptr[abi:ne200100](v21);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(E5RunnerObjC *)log createKVCacheEntry:v10 error:v11, v12, v13, v14, v15, v16];
    }

    if (a4)
    {
      v17 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create KV cache entry, model does not support modular attention"];
      v23[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a4 = [v17 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:0 userInfo:v19];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)setKVCacheEntryWithTokens:(id)a3 tokens:(id)a4 tokenMasks:(id)a5 startIndex:(int64_t)a6 error:(id *)a7
{
  v30[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  ptr = self->ajax_e5_model.__ptr_;
  {
    operator new();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(E5RunnerObjC *)log setKVCacheEntryWithTokens:v16 tokens:v17 tokenMasks:v18 startIndex:v19 error:v20, v21, v22];
  }

  if (a7)
  {
    v23 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set KV cache entry, model does not support modular attention"];
    v30[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a7 = [v23 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:0 userInfo:v25];
  }

  return 0;
}

+ (BOOL)compileModelAtPath:(id)a3 modelType:(int64_t)a4 error:(id *)a5
{
  v5 = [a1 compiledModelAtPath:a3 modelType:a4 bundleCachePath:0 error:a5];
  v6 = v5 != 0;

  return v6;
}

+ (id)compiledModelAtPath:(id)a3 modelType:(int64_t)a4 bundleCachePath:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [TGIMutableE5ModelConfigurationObjC alloc];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = [(TGIE5ModelConfigurationObjC *)v11 initWithModelType:a4 modelBundlePath:v9 e5Functions:v12 adapterConfigurations:v13];

  [(TGIE5ModelConfigurationObjC *)v14 setUseModelCatalogE5CompilerCache:v10 == 0];
  v15 = [E5RunnerObjC compiledModelWithConfiguration:v14 bundleCachePath:v10 error:a6];

  return v15;
}

+ (BOOL)compileModelWithConfiguration:(id)a3 error:(id *)a4
{
  v4 = [a1 compiledModelWithConfiguration:a3 bundleCachePath:0 error:a4];
  v5 = v4 != 0;

  return v5;
}

+ (id)compiledModelWithConfiguration:(id)a3 bundleCachePath:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[E5RunnerObjC log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_DEFAULT, "Compiling model with configuration: %@", &buf, 0xCu);
  }

  if (v7)
  {
    v9 = [v6 modelBundlePath];
    v10 = v9;
    v21 = [v9 UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &v21);
    v11 = v7;
    std::string::basic_string[abi:ne200100]<0>(&buf, [v7 fileSystemRepresentation]);
    v26 = 1;
    cgm::token_generation_inference::ajax::utils::makeProgramLibrary(&__p, &buf, &v23);
    v12 = v23;
    v23 = 0;
    if (v26 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = [v6 modelBundlePath];
    v14 = v13;
    v23 = [v13 UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, &v23);
    cgm::token_generation_inference::ajax::utils::makeProgramLibrary(&buf, [v6 useModelCatalogE5CompilerCache], &__p);
    v12 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v15 = MEMORY[0x277CCACA8];
  E5BundlePathFromProgramLibrary = E5RT_Private::GetE5BundlePathFromProgramLibrary();
  if (*(E5BundlePathFromProgramLibrary + 23) >= 0)
  {
    v17 = E5BundlePathFromProgramLibrary;
  }

  else
  {
    v17 = *E5BundlePathFromProgramLibrary;
  }

  v18 = [v15 stringWithUTF8String:v17];
  (*(v12->__r_.__value_.__r.__words[0] + 8))(v12);
  v19 = v24[0];
  v24[0] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return v18;
}

+ (BOOL)doesModelRequireCompilationAtPath:(id)a3 modelType:(int64_t)a4
{
  v5 = a3;
  v6 = [TGIMutableE5ModelConfigurationObjC alloc];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(TGIE5ModelConfigurationObjC *)v6 initWithModelType:a4 modelBundlePath:v5 e5Functions:v7 adapterConfigurations:v8];

  [(TGIE5ModelConfigurationObjC *)v9 setUseModelCatalogE5CompilerCache:1];
  LOBYTE(v7) = [E5RunnerObjC doesModelRequireCompilationWithConfiguration:v9];

  return v7;
}

+ (BOOL)doesModelRequireCompilationWithConfiguration:(id)a3 bundleCachePath:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 modelBundlePath];
  v8 = +[E5RunnerObjC log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_DEFAULT, "Checking if model with configuration: %@ requires compilation", &buf, 0xCu);
  }

  v9 = [v5 modelBundlePath];
  v10 = [v9 pathExtension];
  v11 = [v10 isEqualToString:@"bundle"];

  if (v11)
  {
    v12 = +[E5RunnerObjC log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[E5RunnerObjC doesModelRequireCompilationWithConfiguration:bundleCachePath:];
    }

    v13 = 0;
    goto LABEL_18;
  }

  if (v6)
  {
    v14 = v7;
    v21 = [v7 UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v22, &v21);
    v15 = v23;
    v16 = v6;
    std::string::basic_string[abi:ne200100]<0>(&buf, [v6 fileSystemRepresentation]);
    v25 = 1;
    v13 = cgm::token_generation_inference::ajax::utils::modelRequiresCompilation(&v22, v15, &buf);
    if (v25 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v17 = v22.__r_.__value_.__r.__words[0];
  }

  else
  {
    v18 = v7;
    v22.__r_.__value_.__r.__words[0] = [v7 UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, &v22);
    v13 = cgm::token_generation_inference::ajax::utils::modelRequiresCompilation(&buf, v23, [v5 useModelCatalogE5CompilerCache]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v17 = buf.__r_.__value_.__r.__words[0];
  }

  operator delete(v17);
LABEL_16:
  v19 = v23;
  v23 = 0;
  if (v19)
  {
    (*(v19->__pn_.__r_.__value_.__r.__words[0] + 8))(v19);
  }

LABEL_18:

  return v13;
}

- (void)enableTelemetryWithIdentifier:(id)a3
{
  v4 = a3;
  ptr = self->ajax_e5_model.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__str, [v4 UTF8String]);
  std::string::operator=((ptr + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)setEncodedImages:(id)a3
{
  v4 = a3;
  v5 = *(self->ajax_e5_model.__ptr_ + 1);
  if (v5)
  {
    ImageEmbeddingsProvider::setEncodedImages(v5, v4);
  }

  else
  {
    v6 = +[E5RunnerObjC log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_220940000, v6, OS_LOG_TYPE_INFO, "Ignoring encoded images due to missing image embeddings provider.", v7, 2u);
    }
  }
}

- (id)getEmbeddingsWithTokenID:(int)a3
{
  v4 = *(self->ajax_e5_model.__ptr_ + 1);
  if (v4)
  {
    EmbeddingSizeInBytes = ImageEmbeddingsProvider::getEmbeddingSizeInBytes(v4);
    Embeddings = ImageEmbeddingsProvider::getEmbeddings(*(self->ajax_e5_model.__ptr_ + 1), a3);
    if (Embeddings)
    {
      Embeddings = [MEMORY[0x277CBEA90] dataWithBytes:Embeddings length:EmbeddingSizeInBytes];
    }
  }

  else
  {
    v8 = +[E5RunnerObjC log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_INFO, "Ignoring encoded images due to missing image embeddings provider.", v10, 2u);
    }

    Embeddings = 0;
  }

  return Embeddings;
}

- (uint64_t)runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:
{
  v4 = [E5RunnerLastForwardLogits alloc];
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  v6 = [(E5RunnerLastForwardLogits *)v4 initWithLogits:v7];
  (*(**(a1 + 8) + 16))();
}

- (void)initWithModelConfiguration:error:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)runTokens:(uint64_t)a1 tokenMasks:computeLogitsTokenCount:outputBlock:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  v3 = *(v2 + 16);
  v5 = v4;
  v3(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_220940000, v6, v7, "Failed to run inference: %s.", v8, v9, v10, v11, v12);
}

- (void)createKVCacheEntry:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2();
  v3 = *(v2 + 16);
  v5 = v4;
  v3(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_220940000, v6, v7, "Failed to run inference: %s.", v8, v9, v10, v11, v12);
}

+ (void)compiledModelWithConfiguration:bundleCachePath:error:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)doesModelRequireCompilationWithConfiguration:(uint64_t)a1 bundleCachePath:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)doesModelRequireCompilationWithConfiguration:bundleCachePath:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_220940000, v0, OS_LOG_TYPE_ERROR, "Model path has .bundle extension, assuming its already compiled: %@", v1, 0xCu);
}

@end