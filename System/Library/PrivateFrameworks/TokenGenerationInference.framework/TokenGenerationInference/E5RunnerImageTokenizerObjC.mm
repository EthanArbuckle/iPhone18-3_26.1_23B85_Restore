@interface E5RunnerImageTokenizerObjC
+ (id)log;
- (E5RunnerImageTokenizerObjC)initWithModelConfiguration:(id)configuration error:(id *)error;
- (void)moveToDynamicState;
- (void)moveToFullyLoadedState;
- (void)tokenizeImageDataWithCallback:(id)callback outputBlock:(id)block;
@end

@implementation E5RunnerImageTokenizerObjC

+ (id)log
{
  if (+[E5RunnerImageTokenizerObjC log]::onceToken != -1)
  {
    +[E5RunnerImageTokenizerObjC log];
  }

  v3 = +[E5RunnerImageTokenizerObjC log]::log;

  return v3;
}

uint64_t __33__E5RunnerImageTokenizerObjC_log__block_invoke()
{
  +[E5RunnerImageTokenizerObjC log]::log = os_log_create("com.apple.tokengenerationinference", "E5RunnerImageTokenizerObjC");

  return MEMORY[0x2821F96F8]();
}

- (E5RunnerImageTokenizerObjC)initWithModelConfiguration:(id)configuration error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = E5RunnerImageTokenizerObjC;
  if ([(E5RunnerImageTokenizerObjC *)&v12 init])
  {
    v6 = +[E5RunnerImageTokenizerObjC log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      modelBundlePath = [configurationCopy modelBundlePath];
      *buf = 138412290;
      *&buf[4] = modelBundlePath;
      _os_log_impl(&dword_220940000, v6, OS_LOG_TYPE_DEFAULT, "Initializing E5RunnerImageTokenizerObjC with model url: %@", buf, 0xCu);
    }

    modelBundlePath2 = [configurationCopy modelBundlePath];
    v9 = modelBundlePath2;
    [modelBundlePath2 UTF8String];
    std::make_unique[abi:ne200100]<cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer,char const*,char const(&)[5],0>();
  }

  v10 = 0;

  return v10;
}

- (void)tokenizeImageDataWithCallback:(id)callback outputBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  blockCopy = block;
  ptr = self->_imageTokenizer.__ptr_;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__E5RunnerImageTokenizerObjC_tokenizeImageDataWithCallback_outputBlock___block_invoke;
  v13[3] = &unk_27844FBC8;
  v9 = callbackCopy;
  v14 = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__E5RunnerImageTokenizerObjC_tokenizeImageDataWithCallback_outputBlock___block_invoke_2;
  v11[3] = &unk_27844FBF0;
  v10 = blockCopy;
  v12 = v10;
  cgm::token_generation_inference::ajax::ANEAJAXE5ImageTokenizer::encodeImage(ptr, v13, v11);
}

uint64_t __72__E5RunnerImageTokenizerObjC_tokenizeImageDataWithCallback_outputBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *a4;
  v8 = a4[1];
  if (*a4 != v8)
  {
    do
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*v7];
      [v6 addObject:v9];

      ++v7;
    }

    while (v7 != v8);
  }

  v10 = (*(*(a1 + 32) + 16))();

  return v10;
}

- (void)moveToDynamicState
{
  aneSession = self->_aneSession;
  if (aneSession)
  {
    [(TGIE5ANESessionObjC *)aneSession stop];
  }
}

- (void)moveToFullyLoadedState
{
  aneSession = self->_aneSession;
  if (aneSession)
  {
    [(TGIE5ANESessionObjC *)aneSession resume];
  }
}

@end