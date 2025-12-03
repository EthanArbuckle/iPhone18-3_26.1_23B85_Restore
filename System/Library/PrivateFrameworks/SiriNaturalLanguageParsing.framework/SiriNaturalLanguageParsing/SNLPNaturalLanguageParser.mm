@interface SNLPNaturalLanguageParser
+ (id)parserFromAssetDirectory:(id)directory error:(id *)error;
+ (id)parserFromAssetDirectory:(id)directory metadata:(id)metadata error:(id *)error;
- (id)_initWithCppOrchestrator:()unique_ptr<nlv4_inference_orchestrator:(std::default_delete<nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator>>)nlv4_inference_orchestrator :orchestration::NLv4InferenceOrchestrator;
- (id)inferenceResponseForRequest:(id)request error:(id *)error;
@end

@implementation SNLPNaturalLanguageParser

- (id)inferenceResponseForRequest:(id)request error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = SNLPOSLoggerForCategory(7);
  v7 = os_signpost_id_generate(v6);

  v8 = SNLPOSLoggerForCategory(7);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SNLPNaturalLanguageParser inferenceResponseForRequest", "", buf, 2u);
  }

  v10 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN SNLPNaturalLanguageParser inferenceResponseForRequest", buf, 2u);
  }

  [MEMORY[0x277D5DF00] convertNLv4ParserRequestToCpp:requestCopy];
  ptr = self->_cppOrchestrator.__ptr_;
  *buf = 0;
  nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator::pbhandle(ptr);
}

- (id)_initWithCppOrchestrator:()unique_ptr<nlv4_inference_orchestrator:(std::default_delete<nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator>>)nlv4_inference_orchestrator :orchestration::NLv4InferenceOrchestrator
{
  v8.receiver = self;
  v8.super_class = SNLPNaturalLanguageParser;
  v4 = [(SNLPNaturalLanguageParser *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = *nlv4_inference_orchestrator.__ptr_;
    *nlv4_inference_orchestrator.__ptr_ = 0;
    std::unique_ptr<nlv4_inference_orchestrator::orchestration::NLv4InferenceOrchestrator>::reset[abi:ne200100](v4 + 1, v6);
  }

  return v5;
}

+ (id)parserFromAssetDirectory:(id)directory metadata:(id)metadata error:(id *)error
{
  v25[2] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  metadataCopy = metadata;
  v9 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Calling parser setup", &buf, 2u);
  }

  if (directoryCopy)
  {
    v10 = directoryCopy;
    v21[0] = [directoryCopy fileSystemRepresentation];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, v21);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v11 = directoryCopy;
    buf.__r_.__value_.__r.__words[0] = [directoryCopy fileSystemRepresentation];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v22, &buf);
    if (metadataCopy)
    {
      v12 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "Attempt to convert metadata", &buf, 2u);
      }

      snlp::common::espresso_inference::e5ml::selflogging::convertMetadata(metadataCopy, v21);
      v13 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "Converted metadata", &buf, 2u);
      }

      operator new();
    }

    operator new();
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"NLv4 was provided with a nil asset path.  As a result, the NLv4 model could not be set up.  Please provide a non-nil NLv4 model asset path instead."];
  v15 = v14;
  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA470];
    v24[0] = *MEMORY[0x277CCA450];
    v24[1] = v17;
    v25[0] = v14;
    v25[1] = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    *error = [v16 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return 0;
}

+ (id)parserFromAssetDirectory:(id)directory error:(id *)error
{
  v4 = [self parserFromAssetDirectory:directory metadata:0 error:error];

  return v4;
}

@end