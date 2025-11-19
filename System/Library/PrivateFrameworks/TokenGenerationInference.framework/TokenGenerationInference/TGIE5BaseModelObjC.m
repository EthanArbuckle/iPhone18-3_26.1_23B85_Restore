@interface TGIE5BaseModelObjC
- (BOOL)load:(id *)a3;
- (NSString)assetIdentifier;
- (TGIE5BaseModelObjC)initWithModelConfiguration:(id)a3;
- (id).cxx_construct;
- (shared_ptr<cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase>)baseModel;
- (unordered_map<std::string,)sharedConstants;
- (void)moveToDynamicState;
- (void)moveToFullyLoadedState;
@end

@implementation TGIE5BaseModelObjC

- (TGIE5BaseModelObjC)initWithModelConfiguration:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TGIE5BaseModelObjC;
  v5 = [(TGIE5BaseModelObjC *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [v4 modelBundlePath];
    v8 = [v6 URLWithString:v7];
    modelURL = v5->_modelURL;
    v5->_modelURL = v8;

    v10 = os_log_create("com.apple.tokengenerationinference", "E5LanguageModel");
    log = v5->_log;
    v5->_log = v10;

    v5->_useEnergyEfficientMode = [v4 useEnergyEfficientMode];
    v12 = [TGIE5ANESessionObjC alloc];
    v13 = v5->_modelURL;
    v14 = [v4 useEnergyEfficientMode];
    v15 = [v4 assetIdentifier];
    v16 = [(TGIE5ANESessionObjC *)v12 initWithResourceURL:v13 useEnergyEfficientMode:v14 assetIdentifier:v15];
    [(TGIE5BaseModelObjC *)v5 setAneSession:v16];
  }

  return v5;
}

- (BOOL)load:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = self->_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(TGIE5BaseModelObjC *)self modelURL];
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_220940000, v4, OS_LOG_TYPE_INFO, "Loading base model with model : %@", &buf, 0xCu);
  }

  [(TGIE5BaseModelObjC *)self modelURL];
  v6 = [objc_claimAutoreleasedReturnValue() path];
  v7 = v6;
  v10 = [v6 UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, &v10);
  cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::create(&buf, v8);
}

- (NSString)assetIdentifier
{
  v2 = [(TGIE5BaseModelObjC *)self aneSession];
  v3 = [v2 assetIdentifier];

  return v3;
}

- (unordered_map<std::string,)sharedConstants
{
  [(TGIE5BaseModelObjC *)self baseModel];
  cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase::getSharedConstants(v5, retstr);
  result = v6;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return result;
}

- (void)moveToDynamicState
{
  v2 = [(TGIE5BaseModelObjC *)self aneSession];
  [v2 stop];
}

- (void)moveToFullyLoadedState
{
  v2 = [(TGIE5BaseModelObjC *)self aneSession];
  [v2 resume];
}

- (shared_ptr<cgm::token_generation_inference::espresso_inference::AJAXE5MLModelBase>)baseModel
{
  objc_copyCppObjectAtomic(v2, &self->_baseModel, __copy_helper_atomic_property__0);
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

- (void)load:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 16);
  v4 = a2;
  v5 = 136315138;
  v6 = v3(a1);
  _os_log_error_impl(&dword_220940000, v4, OS_LOG_TYPE_ERROR, "Failed to load model: %s.", &v5, 0xCu);
}

@end