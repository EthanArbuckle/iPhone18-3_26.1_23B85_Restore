@interface VSPhonemeTool
+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error;
@end

@implementation VSPhonemeTool

+ (id)generateTTSPhonemes:(id)phonemes voicePath:(id)path phonemeSystem:(int64_t)system error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  phonemesCopy = phonemes;
  pathCopy = path;
  v10 = pathCopy;
  if (system > 2)
  {
    v14 = &stru_2881D71A8;
  }

  else
  {
    v11 = **(&unk_279E4EFD0 + system);
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    std::string::basic_string[abi:ne200100]<0>(v19, [pathCopy UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, v11);
    MEMORY[0x2743CE890](v23, v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    v12 = phonemesCopy;
    std::string::basic_string[abi:ne200100]<0>(__p, [phonemesCopy UTF8String]);
    SiriTTS::TextToPhoneme::text_to_phoneme();
    *v21 = *v19;
    v22 = v20;
    HIBYTE(v20) = 0;
    LOBYTE(v19[0]) = 0;
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v22 >= 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = v21[0];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end