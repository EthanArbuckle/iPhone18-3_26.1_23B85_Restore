uint64_t getIntFromSpelledNumber(const __CFString *a1, const __CFLocale *a2)
{
  result = 0xFFFFFFFFLL;
  IntValue = -1;
  if (a1 && a2)
  {
    if (!DDFastIntegerExtraction() && CFLocaleIsCJ(a2))
    {
      v5 = *MEMORY[0x1E695E480];
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @" ");
      if (ArrayBySeparatingStrings)
      {
        v7 = ArrayBySeparatingStrings;
        v8 = CFStringCreateByCombiningStrings(v5, ArrayBySeparatingStrings, &stru_1F45E9EA0);
        if (v8)
        {
          v9 = v8;
          v10 = copyTranslatedRomanNumberFromChineseNumberString(v8);
          if (v10)
          {
            v11 = v10;
            IntValue = CFStringGetIntValue(v10);
            CFRelease(v11);
          }

          CFRelease(v9);
        }

        CFRelease(v7);
      }
    }

    return IntValue;
  }

  return result;
}

void *QPProcessName(void)
{
  if (QPProcessName(void)::onceToken != -1)
  {
    QPProcessName();
  }

  return &QPProcessName(void)::processName;
}

size_t ___Z13QPProcessNamev_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  result = getpid();
  if (result)
  {
    *v5 = 0xE00000001;
    v6 = 1;
    v7 = result;
    bzero(v3, 0x288uLL);
    __size = 648;
    result = sysctl(v5, 4u, v3, &__size, 0, 0);
    if (result != -1)
    {
      if (__size)
      {
        result = strlcpy(QPProcessName(void)::processName, v4, __size);
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t QPCFDictionaryGetInt32ValueIfPresent(uint64_t result, const __CFString *a2, int *a3)
{
  if (result)
  {
    value = 0;
    result = CFDictionaryGetValueIfPresent(result, a2, &value);
    if (result)
    {
      result = value;
      if (value)
      {
        v4 = CFGetTypeID(value);
        if (v4 == CFNumberGetTypeID())
        {
          CFNumberGetValue(value, kCFNumberSInt32Type, a3);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL SPQueryKindIsSpotlightUISearch(_BOOL8 theString1)
{
  if (theString1)
  {
    v1 = theString1;
    if (theString1 == @"com.apple.Spotlight")
    {
      return 1;
    }

    else
    {
      v2 = CFStringCompare(theString1, @"com.apple.Spotlight", 0);
      theString1 = 1;
      if (v1 != @"com.apple.Search.framework")
      {
        if (v2)
        {
          return CFStringCompare(v1, @"com.apple.Search.framework", 0) == kCFCompareEqualTo;
        }
      }
    }
  }

  return theString1;
}

BOOL QPQueryKindIsShortcutsSearch(_BOOL8 theString1)
{
  if (theString1)
  {
    v1 = theString1;
    if (theString1 == @"com.apple.shortcuts.search")
    {
      return 1;
    }

    else
    {
      v2 = CFStringCompare(theString1, @"com.apple.shortcuts.search", 0);
      theString1 = 1;
      if (v1 != @"com.apple.WorkflowKit.BackgroundShortcutRunner")
      {
        if (v2)
        {
          return CFStringCompare(v1, @"com.apple.WorkflowKit.BackgroundShortcutRunner", 0) == kCFCompareEqualTo;
        }
      }
    }
  }

  return theString1;
}

BOOL CFStringHasPrefixCaseInsensitive(CFStringRef theString, const __CFString *a2)
{
  v3 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v5 = CFStringCreateMutableCopy(v3, 0, a2);
  CFStringLowercase(MutableCopy, 0);
  CFStringLowercase(v5, 0);
  v6 = CFStringHasPrefix(MutableCopy, v5) != 0;
  CFRelease(v5);
  CFRelease(MutableCopy);
  return v6;
}

BOOL SPQueryKindIsSearchToolSearch(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (CFStringHasPrefixCaseInsensitive(result, @"com.apple.omniSearch") || CFStringHasPrefixCaseInsensitive(v1, @"com.apple.intelligenceflow"))
    {
      return 1;
    }

    else
    {

      return CFStringHasPrefixCaseInsensitive(v1, @"com.apple.ondeviceeval");
    }
  }

  return result;
}

uint64_t QP::parseAttributeCanExtendPersonEntity(CFStringRef theString, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *(*a2 + 16);
  if (a3 + a4 > v5)
  {
    return 0;
  }

  v7 = v4 + 1;
  if (v4 == v5 || v7 >= v5)
  {
    return 1;
  }

  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v7);
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    if (!CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex))
    {
      v12 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
      result = CFCharacterSetIsCharacterMember(v12, CharacterAtIndex);
      if (!result)
      {
        break;
      }
    }

    if (++v7 >= v5)
    {
      return 1;
    }
  }

  return result;
}

__CFArray *QP::createAllPersonEntities(const __CFString ***a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3802000000;
  v19 = __Block_byref_object_copy__18;
  v20 = __Block_byref_object_dispose__18;
  v21 = xmmword_1C6631880;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v15[3] = 0;
  v3 = **a1;
  Length = CFStringGetLength(v3);
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *a1;
    v7 = a1[1];
  }

  else
  {
    v7 = 0;
    v8 = *a1;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___ZN2QP23createAllPersonEntitiesENSt3__110shared_ptrINS_5ParseEEE_block_invoke;
  v12[3] = &unk_1F45E9A00;
  v12[4] = &v22;
  v12[5] = &v16;
  v12[6] = v15;
  v12[7] = v3;
  v12[8] = v8;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = Mutable;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3802000000;
  v27[3] = __Block_byref_object_copy__18;
  v27[4] = __Block_byref_object_dispose__18;
  v27[5] = 0;
  v27[6] = Length;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke;
  v26[3] = &unk_1E8268A08;
  v26[4] = v12;
  v26[5] = v27;
  v26[6] = 0;
  v26[7] = Length;
  QP::Parse::enumerateParseAttributes(v5, v26);
  _Block_object_dispose(v27, 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(v23 + 24) == 1)
  {
    v9.location = v17[6];
    EntityInfo = QP::createEntityInfo(**a1, v17[5], v9);
    CFArrayAppendValue(Mutable, EntityInfo);
    CFRelease(EntityInfo);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return Mutable;
}

void sub_1C6624EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose((v33 - 120), 8);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__18(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void ___ZN2QP23createAllPersonEntitiesENSt3__110shared_ptrINS_5ParseEEE_block_invoke(uint64_t a1, void **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (vgFormatterLogger(void)::token != -1)
  {
    ___ZN2QP23createAllPersonEntitiesENSt3__110shared_ptrINS_5ParseEEE_block_invoke_cold_1();
  }

  v4 = vgFormatterLogger(void)::log;
  if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_INFO))
  {
    v7 = (*a2)[2];
    v6 = (*a2)[3];
    *buf = 134218240;
    v24 = v7;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_INFO, "Found QU person prediction at (%ld, %ld)", buf, 0x16u);
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v8 = *(a1 + 56);
    v9 = a2[1];
    v22[0] = *a2;
    v22[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CanExtendPersonEntity = QP::parseAttributeCanExtendPersonEntity(v8, v22, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48));
    v11 = CanExtendPersonEntity;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (v11)
      {
LABEL_10:
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        v14 = *a2;
        v15 = (*a2)[2];
        v16 = (*a2)[3];
        if (v13 != -1)
        {
          if (v15 == -1)
          {
            v15 = *(v12 + 40);
            v16 = *(v12 + 48);
          }

          else
          {
            v17 = v16 + v15;
            if (v13 < v15)
            {
              v15 = *(v12 + 40);
            }

            v18 = *(v12 + 48) + v13;
            if (v18 > v17)
            {
              v17 = v18;
            }

            v16 = v17 - v15;
          }
        }

        *(v12 + 40) = v15;
        *(v12 + 48) = v16;
        *(*(*(a1 + 48) + 8) + 24) = *v14;
        goto LABEL_23;
      }
    }

    else if (CanExtendPersonEntity)
    {
      goto LABEL_10;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v19 = *(*(a1 + 40) + 8);
    v5.location = *(v19 + 48);
    EntityInfo = QP::createEntityInfo(**(a1 + 64), *(v19 + 40), v5);
    CFArrayAppendValue(*(a1 + 80), EntityInfo);
    CFRelease(EntityInfo);
  }

  *(*(*(a1 + 40) + 8) + 40) = *(*a2 + 1);
  *(*(*(a1 + 48) + 8) + 24) = **a2;
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1C662515C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *QP::createEntityInfo(const __CFString *this, const __CFString *a2, CFRange a3)
{
  valuePtr.location = a2;
  valuePtr.length = a3.location;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(Mutable, v6);
  v7 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr.length);
  CFArrayAppendValue(Mutable, v7);
  v8 = CFStringCreateWithSubstring(v4, this, valuePtr);
  CFArrayAppendValue(Mutable, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

void sub_1C6625280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va2, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_64c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_64c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__CFArray *QP::createAllSafetyEntities(const __CFString ***a1, const __CFAttributedString *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    Length = CFAttributedStringGetLength(a2);
    if (Length >= 1)
    {
      v7 = Length;
      v8 = 0;
      do
      {
        v14.location = v7 - v8;
        v13 = xmmword_1C6631880;
        v14.length = &v13;
        if (!QP::QPVisualGenerationFormatterSafetyRiskInRange(a2, v8, v14, v6))
        {
          break;
        }

        v9.location = *(&v13 + 1);
        if (v13 == -1 || *(&v13 + 1) <= 0)
        {
          break;
        }

        EntityInfo = QP::createEntityInfo(**a1, v13, v9);
        CFArrayAppendValue(Mutable, EntityInfo);
        CFRelease(EntityInfo);
        v8 = (*(&v13 + 1) + v13);
      }

      while (*(&v13 + 1) + v13 < v7);
    }
  }

  return Mutable;
}

const __CFString *QP::QPVisualGenerationFormatterSafetyRiskInRange(QP *this, const __CFAttributedString *a2, CFRange a3, CFRange *a4)
{
  if (!this)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v8 = 0;
  if (CFAttributedStringGetLength(this))
  {
    if (location)
    {
      v8 = 0;
      if (a2 + location <= CFAttributedStringGetLength(this) && location >= 1)
      {
        v9 = a2;
        while (1)
        {
          if (CFAttributedStringGetAttributes(this, v9, 0))
          {
            v12.location = a2;
            v12.length = location;
            AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(this, v9, kQPInputAttributeAnnotationKey, v12, length);
            if (AttributeAndLongestEffectiveRange)
            {
              v8 = AttributeAndLongestEffectiveRange;
              if (CFStringsAreEqual(@"COPYRIGHTED", AttributeAndLongestEffectiveRange) || CFStringsAreEqual(@"PUBLIC_FIGURE", v8) || CFStringsAreEqual(@"FICTIONAL_CHARACTER", v8))
              {
                break;
              }
            }
          }

          v9 = (v9 + 1);
          if (v9 >= (a2 + location))
          {
            return 0;
          }
        }
      }
    }
  }

  return v8;
}

__CFArray *QP::GPVisualGenerationFormatterCreateEntities(uint64_t a1, const __CFAttributedString *a2)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 8);
  v37[0] = *a1;
  v37[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  AllPersonEntities = QP::createAllPersonEntities(v37);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = *(a1 + 8);
  v36[0] = *a1;
  v36[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  AllSafetyEntities = QP::createAllSafetyEntities(v36, a2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  Count = CFArrayGetCount(AllPersonEntities);
  v8 = CFArrayGetCount(AllSafetyEntities);
  v9 = v8;
  v10 = v8 > 0;
  v11 = Count > 0;
  if (Count > 0 || v8 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!v11 || v10 && (v15 = CFArrayGetValueAtIndex(AllPersonEntities, v12), v17 = QP::rangeWithEntityInfo(v15, v16), v19 = v18, v20 = CFArrayGetValueAtIndex(AllSafetyEntities, v13), v22 = QP::rangeWithEntityInfo(v20, v21), v17 >= v22) && (v17 > v22 || v19 < v23))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllSafetyEntities, v13++);
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllPersonEntities, v12++);
      }

      v26 = QP::rangeWithEntityInfo(ValueAtIndex, v24);
      v29 = v26;
      v30 = v27;
      if (v26 >= v14)
      {
        CFArrayAppendValue(theArray, ValueAtIndex);
        v14 = (v29 + v30);
      }

      else
      {
        v31 = (v26 + v27);
        if (v26 + v27 > v14)
        {
          v28.location = v26 + v27 - v14;
          EntityInfo = QP::createEntityInfo(**a1, v14, v28);
          CFArrayAppendValue(theArray, EntityInfo);
          CFRelease(EntityInfo);
          v14 = v31;
        }
      }

      v10 = v13 < v9;
      v11 = v12 < Count;
    }

    while (v12 < Count || v13 < v9);
  }

  CFRelease(AllPersonEntities);
  CFRelease(AllSafetyEntities);
  return theArray;
}

void sub_1C6625714(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::rangeWithEntityInfo(QP *this, const __CFArray *a2)
{
  if (!this)
  {
    return -1;
  }

  if (CFArrayGetCount(this) < 3)
  {
    return -1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(this, 0);
  v5 = CFArrayGetValueAtIndex(this, 1);
  v6 = CFArrayGetValueAtIndex(this, 2);
  v9 = 0;
  valuePtr = 0;
  CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
  CFNumberGetValue(v5, kCFNumberCFIndexType, &v9);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if ((v8 & (v6 != 0)) != 0)
  {
    return valuePtr;
  }

  else
  {
    return -1;
  }
}

__CFArray *QP::VisualGenerationFormatter::createEntities(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v19, *(v3 + 120), *(v3 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 128) - *(v3 + 120)) >> 3));
  v4 = *a2;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(&__p, *(v4 + 144), *(v4 + 152), (*(v4 + 152) - *(v4 + 144)) >> 4);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v20 != v19)
  {
    v6 = 0;
    v7 = 0;
    v8 = 8;
    v9 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], v9);
      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= v7)
      {
        std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
      }

      v11 = v10;
      CFStringFromString = QP::createCFStringFromString(v19 + v6);
      CFDictionarySetValue(v11, kQPParseAttributeValueNamedEntityIdentifierKey, CFStringFromString);
      CFRelease(CFStringFromString);
      if (v7 >= (v17 - __p) >> 4)
      {
        break;
      }

      v13 = kQPNamedEntityIsInferredKey;
      if (*(__p + v8) == 1.0)
      {
        goto LABEL_8;
      }

      v14 = MEMORY[0x1E695E4D0];
LABEL_9:
      CFDictionarySetValue(v11, v13, *v14);
      CFArrayAppendValue(Mutable, v11);
      CFRelease(v11);
      ++v7;
      v8 += 16;
      v6 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= v7)
      {
        goto LABEL_10;
      }
    }

    v13 = kQPNamedEntityIsInferredKey;
LABEL_8:
    v14 = MEMORY[0x1E695E4C0];
    goto LABEL_9;
  }

LABEL_10:
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  __p = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return Mutable;
}

void sub_1C6625A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, char *a10, uint64_t a11, char a12)
{
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  __p = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t QP::VisualGenerationFormatter::shouldSuppressUnknownNamedEntityInRange(QP::VisualGenerationFormatter *this, CFRange a2)
{
  v2 = *(this + 11);
  v3 = *(v2 + 448);
  if (!v3)
  {
    return 0;
  }

  length = a2.length;
  location = a2.location;
  if (!CFAttributedStringGetLength(*(v2 + 448)) || length == 0)
  {
    return 0;
  }

  v7 = location + length;
  if (location + length > CFAttributedStringGetLength(v3) || length < 1)
  {
    return 0;
  }

  while (1)
  {
    Attribute = CFAttributedStringGetAttribute(v3, location, kQPInputAttributeAnnotationKey, 0);
    if (CFStringsAreEqual(@"GENERIC_ENTITY", Attribute) || CFStringsAreEqual(@"OFFENSIVE", Attribute))
    {
      break;
    }

    if (++location >= v7)
    {
      return 0;
    }
  }

  return 1;
}

__CFArray *QP::VisualGenerationFormatter::createEntitiesWithIntersection(QP::VisualGenerationFormatter *this, const __CFArray *a2, const __CFArray *a3)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (CFArrayGetCount(a2) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      Value = CFDictionaryGetValue(ValueAtIndex, kQPParseAttributeValueNamedEntityIdentifierKey);
      CFSetAddValue(Mutable, Value);
      ++v7;
    }

    while (v7 < CFArrayGetCount(a2));
  }

  v10 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a3) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = CFArrayGetValueAtIndex(a3, v11);
      v13 = CFDictionaryGetValue(v12, kQPParseAttributeValueNamedEntityIdentifierKey);
      if (CFSetContainsValue(Mutable, v13))
      {
        CFArrayAppendValue(v10, v12);
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(a3));
  }

  CFRelease(Mutable);
  return v10;
}

uint64_t QP::VisualGenerationFormatter::setParse(uint64_t a1, uint64_t **a2)
{
  v70 = *MEMORY[0x1E69E9840];
  QP::Formatter::clear(a1);
  QP::Formatter::clear(a1);
  v4 = a2[1];
  v61 = *a2;
  v62 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = QP::Formatter::setParse(a1, &v61);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v6 = a2[1];
  v41 = **a2;
  v60[0] = *a2;
  v60[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v5;
  Entities = QP::GPVisualGenerationFormatterCreateEntities(v60, *(*(a1 + 88) + 448));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (Entities)
  {
    if (CFArrayGetCount(Entities) <= 0)
    {
      CFRelease(Entities);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Entities, v8);
        v11 = ValueAtIndex;
        if (ValueAtIndex)
        {
          if (CFArrayGetCount(ValueAtIndex) >= 3)
          {
            v12 = CFArrayGetValueAtIndex(v11, 0);
            v13 = CFArrayGetValueAtIndex(v11, 1);
            v14 = CFArrayGetValueAtIndex(v11, 2);
            v58 = 0;
            valuePtr = 0;
            CFNumberGetValue(v12, kCFNumberCFIndexType, &valuePtr);
            CFNumberGetValue(v13, kCFNumberCFIndexType, &v58);
            if (v12)
            {
              if (v13 && v14)
              {
                v16 = v58;
                v15 = valuePtr;
                v54 = 0;
                v55 = &v54;
                v56 = 0x2000000000;
                v57 = 0;
                v50 = 0;
                v51 = &v50;
                v52 = 0x2000000000;
                v53 = 0;
                v44 = 0;
                v45 = &v44;
                v46 = 0x3802000000;
                v47 = __Block_byref_object_copy__18;
                v48 = __Block_byref_object_dispose__18;
                v49 = xmmword_1C6631880;
                v17 = *a2;
                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 0x40000000;
                v43[2] = ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke;
                v43[3] = &unk_1E82689B8;
                v43[8] = valuePtr;
                v43[9] = v58;
                v43[10] = v41;
                v43[4] = &v50;
                v43[5] = &v44;
                v43[6] = &v54;
                v43[7] = a1;
                QP::Parse::enumerateParseAttributes(v17, v43);
                v42 = xmmword_1C6631880;
                v71.length = &v42;
                v71.location = v16;
                v19 = QP::QPVisualGenerationFormatterSafetyRiskInRange(*(*(a1 + 88) + 448), v15, v71, v18);
                v20 = v19;
                if (v19)
                {
                  if (CFStringGetLength(v19))
                  {
                    v72.location = v15;
                    v72.length = v16;
                    QP::Formatter::setParseAttribute(a1, kQPParseAttributeSafetyRiskTypeKey, v20, v72);
                    v21 = v45;
                    v22 = v45[5];
                    if (v22 != -1)
                    {
                      v23 = v45[6];
                      v24 = v45[5];
                      v25 = v23;
                      if (v42 != -1)
                      {
                        if (v22 >= v42)
                        {
                          v24 = v42;
                        }

                        else
                        {
                          v24 = v45[5];
                        }

                        v26 = *(&v42 + 1) + v42;
                        if (v23 + v22 > *(&v42 + 1) + v42)
                        {
                          v26 = v23 + v22;
                        }

                        v25 = v26 - v24;
                      }

                      if (v15 <= v24)
                      {
                        v27 = v24;
                      }

                      else
                      {
                        v27 = v15;
                      }

                      v28 = (v25 + v24);
                      if ((v15 + v16) < v28)
                      {
                        v28 = v15 + v16;
                      }

                      v29 = v28 <= v27;
                      v30 = v28 - v27;
                      if (v29)
                      {
                        v31 = -1;
                      }

                      else
                      {
                        v31 = v27;
                      }

                      if (v29)
                      {
                        v30 = 0;
                      }

                      v45[5] = v31;
                      v21[6] = v30;
                      if (v22 != v31 || v23 != v30)
                      {
                        if (vgFormatterLogger(void)::token != -1)
                        {
                          QP::VisualGenerationFormatter::setParse();
                        }

                        v32 = vgFormatterLogger(void)::log;
                        if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                        {
                          v34 = v45[5];
                          v33 = v45[6];
                          *buf = 134218752;
                          *&buf[4] = v22;
                          v64 = 2048;
                          v65 = v23;
                          v66 = 2048;
                          v67 = v34;
                          v68 = 2048;
                          v69 = v33;
                          _os_log_impl(&dword_1C6584000, v32, OS_LOG_TYPE_DEFAULT, "Modified refined person range for NamedEntity due to annotation. Was (%ld, %ld) now (%ld, %ld)", buf, 0x2Au);
                        }
                      }
                    }
                  }
                }

                if (v51[3] || *(v55 + 24) == 1)
                {
                  if (v45[5] == -1)
                  {
                    if (vgFormatterLogger(void)::token != -1)
                    {
                      QP::VisualGenerationFormatter::setParse();
                    }

                    v35 = vgFormatterLogger(void)::log;
                    if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218240;
                      *&buf[4] = v15;
                      v64 = 2048;
                      v65 = v16;
                      _os_log_impl(&dword_1C6584000, v35, OS_LOG_TYPE_DEFAULT, "Missing a refined person range for NamedEntity at (%ld, %ld), using original range", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v16 = v45[6];
                    v15 = v45[5];
                  }

                  v73.location = v15;
                  v73.length = v16;
                  QP::Formatter::setParseAttribute(a1, kQPParseAttributeEntityTypeKey, @"NamedEntity", v73);
                  if ((v55[3] & 1) == 0 && CFArrayGetCount(v51[3]))
                  {
                    v74.location = v15;
                    v74.length = v16;
                    QP::Formatter::setParseAttribute(a1, kQPParseAttributeValueNamedEntitiesKey, v51[3], v74);
                  }
                }

                else
                {
                  v75.location = v15;
                  v75.length = v16;
                  QP::Formatter::setParseAttribute(a1, kQPParseAttributeEntityTypeKey, @"GenericEntity", v75);
                }

                v36 = v51[3];
                if (v36)
                {
                  CFRelease(v36);
                }

                ++v9;
                _Block_object_dispose(&v44, 8);
                _Block_object_dispose(&v50, 8);
                _Block_object_dispose(&v54, 8);
              }
            }
          }
        }

        ++v8;
      }

      while (CFArrayGetCount(Entities) > v8);
      CFRelease(Entities);
      if (v9)
      {
        v44 = 3;
        v37 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v44);
        *buf = v37;
        QP::Formatter::setResultValue(a1, kQPParseResultConfidenceKey, v37);
        if (v37)
        {
          CFRelease(v37);
        }
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
  return v40;
}

void sub_1C6626280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *(v4 + 24);
  if (v3 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  v8 = *(a1 + 72) + v3;
  if (v8 >= v6 + v5)
  {
    v8 = v6 + v5;
  }

  if (v7 != -1 && v8 > v7)
  {
    v11 = *(a1 + 56);
    if (v6 == 1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(*(a1 + 80), v5);
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
      if (CFCharacterSetIsCharacterMember(Predefined, CharacterAtIndex))
      {
        goto LABEL_75;
      }

      v4 = *a2;
    }

    if (*(v4 + 200) != *(v4 + 192))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      v49 = __Block_byref_object_copy__5;
      v50 = __Block_byref_object_dispose__6;
      v51 = 0;
      v52 = 0;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 0x40000000;
      v47[2] = ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke_7;
      v47[3] = &unk_1E8268990;
      v47[4] = buf;
      QP::ParseAttribute::enumerateAttributes(v4, v47);
      v15 = *(*&buf[8] + 40);
      v14 = *(*&buf[8] + 48);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = a2[1];
      *a2 = v15;
      a2[1] = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      _Block_object_dispose(buf, 8);
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }

      v4 = *a2;
    }

    v17 = v4 + 48;
    v18 = *(v4 + 71);
    if (v18 < 0)
    {
      if (*(v4 + 56) != 17)
      {
        goto LABEL_33;
      }

      v17 = *v17;
    }

    else if (v18 != 17)
    {
      goto LABEL_33;
    }

    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    if (v19 != 0x6E756F724750516BLL || v20 != 0x6F73726550646564 || v21 != 110)
    {
LABEL_33:
      if ((*(v4 + 76) - 2) <= 2)
      {
        if (QP::VisualGenerationFormatter::shouldSuppressUnknownNamedEntityInRange(v11, *(v4 + 16)))
        {
          if (vgFormatterLogger(void)::token != -1)
          {
            QP::VisualGenerationFormatter::setParse();
          }

          v24 = vgFormatterLogger(void)::log;
          if (os_log_type_enabled(vgFormatterLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(*a2 + 16);
            v25 = *(*a2 + 24);
            *buf = 134218240;
            *&buf[4] = v26;
            *&buf[12] = 2048;
            *&buf[14] = v25;
            _os_log_impl(&dword_1C6584000, v24, OS_LOG_TYPE_DEFAULT, "Ignoring prediction for unknown person at (%ld, %ld)", buf, 0x16u);
          }
        }

        else
        {
          v27 = *(*(a1 + 40) + 8);
          v28 = *(v27 + 40);
          v29 = *(*a2 + 16);
          v30 = *(*a2 + 24);
          if (v28 != -1 && *(v27 + 48) != 0)
          {
            if (v30)
            {
              v30 += v29 - v28;
            }

            else
            {
              v30 = *(v27 + 48);
            }

            if (v29 == -1)
            {
              v30 = *(v27 + 48);
            }

            v29 = *(v27 + 40);
          }

          *(v27 + 40) = v29;
          *(v27 + 48) = v30;
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }

      goto LABEL_75;
    }

    v32 = *(v4 + 184);
    if (v32)
    {
      v32 = std::__shared_weak_count::lock(v32);
      v33 = v32;
      if (v32)
      {
        v34 = *(v4 + 176);
        if (*(v34 + 88) != 16)
        {
          goto LABEL_74;
        }

        v35 = 0;
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v45 = v34;
        v46 = v32;
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_58;
      }

      if (MEMORY[0x58] != 16)
      {
        goto LABEL_73;
      }
    }

    else if (MEMORY[0x58] != 16)
    {
      goto LABEL_75;
    }

    v33 = 0;
    v45 = 0;
    v46 = 0;
    v35 = 1;
LABEL_58:
    v36 = QP::VisualGenerationFormatter::createEntities(v32, &v45);
    v37 = v36;
    if ((v35 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    v38 = *(*(a1 + 32) + 8);
    v39 = *(v38 + 24);
    if (v39)
    {
      *(*(*(a1 + 32) + 8) + 24) = QP::VisualGenerationFormatter::createEntitiesWithIntersection(v36, *(v38 + 24), v37);
      CFRelease(v37);
      CFRelease(v39);
    }

    else
    {
      *(v38 + 24) = v37;
    }

    v40 = *(*(a1 + 40) + 8);
    v41 = *(v40 + 40);
    v42 = *(*a2 + 16);
    v43 = *(*a2 + 24);
    if (v41 != -1 && *(v40 + 48))
    {
      if (v43)
      {
        v43 += v42 - v41;
      }

      else
      {
        v43 = *(v40 + 48);
      }

      if (v42 == -1)
      {
        v43 = *(v40 + 48);
      }

      v42 = *(v40 + 40);
    }

    *(v40 + 40) = v42;
    *(v40 + 48) = v43;
    if ((v35 & 1) == 0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

LABEL_73:
    if (!v33)
    {
      goto LABEL_75;
    }

LABEL_74:
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

LABEL_75:
  v44 = *MEMORY[0x1E69E9840];
}

void sub_1C662672C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if ((v24 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void ___ZN2QP25VisualGenerationFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke_7(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  v4 = *a2;
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = (v4 + 48);
  v6 = *(v4 + 71);
  if (v6 < 0)
  {
    if (*(v4 + 56) != 17)
    {
      return;
    }

    v5 = *v5;
  }

  else if (v6 != 17)
  {
    return;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  if (v7 == 0x6E756F724750516BLL && v8 == 0x6F73726550646564 && v9 == 110)
  {
    v12 = (v3 + 48);
    v13 = *(v3 + 71);
    if (v13 < 0)
    {
      if (*(v3 + 56) != 17)
      {
LABEL_27:
        v19 = a2[1];
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v2 + 48);
        *(v2 + 40) = v4;
        *(v2 + 48) = v19;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        return;
      }

      v12 = *v12;
    }

    else if (v13 != 17)
    {
      goto LABEL_27;
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = *(v12 + 16);
    if (v14 == 0x6E756F724750516BLL && v15 == 0x6F73726550646564 && v16 == 110)
    {
      return;
    }

    goto LABEL_27;
  }
}

void QP::VisualGenerationFormatter::~VisualGenerationFormatter(const void **this)
{
  QP::VisualGenerationFormatter::~VisualGenerationFormatter(this);

  JUMPOUT(0x1C695B850);
}

{
  *this = &unk_1F45E9A40;
  nlp::CFScopedPtr<void *>::reset(this + 13, 0);
  v2 = this[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  QP::Formatter::~Formatter(this);
}

void ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke(void *a1, uint64_t *a2)
{
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  v5 = *a2;
  v6 = *(*a2 + 16);
  v7 = *(v3 + 48) + v4;
  if (v4 > v6 || v7 < *(*a2 + 24) + v6)
  {
    return;
  }

  if (*(v5 + 200) != *(v5 + 192))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3802000000;
    v31 = __Block_byref_object_copy__5;
    v32 = __Block_byref_object_dispose__6;
    v33 = 0;
    v34 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke_2;
    v27[3] = &unk_1E82689E0;
    v27[4] = &v28;
    QP::ParseAttribute::enumerateAttributes(v5, v27);
    v11 = v29[5];
    v10 = v29[6];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a2[1];
    *a2 = v11;
    a2[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    _Block_object_dispose(&v28, 8);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    v5 = *a2;
  }

  v13 = v5 + 48;
  v14 = *(v5 + 71);
  if (v14 < 0)
  {
    if (*(v5 + 56) != 17)
    {
      goto LABEL_25;
    }

    v13 = *v13;
  }

  else if (v14 != 17)
  {
    goto LABEL_25;
  }

  v15 = *v13;
  v16 = *(v13 + 8);
  v17 = *(v13 + 16);
  if (v15 != 0x6E756F724750516BLL || v16 != 0x6F73726550646564 || v17 != 110)
  {
LABEL_25:
    if ((*(v5 + 76) - 2) > 2)
    {
      return;
    }
  }

  v20 = a1[4];
  v21 = a2[1];
  v25 = v5;
  v26 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v20 + 16))(v20, &v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v22 = *(*a2 + 24) + *(*a2 + 16);
  v23 = a1[6] - v22 + a1[7];
  v24 = *(a1[5] + 8);
  *(v24 + 40) = v22;
  *(v24 + 48) = v23;
}

void sub_1C6626ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QPL32enumeratePersonAttributesInRangeENSt3__110shared_ptrINS_5ParseEEE7CFRangeU13block_pointerFvNS1_INS_14ParseAttributeEEEE_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  v4 = *a2;
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = (v4 + 48);
  v6 = *(v4 + 71);
  if (v6 < 0)
  {
    if (*(v4 + 56) != 17)
    {
      return;
    }

    v5 = *v5;
  }

  else if (v6 != 17)
  {
    return;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  if (v7 == 0x6E756F724750516BLL && v8 == 0x6F73726550646564 && v9 == 110)
  {
    v12 = (v3 + 48);
    v13 = *(v3 + 71);
    if (v13 < 0)
    {
      if (*(v3 + 56) != 17)
      {
LABEL_27:
        v19 = a2[1];
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v2 + 48);
        *(v2 + 40) = v4;
        *(v2 + 48) = v19;
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        return;
      }

      v12 = *v12;
    }

    else if (v13 != 17)
    {
      goto LABEL_27;
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = *(v12 + 16);
    if (v14 == 0x6E756F724750516BLL && v15 == 0x6F73726550646564 && v16 == 110)
    {
      return;
    }

    goto LABEL_27;
  }
}

os_log_t ___ZL17vgFormatterLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "VisualGenerationFormatter");
  vgFormatterLogger(void)::log = result;
  return result;
}

void nlp::CFScopedPtr<void *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

BOOL nlp::traverseCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    a2 += 20;
    v3 = *(v2 + 16);
    v4 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return nlp::BurstTrieAdd(a1, a2, v3, v4);
}

BOOL nlp::BurstTrieAdd(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 2080))
  {
    return 0;
  }

  v25[11] = v4;
  v25[12] = v5;
  if (*(a1 + 2064))
  {
    return 0;
  }

  v8 = 0;
  v24 = 0;
  if ((a3 - 1) <= 0x3FE && a4)
  {
    v11 = 0;
    v12 = 1;
    v13 = a1;
    while (1)
    {
      v14 = v13 + 1;
      v15 = *&v13[2 * *(a2 + v11) + 1];
      if ((v15 & 3) != 1)
      {
        break;
      }

      v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      ++v11;
      ++v12;
      if (a3 == v11)
      {
        v16 = *v13;
        *v13 = a4;
        if (!v16)
        {
          goto LABEL_18;
        }

LABEL_19:
        v8 = 1;
        return v8 != 0;
      }
    }

    if ((v15 & 3) != 2)
    {
      v20 = a3 - v12;
      v21 = (a3 - v12);
      v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
      memcpy((v22 + 14), (a2 + v12), v21);
      *(v22 + 14 + v20) = 0;
      *(v22 + 12) = v20;
      *(v22 + 8) = a4;
      *v22 = 0;
      *&v14[2 * *(a2 + v11)] = v22 | 2;
      goto LABEL_18;
    }

    v25[0] = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = nlp::addListNode(a1, v25, a2, a3, v12, a4, &v24);
    v18 = v25[0];
    if (v17 >= *(a1 + 2088))
    {
      v18 = nlp::burstLevel(a1, v25[0], &v24);
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v23 = v19 | v18;
    v8 = v24;
    *&v14[2 * *(a2 + v11)] = v23;
    if (v8 == 2)
    {
LABEL_18:
      ++*(a1 + 2060);
      goto LABEL_19;
    }
  }

  return v8 != 0;
}

uint64_t nlp::TrieCompletionGetCompletion(uint64_t a1)
{
  if (a1)
  {
    return a1 + 20;
  }

  else
  {
    return 0;
  }
}

uint64_t nlp::TrieCompletionGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t nlp::TrieCompletionGetPayload(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t nlp::rankedTraverseCallback(uint64_t a1, float *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = (a2 + 5);
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = *(a2 + 4);
    v5 = *(a2 + 2);
    v6 = *a2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0.0;
  }

  v10 = 0;
  nlp::BurstTrieAddWithScore(a1, v3, v4, v5, 0, v9, v6);
  result = std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C6626F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL nlp::BurstTrieAddWithScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 2080) && (*(a1 + 2064) & 1) != 0)
  {
    result = 0;
    v17 = 0;
    if ((a3 - 1) <= 0x3FE && a4)
    {
      v16 = 0;
      std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v18, a6);
      nlp::addLevelRanked(a1, a1, a2, a3, 0, a4, &v16, &v17, a7, a5, v18);
      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v18);
      v15 = v17;
      if (v17 == 2)
      {
        ++*(a1 + 2060);
      }

      result = v15 != 0;
    }
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C6627090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double nlp::BurstTrieCreateMutableWithOptions(int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
  if (v4)
  {
    result = 0.0;
    *(v4 + 2060) = 0u;
    *(v4 + 519) = 1;
    *(v4 + 260) = 0;
    *(v4 + 2092) = 0x200000000;
    *(v4 + 516) = a2;
    *(v4 + 522) = a1;
  }

  return result;
}

char *nlp::burstTrieCreateWithBytes(char *this, const char *a2)
{
  if (this)
  {
    v2 = this;
    if (*this == 12648430 || *this == -900339842)
    {
      v4 = a2;
      this = malloc_type_calloc(1uLL, 0x838uLL, 0x105004014637929uLL);
      *(this + 260) = v2;
      v5 = v2[3];
      *(this + 2068) = v2[2];
      *(this + 515) = v5;
      v6 = v2[4];
      *(this + 516) = v6;
      if (*v2 == -900339842)
      {
        *(this + 516) = v6 | 1;
      }

      *(this + 522) = v2[5];
      *(this + 523) = v4;
      *(this + 524) = 2;
      *(this + 519) = 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void nlp::BurstTrieRelease(char *a1)
{
  if (a1)
  {
    v2 = *(a1 + 519) - 1;
    *(a1 + 519) = v2;
    if (!v2)
    {
      v3 = *(a1 + 260);
      if (v3)
      {
        if (*(a1 + 523))
        {
          munmap(v3, *(a1 + 2068));
        }
      }

      else if (a1[2064])
      {
        nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(a1);
      }

      else
      {
        nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(a1);
      }

      free(a1);
    }
  }
}

uint64_t nlp::BurstTrieCreateMutableCopy(int *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nlp::BurstTrieCreateMutableWithOptions(a1[522], a1[516]);
    v3 = v2;
    if (a1[516])
    {
      v4 = v8;
      v8[0] = &unk_1F45E9B88;
      v8[1] = nlp::rankedTraverseCallback;
      v8[3] = v8;
      nlp::BurstTrieSearch(a1, 0, 0, v2, v8, -1);
    }

    else
    {
      v4 = v7;
      v7[0] = &unk_1F45E9B88;
      v7[1] = nlp::traverseCallback;
      v7[3] = v7;
      nlp::BurstTrieSearch(a1, 0, 0, v2, v7, -1);
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v4);
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1C66273BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieSearch(nlp *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (a6 < 0)
  {
    v11 = 0xFFFFFFFF00000003;
    v12 = 0;
    v13 = a4;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](v14, a5);
    nlp::searchWithContext(a1, a2, a3, 0, &v11);
    result = std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](v14);
  }

  else
  {
    result = nlp::BurstTrieCreateCursorWithBytes(a1, a2, a3);
    if (result)
    {
      operator new();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlp::addLevelRanked(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v13 = a9;
  v35 = *MEMORY[0x1E69E9840];
  if (a5 >= a4)
  {
    *a8 = 2;
    if (*(a2 + 8))
    {
      *a8 = 1;
      if (*(a11 + 24))
      {
        result = std::function<float ()(void *,float,float)>::operator()(a11, a10, *(a2 + 4), a9);
        v13 = v21;
      }
    }

    *(a2 + 4) = v13;
    *(a2 + 8) = a6;
    *a7 = v13;
  }

  else
  {
    v19 = result;
    v31 = (a3 + a5);
    v20 = *(a2 + 12 + 8 * *v31);
    if ((v20 & 3) == 2)
    {
      v30 = a2 + 12;
      v32 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v33, a11);
      v22 = nlp::addListNodeRanked(v19, &v32, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v33);
      result = std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v33);
      v23 = v32;
      if (v22 >= *(v19 + 2088))
      {
        result = nlp::burstLevelRanked(v19, v32, a7, a8);
        v23 = result;
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v28 = v24 | v23;
      v27 = v31;
    }

    else
    {
      if ((v20 & 3) == 1)
      {
        std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](v34, a11);
        nlp::addLevelRanked(v19, v20 & 0xFFFFFFFFFFFFFFFCLL, a3, a4, a5 + 1, a6, a7, a8, v13, a10, v34);
        result = std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v34);
        goto LABEL_15;
      }

      v30 = a2 + 12;
      *a7 = a9;
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 23, 0x10200402E77EEF7uLL);
      v27 = v31;
      result = memcpy((v26 + 22), v31 + 1, v25);
      *(v26 + 22 + v25) = 0;
      *(v26 + 20) = v25;
      *(v26 + 16) = a6;
      *(v26 + 8) = v13;
      *(v26 + 12) = v13;
      *v26 = 0;
      v28 = v26 | 2;
      *a8 = 2;
    }

    *(v30 + 8 * *v27) = v28;
  }

LABEL_15:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C66277B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

nlp *nlp::searchWithContext(nlp *result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3FF)
  {
    v9 = result;
    v10 = nlp::sharedBuffer(result);
    memcpy(v10, a2, a3);
    *(v10 + a3) = 0;
    v11 = *(v9 + 2080);
    v12 = *(v9 + 2064);
    if (v11)
    {
      v13 = *(v11 + 4) & 0xFFFFFFFC;
      if (v12)
      {
        v14 = v19;
        v19[0] = &unk_1F45E9AD8;
        v19[1] = nlp::containsKey;
        v19[3] = v19;
        nlp::searchDiskLevelRanked(v9, v13 + v11, v10, a3, 0, a4, a5, v19);
      }

      else
      {
        v14 = v18;
        v18[0] = &unk_1F45E9AD8;
        v18[1] = nlp::containsKey;
        v18[3] = v18;
        nlp::searchDiskLevel(v9, v13 + v11, v10, a3, 0, a4, a5, v18);
      }
    }

    else if (v12)
    {
      v14 = v17;
      v17[0] = &unk_1F45E9AD8;
      v17[1] = nlp::containsKey;
      v17[3] = v17;
      nlp::searchLevelRanked(v9, v10, a3, 0, a4, a5, v17);
    }

    else
    {
      v14 = v16;
      v16[0] = &unk_1F45E9AD8;
      v16[1] = nlp::containsKey;
      v16[3] = v16;
      nlp::searchLevel(v9, v10, a3, 0, a4, a5, v16);
    }

    result = std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v14);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C66279F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *nlp::BurstTrieCreateCursorWithBytes(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(0x28uLL, 1uLL, 0x1060040A6619778uLL);
  if (!nlp::BurstTrieSetCursorWithBytes(a1, v6, a2, a3) && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

nlp *nlp::BurstTrieTraverseFromCursor(nlp *result, uint64_t a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = result;
    result = nlp::sharedBuffer(result);
    v8 = result;
    v17 = 0;
    v9 = *(v7 + 7);
    if (!v9)
    {
      v14 = *v7;
      v15 = *(v7 + 2);
      v16 = *(v7 + 6);
      v12 = *(v7 + 4);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v18, a3);
      nlp::traverseFromMapCursor(v12, &v14, v8, 0, &v17, a4, a2, v18);
      v11 = v18;
      goto LABEL_6;
    }

    if (v9 == 1)
    {
      v14 = *v7;
      v15 = *(v7 + 2);
      v10 = *(v7 + 4);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v19, a3);
      nlp::traverseFromCompactMapCursor(v10, &v14, v8, 0x1000u, 0, &v17, a2, v19);
      v11 = v19;
LABEL_6:
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v11);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C6627BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v11 = a5;
  v10 = a7;
  v9 = a6;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t nlp::traverseFromCompactMapCursor(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v13 = result;
  v67 = *MEMORY[0x1E69E9840];
  v14 = *a2 & 3;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, a8);
      v16 = *(v13 + 2064);
      v17 = ((*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080));
      if (v16)
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v63);
        v27 = *v17 - 8;
        if (*v17 != 8)
        {
          v28 = 0;
          do
          {
            v29 = v17 + v28 + 8;
            v30 = *(v29 + 8);
            v31 = *(a2 + 12);
            if (v30 >= v31)
            {
              v32 = v30 - v31;
              memcpy((a3 + a5), (v29 + v31 + 10), v30 - v31);
              *(a3 + v32 + a5) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v66, a7, a3, *(v29 + 8), *(v29 + 4), a6, *v29);
              LODWORD(v30) = *(v29 + 8);
            }

            v28 += v30 + 10;
          }

          while (v28 < v27);
          goto LABEL_36;
        }
      }

      else if ((v16 & 4) != 0)
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v63);
        v33 = *v17 - 4;
        v34 = *(a2 + 8);
        if (v34 < v33)
        {
          v35 = v17 + 1;
          do
          {
            v36 = v35 + v34;
            v37 = *(v36 + 2);
            v38 = *(a2 + 12);
            if (v37 >= v38)
            {
              v40 = v37 - v38;
              memcpy((a3 + a5 + v36[6]), &v36[v38 + 7], v37 - v38);
              *(a3 + v40 + a5 + v36[6]) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v66, a7, a3, *(v36 + 2), *v36, a6, 0.0);
              v39 = *(v36 + 2) + *(a2 + 8);
            }

            else
            {
              v39 = v34 + v37;
            }

            v34 = v39 + 7;
            *(a2 + 8) = v34;
          }

          while (v34 < v33);
          goto LABEL_36;
        }
      }

      else
      {
        v18 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v63);
        v19 = *v17 - 4;
        v20 = *(a2 + 8);
        if (v20 < v19)
        {
          do
          {
            v21 = v17 + v20 + 4;
            v22 = *(v21 + 4);
            v23 = *(a2 + 12);
            if (v22 >= v23)
            {
              v25 = v22 - v23;
              memcpy((a3 + a5), (v21 + v23 + 6), v22 - v23);
              *(a3 + v25 + a5) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v66, a7, a3, *(v21 + 4), *v21, a6, *v21);
              v24 = *(v21 + 4) + *(a2 + 8);
            }

            else
            {
              v24 = v20 + v22;
            }

            v20 = v24 + 6;
            *(a2 + 8) = v20;
          }

          while (v20 < v19);
LABEL_36:
          v18 = v66;
        }
      }

      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v18);
      v15 = v63;
      goto LABEL_63;
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v64, a8);
    v26 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 + 2080);
    if ((*(v13 + 2064) & 1) == 0)
    {
      if (*(v26 + 32))
      {
        *(a3 + a5) = 0;
        std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v64, a7, a3, a5, *(v26 + 32), a6, 0.0);
        if (a5 >= a4 || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }

LABEL_39:
        v41 = 0;
        v42 = a4 - 1;
        while (1)
        {
          *(a3 + a5) = v41;
          v43 = *(v26 + 8 * (v41 >> 6));
          if ((v43 & (1 << v41)) != 0)
          {
            if (v41 >= 0x40)
            {
              v44 = 0;
              v45 = v41 >> 6;
              v46 = v26;
              do
              {
                v47 = *v46++;
                v48 = vcnt_s8(v47);
                v48.i16[0] = vaddlv_u8(v48);
                v44 += v48.i32[0];
                --v45;
              }

              while (v45);
            }

            else
            {
              v44 = 0;
            }

            v49 = vcnt_s8((v43 & ((1 << v41) - 1)));
            v49.i16[0] = vaddlv_u8(v49);
            *a2 = *(v26 + 36 + 4 * (v44 + v49.i32[0]));
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v64);
            nlp::traverseFromCompactMapCursor(v13, a2, a3, v42, a5 + 1, a6, a7, v66);
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v66);
            if (v41 > 0xFE || (*a6 & 1) != 0)
            {
              goto LABEL_62;
            }
          }

          else if (v41 > 0xFE)
          {
            goto LABEL_62;
          }

          ++v41;
        }
      }

      if (a5 < a4)
      {
        goto LABEL_39;
      }

LABEL_62:
      v15 = v64;
      goto LABEL_63;
    }

    if (*(v26 + 40))
    {
      *(a3 + a5) = 0;
      std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v64, a7, a3, a5, *(v26 + 40), a6, *(v26 + 36));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_62;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_62;
    }

    v50 = 0;
    v51 = a4 - 1;
    while (1)
    {
      *(a3 + a5) = v50;
      v52 = *(v26 + 8 * (v50 >> 6));
      if ((v52 & (1 << v50)) != 0)
      {
        if (v50 >= 0x40)
        {
          v53 = 0;
          v54 = v50 >> 6;
          v55 = v26;
          do
          {
            v56 = *v55++;
            v57 = vcnt_s8(v56);
            v57.i16[0] = vaddlv_u8(v57);
            v53 += v57.i32[0];
            --v54;
          }

          while (v54);
        }

        else
        {
          v53 = 0;
        }

        v58 = vcnt_s8((v52 & ((1 << v50) - 1)));
        v58.i16[0] = vaddlv_u8(v58);
        v59 = *(v26 + 44 + 4 * (v53 + v58.i32[0]));
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = v59;
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v66, v64);
        nlp::traverseFromCompactMapCursor(v13, a2, a3, v51, a5 + 1, a6, a7, v66);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v66);
        if (v50 > 0xFE || (*a6 & 1) != 0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 > 0xFE)
      {
        goto LABEL_62;
      }

      ++v50;
    }
  }

  if (v14)
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v65, a8);
    v15 = v65;
    nlp::traverseFromCompactMapCursorMappedLevel(v13, a2, a3, a4, a5, a6, a7, v65);
    goto LABEL_63;
  }

  if (*a2 == *(*(result + 2080) + 4))
  {
    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, a8);
    v15 = v62;
    nlp::traverseFromCompactMapCursorMappedLevel(v13, a2, a3, a4, a5, a6, a7, v62);
LABEL_63:
    result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v15);
  }

  v60 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C662825C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::traverseFromCompactMapCursorMappedLevel(uint64_t result, void *a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v27 = *MEMORY[0x1E69E9840];
  v13 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
  v14 = *(v13 + 1024);
  if (*(result + 2064))
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(a8, a7, a3, 0, *(v13 + 1024), a6, *(v13 + 1032));
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v18 = 0;
    do
    {
      *(a3 + a5) = v18;
      v19 = *(v13 + 4 * v18);
      if (v18)
      {
        v20 = a5 + 1;
      }

      else
      {
        v20 = a5;
      }

      a2[1] = 0;
      a2[2] = 0;
      *a2 = v19;
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v26, a8);
      nlp::traverseFromCompactMapCursor(v12, a2, a3, a4 - (v18 != 0), v20, a6, a7, v26);
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v26);
      if (*a6)
      {
        break;
      }

      v17 = v18++ == 255;
    }

    while (!v17);
  }

  else
  {
    if (v14)
    {
      *(a3 + a5) = 0;
      result = std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(a8, a7, a3, 0, *(v13 + 1024), a6, 0.0);
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    else if (a5 >= a4)
    {
      goto LABEL_27;
    }

    v15 = 0;
    do
    {
      *(a3 + a5) = v15;
      *a2 = *(v13 + 4 * v15);
      a2[1] = 0;
      *(a2 + 4) = 0;
      if (v15)
      {
        v16 = a5 + 1;
      }

      else
      {
        v16 = a5;
      }

      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v25, a8);
      nlp::traverseFromCompactMapCursor(v12, a2, a3, a4 - (v15 != 0), v16, a6, a7, v25);
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v25);
      if (*a6)
      {
        break;
      }

      v17 = v15++ == 255;
    }

    while (!v17);
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C66284FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::BurstTrieSetCursorWithBytes(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a1 || !a2 || !nlp::burstTrieSetCursor(a1, a2))
  {
    return 0;
  }

  return nlp::BurstTrieCursorAdvanceWithBytes(a2, a3, a4);
}

uint64_t nlp::burstTrieSetCursor(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *(a2 + 32) = a1;
  v2 = *(a1 + 2080);
  if (v2)
  {
    if (*v2 == -900339842 || *v2 == 12648430 && v2[7] == 2)
    {
      result = 1;
      *(a2 + 28) = 1;
      v4 = v2[1];
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v4;
      return result;
    }

    return 0;
  }

  *(a2 + 28) = 0;
  *(a2 + 8) = a1 | 1;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t nlp::BurstTrieCursorAdvanceWithBytes(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 28);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = *result;
        v6 = *(result + 8);
        v7 = *(result + 16);
        v8 = *(result + 20);
        result = nlp::advanceCompactMapCursor(*(result + 32), result, a2, a3);
        if (!result)
        {
          *v3 = v5;
          *(v3 + 8) = v6;
          *(v3 + 16) = v7;
          *(v3 + 20) = v8;
          return result;
        }

        return 1;
      }

      return 0;
    }

    else
    {
      v10 = *result;
      v9 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 24);
      result = nlp::advanceMapCursor(*(result + 32), result, a2, a3);
      if (result)
      {
        return 1;
      }

      *v3 = v10;
      *(v3 + 8) = v9;
      *(v3 + 16) = v11;
      *(v3 + 24) = v12;
    }
  }

  return result;
}

uint64_t nlp::advanceCompactMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *a2;
  v9 = *a2 & 3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (v8 == *(*(a1 + 2080) + 4))
      {
        v10 = nlp::advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
        return v10 & 1;
      }

LABEL_23:
      v10 = 0;
      return v10 & 1;
    }

    v20 = nlp::advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
    goto LABEL_70;
  }

  if (v9 != 2)
  {
    v21 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
    if (*(a1 + 2064))
    {
      if (a4)
      {
        v27 = *a3;
        v28 = v27 >> 6;
        v29 = v21[v27 >> 6];
        v30 = 1 << v27;
        if (((1 << v27) & *&v29) != 0)
        {
          if (v27 >= 0x40)
          {
            v31 = 0;
            v57 = v21;
            do
            {
              v58 = *v57++;
              v59 = vcnt_s8(v58);
              v59.i16[0] = vaddlv_u8(v59);
              v31 += v59.i32[0];
              --v28;
            }

            while (v28);
          }

          else
          {
            v31 = 0;
          }

          v60 = vcnt_s8(((v30 - 1) & *&v29));
          v60.i16[0] = vaddlv_u8(v60);
          v56 = v21[5].u32[v31 + v60.i32[0] + 1];
          goto LABEL_69;
        }

        goto LABEL_43;
      }

      *(a2 + 16) = v21[5].i32[0];
      *(a2 + 20) = v21[4].i32[1];
    }

    else
    {
      if (a4)
      {
        v22 = *a3;
        v23 = v22 >> 6;
        v24 = v21[v22 >> 6];
        v25 = 1 << v22;
        if (((1 << v22) & *&v24) != 0)
        {
          if (v22 >= 0x40)
          {
            v26 = 0;
            v52 = v21;
            do
            {
              v53 = *v52++;
              v54 = vcnt_s8(v53);
              v54.i16[0] = vaddlv_u8(v54);
              v26 += v54.i32[0];
              --v23;
            }

            while (v23);
          }

          else
          {
            v26 = 0;
          }

          v55 = vcnt_s8(((v25 - 1) & *&v24));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = v21[4].u32[v26 + v55.i32[0] + 1];
LABEL_69:
          nlp::updateCompactMapCursorPointer(a1, a2, v56);
          v20 = nlp::advanceCompactMapCursor(a1, a2, a3 + 1, a4 - 1);
          goto LABEL_70;
        }

LABEL_43:
        v20 = 0;
LABEL_70:
        v61 = v20 == 0;
LABEL_71:
        v10 = !v61;
        return v10 & 1;
      }

      *(a2 + 16) = v21[4].i32[0];
    }

    v20 = 1;
    goto LABEL_70;
  }

  v11 = *(a1 + 2064);
  v12 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080));
  v13 = *v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13 - 4;
    if (v13 == 4)
    {
      goto LABEL_23;
    }

    if ((v11 & 4) != 0)
    {
      if (a4)
      {
        v44 = *(a2 + 8);
        if (v44 >= v14)
        {
          goto LABEL_23;
        }

        v45 = 0;
        v46 = v12 + 1;
        while (1)
        {
          v47 = v46 + v44;
          v48 = v47[6];
          LODWORD(v49) = v48;
          if (v48 < a4)
          {
            if (v48 <= *(v47 + 2))
            {
              v49 = *(v47 + 2);
            }

            else
            {
              v49 = v47[6];
            }

            v50 = v47[6];
            while (v49 != v50)
            {
              if (v47[(v50 + *(a2 + 12)) + 7] != a3[v45 + v50])
              {
                LODWORD(v49) = v50;
                break;
              }

              if (a4 == ++v50)
              {
                LODWORD(v49) = a4;
                break;
              }
            }
          }

          v45 += v49;
          v51 = *(v47 + 2);
          if (v45 == a4)
          {
            break;
          }

          v10 = 0;
          v44 += v51 + 7;
          *(a2 + 8) = v44;
          if (v44 >= v14)
          {
            return v10 & 1;
          }
        }

        v64 = *(a2 + 12) + a4;
        *(a2 + 16) = 0;
        if (v51 + v48 == v64)
        {
          *(a2 + 16) = *v47;
        }

        goto LABEL_87;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4) | v63[10])
      {
LABEL_78:
        *(a2 + 16) = 0;
        goto LABEL_88;
      }
    }

    else
    {
      if (a4)
      {
        v15 = *(a2 + 8);
        if (v15 >= v14)
        {
          goto LABEL_23;
        }

        v16 = v12 + 1;
        v17 = *(a2 + 12);
        while (1)
        {
          v18 = v16 + v15;
          v19 = *(v18 + 2);
          if (v19 >= v17 && !memcmp(&v18[v17 + 6], a3, a4))
          {
            break;
          }

          v10 = 0;
          v15 += v19 + 6;
          *(a2 + 8) = v15;
          if (v15 >= v14)
          {
            return v10 & 1;
          }
        }

        *(a2 + 16) = 0;
        if (v19 - v17 == a4)
        {
          *(a2 + 16) = *v18;
        }

        v64 = v17 + a4;
LABEL_87:
        *(a2 + 12) = v64;
        goto LABEL_88;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4))
      {
        goto LABEL_78;
      }
    }

    *(a2 + 16) = 0;
    *(a2 + 16) = *(v63 + 1);
    goto LABEL_88;
  }

  if (v13 == 4)
  {
    goto LABEL_23;
  }

  v32 = *(a2 + 8);
  v33 = *(a2 + 12);
  v34 = *(a2 + 16);
  v35 = *(a2 + 20);
  v36 = v13 - 8;
  if (v13 == 8)
  {
    v38 = 0;
LABEL_76:
    *(a2 + 8) = v32;
    *(a2 + 12) = v33;
    *(a2 + 16) = v34;
    *(a2 + 20) = v35;
    v61 = v38 == 0;
    goto LABEL_71;
  }

  v37 = 0;
  v38 = 0;
  v39 = *(a2 + 12);
  v40 = v12 + 2;
  v41 = v33 + a4;
  while (1)
  {
    while (1)
    {
      v42 = v40 + v37;
      v43 = *(v42 + 4);
      if (v41 <= v43)
      {
        break;
      }

      v37 += v43 + 10;
      if (v37 >= v36)
      {
        goto LABEL_76;
      }
    }

    v66 = v38;
    v67 = v34;
    v68 = v33;
    v69 = v32;
    v65 = v39;
    if (!memcmp(&v42[v39 + 10], a3, a4))
    {
      break;
    }

    v33 = v68;
    v32 = v69;
    v38 = v66;
    v34 = v67;
LABEL_41:
    v37 += v43 + 10;
    v39 = v65;
    if (v37 >= v36)
    {
      goto LABEL_76;
    }
  }

  if (v41 != v43)
  {
    v34 = v67;
    v33 = v68;
    if (!v66)
    {
      v34 = 0;
      v33 = v68 + a4;
    }

    v32 = v69;
    if (!v66)
    {
      v32 = v37;
      v35 = 0.0;
    }

    v38 = 1;
    goto LABEL_41;
  }

  *(a2 + 16) = 0;
  *(a2 + 16) = *(v42 + 1);
  *(a2 + 20) = *v42;
  *(a2 + 8) = v37;
  *(a2 + 12) = v41;
LABEL_88:
  v10 = 1;
  return v10 & 1;
}

uint64_t nlp::advanceMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *(a2 + 8);
  if ((v8 & 3) == 2)
  {
    v11 = nlp::advanceMapCursorTrieList(a1, a2, a3, a4) != 0;
  }

  else
  {
    if ((v8 & 3) == 1)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(a1 + 2064))
      {
        if (a4)
        {
          v10 = 3;
          goto LABEL_10;
        }

        *(a2 + 20) = v9[2];
        *(a2 + 24) = v9[1];
      }

      else
      {
        if (a4)
        {
          v10 = 1;
LABEL_10:
          nlp::updateMapCursorPointer(a1, a2, *&v9[2 * *a3 + v10]);
          v11 = nlp::advanceMapCursor(a1, a2, a3 + 1, a4 - 1);
          return v11 & 1;
        }

        *(a2 + 20) = *v9;
      }

      v11 = 1;
      return v11 & 1;
    }

    v11 = 0;
  }

  return v11 & 1;
}

void *nlp::sharedBuffer(nlp *this)
{
  {
    v3 = 0;
    pthread_key_create(&v3, MEMORY[0x1E69E9B38]);
    nlp::sharedBuffer(void)::key = v3;
  }

  v1 = pthread_getspecific(nlp::sharedBuffer(void)::key);
  if (!v1)
  {
    v1 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    pthread_setspecific(nlp::sharedBuffer(void)::key, v1);
  }

  return v1;
}

uint64_t nlp::traverseFromMapCursor(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  LODWORD(v14) = *(result + 2064);
  v15 = *(a2 + 8) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_55;
    }

    if (v14)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v60, a8);
      v36 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
      if (!v36)
      {
        goto LABEL_41;
      }

      __dst = (v36 + 22);
      v37 = *(a2 + 16);
      do
      {
        v38 = *(v36 + 20);
        if (v38 >= v37)
        {
          v39 = v38 - v37;
          if (a6 < 0 || v39 <= a6)
          {
            if (v37)
            {
              v40 = (v36 + 22);
              v41 = __dst;
              v42 = v37;
              while (1)
              {
                v44 = *v40++;
                v43 = v44;
                v45 = *v41++;
                if (v43 != v45)
                {
                  break;
                }

                if (!--v42)
                {
                  goto LABEL_37;
                }
              }
            }

            else
            {
LABEL_37:
              v46 = v39 + a4;
              memcpy((a3 + a4), (v36 + v37 + 22), v39);
              *(a3 + v46) = 0;
              std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v60, a7, a3, v46, *(v36 + 16), a5, *(v36 + 12));
            }
          }
        }

        v36 = *v36;
      }

      while (v36);
    }

    else
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v59, a8);
      v18 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v19 = *(a2 + 16);
      if (v19 > *(v18 + 12))
      {
        __assert_rtn("traverseFromMapCursorTrieList", "BurstTrie.cpp", 1957, "cursor.prfxlen <= head->restlen");
      }

      if (v18)
      {
        v56 = (v18 + 14);
        v20 = *(a2 + 16);
        v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v57 = v14;
        while (1)
        {
          v22 = *(v21 + 12);
          if (v21 != v18)
          {
            if (v22 <= v20)
            {
              goto LABEL_39;
            }

            if (v19)
            {
              break;
            }
          }

LABEL_19:
          v29 = v22 - v19;
          if (a6 < 0 || v29 <= a6)
          {
            v14 = v20;
            v30 = v18;
            v31 = v29 + a4;
            v32 = v19;
            memcpy((a3 + a4), (v21 + v19 + 14), v29);
            *(a3 + v31) = 0;
            v33 = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, v59);
            std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v33, a7, a3, v31, *(v21 + 8), a5, 0.0);
            std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v63);
            v18 = v30;
            v20 = v14;
            LOBYTE(v14) = v57;
            v19 = v32;
          }

          v21 = *v21;
          if (!v21)
          {
            goto LABEL_39;
          }
        }

        v23 = (v21 + 14);
        v24 = v56;
        v25 = v19;
        while (1)
        {
          v27 = *v23++;
          v26 = v27;
          v28 = *v24++;
          if (v26 != v28)
          {
            break;
          }

          if (!--v25)
          {
            goto LABEL_19;
          }
        }
      }
    }

LABEL_39:
    if ((v14 & 1) == 0)
    {
      v47 = v59;
LABEL_54:
      result = std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v47);
      goto LABEL_55;
    }

LABEL_41:
    v47 = v60;
    goto LABEL_54;
  }

  if (v15)
  {
    v16 = result;
    if ((v14 & 1) == 0)
    {
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v61, a8);
      v17 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL);
      if (*v17)
      {
        std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v61, a7, a3, a4, *v17, a5, *(a2 + 24));
        if (!a6 || (*a5 & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (!a6)
      {
LABEL_47:
        v47 = v61;
        goto LABEL_54;
      }

      v48 = 0;
      v49 = v17 + 1;
      v50 = (a6 - 1);
      do
      {
        *(a3 + a4) = v48;
        nlp::updateMapCursorPointer(v16, a2, *&v49[2 * v48]);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, v61);
        nlp::traverseFromMapCursor(v16, a2, a3, a4 + 1, a5, v50, a7, v63);
        std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v63);
        if (*a5)
        {
          break;
        }

        v51 = v48++ == 255;
      }

      while (!v51);
      goto LABEL_47;
    }

    std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v62, a8);
    v34 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = *(v34 + 8);
    if (v35)
    {
      std::function<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(v62, a7, a3, a4, v35, a5, *(a2 + 24));
      if (!a6 || (*a5 & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    else if (!a6)
    {
LABEL_53:
      v47 = v62;
      goto LABEL_54;
    }

    v52 = 0;
    v53 = v34 + 12;
    v54 = (a6 - 1);
    do
    {
      *(a3 + a4) = v52;
      nlp::updateMapCursorPointer(v16, a2, *(v53 + 8 * v52));
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](v63, v62);
      nlp::traverseFromMapCursor(v16, a2, a3, a4 + 1, a5, v54, a7, v63);
      std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](v63);
      if (*a5)
      {
        break;
      }

      v51 = v52++ == 255;
    }

    while (!v51);
    goto LABEL_53;
  }

LABEL_55:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C6629194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 12;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      nlp::finishLevel<nlp::_RankedTrieLevel *,nlp::_RankedListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 4;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      nlp::finishLevel<nlp::_TrieLevel *,nlp::_ListNode *>(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

uint64_t nlp::addListNode(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, int *a7)
{
  v12 = a1;
  v13 = *a2;
  v14 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v15 = (a3 + a5);
  if (v13)
  {
    v31 = v12;
    v32 = a7;
    v16 = 0;
    v17 = 1;
LABEL_3:
    v18 = &v14[v16];
    LODWORD(v19) = v16++;
    do
    {
      v20 = *(v13 + 6);
      if (v20 + a5 == a4 && !memcmp(v15, v13 + 14, v20))
      {
        v17 = 0;
        *(v13 + 2) = a6;
        *v18 = v13;
        v13 = *v13;
        if (v13)
        {
          goto LABEL_3;
        }

        v19 = (v19 + 1);
        goto LABEL_14;
      }

      *v18++ = v13;
      v13 = *v13;
      v19 = (v19 + 1);
      ++v16;
    }

    while (v13);
    if (v17)
    {
      v12 = v31;
      a7 = v32;
      goto LABEL_13;
    }

LABEL_14:
    v23 = 1;
    v12 = v31;
    a7 = v32;
  }

  else
  {
    LODWORD(v19) = 0;
LABEL_13:
    v21 = a4 - a5;
    v22 = malloc_type_calloc(1uLL, v21 + 15, 0x1020040D0C9BDDAuLL);
    memcpy(v22 + 14, v15, v21);
    v22[v21 + 14] = 0;
    *(v22 + 6) = v21;
    *v22 = 0;
    v14[v19] = v22;
    v23 = 2;
    v19 = (v19 + 1);
    *(v22 + 2) = a6;
  }

  qsort(v14, v19, 8uLL, nlp::nodeStringCompare);
  v24 = *v14;
  v25 = *v14;
  if (v19 >= 2)
  {
    v26 = v14 + 1;
    v27 = v19 - 1;
    v28 = *v14;
    do
    {
      v29 = *v26++;
      v25 = v29;
      *v28 = v29;
      v28 = v29;
      --v27;
    }

    while (v27);
  }

  *v25 = 0;
  *a2 = v24;
  free(v14);
  *a7 = v23;
  if (v19 > *(v12 + 2088))
  {
    nlp::addListNode();
  }

  return v19;
}

int *nlp::burstLevel(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  v7 = v6;
  if (a2)
  {
    v8 = (v6 + 1);
    do
    {
      v9 = *(a2 + 6);
      v10 = a2[2];
      if (*(a2 + 6))
      {
        v11 = *&v8[8 * *(a2 + 14)];
        if (v11)
        {
          v21 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          v12 = nlp::addListNode(a1, &v21, a2 + 14, v9, 1u, v10, a3);
          v13 = v21;
          if (v12 >= *(a1 + 2088))
          {
            v13 = nlp::burstLevel(a1, v21, a3);
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v17 = v14 | v13;
          v18 = *(a2 + 14);
        }

        else
        {
          v15 = (v9 - 1);
          v16 = malloc_type_calloc(1uLL, v15 + 15, 0x1020040D0C9BDDAuLL);
          memcpy((v16 + 14), a2 + 15, v15);
          *(v16 + 14 + v15) = 0;
          *(v16 + 12) = v15;
          *(v16 + 8) = v10;
          *v16 = 0;
          v17 = v16 | 2;
          v18 = *(a2 + 14);
        }

        *&v8[8 * v18] = v17;
      }

      else
      {
        *v7 = v10;
      }

      v19 = *a2;
      free(a2);
      a2 = v19;
    }

    while (v19);
  }

  return v7;
}

uint64_t nlp::nodeStringCompare(nlp *this, const void *a2, const void *a3)
{
  v3 = *(*this + 12);
  v4 = *(*a2 + 12);
  v5 = v3 - v4;
  if (v3 >= v4)
  {
    v6 = *(*a2 + 12);
  }

  else
  {
    v6 = *(*this + 12);
  }

  LODWORD(result) = memcmp((*this + 14), (*a2 + 14), v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t nlp::addListNodeRanked(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int a5, int a6, float *a7, int *a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = *a2;
  v18 = malloc_type_calloc(8uLL, (*(a1 + 2088) + 1), 0x2004093837F09uLL);
  v19 = (a3 + a5);
  if (v17)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    do
    {
      v23 = v20;
      v24 = *(v17 + 10);
      if (v24 + a5 == a4 && !memcmp(v19, v17 + 22, v24))
      {
        *(v17 + 4) = a6;
        v25 = *(v17 + 3);
        if (*(a11 + 24))
        {
          std::function<float ()(void *,float,float)>::operator()(a11, a10, v25, a9);
        }

        else
        {
          v26 = v25 + a9;
        }

        *(v17 + 3) = v26;
        v21 = 1;
      }

      if (*(v17 + 2) > v22)
      {
        v22 = *(v17 + 2);
      }

      ++v20;
      v18[v23] = v17;
      v17 = *v17;
    }

    while (v17);
    if (v21)
    {
      v27 = 1;
      v28 = v23 + 1;
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v22 = 0.0;
  }

  if (v22 < a9)
  {
    v22 = a9;
  }

  v29 = a4 - a5;
  v30 = malloc_type_calloc(1uLL, v29 + 23, 0x10200402E77EEF7uLL);
  memcpy(v30 + 22, v19, v29);
  v30[v29 + 22] = 0;
  *(v30 + 10) = v29;
  *(v30 + 4) = a6;
  *(v30 + 2) = v22;
  *(v30 + 3) = a9;
  v28 = (v20 + 1);
  v27 = 2;
  *v30 = 0;
  v18[v20] = v30;
LABEL_18:
  qsort(v18, v28, 8uLL, nlp::nodeScoreCompare);
  v31 = *v18;
  *a7 = v22;
  v32 = v31;
  if (v28 >= 2)
  {
    v33 = (v28 - 1);
    v34 = v18 + 1;
    v35 = v31;
    do
    {
      v36 = *v34++;
      v32 = v36;
      *v35 = v36;
      *(v36 + 8) = *a7;
      v35 = v36;
      --v33;
    }

    while (v33);
  }

  *v32 = 0;
  *a2 = v31;
  free(v18);
  *a8 = v27;
  if (v28 > *(a1 + 2088))
  {
    nlp::addListNodeRanked();
  }

  return v28;
}

float *nlp::burstLevelRanked(uint64_t a1, unsigned __int16 *a2, float *a3, int *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x80CuLL, 0x10000408B9410F9uLL);
  v9 = v8;
  *a3 = 0.0;
  if (a2)
  {
    v10 = v8 + 12;
    do
    {
      v25 = 0.0;
      v11 = a2[10];
      v12 = *(a2 + 4);
      v13 = *(a2 + 3);
      v28 = 0;
      if (v11)
      {
        v14 = *&v10[8 * *(a2 + 22)];
        if (v14)
        {
          v26 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          v30 = 0;
          v15 = nlp::addListNodeRanked(a1, &v26, (a2 + 11), v11, 1u, v12, &v25, a4, v13, 0, v29);
          std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v29);
          v16 = v26;
          if (v15 >= *(a1 + 2088))
          {
            v16 = nlp::burstLevelRanked(a1, v26, &v25, a4);
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          *&v10[8 * *(a2 + 22)] = v17 | v16;
          v13 = v25;
        }

        else
        {
          v18 = (v11 - 1);
          v19 = malloc_type_calloc(1uLL, v18 + 23, 0x10200402E77EEF7uLL);
          memcpy((v19 + 22), a2 + 23, v18);
          *(v19 + 22 + v18) = 0;
          *(v19 + 20) = v18;
          *(v19 + 16) = v12;
          *(v19 + 8) = v13;
          *(v19 + 12) = v13;
          *v19 = 0;
          *&v10[8 * *(a2 + 22)] = v19 | 2;
        }
      }

      else
      {
        v9[1] = v13;
        *(v9 + 2) = v12;
      }

      std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](v27);
      v20 = *a3;
      if (v13 > *a3)
      {
        v20 = v13;
      }

      *a3 = v20;
      v21 = *a2;
      free(a2);
      a2 = v21;
    }

    while (v21);
    v22 = *a3;
  }

  else
  {
    v22 = 0.0;
  }

  *v9 = v22;
  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1C6629AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<float ()(void *,float,float)>::operator()(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t nlp::nodeScoreCompare(nlp *this, const void *a2, const void *a3)
{
  v3 = *(*this + 12);
  v4 = *(*a2 + 12);
  if (v3 == v4)
  {
    v5 = *(*this + 16);
    v6 = *(*a2 + 16);
    v7 = v5 == v6;
    if (v5 > v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else if (v3 <= v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t nlp::searchDiskLevelRanked(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v19 = *(a2 + 1032);
      v34 = a6;
      v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v20[4] = a4;
      *(v20 + a4 + 20) = 0;
      LOBYTE(v10) = v34;
      memcpy(v20 + 5, a3, a4);
      v20[2] = v18;
      *v20 = v19;
      v20[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v20, 1, &v35);
      v21 = v20[3]-- == 1;
      if (v21)
      {
        free(v20);
      }

      v17 = v35;
      if (v35)
      {
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      goto LABEL_30;
    }

    v25 = 0;
    while (1)
    {
      v26 = *(a2 + 4 * v25);
      a3[a5] = v25;
      if ((v26 & 3u) > 1uLL)
      {
        v29 = *(a1 + 2080);
        if ((v26 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
          v35 = nlp::searchDiskPageRanked(((v26 & 0xFFFFFFFC) + v29), a3, a4 + 1, a5 + 1, 0, a7, v36);
          v28 = v36;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
          v35 = nlp::searchCompactDiskLevelRanked(a1, ((v26 & 0xFFFFFFFC) + v29), a3, (a4 + 1), a5 + 1, 0, a7, v37);
          v28 = v37;
        }
      }

      else
      {
        if ((v26 & 3) == 0)
        {
          goto LABEL_23;
        }

        v27 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
        v35 = nlp::searchDiskLevelRanked(a1, (v26 & 0xFFFFFFFC) + v27, a3, (a4 + 1), a5 + 1, 0, a7, v38);
        v28 = v38;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v28);
LABEL_23:
      v17 = v35;
      if ((v35 & 1) == 0)
      {
        v21 = v25++ == 255;
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    if ((v16 & 3) == 2)
    {
      v22 = *(a1 + 2080);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
      v23 = v39;
      v24 = nlp::searchDiskPageRanked(((v16 & 0xFFFFFFFC) + v22), a3, a4, a5 + 1, v10, a7, v39);
    }

    else
    {
      v31 = *(a1 + 2080);
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v40, a8);
      v23 = v40;
      v24 = nlp::searchCompactDiskLevelRanked(a1, ((v16 & 0xFFFFFFFC) + v31), a3, a4, a5 + 1, v10, a7, v40);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v30 = *(a1 + 2080);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v41, a8);
    v23 = v41;
    v24 = nlp::searchDiskLevelRanked(a1, (v16 & 0xFFFFFFFC) + v30, a3, a4, a5 + 1, v10, a7, v41);
LABEL_29:
    v17 = v24;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v23);
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v32 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t nlp::containsKey(uint64_t result, _DWORD *a2, int a3, _BYTE *a4)
{
  if (result)
  {
    if (*result == 1)
    {
LABEL_5:
      *(result + 4) = a2[2];
      *(result + 8) = *a2;
LABEL_6:
      *a4 = 1;
      return result;
    }

    if (!*result)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_5;
    }

    v5 = 0;
    if (*(result + 48))
    {
      result = std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(result + 24, *(result + 16), a2, &v5);
      if (v5)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t nlp::searchDiskLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a6;
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0;
  if (a5 >= a4)
  {
    v18 = *(a2 + 1024);
    if (v18)
    {
      v32 = a6;
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      LOBYTE(v10) = v32;
      memcpy(v19 + 5, a3, a4);
      v19[2] = v18;
      *v19 = 0;
      v19[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v19, 1, &v33);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v17 = v33;
      if (v33)
      {
        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v10)
    {
      goto LABEL_30;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(a2 + 4 * v24);
      a3[a5] = v24;
      if ((v25 & 3u) > 1uLL)
      {
        v28 = *(a1 + 2080);
        if ((v25 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v34, a8);
          v33 = nlp::searchDiskPage(a1, ((v25 & 0xFFFFFFFC) + v28), a3, a4 + 1, a5 + 1, 0, a7, v34);
          v27 = v34;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v35, a8);
          v33 = nlp::searchCompactDiskLevel(a1, ((v25 & 0xFFFFFFFC) + v28), a3, (a4 + 1), a5 + 1, 0, a7, v35);
          v27 = v35;
        }
      }

      else
      {
        if ((v25 & 3) == 0)
        {
          goto LABEL_23;
        }

        v26 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v36, a8);
        v33 = nlp::searchDiskLevel(a1, (v25 & 0xFFFFFFFC) + v26, a3, (a4 + 1), a5 + 1, 0, a7, v36);
        v27 = v36;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v27);
LABEL_23:
      v17 = v33;
      if ((v33 & 1) == 0)
      {
        v20 = v24++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v16 = *(a2 + 4 * a3[a5]);
  if ((v16 & 3u) > 1uLL)
  {
    v21 = *(a1 + 2080);
    if ((v16 & 3) == 2)
    {
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v37, a8);
      v22 = v37;
      v23 = nlp::searchDiskPage(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v37);
    }

    else
    {
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v38, a8);
      v22 = v38;
      v23 = nlp::searchCompactDiskLevel(a1, ((v16 & 0xFFFFFFFC) + v21), a3, a4, a5 + 1, v10, a7, v38);
    }

    goto LABEL_29;
  }

  if ((v16 & 3) != 0)
  {
    v29 = *(a1 + 2080);
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v39, a8);
    v22 = v39;
    v23 = nlp::searchDiskLevel(a1, (v16 & 0xFFFFFFFC) + v29, a3, a4, a5 + 1, v10, a7, v39);
LABEL_29:
    v17 = v23;
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v22);
    goto LABEL_30;
  }

  v17 = 0;
LABEL_30:
  v30 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t nlp::searchLevelRanked(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (a4 >= a3)
  {
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = *(a1 + 4);
      v19 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v19[4] = a4;
      *(v19 + a4 + 20) = 0;
      memcpy(v19 + 5, a2, a4);
      v19[2] = v17;
      *v19 = v18;
      v19[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v19, 1, &v29);
      v20 = v19[3]-- == 1;
      if (v20)
      {
        free(v19);
      }

      v21 = v29;
      if (v29)
      {
        v21 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v21 = 0;
    }

    if (a5)
    {
      goto LABEL_26;
    }

    v22 = 0;
    v23 = a1 + 12;
    while (1)
    {
      v24 = *(v23 + 8 * v22);
      a2[a4] = v22;
      if ((v24 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
        v25 = v30;
        v26 = nlp::searchListRanked((v24 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v30);
      }

      else
      {
        if ((v24 & 3) != 1)
        {
          goto LABEL_19;
        }

        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
        v25 = v31;
        v26 = nlp::searchLevelRanked(v24 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v31);
      }

      v29 = v26;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v25);
LABEL_19:
      v21 = v29;
      if ((v29 & 1) == 0)
      {
        v20 = v22++ == 255;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v14 = *(a1 + 8 * a2[a4] + 12);
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v32, a7);
    v15 = v32;
    v16 = nlp::searchListRanked((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v32);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v21 = 0;
      goto LABEL_26;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v33, a7);
    v15 = v33;
    v16 = nlp::searchLevelRanked(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v33);
  }

  v21 = v16;
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
LABEL_26:
  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1C662A5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchLevel(int *a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  if (a4 >= a3)
  {
    v17 = *a1;
    if (*a1)
    {
      v18 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v18[4] = a4;
      *(v18 + a4 + 20) = 0;
      memcpy(v18 + 5, a2, a4);
      v18[2] = v17;
      *v18 = 0;
      v18[3] = 1;
      std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v18, 1, &v28);
      v19 = v18[3]-- == 1;
      if (v19)
      {
        free(v18);
      }

      v20 = v28;
      if (v28)
      {
        v20 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
    }

    if (a5)
    {
      goto LABEL_26;
    }

    v21 = 0;
    v22 = a1 + 1;
    while (1)
    {
      v23 = *&v22[2 * v21];
      a2[a4] = v21;
      if ((v23 & 3) == 2)
      {
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v29, a7);
        v24 = v29;
        v25 = nlp::searchList((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, a4 + 1, 0, a6, v29);
      }

      else
      {
        if ((v23 & 3) != 1)
        {
          goto LABEL_19;
        }

        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v30, a7);
        v24 = v30;
        v25 = nlp::searchLevel(v23 & 0xFFFFFFFFFFFFFFFCLL, a2, (a3 + 1), a4 + 1, 0, a6, v30);
      }

      v28 = v25;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v24);
LABEL_19:
      v20 = v28;
      if ((v28 & 1) == 0)
      {
        v19 = v21++ == 255;
        if (!v19)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  v14 = *&a1[2 * a2[a4] + 1];
  if ((v14 & 3) == 2)
  {
    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v31, a7);
    v15 = v31;
    v16 = nlp::searchList((v14 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, a4 + 1, a5, a6, v31);
  }

  else
  {
    if ((v14 & 3) != 1)
    {
      v20 = 0;
      goto LABEL_26;
    }

    std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v32, a7);
    v15 = v32;
    v16 = nlp::searchLevel(v14 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, a4 + 1, a5, a6, v32);
  }

  v20 = v16;
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
LABEL_26:
  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1C662A8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlp::searchCompactDiskLevelRanked(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v50 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v36 = a2;
        do
        {
          v37 = *v36++;
          v38 = vcnt_s8(v37);
          v38.i16[0] = vaddlv_u8(v38);
          v18 += v38.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v39 = vcnt_s8(((v17 - 1) & *&v16));
      v39.i16[0] = vaddlv_u8(v39);
      v40 = a2[5].i32[v18 + v39.i32[0] + 1];
      if ((v40 & 3u) > 1)
      {
        if ((v40 & 3) == 2)
        {
          v41 = *(a1 + 2080);
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
          v42 = v54;
          v43 = nlp::searchDiskPageRanked(((v40 & 0xFFFFFFFC) + v41), a3, a4, a5 + 1, a6, a7, v54);
        }

        else
        {
          v45 = *(a1 + 2080);
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v55, a8);
          v42 = v55;
          v43 = nlp::searchCompactDiskLevelRanked(a1, (v40 & 0xFFFFFFFC) + v45, a3, a4, a5 + 1, a6, a7, v55);
        }
      }

      else
      {
        if ((v40 & 3) == 0)
        {
          goto LABEL_36;
        }

        v44 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v56, a8);
        v42 = v56;
        v43 = nlp::searchDiskLevelRanked(a1, (v40 & 0xFFFFFFFC) + v44, a3, a4, a5 + 1, a6, a7, v56);
      }

      v23 = v43;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v42);
      goto LABEL_42;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_42;
  }

  v19 = a2[5].i32[0];
  if (!v19)
  {
    v23 = 0;
LABEL_12:
    if (a6)
    {
      goto LABEL_42;
    }

    v24 = 0;
    while (1)
    {
      if (v24 >> 6 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24 >> 6;
      }

      v26 = a2[v24 >> 6];
      if ((*&v26 & (1 << v24)) == 0)
      {
        goto LABEL_29;
      }

      if (v24 >= 0x40)
      {
        v27 = 0;
        v28 = a2;
        do
        {
          v29 = *v28++;
          v30 = vcnt_s8(v29);
          v30.i16[0] = vaddlv_u8(v30);
          v27 += v30.i32[0];
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = 0;
      }

      v31 = vcnt_s8((*&v26 & ((1 << v24) - 1)));
      v31.i16[0] = vaddlv_u8(v31);
      v32 = a2[5].i32[v27 + v31.i32[0] + 1];
      a3[a5] = v24;
      if ((v32 & 3u) > 1)
      {
        v35 = *(a1 + 2080);
        if ((v32 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
          v50 = nlp::searchDiskPageRanked((v35 + (v32 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v51);
          v34 = v51;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v50 = nlp::searchCompactDiskLevelRanked(a1, v35 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v52);
          v34 = v52;
        }
      }

      else
      {
        if ((v32 & 3) == 0)
        {
          goto LABEL_29;
        }

        v33 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
        v50 = nlp::searchDiskLevelRanked(a1, v33 + (v32 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v53);
        v34 = v53;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v34);
LABEL_29:
      v23 = v50;
      if ((v50 & 1) == 0 && ++v24 != 256)
      {
        continue;
      }

      goto LABEL_42;
    }
  }

  v20 = a2[4].i32[1];
  v21 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v21[4] = a4;
  *(v21 + a4 + 20) = 0;
  memcpy(v21 + 5, a3, a4);
  v21[2] = v19;
  *v21 = v20;
  v21[3] = 1;
  std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v21, 1, &v50);
  if (v21[3]-- == 1)
  {
    free(v21);
  }

  v23 = v50;
  if ((v50 & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = 1;
LABEL_42:
  v46 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t nlp::searchDiskPageRanked(unsigned int *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v35 = 0;
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = 0;
  v11 = a3 - a4;
  v12 = &a2[a4];
  __n = (a3 - a4);
  v13 = a1 + 2;
  v27 = v12;
  __dst = &a2[a3];
  v26 = a3;
  while (1)
  {
    v14 = v13 + v10;
    v15 = *(v14 + 4);
    if (v11 > v15 || memcmp(v14 + 10, v12, __n))
    {
      goto LABEL_14;
    }

    v16 = a5;
    if (v11 == v15)
    {
      v16 = 0;
    }

    if (v16)
    {
      goto LABEL_14;
    }

    v17 = (v15 + v8);
    v18 = (v17 - v9);
    v19 = v26;
    if (v18 >= 1)
    {
      memcpy(__dst, &v14[v15 - v18 + 10], v18);
      v19 = v17;
      v9 = v17;
    }

    a2[v19] = 0;
    v20 = *(v14 + 1);
    v21 = *v14;
    v22 = malloc_type_malloc(v19 + 21, 0x1000040A86A77D5uLL);
    v22[4] = v9;
    *(v22 + v19 + 20) = 0;
    memcpy(v22 + 5, a2, v19);
    *v22 = v21;
    v22[2] = v20;
    v22[3] = 1;
    std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v22, v11 == v15, &v35);
    v23 = v22[3] - 1;
    v22[3] = v23;
    if (!v23)
    {
      free(v22);
    }

    v9 = a3;
    v8 = a4;
    v12 = v27;
    if (v35)
    {
      return 1;
    }

    LODWORD(v15) = *(v14 + 4);
LABEL_14:
    v10 += v15 + 10;
    if (v10 >= v7)
    {
      return 0;
    }
  }
}

uint64_t std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, &v10, &v9, &v8, &v7);
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F45E9AD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t nlp::searchCompactDiskLevel(uint64_t a1, int8x8_t *a2, char *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v48 = 0;
  if (a5 < a4)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) != 0)
    {
      if (v14 >= 0x40)
      {
        v18 = 0;
        v35 = a2;
        do
        {
          v36 = *v35++;
          v37 = vcnt_s8(v36);
          v37.i16[0] = vaddlv_u8(v37);
          v18 += v37.i32[0];
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = 0;
      }

      v38 = vcnt_s8(((v17 - 1) & *&v16));
      v38.i16[0] = vaddlv_u8(v38);
      v39 = a2[4].i32[v18 + v38.i32[0] + 1];
      if ((v39 & 3u) > 1)
      {
        v40 = *(a1 + 2080);
        if ((v39 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v52, a8);
          v41 = v52;
          v42 = nlp::searchDiskPage(a1, ((v39 & 0xFFFFFFFC) + v40), a3, a4, a5 + 1, a6, a7, v52);
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v53, a8);
          v41 = v53;
          v42 = nlp::searchCompactDiskLevel(a1, (v39 & 0xFFFFFFFC) + v40, a3, a4, a5 + 1, a6, a7, v53);
        }
      }

      else
      {
        if ((v39 & 3) == 0)
        {
          goto LABEL_36;
        }

        v43 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v54, a8);
        v41 = v54;
        v42 = nlp::searchDiskLevel(a1, (v39 & 0xFFFFFFFC) + v43, a3, a4, a5 + 1, a6, a7, v54);
      }

      v22 = v42;
      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v41);
      goto LABEL_42;
    }

LABEL_36:
    v22 = 0;
    goto LABEL_42;
  }

  v19 = a2[4].i32[0];
  if (!v19)
  {
    v22 = 0;
LABEL_12:
    if (a6)
    {
      goto LABEL_42;
    }

    v23 = 0;
    while (1)
    {
      if (v23 >> 6 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 >> 6;
      }

      v25 = a2[v23 >> 6];
      if ((*&v25 & (1 << v23)) == 0)
      {
        goto LABEL_29;
      }

      if (v23 >= 0x40)
      {
        v26 = 0;
        v27 = a2;
        do
        {
          v28 = *v27++;
          v29 = vcnt_s8(v28);
          v29.i16[0] = vaddlv_u8(v29);
          v26 += v29.i32[0];
          --v24;
        }

        while (v24);
      }

      else
      {
        v26 = 0;
      }

      v30 = vcnt_s8((*&v25 & ((1 << v23) - 1)));
      v30.i16[0] = vaddlv_u8(v30);
      v31 = a2[4].i32[v26 + v30.i32[0] + 1];
      a3[a5] = v23;
      if ((v31 & 3u) > 1)
      {
        v34 = *(a1 + 2080);
        if ((v31 & 3) == 2)
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v49, a8);
          v48 = nlp::searchDiskPage(a1, (v34 + (v31 & 0xFFFFFFFC)), a3, a4 + 1, a5 + 1, 0, a7, v49);
          v33 = v49;
        }

        else
        {
          std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v50, a8);
          v48 = nlp::searchCompactDiskLevel(a1, v34 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v50);
          v33 = v50;
        }
      }

      else
      {
        if ((v31 & 3) == 0)
        {
          goto LABEL_29;
        }

        v32 = *(a1 + 2080);
        std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::__value_func[abi:ne200100](v51, a8);
        v48 = nlp::searchDiskLevel(a1, v32 + (v31 & 0xFFFFFFFC), a3, (a4 + 1), a5 + 1, 0, a7, v51);
        v33 = v51;
      }

      std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v33);
LABEL_29:
      v22 = v48;
      if ((v48 & 1) == 0 && ++v23 != 256)
      {
        continue;
      }

      goto LABEL_42;
    }
  }

  v20 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
  v20[4] = a4;
  *(v20 + a4 + 20) = 0;
  memcpy(v20 + 5, a3, a4);
  v20[2] = v19;
  *v20 = 0;
  v20[3] = 1;
  std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v20, 1, &v48);
  if (v20[3]-- == 1)
  {
    free(v20);
  }

  v22 = v48;
  if ((v48 & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = 1;
LABEL_42:
  v44 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t nlp::searchDiskPage(uint64_t a1, unsigned int *a2, char *a3, unsigned int a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v66 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v10 = a4 - a5;
  v11 = *a2;
  if ((*(a1 + 2064) & 4) != 0)
  {
    memset(__s1, 0, sizeof(__s1));
    if (v11)
    {
      v26 = 0;
      v27 = 0;
      v28 = a2 + 1;
      v53 = a5 - a4;
      __s2 = &a3[a5];
      v51 = &a3[a4];
      v54 = a2 + 1;
      do
      {
        v29 = v27;
        v27 = v28 + v26;
        v30 = v27[6];
        if (v29)
        {
          v31 = v29[6];
          if (v30 > v31)
          {
            memcpy(__s1 + v31, v29 + 7, v30 - v31);
          }
        }

        v32 = *(v27 + 2);
        v33 = v32 + v30;
        if ((v32 + v30) >= v10)
        {
          if (v9 == v8 || (v30 >= v10 ? (v34 = v10) : (v34 = v30), !memcmp(__s1, __s2, v34)))
          {
            v35 = v10 - v30;
            if (v10 - v30 < 0 || (v32 >= v35 ? (v36 = v35) : (v36 = v32), !memcmp(v27 + 7, &__s2[v30], v36)))
            {
              v37 = a6;
              if (v10 == v33)
              {
                v37 = 0;
              }

              if ((v37 & 1) == 0)
              {
                v38 = v9;
                v39 = v30 + v8;
                v40 = v30 + v8 - v38;
                if (v40 < 1)
                {
                  v39 = v38;
                }

                else
                {
                  memcpy(v51, __s1 + v30 - v40, v40);
                  v32 = *(v27 + 2);
                  LODWORD(v30) = v27[6];
                }

                v41 = v53 + v32 + v30;
                if (v41 < 1)
                {
                  v43 = a3;
                }

                else
                {
                  v42 = v41 - (v40 & ~(v40 >> 31));
                  v43 = a3;
                  memcpy(&a3[v39], &v27[v32 - v42 + 7], v42);
                  v39 += v42;
                }

                v43[v39] = 0;
                v44 = *v27;
                v45 = malloc_type_malloc(v39 + 21, 0x1000040A86A77D5uLL);
                v45[4] = v39;
                *(v45 + v39 + 20) = 0;
                memcpy(v45 + 5, v43, v39);
                *v45 = 0;
                v45[2] = v44;
                v45[3] = 1;
                std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v45, v10 == v33, &v64);
                v46 = v45[3] - 1;
                v45[3] = v46;
                if (!v46)
                {
                  free(v45);
                }

                v9 = a4;
                v28 = v54;
                if (v64)
                {
LABEL_50:
                  result = 1;
                  goto LABEL_49;
                }

                v32 = *(v27 + 2);
                v8 = a5;
              }
            }
          }
        }

        v26 += v32 + 7;
      }

      while (v26 < v11);
    }
  }

  else if (v11)
  {
    v12 = 0;
    v13 = &a3[a5];
    v14 = v10;
    v15 = a2 + 1;
    v16 = a6;
    __dst = &a3[a4];
    v50 = a4;
    v55 = v13;
    do
    {
      v17 = v15 + v12;
      v18 = *(v17 + 2);
      if (v10 <= v18 && !memcmp(v17 + 6, v13, v14))
      {
        v19 = v10 == v18 ? 0 : v16;
        if ((v19 & 1) == 0)
        {
          v20 = a4;
          v21 = v18 + a5 - a4;
          v22 = v50;
          if (v21 >= 1)
          {
            memcpy(__dst, &v17[v18 - v21 + 6], v21);
            v22 = (v18 + a5);
            v20 = v18 + a5;
          }

          a3[v22] = 0;
          v23 = *v17;
          v24 = malloc_type_malloc(v22 + 21, 0x1000040A86A77D5uLL);
          v24[4] = v20;
          *(v24 + v22 + 20) = 0;
          memcpy(v24 + 5, a3, v22);
          *v24 = 0;
          v24[2] = v23;
          v24[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a8, a7, v24, v10 == v18, &v64);
          v25 = v24[3] - 1;
          v24[3] = v25;
          if (!v25)
          {
            free(v24);
          }

          v14 = v10;
          v13 = v55;
          v16 = a6;
          if (v64)
          {
            goto LABEL_50;
          }

          LODWORD(v18) = *(v17 + 2);
        }
      }

      v12 += v18 + 6;
    }

    while (v12 < v11);
  }

  result = 0;
LABEL_49:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nlp::searchListRanked(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v33 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v27 = a3;
    while (1)
    {
      v14 = *(v9 + 10);
      if (v12 <= v14 && !memcmp(v9 + 22, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v27;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 22, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 4);
          v22 = *(v9 + 3);
          v23 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v23[4] = v19;
          *(v23 + v18 + 20) = 0;
          memcpy(v23 + 5, a2, v18);
          *v23 = v22;
          v23[2] = v21;
          v23[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v23, v20, &v33);
          v24 = v23[3] - 1;
          v23[3] = v24;
          if (!v24)
          {
            free(v23);
          }

          v10 = v33;
          v7 = a4;
          v13 = a5;
          if (v33)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t nlp::searchList(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  v32 = 0;
  if (a1)
  {
    v7 = a4;
    v9 = a1;
    v10 = 0;
    v11 = &a2[a4];
    v12 = (a3 - a4);
    v13 = a5;
    __dst = &a2[a3];
    v26 = a3;
    while (1)
    {
      v14 = *(v9 + 6);
      if (v12 <= v14 && !memcmp(v9 + 14, v11, v12))
      {
        v15 = v12 == v14 ? 0 : v13;
        if ((v15 & 1) == 0)
        {
          v16 = (v14 + v7);
          v17 = v16 - a3;
          v18 = v26;
          v19 = a3;
          if (v17 >= 1)
          {
            memcpy(__dst, v9 + v14 - v17 + 14, v17);
            v18 = v16;
            v19 = v16;
          }

          v20 = v12 == v14;
          a2[v18] = 0;
          v21 = *(v9 + 2);
          v22 = malloc_type_malloc(v18 + 21, 0x1000040A86A77D5uLL);
          v22[4] = v19;
          *(v22 + v18 + 20) = 0;
          memcpy(v22 + 5, a2, v18);
          *v22 = 0;
          v22[2] = v21;
          v22[3] = 1;
          std::function<void ()(void *,nlp::_TrieCompletion *,BOOL,BOOL *)>::operator()(a7, a6, v22, v20, &v32);
          v23 = v22[3] - 1;
          v22[3] = v23;
          if (!v23)
          {
            free(v22);
          }

          v10 = v32;
          v7 = a4;
          v13 = a5;
          if (v32)
          {
            break;
          }
        }
      }

      v9 = *v9;
      if (!v9)
      {
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t nlp::advanceCompactMapCursorMappedLevel(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v8 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2080);
  if (*(a1 + 2064))
  {
    if (!a4)
    {
      *(a2 + 16) = *(v8 + 1024);
      *(a2 + 20) = *(v8 + 1032);
      return 1;
    }
  }

  else if (!a4)
  {
    *(a2 + 16) = *(v8 + 1024);
    return 1;
  }

  nlp::updateCompactMapCursorPointer(a1, a2, *(v8 + 4 * *a3));

  return nlp::advanceCompactMapCursor(a1, a2, a3 + 1, (a4 - 1));
}

uint64_t nlp::updateCompactMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a2 != a3)
  {
    if ((a3 & 3u) <= 1uLL)
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 16) = 0;
LABEL_18:
        *a2 = a3;
        *(a2 + 8) = 0;
        return result;
      }

      v6 = *(result + 2064);
      v7 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080);
      *(a2 + 16) = *(v7 + 1024);
      if ((v6 & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 1032);
LABEL_17:
      *(a2 + 20) = v8;
      goto LABEL_18;
    }

    if ((a3 & 3) == 2)
    {
      v3 = *(result + 2064);
      if ((v3 & 4) != 0)
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      }

      else
      {
        v4 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
        if (v3)
        {
          *(a2 + 16) = v4[1];
          v8 = *v4;
          goto LABEL_17;
        }

        v5 = *v4;
      }
    }

    else
    {
      v9 = ((a3 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2080));
      if (*(result + 2064))
      {
        *(a2 + 16) = v9[10];
        v8 = v9[9];
        goto LABEL_17;
      }

      v5 = v9[8];
    }

    *(a2 + 16) = v5;
    goto LABEL_18;
  }

  return result;
}

uint64_t nlp::advanceMapCursorTrieList(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 8);
  if ((*(a1 + 2064) & 1) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *(a2 + 16);
    if (v9 > *(v8 + 12))
    {
      nlp::advanceMapCursorTrieList();
    }

    if (!v8)
    {
      LOBYTE(v10) = 0;
      goto LABEL_46;
    }

    v10 = v8;
    while (1)
    {
      v11 = *(v10 + 12);
      if (v10 != v8)
      {
        if (v9 >= v11)
        {
          goto LABEL_18;
        }

        if (v9)
        {
          v12 = (v10 + 14);
          v13 = *(a2 + 16);
          v14 = (v8 + 14);
          do
          {
            v16 = *v12++;
            v15 = v16;
            v17 = *v14++;
            if (v15 != v17)
            {
              goto LABEL_18;
            }
          }

          while (--v13);
        }
      }

      if (v9 >= v11 || a4 == 0)
      {
        LODWORD(v19) = 0;
        LODWORD(v20) = *(a2 + 16);
      }

      else
      {
        v19 = 0;
        v20 = *(a2 + 16);
        do
        {
          if (*(v10 + 14 + v20) != a3[v19])
          {
            break;
          }

          ++v20;
          ++v19;
          if (v20 >= v11)
          {
            break;
          }
        }

        while (v19 < a4);
      }

      if (v19 == a4)
      {
        *(a2 + 8) = v10 | 2;
        if (v20 == v11)
        {
          *(a2 + 16) = v11;
          *(a2 + 20) = *(v10 + 8);
        }

        else
        {
          *(a2 + 16) = v9 + a4;
        }

        LOBYTE(v10) = 1;
        goto LABEL_46;
      }

LABEL_18:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_46;
      }
    }
  }

  v36[1] = v36;
  v36[0] = *a2;
  v21 = *(a2 + 16);
  v39 = *(a2 + 20);
  v40 = v7;
  v22 = *(a2 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v23 = v36 - ((v21 + 15) & 0x1FFFFFFF0);
  v24 = *(a2 + 16);
  memcpy(v23, (v25 + 22), v24);
  v26 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
  if (v26)
  {
    v38 = 0;
    v27 = v24 + a4;
    v37 = a4;
    do
    {
      v28 = *(v26 + 20);
      if (v27 <= v28 && !memcmp((v26 + 22), v23, v24) && !memcmp((v26 + 22 + v24), a3, v37))
      {
        if (v27 == v28)
        {
          *(a2 + 8) = v26 | 2;
          v35 = *(v26 + 16);
          *(a2 + 24) = *(v26 + 12);
          *(a2 + 16) = v27;
          *(a2 + 20) = v35;
          LOBYTE(v10) = 1;
          goto LABEL_46;
        }

        v29 = v39;
        if (!v38)
        {
          v29 = 0;
          LODWORD(v21) = v21 + a4;
        }

        v30 = v40;
        if (!v38)
        {
          v30 = v26 | 2;
        }

        v40 = v30;
        if (!v38)
        {
          v22 = 0.0;
        }

        v38 = 1;
        v39 = v29;
      }

      v26 = *v26;
    }

    while (v26);
  }

  else
  {
    v38 = 0;
  }

  v31 = v40;
  *a2 = v36[0];
  *(a2 + 8) = v31;
  LOBYTE(v10) = v38;
  v32 = v39;
  *(a2 + 16) = v21;
  *(a2 + 20) = v32;
  *(a2 + 24) = v22;
LABEL_46:
  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t nlp::updateMapCursorPointer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != a3)
  {
    if ((a3 & 3u) > 1uLL)
    {
      if ((a3 & 3) != 2)
      {
        goto LABEL_15;
      }

      v3 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v3[4];
        *(a2 + 24) = v3[3];
        *a2 = a3;
        goto LABEL_15;
      }

      if (*(v3 + 6))
      {
        v4 = 0;
      }

      else
      {
        v4 = v3[2];
      }
    }

    else
    {
      if ((a3 & 3) == 0)
      {
        *(a2 + 20) = 0;
LABEL_15:
        *(a2 + 8) = a3;
        *(a2 + 16) = 0;
        return result;
      }

      v5 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
      if (*(result + 2064))
      {
        *(a2 + 20) = v5[2];
        *(a2 + 24) = v5[1];
        goto LABEL_15;
      }

      v4 = *v5;
    }

    *(a2 + 20) = v4;
    goto LABEL_15;
  }

  return result;
}

uint64_t std::__function::__value_func<float ()(void *,float,float)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(void *,float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F45E9BF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, unsigned int *a5, int *a6, uint64_t *a7)
{
  v7 = *a3;
  v8 = *a5;
  v9 = *a6;
  v10 = *a7;
  v11 = (*(a1 + 16) + *a4);
  operator new[]();
}

uint64_t std::__function::__func<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0,std::allocator<nlp::BurstTrieSearch(nlp::_BurstTrie const*,unsigned char const*,unsigned int,void *,std::function<void ()(void *,nlp::_TrieCompletion *,BOOL *)>,int)::$_0>,void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *,unsigned char const*,unsigned int,unsigned int,float,BOOL *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

CFPropertyListRef nlp::createDictionaryWithContentsOfURL(CFURLRef fileURL, const __CFURL *a2, CFErrorRef *a3, __CFError **a4)
{
  v5 = a2;
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (v7)
  {
    v9 = v7;
    if (CFReadStreamOpen(v7) && (!v5 ? (v11 = 0) : (v11 = 2), v12 = CFPropertyListCreateWithStream(0, v9, 0, v11, 0, 0), CFReadStreamClose(v9), v12))
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFDictionaryGetTypeID())
      {
        if (a3)
        {
          *a3 = nlp::createErrorWithMessageAndURL(@"Property list at URL is not a dictionary", fileURL, v14);
        }

        CFRelease(v12);
        goto LABEL_15;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }

      v12 = 0;
      *a3 = nlp::createErrorWithMessageAndURL(@"File at URL is not a valid property list", fileURL, v10);
    }

LABEL_16:
    CFRelease(v9);
    return v12;
  }

  v12 = 0;
  if (a3)
  {
    *a3 = nlp::createErrorWithMessageAndURL(@"File at URL is not readable", fileURL, v8);
  }

  return v12;
}

void sub_1C662C8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFReadStream *>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFErrorRef nlp::createErrorWithMessageAndURL(nlp *this, CFURLRef anURL, const __CFURL *a3)
{
  v4 = CFURLCopyPath(anURL);
  v5 = *MEMORY[0x1E695E480];
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@: %@", this, v4);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], v6);
  v8 = CFErrorCreate(v5, @"com.apple.NLPUtils.ErrorDomain", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

void sub_1C662CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFReadStream *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void __normalizeRelationLabelString_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "[POMMES][SearchTool][Query Normalization] Error creating apostropheSRegex: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void QP::Embedder::preheat()
{
  dispatch_once(&embeddingLogger(void)::token, &__block_literal_global_3);
}

{
  dispatch_once(&embeddingLogger(void)::token, &__block_literal_global_3);
}

void copyEmbeddingDataForS3RTestID_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void copyEmbeddingDataForInputs_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void copyEmbeddingDataForInputs_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void copyEmbeddingDataForInputs_cold_11(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] %@");
  v3 = *MEMORY[0x1E69E9840];
}

void copyEmbeddingDataForInputs_cold_14(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void copyEmbeddingDataForInputs_cold_15(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Failed to serialize the embedding data dictionary with error: %@");
  v3 = *MEMORY[0x1E69E9840];
}

void copyEmbeddingDataForInputs_cold_19(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __embeddingGeneratorPreheatAsync_block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2048;
  *&v4[14] = *(*(*a2 + 8) + 24) / 1000000.0;
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, a2, a3, "[QPNLU] Embedding preheat failed (%@) (time=%.6fms)", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void embeddingGeneratorPreheatSync_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x1E69E9840]);
  *v5 = 134218242;
  *&v5[4] = *(v1 + 24) / 1000000.0;
  *&v5[12] = 2112;
  *&v5[14] = *(*v2 + 40);
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v2, v3, "[QPNLU] Embedding preheat failed (time=time=%.6fms) (%@)", *v5, *&v5[8], *&v5[16]);
  v4 = *MEMORY[0x1E69E9840];
}

void QP::Formatter::loadFormatterResource()
{
  dispatch_once(&formatterLogger(void)::token, &__block_literal_global_6);
}

{
  dispatch_once(&formatterLogger(void)::token, &__block_literal_global_6);
}

void QP::Formatter::updateParseWithAttribute(void *a1)
{
  _Block_object_dispose(a1, 8);
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  if (v3 < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t QP::Lexer::Lexer(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return MEMORY[0x1C695B850](a2, 0x20C40D91ED9E0);
}

void QP::LLMParser::parse()
{
  dispatch_once(&llmParserLogger(void)::token, &__block_literal_global_134);
}

{
  dispatch_once(&llmParserLogger(void)::token, &__block_literal_global_134);
}

void QP::LLMParser::parseInternal(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 48);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1C6584000, log, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] spQUParse from LLM Parse:%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void QP::LLMParser::parseInternal(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 48);
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Got empty QU Parse from LLM spQUParse, skipping generating QUOutput", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void QP::ParserConfiguration::loadConfigurationResource(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "QueryParser: %@ (error)", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void QP::ParserGrammar::loadParserGrammarResource()
{
  dispatch_once(&grammarLogger(void)::token, &__block_literal_global_11);
}

{
  dispatch_once(&grammarLogger(void)::token, &__block_literal_global_11);
}

void QP::ParserGrammar::fallbackToCFG(CFURLRef *a1, const __CFString *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = CFURLGetString(*a1);
  v7 = 136315394;
  CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
  v9 = 2080;
  v10 = CFStringGetCStringPtr(a2, 0x8000100u);
  _os_log_error_impl(&dword_1C6584000, a3, OS_LOG_TYPE_ERROR, "Failed loading %s. Falling back to %s.", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void QP::ParserGrammar::tokenCompletions(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1C6584000, a2, OS_LOG_TYPE_FAULT, "m_completion_keys is missing an entry for key %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void QP::QueryParserEngine::init()
{
  dispatch_once(&parserLogger(void)::token, &__block_literal_global_15);
}

{
  dispatch_once(&parserLogger(void)::token, &__block_literal_global_15);
}

uint64_t QP::QueryParserEngine::init(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_5(a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v2);
  }

  return MEMORY[0x1C695B850](v1, 0x60C40737A016DLL);
}

{
  v3 = OUTLINED_FUNCTION_5(a1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v2);
  }

  return MEMORY[0x1C695B850](v1, 0x10F2C40A327DDDALL);
}

void QP::QueryParserEngine::loadKnowledgeSource(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v1 = OUTLINED_FUNCTION_4(a1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v1 = OUTLINED_FUNCTION_4(a1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v1 = OUTLINED_FUNCTION_4(a1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  OUTLINED_FUNCTION_2_0();
}

void QP::QueryParserEngine::setString(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  v5 = 2112;
  v6 = v1;
  _os_log_debug_impl(&dword_1C6584000, v2, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] queryRef (%@)", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void QP::QueryParserEngine::embeddingString(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 8) + 48);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v2, v3, "[QPNLU][qid=%ld] Did not request any query embedding due to nil inputs / keysarray", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Empty photo embedding string from parser", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Modified photo embedding string is empty, not requesting a photos query embedding", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Modified photo embedding string is nil, not requesting a photos query embedding", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Failed to get embedding string from U2 parser", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v3, v4, "[QPNLU][qid=%ld] Text embedding string is empty (%@), not requesting a text query embedding");
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v3, v4, "[QPNLU][qid=%ld] Text embedding string is nil (%@), not requesting a text query embedding");
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Did not request any query embedding", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t QP::QueryParserEngine::embeddingString(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 8);
  v6 = 134218240;
  v7 = v2;
  v8 = 2048;
  v9 = v3;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Unsafe intent for context '%lu', avoid embedding search", &v6, 0x16u);
  if (parserLogger(void)::token == -1)
  {
    result = 1;
  }

  else
  {
    dispatch_once(&parserLogger(void)::token, &__block_literal_global_15);
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void std::construct_at[abi:ne200100]<QP::U2Parser,std::shared_ptr<QP::ParserConfiguration> &,std::shared_ptr<QP::ParserGrammar> &,std::shared_ptr<QP::Lexer> &,QP::U2Parser*>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*v1);
  }
}

uint64_t QP::Formatter::Formatter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_4(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return MEMORY[0x1C695B850](v1, 0x60C40FA586727);
}

void QPSpotlightKnowledgeContextUpdateResources(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "safety: unable to load config %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void QPSpotlightKnowledgeContextUpdateResources(int *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "safety: unsupported major version: %d != %d", v5, 0xEu);
  v4 = *MEMORY[0x1E69E9840];
}

void QPSpotlightKnowledgeContextUpdateResources()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_1C6584000, v0, v1, "safety: unable to load data map", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_1C6584000, v0, v1, "safety: missing resource", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_1C6584000, v0, v1, "safety: missing config", v2, v3, v4, v5, v6);
}

void ___ZL42QPSpotlightKnowledgeContextUpdateResourcesP26_SpotlightKnowledgeContexthU13block_pointerFvP9__CFErrorE_block_invoke_cold_3(os_log_t log, float a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "unable to load lexicon cache in %.1fms", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void QP::isSupportedQULanguage()
{
  dispatch_once(&QP::isSupportedQULanguage(NSLocale *)::onceToken, &__block_literal_global_20);
}

{
  dispatch_once(&u2ParserLogger(void)::token, &__block_literal_global_559);
}

void QP::U2Parser::U2Parser(std::__shared_weak_count **a1, std::__shared_weak_count **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }

  if (*(a3 + 79) < 0)
  {
    operator delete(*(a3 + 56));
  }
}

void QP::U2Parser::lexemeForArgMediaTypeWithRange(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = 138412546;
  v5 = a2;
  v6 = 2080;
  v7 = a1;
  _os_log_debug_impl(&dword_1C6584000, log, OS_LOG_TYPE_DEBUG, "Found matching Media lexeme for %@ with type %s", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void QP::U2Parser::parseInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_1C6584000, v1, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Starting U2 parse", v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] ECR request for all visual identifiers failed: %@");
  v3 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Invalid U2 output", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Unable to parse: token not found in user query", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Empty U2 output", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_0_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, v1, v2, "[QPNLU][qid=%ld] Unable to parse: no locale set", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void QP::U2Parser::parseInternal(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, a2, a3, "[QPNLU][qid=%ld] U2 parsing timed out", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void QP::U2Parser::parseInternal(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = 25;
  _os_log_fault_impl(&dword_1C6584000, a2, OS_LOG_TYPE_FAULT, "[QPNLU][qid=%ld] [Recurring Failure] U2 parsing timed out %d times", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void QP::U2Parser::parseInternal(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_1(a1, a2);
  *v2 = 134217984;
  *v3 = v4;
  _os_log_debug_impl(&dword_1C6584000, v6, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Skipping token that was part of a previous token group", v5, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1(a1, a2);
  *v2 = 134217984;
  *v3 = v4;
  _os_log_debug_impl(&dword_1C6584000, v6, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] Successfully grounded person", v5, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1(a1, a2);
  *v2 = 134217984;
  *v3 = v4;
  _os_log_error_impl(&dword_1C6584000, v6, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Unable to parse: unable to find range for ARG_TIME group", v5, 0xCu);
}

void QP::createEmbeddingString(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, a2, a3, "[QPNLU][qid=%ld] no noun present in query (%@) avoiding embedding string", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void QP::createEmbeddingString(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1C6584000, a2, a3, "[QPNLU][qid=%ld] embedding search disabled , part of control", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void ___ZN2QPL26u2UnderstandingWithTimeoutEPU31objcproto20QUUnderstandingModel11objc_objectPK10__CFStringlP7QUSpansP8NSNumberbjPU15__autoreleasingP7NSError_block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1C6584000, v2, v3, "[QPNLU][qid=%ld] Unable to use U2: %@");
  v4 = *MEMORY[0x1E69E9840];
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFCalendarGetMaximumRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit unit)
{
  v2 = MEMORY[0x1EEDB6B78](calendar, unit);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFCalendarGetRangeOfUnit(CFCalendarRef calendar, CFCalendarUnit smallerUnit, CFCalendarUnit biggerUnit, CFAbsoluteTime at)
{
  v4 = MEMORY[0x1EEDB6B88](calendar, smallerUnit, biggerUnit, at);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x1EEDB7A68](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}