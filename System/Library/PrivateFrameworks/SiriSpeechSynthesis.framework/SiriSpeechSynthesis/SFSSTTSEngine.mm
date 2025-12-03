@interface SFSSTTSEngine
- (AudioStreamBasicDescription)asbd;
- (AudioStreamBasicDescription)constructPcmAsbdWithSampleRate:(SEL)rate;
- (SFSSTTSEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath;
- (id)loadResourceAtPath:(id)path mimeType:(id)type;
- (id)synthesizeText:(id)text loggable:(BOOL)loggable synthesisBegin:(id)begin synthesisChunk:(id)chunk synthesisEnd:(id)end;
- (void)dealloc;
- (void)preheat;
- (void)stopSynthesis;
@end

@implementation SFSSTTSEngine

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mFormatID;
  *&retstr->mSampleRate = *&self->mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerFrame;
  return self;
}

- (void)preheat
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = mach_absolute_time();
  TTSSynthesizer::preheat(self->_synthesizer.__ptr_);
  v4 = mach_absolute_time();
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [SFSpeechSynthesisUtils absoluteTimeToSecond:v4 - v3];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Engine preheating latency: %.3f", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopSynthesis
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Stop synthesis.", buf, 2u);
  }

  TTSSynthesizer::stop_synthesis(self->_synthesizer.__ptr_);
  v4 = SFSSGetLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_269079000, v4, OS_LOG_TYPE_INFO, "Synthesis stopped.", v5, 2u);
  }
}

- (id)synthesizeText:(id)text loggable:(BOOL)loggable synthesisBegin:(id)begin synthesisChunk:(id)chunk synthesisEnd:(id)end
{
  v39 = *MEMORY[0x277D85DE8];
  textCopy = text;
  beginCopy = begin;
  chunkCopy = chunk;
  endCopy = end;
  v15 = [[SFSSTTSEngineCallbackResult alloc] initWithBeginCallback:beginCopy chunkCallback:chunkCopy endCallback:endCopy];
  callbackResult = self->_callbackResult;
  self->_callbackResult = v15;

  [(SFSSTTSEngine *)self asbd];
  v17 = self->_callbackResult;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  [(SFSSTTSEngineCallbackResult *)v17 setAsbd:&v36];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __84__SFSSTTSEngine_synthesizeText_loggable_synthesisBegin_synthesisChunk_synthesisEnd___block_invoke;
  v28[3] = &unk_279C4C440;
  v28[4] = self;
  *(&v37 + 1) = 0;
  *&v36 = &unk_2879AE700;
  *(&v36 + 1) = MEMORY[0x26D631550](v28);
  *(&v37 + 1) = &v36;
  ptr = self->_synthesizer.__ptr_;
  v19 = textCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [textCopy UTF8String]);
  [(SFSSTTSEngineCallbackResult *)self->_callbackResult pcmDataBuffer];
  [(SFSSTTSEngineCallbackResult *)self->_callbackResult marker];
  v20 = *(&v37 + 1);
  if (!*(&v37 + 1))
  {
    goto LABEL_4;
  }

  if (*(&v37 + 1) != &v36)
  {
    v20 = (*(**(&v37 + 1) + 16))(*(&v37 + 1));
LABEL_4:
    v35 = v20;
    goto LABEL_6;
  }

  v35 = v34;
  (*(**(&v37 + 1) + 24))(*(&v37 + 1), v34);
LABEL_6:
  v21 = TTSSynthesizer::synthesize_text_with_markers_async();
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v34);
  if (v27 < 0)
  {
    operator delete(__p);
    if (!v21)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v21)
  {
LABEL_10:
    v22 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v33 = @"TTSSynthesizer::synthesize_text";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [v22 errorWithDomain:@"SFSpeechSynthesisDeviceErrorDomain" code:v21 userInfo:v23];
  }

LABEL_11:
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](&v36);

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __84__SFSSTTSEngine_synthesizeText_loggable_synthesisBegin_synthesisChunk_synthesisEnd___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) callbackResult];
  v4 = [v3 synthesisCallback:a2];

  return v4;
}

- (id)loadResourceAtPath:(id)path mimeType:(id)type
{
  v20[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  typeCopy = type;
  ptr = self->_synthesizer.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&v17, [pathCopy UTF8String]);
  v9 = typeCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [typeCopy UTF8String]);
  resource = TTSSynthesizer::load_resource();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
    if (!resource)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (resource)
  {
LABEL_7:
    v11 = MEMORY[0x277CCA9B8];
    v19[0] = @"path";
    v19[1] = @"mimeType";
    v20[0] = pathCopy;
    v20[1] = typeCopy;
    v19[2] = *MEMORY[0x277CCA470];
    v20[2] = @"TTSSynthesizer::load_resource";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    resource = [v11 errorWithDomain:@"SFSpeechSynthesisDeviceErrorDomain" code:resource userInfo:v12];
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];

  return resource;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFSSTTSEngine;
  [(SFSSTTSEngine *)&v2 dealloc];
}

- (AudioStreamBasicDescription)constructPcmAsbdWithSampleRate:(SEL)rate
{
  retstr->mSampleRate = a4;
  *&retstr->mFormatID = xmmword_26914CD80;
  *&retstr->mBytesPerFrame = xmmword_26914CD90;
  return self;
}

- (SFSSTTSEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v15.receiver = self;
  v15.super_class = SFSSTTSEngine;
  v9 = [(SFSSTTSEngine *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voicePath, path);
    if (v10->_voicePath)
    {
      operator new();
    }

    v11 = SFSSGetLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = pathCopy;
      _os_log_error_impl(&dword_269079000, v11, OS_LOG_TYPE_ERROR, "Voice asset path is invalid, path=%@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end