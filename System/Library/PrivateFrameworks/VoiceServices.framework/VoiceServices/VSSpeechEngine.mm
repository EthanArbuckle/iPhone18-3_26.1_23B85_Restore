@interface VSSpeechEngine
+ (BOOL)hasPhaticResponses:(id)responses;
+ (BOOL)isUserCancelError:(id)error;
+ (id)mimeForFileExtension:(id)extension;
- (AudioStreamBasicDescription)asbd;
- (BOOL)initializeWithResourcePath:(id)path;
- (VSSpeechEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath;
- (id)loadResource:(id)resource error:(id *)error;
- (id)loadResourceAtPath:(id)path mimeType:(id)type error:(id *)error;
- (id)synthesizeText:(id)text loggable:(BOOL)loggable callback:(id)callback;
- (id)synthesizeText:loggable:callback:;
- (uint64_t)synthesizeText:loggable:callback:;
- (void)dealloc;
- (void)preheat;
- (void)setPitch:(float)pitch;
- (void)setRate:(float)rate;
- (void)setVolume:(float)volume;
- (void)stopAtMarker:(int64_t)marker;
- (void)synthesizeText:loggable:callback:;
- (void)unloadResource:(id)resource;
@end

@implementation VSSpeechEngine

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mFormatID;
  *&retstr->mSampleRate = *&self[1].mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBytesPerFrame;
  return self;
}

- (void)preheat
{
  v10 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_synthesisLock lock];
  v3 = mach_absolute_time();
  TTSSynthesizer::preheat(self->_synthesizer);
  [(NSLock *)self->_synthesisLock unlock];
  v4 = mach_absolute_time();
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v4 - v3;
    if (VSAbsoluteTimeToSecond_onceToken != -1)
    {
      dispatch_once(&VSAbsoluteTimeToSecond_onceToken, &__block_literal_global_7);
    }

    v8 = 134217984;
    v9 = *&VSAbsoluteTimeToSecond_clockFactor * v6;
    _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_INFO, "Engine preheating latency: %.3f", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopAtMarker:(int64_t)marker
{
  if (marker == 1)
  {
    currentCallbackResult = [(VSSpeechEngine *)self currentCallbackResult];
    [currentCallbackResult setStopMark:1];
  }

  else if (!marker)
  {
    TTSSynthesizer::stop_synthesis(self->_synthesizer);
  }

  currentCallbackResult2 = [(VSSpeechEngine *)self currentCallbackResult];
  [currentCallbackResult2 setStopMark:marker];
}

- (id)synthesizeText:(id)text loggable:(BOOL)loggable callback:(id)callback
{
  v49 = *MEMORY[0x277D85DE8];
  textCopy = text;
  callbackCopy = callback;
  [(NSLock *)self->_synthesisLock lock];
  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_debug_impl(&dword_272850000, v9, OS_LOG_TYPE_DEBUG, "VSSpeechEngine %p started synthesis.", buf, 0xCu);
  }

  v10 = [[VSSpeechSynthesisCallbackResult alloc] initWithCallback:callbackCopy];
  [(VSSpeechEngine *)self asbd];
  *buf = v33;
  v47 = v34;
  v48 = v35;
  [(VSSpeechSynthesisCallbackResult *)v10 setAsbd:buf];
  [(VSSpeechSynthesisCallbackResult *)v10 setText:textCopy];
  objc_storeStrong(&self->_currentCallbackResult, v10);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__VSSpeechEngine_synthesizeText_loggable_callback___block_invoke;
  v32[3] = &unk_279E4EFF0;
  v32[4] = self;
  *(&v47 + 1) = 0;
  *buf = &unk_2881D6040;
  *&buf[8] = MEMORY[0x2743CEF70](v32);
  *(&v47 + 1) = buf;
  TTSSynthesizer::set_censor_plaintext(self->_synthesizer);
  powerProfile = self->_powerProfile;
  synthesizer = self->_synthesizer;
  TTSSynthesizer::set_neural_cost();
  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v13 = v10;
  v45[0] = &unk_2881D64E0;
  v45[1] = v13;
  v45[3] = v45;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v45);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v14 = v13;
  v44[0] = &unk_2881D6560;
  v44[1] = v14;
  v44[3] = v44;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v44);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v15 = v14;
  v43[0] = &unk_2881D65E0;
  v43[1] = v15;
  v43[3] = v43;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v43);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  v16 = v15;
  v42[0] = &unk_2881D6660;
  v42[1] = v16;
  v42[3] = v42;
  Observable::on_event();
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v42);
  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  v17 = self->_synthesizer;
  v18 = textCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [textCopy UTF8String]);
  [(VSSpeechSynthesisCallbackResult *)v16 sampleBuffer];
  [(VSSpeechSynthesisCallbackResult *)v16 markerBuffer];
  v19 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    goto LABEL_14;
  }

  if (*(&v47 + 1) != buf)
  {
    v19 = (*(**(&v47 + 1) + 16))();
LABEL_14:
    v39 = v19;
    goto LABEL_16;
  }

  v39 = v38;
  (*(**(&v47 + 1) + 24))();
LABEL_16:
  v20 = TTSSynthesizer::synthesize_text_with_markers_async();
  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](v38);
  if (v41 < 0)
  {
    operator delete(__p);
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  TTSSynthesizer::get_event_bus(&__p, self->_synthesizer);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Observable::remove_observer();
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(&__p + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
  }

  v21 = VSGetLogDefault();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p) = 134217984;
    *(&__p + 4) = self;
    _os_log_debug_impl(&dword_272850000, v21, OS_LOG_TYPE_DEBUG, "VSSpeechEngine %p finished synthesis.", &__p, 0xCu);
  }

  [(NSLock *)self->_synthesisLock unlock];
  if (v20)
  {
    v22 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA470];
    v37 = @"TTSSynthesizer::synthesize_text_with_markers_async";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v24 = [v22 errorWithDomain:@"VSVocalizerEngine" code:v20 userInfo:v23];
  }

  else
  {
    v24 = 0;
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__function::__value_func<int ()(TTSSynthesizer::CallbackMessage)>::~__value_func[abi:ne200100](buf);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __51__VSSpeechEngine_synthesizeText_loggable_callback___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) currentCallbackResult];
  v4 = [v3 synthesisCallback:a2];

  return v4;
}

- (uint64_t)synthesizeText:loggable:callback:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z51-[VSSpeechEngine synthesizeText:loggable:callback:]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)synthesizeText:loggable:callback:
{

  JUMPOUT(0x2743CE900);
}

- (id)synthesizeText:loggable:callback:
{
  *a2 = &unk_2881D64E0;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (void)unloadResource:(id)resource
{
  v9 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = resourceCopy;
    [(NSLock *)self->_synthesisLock lock];
    synthesizer = self->_synthesizer;
    if (v5)
    {
      [v5 resource];
    }

    else
    {
      v8 = 0uLL;
    }

    TTSSynthesizer::unload_resource();
    if (*(&v8 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
    }

    [(NSLock *)self->_synthesisLock unlock];
  }

  else
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v8) = 138412290;
      *(&v8 + 4) = resourceCopy;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "Unknown voice resource handle to unload: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)loadResource:(id)resource error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  path = [resourceCopy path];
  if (path)
  {
    pathExtension = [resourceCopy pathExtension];
    v9 = [VSSpeechEngine mimeForFileExtension:pathExtension];

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = resourceCopy;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_272850000, v10, OS_LOG_TYPE_INFO, "Loading resource: %@, mime-type: %@", buf, 0x16u);
    }

    if (v9)
    {
      v11 = [(VSSpeechEngine *)self loadResourceAtPath:path mimeType:v9 error:error];
    }

    else
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = resourceCopy;
        _os_log_error_impl(&dword_272850000, v15, OS_LOG_TYPE_ERROR, "Unable to find mime-type for '%@'", buf, 0xCu);
      }

      if (error)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA470];
        v21[0] = @"url";
        v21[1] = v17;
        v22[0] = resourceCopy;
        v22[1] = @"unknown mime-type";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
        *error = [v16 errorWithDomain:@"VSVocalizerEngine" code:1 userInfo:v18];
      }

      v9 = 0;
      v11 = 0;
    }

    goto LABEL_15;
  }

  v12 = VSGetLogDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = resourceCopy;
    _os_log_error_impl(&dword_272850000, v12, OS_LOG_TYPE_ERROR, "Url doesn't conform to RFC 1808 '%@'", buf, 0xCu);
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA470];
    v27[0] = @"url";
    v27[1] = v14;
    v28[0] = resourceCopy;
    v28[1] = @"unknown path";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v13 errorWithDomain:@"VSVocalizerEngine" code:1 userInfo:v9];
    *error = v11 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)loadResourceAtPath:(id)path mimeType:(id)type error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  typeCopy = type;
  [(NSLock *)self->_synthesisLock lock];
  synthesizer = self->_synthesizer;
  std::string::basic_string[abi:ne200100]<0>(buf, [pathCopy UTF8String]);
  v11 = typeCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [typeCopy UTF8String]);
  TTSSynthesizer::load_voice_resource();
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(*buf);
  }

  [(NSLock *)self->_synthesisLock unlock];
  if (v23)
  {
    v12 = objc_alloc_init(VSSpeechEngineVoiceResource);
    v13 = v12;
    v19 = v23;
    v20 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(VSSpeechEngineVoiceResource *)v12 setResource:&v19];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = pathCopy;
      _os_log_error_impl(&dword_272850000, v14, OS_LOG_TYPE_ERROR, "Unable to load resource '%@'", buf, 0xCu);
    }

    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v25[0] = @"path";
      v25[1] = @"mimeType";
      v26[0] = pathCopy;
      v26[1] = typeCopy;
      v25[2] = *MEMORY[0x277CCA470];
      v26[2] = @"TTSSynthesizer::load_voice_resource";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
      *error = [v15 errorWithDomain:@"VSVocalizerEngine" code:1 userInfo:v16];
    }

    v13 = 0;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setVolume:(float)volume
{
  v12 = *MEMORY[0x277D85DE8];
  if (volume <= 0.01)
  {
    volumeCopy = 0.01;
  }

  else
  {
    volumeCopy = volume;
  }

  if (self->_volume != volumeCopy)
  {
    synthesizer = self->_synthesizer;
    v6 = TTSSynthesizer::set_global_property();
    if (v6)
    {
      v7 = v6;
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        v11 = v7;
        _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "Error setVolume 0x%zx", &v10, 0xCu);
      }
    }

    else
    {
      self->_volume = volumeCopy;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setRate:(float)rate
{
  v13 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  if (rateCopy < 0.5)
  {
    rateCopy = 0.5;
  }

  if (rateCopy >= 4.0)
  {
    rateCopy = 4.0;
  }

  v4 = rateCopy;
  if (self->_rate != v4)
  {
    synthesizer = self->_synthesizer;
    v7 = TTSSynthesizer::set_global_property();
    if (v7)
    {
      v8 = v7;
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = v8;
        _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "Error setRate 0x%zx", &v11, 0xCu);
      }
    }

    else
    {
      self->_rate = v4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setPitch:(float)pitch
{
  v13 = *MEMORY[0x277D85DE8];
  pitchCopy = pitch;
  if (pitchCopy < 0.5)
  {
    pitchCopy = 0.5;
  }

  if (pitchCopy >= 2.0)
  {
    pitchCopy = 2.0;
  }

  v4 = pitchCopy;
  if (self->_pitch != v4)
  {
    synthesizer = self->_synthesizer;
    v7 = TTSSynthesizer::set_global_property();
    if (v7)
    {
      v8 = v7;
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = v8;
        _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "Error setPitch 0x%zx", &v11, 0xCu);
      }
    }

    else
    {
      self->_pitch = v4;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  synthesizer = self->_synthesizer;
  if (synthesizer)
  {
    TTSSynthesizer::~TTSSynthesizer(synthesizer);
    MEMORY[0x2743CE900]();
  }

  self->_synthesizer = 0;
  v4.receiver = self;
  v4.super_class = VSSpeechEngine;
  [(VSSpeechEngine *)&v4 dealloc];
}

- (BOOL)initializeWithResourcePath:(id)path
{
  v12 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  voicePath = self->_voicePath;
  v6 = VSGetLogDefault();
  v7 = v6;
  if (voicePath)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = self->_voicePath;
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_INFO, "Initializing engine with voice path: %@", buf, 0xCu);
    }

    operator new();
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "Failed to initialize synthesizer due to missing voice path.\n", buf, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (VSSpeechEngine)initWithVoicePath:(id)path resourcePath:(id)resourcePath
{
  v45 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v39.receiver = self;
  v39.super_class = VSSpeechEngine;
  v7 = [(VSSpeechEngine *)&v39 init];
  v8 = v7;
  v34 = v7;
  if (!v7)
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v7->_voicePath, path);
  v34->_volume = 0.8;
  __asm { FMOV            V0.2S, #1.0 }

  *&v34->_rate = _D0;
  v14 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  synthesisLock = v34->_synthesisLock;
  v34->_synthesisLock = v14;

  v16 = [(VSSpeechEngine *)v34 initializeWithResourcePath:resourcePathCopy];
  v8 = v34;
  if (!v16)
  {
    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = pathCopy;
      v43 = 2112;
      v44 = resourcePathCopy;
      _os_log_impl(&dword_272850000, v18, OS_LOG_TYPE_DEFAULT, "voice path '%@', resource path '%@'\n", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v20 = defaultManager;
    v31 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v31 count];
      *buf = 67109120;
      LODWORD(v42) = v22;
      _os_log_impl(&dword_272850000, v21, OS_LOG_TYPE_DEFAULT, "%d files under voice path:", buf, 8u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v31;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v24)
    {
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = VSGetLogDefault();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v27;
            _os_log_impl(&dword_272850000, v28, OS_LOG_TYPE_DEFAULT, "- %@", buf, 0xCu);
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }

    else
    {
    }

    v17 = 0;
  }

  else
  {
LABEL_3:
    v17 = v8;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)mimeForFileExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy isEqualToString:@"dcb"])
  {
    v4 = @"application/edct-bin-dictionary";
  }

  else if ([extensionCopy isEqualToString:@"txt"])
  {
    v4 = @"application/x-vocalizer-rettt+text";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)hasPhaticResponses:(id)responses
{
  responsesCopy = responses;
  std::string::basic_string[abi:ne200100]<0>(&__p, [responsesCopy UTF8String]);
  has_phatic_responses = TTSSynthesizer::has_phatic_responses();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return has_phatic_responses;
}

+ (BOOL)isUserCancelError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && [errorCopy code] == 2147485703)
  {
    domain = [v4 domain];
    v6 = [domain isEqualToString:@"VSVocalizerEngine"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end