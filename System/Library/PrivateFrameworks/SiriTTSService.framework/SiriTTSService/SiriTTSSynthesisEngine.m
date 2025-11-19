@interface SiriTTSSynthesisEngine
+ (BOOL)hasPhaticResponsesWithVoicePath:(id)a3;
+ (BOOL)hasWordTimingSupportWithVoicePath:(id)a3;
+ (_NSRange)_gryphonVoiceCompatibility;
- (AudioStreamBasicDescription)asbd;
- (BOOL)_preheatWithError:(id *)a3;
- (BOOL)_unlockedLoadResourceWithPath:(id)a3 error:(id *)a4;
- (BOOL)_unlockedSynthesize:(id)a3 error:(id *)a4;
- (BOOL)loadResourceWithPath:(id)a3 error:(id *)a4;
- (BOOL)preheatWithError:(id *)a3;
- (BOOL)supportPhaticResponse;
- (BOOL)supportWordTiming;
- (BOOL)synthesize:(id)a3 error:(id *)a4;
- (SiriTTSSynthesisEngine)initWithVoicePath:(id)a3 resourcePath:(id)a4 error:(id *)a5;
- (id)_unlockedSynthesize:error:;
- (uint64_t)_unlockedSynthesize:error:;
- (void)_unlockedSynthesize:error:;
- (void)_unlockedUnloadResource:(id)a3;
- (void)dealloc;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
- (void)unloadResource:(id)a3;
@end

@implementation SiriTTSSynthesisEngine

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mFormatID;
  *&retstr->mSampleRate = *&self[1].mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBytesPerFrame;
  return self;
}

+ (_NSRange)_gryphonVoiceCompatibility
{
  engine_description = TTSSynthesizer::get_engine_description(a1);
  v2 = (HIDWORD(engine_description) - engine_description + 1);
  engine_description = engine_description;
  result.length = v2;
  result.location = engine_description;
  return result;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (BOOL)supportPhaticResponse
{
  supportPhaticResponseCachedValue = self->_supportPhaticResponseCachedValue;
  if (supportPhaticResponseCachedValue)
  {

    return [(NSNumber *)supportPhaticResponseCachedValue BOOLValue];
  }

  else
  {
    v5 = [SiriTTSSynthesisEngine hasPhaticResponsesWithVoicePath:self->_voicePath];
    v6 = v5;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v8 = self->_supportPhaticResponseCachedValue;
    self->_supportPhaticResponseCachedValue = v7;

    return v6;
  }
}

- (BOOL)supportWordTiming
{
  supportWordTimingCachedValue = self->_supportWordTimingCachedValue;
  if (supportWordTimingCachedValue)
  {

    return [(NSNumber *)supportWordTimingCachedValue BOOLValue];
  }

  else
  {
    v5 = [SiriTTSSynthesisEngine hasWordTimingSupportWithVoicePath:self->_voicePath];
    v6 = v5;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v8 = self->_supportWordTimingCachedValue;
    self->_supportWordTimingCachedValue = v7;

    return v6;
  }
}

- (BOOL)preheatWithError:(id *)a3
{
  [(NSLock *)self->_lock lock];
  LOBYTE(a3) = [(SiriTTSSynthesisEngine *)self _preheatWithError:a3];
  [(NSLock *)self->_lock unlock];
  return a3;
}

- (BOOL)_preheatWithError:(id *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  TTSSynthesizer::preheat(self->_synthesizer);
  result = 1;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)synthesize:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  LOBYTE(a4) = [(SiriTTSSynthesisEngine *)self _unlockedSynthesize:v6 error:a4];
  [(NSLock *)self->_lock unlock];

  return a4;
}

- (BOOL)_unlockedSynthesize:(id)a3 error:(id *)a4
{
  v117[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  synthesizer = self->_synthesizer;
  [v6 privacySensitive];
  TTSSynthesizer::set_censor_plaintext(synthesizer);
  v8 = self->_synthesizer;
  [v6 profile];
  TTSSynthesizer::set_neural_cost();
  v9 = self->_synthesizer;
  [v6 neuralSentencePitch];
  TTSSynthesizer::set_global_property();
  v10 = self->_synthesizer;
  [v6 neuralSentencePitchRange];
  TTSSynthesizer::set_global_property();
  v11 = self->_synthesizer;
  [v6 neuralSentenceDuration];
  TTSSynthesizer::set_global_property();
  v12 = self->_synthesizer;
  [v6 neuralSentenceEnergy];
  TTSSynthesizer::set_global_property();
  v13 = self->_synthesizer;
  [v6 neuralSentenceTilt];
  TTSSynthesizer::set_global_property();
  v14 = [v6 requestId];

  if (v14)
  {
    v15 = self->_synthesizer;
    v16 = [v6 requestId];
    std::string::basic_string[abi:ne200100]<0>(&__p, [v16 UTF8String]);
    TTSSynthesizer::set_global_property();
    if (SHIBYTE(v96) < 0)
    {
      operator delete(__p);
    }
  }

  v17 = self->_synthesizer;
  [v6 disableThermalFallback];
  TTSSynthesizer::set_global_property();
  v102 = 0;
  v103 = 0;
  v104 = 0;
  [v6 rate];
  if (v18 != 0.0)
  {
    [v6 rate];
    if (fabsf(v19 + -1.0) >= 0.01)
    {
      v20 = self->_synthesizer;
      [v6 rate];
      TTSSynthesizer::set_global_property();
    }
  }

  [v6 pitch];
  if (v21 != 0.0)
  {
    [v6 pitch];
    if (v22 != 1.0)
    {
      v23 = self->_synthesizer;
      [v6 pitch];
      TTSSynthesizer::set_global_property();
    }
  }

  [v6 volume];
  if (v24 != 0.0)
  {
    [v6 volume];
    if (v25 != 0.8)
    {
      v26 = self->_synthesizer;
      [v6 volume];
      TTSSynthesizer::set_global_property();
    }
  }

  LOBYTE(__p) = 0;
  v101 = 0;
  v27 = [v6 promptStyle];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = self->_synthesizer;
    std::string::basic_string[abi:ne200100]<0>(&v85, "");
    v30 = [v6 promptStyle];
    v31 = v30;
    std::string::basic_string[abi:ne200100]<0>(&v83, [v30 UTF8String]);
    TTSSynthesizer::set_dynamic_prompts();
    if (v101 == v94)
    {
      if (v101)
      {
        if (SHIBYTE(v96) < 0)
        {
          operator delete(__p);
        }

        __p = *v88;
        v96 = v89;
        HIBYTE(v89) = 0;
        LOBYTE(v88[0]) = 0;
        if (SHIBYTE(v98) < 0)
        {
          operator delete(v97);
        }

        v97 = *v90;
        v98 = v91;
        HIBYTE(v91) = 0;
        LOBYTE(v90[0]) = 0;
        std::vector<std::string>::__vdeallocate(&v99);
        v99 = v92;
        memset(&v92, 0, sizeof(v92));
        std::vector<std::string>::__vdeallocate(&v100);
        v100 = v93;
        memset(&v93, 0, sizeof(v93));
      }
    }

    else if (v101)
    {
      v105 = &v100;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
      v105 = &v99;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
      if (SHIBYTE(v98) < 0)
      {
        operator delete(v97);
      }

      if (SHIBYTE(v96) < 0)
      {
        operator delete(__p);
      }

      v101 = 0;
    }

    else
    {
      __p = *v88;
      v32 = v89;
      v88[0] = 0;
      v88[1] = 0;
      v33 = *v90;
      v89 = 0;
      v90[0] = 0;
      v97 = v33;
      v96 = v32;
      v98 = v91;
      v90[1] = 0;
      v91 = 0;
      v99 = v92;
      memset(&v92, 0, sizeof(v92));
      v100 = v93;
      memset(&v93, 0, sizeof(v93));
      v101 = 1;
    }

    if (v94 == 1)
    {
      v105 = &v93;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
      v105 = &v92;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v105);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90[0]);
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88[0]);
      }
    }

    if (v84 < 0)
    {
      operator delete(v83);
    }

    if (v87 < 0)
    {
      operator delete(v85);
    }
  }

  if (v101 == 1)
  {
    if (v96 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
    if (v98 >= 0)
    {
      v36 = &v97;
    }

    else
    {
      v36 = v97;
    }

    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v36];
    v38 = [v6 dynamicPromptHandler];
    (v38)[2](v38, v35, v37);
  }

  v39 = [v6 audioHandler];
  v40 = v39 == 0;

  if (!v40)
  {
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v41 = v6;
    v117[0] = &unk_1F28C4A40;
    v117[1] = v41;
    v117[3] = v117;
    TTSSynthesizerEventBus::on_audio();
    std::__function::__value_func<void ()(std::vector<float> const&)>::~__value_func[abi:ne200100](v117);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v42 = [v6 promptHandler];
  v43 = v42 == 0;

  if (!v43)
  {
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v44 = v6;
    v116[0] = &unk_1F28C4AC0;
    v116[1] = v44;
    v116[3] = v116;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v116);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v45 = [v6 wordTimingsHandler];
  v46 = v45 == 0;

  if (!v46)
  {
    mSampleRate = self->_asbd.mSampleRate;
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v48 = v6;
    v112 = &unk_1F28C4B40;
    *&mSampleRate = mSampleRate;
    v113 = LODWORD(mSampleRate);
    v114 = v48;
    v115 = &v112;
    TTSSynthesizerEventBus::on_marker();
    std::__function::__value_func<void ()(std::vector<TTSSynthesizer::Marker> const&)>::~__value_func[abi:ne200100](&v112);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v49 = [v6 neuralFallbackHandler];
  v50 = v49 == 0;

  if (!v50)
  {
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v51 = v6;
    v111[0] = &unk_1F28C4BC0;
    v111[1] = v51;
    v111[3] = v111;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v111);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v52 = [v6 useHydraFrontendHandler];
  v53 = v52 == 0;

  if (!v53)
  {
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v54 = v6;
    v110[0] = &unk_1F28C4C40;
    v110[1] = v54;
    v110[3] = v110;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v110);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v55 = [v6 synthesisIssueHandler];
  v56 = v55 == 0;

  if (!v56)
  {
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v57 = v6;
    v109[0] = &unk_1F28C4CC0;
    v109[1] = v57;
    v109[3] = v109;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v109);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v58 = [v6 wordAlignmentFailureHandler];
  v59 = v58 == 0;

  if (!v59)
  {
    TTSSynthesizer::get_event_bus(&v85, self->_synthesizer);
    v60 = v6;
    v108[0] = &unk_1F28C4D40;
    v108[1] = v60;
    v108[3] = v108;
    Observable::on_event();
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v108);
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    std::vector<std::shared_ptr<Observer>>::push_back[abi:ne200100](&v102, v88);
    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v61 = self->_synthesizer;
  v62 = [v6 text];
  v63 = v62;
  std::string::basic_string[abi:ne200100]<0>(v88, [v62 UTF8String]);
  v64 = TTSSynthesizer::synthesize_text();
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88[0]);
  }

  v65 = v102;
  for (i = v103; v65 != i; v65 += 2)
  {
    TTSSynthesizer::get_event_bus(v88, self->_synthesizer);
    v67 = v65[1];
    v81 = *v65;
    v82 = v67;
    if (v67)
    {
      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Observable::remove_observer();
    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82);
    }

    if (v88[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88[1]);
    }
  }

  v68 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v69 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v70 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v71 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v72 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v73 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v74 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  v75 = self->_synthesizer;
  TTSSynthesizer::set_global_property();
  if (a4 && v64)
  {
    v76 = MEMORY[0x1E696ABC0];
    v106 = *MEMORY[0x1E696A588];
    v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TTSSynthesizer::synthesize_text error: %@", 0];
    v107 = v77;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    *a4 = [v76 errorWithDomain:@"SiriTTSSynthesisEngine" code:v64 userInfo:v78];
  }

  if (v101 == 1)
  {
    v88[0] = &v100;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
    v88[0] = &v99;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
    if (SHIBYTE(v98) < 0)
    {
      operator delete(v97);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(__p);
    }
  }

  *&__p = &v102;
  std::vector<std::shared_ptr<Observer>>::__destroy_vector::operator()[abi:ne200100](&__p);

  v79 = *MEMORY[0x1E69E9840];
  return v64 == 0;
}

- (uint64_t)_unlockedSynthesize:error:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z52-[SiriTTSSynthesisEngine _unlockedSynthesize:error:]E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)_unlockedSynthesize:error:
{

  JUMPOUT(0x1B27394E0);
}

- (id)_unlockedSynthesize:error:
{
  *a2 = &unk_1F28C4A40;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (void)unloadResource:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  [(SiriTTSSynthesisEngine *)self _unlockedUnloadResource:v4];
  [(NSLock *)self->_lock unlock];
}

- (void)_unlockedUnloadResource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 handle];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v7)
    {
      synthesizer = self->_synthesizer;
      [v5 handle];
      TTSSynthesizer::unload_resource();
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }
}

- (BOOL)loadResourceWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  LOBYTE(a4) = [(SiriTTSSynthesisEngine *)self _unlockedLoadResourceWithPath:v6 error:a4];
  [(NSLock *)self->_lock unlock];

  return a4;
}

- (BOOL)_unlockedLoadResourceWithPath:(id)a3 error:(id *)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  synthesizer = self->_synthesizer;
  v8 = [v6 path];
  std::string::basic_string[abi:ne200100]<0>(&v22, [v8 UTF8String]);
  v9 = [v6 mimeType];
  v10 = v9;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v9 UTF8String]);
  TTSSynthesizer::load_voice_resource();
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  v11 = v24;
  if (v24)
  {
    v18 = v24;
    v19 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v6 setHandle:&v18];
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    [(NSMutableArray *)self->_loadedResources addObject:v6];
  }

  else if (a4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v26[0] = @"path";
    v13 = [v6 path];
    v27[0] = v13;
    v26[1] = @"mimeType";
    v14 = [v6 mimeType];
    v26[2] = *MEMORY[0x1E696A588];
    v27[1] = v14;
    v27[2] = @"TTSSynthesizer::load_voice_resource";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    *a4 = [v12 errorWithDomain:@"SiriTTSSynthesisEngine" code:1 userInfo:v15];
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_loadedResources;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(SiriTTSSynthesisEngine *)self _unlockedUnloadResource:*(*(&v10 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  synthesizer = self->_synthesizer;
  if (synthesizer)
  {
    TTSSynthesizer::~TTSSynthesizer(synthesizer);
    MEMORY[0x1B27394E0]();
  }

  self->_synthesizer = 0;
  v9.receiver = self;
  v9.super_class = SiriTTSSynthesisEngine;
  [(SiriTTSSynthesisEngine *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (SiriTTSSynthesisEngine)initWithVoicePath:(id)a3 resourcePath:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SiriTTSSynthesisEngine;
  v14 = [(SiriTTSSynthesisEngine *)&v15 init];
  if (v7 && [v7 length])
  {
    operator new();
  }

  if (a5)
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"Empty voice path cannot be used.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a5 = [v9 errorWithDomain:@"SiriTTSSynthesisEngine" code:-1 userInfo:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (BOOL)hasWordTimingSupportWithVoicePath:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
  has_word_timing_support = TTSSynthesizer::has_word_timing_support();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return has_word_timing_support;
}

+ (BOOL)hasPhaticResponsesWithVoicePath:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
  has_phatic_responses = TTSSynthesizer::has_phatic_responses();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return has_phatic_responses;
}

@end