void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void SetLocaleFromInputMode(void *a1)
{
  v2 = a1;
  if (__inputMode != v2)
  {
    v3 = v2;
    objc_storeStrong(&__inputMode, a1);
    v2 = v3;
  }
}

id GetCurrentLocale()
{
  if (GetCurrentLocale___onceToken != -1)
  {
    dispatch_once(&GetCurrentLocale___onceToken, &__block_literal_global_141);
  }

  v0 = [__inputMode languageWithRegion];
  v1 = [GetCurrentLocale___localeDictionary objectForKey:v0];
  if (!v1)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v0];
    [GetCurrentLocale___localeDictionary setObject:v1 forKey:v0];
  }

  return v1;
}

uint64_t __GetCurrentLocale_block_invoke()
{
  GetCurrentLocale___localeDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__507(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

unsigned int *WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(unsigned int *result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    KB::String::~String((result + 52));
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(v1 + 23));
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*(v1 + 20));
    v3 = *(v1 + 11);
    while (v3)
    {
      v4 = v3;
      v3 = *v3;
      v5 = v4[4];
      if (v5)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v5);
      }

      if (*(v4 + 8) >= 0xFu)
      {
        v6 = v4[3];
        if (v6)
        {
          MEMORY[0x26D6BFC00](v6, 0x1000C8077774924);
        }
      }

      operator delete(v4);
    }

    v7 = *(v1 + 9);
    *(v1 + 9) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = *(v1 + 6);
    if (v8)
    {
      do
      {
        v9 = *v8;
        v10 = v8[3];
        if (v10)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v10);
        }

        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v11 = *(v1 + 4);
    *(v1 + 4) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = *(v1 + 1);
    if (v12)
    {
      v13 = *(v1 + 2);
      v14 = *(v1 + 1);
      if (v13 != v12)
      {
        do
        {
          v16 = *(v13 - 8);
          v13 -= 8;
          v15 = v16;
          if (v16)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v15);
          }
        }

        while (v13 != v12);
        v14 = *(v1 + 1);
      }

      *(v1 + 2) = v12;
      operator delete(v14);
    }

    JUMPOUT(0x26D6BFC20);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(*a1);
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t WTF::RefCounted<TI::Favonius::Key>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    if (*(result + 40) >= 0xFu)
    {
      v3 = *(result + 48);
      if (v3)
      {
        MEMORY[0x26D6BFC00](v3, 0x1000C8077774924);
      }
    }

    KB::String::~String((v1 + 8));

    JUMPOUT(0x26D6BFC20);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t ___ZL44GetDirectlyCommittedNumbersAndPunctuationSetv_block_invoke()
  GetDirectlyCommittedNumbersAndPunctuationSet(void)::__directNumbersAndPunctuationSet = {;

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ZL54GetInputsPreventingAcceptCurrentCandidateIfSelectedSetv_block_invoke()
{
  GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::__inputsPreventingAcceptCurrentCandidateIfSelectedSet = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:@"选"];

  return MEMORY[0x2821F96F8]();
}

void ___ZL56TIGetHandwritingMultipleCharacterRecognitionEnabledValuev_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"HandwritingMultipleCharacterRecognitionEnabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

id handwritingResponseKitBackgroundQueue(void)
{
  if (handwritingResponseKitBackgroundQueue(void)::onceToken != -1)
  {
    dispatch_once(&handwritingResponseKitBackgroundQueue(void)::onceToken, &__block_literal_global_783);
  }

  v1 = handwritingResponseKitBackgroundQueue(void)::_instance;

  return v1;
}

void ___Z37handwritingResponseKitBackgroundQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.ResponseKit.handwritingResponseKitBackgroundQueue", v2);
  v1 = handwritingResponseKitBackgroundQueue(void)::_instance;
  handwritingResponseKitBackgroundQueue(void)::_instance = v0;
}

uint64_t __Block_byref_object_copy__787(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetCacheKey(NSString *a1, MCKeyboardInput *a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v13 = a1;
  v14 = a2;
  if (!v14)
  {
    v15 = v13;
    goto LABEL_5;
  }

  if ([(MCKeyboardInput *)v14 hasKindOf:objc_opt_class()])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lud", v14];
LABEL_5:
    v16 = v15;
    goto LABEL_8;
  }

  v16 = [(MCKeyboardInput *)v14 asSearchString];
  if (![(__CFString *)v16 length])
  {
    v17 = [(MCKeyboardInput *)v14 asInlineText];

    v16 = v17;
  }

LABEL_8:
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_287EBF4E8;
  }

  v19 = @"-0";
  if (a3)
  {
    v20 = @"-1";
  }

  else
  {
    v20 = @"-0";
  }

  if (a5)
  {
    v21 = @"-1";
  }

  else
  {
    v21 = @"-0";
  }

  if (a6)
  {
    v19 = @"-1";
  }

  v22 = [(__CFString *)v18 stringByAppendingFormat:@"%@%lud%@%@%lud", v20, a4, v21, v19, a7];

  return v22;
}

void _GLOBAL__sub_I_TIKeyboardInputManagerChinese_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerWubi_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerPinyin_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIWordSearchCangjie_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerShapeBased_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerCangjie_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardHandwritingSpecialization_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerChinesePhonetic_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerWubixing_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIInputManagerHandwriting_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIWordSearchChinesePhonetic_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D460000);

  objc_autoreleasePoolPop(v0);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}