@interface SLSentencePieceModule
- (SLSentencePieceModule)initWithConfigFile:(id)file;
- (SLSentencePieceModule)initWithConfigFile:(id)file isModelMmap:(BOOL)mmap;
- (id).cxx_construct;
- (id)encodeUtterance:(id)utterance;
- (int64_t)setSPMEncoderOptions:(id)options;
- (void)dealloc;
@end

@implementation SLSentencePieceModule

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (int64_t)setSPMEncoderOptions:(id)options
{
  optionsCopy = options;
  std::string::basic_string[abi:ne200100]<0>(&__p, [optionsCopy UTF8String]);
  (*(*self->_processor.__ptr_ + 96))(&v7);
  v5 = sentencepiece::util::Status::code(&v7);
  sentencepiece::util::Status::~Status(&v7);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  return v5;
}

- (id)encodeUtterance:(id)utterance
{
  utteranceCopy = utterance;
  std::string::basic_string[abi:ne200100]<0>(&__p, [utteranceCopy UTF8String]);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  (*(*self->_processor.__ptr_ + 144))(&v10);
  sentencepiece::util::Status::~Status(&v10);
  array = [MEMORY[0x277CBEB18] array];
  v6 = v11;
  v7 = v12;
  if (v11 != v12)
  {
    do
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:*v6];
      [array addObject:v8];

      ++v6;
    }

    while (v6 != v7);
    v6 = v11;
  }

  if (v6)
  {
    v12 = v6;
    operator delete(v6);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  return array;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_processor.__ptr_)
  {
    cntrl = self->_processor.__cntrl_;
    self->_processor.__ptr_ = 0;
    self->_processor.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  v4 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SLSentencePieceModule dealloc]";
    _os_log_impl(&dword_26754E000, v4, OS_LOG_TYPE_DEFAULT, "%s dealloc", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SLSentencePieceModule;
  [(SLSentencePieceModule *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (SLSentencePieceModule)initWithConfigFile:(id)file isModelMmap:(BOOL)mmap
{
  v16 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v11.receiver = self;
  v11.super_class = SLSentencePieceModule;
  if ([(SLSentencePieceModule *)&v11 init])
  {
    v6 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[SLSentencePieceModule initWithConfigFile:isModelMmap:]";
      v14 = 2112;
      v15 = fileCopy;
      _os_log_impl(&dword_26754E000, v6, OS_LOG_TYPE_DEFAULT, "%s path: %@", buf, 0x16u);
    }

    operator new();
  }

  v7 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SLSentencePieceModule initWithConfigFile:isModelMmap:]";
    _os_log_impl(&dword_26754E000, v7, OS_LOG_TYPE_DEFAULT, "%s SPM model created", buf, 0xCu);
  }

  v8 = 0;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (SLSentencePieceModule)initWithConfigFile:(id)file
{
  v13 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SLSentencePieceModule initWithConfigFile:]";
    v11 = 2112;
    v12 = fileCopy;
    _os_log_impl(&dword_26754E000, v5, OS_LOG_TYPE_DEFAULT, "%s path: %@", &v9, 0x16u);
  }

  v6 = [(SLSentencePieceModule *)self initWithConfigFile:fileCopy isModelMmap:0];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end