void sub_1C65AACAC(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 160), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 96), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 88), 0);
  _Unwind_Resume(a1);
}

void ___ZNK2QP16HolidayReference28updateDateValuesForLookupKeyEP14__CFDictionaryPK10__CFStringi_block_invoke(uint64_t a1, char *__s1, size_t a3, __int128 *a4)
{
  if (!strncmp(__s1, "Day", a3))
  {
    v13 = *a4;
    v15 = *(a4 + 2);
    valuePtr = _MDPlistNumberGetIntValue();
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*(a1 + 32), @"Day", v10);
    if (!v10)
    {
      return;
    }

    goto LABEL_12;
  }

  if (strncmp(__s1, "Month", a3))
  {
    if (!strncmp(__s1, "NoDefinition", a3))
    {
      v8 = *(a1 + 32);
      v9 = *MEMORY[0x1E695E4D0];

      CFDictionarySetValue(v8, @"NoDefinition", v9);
    }

    return;
  }

  v14 = *a4;
  v16 = *(a4 + 2);
  valuePtr = _MDPlistNumberGetIntValue();
  v11 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(*(a1 + 32), @"Month", v10);
  v12 = CFNumberCreate(v11, kCFNumberIntType, (a1 + 40));
  if (v12)
  {
    CFDictionarySetValue(*(a1 + 32), @"Year", v12);
    CFRelease(v12);
  }

  if (v10)
  {
LABEL_12:
    CFRelease(v10);
  }
}

void sub_1C65AB01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

_DWORD *QP::extractJulianEasterInYear(_DWORD *this, int *a2, int *a3)
{
  if (a3 <= 0)
  {
    v3 = -(-a3 & 3);
  }

  else
  {
    v3 = a3 & 3;
  }

  v4 = 4 * (a3 % 7) + 2 * v3 + 34;
  v5 = v4 - 7 * ((v4 - (19 * (a3 % 19) + 15 - 30 * ((((34953 * (19 * (a3 % 19) + 15)) >> 16) >> 4) + ((((34953 * (19 * (a3 % 19) + 15)) >> 16) & 0x8000) >> 15)))) / 7) + 114;
  v6 = 9 * (v4 - 7 * ((v4 - (19 * (a3 % 19) + 15 - 30 * ((((34953 * (19 * (a3 % 19) + 15)) >> 16) >> 4) + ((((34953 * (19 * (a3 % 19) + 15)) >> 16) & 0x8000) >> 15)))) / 7) + 114);
  v7 = (((v5 - BYTE1(v6)) >> 1) + (v6 >> 8)) >> 4;
  v8 = (v5 - 31 * v7);
  if (this)
  {
    *this = (v8 + 13) % QP::extractJulianEasterInYear(int *,int *,int)::lastDayOfMonthLeapYear[v7 - 1] + 1;
  }

  if (a2)
  {
    *a2 = (v8 + 13) / QP::extractJulianEasterInYear(int *,int *,int)::lastDayOfMonthLeapYear[v7 - 1] + v7;
  }

  return this;
}

_DWORD *QP::extractGregorianEasterInYear(_DWORD *this, unsigned int *a2, int *a3)
{
  v3 = a3 % 19;
  v4 = a3 / 100;
  v5 = a3 % 100;
  v6 = (a3 / 100) & 3;
  if (a3 / -100 >= 0)
  {
    v6 = -((a3 / -100) & 3);
  }

  v7 = ((1431655765 * (v4 + (v4 + 8) / -25 + 1)) >> 32) - (v4 + (v4 + 8) / -25 + 1);
  v8 = (v4 + a3 / -400 + 19 * v3 + (v7 >> 1) + (v7 >> 31) + 15) % 30;
  v9 = v5 + ((v5 >> 13) & 3);
  v10 = (2 * (v6 + (v9 >> 2)) + ((v9 & 0xFC) - v5 + 32) - v8) % 7;
  v11 = (37201 * (v3 + 11 * v8 + 22 * v10)) >> 16;
  v12 = HIBYTE(v11) + ((v11 & 0x8000) >> 15);
  if (this)
  {
    v13 = 9 * (v10 + v8 - 7 * v12 + 114);
    *this = (v10 + v8 - 7 * v12 + 114 - 31 * ((((v10 + v8 - 7 * v12 + 114 - BYTE1(v13)) >> 1) + (v13 >> 8)) >> 4) + 1);
  }

  if (a2)
  {
    *a2 = (((v10 + v8 - 7 * v12 + 114 - ((9 * (v10 + v8 - 7 * v12 + 114)) >> 8)) >> 1) + ((9 * (v10 + v8 - 7 * v12 + 114)) >> 8)) >> 4;
  }

  return this;
}

BOOL QP::HolidayReference::containsHoliday(QP::HolidayReference *this, const __CFString *a2)
{
  v2 = 0;
  if (a2 && *(this + 2))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"/%@", a2);
    if (v4)
    {
      v5 = v4;
      v2 = QP::HolidayReference::containsLookupKey(this, v4);
      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_1C65AB3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFDictionary *QP::HolidayReference::copyValuesForYear(QP::HolidayReference *this, const __CFString *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  Mutable = 0;
  v40 = *MEMORY[0x1E69E9840];
  if (a5 < 2005 || !a4 || !a3 || !a2 || !*(this + 2))
  {
    goto LABEL_68;
  }

  v38 = 0;
  v39 = 0;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (CFStringsAreEqual(a3, @"generic") || CFStringsAreEqual(a3, @"general"))
  {
    v12 = CFStringCreateWithFormat(v11, 0, @"/%@/%@", a2, a4);
    v39 = v12;
    if (QP::HolidayReference::containsLookupKey(this, v12))
    {
      v13 = QP::HolidayReference::copyStringForLookupKey(this, v12);
      v38 = v13;
      v14 = CFStringCreateWithFormat(v11, 0, @"/%@/%@.%@", a2, a4, v13);
      if (v12)
      {
        CFRelease(v12);
      }

      v39 = v14;
      if (QP::HolidayReference::containsLookupKey(this, v14))
      {
        QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v14, a5);
        CFDictionarySetValue(Mutable, @"Calendar", v13);
      }
    }

    else
    {
      v15 = CFStringCreateWithFormat(v11, 0, @"/%@/default", a2);
      if (v12)
      {
        CFRelease(v12);
      }

      v39 = v15;
      v16 = QP::HolidayReference::copyStringForLookupKey(this, v15);
      v17 = v16;
      v38 = v16;
      if (v16)
      {
        v14 = CFStringCreateWithFormat(v11, 0, @"/%@/%@.%@", a2, a4, v16);
        if (v15)
        {
          CFRelease(v15);
        }

        v39 = v14;
        if (QP::HolidayReference::containsLookupKey(this, v14))
        {
          QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v14, a5);
          CFDictionarySetValue(Mutable, @"Calendar", v17);
        }
      }

      else
      {
        v14 = v15;
      }
    }

    goto LABEL_31;
  }

  MutableCopy = CFStringCreateMutableCopy(v11, 0, a3);
  v37 = MutableCopy;
  CFStringUppercase(MutableCopy, 0);
  v14 = CFStringCreateWithFormat(v11, 0, @"/%@/%@.%@", a2, a4, MutableCopy);
  v39 = v14;
  if (QP::HolidayReference::containsLookupKey(this, v14))
  {
    QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v14, a5);
    CFDictionarySetValue(Mutable, @"Calendar", MutableCopy);
    goto LABEL_23;
  }

  v19 = CFStringCreateWithFormat(v11, 0, @"/%@/default.%@", a2, MutableCopy);
  if (v14)
  {
    CFRelease(v14);
  }

  v39 = v19;
  if (QP::HolidayReference::containsLookupKey(this, v19))
  {
    QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v19, a5);
    CFDictionarySetValue(Mutable, @"Calendar", MutableCopy);
    v14 = v19;
LABEL_23:
    if (!MutableCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v14 = v19;
  if (MutableCopy)
  {
LABEL_30:
    CFRelease(MutableCopy);
  }

LABEL_31:
  if (!CFDictionaryGetCount(Mutable))
  {
    v20 = CFStringCreateWithFormat(v11, 0, @"/%@/default", a2);
    if (v14)
    {
      CFRelease(v14);
    }

    v39 = v20;
    if (QP::HolidayReference::containsLookupKey(this, v20))
    {
      v21 = QP::HolidayReference::copyStringForLookupKey(this, v20);
      if (v38)
      {
        CFRelease(v38);
      }

      v38 = v21;
      v14 = CFStringCreateWithFormat(v11, 0, @"/%@/default.%@", a2, v21);
      if (v20)
      {
        CFRelease(v20);
      }

      v39 = v14;
      if (QP::HolidayReference::containsLookupKey(this, v14))
      {
        QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v14, a5);
        CFDictionarySetValue(Mutable, @"Calendar", v21);
      }
    }

    else
    {
      v14 = v20;
    }
  }

  if (CFDictionaryContainsKey(Mutable, @"RootHoliday"))
  {
    Value = CFDictionaryGetValue(Mutable, @"RootHoliday");
    if (CFStringsAreEqual(a2, Value))
    {
      v23 = CFDictionaryGetValue(Mutable, @"Calendar");
      if (v23)
      {
        v24 = CFStringCreateWithFormat(v11, 0, @"/%@/default.%@", a2, v23);
        if (v14)
        {
          CFRelease(v14);
        }

        v39 = v24;
        if (QP::HolidayReference::containsLookupKey(this, v24))
        {
          CFDictionaryRemoveAllValues(Mutable);
          QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v24, a5);
        }

        else if (QP::HolidayReference::containsLookupKey(this, @"default"))
        {
          v31 = QP::HolidayReference::copyStringForLookupKey(this, @"default");
          v37 = v31;
          v32 = CFStringCreateWithFormat(v11, 0, @"/%@/default.%@", a2, v31);
          if (v24)
          {
            CFRelease(v24);
          }

          v39 = v32;
          if (QP::HolidayReference::containsLookupKey(this, v32))
          {
            CFDictionaryRemoveAllValues(Mutable);
            QP::HolidayReference::updateDateValuesForLookupKey(this, Mutable, v32, a5);
          }

          if (v31)
          {
            CFRelease(v31);
          }

          v24 = v32;
        }
      }

      else
      {
        CFDictionaryRemoveAllValues(Mutable);
        v24 = v14;
      }

      QP::HolidayReference::normalizeDateValues(this, Mutable, a5, 0);
      v14 = v24;
    }

    else
    {
      valuePtr = 0;
      v25 = CFDictionaryGetValue(Mutable, @"DayOffset");
      CFNumberGetValue(v25, kCFNumberIntType, &valuePtr);
      v26 = QP::HolidayReference::copyValuesForYear(this, Value, a3, a4, a5);
      v37 = v26;
      CFDictionaryRemoveAllValues(Mutable);
      Count = CFDictionaryGetCount(v26);
      MEMORY[0x1EEE9AC00](Count);
      v28 = (&v35 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v28, 8 * Count);
      MEMORY[0x1EEE9AC00](v29);
      v30 = v28;
      bzero(v28, 8 * Count);
      CFDictionaryGetKeysAndValues(v26, v28, v28);
      if (Count >= 1)
      {
        do
        {
          CFDictionarySetValue(Mutable, *v28++, *v30++);
          --Count;
        }

        while (Count);
      }

      QP::HolidayReference::normalizeDateValues(this, Mutable, a5, valuePtr);
      if (v26)
      {
        CFRelease(v26);
      }
    }
  }

  else
  {
    QP::HolidayReference::normalizeDateValues(this, Mutable, a5, 0);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_68:
  v33 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void sub_1C65ABB14(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::LexemeConverter::LexemeConverter(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  *result = *a2;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a3[1];
  *(result + 16) = *a3;
  *(result + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  if (*a2)
  {
    if (*a3)
    {
      operator new();
    }
  }

  return result;
}

void sub_1C65ABD44(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v4, 0x60C405C6656D0);
  v6 = v1[8];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::unique_ptr<QP::Transcriber>::reset[abi:ne200100](v3, 0);
  v7 = v1[5];
  v1[5] = 0;
  if (v7)
  {
    MEMORY[0x1C695B850](v7, 0x60C4044C4A2DFLL);
  }

  std::unique_ptr<QP::DateConverter>::reset[abi:ne200100](v2, 0);
  v8 = v1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = v1[1];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

QP::DateConverter *std::unique_ptr<QP::DateConverter>::reset[abi:ne200100](QP::DateConverter **a1, QP::DateConverter *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::DateConverter::~DateConverter(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

QP::Transcriber *std::unique_ptr<QP::Transcriber>::reset[abi:ne200100](QP::Transcriber **a1, QP::Transcriber *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::Transcriber::~Transcriber(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t QP::LexemeConverter::loadResourceURL(QP::DateConverter **this, CFURLRef url)
{
  if (!url)
  {
    goto LABEL_9;
  }

  PathComponent = CFURLCopyLastPathComponent(url);
  v5 = CFStringsAreEqual(PathComponent, @"reference.mdplist");
  if (v5)
  {
    LOBYTE(this) = QP::DateConverter::loadDateReferenceResourceURL(this[4], url);
    if (!PathComponent)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRelease(PathComponent);
    goto LABEL_8;
  }

  if (CFStringsAreEqual(PathComponent, @"geobase.map"))
  {
    operator new();
  }

  if (PathComponent)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (!v5)
  {
LABEL_9:
    LOBYTE(this) = 1;
  }

  return this & 1;
}

void sub_1C65ABF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1C695B850](v2, 0x60C4044C4A2DFLL);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::LexemeConverter::enumerateEntitiesWithString(uint64_t a1, const __CFString *a2, const __CFString *a3, CFIndex a4, CFIndex a5, CFIndex a6, CFIndex a7)
{
  v16.location = a4;
  v16.length = a5;
  if (a2 && a4 != -1)
  {
    result = xmmword_1C6631880;
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    CFStringFindCharacterFromSet(a2, Predefined, v16, 0, &result);
    if (a3)
    {
      v12 = CFStringHasPrefix(a3, @"QuotedText") != 0;
    }

    else
    {
      v12 = 0;
    }

    if (result.location != -1 && result.location == v16.location && result.length == v16.length)
    {
      std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[6],CFRange &,0>();
    }

    if (v12)
    {
      v17.location = a6;
      v17.length = a7;
      v14 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a2, v17);
      QP::getUTF8StringFromCFString(v14, __p);
      std::allocate_shared[abi:ne200100]<QP::LexemeQuotedText,std::allocator<QP::LexemeQuotedText>,CFRange &,std::string,0>();
    }

    if (a3)
    {
      memset(__p, 0, sizeof(__p));
      QP::getUTF8StringFromCFString(a3, __p);
      std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
    }

    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[5],CFRange &,0>();
  }
}

void sub_1C65AC2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void QP::LexemeConverter::enumerateEntitiesWithTypeAndValues(uint64_t *a1, CFStringRef theString, uint64_t a3, std::string::size_type a4, const __CFString *a5, const __CFDictionary *a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v54 = a4;
  if (!theString || !a5 || (a3 + a4) > CFStringGetLength(theString))
  {
    goto LABEL_23;
  }

  if (a6)
  {
    Count = CFDictionaryGetCount(a6);
  }

  else
  {
    Count = 0;
  }

  v11 = a1[2];
  QP::getUTF8StringFromCFString(a5, &v50);
  v12 = QP::ParserGrammar::symbolID(v11, &v50);
  v13 = v12;
  if (SBYTE7(v51) < 0)
  {
    operator delete(v50);
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else if (!v12)
  {
    goto LABEL_23;
  }

  v14 = QP::ParserGrammar::symbolFlag(a1[2], v13);
  if (Count)
  {
    v39[0] = v39;
    v15 = 8 * Count;
    MEMORY[0x1EEE9AC00](v14);
    v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v16, v15);
    MEMORY[0x1EEE9AC00](v17);
    bzero(v16, v15);
    CFDictionaryGetKeysAndValues(a6, v16, v16);
    if (CFStringsAreEqual(a5, @"Field"))
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      v40[0] = &MutableCopy->isa;
      CFStringLowercase(MutableCopy, *(*a1 + 112));
      v19 = *(*a1 + 232);
      if (v19 && CFDictionaryContainsKey(v19, MutableCopy))
      {
        QP::getUTF8StringFromCFString(a5, &v50);
        std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string,CFRange &,0>();
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_23;
    }

    if (CFStringsAreEqual(a5, @"Person") || CFStringsAreEqual(a5, @"Contact"))
    {
      std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[7],CFRange &,0>();
    }

    if (CFStringHasSuffix(a5, @"Location"))
    {
      if (a1[7] && *(*a1 + 76) == 1)
      {
        *&v50 = 0;
        *(&v50 + 1) = &v50;
        *&v51 = 0x16002000000;
        *(&v51 + 1) = __Block_byref_object_copy__6;
        memset(&v52[8], 0, 312);
        *v52 = __Block_byref_object_dispose__6;
        QP::getUTF8StringFromCFString(a5, v48);
        QP::getUTF8StringFromCFString(theString, &v46);
        QP::LexemeLocationExtended::LexemeLocationExtended(&v52[8], v48, &v46, v53, v54);
        if (v47 < 0)
        {
          operator delete(v46);
        }

        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        std::allocate_shared[abi:ne200100]<QP::LexemeLocationExtended,std::allocator<QP::LexemeLocationExtended>,QP::LexemeLocationExtended&,0>();
      }

      v51 = 0u;
      memset(v52, 0, 112);
      v50 = 0u;
      QP::getUTF8StringFromCFString(a5, v44);
      QP::getUTF8StringFromCFString(theString, &v42);
      QP::LexemeLocation::LexemeLocation(&v50, v44, &v42, v53, v54);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      std::allocate_shared[abi:ne200100]<QP::LexemeLocation,std::allocator<QP::LexemeLocation>,QP::LexemeLocation&,0>();
    }

    if (CFStringFind(a5, @"FlightInformation", 0).location != -1)
    {
      Value = CFDictionaryGetValue(a6, @"Value");
      v22 = CFDictionaryGetValue(a6, @"FlightNumber");
      if (Value)
      {
        v23 = v22;
        if (v22)
        {
          QP::getUTF8StringFromCFString(Value, &v50);
          QP::getUTF8StringFromCFString(v23, v41);
          std::allocate_shared[abi:ne200100]<QP::LexemeExtended,std::allocator<QP::LexemeExtended>,char const(&)[18],std::string,std::string,CFRange &,0>();
        }
      }

      goto LABEL_23;
    }

    if (CFStringFind(a5, @"TrackingNumber", 0).location != -1)
    {
      v24 = CFDictionaryGetValue(a6, @"Value");
      v25 = CFDictionaryGetValue(a6, @"Carrier");
      if (v24)
      {
        v26 = v25;
        if (v25)
        {
          QP::getUTF8StringFromCFString(v24, &v50);
          QP::getUTF8StringFromCFString(v26, v41);
          std::allocate_shared[abi:ne200100]<QP::LexemeExtended,std::allocator<QP::LexemeExtended>,char const(&)[15],std::string,std::string,CFRange &,0>();
        }
      }

      goto LABEL_23;
    }

    if (CFStringFind(a5, @"Money", 0).location != -1)
    {
      v27 = CFDictionaryGetValue(a6, @"CurrencyUnit");
      v40[0] = 0;
      QP::NumericConverter::numericValueForTypeWithValues(a1[5], a5, a6, v40);
      if (v40[0] && v27)
      {
        QP::getUTF8StringFromCFString(v27, &v50);
        std::allocate_shared[abi:ne200100]<QP::LexemeExtendedNumber,std::allocator<QP::LexemeExtendedNumber>,char const(&)[6],std::unique_ptr<QP::NumericValue>,std::string,CFRange &,0>();
      }

LABEL_49:
      std::unique_ptr<QP::NumericValue>::~unique_ptr[abi:ne200100](v40);
      goto LABEL_23;
    }

    if (CFStringFind(a5, @"URL", 0).location == -1)
    {
      if (CFStringsAreEqual(a5, @"PhoneNumber"))
      {
        v31 = CFDictionaryGetValue(a6, @"Value");
        if (v31)
        {
          v32 = CFDictionaryGetValue(a6, @"PhoneNumber");
          QP::getUTF8StringFromCFString(v31, &v50);
          if (v32)
          {
            QP::getUTF8StringFromCFString(v32, v41);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v41, "");
          }

          std::allocate_shared[abi:ne200100]<QP::LexemeExtended,std::allocator<QP::LexemeExtended>,char const(&)[12],std::string,std::string,CFRange &,0>();
        }
      }

      else if (CFStringsAreEqual(a5, @"FullAddress"))
      {
        v33 = CFDictionaryGetValue(a6, @"Value");
        if (v33)
        {
          v34 = CFDictionaryGetValue(a6, @"Zip");
          QP::getUTF8StringFromCFString(v33, &v50);
          if (v34)
          {
            QP::getUTF8StringFromCFString(v34, v41);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v41, "");
          }

          std::allocate_shared[abi:ne200100]<QP::LexemeExtended,std::allocator<QP::LexemeExtended>,char const(&)[12],std::string,std::string,CFRange &,0>();
        }
      }

      else
      {
        if (CFStringFind(a5, @"Email", 0).location != -1)
        {
          std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[6],CFRange &,0>();
        }

        if (CFStringHasSuffix(a5, @"Status"))
        {
          if (CFDictionaryContainsKey(a6, @"Value"))
          {
            v35 = CFDictionaryGetValue(a6, @"Value");
            QP::getUTF8StringFromCFString(a5, &v50);
            QP::getUTF8StringFromCFString(v35, v41);
            std::allocate_shared[abi:ne200100]<QP::LexemeStatus,std::allocator<QP::LexemeStatus>,std::string,std::string,CFRange &,0>();
          }
        }

        else if (CFStringHasSuffix(a5, @"Hashtag"))
        {
          if (CFDictionaryContainsKey(a6, @"Value"))
          {
            v36 = CFDictionaryGetValue(a6, @"Value");
            QP::getUTF8StringFromCFString(a5, &v50);
            QP::getUTF8StringFromCFString(v36, v41);
            std::allocate_shared[abi:ne200100]<QP::LexemeValue,std::allocator<QP::LexemeValue>,std::string,std::string,CFRange &,0>();
          }
        }

        else
        {
          if (CFStringHasSuffix(a5, @"Value") || CFStringHasSuffix(a5, @"Count"))
          {
            v40[0] = 0;
            QP::NumericConverter::numericValueForTypeWithValues(a1[5], a5, a6, v40);
            if (v40[0])
            {
              QP::getUTF8StringFromCFString(a5, &v50);
              std::allocate_shared[abi:ne200100]<QP::LexemeNumber,std::allocator<QP::LexemeNumber>,std::string,std::unique_ptr<QP::NumericValue>,CFRange &,0>();
            }

            goto LABEL_49;
          }

          if (CFStringHasSuffix(a5, @"Date") || CFStringHasSuffix(a5, @"Time") || CFStringHasSuffix(a5, @"Period"))
          {
            if (CFDictionaryContainsKey(a6, @"Value"))
            {
              v40[0] = 0;
              v37 = a1[4];
              QP::DateConverter::datePeriodForRelativeDate(a5, v40);
              if (v40[0])
              {
                QP::getUTF8StringFromCFString(a5, &v50);
                std::allocate_shared[abi:ne200100]<QP::LexemeDateTime,std::allocator<QP::LexemeDateTime>,std::string,std::unique_ptr<QP::DatePeriod>,CFRange &,0>();
              }
            }

            else
            {
              v40[0] = 0;
              v38 = a1[4];
              QP::DateConverter::datePeriodForValues(a5, a6, v40);
              if (v40[0])
              {
                QP::getUTF8StringFromCFString(a5, &v50);
                std::allocate_shared[abi:ne200100]<QP::LexemeDateTime,std::allocator<QP::LexemeDateTime>,std::string,std::unique_ptr<QP::DatePeriod>,CFRange &,0>();
              }
            }

            std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](v40);
          }

          else if (QP::ParserGrammar::isValidType(a1[2], a5))
          {
            QP::getUTF8StringFromCFString(a5, &v50);
            std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string,CFRange &,0>();
          }
        }
      }
    }

    else
    {
      v28 = CFDictionaryGetValue(a6, @"Value");
      v29 = CFDictionaryGetValue(a6, @"Domain");
      if (v28)
      {
        v30 = v29;
        if (v29)
        {
          QP::getUTF8StringFromCFString(a5, &v50);
          QP::getUTF8StringFromCFString(v28, v41);
          QP::getUTF8StringFromCFString(v30, v40);
          std::allocate_shared[abi:ne200100]<QP::LexemeExtended,std::allocator<QP::LexemeExtended>,std::string,std::string,std::string,CFRange &,0>();
        }
      }
    }
  }

  else if (QP::ParserGrammar::isValidType(a1[2], a5))
  {
    QP::getUTF8StringFromCFString(a5, &v50);
    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string,CFRange &,0>();
  }

LABEL_23:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1C65AD448(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  QP::Lexeme::Lexeme((a1 + 40), (a2 + 40));
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  result = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = result;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 328) = 0;
  return result;
}

void __Block_byref_object_dispose__6(uint64_t a1)
{
  QP::LexemeLocationExtended::~LexemeLocationExtended((a1 + 40));
}

{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::LexemeLocationExtended::addLocation(const void **this, int a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v14 = a3;
  v15 = a2;
  v13 = a4;
  v11 = a6;
  v12 = a5;
  v9 = a8;
  v10 = a7;
  std::vector<unsigned int>::push_back[abi:ne200100](this + 27, &v15);
  std::vector<unsigned int>::push_back[abi:ne200100](this + 30, &v14);
  std::vector<unsigned int>::push_back[abi:ne200100](this + 33, &v13);
  std::vector<double>::push_back[abi:ne200100](this + 15, &v12);
  std::vector<double>::push_back[abi:ne200100](this + 18, &v11);
  std::vector<double>::push_back[abi:ne200100](this + 21, &v10);
  std::vector<double>::push_back[abi:ne200100](this + 24, &v9);
}

void QP::LexemeLocation::~LexemeLocation(void **this)
{
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  QP::Lexeme::~Lexeme(this);
}

QP::DateConverter **std::unique_ptr<QP::NumericValue>::~unique_ptr[abi:ne200100](QP::DateConverter **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    QP::DateConverter::~DateConverter(v2);
    MEMORY[0x1C695B850]();
  }

  return a1;
}

const void ***std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
    MEMORY[0x1C695B850](v2, 0x1060C40FA73DE96);
  }

  return a1;
}

void QP::LexemeConverter::merge(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2)
  {
    if (v6)
    {
      if (*(v5 + 88) - 1 <= 3 && *(v6 + 88) - 1 <= 3)
      {
        v7 = a2[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v6 = *a3;
        }

        v8 = a3[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = *(a1 + 32);
        v10 = *(v5 + 128);
        v17 = *(v5 + 120);
        v18 = v10;
        v19 = 0;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = *(v6 + 120);
        v11 = *(v6 + 128);
        v15 = v12;
        v16 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QP::DateConverter::merge(v9, &v17, &v15, &v19);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (v19)
        {
          *a4 = 0;
          a4[1] = 0;
          std::allocate_shared[abi:ne200100]<QP::LexemeDateTime,std::allocator<QP::LexemeDateTime>,char const(&)[10],std::unique_ptr<QP::DatePeriod>,CFRange &,0>();
        }

        std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&v19);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      v14 = a2[1];
      *a4 = v5;
      a4[1] = v14;
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v13 = a3[1];
    *a4 = v6;
    a4[1] = v13;
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1C65ADC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (!v7)
    {
LABEL_4:
      _Unwind_Resume(a1);
    }
  }

  else if (!v7)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  goto LABEL_4;
}

void QP::LexemeConverter::resolve(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, BOOL *a4@<X3>, void *a5@<X8>)
{
  v6 = *a2;
  if (*(*a2 + 88) - 1 <= 3)
  {
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 32);
    v9 = *(v6 + 128);
    v10 = *(v6 + 120);
    v11 = v9;
    v12 = 0;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::DateConverter::resolve(v8, &v10, a3, a4, &v12);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12)
    {
      *a5 = 0;
      a5[1] = 0;
      std::allocate_shared[abi:ne200100]<QP::LexemeDateTime,std::allocator<QP::LexemeDateTime>,std::string &,std::unique_ptr<QP::DatePeriod>,CFRange &,0>();
    }

    std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&v12);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  *a5 = 0;
  a5[1] = 0;
}

void sub_1C65ADD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

std::string *QP::Lexeme::Lexeme(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 72);
  LOWORD(this[3].__r_.__value_.__r.__words[2]) = *(a2 + 44);
  *&this[3].__r_.__value_.__l.__data_ = v7;
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  return this;
}

void sub_1C65ADE4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void QP::LexemeLocationExtended::~LexemeLocationExtended(void **this)
{
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  v2 = this[33];
  if (v2)
  {
    this[34] = v2;
    operator delete(v2);
  }

  v3 = this[30];
  if (v3)
  {
    this[31] = v3;
    operator delete(v3);
  }

  v4 = this[27];
  if (v4)
  {
    this[28] = v4;
    operator delete(v4);
  }

  v5 = this[24];
  if (v5)
  {
    this[25] = v5;
    operator delete(v5);
  }

  v6 = this[21];
  if (v6)
  {
    this[22] = v6;
    operator delete(v6);
  }

  v7 = this[18];
  if (v7)
  {
    this[19] = v7;
    operator delete(v7);
  }

  v8 = this[15];
  if (v8)
  {
    this[16] = v8;
    operator delete(v8);
  }

  QP::Lexeme::~Lexeme(this);
}

void QP::Lexeme::~Lexeme(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *QP::LexemeLocationExtended::LexemeLocationExtended(std::string *this, uint64_t a2, __int128 *a3, uint64_t a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&this[5].__r_.__value_.__l.__data_ = 0u;
  this[11].__r_.__value_.__r.__words[2] = 0;
  *&this[10].__r_.__value_.__r.__words[1] = 0u;
  *&this[11].__r_.__value_.__l.__data_ = 0u;
  *&this[9].__r_.__value_.__l.__data_ = 0u;
  *&this[9].__r_.__value_.__r.__words[2] = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    this[12].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[12].__r_.__value_.__l.__data_ = v9;
  }

  return this;
}

void sub_1C65AE08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v14 + 264);
  if (v17)
  {
    *(v14 + 272) = v17;
    operator delete(v17);
  }

  v18 = *(v14 + 240);
  if (v18)
  {
    *(v14 + 248) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 216);
  if (v19)
  {
    *(v14 + 224) = v19;
    operator delete(v19);
  }

  v20 = *(v14 + 192);
  if (v20)
  {
    *(v14 + 200) = v20;
    operator delete(v20);
  }

  v21 = *(v14 + 168);
  if (v21)
  {
    *(v14 + 176) = v21;
    operator delete(v21);
  }

  v22 = *(v14 + 144);
  if (v22)
  {
    *(v14 + 152) = v22;
    operator delete(v22);
  }

  v23 = *v15;
  if (*v15)
  {
    *(v14 + 128) = v23;
    operator delete(v23);
  }

  QP::Lexeme::~Lexeme(v14);
  _Unwind_Resume(a1);
}

std::string *QP::Lexeme::Lexeme(std::string *this, __int128 *a2, uint64_t a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&this[1], "");
  std::to_string(&v20, a3);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 1);
  }

  v12 = std::string::insert(&v20, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v21, p_p, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  this[2].__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&this[2].__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  this[3].__r_.__value_.__r.__words[0] = a3;
  this[3].__r_.__value_.__l.__size_ = a4;
  LOWORD(this[3].__r_.__value_.__r.__words[2]) = 0;
  std::string::basic_string[abi:ne200100]<0>(&this[4], "");
  return this;
}

void sub_1C65AE278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 71) < 0)
  {
    operator delete(*(v26 + 48));
  }

  if (*(v26 + 47) < 0)
  {
    operator delete(*(v26 + 24));
  }

  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *QP::LexemeLocation::LexemeLocation(std::string *this, uint64_t a2, __int128 *a3, uint64_t a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    this[5].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  return this;
}

void QP::DateConverter::~DateConverter(QP::DateConverter *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::shared_ptr<QP::GeoReference>::shared_ptr[abi:ne200100]<QP::GeoReference,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1C65AE6B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QP::GeoReference>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

QP::GeoReference **std::unique_ptr<QP::GeoReference>::~unique_ptr[abi:ne200100](QP::GeoReference **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    QP::GeoReference::~GeoReference(v2);
    MEMORY[0x1C695B850]();
  }

  return a1;
}

void std::__shared_ptr_pointer<QP::GeoReference *,std::shared_ptr<QP::GeoReference>::__shared_ptr_default_delete<QP::GeoReference,QP::GeoReference>,std::allocator<QP::GeoReference>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

QP::GeoReference *std::__shared_ptr_pointer<QP::GeoReference *,std::shared_ptr<QP::GeoReference>::__shared_ptr_default_delete<QP::GeoReference,QP::GeoReference>,std::allocator<QP::GeoReference>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    QP::GeoReference::~GeoReference(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<QP::GeoReference *,std::shared_ptr<QP::GeoReference>::__shared_ptr_default_delete<QP::GeoReference,QP::GeoReference>,std::allocator<QP::GeoReference>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<char const(&)[6],CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, char *a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[6],CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<QP::Lexeme>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[6],CFRange &,QP::Lexeme*>(std::string *a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  QP::Lexeme::Lexeme(a1, __p, *a3, *(a3 + 8));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65AE974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::LexemeQuotedText>::__shared_ptr_emplace[abi:ne200100]<CFRange &,std::string,std::allocator<QP::LexemeQuotedText>,0>(std::string *a1, uint64_t *a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8488;
  std::construct_at[abi:ne200100]<QP::LexemeQuotedText,CFRange &,std::string,QP::LexemeQuotedText*>(a1 + 1, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeQuotedText>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeQuotedText,CFRange &,std::string,QP::LexemeQuotedText*>(std::string *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  QP::LexemeQuotedText::LexemeQuotedText(a1, v4, v5, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65AEB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *QP::LexemeQuotedText::LexemeQuotedText(std::string *a1, uint64_t a2, std::string::size_type a3, __int128 *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  QP::Lexeme::Lexeme(a1, __p, a2, a3);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 5, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    a1[5].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&a1[5].__r_.__value_.__l.__data_ = v8;
  }

  return a1;
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<std::string &,CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,std::string &,CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,std::string &,CFRange &,QP::Lexeme*>(std::string *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, *a3, *(a3 + 8));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1C65AED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<char const(&)[5],CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, char *a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[5],CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[5],CFRange &,QP::Lexeme*>(std::string *a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  QP::Lexeme::Lexeme(a1, __p, *a3, *(a3 + 8));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65AEEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<std::string,CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,std::string,CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,std::string,CFRange &,QP::Lexeme*>(std::string *a1, uint64_t a2, uint64_t a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  QP::Lexeme::Lexeme(a1, __p, *a3, *(a3 + 8));
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65AF00C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<char const(&)[7],CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, char *a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[7],CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[7],CFRange &,QP::Lexeme*>(std::string *a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  QP::Lexeme::Lexeme(a1, __p, *a3, *(a3 + 8));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65AF150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::LexemeLocationExtended>::__shared_ptr_emplace[abi:ne200100]<QP::LexemeLocationExtended&,std::allocator<QP::LexemeLocationExtended>,0>(std::string *a1, const QP::LexemeLocationExtended *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E84D8;
  QP::LexemeLocationExtended::LexemeLocationExtended(a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeLocationExtended>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E84D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *QP::LexemeLocationExtended::LexemeLocationExtended(std::string *this, const QP::LexemeLocationExtended *a2)
{
  v4 = QP::Lexeme::Lexeme(this, a2);
  v4[5].__r_.__value_.__r.__words[0] = 0;
  v4[5].__r_.__value_.__l.__size_ = 0;
  v4[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v4[5], *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 3);
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&this[6], *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 3);
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  this[7].__r_.__value_.__r.__words[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&this[7], *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 3);
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&this[8], *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 3);
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  this[9].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&this[9], *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = 0;
  this[10].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&this[10], *(a2 + 30), *(a2 + 31), (*(a2 + 31) - *(a2 + 30)) >> 2);
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[11].__r_.__value_.__l.__size_ = 0;
  this[11].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&this[11], *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 2);
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v5 = *(a2 + 18);
    this[12].__r_.__value_.__r.__words[2] = *(a2 + 38);
    *&this[12].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1C65AF3FC(_Unwind_Exception *a1)
{
  v9 = *(v1 + 264);
  if (v9)
  {
    *(v1 + 272) = v9;
    operator delete(v9);
  }

  v10 = *v7;
  if (*v7)
  {
    *(v1 + 248) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v1 + 224) = v11;
    operator delete(v11);
  }

  v12 = *v5;
  if (*v5)
  {
    *(v1 + 200) = v12;
    operator delete(v12);
  }

  v13 = *v4;
  if (*v4)
  {
    *(v1 + 176) = v13;
    operator delete(v13);
  }

  v14 = *v3;
  if (*v3)
  {
    *(v1 + 152) = v14;
    operator delete(v14);
  }

  v15 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v15;
    operator delete(v15);
  }

  QP::Lexeme::~Lexeme(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65AF518(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65AF5D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

std::string *std::__shared_ptr_emplace<QP::LexemeLocation>::__shared_ptr_emplace[abi:ne200100]<QP::LexemeLocation&,std::allocator<QP::LexemeLocation>,0>(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8528;
  QP::Lexeme::Lexeme(a1 + 1, a2);
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 6, *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v4 = *(a2 + 120);
    a1[6].__r_.__value_.__r.__words[2] = *(a2 + 136);
    *&a1[6].__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void sub_1C65AF708(_Unwind_Exception *a1)
{
  QP::Lexeme::~Lexeme(&v1[1].__vftable);
  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<QP::LexemeLocation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::__shared_ptr_emplace<QP::LexemeExtended>::__shared_ptr_emplace[abi:ne200100]<char const(&)[18],std::string,std::string,CFRange &,std::allocator<QP::LexemeExtended>,0>(std::string *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8578;
  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(a1 + 1, a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeExtended>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void std::__shared_ptr_emplace<QP::LexemeExtended>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  QP::Lexeme::~Lexeme((a1 + 24));
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(std::string *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(v14, a2);
  *v12 = *a3;
  v13 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *__p = *a4;
  v11 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  QP::LexemeExtended::LexemeExtended(a1, v14, v12, __p, *a5, *(a5 + 8));
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_1C65AFA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(&a16);
  _Unwind_Resume(a1);
}

std::string *QP::LexemeExtended::LexemeExtended(std::string *this, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, std::string::size_type a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    this[5].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[5].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    this[6].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[6].__r_.__value_.__l.__data_ = v12;
  }

  return this;
}

void sub_1C65AFB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 143) < 0)
  {
    operator delete(*(v14 + 120));
  }

  QP::Lexeme::~Lexeme(v14);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeExtended>::__shared_ptr_emplace[abi:ne200100]<char const(&)[15],std::string,std::string,CFRange &,std::allocator<QP::LexemeExtended>,0>(std::string *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8578;
  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[15],std::string,std::string,CFRange &,QP::LexemeExtended*>(a1 + 1, a2, a3, a4, a5);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[15],std::string,std::string,CFRange &,QP::LexemeExtended*>(std::string *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(v14, a2);
  *v12 = *a3;
  v13 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *__p = *a4;
  v11 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  QP::LexemeExtended::LexemeExtended(a1, v14, v12, __p, *a5, *(a5 + 8));
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_1C65AFD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(&a16);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeExtendedNumber>::__shared_ptr_emplace[abi:ne200100]<char const(&)[6],std::unique_ptr<QP::NumericValue>,std::string,CFRange &,std::allocator<QP::LexemeExtendedNumber>,0>(std::string *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E85C8;
  std::construct_at[abi:ne200100]<QP::LexemeExtendedNumber,char const(&)[6],std::unique_ptr<QP::NumericValue>,std::string,CFRange &,QP::LexemeExtendedNumber*>(a1 + 1, a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeExtendedNumber>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E85C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void std::__shared_ptr_emplace<QP::LexemeExtendedNumber>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v2 = *(a1 + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  QP::Lexeme::~Lexeme((a1 + 24));
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeExtendedNumber,char const(&)[6],std::unique_ptr<QP::NumericValue>,std::string,CFRange &,QP::LexemeExtendedNumber*>(std::string *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(v14, a2);
  std::shared_ptr<QP::NumericValue>::shared_ptr[abi:ne200100]<QP::NumericValue,std::default_delete<QP::NumericValue>,0>(&v12, a3);
  *__p = *a4;
  v11 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  QP::LexemeExtendedNumber::LexemeExtendedNumber(a1, v14, &v12, __p, *a5, *(a5 + 8));
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_1C65AFFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<QP::NumericValue>::shared_ptr[abi:ne200100]<QP::NumericValue,std::default_delete<QP::NumericValue>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<QP::NumericValue  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

QP::DateConverter *std::__shared_ptr_pointer<QP::NumericValue  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    QP::DateConverter::~DateConverter(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<QP::NumericValue  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

std::string *QP::LexemeExtendedNumber::LexemeExtendedNumber(std::string *this, uint64_t a2, std::string::size_type *a3, __int128 *a4, uint64_t a5, std::string::size_type a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = a3[1];
  this[5].__r_.__value_.__r.__words[0] = *a3;
  this[5].__r_.__value_.__l.__size_ = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    this[6].__r_.__value_.__l.__size_ = *(a4 + 2);
    *&this[5].__r_.__value_.__r.__words[2] = v12;
  }

  return this;
}

void sub_1C65B0204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 128);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  QP::Lexeme::~Lexeme(v14);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeExtended>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string,std::string,CFRange &,std::allocator<QP::LexemeExtended>,0>(std::string *a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8578;
  std::construct_at[abi:ne200100]<QP::LexemeExtended,std::string,std::string,std::string,CFRange &,QP::LexemeExtended*>(a1 + 1, a2, a3, a4, a5);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeExtended,std::string,std::string,std::string,CFRange &,QP::LexemeExtended*>(std::string *a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *v10 = *a3;
  v11 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *a4;
  v9 = *(a4 + 2);
  *__p = v6;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  QP::LexemeExtended::LexemeExtended(a1, &v12, v10, __p, *a5, *(a5 + 8));
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  return a1;
}

void sub_1C65B03E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(&a16);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeExtended>::__shared_ptr_emplace[abi:ne200100]<char const(&)[12],std::string,std::string,CFRange &,std::allocator<QP::LexemeExtended>,0>(std::string *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8578;
  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[12],std::string,std::string,CFRange &,QP::LexemeExtended*>(a1 + 1, a2, a3, a4, a5);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[12],std::string,std::string,CFRange &,QP::LexemeExtended*>(std::string *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(v14, a2);
  *v12 = *a3;
  v13 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *__p = *a4;
  v11 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  QP::LexemeExtended::LexemeExtended(a1, v14, v12, __p, *a5, *(a5 + 8));
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  return a1;
}

void sub_1C65B05B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeExtended,char const(&)[18],std::string,std::string,CFRange &,QP::LexemeExtended*>(&a16);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeStatus>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string,CFRange &,std::allocator<QP::LexemeStatus>,0>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8678;
  std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(a1 + 1, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeStatus>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  QP::LexemeStatus::LexemeStatus(a1, v8, __p, *a4, *(a4 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  return a1;
}

void sub_1C65B07C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(&a16);
  _Unwind_Resume(a1);
}

std::string *QP::LexemeStatus::LexemeStatus(std::string *this, uint64_t a2, __int128 *a3, uint64_t a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    this[5].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  return this;
}

std::string *std::__shared_ptr_emplace<QP::LexemeValue>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string,CFRange &,std::allocator<QP::LexemeValue>,0>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E86C8;
  std::construct_at[abi:ne200100]<QP::LexemeValue,std::string,std::string,CFRange &,QP::LexemeValue*>(a1 + 1, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeValue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E86C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeValue,std::string,std::string,CFRange &,QP::LexemeValue*>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__p = *a3;
  v7 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  QP::LexemeValue::LexemeValue(a1, v8, __p, *a4, *(a4 + 8));
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  return a1;
}

void sub_1C65B0AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(&a16);
  _Unwind_Resume(a1);
}

std::string *QP::LexemeValue::LexemeValue(std::string *this, uint64_t a2, __int128 *a3, uint64_t a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    this[5].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[5].__r_.__value_.__l.__data_ = v9;
  }

  return this;
}

std::string *std::__shared_ptr_emplace<QP::LexemeNumber>::__shared_ptr_emplace[abi:ne200100]<std::string,std::unique_ptr<QP::NumericValue>,CFRange &,std::allocator<QP::LexemeNumber>,0>(std::string *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8718;
  std::construct_at[abi:ne200100]<QP::LexemeNumber,std::string,std::unique_ptr<QP::NumericValue>,CFRange &,QP::LexemeNumber*>(a1 + 1, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeNumber>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeNumber,std::string,std::unique_ptr<QP::NumericValue>,CFRange &,QP::LexemeNumber*>(std::string *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *__p = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::shared_ptr<QP::NumericValue>::shared_ptr[abi:ne200100]<QP::NumericValue,std::default_delete<QP::NumericValue>,0>(&v7, a3);
  QP::LexemeNumber::LexemeNumber(a1, __p, &v7, *a4, *(a4 + 8));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65B0DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *QP::LexemeNumber::LexemeNumber(std::string *this, uint64_t a2, std::string::size_type *a3, uint64_t a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = a3[1];
  this[5].__r_.__value_.__r.__words[0] = *a3;
  this[5].__r_.__value_.__l.__size_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1C65B0E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<QP::LexemeNumber,0>(QP::Lexeme *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  QP::Lexeme::~Lexeme(this);
}

void std::default_delete<QP::DatePeriod>::operator()[abi:ne200100](uint64_t a1, const void **a2)
{
  if (a2)
  {
    nlp::CFScopedPtr<__CFString const*>::reset(a2, 0);

    JUMPOUT(0x1C695B850);
  }
}

std::string *std::__shared_ptr_emplace<QP::LexemeDateTime>::__shared_ptr_emplace[abi:ne200100]<std::string,std::unique_ptr<QP::DatePeriod>,CFRange &,std::allocator<QP::LexemeDateTime>,0>(std::string *a1, uint64_t a2, const void ***a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8768;
  std::construct_at[abi:ne200100]<QP::LexemeDateTime,std::string,std::unique_ptr<QP::DatePeriod>,CFRange &,QP::LexemeDateTime*>(a1 + 1, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeDateTime>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeDateTime,std::string,std::unique_ptr<QP::DatePeriod>,CFRange &,QP::LexemeDateTime*>(std::string *a1, uint64_t a2, const void ***a3, uint64_t a4)
{
  *__p = *a2;
  v9 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = *a3;
  *a3 = 0;
  v7 = v5;
  QP::LexemeDateTime::LexemeDateTime(a1, __p, &v7, *a4, *(a4 + 8));
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65B1114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *QP::LexemeDateTime::LexemeDateTime(std::string *this, uint64_t a2, uint64_t *a3, uint64_t a4, std::string::size_type a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  QP::Lexeme::Lexeme(this, &v20, a4, a5);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  std::shared_ptr<QP::DatePeriod>::shared_ptr[abi:ne200100]<QP::DatePeriod,std::default_delete<QP::DatePeriod>,0>(&this[5], a3);
  if ((this[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(this[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this[2].__r_.__value_.__l.__size_;
  }

  memset(&v18, 0, sizeof(v18));
  v10 = &v18;
  std::string::basic_string[abi:ne200100](&v18, size + 1);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v18.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((this[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      data = this + 2;
    }

    else
    {
      data = this[2].__r_.__value_.__l.__data_;
    }

    memmove(v10, data, size);
  }

  *(&v10->__r_.__value_.__l.__data_ + size) = 58;
  QP::DatePeriod::description(this[5].__r_.__value_.__l.__data_, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v18, p_p, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=(this + 2, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1C65B12C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  v28 = *(v26 + 128);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  QP::Lexeme::~Lexeme(v26);
  _Unwind_Resume(a1);
}

void sub_1C65B1334()
{
  if (*(v0 - 41) < 0)
  {
    operator delete(*(v0 - 64));
  }

  JUMPOUT(0x1C65B132CLL);
}

void QP::DatePeriod::description(QP::DatePeriod *this@<X0>, std::string *a2@<X8>)
{
  QP::DateComponents::description((this + 24), &v18);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = &v19;
  std::string::basic_string[abi:ne200100](&v19, size + 1);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v19.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18.__r_.__value_.__r.__words[0];
    }

    memmove(v5, v6, size);
  }

  *(&v5->__r_.__value_.__l.__data_ + size) = 45;
  QP::DateComponents::description((this + 80), &v17);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v17;
  }

  else
  {
    v7 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v17.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v19, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v20, "+", 1uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  QP::DateComponents::description((this + 136), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __p.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v21, p_p, v14);
  *a2 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1C65B1514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<QP::DatePeriod>::shared_ptr[abi:ne200100]<QP::DatePeriod,std::default_delete<QP::DatePeriod>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<QP::DatePeriod  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::__shared_ptr_pointer<QP::DatePeriod  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void QP::DateComponents::description(QP::DateComponents *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 2);
  if ((v4 & 0x80000000) == 0)
  {
    std::to_string(&v39, v4);
    v5 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v6 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v5, v6);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(this + 1);
  if ((v7 & 0x80000000) == 0)
  {
    std::to_string(&v39, v7);
    v8 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v9 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v8, v9);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  if ((*this & 0x80000000) == 0)
  {
    std::to_string(&v39, *this);
    v10 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v11 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v10, v11);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v12 = *(this + 3);
  if ((v12 & 0x80000000) == 0)
  {
    std::to_string(&v39, v12);
    v13 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v14 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v13, v14);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v15 = *(this + 4);
  if ((v15 & 0x80000000) == 0)
  {
    std::to_string(&v39, v15);
    v16 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v17 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v16, v17);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v18 = *(this + 5);
  if ((v18 & 0x80000000) == 0)
  {
    std::to_string(&v39, v18);
    v19 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v20 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v19, v20);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v21 = *(this + 6);
  if ((v21 & 0x80000000) == 0)
  {
    std::to_string(&v39, v21);
    v22 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v23 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v22, v23);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v24 = *(this + 7);
  if ((v24 & 0x80000000) == 0)
  {
    std::to_string(&v39, v24);
    v25 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v26 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v25, v26);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v27 = *(this + 8);
  if ((v27 & 0x80000000) == 0)
  {
    std::to_string(&v39, v27);
    v28 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v29 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v28, v29);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v30 = *(this + 9);
  if ((v30 & 0x80000000) == 0)
  {
    std::to_string(&v39, v30);
    v31 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v32 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v31, v32);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v33 = *(this + 11);
  if ((v33 & 0x80000000) == 0)
  {
    std::to_string(&v39, v33);
    v34 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
    v35 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
    std::string::append(a2, v34, v35);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v36 = *(this + 12);
  if ((v36 & 0x80000000) == 0)
  {
    std::to_string(&v39, v36);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v39;
    }

    else
    {
      v37 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v37, size);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1C65B1AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::LexemeDateTime>::__shared_ptr_emplace[abi:ne200100]<char const(&)[10],std::unique_ptr<QP::DatePeriod>,CFRange &,std::allocator<QP::LexemeDateTime>,0>(std::string *a1, char *a2, const void ***a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8768;
  std::construct_at[abi:ne200100]<QP::LexemeDateTime,char const(&)[10],std::unique_ptr<QP::DatePeriod>,CFRange &,QP::LexemeDateTime*>(a1 + 1, a2, a3, a4);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeDateTime,char const(&)[10],std::unique_ptr<QP::DatePeriod>,CFRange &,QP::LexemeDateTime*>(std::string *a1, char *a2, const void ***a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *a3;
  *a3 = 0;
  v9 = v7;
  QP::LexemeDateTime::LexemeDateTime(a1, __p, &v9, *a4, *(a4 + 8));
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65B1C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeDateTime>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::unique_ptr<QP::DatePeriod>,CFRange &,std::allocator<QP::LexemeDateTime>,0>(std::string *a1, uint64_t a2, const void ***a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8768;
  std::construct_at[abi:ne200100]<QP::LexemeDateTime,std::string &,std::unique_ptr<QP::DatePeriod>,CFRange &,QP::LexemeDateTime*>(a1 + 1, a2, a3, a4);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeDateTime,std::string &,std::unique_ptr<QP::DatePeriod>,CFRange &,QP::LexemeDateTime*>(std::string *this, uint64_t a2, const void ***a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v7 = *a3;
  *a3 = 0;
  v9 = v7;
  QP::LexemeDateTime::LexemeDateTime(this, &v10, &v9, *a4, *(a4 + 8));
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&v9);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1C65B1E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::unique_ptr<QP::DatePeriod>::~unique_ptr[abi:ne200100](&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL QP::lexeme_ordered_range(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v8 = v5 + v4;
  v9 = v7 + v6;
  if (v4 == v6)
  {
    v11 = __OFSUB__(v8, v9);
    v10 = v8 - v9 < 0;
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  if (v10 != v11)
  {
    return v4 < v6;
  }

  if (v5 != v7)
  {
    return v5 > v7;
  }

  v13 = *(v2 + 88);
  v14 = *(v3 + 88);
  v15 = v13 >= v14;
  if (v13 == v14)
  {
    v16 = *(v2 + 71);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v16 = *(v2 + 56);
    }

    v17 = *(v3 + 71);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v3 + 56);
    }

    v15 = v16 >= v17;
  }

  return !v15;
}

uint64_t QP::lexeme_less_than_range(uint64_t *a1, int ***a2)
{
  result = *a1;
  if (!result)
  {
    return result;
  }

  v5 = *a2;
  if (!v5)
  {
    return 0;
  }

  v6 = *(result + 72);
  v7 = v5[9];
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(result + 80);
  v9 = v5[10];
  if (v8 != v9)
  {
    return v8 > v9;
  }

  v10 = *(result + 23);
  if (v10 < 0)
  {
    if (*(result + 8) != 6)
    {
LABEL_17:
      v15 = *(v5 + 23);
      if (v15 < 0)
      {
        if (v5[1] != 6)
        {
          return *(result + 88) < *(v5 + 44);
        }

        v16 = *v5;
      }

      else
      {
        v16 = v5;
        if (v15 != 6)
        {
          return *(result + 88) < *(v5 + 44);
        }
      }

      v17 = *v16;
      v18 = *(v16 + 2);
      if (v17 != 1934979913 || v18 != 29285)
      {
        return *(result + 88) < *(v5 + 44);
      }

      goto LABEL_27;
    }

    v11 = *result;
  }

  else
  {
    v11 = result;
    if (v10 != 6)
    {
      goto LABEL_17;
    }
  }

  v12 = *v11;
  v13 = *(v11 + 4);
  if (v12 != 1934979913 || v13 != 29285)
  {
    goto LABEL_17;
  }

LABEL_27:
  v20 = QP::equals(result, v5);
  result = *a1;
  if (v20)
  {
    v5 = *a2;
    return *(result + 88) < *(v5 + 44);
  }

  v21 = *(result + 23);
  if (v21 < 0)
  {
    if (*(result + 8) != 6)
    {
      return 1;
    }

    result = *result;
  }

  else if (v21 != 6)
  {
    return 1;
  }

  return *result != 1934979913 || *(result + 4) != 29285;
}

void QP::Lexer::Lexer(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 312) = *a2;
  v3 = a2[1];
  *(a1 + 320) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 328) = *a3;
  v4 = a3[1];
  *(a1 + 336) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1C65B2460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  nlp::CFScopedPtr<__CFArray *>::reset(&a16, 0);
  a16 = (v16 + 552);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v16 + 528);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v16 + 504);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v16 + 480);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v22 = *(v16 + 456);
  if (v22)
  {
    *(v16 + 464) = v22;
    operator delete(v22);
  }

  nlp::CFScopedPtr<__CFAttributedString *>::reset((v16 + 448), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v16 + 440), 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v16 + 408), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v16 + 400), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v16 + 392), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v16 + 384), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v16 + 376), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v16 + 368), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v16 + 360), 0);
  nlp::CFScopedPtr<__CFSet const*>::reset((v16 + 352), 0);
  std::unique_ptr<QP::LexemeConverter>::~unique_ptr[abi:ne200100]((v16 + 344));
  v23 = *(v16 + 336);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(v16 + 320);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset((v20 + 240), 0);
  v25 = *(v16 + 280);
  if (v25)
  {
    *(v16 + 288) = v25;
    operator delete(v25);
  }

  v26 = *(v20 + 192);
  if (v26)
  {
    *(v16 + 264) = v26;
    operator delete(v26);
  }

  std::__tree<std::string>::destroy(v19, *(v16 + 240));
  std::__tree<std::string>::destroy(v18, *(v16 + 216));
  std::__tree<std::string>::destroy(v17, *(v16 + 192));
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v20 + 72);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v27 = *(v16 + 112);
  if (v27)
  {
    *(v16 + 120) = v27;
    operator delete(v27);
  }

  v28 = *(v16 + 88);
  if (v28)
  {
    *(v16 + 96) = v28;
    operator delete(v28);
  }

  v29 = *v20;
  if (*v20)
  {
    *(v16 + 72) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void QP::taggerSchemes(void *a1@<X0>, __CFArray **a2@<X8>)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *a2 = Mutable;
  CFArrayAppendValue(Mutable, *MEMORY[0x1E6998270]);
  v5 = *a1;
  if (*a1)
  {
    if (v5[30] == 1)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x1E6998258]);
      v5 = *a1;
    }

    if ((v5[71] & 1) != 0 || v5[64] == 1)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x1E6998250]);
    }
  }
}

void nlp::CFScopedPtr<__CFCharacterSet const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFSet const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void ___ZN2QP5LexerC2ENSt3__110shared_ptrINS_19ParserConfigurationEEENS2_INS_13ParserGrammarEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (lexerLogger(void)::token != -1)
    {
      ___ZN2QP5LexerC2ENSt3__110shared_ptrINS_19ParserConfigurationEEENS2_INS_13ParserGrammarEEE_block_invoke_cold_1();
    }

    v2 = lexerLogger(void)::log;
    if (os_log_type_enabled(lexerLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      ___ZN2QP5LexerC2ENSt3__110shared_ptrINS_19ParserConfigurationEEENS2_INS_13ParserGrammarEEE_block_invoke_cold_2(v2);
    }
  }
}

QP::LexemeConverter **std::unique_ptr<QP::LexemeConverter>::~unique_ptr[abi:ne200100](QP::LexemeConverter **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    QP::LexemeConverter::~LexemeConverter(v2);
    MEMORY[0x1C695B850]();
  }

  return a1;
}

void QP::Lexer::~Lexer(QP::Lexer *this)
{
  dispatch_sync(*(this + 75), &__block_literal_global_22);
  dispatch_sync(*(this + 74), &__block_literal_global_25);
  v2 = *(this + 73);
  if (v2)
  {
    QPDataDetectorRelease(v2);
  }

  if (*(this + 52))
  {
    SILocalizationRelease();
  }

  v3 = *(this + 74);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    CFRelease(v5);
  }

  v14 = (this + 552);
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 528);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 504);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 480);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v6 = *(this + 57);
  if (v6)
  {
    *(this + 58) = v6;
    operator delete(v6);
  }

  nlp::CFScopedPtr<__CFAttributedString *>::reset(this + 56, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 55, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 51, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 50, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 49, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 48, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 47, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 46, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 45, 0);
  nlp::CFScopedPtr<__CFSet const*>::reset(this + 44, 0);
  std::unique_ptr<QP::LexemeConverter>::~unique_ptr[abi:ne200100](this + 43);
  v7 = *(this + 42);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 40);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset(this + 38, 0);
  v9 = *(this + 35);
  if (v9)
  {
    *(this + 36) = v9;
    operator delete(v9);
  }

  v10 = *(this + 32);
  if (v10)
  {
    *(this + 33) = v10;
    operator delete(v10);
  }

  std::__tree<std::string>::destroy(this + 232, *(this + 30));
  std::__tree<std::string>::destroy(this + 208, *(this + 27));
  std::__tree<std::string>::destroy(this + 184, *(this + 24));
  v14 = (this + 160);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 136);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v11 = *(this + 14);
  if (v11)
  {
    *(this + 15) = v11;
    operator delete(v11);
  }

  v12 = *(this + 11);
  if (v12)
  {
    *(this + 12) = v12;
    operator delete(v12);
  }

  v13 = *(this + 8);
  if (v13)
  {
    *(this + 9) = v13;
    operator delete(v13);
  }
}

uint64_t QP::Lexer::enumerateAnnotations(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 448);
  if (result)
  {
    v8 = 0;
    result = CFAttributedStringGetLength(result);
    if (result >= 1)
    {
      v5 = result;
      v6 = 0;
      do
      {
        effectiveRange.location = 0;
        effectiveRange.length = 0;
        result = CFAttributedStringGetAttributes(*(a1 + 448), v6, &effectiveRange);
        if (result)
        {
          result = CFDictionaryGetValue(result, kQPInputAttributeAnnotationKey);
          if (result)
          {
            result = (*(a2 + 16))(a2, result, effectiveRange.location, effectiveRange.length, &v8);
            if (v8 == 1)
            {
              break;
            }
          }
        }

        v6 = effectiveRange.length + effectiveRange.location;
      }

      while (effectiveRange.length + effectiveRange.location < v5);
    }
  }

  return result;
}

CFIndex QP::Lexer::enumerateLastTokenCompletedQueries(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  result = CFArrayGetCount(*(a1 + 408));
  v5 = result - 1;
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 408), v6);
      result = (*(a2 + 16))(a2, ValueAtIndex, &v9);
      if (v9)
      {
        break;
      }
    }

    while (v5 != v6++);
  }

  return result;
}

void QP::Lexer::lockedDetectorUpdate(QP::Lexer *this, int a2)
{
  v2 = *(this + 72);
  if (v2 && *(this + 73) && (*(this + 434) != 1 || a2 != 0))
  {
    (*(v2 + 48))(*v2);
    *(this + 434) = 1;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2000000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2000000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2000000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    if (*(*(this + 72) + 32))
    {
      v6 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v55[3] = Mutable;
      v8 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v51[3] = v8;
      v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v47[3] = v9;
      v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v43[3] = v10;
      v11 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v39[3] = v11;
      v12 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v35[3] = v12;
      v13 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v31[3] = v13;
      v14 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
      v27[3] = v14;
      v15 = *(this + 72);
      v16 = v15[4];
      v17 = *v15;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke;
      v25[3] = &unk_1E8266A70;
      v25[4] = &v54;
      v25[5] = &v50;
      v25[6] = &v46;
      v25[7] = &v42;
      v25[8] = &v38;
      v25[9] = &v34;
      v25[10] = &v30;
      v25[11] = &v26;
      v16(v17, v25);
    }

    if (a2)
    {
      v18 = *(this + 74);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke_2;
      block[3] = &unk_1E8266A98;
      block[4] = &v54;
      block[5] = &v50;
      block[6] = &v42;
      block[7] = &v46;
      block[8] = &v38;
      block[9] = &v34;
      block[10] = &v30;
      block[11] = &v26;
      block[12] = this;
      dispatch_sync(v18, block);
    }

    else
    {
      v19 = dispatch_group_create();
      v20 = *(this + 74);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke_3;
      v23[3] = &unk_1E8266AC0;
      v23[4] = &v54;
      v23[5] = &v50;
      v23[6] = &v42;
      v23[7] = &v46;
      v23[8] = &v38;
      v23[9] = &v34;
      v23[10] = &v30;
      v23[11] = &v26;
      v23[12] = this;
      dispatch_group_async(v19, v20, v23);
      v21 = *(this + 74);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 0x40000000;
      v22[2] = ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke_4;
      v22[3] = &__block_descriptor_tmp_54;
      v22[4] = this;
      v22[5] = v19;
      dispatch_group_notify(v19, v21, v22);
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
  }
}

void sub_1C65B2FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 256), 8);
  _Block_object_dispose((v57 - 224), 8);
  _Block_object_dispose((v57 - 192), 8);
  _Block_object_dispose((v57 - 160), 8);
  _Block_object_dispose((v57 - 128), 8);
  _Block_object_dispose((v57 - 96), 8);
  _Unwind_Resume(a1);
}

void ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke(uint64_t a1, CFStringRef theString, const __CFString *a3)
{
  if (theString && CFStringGetLength(theString))
  {
    if (CFStringCompare(a3, @"Person", 0))
    {
      if (CFStringCompare(a3, @"Location", 0))
      {
        if (CFStringCompare(a3, @"AppName", 0))
        {
          if (CFStringCompare(a3, @"Bundle", 0))
          {
            if (CFStringCompare(a3, @"Field", 0))
            {
              if (CFStringCompare(a3, @"Airline", 0))
              {
                if (CFStringCompare(a3, @"Airport", 0))
                {
                  if (CFStringCompare(a3, @"HotelName", 0))
                  {
                    return;
                  }

                  v6 = 88;
                }

                else
                {
                  v6 = 80;
                }
              }

              else
              {
                v6 = 72;
              }
            }

            else
            {
              v6 = 64;
            }
          }

          else
          {
            v6 = 56;
          }
        }

        else
        {
          v6 = 48;
        }
      }

      else
      {
        v6 = 40;
      }
    }

    else
    {
      v6 = 32;
    }

    v7 = *(*(*(a1 + v6) + 8) + 24);

    CFArrayAppendValue(v7, theString);
  }
}

void ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke_2(void *a1)
{
  v2 = a1[12];
  *(v2 + 434) = 0;
  v3 = *(*(a1[4] + 8) + 24);
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24);
  v6 = *(*(a1[7] + 8) + 24);
  v7 = *(*(a1[8] + 8) + 24);
  v8 = *(*(a1[9] + 8) + 24);
  v9 = *(*(a1[10] + 8) + 24);
  v18 = *(*(a1[11] + 8) + 24);
  QPDataDetectorSetDynamicSources(*(v2 + 584));
  (*(*(v2 + 576) + 56))(**(v2 + 576));
  ++*(v2 + 436);
  v10 = *(*(a1[4] + 8) + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(*(a1[5] + 8) + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(*(a1[6] + 8) + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(*(a1[7] + 8) + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(*(a1[8] + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(*(a1[9] + 8) + 24);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(*(a1[10] + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(*(a1[11] + 8) + 24);
  if (v17)
  {

    CFRelease(v17);
  }
}

void ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke_3(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  v3 = *(*(a1[5] + 8) + 24);
  v4 = *(*(a1[6] + 8) + 24);
  v5 = *(*(a1[7] + 8) + 24);
  v6 = *(*(a1[8] + 8) + 24);
  v7 = *(*(a1[9] + 8) + 24);
  v8 = *(*(a1[10] + 8) + 24);
  v17 = *(*(a1[11] + 8) + 24);
  QPDataDetectorSetDynamicSources(*(a1[12] + 584));
  v9 = *(*(a1[4] + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(*(a1[5] + 8) + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(*(a1[6] + 8) + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(*(a1[7] + 8) + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(*(a1[8] + 8) + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(*(a1[9] + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(*(a1[10] + 8) + 24);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(*(a1[11] + 8) + 24);
  if (v16)
  {

    CFRelease(v16);
  }
}

void ___ZN2QP5Lexer20lockedDetectorUpdateEb_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 434) = 0;
  v3 = *(v2 + 576);
  if (v3)
  {
    (*(v3 + 56))(*v3);
    ++*(v2 + 436);
  }

  v4 = *(a1 + 40);

  dispatch_release(v4);
}

void QP::Lexer::updateWithKnowledgeSource(QP::Lexer *this, char a2, int a3)
{
  if (*(this + 73))
  {
    v4 = *(this + 72);
    if (v4)
    {
      if ((a2 & 1) != 0 || a3)
      {
        v6 = *(this + 75);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZN2QP5Lexer25updateWithKnowledgeSourceEbb_block_invoke;
        block[3] = &__block_descriptor_tmp_55;
        block[4] = this;
        v10 = a3;
        dispatch_sync(v6, block);
      }

      else if ((*(v4 + 40))(*v4))
      {
        v5 = *(this + 75);
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 0x40000000;
        v7[2] = ___ZN2QP5Lexer25updateWithKnowledgeSourceEbb_block_invoke_2;
        v7[3] = &__block_descriptor_tmp_56;
        v7[4] = this;
        v8 = 0;
        dispatch_async(v5, v7);
      }
    }
  }
}

void QP::Lexer::updateTagger(QP::Lexer *this)
{
  if (*(*(this + 39) + 71) == 1)
  {
    v2 = *(this + 40);
    v4[0] = *(this + 39);
    v4[1] = v2;
    cf = 0;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::taggerSchemes(v4, &cf);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(this + 53);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 53) = NLTaggerCreate();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1C65B36A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::clearResources(QP::DateConverter ***this)
{
  QP::LexemeConverter::clearResources(this[43]);
  v2 = this[74];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2QP5Lexer14clearResourcesEv_block_invoke;
  block[3] = &__block_descriptor_tmp_57;
  block[4] = this;
  dispatch_sync(v2, block);
  *(this + 432) = 0;
  *(this + 109) = 0;
}

uint64_t QP::Lexer::clear(QP::Lexer *this)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this + 55, 0);
  v2 = *(this + 56);
  v8.length = CFAttributedStringGetLength(v2);
  v8.location = 0;
  CFAttributedStringReplaceString(v2, v8, &stru_1F45E9EA0);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 51, Mutable);
  *(this + 58) = *(this + 57);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 60);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 63);
  std::vector<std::vector<CFRange>>::clear[abi:ne200100](this + 69);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 66);
  v4 = *(this + 39);
  v5 = *MEMORY[0x1E695E4C0];

  return QP::ParserConfiguration::setIsMissingAnnotations(v4, v5);
}

void std::vector<std::vector<CFRange>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void QP::Lexer::loadLexerResource(QP::Lexer *this, const __CFURL *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (lexerLogger(void)::token != -1)
  {
    ___ZN2QP5LexerC2ENSt3__110shared_ptrINS_19ParserConfigurationEEENS2_INS_13ParserGrammarEEE_block_invoke_cold_1();
  }

  v4 = os_signpost_id_generate(lexerLogger(void)::log);
  if (a2)
  {
    v5 = v4;
    if (lexerLogger(void)::token != -1)
    {
      ___ZN2QP5LexerC2ENSt3__110shared_ptrINS_19ParserConfigurationEEENS2_INS_13ParserGrammarEEE_block_invoke_cold_1();
    }

    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = lexerLogger(void)::log;
      if (os_signpost_enabled(lexerLogger(void)::log))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = CFURLGetString(a2);
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Lexer::loadLexerResource-", "%@", &buf, 0xCu);
      }
    }

    PathComponent = CFURLCopyLastPathComponent(a2);
    block[8] = PathComponent;
    v8 = CFURLCopyPathExtension(a2);
    block[7] = v8;
    if (CFStringsAreEqual(v8, @"plist"))
    {
      if (QP::LexemeConverter::loadResourceURL(*(this + 43), a2))
      {
        *(this + 432) = 1;
      }
    }

    else if (CFStringsAreEqual(PathComponent, @"geobase.map") || CFStringsAreEqual(PathComponent, @"reference.mdplist"))
    {
      QP::LexemeConverter::loadResourceURL(*(this + 43), a2);
    }

    else if (CFStringsAreEqual(v8, @"cache"))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v16 = 0x2000000000;
      v17 = 1;
      v12 = *(this + 74);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2QP5Lexer17loadLexerResourceEPK7__CFURL_block_invoke;
      block[3] = &unk_1E8266B68;
      block[5] = this;
      block[6] = a2;
      block[4] = &buf;
      dispatch_sync(v12, block);
      v13 = *(*(&buf + 1) + 24);
      *(this + 432) = v13;
      if (v13 == 1 && CFStringHasSuffix(PathComponent, @"lexicon.cache"))
      {
        QP::Lexer::updateWithKnowledgeSource(this, 1, *(*(this + 39) + 35));
      }

      _Block_object_dispose(&buf, 8);
    }

    if (lexerLogger(void)::token != -1)
    {
      QP::Lexer::loadLexerResource();
    }

    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = lexerLogger(void)::log;
      if (os_signpost_enabled(lexerLogger(void)::log))
      {
        v10 = CFURLGetString(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v9, OS_SIGNPOST_INTERVAL_END, v5, "Lexer::loadLexerResource-", "%@", &buf, 0xCu);
      }
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1C65B3B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  _Block_object_dispose(va2, 8);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2QP5Lexer17loadLexerResourceEPK7__CFURL_block_invoke(uint64_t a1)
{
  result = QPDataDetectorLoadResources(*(*(a1 + 40) + 584), *(a1 + 48));
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t QP::Lexer::hasResources(QP::Lexer *this)
{
  v1 = *(this + 39);
  if (v1)
  {
    v1 = *(this + 41);
    if (v1)
    {
      v1 = *(this + 73);
      if (v1)
      {
        v1 = *(this + 53);
        if (v1)
        {
          v1 = *(this + 43);
          if (v1)
          {
            if (*v1 && v1[2] && v1[4] && v1[5])
            {
              v1 = v1[6];
              if (v1)
              {
                LOBYTE(v1) = *(this + 432);
              }
            }

            else
            {
              LOBYTE(v1) = 0;
            }
          }
        }
      }
    }
  }

  return v1 & 1;
}

void QP::Lexer::setStringWithLexemes(uint64_t a1, const void *a2, int a3, uint64_t **a4)
{
  QP::Lexer::clear(a1);
  if (a2)
  {
    v8 = CFRetain(a2);
    nlp::CFScopedPtr<__CFString const*>::reset((a1 + 440), v8);
    v9 = *(a1 + 448);
    v12.length = CFAttributedStringGetLength(v9);
    v12.location = 0;
    CFAttributedStringReplaceString(v9, v12, *(a1 + 440));
  }

  QP::Lexer::parse(a1, a3, a4);
  v10 = *(*(a1 + 312) + 35);

  QP::Lexer::updateWithKnowledgeSource(a1, 0, v10);
}

void QP::Lexer::parse(uint64_t a1, int a2, uint64_t **a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if ((QP::Lexer::shouldSkipParsing(a1) & 1) == 0)
  {
    QP::Lexer::resetParseVariables(a1);
    v66 = 0;
    v67 = &v66;
    v68 = 0x2000000000;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (v67[3])
    {
      if (((*(*(a1 + 312) + 8) - 10) & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v6 = 20;
      }

      else
      {
        v6 = 100;
      }

      v59 = 0;
      v60 = &v59;
      v61 = 0x3802000000;
      v62 = __Block_byref_object_copy__95;
      v64 = 0;
      v65 = 0;
      v63 = __Block_byref_object_dispose__96;
      Length = CFStringGetLength(*(a1 + 440));
      v41 = a2;
      v64 = 0;
      v65 = Length;
      bzero(&v76, 0x640uLL);
      v55 = 0;
      v56 = &v55;
      v57 = 0x2000000000;
      v58 = 0;
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x2000000000;
      v54[3] = &v76;
      v8 = *(a1 + 424);
      v9 = *(a1 + 440);
      NLTaggerSetString();
      v10 = *(a1 + 424);
      v11 = *(*(a1 + 312) + 112);
      v12 = v60[5];
      v13 = v60[6];
      NLTaggerSetLocaleForRange();
      v14 = *(a1 + 424);
      v15 = v60[5];
      v16 = v60[6];
      v44 = MEMORY[0x1E69E9820];
      v45 = 0x40000000;
      v46 = ___ZN2QP5Lexer5parseEbRNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke;
      v47 = &unk_1E8266E20;
      v48 = &v66;
      v49 = v54;
      v52 = a1;
      v53 = v6;
      v50 = &v55;
      v51 = &v59;
      NLTaggerEnumerateTokens();
      v42 = a3;
      v17 = *(a1 + 160);
      v18 = *(a1 + 168);
      if (v17 != v18)
      {
        v19 = (a1 + 136);
        do
        {
          memset(&v43, 0, sizeof(v43));
          v20 = *v17;
          if (SHIBYTE((*v17)[2].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v43, v20[2].__r_.__value_.__l.__data_, v20[2].__r_.__value_.__l.__size_);
          }

          else
          {
            v43 = v20[2];
          }

          if (a1 + 192 == std::__tree<std::string>::find<std::string>(a1 + 184, &v43.__r_.__value_.__l.__data_))
          {
            v21 = *(a1 + 144);
            v22 = *(a1 + 152);
            if (v21 >= v22)
            {
              v25 = (v21 - *v19) >> 4;
              v26 = v25 + 1;
              if ((v25 + 1) >> 60)
              {
                std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
              }

              v27 = v22 - *v19;
              if (v27 >> 3 > v26)
              {
                v26 = v27 >> 3;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFF0)
              {
                v28 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v26;
              }

              v74 = a1 + 136;
              if (v28)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1 + 136, v28);
              }

              v29 = 16 * v25;
              v30 = *v17;
              *(16 * v25) = *v17;
              if (*(&v30 + 1))
              {
                atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v24 = (v29 + 16);
              v31 = *(a1 + 136);
              v32 = *(a1 + 144) - v31;
              v33 = v29 - v32;
              memcpy((v29 - v32), v31, v32);
              v34 = *(a1 + 136);
              *(a1 + 136) = v33;
              *(a1 + 144) = v24;
              v35 = *(a1 + 152);
              *(a1 + 152) = 0;
              v72 = v34;
              v73 = v35;
              block = v34;
              v71 = v34;
              std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(&block);
            }

            else
            {
              *v21 = *v17;
              v23 = v17[1];
              v21[1] = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
              }

              v24 = v21 + 2;
            }

            *(a1 + 144) = v24;
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 184, &v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          v17 += 2;
        }

        while (v17 != v18);
      }

      QP::Lexer::selectPersonLexemes(a1);
      QP::Lexer::selectLocationLexemes(a1);
      v36 = v67[3];
      block = MEMORY[0x1E69E9820];
      v71 = 0x40000000;
      v72 = ___ZN2QP5Lexer19selectEntityLexemesEP10__CFString_block_invoke;
      v73 = &__block_descriptor_tmp_119;
      v74 = a1;
      QPDataDetectorsEnumerateEntitiesInString(v36, 0, &block);
      v37 = v67[3];
      v38 = *(a1 + 592);
      block = MEMORY[0x1E69E9820];
      v71 = 0x40000000;
      v72 = ___ZN2QP5Lexer20selectDefaultLexemesEP10__CFString_block_invoke;
      v73 = &__block_descriptor_tmp_127;
      v74 = a1;
      v75 = v37;
      dispatch_sync(v38, &block);
      QP::Lexer::selectKnowledgeSourceLexemes(a1, &v76, v56[3], v41);
      QP::Lexer::sortLexemes(a1, v42);
      QP::Lexer::addLexemes(a1, v42);
      if (*(*(a1 + 312) + 70) == 1)
      {
        QP::Lexer::addEntityLexemes(a1);
      }

      v39 = v67[3];
      if (v39)
      {
        CFRelease(v39);
      }

      _Block_object_dispose(v54, 8);
      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);
    }

    _Block_object_dispose(&v66, 8);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void QP::Lexer::setString(QP::Lexer *this, const __CFString *a2, int a3)
{
  QP::Lexer::clear(this);
  if (a2)
  {
    v6 = CFRetain(a2);
    nlp::CFScopedPtr<__CFString const*>::reset(this + 55, v6);
    v7 = *(this + 56);
    v10.length = CFAttributedStringGetLength(v7);
    v10.location = 0;
    CFAttributedStringReplaceString(v7, v10, *(this + 55));
  }

  QP::Lexer::parse(this, a3, this + 63);
  v8 = *(*(this + 39) + 35);

  QP::Lexer::updateWithKnowledgeSource(this, 0, v8);
}

void QP::Lexer::lexemeFromLocationsAndLexemes(unint64_t **a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  if (v6 != 1)
  {
    if (v6 && v4 != v5)
    {
      v7 = -1;
      while (1)
      {
        v8 = *v4;
        if ((*v4 & 0x8000000000000000) != 0 || v8 >= (a2[1] - *a2) >> 4)
        {
          break;
        }

        v9 = *(*a2 + 16 * v8);
        if (v7 == -1)
        {
          v7 = *(v9 + 72);
        }

        else
        {
          v10 = *(v9 + 80) + *(v9 + 72);
        }

        if (++v4 == v5)
        {
          if (v7 != -1)
          {
            v14 = 0;
            v15 = 0;
            operator new();
          }

          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

  v11 = *v4;
  if ((v11 & 0x8000000000000000) != 0 || (v12 = *a2, v11 >= (a2[1] - *a2) >> 4))
  {
LABEL_17:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return;
  }

  *a3 = 0;
  v13 = *(v12 + 16 * v11);
  *(a3 + 8) = v13;
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
  }
}

void QP::Lexer::lexemeFromLocations(uint64_t *a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  v21 = 0;
  v22 = 0uLL;
  memset(v20, 0, sizeof(v20));
  std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v20, a1[63], a1[64], (a1[64] - a1[63]) >> 4);
  QP::Lexer::lexemeFromLocationsAndLexemes(a2, v20, &v21);
  v23[0] = v20;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v23);
  v6 = v21;
  v19 = v22;
  v7 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v19 && v6)
  {
    v8 = a1[63];
    v9 = a1[64];
    v10 = v9 - v8;
    v11 = a1[65];
    if (v9 >= v11)
    {
      v13 = (v10 >> 4) + 1;
      if (v13 >> 60)
      {
        std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
      }

      v14 = v11 - v8;
      if (v14 >> 3 > v13)
      {
        v13 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      v23[4] = a1 + 63;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((a1 + 63), v13);
      }

      v15 = (16 * (v10 >> 4));
      *v15 = v19;
      v12 = v15 + 1;
      memcpy(0, v8, v10);
      v16 = a1[63];
      a1[63] = 0;
      a1[64] = v12;
      v17 = a1[65];
      a1[65] = 0;
      v23[2] = v16;
      v23[3] = v17;
      v23[0] = v16;
      v23[1] = v16;
      std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v23);
      v8 = a1[63];
    }

    else
    {
      *v9 = v19;
      *(v9 + 1) = v7;
      v12 = v9 + 16;
    }

    a1[64] = v12;
    v18 = *&v8[v10 + 8];
    *a3 = *&v8[v10];
    a3[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a3 = v19;
    a3[1] = v7;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1C65B4674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::Lexer::lexemeAtLocation@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0 || (v3 = *(this + 504), a2 >= (*(this + 512) - v3) >> 4))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v4 = *(v3 + 16 * a2);
    *a3 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void QP::Lexer::enumerateLexemesAtParseIndex(QP::Lexer *this, unint64_t a2, void *a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *(this + 69);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 70) - v6) >> 3) > a2)
    {
      if (QP::Lexer::hasResources(this))
      {
        v9 = *(*(this + 41) + 40);
        if (v9 && *(v9 + 31) == 1)
        {
          v10 = *(v6 + 24 * a2);
          v11 = *(v6 + 24 * a2 + 8);
          if (v11 != v10)
          {
            v12 = -1;
            v13 = 24 * a2;
            do
            {
              if (v12 == -1)
              {
                v12 = *(v11 - 16);
              }

              v14 = *(v11 - 8);
              v15 = (*a3 + 16 * v14);
              v16 = *v15;
              v17 = v15[1];
              if (v17)
              {
                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                v29 = v17;
                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                v14 = *(v11 - 8);
              }

              else
              {
                v29 = 0;
              }

              v28 = v16;
              v18 = *(v11 - 16);
              v11 -= 16;
              (*(a4 + 16))(a4, &v28, v12 - v18, v14, *(v16 + 72), *(v16 + 80));
              if (v29)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              }

              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }
            }

            while (v11 != *(*(this + 69) + v13));
          }
        }

        else
        {
          v19 = (v6 + 24 * a2);
          v20 = *v19;
          v21 = v19[1];
          if (*v19 != v21)
          {
            do
            {
              v22 = v20[1];
              v23 = (*a3 + 16 * v22);
              v24 = *v23;
              v25 = v23[1];
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                v27 = v25;
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                v22 = v20[1];
              }

              else
              {
                v27 = 0;
              }

              v26 = v24;
              (*(a4 + 16))(a4, &v26, *v20, v22, *(v24 + 72), *(v24 + 80));
              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              if (v25)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              }

              v20 += 2;
            }

            while (v20 != v21);
          }
        }
      }
    }
  }
}

void sub_1C65B48C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::enumerateEntityLexemes(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v2 = *(a1 + 528);
  for (i = *(a1 + 536); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    v6 = *v2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(a2 + 16))(a2, &v6, &v8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      break;
    }
  }
}

void sub_1C65B4990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::getExternalTypesForRange(uint64_t a1@<X0>, CFIndex a2@<X1>, CFIndex a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v7 = a5;
  v81.location = a2;
  v81.length = a3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v8 = MEMORY[0x1E695E480];
  if (*(a1 + 576))
  {
    v9 = *(a1 + 440);
    if (v9)
    {
      v10 = a2 + a3 >= CFStringGetLength(v9);
      v11 = CFStringCreateWithSubstring(*v8, *(a1 + 440), v81);
      if (!QP::ParserGrammar::isIgnoredTerm(*(a1 + 328), v11))
      {
        v83.length = CFStringGetLength(v11);
        v83.location = 0;
        v12 = copyStringInsertingSpacesBetweenIdeographCharacters(v11, v83);
        v71 = v12;
        v13 = (*(*(a1 + 576) + 8))(**(a1 + 576), v12, v10);
        v14 = v13;
        v70 = v13;
        if (v13)
        {
          Count = CFArrayGetCount(v13);
          if (Count >= 1)
          {
            __p[0] = 0;
            __p[1] = 0;
            v69 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
            QP::getUTF8StringFromCFString(ValueAtIndex, __p);
            std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
          }

          if (Count)
          {
            std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[5],CFRange &,0>();
          }

          CFRelease(v14);
          v5 = a4;
          v8 = MEMORY[0x1E695E480];
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v17 = v5;
  v18 = *v5;
  v65 = v17[1];
  if (v18 != v65)
  {
    alloc = *v8;
    do
    {
      v19 = *v18;
      if (v72 == v73)
      {
        v23 = v72;
      }

      else
      {
        v20 = v19[23];
        if ((v20 & 0x80u) == 0)
        {
          v21 = v19[23];
        }

        else
        {
          v21 = *(v19 + 1);
        }

        if ((v20 & 0x80u) == 0)
        {
          v22 = *v18;
        }

        else
        {
          v22 = *v19;
        }

        v23 = v72;
        while (1)
        {
          v24 = *(v23 + 23);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(v23 + 8);
          }

          if (v24 == v21)
          {
            v26 = v25 >= 0 ? v23 : *v23;
            if (!memcmp(v26, v22, v21))
            {
              break;
            }
          }

          v23 += 24;
          if (v23 == v73)
          {
            v23 = v73;
            break;
          }
        }
      }

      if (v73 == v23)
      {
        v35 = *(v7 + 8);
        v36 = *(v7 + 16);
        if (v35 >= v36)
        {
          v39 = (v35 - *v7) >> 4;
          v40 = v39 + 1;
          if ((v39 + 1) >> 60)
          {
            std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
          }

          v41 = v36 - *v7;
          if (v41 >> 3 > v40)
          {
            v40 = v41 >> 3;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFF0)
          {
            v42 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          v82.__end_cap_.__value_ = v7;
          if (v42)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(v7, v42);
          }

          v46 = 16 * v39;
          v47 = *v18;
          *(16 * v39) = *v18;
          if (*(&v47 + 1))
          {
            atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v38 = (v46 + 16);
          v48 = *(v7 + 8) - *v7;
          v49 = v46 - v48;
          memcpy((v46 - v48), *v7, v48);
          v50 = *v7;
          *v7 = v49;
          *(v7 + 8) = v38;
          v51 = *(v7 + 16);
          *(v7 + 16) = 0;
          v82.__end_ = v50;
          v82.__end_cap_.__value_ = v51;
          v82.__first_ = v50;
          v82.__begin_ = v50;
          std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(&v82.__first_);
        }

        else
        {
          *v35 = v19;
          v37 = v18[1];
          v35[1] = v37;
          if (v37)
          {
            atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
          }

          v38 = v35 + 2;
        }

        *(v7 + 8) = v38;
      }

      else
      {
        v27 = *(v75 + ((0xAAAAAAAB00000000 * ((v23 - v72) >> 3)) >> 28));
        v64 = v27;
        v28 = *(v75 + ((0xAAAAAAAB00000000 * ((v23 - v72) >> 3)) >> 28) + 8);
        if (*(&v27 + 1))
        {
          atomic_fetch_add_explicit((*(&v27 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v67.location = *(*v18 + 72);
        v67.length = v81.length + v81.location - v67.location;
        v29 = v81.length + v81.location >= CFStringGetLength(*(a1 + 440));
        v30 = CFStringCreateWithSubstring(alloc, *(a1 + 440), v67);
        v71 = v30;
        if (!QP::ParserGrammar::isIgnoredTerm(*(a1 + 328), v30))
        {
          v31 = (*(*(a1 + 576) + 8))(**(a1 + 576), v30, v29);
          v32 = v31;
          v70 = v31;
          if (v31)
          {
            v33 = CFArrayGetCount(v31);
            if (v33)
            {
              if (v33 >= 1)
              {
                __p[0] = 0;
                __p[1] = 0;
                v69 = 0;
                v34 = CFArrayGetValueAtIndex(v32, 0);
                QP::getUTF8StringFromCFString(v34, __p);
                std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
              }
            }

            else
            {
              v43 = *(v7 + 8);
              v44 = *(v7 + 16);
              if (v43 >= v44)
              {
                v52 = (v43 - *v7) >> 4;
                v53 = v52 + 1;
                if ((v52 + 1) >> 60)
                {
                  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
                }

                v54 = v44 - *v7;
                if (v54 >> 3 > v53)
                {
                  v53 = v54 >> 3;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v55 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                v82.__end_cap_.__value_ = v7;
                if (v55)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(v7, v55);
                }

                v56 = 16 * v52;
                *(16 * v52) = v64;
                if (v28)
                {
                  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v45 = (v56 + 16);
                v57 = *(a5 + 8) - *a5;
                v58 = v56 - v57;
                memcpy((v56 - v57), *a5, v57);
                v59 = *a5;
                *a5 = v58;
                *(a5 + 8) = v45;
                v60 = *(a5 + 16);
                *(a5 + 16) = 0;
                v7 = a5;
                v82.__end_ = v59;
                v82.__end_cap_.__value_ = v60;
                v82.__first_ = v59;
                v82.__begin_ = v59;
                std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(&v82.__first_);
              }

              else
              {
                *v43 = v64;
                v43[1] = v28;
                if (v28)
                {
                  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v45 = v43 + 2;
              }

              *(v7 + 8) = v45;
            }

            CFRelease(v32);
          }
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }
      }

      v18 += 2;
    }

    while (v18 != v65);
  }

  v61 = a4;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](a4);
  std::vector<std::shared_ptr<QP::Lexeme>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>,std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>>(v61, v61[1], v75, v76, (v76 - v75) >> 4);
  std::vector<std::shared_ptr<QP::Lexeme>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>,std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>>(v61, v61[1], v78, v79, (v79 - v78) >> 4);
  v82.__first_ = &v72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
  v82.__first_ = &v75;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v82);
  v82.__first_ = &v78;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v82);
}

void sub_1C65B5458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t ***__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, const void *a26, uint64_t **a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  nlp::CFScopedPtr<__CFArray const*>::reset(&a25, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a26, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a15, 0);
  __p = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a27 = &a30;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a30 = &a33;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a33 = a14;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t QP::Lexer::containsLegacyQuerySyntax(QP::Lexer *this)
{
  if (*(this + 55) && (v2 = *(this + 44)) != 0 && CFSetGetCount(v2))
  {
    Length = CFStringGetLength(*(this + 55));
    v4 = 0;
    v6.location = 0;
    result.location = 0;
    result.length = 0;
    v5 = *MEMORY[0x1E695E480];
    v6.length = Length;
    do
    {
      if (v6.location >= Length)
      {
        break;
      }

      CharacterFromSet = CFStringFindCharacterFromSet(*(this + 55), *(this + 48), v6, 0, &result);
      location = result.location;
      if (!CharacterFromSet || result.location < 1)
      {
        break;
      }

      while (location >= 2)
      {
        if (CFStringGetCharacterAtIndex(*(this + 55), --location) == 32)
        {
          v10.location = location + 1;
          goto LABEL_14;
        }
      }

      v10.location = 0;
LABEL_14:
      v11 = result.location;
      v10.length = result.location - v10.location;
      v12 = CFStringCreateWithSubstring(v5, *(this + 55), v10);
      if (v12)
      {
        v13 = v12;
        v4 |= CFSetContainsValue(*(this + 44), v12) != 0;
        if (v4)
        {
          v14 = 3;
        }

        else
        {
          v14 = 0;
        }

        CFRelease(v13);
      }

      else
      {
        if (v4)
        {
          v4 = 1;
          return v4 & 1;
        }

        v14 = 0;
        v4 = 0;
      }

      v6.location = v11 + 1;
      v6.length = Length - v11;
    }

    while (!v14);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1C65B57B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::Lexer::expand(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Length = CFStringGetLength(*(a1 + 440));
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = 126 - 2 * __clz((v8 - *a3) >> 4);
  v57 = v8 == *a3;
  v82 = QP::lexeme_less_than_range;
  if (v57)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,false>(v7, v8, &v82, v10, 1);
  v82 = 0;
  v83 = &v82;
  v84 = 0x4002000000;
  v85 = __Block_byref_object_copy__7;
  v86 = __Block_byref_object_dispose__7;
  memset(v87, 0, sizeof(v87));
  v74 = 0;
  v75 = &v74;
  v76 = 0x4002000000;
  v77 = __Block_byref_object_copy__81;
  v78 = __Block_byref_object_dispose__82;
  __p = 0;
  v80 = 0;
  v81 = 0;
  v12 = *a3;
  v11 = *(a3 + 8);
  v72 = Length;
  if (v11 == *a3)
  {
    QP::LexemeConverter::enumerateEntitiesWithString(*(a1 + 344), *(a1 + 440), 0, 0, Length, 0, Length);
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = -1;
    do
    {
      v16 = *(*v12 + 72);
      if (v15 == -1 || ((v17 = *(*v12 + 80) + v16, v18 = v15 + v14, v16 >= v15) ? (v19 = v17 < v18) : (v19 = 0), !v19 && (v16 > v15 ? (v20 = v17 <= v18) : (v20 = 0), !v20)) || (*(*(a1 + 312) + 75) & 1) != 0)
      {
        v21 = v16 - v13;
        if (v16 > v13)
        {
          v89.location = v13;
          v89.length = v16 - v13;
          v23 = QP::Lexer::contentRangeFromRange(a1, v89);
          if (v23 != -1)
          {
            QP::LexemeConverter::enumerateEntitiesWithString(*(a1 + 344), *(a1 + 440), 0, v23, v22, v13, v21);
          }
        }

        v24 = v83;
        if (*(*v12 + 88) == 15)
        {
          v88[0] = ((v83[6] - v83[5]) >> 4);
          std::vector<long>::push_back[abi:ne200100](v75 + 5, v88);
          v24 = v83;
        }

        v25 = v24[6];
        v26 = v24[7];
        if (v25 >= v26)
        {
          v29 = v24[5];
          v30 = (v25 - v29) >> 4;
          v31 = v30 + 1;
          if ((v30 + 1) >> 60)
          {
            std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
          }

          v32 = v26 - v29;
          if (v32 >> 3 > v31)
          {
            v31 = v32 >> 3;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF0)
          {
            v33 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          v88[4] = v24 + 5;
          if (v33)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v24 + 5), v33);
          }

          v34 = 16 * v30;
          v35 = *v12;
          *(16 * v30) = *v12;
          if (*(&v35 + 1))
          {
            atomic_fetch_add_explicit((*(&v35 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v28 = (v34 + 16);
          v36 = v24[5];
          v37 = v24[6] - v36;
          v38 = v34 - v37;
          memcpy((v34 - v37), v36, v37);
          v39 = v24[5];
          v24[5] = v38;
          v24[6] = v28;
          v40 = v24[7];
          v24[7] = 0;
          v88[2] = v39;
          v88[3] = v40;
          v88[0] = v39;
          v88[1] = v39;
          std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v88);
        }

        else
        {
          *v25 = *v12;
          v27 = v12[1];
          v25[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v28 = (v25 + 2);
        }

        v24[6] = v28;
        v15 = *(*v12 + 72);
        v14 = *(*v12 + 80);
        v13 = v14 + v15;
      }

      v12 += 2;
    }

    while (v12 != v11);
  }

  v41 = Length;
  if (Length > v13)
  {
    v90.location = v13;
    v90.length = Length - v13;
    v43 = QP::Lexer::contentRangeFromRange(a1, v90);
    if (v43 != -1)
    {
      QP::LexemeConverter::enumerateEntitiesWithString(*(a1 + 344), *(a1 + 440), 0, v43, v42, v13, Length - v13);
    }
  }

  if ((*(*(a1 + 312) + 31) & 1) == 0)
  {
    v44 = v75[5];
    v70 = v75[6];
    if (v44 != v70)
    {
      do
      {
        v71 = v44;
        v45 = *v44;
        v46 = *v44;
        v73 = *v44;
        do
        {
          v47 = v46 + 1;
          v48 = v83[5];
          if (v46 + 1 >= (v83[6] - v48) >> 4)
          {
            break;
          }

          v49 = (v48 + 16 * v46);
          v50 = *v49;
          v51 = v49[1];
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            v48 = v83[5];
          }

          v52 = (v48 + 16 * v47);
          v53 = *v52;
          v54 = v52[1];
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!*(v53 + 88) && *(v50 + 88) && ((v56 = *(v53 + 80) + *(v53 + 72), v56 == v41) ? (v57 = v45 == 0) : (v57 = 1), v57))
          {
            QP::LexemeConverter::enumerateEntitiesWithString(*(a1 + 344), *(a1 + 440), 0, *(v50 + 72), v56 - *(v50 + 72), *(v50 + 72), v56 - *(v50 + 72));
            v58 = 16 * v46;
            v59 = v46 + 1;
            while (1)
            {
              v60 = v83[5];
              if (++v59 >= ((v83[6] - v60) >> 4))
              {
                v55 = 1;
                v46 = v47;
                v41 = v72;
                v45 = v73;
                goto LABEL_54;
              }

              v61 = v60 + v58;
              v63 = *(v61 + 4);
              v62 = *(v61 + 5);
              if (v62)
              {
                atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v54)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              }

              v64 = *(v50 + 72);
              v65 = *(v63 + 72);
              if (*(v63 + 88))
              {
                break;
              }

              v58 += 16;
              QP::LexemeConverter::enumerateEntitiesWithString(*(a1 + 344), *(a1 + 440), 0, v64, v65 - v64 + *(v63 + 80), v64, v65 - v64 + *(v63 + 80));
              v54 = v62;
            }

            v91.length = v65 - v64;
            v91.location = *(v50 + 72);
            v67 = QP::Lexer::contentRangeFromRange(a1, v91);
            v68 = *(v50 + 72) == v67 && *(v50 + 80) == v66;
            v41 = v72;
            v45 = v73;
            if (!v68)
            {
              QP::LexemeConverter::enumerateEntitiesWithString(*(a1 + 344), *(a1 + 440), 0, v67, v66, v67, v66);
            }

            v55 = 1;
            v54 = v62;
            v46 = v47;
          }

          else
          {
            v55 = 0;
          }

LABEL_54:
          if (v54)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          }

          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }
        }

        while ((v55 & 1) != 0);
        v44 = v71 + 1;
      }

      while (v71 + 1 != v70);
    }
  }

  std::vector<std::shared_ptr<QP::Lexeme>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>,std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>>(a4, *a4, v83[5], v83[6], (v83[6] - v83[5]) >> 4);
  _Block_object_dispose(&v74, 8);
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v82, 8);
  v74 = v87;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v74);
}

void sub_1C65B5FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61)
{
  _Block_object_dispose(&a55, 8);
  if (__p)
  {
    a61 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v61 - 208), 8);
  a55 = a11;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a55);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
  v1 = (a1 + 40);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  nlp::CFScopedPtr<__CFString const*>::reset((a1 + 40), 0);
}

__n128 __Block_byref_object_copy__81(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__82(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2QP5Lexer6expandERNSt3__13setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessIS8_EENS6_IS8_EEEERNS1_6vectorINS1_10shared_ptrINS_6LexemeEEENS6_ISH_EEEESK__block_invoke(uint64_t a1, void *a2)
{
  if (*(*a2 + 88) == 15)
  {
    v4 = *(*(a1 + 32) + 8);
    v22[0] = ((*(*(*(a1 + 40) + 8) + 48) - *(*(*(a1 + 40) + 8) + 40)) >> 4);
    std::vector<long>::push_back[abi:ne200100]((v4 + 40), v22);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = v5[6];
  v7 = v5[7];
  if (v6 >= v7)
  {
    v10 = v5[5];
    v11 = (v6 - v10) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v22[4] = v5 + 5;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v5 + 5), v14);
    }

    v15 = 16 * v11;
    v16 = *a2;
    *(16 * v11) = *a2;
    if (*(&v16 + 1))
    {
      atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v9 = (v15 + 16);
    v17 = v5[5];
    v18 = v5[6] - v17;
    v19 = v15 - v18;
    memcpy((v15 - v18), v17, v18);
    v20 = v5[5];
    v5[5] = v19;
    v5[6] = v9;
    v21 = v5[7];
    v5[7] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v22);
  }

  else
  {
    *v6 = *a2;
    v8 = a2[1];
    v6[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6 + 2;
  }

  v5[6] = v9;
}

void std::vector<long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t QP::Lexer::contentRangeFromRange(QP::Lexer *this, CFRange a2)
{
  v2 = *(this + 57);
  v3 = *(this + 58);
  if (v3 == v2 || !*(this + 55))
  {
    return -1;
  }

  length = a2.length;
  location = a2.location;
  if (a2.length != 1)
  {
    goto LABEL_6;
  }

  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v38.location = location;
  v38.length = 1;
  if (CFStringFindCharacterFromSet(*(this + 55), Predefined, v38, 0, 0))
  {
    return -1;
  }

  v2 = *(this + 57);
  v3 = *(this + 58);
LABEL_6:
  v8 = -1;
  if (v3 == v2)
  {
    return v8;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (v3 - v2);
  v10 = v2;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[3 * (v11 >> 1)];
    v15 = *v13;
    v16 = v13[1];
    v14 = v13 + 3;
    v11 += ~(v11 >> 1);
    if (v16 + v15 <= location)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == v3)
  {
    return -1;
  }

  v17 = 0;
  v18 = location + length;
  v8 = -1;
  do
  {
    v19 = *v10;
    v20 = v10[1];
    if (location != *v10 || length != v20)
    {
      v22 = v20 + v19;
      if ((v19 < location || v22 >= v18) && (v19 <= location || v22 > v18))
      {
        break;
      }
    }

    if ((*(v10 + 17) & 8) == 0)
    {
      v17 = v10[1];
      v8 = *v10;
      break;
    }

    v10 += 3;
    v8 = v19;
    v17 = v20;
  }

  while (v10 != v3);
  if (v8 != -1 && v8 + v17 != v18)
  {
    do
    {
      v26 = v9 >> 1;
      v27 = &v3[-3 * (v9 >> 1)];
      v29 = *(v27 - 3);
      v30 = *(v27 - 2);
      v28 = v27 - 3;
      v9 += ~(v9 >> 1);
      if (v30 + v29 > v18)
      {
        v3 = v28;
      }

      else
      {
        v9 = v26;
      }
    }

    while (v9);
    if (v2 != v3)
    {
      v31 = v3;
      while (1)
      {
        v32 = *(v31 - 3);
        v33 = *(v31 - 2);
        v31 -= 3;
        if (location != v32 || length != v33)
        {
          v35 = v33 + v32;
          if ((v32 < location || v35 >= v18) && (v32 <= location || v35 > v18))
          {
            break;
          }
        }

        if ((*(v3 - 7) & 8) != 0)
        {
          v3 = v31;
          if (v31 != v2)
          {
            continue;
          }
        }

        return v8;
      }

      CFStringGetLength(*(this + 55));
    }
  }

  return v8;
}

void ___ZN2QP5Lexer6expandERNSt3__13setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessIS8_EENS6_IS8_EEEERNS1_6vectorINS1_10shared_ptrINS_6LexemeEEENS6_ISH_EEEESK__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(*a2 + 88) == 15)
  {
    v4 = *(*(a1 + 32) + 8);
    v22[0] = ((*(*(*(a1 + 40) + 8) + 48) - *(*(*(a1 + 40) + 8) + 40)) >> 4);
    std::vector<long>::push_back[abi:ne200100]((v4 + 40), v22);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = v5[6];
  v7 = v5[7];
  if (v6 >= v7)
  {
    v10 = v5[5];
    v11 = (v6 - v10) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v22[4] = v5 + 5;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v5 + 5), v14);
    }

    v15 = 16 * v11;
    v16 = *a2;
    *(16 * v11) = *a2;
    if (*(&v16 + 1))
    {
      atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v9 = (v15 + 16);
    v17 = v5[5];
    v18 = v5[6] - v17;
    v19 = v15 - v18;
    memcpy((v15 - v18), v17, v18);
    v20 = v5[5];
    v5[5] = v19;
    v5[6] = v9;
    v21 = v5[7];
    v5[7] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v22);
  }

  else
  {
    *v6 = *a2;
    v8 = a2[1];
    v6[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6 + 2;
  }

  v5[6] = v9;
}

void ___ZN2QP5Lexer6expandERNSt3__13setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessIS8_EENS6_IS8_EEEERNS1_6vectorINS1_10shared_ptrINS_6LexemeEEENS6_ISH_EEEESK__block_invoke_3(uint64_t a1, void *a2)
{
  if (*(*a2 + 88) == 15)
  {
    v4 = *(*(a1 + 32) + 8);
    v22[0] = ((*(*(*(a1 + 40) + 8) + 48) - *(*(*(a1 + 40) + 8) + 40)) >> 4);
    std::vector<long>::push_back[abi:ne200100]((v4 + 40), v22);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = v5[6];
  v7 = v5[7];
  if (v6 >= v7)
  {
    v10 = v5[5];
    v11 = (v6 - v10) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v22[4] = v5 + 5;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v5 + 5), v14);
    }

    v15 = 16 * v11;
    v16 = *a2;
    *(16 * v11) = *a2;
    if (*(&v16 + 1))
    {
      atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v9 = (v15 + 16);
    v17 = v5[5];
    v18 = v5[6] - v17;
    v19 = v15 - v18;
    memcpy((v15 - v18), v17, v18);
    v20 = v5[5];
    v5[5] = v19;
    v5[6] = v9;
    v21 = v5[7];
    v5[7] = 0;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v22);
  }

  else
  {
    *v6 = *a2;
    v8 = a2[1];
    v6[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6 + 2;
  }

  v5[6] = v9;
}

void ___ZN2QP5Lexer6expandERNSt3__13setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessIS8_EENS6_IS8_EEEERNS1_6vectorINS1_10shared_ptrINS_6LexemeEEENS6_ISH_EEEESK__block_invoke_4(uint64_t a1, void *a2)
{
  memset(&__p, 0, sizeof(__p));
  v4 = *a2;
  if (*(*a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    __p = *(v4 + 48);
  }

  if (*(a1 + 40) + 8 == std::__tree<std::string>::find<std::string>(*(a1 + 40), &__p.__r_.__value_.__l.__data_))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = v5[6];
    v7 = v5[7];
    if (v6 >= v7)
    {
      v10 = v5[5];
      v11 = (v6 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v23[4] = v5 + 5;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v5 + 5), v14);
      }

      v15 = 16 * v11;
      v16 = *a2;
      *(16 * v11) = *a2;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v15 + 16);
      v17 = v5[5];
      v18 = v5[6] - v17;
      v19 = v15 - v18;
      memcpy((v15 - v18), v17, v18);
      v20 = v5[5];
      v5[5] = v19;
      v5[6] = v9;
      v21 = v5[7];
      v5[7] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v23);
    }

    else
    {
      v8 = a2[1];
      *v6 = *a2;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    v5[6] = v9;
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(*(a1 + 40), &__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C65B6960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP5Lexer6expandERNSt3__13setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessIS8_EENS6_IS8_EEEERNS1_6vectorINS1_10shared_ptrINS_6LexemeEEENS6_ISH_EEEESK__block_invoke_5(uint64_t a1, void *a2)
{
  memset(&__p, 0, sizeof(__p));
  v4 = *a2;
  if (*(*a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    __p = *(v4 + 48);
  }

  if (*(a1 + 40) + 8 == std::__tree<std::string>::find<std::string>(*(a1 + 40), &__p.__r_.__value_.__l.__data_))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = v5[6];
    v7 = v5[7];
    if (v6 >= v7)
    {
      v10 = v5[5];
      v11 = (v6 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v23[4] = v5 + 5;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v5 + 5), v14);
      }

      v15 = 16 * v11;
      v16 = *a2;
      *(16 * v11) = *a2;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v15 + 16);
      v17 = v5[5];
      v18 = v5[6] - v17;
      v19 = v15 - v18;
      memcpy((v15 - v18), v17, v18);
      v20 = v5[5];
      v5[5] = v19;
      v5[6] = v9;
      v21 = v5[7];
      v5[7] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v23);
    }

    else
    {
      v8 = a2[1];
      *v6 = *a2;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    v5[6] = v9;
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(*(a1 + 40), &__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C65B6B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP5Lexer6expandERNSt3__13setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessIS8_EENS6_IS8_EEEERNS1_6vectorINS1_10shared_ptrINS_6LexemeEEENS6_ISH_EEEESK__block_invoke_6(uint64_t a1, void *a2)
{
  memset(&__p, 0, sizeof(__p));
  v4 = *a2;
  if (*(*a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    __p = *(v4 + 48);
  }

  if (*(a1 + 40) + 8 == std::__tree<std::string>::find<std::string>(*(a1 + 40), &__p.__r_.__value_.__l.__data_))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = v5[6];
    v7 = v5[7];
    if (v6 >= v7)
    {
      v10 = v5[5];
      v11 = (v6 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v23[4] = v5 + 5;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v5 + 5), v14);
      }

      v15 = 16 * v11;
      v16 = *a2;
      *(16 * v11) = *a2;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v15 + 16);
      v17 = v5[5];
      v18 = v5[6] - v17;
      v19 = v15 - v18;
      memcpy((v15 - v18), v17, v18);
      v20 = v5[5];
      v5[5] = v19;
      v5[6] = v9;
      v21 = v5[7];
      v5[7] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v23);
    }

    else
    {
      v8 = a2[1];
      *v6 = *a2;
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    v5[6] = v9;
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(*(a1 + 40), &__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C65B6CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::Lexer::shouldSkipParsing(QP::Lexer *this)
{
  if (*(*(this + 39) + 16) == 1 && QP::Lexer::containsBlocklistedString(this))
  {
    return 1;
  }

  v2 = *(this + 55);
  if (!v2 || !CFStringGetLength(v2) || !QP::Lexer::hasResources(this))
  {
    return 1;
  }

  return QP::Lexer::containsLegacyQuerySyntax(this);
}

void QP::Lexer::resetParseVariables(QP::Lexer *this)
{
  *this = xmmword_1C6631880;
  *(this + 1) = xmmword_1C6631880;
  *(this + 2) = xmmword_1C6631880;
  *(this + 3) = xmmword_1C6631880;
  *(this + 9) = *(this + 8);
  *(this + 12) = *(this + 11);
  *(this + 15) = *(this + 14);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 17);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 20);
  std::__tree<std::string>::destroy(this + 184, *(this + 24));
  *(this + 23) = this + 192;
  *(this + 25) = 0;
  *(this + 24) = 0;
  std::__tree<std::string>::destroy(this + 208, *(this + 27));
  *(this + 26) = this + 216;
  *(this + 27) = 0;
  v3 = *(this + 30);
  v2 = this + 240;
  *(v2 - 2) = 0;
  std::__tree<std::string>::destroy((v2 - 8), v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 - 1) = v2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  nlp::CFScopedPtr<__CFDictionary *>::reset(v2 + 8, Mutable);
}

CFIndex QP::Lexer::tokenize(CFIndex result, CFStringRef theString)
{
  v2 = result;
  if (theString)
  {
    result = CFStringGetLength(theString);
    if (result)
    {
      v3 = *(v2 + 424);
      NLTaggerSetString();
      v4 = *(v2 + 424);
      v5 = *(*(v2 + 312) + 112);
      NLTaggerSetLocaleForRange();
      v6 = *(v2 + 424);
      return NLTaggerEnumerateTokens();
    }
  }

  return result;
}

void ___ZN2QP5Lexer8tokenizeEPK10__CFStringU13block_pointerFv7NLTokenS3_PbE_block_invoke(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if ((*(a2 + 17) & 0xC) == 0)
  {
    v6 = *(*(a1 + 40) + 424);
    v7 = *MEMORY[0x1E6998250];
    v8 = NLTaggerCopyTagForCurrentToken();
    v12 = v8;
    v9 = *(a1 + 32);
    v11 = *(a2 + 2);
    v10 = *a2;
    (*(v9 + 16))(v9, &v10, v8, a3);
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_1C65B6FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::Lexer::tagTokenWhitespace(uint64_t a1, uint64_t *a2, CFMutableStringRef theString)
{
  if (*(a1 + 433) != 1)
  {
    goto LABEL_24;
  }

  v47 = 0;
  v6 = *(a1 + 424);
  if ((*(a2 + 17) & 4) == 0)
  {
    v7 = *MEMORY[0x1E6998258];
    v8 = NLTaggerCopyTagForCurrentToken();
    v9 = *MEMORY[0x1E69980A0];
    v47 = v8;
    v10 = *a1;
    if (v8 == v9)
    {
      if (v10 == -1)
      {
        v11 = *a2;
        goto LABEL_16;
      }

      *(a1 + 8) = *a2 - v10 + a2[1];
    }

    else if (v10 != -1)
    {
      QP::Lexer::selectPersonLexemes(a1);
      v11 = xmmword_1C6631880;
LABEL_16:
      *a1 = v11;
    }

    v16 = (a1 + 16);
    v19 = *(a1 + 16);
    if (v8 == *MEMORY[0x1E69980A8])
    {
      if (v19 != -1)
      {
        *(a1 + 24) = *a2 - v19 + a2[1];
        if (!v8)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v20 = *a2;
      goto LABEL_21;
    }

    if (v19 == -1)
    {
      goto LABEL_22;
    }

    QP::Lexer::selectLocationLexemes(a1);
LABEL_20:
    v20 = xmmword_1C6631880;
LABEL_21:
    *v16 = v20;
    goto LABEL_22;
  }

  v12 = *MEMORY[0x1E6998260];
  v13 = NLTaggerCopyTagForCurrentToken();
  v8 = v13;
  v14 = *MEMORY[0x1E6998090];
  v47 = v13;
  if (v13 == v14)
  {
    *(a1 + 32) = *a2;
    *(a1 + 48) = a2[1] + *a2;
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v13 == *MEMORY[0x1E6998088])
  {
    v16 = (a1 + 32);
    v15 = *(a1 + 32);
    if (v15 != -1)
    {
      v17.location = *(a1 + 48);
      if (v17.location != -1)
      {
        v18 = *a2;
        *(a1 + 40) = *a2 - v15 + a2[1];
        v17.length = v18 - v17.location;
        *(a1 + 56) = v18 - v17.location;
        v46 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 440), v17);
        v45 = 0uLL;
        QP::getUTF8StringFromCFString(v46, __p);
        std::allocate_shared[abi:ne200100]<QP::LexemeQuotedText,std::allocator<QP::LexemeQuotedText>,CFRange &,std::string,0>();
      }
    }

    goto LABEL_20;
  }

LABEL_22:
  if (v8)
  {
LABEL_23:
    CFRelease(v8);
  }

LABEL_24:
  v21 = *(*(a1 + 328) + 40);
  if (v21)
  {
    if ((*(v21 + 32) & 1) == 0)
    {
      v22 = *(a1 + 464);
      if (v22 != *(a1 + 456))
      {
        v23 = *(v22 - 8);
        if ((v23 & 0x800) == 0 && ((*(a2 + 4) | v23) & 0x80) != 0)
        {
          CFStringAppend(theString, @" ");
        }
      }
    }
  }

  v24 = *(a1 + 312);
  if (v24[70] == 1 && (v24[71] & 1) != 0 || v24[64] == 1)
  {
    v25 = *(a1 + 424);
    v26 = *MEMORY[0x1E6998250];
    v27 = NLTaggerCopyTagForCurrentToken();
    __p[0] = v27;
    v28 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 440), *a2);
    if (v27 && CFStringCompare(v27, v28, 1uLL))
    {
      CFDictionarySetValue(*(a1 + 304), v28, v27);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  v30 = *(a1 + 464);
  v29 = *(a1 + 472);
  if (v30 >= v29)
  {
    v33 = *(a1 + 456);
    v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 3);
    v35 = v34 + 1;
    if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v33) >> 3);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0x555555555555555)
    {
      v37 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(a1 + 456, v37);
    }

    v38 = 24 * v34;
    v39 = *a2;
    *(v38 + 16) = a2[2];
    *v38 = v39;
    p_length = 24 * v34 + 24;
    v40 = *(a1 + 456);
    v41 = *(a1 + 464) - v40;
    v42 = v38 - v41;
    memcpy((v38 - v41), v40, v41);
    v43 = *(a1 + 456);
    *(a1 + 456) = v42;
    *(a1 + 464) = p_length;
    *(a1 + 472) = 0;
    if (v43)
    {
      operator delete(v43);
    }
  }

  else
  {
    v31 = *a2;
    v30[1].location = a2[2];
    *v30 = v31;
    p_length = &v30[1].length;
  }

  *(a1 + 464) = p_length;
}

void sub_1C65B7508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  v35 = *(v33 - 88);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v33 - 80), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v33 - 72), 0);
  _Unwind_Resume(a1);
}

void *QP::Lexer::selectPersonLexemes(void *this)
{
  if (*this != -1)
  {
    v1 = 0uLL;
    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[7],CFRange &,0>();
  }

  return this;
}

void sub_1C65B7850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::Lexer::selectLocationLexemes(uint64_t this)
{
  if (*(this + 16) != -1)
  {
    v1 = 0uLL;
    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const(&)[9],CFRange &,0>();
  }

  return this;
}

void sub_1C65B7B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::tagTokenSingleQuote(uint64_t a1, CFIndex *a2, __CFString *a3)
{
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2000000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2000000000;
  v37 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3802000000;
  v32 = __Block_byref_object_copy__95;
  v6 = *a2;
  v33 = __Block_byref_object_dispose__96;
  v34 = v6;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3802000000;
  v28[3] = __Block_byref_object_copy__95;
  v28[4] = __Block_byref_object_dispose__96;
  v28[5] = v6;
  v28[6] = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3802000000;
  v25 = __Block_byref_object_copy__95;
  v26 = __Block_byref_object_dispose__96;
  v27 = xmmword_1C6631880;
  v7 = *(a1 + 440);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZN2QP5Lexer19tagTokenSingleQuoteE7NLTokenP10__CFString_block_invoke;
  v19[3] = &unk_1E8266CA8;
  v19[4] = &v22;
  v19[5] = v36;
  v19[9] = a1;
  v19[10] = a3;
  v19[6] = &v29;
  v19[7] = v28;
  v8 = *a2;
  v9 = a2[1];
  v21 = a2[2];
  v20 = v8;
  v19[8] = v38;
  CFEnumerateCharactersInCFString(v7, v6, v9, v19);
  v40.location = v30[5];
  v40.length = a2[1] + *a2 - v40.location;
  v30[6] = v40.length;
  if (CFStringFindCharacterFromSet(*(a1 + 440), *(a1 + 368), v40, 0, (v23 + 5)))
  {
    v10 = v23;
    v11 = v23[5];
    if (v11)
    {
      v12 = *a2 - v11 + a2[1];
      v13 = v30;
      v30[6] = v12;
      std::vector<long>::push_back[abi:ne200100]((a1 + 64), v13 + 5);
      std::vector<CFRange>::push_back[abi:ne200100](a1 + 88, a2);
      std::vector<CFRange>::push_back[abi:ne200100](a1 + 112, v30 + 5);
      v14 = copyStringInsertingSpacesBetweenIdeographCharacters(*(a1 + 440), *(v30 + 5));
      *&v18 = v14;
      CFStringAppend(a3, v14);
      v10 = v23;
      *(v30 + 5) = *(v23 + 5);
      if (v14)
      {
        CFRelease(v14);
        v10 = v23;
      }
    }

    std::vector<long>::push_back[abi:ne200100]((a1 + 64), v10 + 5);
    std::vector<CFRange>::push_back[abi:ne200100](a1 + 88, a2);
    v18 = 0uLL;
    std::vector<CFRange>::push_back[abi:ne200100](a1 + 112, &v18);
    if (CFStringGetLength(a3))
    {
      CFStringAppend(a3, @" ");
    }

    v15 = v23[6] + v23[5];
    v16 = v30;
    v30[5] = v15;
    v16[6] = *a2 - v15 + a2[1];
  }

  else
  {
    v16 = v30;
    v15 = v30[5];
  }

  if (v15 != -1)
  {
    if (v16[6])
    {
      std::vector<long>::push_back[abi:ne200100]((a1 + 64), v16 + 5);
      std::vector<CFRange>::push_back[abi:ne200100](a1 + 88, a2);
      std::vector<CFRange>::push_back[abi:ne200100](a1 + 112, v30 + 5);
      v17 = copyStringInsertingSpacesBetweenIdeographCharacters(*(a1 + 440), *(v30 + 5));
      *&v18 = v17;
      CFStringAppend(a3, v17);
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void sub_1C65B7F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 168), 8);
  _Block_object_dispose((v33 - 112), 8);
  _Block_object_dispose((v33 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__95(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void ___ZN2QP5Lexer19tagTokenSingleQuoteE7NLTokenP10__CFString_block_invoke(uint64_t a1, CFRange rangeToSearch)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v5 = *(a1 + 72);
  v19.location = rangeToSearch.location;
  v19.length = length;
  CharacterFromSet = CFStringFindCharacterFromSet(*(v5 + 440), *(v5 + 368), v19, 0, (*(*(a1 + 32) + 8) + 40));
  v7 = CharacterFromSet;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (*(*(*(a1 + 48) + 8) + 48))
    {
      v8 = CFStringGetLength(*(a1 + 80));
      v9 = *(*(*(a1 + 56) + 8) + 48);
      *&v18 = v8;
      *(&v18 + 1) = v9;
      std::vector<long>::push_back[abi:ne200100]((v5 + 64), &v18);
      std::vector<CFRange>::push_back[abi:ne200100](v5 + 88, (a1 + 88));
      std::vector<CFRange>::push_back[abi:ne200100](v5 + 112, &v18);
      std::vector<long>::push_back[abi:ne200100]((v5 + 64), (*(*(a1 + 32) + 8) + 40));
      std::vector<CFRange>::push_back[abi:ne200100](v5 + 88, (a1 + 88));
      v17 = 0uLL;
      std::vector<CFRange>::push_back[abi:ne200100](v5 + 112, &v17);
      v10 = copyStringInsertingSpacesBetweenIdeographCharacters(*(v5 + 440), *(*(*(a1 + 56) + 8) + 40));
      *&v17 = v10;
      CFStringAppend(*(a1 + 80), v10);
      CFStringAppend(*(a1 + 80), @" ");
      v11 = *(*(a1 + 56) + 8);
      *(v11 + 40) = location;
      *(v11 + 48) = 0;
      *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 56) + 8) + 40);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
      v12 = *(*(a1 + 56) + 8);
      *(v12 + 40) = location;
      *(v12 + 48) = length;
      v13 = *(*(a1 + 48) + 8);
      v14.length = *(v13 + 48);
      if (v14.length)
      {
        v14.location = *(v13 + 40);
        v15 = copyStringInsertingSpacesBetweenIdeographCharacters(*(v5 + 440), v14);
        *&v18 = v15;
        CFStringAppend(*(a1 + 80), v15);
        CFStringAppend(*(a1 + 80), @" ");
        *(*(*(a1 + 48) + 8) + 48) = location + length - *(*(*(a1 + 48) + 8) + 40);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        CFStringAppend(*(a1 + 80), @" ");
        v16 = *(*(a1 + 48) + 8);
        *(v16 + 40) = location;
        *(v16 + 48) = length;
      }
    }
  }

  else if (!CharacterFromSet)
  {
    *(*(*(a1 + 48) + 8) + 48) = location + length - *(*(*(a1 + 48) + 8) + 40);
    *(*(*(a1 + 56) + 8) + 48) = location + length - *(*(*(a1 + 56) + 8) + 40);
  }

  *(*(*(a1 + 40) + 8) + 24) = v7 != 0;
  ++*(*(*(a1 + 64) + 8) + 24);
}

void sub_1C65B81EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void std::vector<CFRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void QP::Lexer::tagTokenPunctuation(uint64_t a1, uint64_t a2, __CFString *theString, uint64_t a4, uint64_t a5)
{
  Length = CFStringGetLength(theString);
  v9 = copyStringInsertingSpacesBetweenIdeographCharacters(*(a1 + 440), *a2);
  v48 = v9;
  CFStringAppend(theString, v9);
  if ((*(a2 + 17) & 8) != 0)
  {
    goto LABEL_61;
  }

  *(&Length + 1) = CFStringGetLength(theString) - Length;
  std::vector<long>::push_back[abi:ne200100]((a1 + 64), &Length);
  std::vector<CFRange>::push_back[abi:ne200100](a1 + 88, a2);
  std::vector<CFRange>::push_back[abi:ne200100](a1 + 112, &Length);
  v10.location = *a2;
  v11 = *(a2 + 8);
  if (v11 + *a2 != a5)
  {
    goto LABEL_61;
  }

  if (*(*(a1 + 312) + 8) == 10)
  {
    Count = CFArrayGetCount(*(a1 + 408));
    v10.location = *a2;
    v11 = *(a2 + 8);
    if (!Count)
    {
      v10.length = *(a2 + 8);
      v13 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 440), v10);
      __p.__r_.__value_.__r.__words[0] = v13;
      v14 = *(a1 + 328);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 0x40000000;
      v45[2] = ___ZN2QP5Lexer19tagTokenPunctuationE7NLTokenP10__CFString7CFRange_block_invoke;
      v45[3] = &__block_descriptor_tmp_100;
      v46 = *a2;
      v15 = *(a2 + 16);
      v45[4] = a1;
      v47 = v15;
      QP::ParserGrammar::completions(v14, v13, v45);
      memset(&v50, 0, sizeof(v50));
      QP::getUTF8StringFromCFString(v13, &v50);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v50;
      }

      else
      {
        v16 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v18 = (v16 + size);
        while (1)
        {
          v19 = v16->__r_.__value_.__s.__data_[0];
          if (v19 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x400) == 0)
          {
            break;
          }

          v16 = (v16 + 1);
          if (!--size)
          {
            v16 = v18;
            break;
          }
        }
      }

      if ((*(&v50.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (!v50.__r_.__value_.__l.__size_ || v50.__r_.__value_.__l.__size_ > 3 || v16 != (v50.__r_.__value_.__r.__words[0] + v50.__r_.__value_.__l.__size_))
        {
LABEL_31:
          operator delete(v50.__r_.__value_.__l.__data_);
LABEL_32:
          if (v13)
          {
            CFRelease(v13);
          }

          v10.location = *a2;
          v11 = *(a2 + 8);
          goto LABEL_35;
        }

        theStringa = 0;
        std::string::__init_copy_ctor_external(&v43, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
      }

      else
      {
        if (HIBYTE(v50.__r_.__value_.__r.__words[2]) - 1 > 2 || v16 != (&v50 + HIBYTE(v50.__r_.__value_.__r.__words[2])))
        {
          goto LABEL_32;
        }

        v43 = v50;
        theStringa = 0;
      }

      v41 = *a2;
      v42 = *(a2 + 16);
      v20 = QP::Lexer::copyYearRangeCompletion(a1, &v43, &v41.location);
      theStringa = v20;
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
        v20 = theStringa;
      }

      if (v20 && CFStringGetLength(v20) >= 1)
      {
        CFArrayAppendValue(*(a1 + 408), theStringa);
      }

      nlp::CFScopedPtr<__CFString const*>::reset(&theStringa, 0);
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

LABEL_35:
  v41 = 0;
  v42 = 0;
  QP::Lexer::getExternalTypesForRange(a1, v10.location, v11, (a1 + 160), &v41);
  v22 = v41.length;
  location = v41.location;
  if (v41.location != v41.length)
  {
    v23 = (a1 + 136);
    do
    {
      memset(&__p, 0, sizeof(__p));
      v24 = *location;
      if (*(*location + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v24 + 48), *(v24 + 56));
      }

      else
      {
        __p = *(v24 + 48);
      }

      if (a1 + 192 == std::__tree<std::string>::find<std::string>(a1 + 184, &__p.__r_.__value_.__l.__data_))
      {
        v25 = *(a1 + 144);
        v26 = *(a1 + 152);
        if (v25 >= v26)
        {
          v29 = (v25 - *v23) >> 4;
          v30 = v29 + 1;
          if ((v29 + 1) >> 60)
          {
            std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
          }

          v31 = v26 - *v23;
          if (v31 >> 3 > v30)
          {
            v30 = v31 >> 3;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF0)
          {
            v32 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          v52 = a1 + 136;
          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1 + 136, v32);
          }

          v33 = 16 * v29;
          v34 = *location;
          *(16 * v29) = *location;
          if (*(&v34 + 1))
          {
            atomic_fetch_add_explicit((*(&v34 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v28 = (v33 + 16);
          v35 = *(a1 + 136);
          v36 = *(a1 + 144) - v35;
          v37 = v33 - v36;
          memcpy((v33 - v36), v35, v36);
          v38 = *(a1 + 136);
          *(a1 + 136) = v37;
          *(a1 + 144) = v28;
          v39 = *(a1 + 152);
          *(a1 + 152) = 0;
          v50.__r_.__value_.__r.__words[2] = v38;
          v51 = v39;
          v50.__r_.__value_.__r.__words[0] = v38;
          v50.__r_.__value_.__l.__size_ = v38;
          std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(&v50.__r_.__value_.__l.__data_);
        }

        else
        {
          *v25 = *location;
          v27 = location[1];
          v25[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          v28 = v25 + 2;
        }

        *(a1 + 144) = v28;
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 184, &__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      location += 2;
    }

    while (location != v22);
  }

  v50.__r_.__value_.__r.__words[0] = &v41;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v50);
LABEL_61:
  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1C65B874C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35)
{
  if (*(v35 - 113) < 0)
  {
    operator delete(*(v35 - 136));
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a35, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP5Lexer19tagTokenPunctuationE7NLTokenP10__CFString7CFRange_block_invoke(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 32);
  v6.length = *(a1 + 40);
  v6.location = 0;
  v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(v3 + 440), v6);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, v4);
  CFStringAppend(Mutable, a2);
  if (Mutable != *(v3 + 440))
  {
    CFArrayAppendValue(*(v3 + 408), Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1C65B88C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFStringRef QP::Lexer::copyYearRangeCompletion(uint64_t a1, uint64_t a2, CFIndex *a3)
{
  v3 = *(a1 + 312);
  v4 = *(v3 + 88);
  if (!v4)
  {
    return 0;
  }

  v24 = -1;
  CurrentTime = getCurrentTime(v4, *(v3 + 80));
  CFCalendarDecomposeAbsoluteTime(v4, CurrentTime, "y", &v24);
  memset(&v23, 0, sizeof(v23));
  std::to_string(&v23, v24);
  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
    v10 = *(a2 + 23);
    memset(&i, 0, sizeof(i));
    if (v10 < 0)
    {
      std::string::__init_copy_ctor_external(&i, *a2, *(a2 + 8));
      goto LABEL_7;
    }
  }

  else
  {
    __str = *a2;
  }

  for (i = *a2; ; std::string::append(&i, "9", 1uLL))
  {
LABEL_7:
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size > 3)
    {
      break;
    }

    std::string::append(&__str, "0", 1uLL);
  }

  v12 = std::stoi(&__str, 0, 10);
  if (v12 <= v24)
  {
    v13 = std::stoi(&i, 0, 10);
    if (v13 <= v24)
    {
      p_i = &i;
    }

    else
    {
      p_i = &v23;
    }

    std::string::operator=(&i, p_i);
    v15 = *MEMORY[0x1E695E480];
    v25.length = *a3;
    v25.location = 0;
    v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 440), v25);
    v17 = v16;
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v19 = &i;
    if ((i.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = i.__r_.__value_.__r.__words[0];
    }

    v9 = CFStringCreateWithFormat(v15, 0, @"%@%s to %s", v16, p_str, v19, v16);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    v9 = 0;
  }

  if (SHIBYTE(i.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(i.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1C65B8B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::selectKnowledgeSourceLexemes(QP::Lexer *this, const CFRange *a2, uint64_t a3, int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (*(*(this + 39) + 62) == 1)
    {
      v5 = *(this + 72);
      if (v5)
      {
        if (*(v5 + 24))
        {
          v29[0] = 0;
          v29[1] = v29;
          v29[2] = 0x2000000000;
          v29[3] = -1;
          v25 = 0;
          v26 = &v25;
          v27 = 0x2000000000;
          v28 = -1;
          v19 = 0;
          v20 = &v19;
          v21 = 0x3802000000;
          v22 = __Block_byref_object_copy__95;
          v23 = __Block_byref_object_dispose__96;
          v24 = xmmword_1C6631880;
          if (QP::Lexer::selectKnowledgeSourceLexemes(CFRange const*,long,BOOL)::onceIgnoreToken != -1)
          {
            QP::Lexer::selectKnowledgeSourceLexemes();
          }

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 0x40000000;
          v17[2] = ___ZN2QP5Lexer28selectKnowledgeSourceLexemesEPK7CFRangelb_block_invoke_3;
          v17[3] = &unk_1E8266D20;
          v17[4] = &v25;
          v17[5] = &v19;
          v17[6] = v29;
          v17[7] = this;
          v18 = v17;
          if (*(*(this + 39) + 62))
          {
            v8 = &v18;
          }

          else
          {
            v8 = 0;
          }

          (*(*(this + 72) + 24))(**(this + 72), *(this + 55), a2, a3, 0, v8);
          v9 = v26[3];
          if (v9 != -1)
          {
            Identifier = QPAnnotationsGetIdentifier(v9);
            if (Identifier)
            {
              if (lexerLogger(void)::token != -1)
              {
                QP::Lexer::loadLexerResource();
              }

              v11 = lexerLogger(void)::log;
              if (os_log_type_enabled(lexerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                v13 = v20[5];
                v12 = v20[6];
                *buf = 138412802;
                v31 = Identifier;
                v32 = 2048;
                v33 = v13;
                v34 = 2048;
                v35 = v12;
                _os_log_impl(&dword_1C6584000, v11, OS_LOG_TYPE_DEFAULT, "safety: found annotation type:%@ range:{%ld, %ld}", buf, 0x20u);
              }

              CFAttributedStringSetAttribute(*(this + 56), *(v20 + 5), kQPInputAttributeAnnotationKey, Identifier);
            }
          }

          if (!(*(*(this + 72) + 16))(**(this + 72)))
          {
            if (lexerLogger(void)::token != -1)
            {
              QP::Lexer::loadLexerResource();
            }

            v14 = lexerLogger(void)::log;
            if (os_log_type_enabled(lexerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(*(this + 39) + 48);
              *buf = 134217984;
              v31 = v15;
              _os_log_impl(&dword_1C6584000, v14, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] disabled query embedding generation because annotations resources were not found", buf, 0xCu);
            }

            QP::ParserConfiguration::setIsMissingAnnotations(*(this + 39), *MEMORY[0x1E695E4D0]);
          }

          _Block_object_dispose(&v19, 8);
          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(v29, 8);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

CFSetRef ___ZN2QP5Lexer28selectKnowledgeSourceLexemesEPK7CFRangelb_block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E8266D08;
  result = CFSetCreate(*MEMORY[0x1E695E480], &v2, 2, MEMORY[0x1E695E9F8]);
  QP::Lexer::selectKnowledgeSourceLexemes(CFRange const*,long,BOOL)::sIgnoreAnnotations = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN2QP5Lexer28selectKnowledgeSourceLexemesEPK7CFRangelb_block_invoke_3(void *a1, uint64_t a2, uint64_t a3, const __CFString *value)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a1[7];
  v9 = *(*(a1[4] + 8) + 24);
  if (v9 != -1)
  {
    v10 = *(a1[5] + 8);
    v12 = *(v10 + 40);
    v11 = *(v10 + 48);
    if (v12 != a2 || v11 != a3)
    {
      Identifier = QPAnnotationsGetIdentifier(v9);
      if (Identifier)
      {
        v15 = Identifier;
        if (lexerLogger(void)::token != -1)
        {
          ___ZN2QP5LexerC2ENSt3__110shared_ptrINS_19ParserConfigurationEEENS2_INS_13ParserGrammarEEE_block_invoke_cold_1();
        }

        v16 = lexerLogger(void)::log;
        if (os_log_type_enabled(lexerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1[5] + 8);
          v19 = *(v17 + 40);
          v18 = *(v17 + 48);
          v30 = 138412802;
          v31 = v15;
          v32 = 2048;
          v33 = v19;
          v34 = 2048;
          v35 = v18;
          _os_log_impl(&dword_1C6584000, v16, OS_LOG_TYPE_DEFAULT, "safety: found annotation type:%@ range:{%ld, %ld}", &v30, 0x20u);
        }

        CFAttributedStringSetAttribute(*(v8 + 448), *(*(a1[5] + 8) + 40), kQPInputAttributeAnnotationKey, v15);
      }

      *(*(a1[6] + 8) + 24) = -1;
      *(*(a1[4] + 8) + 24) = -1;
      *(*(a1[5] + 8) + 40) = xmmword_1C6631880;
    }
  }

  result = CFSetContainsValue(QP::Lexer::selectKnowledgeSourceLexemes(CFRange const*,long,BOOL)::sIgnoreAnnotations, value);
  if (!result)
  {
    result = QPAnnotationsGetID(value);
    v21 = result;
    v22 = *(*(v8 + 312) + 8) == 14 ? QP::priorityIDForString(__CFString const*,BOOL)::visualPrioritySet : QP::priorityIDForString(__CFString const*,BOOL)::defaultPrioritySet;
    if (value)
    {
      for (i = 0; i != 10; ++i)
      {
        result = CFStringCompare(value, v22[i], 0);
        if (!result)
        {
          break;
        }
      }
    }

    else
    {
      i = 10;
    }

    if ((v24 = *(*(a1[4] + 8) + 24), v25 = *(a1[6] + 8), v24 == -1) || (v26 = *(v25 + 24), i < v26) || (i == v26 ? (v27 = v21 < v24) : (v27 = 0), v27))
    {
      *(v25 + 24) = i;
      *(*(a1[4] + 8) + 24) = v21;
      v28 = *(a1[5] + 8);
      *(v28 + 40) = a2;
      *(v28 + 48) = a3;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN2QP5Lexer19selectEntityLexemesEP10__CFString_block_invoke(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v8 = v6;
  if (v6 != v7)
  {
    while (*v8 != a3)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = *(v5 + 72);
        break;
      }
    }
  }

  if (v7 != v8)
  {
    v9 = v8 - v6;
    v10 = (v8 - v6) >> 3;
    v11 = *(v5 + 112);
    if (*(v11 + 2 * v9 + 8) + *(v11 + 2 * v9) >= a3 + a4)
    {
      v15 = v10;
    }

    else
    {
      v12 = *(v5 + 120) - v11;
      if (v10 <= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = v10;
      }

      v14 = (v11 + 16 * v10 + 24);
      v15 = v10;
      while (v13 != v15)
      {
        ++v15;
        v16 = *(v14 - 1) + *v14;
        v14 += 2;
        if (v16 >= a3 + a4)
        {
          goto LABEL_16;
        }
      }

      v15 = v13;
    }

LABEL_16:
    v17 = *(v5 + 88);
    v18 = *(v17 + 16 * v10);
    QP::LexemeConverter::enumerateEntitiesWithTypeAndValues(*(v5 + 344), *(v5 + 440), v18, *(v17 + 16 * v15) - v18 + *(v17 + 16 * v15 + 8), a2, a5);
  }
}

void ___ZN2QP5Lexer19selectEntityLexemesEP10__CFString_block_invoke_2(void *a1, std::string **a2)
{
  v4 = a1[4];
  memset(&v28, 0, sizeof(v28));
  v5 = *a2;
  if (SHIBYTE((*a2)[2].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v5[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v5[2];
  }

  if (v4 + 24 == std::__tree<std::string>::find<std::string>((v4 + 23), &v28.__r_.__value_.__l.__data_))
  {
    v6 = v4[18];
    v7 = v4[19];
    if (v6 >= v7)
    {
      v10 = v4[17];
      v11 = (v6 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v32 = v4 + 17;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v4 + 17), v14);
      }

      v15 = 16 * v11;
      v16 = *a2;
      *(16 * v11) = *a2;
      if (*(&v16 + 1))
      {
        atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v9 = (v15 + 16);
      v17 = v4[17];
      v18 = v4[18] - v17;
      v19 = v15 - v18;
      memcpy((v15 - v18), v17, v18);
      v20 = v4[17];
      v4[17] = v19;
      v4[18] = v9;
      v21 = v4[19];
      v4[19] = 0;
      v30 = v20;
      v31 = v21;
      __p[0] = v20;
      __p[1] = v20;
      std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(__p);
    }

    else
    {
      *v6 = *a2;
      v8 = a2[1];
      v6[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
      }

      v9 = v6 + 2;
    }

    v4[18] = v9;
    std::to_string(&v27, a1[5]);
    std::to_string(&v26, a1[6]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v26;
    }

    else
    {
      v22 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v27, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v30 = v24->__r_.__value_.__r.__words[2];
    *__p = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>((v4 + 29), __p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v4 + 23), &v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1C65B952C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP5Lexer20selectDefaultLexemesEP10__CFString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4002000000;
  v26 = __Block_byref_object_copy__120;
  v27 = __Block_byref_object_dispose__121;
  memset(__p, 0, sizeof(__p));
  v3 = (v2[9] - v2[8]) >> 3;
  LOBYTE(v17) = 1;
  std::vector<BOOL>::vector(__p, v3);
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  memset(v22, 0, sizeof(v22));
  v4 = v2[73];
  v5 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZN2QP5Lexer20selectDefaultLexemesEP10__CFString_block_invoke_122;
  v16[3] = &unk_1E8266DB0;
  v16[4] = &v29;
  v16[5] = &v17;
  v16[6] = &v23;
  v16[7] = v2;
  QPDataDetectorEnumerateResults(v4, v5, v16);
  if (*(v30 + 24) == 1)
  {
    __val[0] = 0;
    __val[1] = 0;
    memset(&v14, 0, sizeof(v14));
    std::string::basic_string[abi:ne200100]<0>(&v14, "Location");
    v6 = QP::ParserGrammar::symbolID(v2[41], &v14);
    QP::ParserGrammar::symbolFlag(v2[41], v6);
    if (v24[6])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if ((*(v24[5] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
        {
          *__val = *(v2[11] + v7);
          std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
        }

        ++v8;
        v7 += 16;
      }

      while (v24[6] > v8);
    }

    __val[0] = -1;
    __val[1] = -1;
    v9 = v18[5];
    v10 = v18[6];
    if (v9 != v10)
    {
      do
      {
        v11 = *v9;
        v12 = v9[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (__val[1] == -1)
        {
          *__val = *&v11[3].__r_.__value_.__l.__data_;
          std::string::operator=(&v14, v11);
        }

        else
        {
          data = v11[3].__r_.__value_.__l.__data_;
          if (__val[0] + __val[1] < data)
          {
            __val[1] = data - __val[0] + v11[3].__r_.__value_.__l.__size_;
          }
        }

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v9 += 2;
      }

      while (v9 != v10);
      if (__val[1] != -1)
      {
        std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
      }
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  _Block_object_dispose(&v17, 8);
  v33 = v22;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v33);
  _Block_object_dispose(&v23, 8);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v29, 8);
}

void sub_1C65B9BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (*(v56 - 137) < 0)
  {
    operator delete(*(v56 - 160));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Block_object_dispose(&a42, 8);
  a26 = a10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Block_object_dispose(&a50, 8);
  if (a55)
  {
    operator delete(a55);
  }

  _Block_object_dispose((v56 - 192), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__120(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  result = a2[3];
  a1[3] = result;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__121(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    operator delete(v1);
  }
}

void ___ZN2QP5Lexer20selectDefaultLexemesEP10__CFString_block_invoke_122(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v6 = *(a1 + 56);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  v9 = v7;
  if (v7 != v8)
  {
    while (*v9 != a3)
    {
      v9 += 8;
      if (v9 == v8)
      {
        v9 = *(v6 + 72);
        break;
      }
    }
  }

  if (v8 != v9)
  {
    v10 = v9 - v7;
    v11 = v10 >> 3;
    v12 = *(v6 + 112);
    if (*(v12 + 2 * v10 + 8) + *(v12 + 2 * v10) >= a3 + a4)
    {
      v16 = v10 >> 3;
    }

    else
    {
      v13 = *(v6 + 120) - v12;
      if (v11 <= v13 >> 4)
      {
        v14 = v13 >> 4;
      }

      else
      {
        v14 = v10 >> 3;
      }

      v15 = (v12 + 16 * v11 + 24);
      v16 = v10 >> 3;
      while (v14 != v16)
      {
        ++v16;
        v17 = *(v15 - 1) + *v15;
        v15 += 2;
        if (v17 >= a3 + a4)
        {
          goto LABEL_16;
        }
      }

      v16 = v14;
    }

LABEL_16:
    v18 = v10 >> 3;
    v19 = *(v6 + 88);
    v21 = *(a1 + 32);
    v22 = *(v19 + 16 * v11);
    QP::LexemeConverter::enumerateEntitiesWithTypeAndValues(*(v6 + 344), *(v6 + 440), v22, *(v19 + 16 * v16) - v22 + *(v19 + 16 * v16 + 8), a2, a5);
    v20 = *(*(*(a1 + 48) + 8) + 40);
    *(v20 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v18);
  }
}

void ___ZN2QP5Lexer20selectDefaultLexemesEP10__CFString_block_invoke_2(void *a1, std::string **a2)
{
  v4 = a1[6];
  memset(&v59, 0, sizeof(v59));
  v5 = *a2;
  if (SHIBYTE((*a2)[2].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, v5[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v5[2];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v59;
  }

  else
  {
    v6 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  v8 = v6 + size;
  if (size >= 10)
  {
    v9 = size;
    v10 = v6;
    do
    {
      v11 = memchr(v10, 73, v9 - 9);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x6F7A656D69547349 && *(v11 + 4) == 25966)
      {
        if (v11 == v8 || v11 - v6 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_32;
      }

      v10 = (v11 + 1);
      v9 = v8 - v10;
    }

    while (v8 - v10 >= 10);
  }

  if (size >= 6)
  {
LABEL_19:
    v13 = size;
    v14 = v6;
    do
    {
      v15 = memchr(v14, 73, v13 - 5);
      if (!v15)
      {
        break;
      }

      if (*v15 == 1767142217 && *(v15 + 2) == 25965)
      {
        if (v15 != v8 && v15 - v6 != -1)
        {
          *(*(a1[4] + 8) + 24) = 1;
        }

        break;
      }

      v14 = (v15 + 1);
      v13 = v8 - v14;
    }

    while (v8 - v14 >= 6);
  }

LABEL_32:
  if (size >= 8 && (*(*(a1[4] + 8) + 24) & 1) != 0)
  {
    v17 = v6;
    while (1)
    {
      v18 = memchr(v17, 76, size - 7);
      if (!v18)
      {
        goto LABEL_45;
      }

      if (*v18 == 0x6E6F697461636F4CLL)
      {
        break;
      }

      v17 = (v18 + 1);
      size = v8 - v17;
      if (v8 - v17 < 8)
      {
        goto LABEL_45;
      }
    }

    if (v18 != v8 && v18 - v6 != -1)
    {
      v19 = *(a1[5] + 8);
      v20 = v19[6];
      v21 = v19[7];
      if (v20 < v21)
      {
        *v20 = *a2;
        v22 = a2[1];
        v20[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
        }

        v23 = v20 + 2;
LABEL_87:
        v19[6] = v23;
        goto LABEL_88;
      }

      v45 = v19[5];
      v46 = (v20 - v45) >> 4;
      v47 = v46 + 1;
      if (!((v46 + 1) >> 60))
      {
        v48 = v21 - v45;
        if (v48 >> 3 > v47)
        {
          v47 = v48 >> 3;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        v63 = v19 + 5;
        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v19 + 5), v49);
        }

        v50 = 16 * v46;
        v51 = *a2;
        *(16 * v46) = *a2;
        if (*(&v51 + 1))
        {
          atomic_fetch_add_explicit((*(&v51 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v23 = (v50 + 16);
        v52 = v19[5];
        v53 = v19[6] - v52;
        v54 = v50 - v53;
        memcpy((v50 - v53), v52, v53);
        v55 = v19[5];
        v19[5] = v54;
        v19[6] = v23;
        v56 = v19[7];
        v19[7] = 0;
        v61 = v55;
        v62 = v56;
        __p[0] = v55;
        __p[1] = v55;
        std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(__p);
        goto LABEL_87;
      }

LABEL_91:
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }
  }

LABEL_45:
  if (v4 + 24 != std::__tree<std::string>::find<std::string>((v4 + 23), &v59.__r_.__value_.__l.__data_))
  {
    goto LABEL_88;
  }

  v24 = *a2;
  if (LOWORD((*a2)[3].__r_.__value_.__r.__words[2]) == 3 && *(v4[39] + 8) == 10)
  {
    goto LABEL_88;
  }

  v25 = v4[18];
  v26 = v4[19];
  if (v25 >= v26)
  {
    v29 = v4[17];
    v30 = (v25 - v29) >> 4;
    v31 = v30 + 1;
    if ((v30 + 1) >> 60)
    {
      goto LABEL_91;
    }

    v32 = v26 - v29;
    if (v32 >> 3 > v31)
    {
      v31 = v32 >> 3;
    }

    if (v32 >= 0x7FFFFFFFFFFFFFF0)
    {
      v33 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v31;
    }

    v63 = v4 + 17;
    if (v33)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((v4 + 17), v33);
    }

    v34 = (16 * v30);
    *v34 = v24;
    v35 = a2[1];
    v34[1] = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    v28 = v34 + 2;
    v36 = v4[17];
    v37 = v4[18] - v36;
    v38 = v34 - v37;
    memcpy(v34 - v37, v36, v37);
    v39 = v4[17];
    v4[17] = v38;
    v4[18] = v28;
    v40 = v4[19];
    v4[19] = 0;
    v61 = v39;
    v62 = v40;
    __p[0] = v39;
    __p[1] = v39;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(__p);
  }

  else
  {
    *v25 = v24;
    v27 = a2[1];
    v25[1] = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    }

    v28 = v25 + 2;
  }

  v4[18] = v28;
  std::to_string(&v58, a1[7]);
  std::to_string(&v57, a1[8]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v57;
  }

  else
  {
    v41 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v57.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v58, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v61 = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>((v4 + 29), __p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v4 + 23), &v59.__r_.__value_.__l.__data_);
LABEL_88:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }
}

void sub_1C65BA32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::sortLexemes(uint64_t a1, uint64_t **a2)
{
  v5 = *(a1 + 136);
  v6 = *(a1 + 144);
  v7 = a1 + 136;
  v8 = 126 - 2 * __clz((v6 - v5) >> 4);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = QP::lexeme_ordered_range;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,false>(v5, v6, &v18, v9, 1);
  QP::Lexer::expand(a1, a1 + 184, v7, &v15);
  std::vector<std::shared_ptr<QP::Lexeme>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>,std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>>(a2, *a2, v15, v16, (v16 - v15) >> 4);
  v10 = *a2;
  v11 = a2[1];
  v12 = 126 - 2 * __clz((v11 - *a2) >> 4);
  v13 = v11 == *a2;
  v18 = QP::lexeme_less_than_range;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,false>(v10, v11, &v18, v14, 1);
  v19 = &v15;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v19);
}

void sub_1C65BA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void QP::Lexer::addLexemes(uint64_t a1, uint64_t *a2)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v3 = *(a1 + 440);
  Length = CFStringGetLength(v3);
  v5 = *(a1 + 400);
  memset(v28, 0, sizeof(v28));
  std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v28, *a2, a2[1], (a2[1] - *a2) >> 4);
  QP::subtokenize(v3, 0, Length, v5, &v32, &v29, v28);
  v20 = v28;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
  v35[0] = QP::ranges_greater_than_range;
  if (v30 == v29)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,false>(v29, v30, v35, v7, 1);
  v8 = v29;
  for (i = v30; v8 != i; v8 = (v8 + 24))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x4002000000;
    v23 = __Block_byref_object_copy__128;
    v24 = __Block_byref_object_dispose__129;
    v26 = 0;
    v27 = 0;
    __p = 0;
    v9 = v8->n128_u64[0];
    v10 = v8->n128_u64[1];
    if (v8->n128_u64[0] == v10)
    {
      v14 = &v20;
    }

    else
    {
      v17 = v8;
      v11 = 0;
      do
      {
        v12 = *v9;
        v13 = v9[1];
        memset(v19, 0, sizeof(v19));
        std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v19, *a2, a2[1], (a2[1] - *a2) >> 4);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = ___ZN2QP5Lexer10addLexemesERNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke;
        v18[3] = &unk_1E8266DF8;
        v18[5] = a2;
        v18[6] = v11;
        v18[4] = &v20;
        QP::enumerateIndexesOfRange(v19, v12, v13, v18);
        v35[0] = v19;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v35);
        ++v11;
        v9 += 2;
      }

      while (v9 != v10);
      v14 = v21;
      v8 = v17;
    }

    std::vector<std::vector<CFRange>>::push_back[abi:ne200100](a1 + 552, v14 + 5);
    _Block_object_dispose(&v20, 8);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  v20 = &v29;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_1C65BA738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a24);
  a24 = v30 - 160;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a24);
  v32 = *(v30 - 136);
  if (v32)
  {
    *(v30 - 128) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void QP::subtokenize(const __CFString *a1, CFIndex a2, uint64_t a3, const __CFCharacterSet *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v7 = a3 - 1;
  if (a3 < 1)
  {
    return;
  }

  for (i = 1; ; ++i)
  {
    *&v21 = a2;
    *(&v21 + 1) = i;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(&v18, *a7, a7[1], (a7[1] - *a7) >> 4);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = 0;
    if (a1)
    {
      result = xmmword_1C6631880;
      v34.location = a2;
      v34.length = i;
      if (CFStringFindCharacterFromSet(a1, a4, v34, 0, &result) && result.location == a2 && i == result.length)
      {
        v14 = 0;
        v15 = 1;
      }

      else
      {
        memset(v27, 0, sizeof(v27));
        std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v27, v18, v19, (v19 - v18) >> 4);
        __p = MEMORY[0x1E69E9820];
        v23 = 0x40000000;
        v24 = ___ZN2QPL13containsRangeEPK10__CFString7CFRangePK16__CFCharacterSetNSt3__16vectorINS7_10shared_ptrINS_6LexemeEEENS7_9allocatorISB_EEEEPb_block_invoke;
        v25 = &unk_1E8266F08;
        v26 = &v29;
        QP::enumerateIndexesOfRange(v27, a2, i, &__p);
        v33 = v27;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v33);
        v15 = 0;
        v14 = *(v30 + 24) == 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    _Block_object_dispose(&v29, 8);
    __p = &v18;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v14)
    {
      goto LABEL_16;
    }

    if (!v7)
    {
      break;
    }

    __p = 0;
    v23 = 0;
    v24 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *a5, a5[1], (a5[1] - *a5) >> 4);
    if ((v15 & 1) == 0)
    {
      std::vector<CFRange>::push_back[abi:ne200100](&__p, &v21);
    }

    memset(v17, 0, sizeof(v17));
    std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v17, *a7, a7[1], (a7[1] - *a7) >> 4);
    QP::subtokenize(a1, a2 + i, v7, a4, &__p, a6, v17);
    v29 = v17;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v29);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

LABEL_16:
    if (--v7 == -1)
    {
      return;
    }
  }

  if ((v15 & 1) == 0)
  {
    std::vector<CFRange>::push_back[abi:ne200100](a5, &v21);
  }

  std::vector<std::vector<CFRange>>::push_back[abi:ne200100](a6, a5);
}

void sub_1C65BAA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v26 - 112) = &a26;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v26 - 112));
  _Block_object_dispose((v26 - 144), 8);
  *(v26 - 144) = &a16;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v26 - 144));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__128(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__129(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t *QP::enumerateIndexesOfRange(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v26 = 0;
  if (a2)
  {
    v8 = *result;
    v7 = result[1];
    if (v7 != *result)
    {
      v10 = (v7 - *result) >> 4;
      do
      {
        v11 = v10 >> 1;
        v12 = &v8[2 * (v10 >> 1)];
        v14 = *v12;
        v13 = v12 + 2;
        v10 += ~(v10 >> 1);
        if (*(v14 + 80) + *(v14 + 72) <= a2)
        {
          v8 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
      if (v8 != v7)
      {
        v15 = v8;
        do
        {
          v16 = *(*v15 + 72);
          if (v16 == a2 && *(*v15 + 80) == a3)
          {
            result = (*(a4 + 16))(a4, (v15 - *v6) >> 4, &v26);
            if (v26)
            {
              return result;
            }

            v7 = v6[1];
          }

          else if (v16 > a2)
          {
            return result;
          }

          v8 += 2;
          v15 += 2;
        }

        while (v8 != v7);
      }
    }
  }

  else
  {
    v19 = *result;
    v18 = result[1];
    if (v18 != *result)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = *(v19 + v20);
        v23 = *(v22 + 72);
        v24 = *(v22 + 80);
        if (v23)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 == a3;
        }

        if (v25)
        {
          result = (*(a4 + 16))(a4, v21, &v26);
          if (v26)
          {
            return result;
          }

          v19 = *v6;
          v18 = v6[1];
        }

        else if (v23 > 0)
        {
          return result;
        }

        ++v21;
        v20 += 16;
      }

      while (v21 < (v18 - v19) >> 4);
    }
  }

  return result;
}