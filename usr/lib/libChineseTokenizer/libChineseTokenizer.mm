void zhtok::WordBreaker::WordBreaker(zhtok::WordBreaker *this, const __CFLocale *a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = xmmword_29773D900;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  v2 = MEMORY[0x29C273590](a2);
  zhtok::UTF8StringFromCFString(v2, v3);
}

void sub_2977378DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x29C2738A0](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t zhtok::WordBreaker::close(zhtok::WordBreaker *this)
{
  result = *this;
  if (result)
  {
    result = ubrk_close();
    *this = 0;
  }

  return result;
}

void zhtok::WordBreaker::~WordBreaker(zhtok::WordBreaker *this)
{
  if (*this)
  {
    ubrk_close();
    *this = 0;
  }

  utext_close((this + 16));
}

uint64_t zhtok::WordBreaker::set(zhtok::WordBreaker *this, const unsigned __int16 *a2, int64_t a3)
{
  if (!*this)
  {
    return 0;
  }

  *(this + 1) = xmmword_29773D900;
  *(this + 2) = 0u;
  v4 = (this + 16);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  status = U_ZERO_ERROR;
  utext_openUChars((this + 16), a2, a3, &status);
  if (status < U_ILLEGAL_ARGUMENT_ERROR)
  {
    v6 = *this;
    ubrk_setUText();
    v7 = status;
    utext_close(v4);
    if (v7 <= U_ZERO_ERROR)
    {
      v8 = *this;
      *(this + 2) = ubrk_first();
      return 1;
    }
  }

  else
  {
    utext_close(v4);
  }

  return 0;
}

__CFString *createPathRelativeToPlatformRoot(const char *a1)
{
  Mutable = CFStringCreateMutable(0, 1024);
  v3 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "/", 0x8000100u);
  CFStringAppend(Mutable, v3);
  if (a1)
  {
    CFStringAppendCString(Mutable, a1, 0x8000100u);
  }

  CFRelease(v3);
  return Mutable;
}

CFComparisonResult languageForLocale(const __CFLocale *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Value = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F70]);
  v3 = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F78]);
  if (CFStringCompare(Value, @"zh", 0) || !v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = CFStringCompare(v3, @"Hans", 0);
  if (result)
  {
    if (CFStringCompare(v3, @"Hant", 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

__CFString *languageModelBundleNameForLocale(const __CFLocale *a1)
{
  if (a1 && (Value = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F70]), CFStringCompare(Value, @"zh", 0) == kCFCompareEqualTo))
  {
    return @"Chinese.lm";
  }

  else
  {
    return &stru_2A1E527B8;
  }
}

CFLocaleRef createLocaleForLanguage(int a1)
{
  v1 = "";
  if (a1 == 1)
  {
    v1 = "zh-Hant";
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = "zh-Hans";
  }

  v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  v4 = CFLocaleCreate(0, v3);
  CFRelease(v3);
  return v4;
}

void zhtok::UTF8StringFromCFString(const __CFString *this, const __CFString *a2)
{
  Length = CFStringGetLength(this);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_297737CEC(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x29C2738A0](v3, v1);
  _Unwind_Resume(a1);
}

void sub_297737D84(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x29C2738A0](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t zhtok::LatticeWord::clearHypotheses(zhtok::LatticeWord *this)
{
  result = *(this + 1);
  if (result)
  {
    return zhtok::HypothesisSet::clear(result);
  }

  return result;
}

uint64_t ChineseTokenizerCreate(const __CFLocale *a1)
{
  Value = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F70]);
  if (CFStringCompare(Value, @"zh", 0) == kCFCompareEqualTo)
  {
    operator new();
  }

  return 0;
}

uint64_t ChineseTokenizerRelease(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ChineseTokenizerSetString(zhtok::WordLatticeController **this, __CFString *a2, CFRange a3)
{
  if (this)
  {
    zhtok::ChineseLMTokenizer::setString(this, a2, a3);
  }
}

zhtok::ChineseLMTokenizer *ChineseTokenizerAdvanceToNextToken(zhtok::ChineseLMTokenizer *this)
{
  if (this)
  {
    return zhtok::ChineseLMTokenizer::advanceToNextToken(this);
  }

  return this;
}

zhtok::ChineseLMTokenizer *ChineseTokenizerGetCurrentTokenRange(zhtok::ChineseLMTokenizer *result)
{
  if (result)
  {
    return zhtok::ChineseLMTokenizer::getCurrentTokenRange(result);
  }

  return result;
}

zhtok::ChineseLMTokenizer *ChineseTokenizerGoToTokenAtIndex(zhtok::ChineseLMTokenizer *this, uint64_t a2)
{
  if (this)
  {
    return zhtok::ChineseLMTokenizer::goToTokenAtIndex(this, a2);
  }

  return this;
}

uint64_t ChineseTokenizerSetDynamicLexicon(zhtok::ChineseLMTokenizer *a1, CFArrayRef theArray)
{
  v2 = 0;
  if (a1 && theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      v5 = zhtok::ChineseLMTokenizer::mutableWordLatticeController(a1);
      zhtok::DynamicLexiconBuilder::DynamicLexiconBuilder(v8);
      v7 = 0;
      v2 = zhtok::DynamicLexiconBuilder::build(v8, *(v5 + 8), theArray, &v7);
      if (v2)
      {
        zhtok::WordLatticeController::setDynamicLexicon(v5, v7);
      }

      zhtok::DynamicLexiconBuilder::~DynamicLexiconBuilder(v8);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_297737FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  zhtok::DynamicLexiconBuilder::~DynamicLexiconBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t ChineseTokenizerSetCustomWordCheckBlock(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    return zhtok::ChineseLMTokenizer::setCustomWordCheckBlock(a1, a2, a3);
  }

  return a1;
}

uint64_t reportAssertionFailure(const char *a1, int a2, const char *a3, const char *a4)
{
  v7 = MEMORY[0x29EDCA610];
  if (a4)
  {
    fprintf(*MEMORY[0x29EDCA610], "ASSERTION FAILED: %s\n", a4);
  }

  else
  {
    fwrite("SHOULD NEVER BE REACHED\n", 0x18uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  return fprintf(*v7, "%s(%d) : %s\n", a1, a2, a3);
}

void reportBacktrace()
{
  v14 = *MEMORY[0x29EDCA608];
  v13 = 0;
  *v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v0 = backtrace(v11, 33);
  v1 = (v0 - 2);
  v2 = backtrace_symbols(v12, v1);
  if (v2)
  {
    v3 = v2;
    if (v0 >= 3)
    {
      v4 = 0;
      v5 = MEMORY[0x29EDCA610];
      do
      {
        v6 = v3[v4];
        v7 = v4 + 1;
        v8 = *v5;
        v9 = *(v12 + v4);
        if (v6)
        {
          fprintf(v8, "%-3d %p %s\n");
        }

        else
        {
          fprintf(v8, "%-3d %p\n");
        }

        v4 = v7;
      }

      while (v1 != v7);
    }

    free(v3);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void zhtok::ChineseLMTokenizer::ChineseLMTokenizer(zhtok::ChineseLMTokenizer *this, const __CFLocale *a2)
{
  *this = &unk_2A1E526C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = -1;
  operator new();
}

void zhtok::ChineseLMTokenizer::~ChineseLMTokenizer(zhtok::ChineseLMTokenizer *this)
{
  *this = &unk_2A1E526C8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  zhtok::ChineseLMTokenizer::~ChineseLMTokenizer(this);

  JUMPOUT(0x29C2738C0);
}

void zhtok::ChineseLMTokenizer::reset(zhtok::WordLatticeController **this)
{
  zhtok::WordLatticeController::reset(this[5]);
  this[4] = -1;
  v2 = this[1];
  if (v2)
  {
    CFRelease(v2);
    this[1] = 0;
  }

  this[2] = 0;
  this[3] = 0;
  this[7] = this[6];
}

BOOL zhtok::ChineseLMTokenizer::isValid(zhtok::ChineseLMTokenizer *this, CFStringRef theString, CFRange a3)
{
  result = 0;
  if (theString)
  {
    length = a3.length;
    if (a3.length)
    {
      location = a3.location;
      v6 = CFStringGetLength(theString);
      return location >= 0 && location + length <= v6;
    }
  }

  return result;
}

void zhtok::ChineseLMTokenizer::setString(zhtok::WordLatticeController **this, __CFString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  zhtok::ChineseLMTokenizer::reset(this);
  if (a2)
  {
    if (length)
    {
      v7 = CFStringGetLength(a2);
      if ((location & 0x8000000000000000) == 0 && location + length <= v7)
      {
        this[1] = CFStringCreateCopy(0, a2);
        this[2] = location;
        this[3] = length;
        v8 = this[5];
        *(v8 + 14) = length;
        std::vector<zhtok::internal::FixedSizedArray<void *>>::reserve(v8 + 8, length);
        std::vector<zhtok::internal::FixedSizedArray<zhtok::LatticeWord *>>::reserve(*(v8 + 6), length);
        v9.location = length;
        zhtok::charactersFromCFStringInRange(a2, location, v9);
      }
    }
  }
}

void sub_29773854C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x29C2738A0](a10, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

BOOL zhtok::ChineseLMTokenizer::advanceToNextToken(zhtok::ChineseLMTokenizer *this)
{
  v1 = (*(this + 7) - *(this + 6)) >> 4;
  v2 = *(this + 4) + 1;
  if (v2 < v1)
  {
    *(this + 4) = v2;
  }

  return v2 < v1;
}

uint64_t zhtok::ChineseLMTokenizer::getCurrentTokenRange(zhtok::ChineseLMTokenizer *this)
{
  v1 = *(this + 4);
  if (v1 == -1)
  {
    return -1;
  }

  v2 = (*(this + 6) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

BOOL zhtok::ChineseLMTokenizer::goToTokenAtIndex(zhtok::ChineseLMTokenizer *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  if (*(this + 3) <= a2)
  {
    return 0;
  }

  v3 = *(this + 6);
  v2 = *(this + 7);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v4 >> 4;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  for (i = (v3 + 8); ; i += 2)
  {
    v9 = *(i - 1) - *(this + 2);
    if (v9 <= a2 && *i + v9 > a2)
    {
      break;
    }

    if (v7 == ++v5)
    {
      return v5 < v6;
    }
  }

  *(this + 4) = v5;
  return 1;
}

void *std::vector<zhtok::internal::FixedSizedArray<void *>>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<void *>>>(result, a2);
    }

    std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6D710, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<void *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void *std::vector<zhtok::internal::FixedSizedArray<zhtok::LatticeWord *>>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<zhtok::LatticeWord *>>>(result, a2);
    }

    std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<zhtok::LatticeWord *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void zhtok::Word::summary(zhtok::Word *this, const __CFString *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v6);
  v4 = CFStringCreateWithSubstring(0, a2, *(this + 8));
  zhtok::UTF8StringFromCFString(v4, v5);
}

void sub_297738C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a13)
  {
    MEMORY[0x29C2738A0](a13, 0x1000C8077774924);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x29EDC9528]);
  MEMORY[0x29C273880](&a30);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_297738F38(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C273880](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C273830](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_297739144(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C2737F0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C273800](v13);
  return a1;
}

void sub_2977393B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C273800](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x297739394);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2977395E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t zhtok::HypothesisSet::initializeBeginSentinelHypothesis(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  result = (*(a2 + 16))(a2);
  v4 = *(a1 + 80);
  *(a1 + 80) = v4 + 1;
  *(a1 + 8 * v4) = result;
  return result;
}

uint64_t zhtok::HypothesisSet::clear(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

double zhtok::HypothesisSet::bestBacktraceCost(zhtok::HypothesisSet *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 1.79769313e308;
  }
}

double zhtok::HypothesisSet::costOfNewHypothesis(zhtok::HypothesisSet *this, const zhtok::Hypothesis *a2, const zhtok::Word *a3, void **a4)
{
  if ((a4[1] & 1) != 0 && *(a3 + 1) == 2)
  {
    return *(a2 + 2);
  }

  if (*a3 == 3)
  {
    v5 = *(a2 + 2);
    v6 = 0.5;
  }

  else
  {
    if (*a3 == 4)
    {
      v5 = *(a2 + 2) + *(a3 + 2) * -7.0;
    }

    else
    {
      v5 = zhtok::Hypothesis::costOfExtendingToWord(a2, *(a3 + 1), *a4) + *(a2 + 2);
    }

    v6 = 0.0;
  }

  return v5 + v6;
}

void zhtok::HypothesisSet::connectPreviousHypotheses(zhtok::HypothesisSet *this, const zhtok::Word *a2, const zhtok::HypothesisSet *a3, const zhtok::Word *a4, const zhtok::ConnectionContext *a5)
{
  v5 = *(a3 + 10);
  if (v5)
  {
    v9 = this;
    v10 = 0;
    v11 = 0;
    v12 = 1.79769313e308;
    v13 = 1.79769313e308;
    while (1)
    {
      v14 = *(a3 + v11);
      v15 = v14[2];
      if (v11)
      {
        if (v15 > v12 || v15 > v13)
        {
          if (!v10)
          {
            return;
          }

LABEL_17:
          v18 = *(v9 + 10);
          if (!v18)
          {
            v19 = (*(*(a5 + 2) + 16))(v12);
            v20 = *(v9 + 10);
            *(v9 + v20) = v19;
            *(v9 + 10) = v20 + 1;
            *(v9 + 11) = v10;

            goto LABEL_21;
          }

          if (*(*v9 + 16) + 1.0 < v12 || v18 >= 0xA && v12 >= *(*(v9 + v18 - 1) + 16))
          {
            v19 = v10;

            goto LABEL_21;
          }

          v21 = (*(*(a5 + 2) + 16))(v12);
          v22 = *(v9 + 10);
          if (!v22)
          {
            v25 = 0;
            goto LABEL_57;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = (v9 + 8);
          v27 = -1;
          while (2)
          {
            v28 = *(v9 + v23);
            v29 = *v28;
            v30 = *v21;
            if (v24)
            {
              if (!(v25 & 1 | (v29 != v30)))
              {
                zhtok::LatticeSessionData::logStatistics(v28);
                v37 = *(v9 + 10);
                v38 = v37 - 1;
                if (v23 < v37 - 1)
                {
                  v39 = v37 + v27;
                  do
                  {
                    *(v26 - 1) = *v26;
                    ++v26;
                    --v39;
                  }

                  while (v39);
                }

                *(v9 + 10) = v38;
                return;
              }

LABEL_44:
              v24 = 1;
LABEL_45:
              ++v23;
              v22 = *(v9 + 10);
              ++v26;
              --v27;
              if (v23 >= v22)
              {
                if (v24)
                {
                  return;
                }

LABEL_56:
                if (v22 > 0xA)
                {
                  return;
                }

LABEL_57:
                if (v22 != 10 && (v25 & 1) == 0)
                {
                  zhtok::LatticeSessionData::logStatistics(v21);
                  v40 = *(v9 + 10);
                  *(v9 + 10) = v40 + 1;
                  *(v9 + v40) = v21;
                  return;
                }

                v19 = v21;

LABEL_21:
                zhtok::LatticeSessionData::logStatistics(v19);
                return;
              }

              continue;
            }

            break;
          }

          v31 = v28[2];
          v32 = v21[2];
          if (v29 == v30)
          {
            if (v31 <= v32)
            {
              v25 = 1;
              goto LABEL_56;
            }

            zhtok::LatticeSessionData::logStatistics(v28);
            *(v9 + v23) = v21;
            v25 = 1;
          }

          else
          {
            if (v31 <= v32)
            {
              v24 = 0;
              goto LABEL_45;
            }

            if (v22 == 10)
            {
              zhtok::LatticeSessionData::logStatistics(*(v9 + 9));
              v22 = *(v9 + 10) - 1;
            }

            v33 = v22 - 1;
            if ((v22 - 1) >= v23)
            {
              v34 = (v9 + 8 * v22);
              v35 = v34;
              do
              {
                v36 = *--v35;
                *v34 = v36;
                --v33;
                v34 = v35;
              }

              while (v33 >= v23);
            }

            *(v9 + v23) = v21;
            *(v9 + 10) = v22 + 1;
          }

          zhtok::LatticeSessionData::logStatistics(v21);
          if (!v23)
          {
            *(v9 + 11) = v10;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v13 = v15 + 2.0;
      }

      v17 = zhtok::HypothesisSet::costOfNewHypothesis(this, *(a3 + v11), a2, a5);
      if (v10 && v12 <= v17)
      {
        this = zhtok::LatticeSessionData::logStatistics(v14);
      }

      else
      {
        v12 = v17;
        v10 = v14;
      }

      if (v5 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }
}

uint64_t zhtok::ConnectionContext::ConnectionContext(uint64_t a1, uint64_t a2, int a3, void *aBlock)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = _Block_copy(aBlock);
  return a1;
}

void zhtok::ConnectionContext::~ConnectionContext(const void **this)
{
  _Block_release(this[2]);
}

{
  _Block_release(this[2]);
}

void *zhtok::DynamicLexiconBuilder::DynamicLexiconBuilder(void *this)
{
  *this = &unk_2A1E526A8;
  this[1] = 0;
  return this;
}

void zhtok::DynamicLexiconBuilder::~DynamicLexiconBuilder(zhtok::DynamicLexiconBuilder *this)
{
  *this = &unk_2A1E526A8;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  zhtok::DynamicLexiconBuilder::~DynamicLexiconBuilder(this);

  JUMPOUT(0x29C2738C0);
}

uint64_t zhtok::DynamicLexiconBuilder::build(uint64_t a1, int a2, CFArrayRef theArray, uint64_t a4)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  result = 0;
  if (a4)
  {
    if (Count)
    {
      result = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      *(a1 + 8) = result;
      if (result)
      {
        result = zhtok::DynamicLexiconBuilder::registerLanguage(a1, a2);
        if (result)
        {
          result = zhtok::DynamicLexiconBuilder::filterAndRegisterWords(a1, theArray);
          if (result)
          {
            operator new();
          }
        }
      }
    }
  }

  return result;
}

uint64_t zhtok::DynamicLexiconBuilder::registerLanguage(uint64_t a1, int a2)
{
  v2 = a2 == -1 || *(a1 + 8) == 0;
  v3 = !v2;
  if (!v2)
  {
    LocaleForLanguage = createLocaleForLanguage(a2);
    CFDictionarySetValue(*(a1 + 8), *MEMORY[0x29EDC5790], LocaleForLanguage);
    CFRelease(LocaleForLanguage);
  }

  return v3;
}

BOOL zhtok::DynamicLexiconBuilder::filterAndRegisterWords(CFMutableDictionaryRef *this, CFArrayRef theArray)
{
  result = 0;
  if (theArray && this[1])
  {
    Count = CFArrayGetCount(theArray);
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
    result = zhtok::DynamicLexiconBuilder::filter(Mutable, Mutable, theArray);
    if (result)
    {
      CFDictionarySetValue(this[1], *MEMORY[0x29EDC5758], theArray);
      CFRelease(Mutable);
      return 1;
    }
  }

  return result;
}

BOOL zhtok::DynamicLexiconBuilder::filter(zhtok::DynamicLexiconBuilder *this, __CFArray *a2, CFArrayRef theArray)
{
  v3 = 0;
  if (a2 && theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 1;
    }

    else
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v10 = CFGetTypeID(ValueAtIndex);
        v11 = v10 == CFStringGetTypeID();
        v3 = v11;
        if (!v11)
        {
          break;
        }

        if (CFStringGetLength(ValueAtIndex) >= 3)
        {
          CFArrayAppendValue(a2, ValueAtIndex);
        }
      }
    }
  }

  return v3;
}

void zhtok::WordLatticeController::WordLatticeController(uint64_t a1, const __CFLocale *a2)
{
  *a1 = &unk_2A1E52688;
  *(a1 + 8) = languageForLocale(a2);
  v4 = languageModelBundleNameForLocale(a2);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDC5790], a2);
  v6 = *MEMORY[0x29EDB8EF8];
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDC5730], *MEMORY[0x29EDB8EF8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDC57B0], v6);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDC5740], v4);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDC57A0], *MEMORY[0x29EDB8F00]);
  v7 = LMLanguageModelCreate();
  CFRelease(Mutable);
  *(a1 + 16) = v7;
  operator new();
}

void sub_29773A198(_Unwind_Exception *a1)
{
  MEMORY[0x29C2738C0](v2, 0x1080C40BEC857D6);
  std::unique_ptr<zhtok::WordBreaker>::~unique_ptr[abi:ne200100]((v1 + 176));
  v5 = *(v1 + 88);
  if (v5)
  {
    *(v1 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 64);
  if (v6)
  {
    *(v1 + 72) = v6;
    operator delete(v6);
  }

  std::unique_ptr<zhtok::ConnectionContext>::reset[abi:ne200100](v3, 0);
  v7 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v7)
  {
    std::default_delete<zhtok::Lattice>::operator()[abi:ne200100](v1 + 48, v7);
  }

  std::unique_ptr<zhtok::LatticeSessionData>::~unique_ptr[abi:ne200100]((v1 + 40));
  v8 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

const void **std::unique_ptr<zhtok::ConnectionContext>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    zhtok::ConnectionContext::~ConnectionContext(result);

    JUMPOUT(0x29C2738C0);
  }

  return result;
}

zhtok::WordBreaker **std::unique_ptr<zhtok::WordBreaker>::~unique_ptr[abi:ne200100](zhtok::WordBreaker **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    zhtok::WordBreaker::~WordBreaker(v2);
    MEMORY[0x29C2738C0]();
  }

  return a1;
}

zhtok::LatticeSessionData **std::unique_ptr<zhtok::LatticeSessionData>::~unique_ptr[abi:ne200100](zhtok::LatticeSessionData **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    zhtok::LatticeSessionData::~LatticeSessionData(v2);
    MEMORY[0x29C2738C0]();
  }

  return a1;
}

void zhtok::WordLatticeController::~WordLatticeController(zhtok::WordLatticeController *this)
{
  *this = &unk_2A1E52688;
  if (*(this + 2))
  {
    LMLanguageModelRelease();
  }

  v2 = *(this + 23);
  if (v2)
  {
    _Block_release(v2);
  }

  std::unique_ptr<zhtok::WordBreaker>::~unique_ptr[abi:ne200100](this + 22);
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  std::unique_ptr<zhtok::ConnectionContext>::reset[abi:ne200100](this + 7, 0);
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    std::default_delete<zhtok::Lattice>::operator()[abi:ne200100](this + 48, v5);
  }

  std::unique_ptr<zhtok::LatticeSessionData>::~unique_ptr[abi:ne200100](this + 5);
  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

{
  zhtok::WordLatticeController::~WordLatticeController(this);

  JUMPOUT(0x29C2738C0);
}

double zhtok::WordLatticeController::reset(zhtok::WordLatticeController *this)
{
  v2 = *(this + 6);
  v4 = *v2;
  v3 = v2[1];
  zhtok::Lattice::clear(v2);
  if (v3 != v4)
  {
    zhtok::LatticeSessionData::reset(*(this + 5));
    *(this + 9) = *(this + 8);
    zhtok::TokenizerLexicon::reset(*(this + 3));
    *(this + 152) = 0;
  }

  v5 = *(this + 8);
  v6 = *(this + 9);
  if (v6 == v5)
  {
    v7 = *(this + 10);
    if (v6 >= v7)
    {
      v8 = 0x2E8BA2E8BA2E8BA3 * (v6 - v5);
      v9 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v5) >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= v8 + 1)
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x1745D1745D1745DLL)
      {
        v11 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<void *>>>(this + 64, v11);
    }

    *v6 = 0;
    *(this + 9) = v6 + 11;
    v12 = *(this + 8);
    v13 = *v12;
    if (*v12 <= 9)
    {
      v14 = *(*(this + 3) + 16);
      *v12 = v13 + 1;
      v12[v13 + 1] = v14;
    }
  }

  result = NAN;
  *(this + 120) = xmmword_29773D950;
  *(this + 136) = xmmword_29773D950;
  return result;
}

void *zhtok::Lattice::clear(void *this)
{
  v1 = *this;
  this[1] = *this;
  v2 = this[2];
  if (v1 >= v2)
  {
    v3 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v1) >> 3);
    v4 = 2 * v3;
    if (2 * v3 <= 1)
    {
      v4 = 1;
    }

    if (v3 >= 0x1745D1745D1745DLL)
    {
      v5 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v5 = v4;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<zhtok::LatticeWord *>>>(this, v5);
  }

  *v1 = 0;
  this[1] = v1 + 11;
  v6 = this[3];
  if (v6)
  {
    v7 = *this;
    if (!**this)
    {
      *v7 = 1;
      v7[1] = v6;
    }
  }

  return this;
}

__n128 zhtok::WordLatticeController::getBestSegmentation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  a2[1] = *a2;
  v5 = *(*(*(*(a1 + 40) + 8) + 16) + 8);
  if (v5[10])
  {
    v6 = *v5;
    if (v6)
    {
      v9 = (v6 + 24);
      do
      {
        v10 = *v9;
        v11 = *(*v9 + 16);
        if (v11 && *v10 != 0x10000 && *v10 != 0x20000)
        {
          v12 = *(v10 + 8) + a4;
          v13 = a2[2];
          if (v4 >= v13)
          {
            v14 = *a2;
            v15 = v4 - *a2;
            v16 = v15 >> 4;
            v17 = (v15 >> 4) + 1;
            if (v17 >> 60)
            {
              std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
            }

            v18 = v13 - v14;
            if (v18 >> 3 > v17)
            {
              v17 = v18 >> 3;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF0)
            {
              v19 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(a2, v19);
            }

            v20 = (16 * v16);
            *v20 = v12;
            v20[1] = v11;
            v4 = (16 * v16 + 16);
            v21 = &v20[-2 * (v15 >> 4)];
            memcpy(v21, v14, v15);
            v23 = *a2;
            *a2 = v21;
            a2[1] = v4;
            a2[2] = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v4 = v12;
            v4[1] = v11;
            v4 += 2;
          }

          a2[1] = v4;
        }

        v9 = v9[1];
      }

      while (v9);
      v24 = *a2;
      v25 = v4 - 2;
      if (*a2 != v4 && v25 > v24)
      {
        v27 = (v24 + 2);
        do
        {
          result = *(v27 - 16);
          *(v27 - 16) = *v25;
          *v25-- = result;
          v28 = v27 >= v25;
          v27 += 16;
        }

        while (!v28);
      }
    }
  }

  return result;
}

void zhtok::WordLatticeController::connectEOS(zhtok::WordLatticeController *this)
{
  zhtok::LatticeWord::clearHypotheses(*(*(*(this + 5) + 8) + 16));
  v3 = *(*(this + 6) + 8) - **(this + 6);
  if (v3)
  {
    v4 = *(*(*(this + 5) + 8) + 16);

    zhtok::WordLatticeController::connectToWordsEndingAtIndex(this, v4, 0x2E8BA2E8BA2E8BA3 * (v3 >> 3) - 1, v2);
  }
}

uint64_t zhtok::WordLatticeController::setDynamicLexicon(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (result != a2)
    {
      *(a1 + 32) = 0;
      (*(*result + 8))(result);
      result = *(a1 + 32);
      *(a1 + 32) = a2;
      if (result)
      {
        v5 = *(*result + 8);

        return v5();
      }
    }
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return result;
}

void zhtok::WordLatticeController::updateLattice(zhtok::Lattice **this, zhtok::LatticeWord *a2)
{
  v4 = *(*a2 + 8);
  zhtok::Lattice::insert(this[6], *(*a2 + 16) + v4, a2);

  zhtok::WordLatticeController::connectToWordsEndingAtIndex(this, a2, v4, v5);
}

void zhtok::Lattice::insert(zhtok::Lattice *this, unint64_t a2, zhtok::LatticeWord *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *this;
  v6 = *(this + 1);
  for (i = 0x2E8BA2E8BA2E8BA3 * ((v6 - *this) >> 3); i <= a2; i = 0x2E8BA2E8BA2E8BA3 * ((v6 - *this) >> 3))
  {
    v9 = *(this + 2);
    if (v6 >= v9)
    {
      if (i + 1 > 0x2E8BA2E8BA2E8BALL)
      {
        std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
      }

      v10 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v5) >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= i + 1)
      {
        v11 = i + 1;
      }

      if (v10 >= 0x1745D1745D1745DLL)
      {
        v12 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<zhtok::LatticeWord *>>>(this, v12);
      }

      v13 = 88 * i;
      v14 = *this;
      v15 = *(this + 1) - *this;
      v16 = (88 * i - v15);
      *v13 = 0;
      v6 = v13 + 88;
      memcpy(v16, v14, v15);
      v17 = *this;
      *this = v16;
      *(this + 1) = v6;
      *(this + 2) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 8) = v21;
      *(v6 + 72) = v25;
      *(v6 + 56) = v24;
      *(v6 + 40) = v23;
      *(v6 + 24) = v22;
      v6 += 88;
    }

    *(this + 1) = v6;
    v5 = *this;
  }

  v18 = (v5 + 88 * a2);
  v19 = *v18;
  if (*v18 <= 9)
  {
    *v18 = v19 + 1;
    v18[v19 + 1] = a3;
  }

  v20 = *MEMORY[0x29EDCA608];
}

void zhtok::WordLatticeController::connectToWordsEndingAtIndex(zhtok::WordLatticeController *this, zhtok::LatticeWord *a2, unint64_t a3, const zhtok::ConnectionContext *a4)
{
  v4 = **(this + 6);
  if (0x2E8BA2E8BA2E8BA3 * ((*(*(this + 6) + 8) - v4) >> 3) > a3)
  {
    v6 = (v4 + 88 * a3);
    v7 = *v6;
    if (*v6)
    {
      v10 = 0;
      v11 = 1.79769313e308;
      do
      {
        if (*v6 <= v10)
        {
          v12 = 0;
          if (!v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v12 = v6[v10 + 1];
          if (!v10)
          {
            goto LABEL_12;
          }
        }

        v13 = *(v12 + 8);
        if (v13[10])
        {
          v14 = *(*v13 + 16);
        }

        else
        {
          v14 = 1.79769313e308;
        }

        if (v14 <= v11)
        {
LABEL_12:
          if ((*(v12 + 16) & 1) == 0)
          {
            zhtok::WordLatticeController::connectToWordsEndingAtIndex(this, v12, a3 - *(*v12 + 16));
          }

          zhtok::WordLatticeController::connectToPreviousWord(this, v12, a2, a4);
          v15 = *(a2 + 1);
          v16 = v15[10];
          if (!v10 || (!v16 ? (v17 = 1.79769313e308) : (v17 = *(*v15 + 16)), v11 > v17))
          {
            if (v16)
            {
              v11 = *(*v15 + 16);
            }

            else
            {
              v11 = 1.79769313e308;
            }
          }
        }

        ++v10;
      }

      while (v7 != v10);
    }
  }
}

void zhtok::WordLatticeController::connectToPreviousWord(zhtok::WordLatticeController *this, const zhtok::LatticeWord *a2, zhtok::LatticeWord *a3, const zhtok::ConnectionContext *a4)
{
  v4 = *(a2 + 1);
  if (v4[10] && *v4)
  {
    v8 = *a2;
    v9 = *a3;
    zhtok::LatticeSessionData::logStatistics(v8);
    v10 = *(this + 7);

    zhtok::LatticeWord::connectPreviousWord(a3, a2, v10);
  }
}

void zhtok::WordLatticeController::addWord(zhtok::WordLatticeController *this, void *a2, uint64_t a3)
{
  WordID = zhtok::TokenizerLexicon::getWordID(*(this + 3), a2);
  if (WordID)
  {
    v7 = WordID;
    TraversedLength = zhtok::TokenizerLexicon::getTraversedLength(*(this + 3), a2);
    LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 2, v7, a3 - TraversedLength, TraversedLength);

    zhtok::WordLatticeController::updateLattice(this, LatticeWord);
  }
}

void zhtok::WordLatticeController::addUNKWord(zhtok::WordLatticeController *this, CFRange a2)
{
  LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 2, 0, a2.location, a2.length);

  zhtok::WordLatticeController::updateLattice(this, LatticeWord);
}

void zhtok::WordLatticeController::addSpace(zhtok::WordLatticeController *this, CFRange a2)
{
  LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 0x10000, 0, a2.location, a2.length);

  zhtok::WordLatticeController::updateLattice(this, LatticeWord);
}

void zhtok::WordLatticeController::addNewline(zhtok::WordLatticeController *this, CFRange a2)
{
  LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 0x20000, 0, a2.location, a2.length);

  zhtok::WordLatticeController::updateLattice(this, LatticeWord);
}

void zhtok::WordLatticeController::addNonChineseWord(zhtok::WordLatticeController *this, const unsigned __int16 *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  if (*(this + 18))
  {
LABEL_2:
    WordID = 0;
    goto LABEL_15;
  }

  v7 = &a2[a3.location];
  if (a3.location < (a3.location + a3.length))
  {
    v8 = MEMORY[0x29EDCA600];
    v9 = &a2[a3.location];
    for (i = a3.length; i; --i)
    {
      v12 = *v9++;
      v11 = v12;
      if (v12 > 0xFF)
      {
        goto LABEL_8;
      }

      if ((*(v8 + 4 * v11 + 60) & 0x400) != 0)
      {
        WordID = 501;
        goto LABEL_15;
      }

      if (v11 <= 0x7F)
      {
        v13 = *(v8 + 4 * v11 + 60) & 0x100;
      }

      else
      {
LABEL_8:
        v13 = __maskrune(v11, 0x100uLL);
      }

      if (!v13)
      {
        goto LABEL_2;
      }
    }
  }

  v14 = zhtok::TokenizerLexicon::cursorByAdvancingWithCharacters(*(this + 3), *(*(this + 3) + 16), v7, length);
  if (!zhtok::TokenizerLexicon::cursorHasEntry(*(this + 3), v14) || (WordID = zhtok::TokenizerLexicon::getWordID(*(this + 3), v14)) == 0)
  {
    WordID = 502;
  }

LABEL_15:
  LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 2, WordID, location, length);

  zhtok::WordLatticeController::updateLattice(this, LatticeWord);
}

uint64_t zhtok::WordLatticeController::addDynamicWord(zhtok::WordLatticeController *this, void *a2, const unsigned __int16 *a3, const CFRange *a4)
{
  HasEntry = zhtok::TokenizerLexicon::cursorHasEntry(*(this + 4), a2);
  if (HasEntry)
  {
    WordID = zhtok::TokenizerLexicon::getWordID(*(this + 4), a2);
    LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 3, WordID, a4->location, a4->length);
    zhtok::WordLatticeController::updateLattice(this, LatticeWord);
  }

  return HasEntry;
}

uint64_t zhtok::WordLatticeController::updateNonChineseTokenRange(zhtok::WordLatticeController *this, const unsigned __int16 *a2, CFRange a3, int a4, int a5)
{
  length = a3.length;
  location = a3.location;
  v8 = &a2[a3.location];
  result = *v8;
  *(this + 16) = 0;
  *(this + 18) = 0;
  v10 = *(this + 15);
  if (a4)
  {
    if (v10 == -1)
    {
      *(this + 15) = a3.location;
      v10 = a3.location;
    }

    if (v10 != -1 && a5 != 0)
    {
      v12 = a3.location - v10;
      if (a3.location == v10)
      {
        v12 = 1;
      }

      *(this + 16) = v12;
    }

    if (*(this + 152) == 1 && (a5 & 1) == 0)
    {
      *(this + 16) = a3.location + a3.length - v10;
    }

LABEL_24:
    v15 = *(this + 17);
    if (v15 == -1)
    {
      return result;
    }

    v14 = location - v15;
    goto LABEL_26;
  }

  if (v10 != -1)
  {
    *(this + 16) = a3.location - v10;
  }

  if (a3.length == 2)
  {
    result = v8[1] + (result << 10) - 56613888;
  }

  if (result >> 1 != 4102)
  {
    result = LMLanguageModelIsAppleColorEmojiCharacter();
    if (!result)
    {
      goto LABEL_24;
    }
  }

  v13 = *(this + 17);
  if (v13 == -1)
  {
    *(this + 17) = location;
    v13 = location;
  }

  if (*(this + 152) == 1)
  {
    v14 = location + length - v13;
LABEL_26:
    *(this + 18) = v14;
  }

  return result;
}

uint64_t zhtok::WordLatticeController::addLatinWords(zhtok::WordLatticeController *this, const unsigned __int16 *a2, CFRange a3, int a4)
{
  v4 = *(this + 16);
  if (v4 < 1)
  {
    return 0;
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    return 0;
  }

  v7 = *(this + 15);
  if (v7 == -1)
  {
    result = 0;
    *(this + 16) = 0;
  }

  else
  {
    v9 = v7 + v4;
    v10 = (v6 + 88 * (v7 + v4));
    v11 = *v10;
    if (*v10 <= 9)
    {
      v12 = *(*(this + 3) + 16);
      *v10 = v11 + 1;
      v10[v11 + 1] = v12;
    }

    if (a4 && v7 == a3.location)
    {
      LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 0x10000, 0, a3.location, a3.length);
      zhtok::WordLatticeController::updateLattice(this, LatticeWord);
    }

    else
    {
      zhtok::WordLatticeController::addNonChineseWord(this, a2, *(this + 120));
    }

    v15 = zhtok::TokenizerLexicon::cursorByAdvancingWithCharacters(*(this + 3), *(*(this + 3) + 16), &a2[*(this + 15)], *(this + 16));
    if (v15)
    {
      v16 = (*(this + 8) + 88 * v9);
      v17 = *v16;
      if (*v16 <= 9)
      {
        *v16 = v17 + 1;
        v16[v17 + 1] = v15;
      }
    }

    *(this + 15) = -1;
    return 1;
  }

  return result;
}

uint64_t zhtok::WordLatticeController::addEmojiWords(zhtok::WordLatticeController *this, const unsigned __int16 *a2)
{
  if (*(this + 18) < 1)
  {
    return 0;
  }

  if (*(this + 9) == *(this + 8))
  {
    return 0;
  }

  if (*(this + 17) == -1)
  {
    result = 0;
    *(this + 18) = 0;
  }

  else
  {
    if ((zhtok::WordLatticeController::breakEmojiWords(this, a2) & 1) == 0)
    {
      zhtok::WordLatticeController::addNonChineseWord(this, a2, *(this + 136));
    }

    *(this + 17) = -1;
    return 1;
  }

  return result;
}

uint64_t zhtok::WordLatticeController::breakEmojiWords(zhtok::WordLatticeController *this, const unsigned __int16 *a2)
{
  v2 = *(this + 18);
  if (v2 < 2)
  {
    return 0;
  }

  result = *(this + 22);
  if (result)
  {
    result = zhtok::WordBreaker::set(result, &a2[*(this + 17)], v2);
    if (result)
    {
      v6 = *(this + 22);
      v7 = *(v6 + 2);
      if (v7 != -1)
      {
        v8 = *(v6 + 2);
        do
        {
          if (v7 > v8)
          {
            v10.location = *(this + 17) + v8;
            v10.length = v7 - v8;
            zhtok::WordLatticeController::addNonChineseWord(this, a2, v10);
            v6 = *(this + 22);
            v8 = v7;
          }

          v9 = *v6;
          v7 = ubrk_next();
          *(v6 + 2) = v7;
          v6 = *(this + 22);
        }

        while (*(v6 + 2) != -1);
      }

      return 1;
    }
  }

  return result;
}

BOOL zhtok::WordLatticeController::addCustomWordIfFound(zhtok::WordLatticeController *this, const unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(this + 24);
  v4 = (a3 - v3) & ~((a3 - v3) >> 63);
  if (v4 >= a3)
  {
    return 0;
  }

  v7 = *(this + 23);
  v8 = &a2[v4];
  if (a3 >= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = a3;
  }

  if (((*(v7 + 16))(v7, &a2[v4], v9) & 1) == 0)
  {
    v11 = v4 + 1;
    v12 = v8 + 1;
    v13 = ~v4 + a3;
    while (v13)
    {
      ++v11;
      ++v12;
      --v13;
      if ((*(*(this + 23) + 16))())
      {
        v4 = v11 - 1;
        v10 = v11 - 1 < a3;
        v9 = v13 + 1;
        goto LABEL_11;
      }
    }

    return 0;
  }

  v10 = 1;
LABEL_11:
  LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 4, 0, v4, v9);
  zhtok::WordLatticeController::updateLattice(this, LatticeWord);
  return v10;
}

void zhtok::WordLatticeController::addComposedCharacteracterInRange(zhtok::WordLatticeController *this, const unsigned __int16 *a2, CFRange a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v40.length = a3.length;
  v4 = a3.location + a3.length;
  if (*(this + 14) == a3.location + a3.length)
  {
    *(this + 152) = 1;
  }

  v40.location = a3.location;
  v37 = &a2[a3.location];
  theChar = *v37;
  v5 = *(this + 8);
  v6 = *(this + 9);
  v7 = (this + 64);
  for (i = 0x2E8BA2E8BA2E8BA3 * ((v6 - v5) >> 3); i <= v4; i = 0x2E8BA2E8BA2E8BA3 * ((v6 - v5) >> 3))
  {
    v9 = *(this + 10);
    if (v6 >= v9)
    {
      if (i + 1 > 0x2E8BA2E8BA2E8BALL)
      {
        std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
      }

      v10 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v5) >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= i + 1)
      {
        v11 = i + 1;
      }

      if (v10 >= 0x1745D1745D1745DLL)
      {
        v12 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::internal::FixedSizedArray<void *>>>(this + 64, v12);
      }

      v13 = 88 * i;
      v14 = *(this + 8);
      v15 = *(this + 9) - v14;
      v16 = (88 * i - v15);
      *v13 = 0;
      v6 = v13 + 88;
      memcpy(v16, v14, v15);
      v17 = *(this + 8);
      *(this + 8) = v16;
      *(this + 9) = v6;
      *(this + 10) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 8) = v41;
      *(v6 + 72) = v45;
      *(v6 + 56) = v44;
      *(v6 + 40) = v43;
      *(v6 + 24) = v42;
      v6 += 88;
    }

    *(this + 9) = v6;
    v5 = *(this + 8);
  }

  location = v40.location;
  if (*(this + 23) && zhtok::WordLatticeController::addCustomWordIfFound(this, a2, v4))
  {
    goto LABEL_60;
  }

  v19 = *(this + 20);
  if (!v19 || !CFCharacterSetIsCharacterMember(v19, theChar))
  {
    v22 = v40.length == 1 && (theChar - 1) < 0xFFu;
    v23 = *(this + 21);
    if (v23)
    {
      v24 = CFCharacterSetIsCharacterMember(v23, theChar) != 0;
    }

    else
    {
      v24 = 0;
    }

    zhtok::WordLatticeController::updateNonChineseTokenRange(this, a2, v40, v22, v24);
    v25 = zhtok::WordLatticeController::addLatinWords(this, a2, v40, v24);
    v26 = 0x2E8BA2E8BA2E8BA3 * ((*(this + 9) - *(this + 8)) >> 3) - 1;
    if (v22)
    {
      v27 = v26 < 2 || *(*(this + 9) - 176) == 0;
      if (zhtok::WordLatticeController::addEmojiWords(this, a2))
      {
        if (v27)
        {
          goto LABEL_60;
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (zhtok::WordLatticeController::addEmojiWords(this, a2))
      {
LABEL_42:
        v28 = (*v7 + 88 * v40.location);
        v29 = *v28;
        if (*v28)
        {
          v30 = 0;
          do
          {
            if (*v28 <= v30)
            {
              v31 = 0;
            }

            else
            {
              v31 = v28[v30 + 1];
            }

            zhtok::WordLatticeController::addWord(this, v31, v37, v40.length, v26);
            ++v30;
          }

          while (v29 != v30);
        }

        location = v40.location;
        if (v40.location < 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v25;
        }

        if ((v32 & 1) == 0)
        {
          zhtok::WordLatticeController::addWord(this, *(*(this + 3) + 16), v37, v40.length, v26);
        }

        if (v24)
        {
          LatticeWord = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), 0x10000, 0, v40.location, v40.length);
          zhtok::WordLatticeController::updateLattice(this, LatticeWord);
        }

        if (*(*(this + 6) + 8) - **(this + 6) < *(this + 9) - *(this + 8))
        {
          v20 = 2;
          goto LABEL_57;
        }

LABEL_60:
        v36 = *MEMORY[0x29EDCA608];
        return;
      }

      v27 = 0;
    }

    if (v27 || *(this + 17) != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_42;
  }

  v20 = 0x20000;
LABEL_57:
  v34 = zhtok::LatticeSessionData::makeLatticeWord(*(this + 5), v20, 0, location, v40.length);
  v35 = *MEMORY[0x29EDCA608];

  zhtok::WordLatticeController::updateLattice(this, v34);
}

void zhtok::WordLatticeController::addWord(zhtok::TokenizerLexicon **this, void *a2, const unsigned __int16 *a3, uint64_t a4, uint64_t a5)
{
  v7 = zhtok::TokenizerLexicon::cursorByAdvancingWithCharacters(this[3], a2, a3, a4);
  if (v7)
  {
    v8 = (this[8] + 88 * a5);
    v9 = *v8;
    if (*v8 <= 9)
    {
      *v8 = v9 + 1;
      v8[v9 + 1] = v7;

      zhtok::WordLatticeController::addWord(this, v7, a5);
    }
  }
}

uint64_t zhtok::WordLatticeController::rewriteLatticeWithDynamicWords(zhtok::WordLatticeController *this, const unsigned __int16 *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(this + 14) || !*(this + 4))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *(*(this + 4) + 16);
    for (i = 3; i != 8; ++i)
    {
      if (v4 + i - 1 >= *(this + 14))
      {
        break;
      }

      v10.location = v4;
      v10.length = i;
      v7 = zhtok::TokenizerLexicon::cursorByAdvancingWithCharacters(*(this + 4), v5, &a2[v4], i);
      if (!v7)
      {
        break;
      }

      zhtok::WordLatticeController::addDynamicWord(this, v7, v8, &v10);
    }

    ++v4;
  }

  while (v4 < *(this + 14));
  return 1;
}

uint64_t zhtok::WordLatticeController::setCustomWordCheckBlock(uint64_t a1, uint64_t a2, void *aBlock)
{
  *(a1 + 192) = a2;
  v5 = *(a1 + 184);
  if (v5)
  {
    _Block_release(v5);
    *(a1 + 184) = 0;
  }

  if (aBlock)
  {
    *(a1 + 184) = _Block_copy(aBlock);
  }

  return 1;
}

void std::default_delete<zhtok::Lattice>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x29C2738C0);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *zhtok::TokenizerLexicon::TokenizerLexicon(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E526E8;
  return this;
}

void *zhtok::TokenizerLexicon::TokenizerLexicon(void *a1, int a2)
{
  *a1 = &unk_2A1E526E8;
  if (a2 == -1)
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    LocaleForLanguage = createLocaleForLanguage(a2);
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDC5790], LocaleForLanguage);
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDC57A0], *MEMORY[0x29EDB8F00]);
    v6 = LMLexiconCreate();
    CFRelease(LocaleForLanguage);
    CFRelease(Mutable);
    a1[1] = v6;
    a1[2] = 0;
    if (v6)
    {
      a1[2] = LMLexiconGetRootCursor();
    }
  }

  return a1;
}

void zhtok::TokenizerLexicon::~TokenizerLexicon(zhtok::TokenizerLexicon *this)
{
  *this = &unk_2A1E526E8;
  if (*(this + 1))
  {
    LMLexiconRelease();
  }
}

{
  zhtok::TokenizerLexicon::~TokenizerLexicon(this);

  JUMPOUT(0x29C2738C0);
}

uint64_t zhtok::TokenizerLexicon::reset(zhtok::TokenizerLexicon *this)
{
  result = *(this + 1);
  if (result)
  {
    LMLexiconResetCursors();
    v3 = *(this + 1);
    result = LMLexiconGetRootCursor();
    *(this + 2) = result;
  }

  return result;
}

uint64_t zhtok::TokenizerLexicon::setLexicon(zhtok::TokenizerLexicon *this, void *a2)
{
  if (*(this + 1))
  {
    LMLexiconResetCursors();
    v4 = *(this + 1);
    LMLexiconRelease();
  }

  *(this + 1) = a2;
  result = LMLexiconGetRootCursor();
  *(this + 2) = result;
  return result;
}

void sub_29773C060(_Unwind_Exception *a1)
{
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((v1 + 23));
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((v1 + 16));
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((v1 + 9));
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((v1 + 2));
  std::unique_ptr<zhtok::LatticeSessionData::Sentinel>::~unique_ptr[abi:ne200100](v2);
  std::unique_ptr<zhtok::LatticeSessionData::Sentinel>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t zhtok::LatticeSessionData::resetSentinels(zhtok::LatticeSessionData *this)
{
  zhtok::LatticeWord::clearHypotheses(*(*this + 16));
  zhtok::LatticeWord::clearHypotheses(*(*(this + 1) + 16));
  v2 = *(*this + 16);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN5zhtok18LatticeSessionData14resetSentinelsEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_0;
  v4[4] = this;
  return zhtok::LatticeWord::initializeBeginSentinelHypothesis(v2, v4);
}

uint64_t **std::unique_ptr<zhtok::LatticeSessionData::Sentinel>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    v2[2] = 0;
    if (v3)
    {
      MEMORY[0x29C2738C0](v3, 0x1020C40A95220FALL);
    }

    v4 = v2[1];
    v2[1] = 0;
    if (v4)
    {
      MEMORY[0x29C2738C0](v4, 0x1060C40C2C571E4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x29C2738C0](v5, 0x1000C40504FFAC1);
    }

    MEMORY[0x29C2738C0](v2, 0x20C40960023A9);
  }

  return a1;
}

void zhtok::LatticeSessionData::~LatticeSessionData(uint64_t **this)
{
  zhtok::LatticeSessionData::reset(this);
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((this + 23));
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((this + 16));
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((this + 9));
  zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool((this + 2));
  std::unique_ptr<zhtok::LatticeSessionData::Sentinel>::~unique_ptr[abi:ne200100](this + 1);

  std::unique_ptr<zhtok::LatticeSessionData::Sentinel>::~unique_ptr[abi:ne200100](this);
}

uint64_t zhtok::LatticeSessionData::reset(zhtok::LatticeSessionData *this)
{
  Logger = zhtok::Logger::getLogger(this);
  zhtok::Logger::log(Logger, 8u, "===RESET===\n");
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(this + 16);
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(this + 72);
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(this + 128);
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(this + 184);

  return zhtok::LatticeSessionData::resetSentinels(this);
}

void zhtok::ObjectPool<zhtok::Hypothesis>::reset(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 < v2)
  {
    do
    {
      if (*v3)
      {
        free(*v3);
        v2 = *(a1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
    v3 = *a1;
  }

  *(a1 + 8) = v3;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

char *___ZN5zhtok18LatticeSessionData14resetSentinelsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **(*v1 + 16);
  v3 = zhtok::ObjectPool<zhtok::Hypothesis>::alloc(v1 + 16);
  zhtok::Hypothesis::init(v3, v2, 0, 0.0);
  return v3;
}

char *zhtok::LatticeSessionData::makeHypothesis(zhtok::LatticeSessionData *this, const zhtok::Word *a2, double a3, const zhtok::Hypothesis *a4)
{
  v7 = zhtok::ObjectPool<zhtok::Hypothesis>::alloc(this + 16);
  zhtok::Hypothesis::init(v7, a2, a4, a3);
  return v7;
}

double zhtok::LatticeSessionData::makeHypothesisSet(zhtok::LatticeSessionData *this)
{
  v1 = zhtok::ObjectPool<zhtok::HypothesisSet>::alloc(this + 184);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  return result;
}

char *zhtok::ObjectPool<zhtok::HypothesisSet>::alloc(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xAAAAAAAAAAAAAAABLL * (&v4[-v2] >> 5) != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 96 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x1060040C2C571E4uLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = (v8 - *a1) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::HypothesisSet *>>(a1, v13);
    }

    *(8 * v10) = v6;
    v9 = 8 * v10 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = (8 * v10 - v14);
    memcpy(v15, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_18:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 96;
  return v4;
}

char *zhtok::ObjectPool<zhtok::Hypothesis>::alloc(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xCCCCCCCCCCCCCCCDLL * (&v4[-v2] >> 3) != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 40 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x10600404FD43036uLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = (v8 - *a1) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::HypothesisSet *>>(a1, v13);
    }

    *(8 * v10) = v6;
    v9 = 8 * v10 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = (8 * v10 - v14);
    memcpy(v15, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_18:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 40;
  return v4;
}

char *zhtok::LatticeSessionData::makeWord(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  result = zhtok::ObjectPool<zhtok::Word>::alloc(a1 + 72);
  *result = a2;
  *(result + 1) = a3;
  *(result + 1) = a4;
  *(result + 2) = a5;
  return result;
}

char *zhtok::ObjectPool<zhtok::Word>::alloc(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xAAAAAAAAAAAAAAABLL * (&v4[-v2] >> 3) != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 24 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x1000040504FFAC1uLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = (v8 - *a1) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::HypothesisSet *>>(a1, v13);
    }

    *(8 * v10) = v6;
    v9 = 8 * v10 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = (8 * v10 - v14);
    memcpy(v15, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_18:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 24;
  return v4;
}

char *zhtok::LatticeSessionData::makeLatticeWord(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = zhtok::ObjectPool<zhtok::LatticeWord>::alloc(a1 + 128);
  v11 = zhtok::ObjectPool<zhtok::Word>::alloc(a1 + 72);
  *v11 = a2;
  *(v11 + 1) = a3;
  *(v11 + 1) = a4;
  *(v11 + 2) = a5;
  v12 = zhtok::ObjectPool<zhtok::HypothesisSet>::alloc(a1 + 184);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = 0;
  return v10;
}

char *zhtok::ObjectPool<zhtok::LatticeWord>::alloc(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[-v2];
    if (0xAAAAAAAAAAAAAAABLL * (&v4[-v2] >> 3) != v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 24 * *(a1 + 40);
  }

  v6 = malloc_type_malloc(v5, 0x1020040A95220FAuLL);
  v4 = v6;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = (v8 - *a1) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<zhtok::internal::FixedSizedArray<void *>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *a1;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::HypothesisSet *>>(a1, v13);
    }

    *(8 * v10) = v6;
    v9 = 8 * v10 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = (8 * v10 - v14);
    memcpy(v15, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  *(a1 + 24) = v4;
LABEL_18:
  ++*(a1 + 48);
  *(a1 + 32) = v4 + 24;
  return v4;
}

void *zhtok::ObjectPool<zhtok::Hypothesis>::ObjectPool(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[5] = a2;
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(a1);
  return a1;
}

void sub_29773C9F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *zhtok::ObjectPool<zhtok::Word>::ObjectPool(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[5] = a2;
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(a1);
  return a1;
}

void sub_29773CA44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *zhtok::ObjectPool<zhtok::LatticeWord>::ObjectPool(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[5] = a2;
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(a1);
  return a1;
}

void sub_29773CA94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *zhtok::ObjectPool<zhtok::HypothesisSet>::ObjectPool(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[5] = a2;
  zhtok::ObjectPool<zhtok::Hypothesis>::reset(a1);
  return a1;
}

void sub_29773CAE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t zhtok::ObjectPool<zhtok::Hypothesis>::~ObjectPool(uint64_t a1)
{
  v2 = *a1;
  if (*a1 < *(a1 + 8))
  {
    do
    {
      v3 = *v2++;
      free(v3);
    }

    while (v2 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<zhtok::HypothesisSet *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_29773CC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x29C2738A0](a10, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *zhtok::Hypothesis::init(_BYTE *__dst, uint64_t a2, uint64_t a3, double a4)
{
  v5 = __dst;
  *(__dst + 2) = a4;
  if (a3)
  {
    v8 = *(a3 + 8);
    v6 = a3 + 8;
    v7 = v8;
    *(__dst + 3) = a2;
    *(__dst + 4) = v6 + 16;
    if (v8 > 1uLL)
    {
      __dst = memcpy(__dst, (v6 - 4 * (v7 - 1)), 4 * (v7 - 1));
      v9 = 2;
    }

    else
    {
      __dst = memcpy(__dst, (v6 - 4 * v7), 4 * v7);
      v9 = v7 + 1;
    }

    v5[8] = v9;
    *(v5 + 1) = *(a2 + 4);
  }

  else
  {
    *(__dst + 3) = a2;
    *(__dst + 4) = 0;
    *(__dst + 1) = 1;
    __dst[8] = 1;
  }

  return __dst;
}

double zhtok::Hypothesis::costOfExtendingToWord(zhtok::Hypothesis *this, unsigned int a2, void *a3)
{
  v3 = *(this + 8);
  LMLanguageModelConditionalProbability();
  return -v4;
}

CFStringRef zhtok::Hypothesis::createDescription(zhtok::Hypothesis *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v9);
  MEMORY[0x29C273810](&v10, *this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ",", 1);
  MEMORY[0x29C273810](&v10, *(this + 1));
  v2 = *(this + 2);
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%p, cost = %f, history = %s", this, v2, p_p);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v9[0] = *MEMORY[0x29EDC9528];
  v5 = *(MEMORY[0x29EDC9528] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v10 = v5;
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  MEMORY[0x29C273880](&v14);
  return v4;
}

void sub_29773CF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x29EDC9528]);
  MEMORY[0x29C273880](va);
  _Unwind_Resume(a1);
}

uint64_t zhtok::Logger::getLogger(zhtok::Logger *this)
{
  {
    operator new();
  }

  return zhtok::Logger::getLogger(void)::singleton;
}

void sub_29773CFD8(_Unwind_Exception *a1)
{
  MEMORY[0x29C2738C0](v1, 0x1020C40A15A3301);
  _Unwind_Resume(a1);
}

zhtok::Logger *zhtok::Logger::Logger(zhtok::Logger *this)
{
  *(this + 1) = 0;
  v2 = (this + 8);
  *this = 0;
  v3 = *MEMORY[0x29EDCA610];
  *(this + 2) = 0;
  *(this + 3) = v3;
  v4 = getenv("DEBUG_PRINT_WORD");
  if (v4 && *v4 == 49)
  {
    v5 = 2;
    *v2 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = getenv("DEBUG_PRINT_HYPOTHESES");
  if (v6 && *v6 == 49)
  {
    v5 |= 4uLL;
    *v2 = v5;
  }

  v7 = getenv("DEBUG_PRINT_BEST_BACKTRACE");
  if (v7 && *v7 == 49)
  {
    *v2 = v5 | 0x10;
    goto LABEL_12;
  }

  if (v5)
  {
LABEL_12:
    *this = 1;
    operator new();
  }

  return this;
}

void sub_29773D120(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C2738C0](v3, 0x20C4093837F09);
  }

  _Unwind_Resume(exception_object);
}

BOOL zhtok::Logger::areLoggingTypesEnabled(zhtok::Logger *this, uint64_t a2, int a3)
{
  v3 = *this;
  if (a3)
  {
    if (*this)
    {
      return (*(this + 1) & a2) != 0;
    }
  }

  else if (*this)
  {
    return (a2 & ~*(this + 1)) == 0;
  }

  return 0;
}

uint64_t zhtok::Logger::log(uint64_t result, unsigned int a2, char *a3, ...)
{
  va_start(va, a3);
  if (*result == 1 && (*(result + 8) & a2) != 0)
  {
    return vfprintf(**(result + 16), a3, va);
  }

  return result;
}

uint64_t zhtok::Logger::log(uint64_t this, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*this == 1 && (*(this + 8) & a2) != 0)
  {
    return vfprintf(**(this + 16), a3, va);
  }

  return this;
}

uint64_t zhtok::Logger::flush(uint64_t this)
{
  v1 = *(this + 16);
  if (v1)
  {
    return fflush(*v1);
  }

  return this;
}

void zhtok::Logger::logErrorMessage(zhtok::Logger *this, const char *a2, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x29EDCA608];
  vsprintf(cStr, a2, va);
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFLog();
  CFRelease(v3);
  v2 = *MEMORY[0x29EDCA608];
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