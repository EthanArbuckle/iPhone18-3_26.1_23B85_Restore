@interface VSPhonemeTool
+ (id)generateTTSPhonemes:(id)a3 voicePath:(id)a4 phonemeSystem:(int64_t)a5 error:(id *)a6;
@end

@implementation VSPhonemeTool

+ (id)generateTTSPhonemes:(id)a3 voicePath:(id)a4 phonemeSystem:(int64_t)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 > 2)
  {
    v14 = &stru_2881D71A8;
  }

  else
  {
    v11 = **(&unk_279E4EFD0 + a5);
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    std::string::basic_string[abi:ne200100]<0>(v19, [v9 UTF8String]);
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

    v12 = v8;
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
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