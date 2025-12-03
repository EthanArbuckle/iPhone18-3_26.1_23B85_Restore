@interface E5RunnerObjC
+ (BOOL)compileModelAtPath:(id)path modelType:(int64_t)type error:(id *)error;
+ (BOOL)compileModelWithConfiguration:(id)configuration error:(id *)error;
+ (BOOL)doesModelRequireCompilationAtPath:(id)path modelType:(int64_t)type;
+ (BOOL)doesModelRequireCompilationWithConfiguration:(id)configuration bundleCachePath:(id)path;
+ (id)compiledModelAtPath:(id)path modelType:(int64_t)type bundleCachePath:(id)cachePath error:(id *)error;
+ (id)compiledModelWithConfiguration:(id)configuration bundleCachePath:(id)path error:(id *)error;
+ (id)log;
- (BOOL)setKVCacheEntryWithTokens:(id)tokens tokens:(id)a4 tokenMasks:(id)masks startIndex:(int64_t)index error:(id *)error;
- (BOOL)supportsModularAttention;
- (E5RunnerObjC)initWithModelConfiguration:(id)configuration error:(id *)error;
- (id)createKVCacheEntry:(_NSRange)entry error:(id *)error;
- (id)getEmbeddingsWithTokenID:(int)d;
- (uint64_t)runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:;
- (void)enableTelemetryWithIdentifier:(id)identifier;
- (void)moveToDynamicState;
- (void)moveToFullyLoadedState;
- (void)purgeSteps:(id)steps;
- (void)runTokens:(id)tokens tokenMasks:(id)masks computeLogitsTokenCount:(int64_t)count outputBlock:(id)block;
- (void)runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:;
- (void)setEncodedImages:(id)images;
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

- (E5RunnerObjC)initWithModelConfiguration:(id)configuration error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = E5RunnerObjC;
  if ([(E5RunnerObjC *)&v10 init])
  {
    v6 = +[E5RunnerObjC log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = configurationCopy;
      _os_log_impl(&dword_220940000, v6, OS_LOG_TYPE_DEFAULT, "Initializing E5RunnerObjC with model configuration: %@", buf, 0xCu);
    }

    if (configurationCopy)
    {
      [configurationCopy modelConfiguration];
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

- (void)runTokens:(id)tokens tokenMasks:(id)masks computeLogitsTokenCount:(int64_t)count outputBlock:(id)block
{
  v35[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  masksCopy = masks;
  blockCopy = block;
  v31 = blockCopy;
  if (masksCopy)
  {
    v13 = blockCopy;
    v14 = [masksCopy count];
    if (v14 != [tokensCopy count])
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

  v27 = [tokensCopy count];
  if (v27 != __p.__end_ - __p.__begin_)
  {
    __assert_rtn("[E5RunnerObjC runTokens:tokenMasks:computeLogitsTokenCount:outputBlock:]", "E5RunnerObjC.mm", 235, "[tokens count] == tokensVector.size()");
  }

  ptr = self->ajax_e5_model.__ptr_;
  v33[0] = &unk_28344DB50;
  v33[1] = &v31;
  v33[3] = v33;
  (**ptr)(ptr, &__p, v29, count, v33);
  std::__function::__value_func<void ()(cgm::token_generation_inference::ajax::AJAXE5MLModel::Logits const&)>::~__value_func[abi:ne200100](v33);
  v32 = v29;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

- (void)purgeSteps:(id)steps
{
  stepsCopy = steps;
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

- (id)createKVCacheEntry:(_NSRange)entry error:(id *)error
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

    if (error)
    {
      v17 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create KV cache entry, model does not support modular attention"];
      v23[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *error = [v17 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:0 userInfo:v19];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)setKVCacheEntryWithTokens:(id)tokens tokens:(id)a4 tokenMasks:(id)masks startIndex:(int64_t)index error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v12 = a4;
  masksCopy = masks;
  ptr = self->ajax_e5_model.__ptr_;
  {
    operator new();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [(E5RunnerObjC *)log setKVCacheEntryWithTokens:v16 tokens:v17 tokenMasks:v18 startIndex:v19 error:v20, v21, v22];
  }

  if (error)
  {
    v23 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set KV cache entry, model does not support modular attention"];
    v30[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *error = [v23 errorWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:0 userInfo:v25];
  }

  return 0;
}

+ (BOOL)compileModelAtPath:(id)path modelType:(int64_t)type error:(id *)error
{
  v5 = [self compiledModelAtPath:path modelType:type bundleCachePath:0 error:error];
  v6 = v5 != 0;

  return v6;
}

+ (id)compiledModelAtPath:(id)path modelType:(int64_t)type bundleCachePath:(id)cachePath error:(id *)error
{
  pathCopy = path;
  cachePathCopy = cachePath;
  v11 = [TGIMutableE5ModelConfigurationObjC alloc];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = [(TGIE5ModelConfigurationObjC *)v11 initWithModelType:type modelBundlePath:pathCopy e5Functions:v12 adapterConfigurations:v13];

  [(TGIE5ModelConfigurationObjC *)v14 setUseModelCatalogE5CompilerCache:cachePathCopy == 0];
  v15 = [E5RunnerObjC compiledModelWithConfiguration:v14 bundleCachePath:cachePathCopy error:error];

  return v15;
}

+ (BOOL)compileModelWithConfiguration:(id)configuration error:(id *)error
{
  v4 = [self compiledModelWithConfiguration:configuration bundleCachePath:0 error:error];
  v5 = v4 != 0;

  return v5;
}

+ (id)compiledModelWithConfiguration:(id)configuration bundleCachePath:(id)path error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  pathCopy = path;
  v8 = +[E5RunnerObjC log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = configurationCopy;
    _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_DEFAULT, "Compiling model with configuration: %@", &buf, 0xCu);
  }

  if (pathCopy)
  {
    modelBundlePath = [configurationCopy modelBundlePath];
    v10 = modelBundlePath;
    uTF8String = [modelBundlePath UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, &uTF8String);
    v11 = pathCopy;
    std::string::basic_string[abi:ne200100]<0>(&buf, [pathCopy fileSystemRepresentation]);
    v26 = 1;
    cgm::token_generation_inference::ajax::utils::makeProgramLibrary(&__p, &buf, &uTF8String2);
    v12 = uTF8String2;
    uTF8String2 = 0;
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
    modelBundlePath2 = [configurationCopy modelBundlePath];
    v14 = modelBundlePath2;
    uTF8String2 = [modelBundlePath2 UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, &uTF8String2);
    cgm::token_generation_inference::ajax::utils::makeProgramLibrary(&buf, [configurationCopy useModelCatalogE5CompilerCache], &__p);
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

+ (BOOL)doesModelRequireCompilationAtPath:(id)path modelType:(int64_t)type
{
  pathCopy = path;
  v6 = [TGIMutableE5ModelConfigurationObjC alloc];
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(TGIE5ModelConfigurationObjC *)v6 initWithModelType:type modelBundlePath:pathCopy e5Functions:v7 adapterConfigurations:v8];

  [(TGIE5ModelConfigurationObjC *)v9 setUseModelCatalogE5CompilerCache:1];
  LOBYTE(v7) = [E5RunnerObjC doesModelRequireCompilationWithConfiguration:v9];

  return v7;
}

+ (BOOL)doesModelRequireCompilationWithConfiguration:(id)configuration bundleCachePath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  pathCopy = path;
  modelBundlePath = [configurationCopy modelBundlePath];
  v8 = +[E5RunnerObjC log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = configurationCopy;
    _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_DEFAULT, "Checking if model with configuration: %@ requires compilation", &buf, 0xCu);
  }

  modelBundlePath2 = [configurationCopy modelBundlePath];
  pathExtension = [modelBundlePath2 pathExtension];
  v11 = [pathExtension isEqualToString:@"bundle"];

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

  if (pathCopy)
  {
    v14 = modelBundlePath;
    uTF8String = [modelBundlePath UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v22, &uTF8String);
    v15 = v23;
    v16 = pathCopy;
    std::string::basic_string[abi:ne200100]<0>(&buf, [pathCopy fileSystemRepresentation]);
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
    v18 = modelBundlePath;
    v22.__r_.__value_.__r.__words[0] = [modelBundlePath UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, &v22);
    v13 = cgm::token_generation_inference::ajax::utils::modelRequiresCompilation(&buf, v23, [configurationCopy useModelCatalogE5CompilerCache]);
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

- (void)enableTelemetryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  ptr = self->ajax_e5_model.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__str, [identifierCopy UTF8String]);
  std::string::operator=((ptr + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)setEncodedImages:(id)images
{
  imagesCopy = images;
  v5 = *(self->ajax_e5_model.__ptr_ + 1);
  if (v5)
  {
    ImageEmbeddingsProvider::setEncodedImages(v5, imagesCopy);
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

- (id)getEmbeddingsWithTokenID:(int)d
{
  v4 = *(self->ajax_e5_model.__ptr_ + 1);
  if (v4)
  {
    EmbeddingSizeInBytes = ImageEmbeddingsProvider::getEmbeddingSizeInBytes(v4);
    Embeddings = ImageEmbeddingsProvider::getEmbeddings(*(self->ajax_e5_model.__ptr_ + 1), d);
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
    return self + 8;
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
  (*(**(self + 8) + 16))();
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