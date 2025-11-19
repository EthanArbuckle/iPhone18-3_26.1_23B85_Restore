void ___ZL18pairedPunctuationsv_block_invoke()
{
  v0 = pairedPunctuations(void)::__pairedPunctuations;
  pairedPunctuations(void)::__pairedPunctuations = &unk_2A25295B8;
}

void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

id GetMultitapSequenceTable(void)
{
  if (GetMultitapSequenceTable(void)::__onceToken != -1)
  {
    GetMultitapSequenceTable();
  }

  v1 = GetMultitapSequenceTable(void)::__multitapMap;

  return v1;
}

void ___ZL24GetMultitapSequenceTablev_block_invoke()
{
  v19 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDB8E00] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [&unk_2A25295D0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v15;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(&unk_2A25295D0);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        v13 = [v5 characterAtIndex:0];
        v6 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v13 length:1];
        v7 = v6;
        if ([v5 length] >= 2)
        {
          v8 = v6;
          v9 = 1;
          do
          {
            v13 = [v5 characterAtIndex:v9];
            v7 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v13 length:1];
            [v0 setObject:v7 forKey:v8];

            ++v9;
            v8 = v7;
          }

          while (v9 < [v5 length]);
        }

        [v0 setObject:v6 forKey:v7];
      }

      v2 = [&unk_2A25295D0 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  v10 = [v0 copy];
  v11 = GetMultitapSequenceTable(void)::__multitapMap;
  GetMultitapSequenceTable(void)::__multitapMap = v10;

  v12 = *MEMORY[0x29EDCA608];
}

void _GLOBAL__sub_I_TIKeyboardInputManager_ja_Kana_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA26000);

  objc_autoreleasePoolPop(v0);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void _GLOBAL__sub_I_TIKeyboardInputManagerLiveConversion_ja_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA26000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_ja_Romaji_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA26000);

  objc_autoreleasePoolPop(v0);
}

id TITransliterateKanaToRomaji(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"ー" withString:@"\uFFFD"];
  v2 = MecabraReverseConvertedRomajiCreateFromKanaString();
  v3 = [v2 stringByReplacingOccurrencesOfString:@"\uFFFD" withString:@"-"];

  return v3;
}

id TIJapaneseTransliterate(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!KanaCharacterSet_kanaSet)
  {
    v4 = [MEMORY[0x29EDBA040] characterSetWithRange:{12353, 182}];
    v5 = MEMORY[0x29EDB9F50];
    v6 = [v4 bitmapRepresentation];
    v7 = [v5 characterSetWithBitmapRepresentation:v6];
    v8 = KanaCharacterSet_kanaSet;
    KanaCharacterSet_kanaSet = v7;
  }

  v9 = [v3 rangeOfCharacterFromSet:?];
  v10 = v3;
  v11 = v10;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = TITransliterateKanaToRomaji(v10);
    v16 = v11;
    if (a2 != 4)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        v18 = TITransliterateKanaToRomaji(v11);

        v12 = v18;
LABEL_15:
        if ((a2 | 4) == 5)
        {
          v14 = TransliterateStringWithOption(v12, *MEMORY[0x29EDB8FD8], a2 == 1);
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_19;
      }

      v16 = TransliterateStringWithOption(v11, *MEMORY[0x29EDB8FE0], 0);

      if (a2 == 2)
      {
        v17 = TransliterateStringWithOption(v16, *MEMORY[0x29EDB8FD8], 0);

        v16 = v17;
      }
    }

    v14 = v16;

    goto LABEL_19;
  }

  v12 = v10;
  if ((a2 - 2) > 2)
  {
    goto LABEL_15;
  }

  v13 = TransliterateStringWithOption(v10, *MEMORY[0x29EDB8FE8], 0);
  v14 = v13;
  if ((a2 & 6) != 2)
  {
LABEL_8:
    v12 = v11;
    goto LABEL_19;
  }

  v15 = TransliterateStringWithOption(v13, *MEMORY[0x29EDB8FE0], 0);

  if (a2 == 2)
  {
    v14 = TransliterateStringWithOption(v15, *MEMORY[0x29EDB8FD8], 0);

    goto LABEL_8;
  }

  v12 = v11;
  v14 = v15;
LABEL_19:

  return v14;
}

__CFString *TransliterateStringWithOption(void *a1, const __CFString *a2, Boolean a3)
{
  v5 = a1;
  if (CFStringCompare(a2, *MEMORY[0x29EDB8FE8], 0) || (a3 & 1) != 0)
  {
    v22 = [v5 mutableCopy];
    range.location = 0;
    range.length = [v5 length];
    CFStringTransform(v22, &range, a2, a3);
    goto LABEL_24;
  }

  v6 = v5;
  v7 = v6;
  if (TransliterateRomajiToKana__DispatchOnceToken != -1)
  {
    TransliterateStringWithOption_cold_1();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_5:
  v27 = v5;
  v8 = [v7 lowercaseStringWithLocale:TransliterateRomajiToKana_japanese];

  v26 = v8;
  v9 = MecabraConvertedKanaCreateFromRomajiString();
  v10 = [MecabraConvertedKanaGetKana() copy];
  v25 = v9;
  v28 = MecabraConvertedKanaGetAlignment();
  v11 = objc_opt_new();
  if ([v10 length])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v14 + 1;
      v17 = [MEMORY[0x29EDBA070] numberWithInteger:{v14 + 1, v25, v26}];
      v18 = [v28 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [v18 integerValue];
        if (v13)
        {
          v20 = [MEMORY[0x29EDBA070] numberWithInteger:v15 + v12 - v19];
          [v11 addObject:v20];

          [v11 addObject:&unk_2A25295A0];
        }

        else
        {
          v21 = [MEMORY[0x29EDBA070] numberWithInteger:v19 - (v15 + v12)];
          [v11 addObject:v21];
        }

        v15 = 0;
        v13 = 0;
        v12 = v19;
      }

      else if ([v10 characterAtIndex:v14] == 12387)
      {
        [v11 addObject:&unk_2A2529588];
        ++v15;
      }

      else
      {
        v13 = 1;
      }

      v14 = v16;
    }

    while (v16 < [v10 length]);
  }

  v22 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:{@"ー", v25}];

  if ([(__CFString *)v22 length])
  {
    v5 = v27;
    if ([(__CFString *)v22 characterAtIndex:[(__CFString *)v22 length]- 1]== 110)
    {
      v23 = [(__CFString *)v22 substringToIndex:[(__CFString *)v22 length]- 1];

      v22 = [v23 stringByAppendingString:@"ん"];
    }
  }

  else
  {
    v5 = v27;
  }

  MecabraConvertedKanaRelease();

LABEL_24:

  return v22;
}

uint64_t __TransliterateRomajiToKana_block_invoke()
{
  TransliterateRomajiToKana_japanese = [MEMORY[0x29EDB8DE0] localeWithLocaleIdentifier:@"ja"];

  return MEMORY[0x2A1C71028]();
}

void _GLOBAL__sub_I_TIKeyboardInputManagerLiveConversion_ja_Romaji_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA26000);

  objc_autoreleasePoolPop(v0);
}

void __copy_assignment_8_8_s0_s8(id *a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  v4 = *(a2 + 8);

  objc_storeStrong(a1 + 1, v4);
}

void ___ZL17notificationQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.kbd.NotificationQueue", v2);
  v1 = notificationQueue(void)::notificationQueue;
  notificationQueue(void)::notificationQueue = v0;
}

void _GLOBAL__sub_I_TIKeyboardInputManager_ja_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA26000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerLiveConversion_ja_Kana_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA26000);

  objc_autoreleasePoolPop(v0);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}