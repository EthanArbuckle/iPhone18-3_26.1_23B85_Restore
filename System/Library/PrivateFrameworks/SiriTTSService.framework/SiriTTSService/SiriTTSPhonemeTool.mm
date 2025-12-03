@interface SiriTTSPhonemeTool
+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error;
@end

@implementation SiriTTSPhonemeTool

+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  phonemesCopy = phonemes;
  pathCopy = path;
  v11 = pathCopy;
  if (system >= 3)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      system = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown phoneme system: %d", system];
      v30[0] = system;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      *error = [v15 errorWithDomain:@"SiriTTSPhonemeTool" code:1 userInfo:v17];

      error = 0;
    }
  }

  else
  {
    v12 = **(&unk_1E7AF3818 + system);
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    std::string::basic_string[abi:ne200100]<0>(v22, [pathCopy UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, v12);
    MEMORY[0x1B2739450](v24, v22, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    v13 = phonemesCopy;
    std::string::basic_string[abi:ne200100]<0>(__p, [phonemesCopy UTF8String]);
    SiriTTS::TextToPhoneme::text_to_phoneme();
    *v27 = *v22;
    v28 = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22[0]) = 0;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v28 >= 0)
    {
      v14 = v27;
    }

    else
    {
      v14 = v27[0];
    }

    error = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return error;
}

@end