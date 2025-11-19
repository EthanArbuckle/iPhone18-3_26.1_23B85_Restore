CFStringRef createCFStringFromString(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return &stru_287F86938;
    }

    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v1, v2, 0x8000100u, 0);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v1 = *a1;
    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v1, v2, 0x8000100u, 0);
  }

  return &stru_287F86938;
}

_BYTE *getUTF8StringFromCFString@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void splitWithChar(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "");
  for (i = 0; ; ++i)
  {
    v7 = *(a1 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = *(a1 + 23);
    if (i >= v7)
    {
      goto LABEL_27;
    }

LABEL_6:
    if (v8 <= i)
    {
      goto LABEL_35;
    }

    v9 = *a1;
    if ((v7 & 0x80000000) == 0)
    {
      v9 = a1;
    }

    v10 = *(v9 + i);
    if (v10 == a2)
    {
      if (i)
      {
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v13;
        }

        std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        v13.__r_.__value_.__l.__size_ = 0;
        v11 = v13.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v13.__r_.__value_.__s + 23) = 0;
        v11 = &v13;
      }

      v11->__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v7 & 0x80000000) != 0)
      {
        v7 = a1[1];
      }

      if (v7 <= i)
      {
LABEL_35:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      std::string::push_back(&v13, v10);
    }
  }

  v8 = a1[1];
  if (v8 > i)
  {
    goto LABEL_6;
  }

LABEL_27:
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v13;
  }

  std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_26F4DC4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

CFStringRef TLCreateStringWithValidatedFormat(CFStringRef validFormatSpecifiers, CFStringRef format, ...)
{
  va_start(va, format);
  errorPtr[0] = 0;
  va_copy(&errorPtr[1], va);
  StringWithValidatedFormatAndArguments = CFStringCreateStringWithValidatedFormatAndArguments(*MEMORY[0x277CBECE8], 0, validFormatSpecifiers, format, va, errorPtr);
  if (errorPtr[0])
  {
    v4 = CFErrorCopyDescription(errorPtr[0]);
    v5 = _nlpDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      TLCreateStringWithValidatedFormat(format, v4, v5);
    }

    CFRelease(errorPtr[0]);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return StringWithValidatedFormatAndArguments;
}

void sub_26F4DC6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279DD8F48, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279DD8F50, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_26F4DCE08(_Unwind_Exception *a1)
{
  MEMORY[0x274392B00](v5, 0x1060C407B2A54E7);

  _Unwind_Resume(a1);
}

void sub_26F4DD378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  __p = &a31;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

TLCompositeTransliterator *std::unique_ptr<TLCompositeTransliterator>::reset[abi:ne200100](TLCompositeTransliterator **a1, TLCompositeTransliterator *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TLCompositeTransliterator::~TLCompositeTransliterator(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

void TLDevanagariOrthographyChecker::TLDevanagariOrthographyChecker(TLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  *this = &unk_287F864A8;
  *(this + 1) = @"‍";
  *(this + 2) = @"़";
  *(this + 3) = @"्";
  *(this + 4) = @"ः";
  *(this + 5) = @"ं";
  *(this + 6) = @"ँ";
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, *(this + 2));
  CFStringAppend(Mutable, *(this + 3));
  CFStringAppend(Mutable, *(this + 4));
  CFStringAppend(Mutable, *(this + 5));
  CFStringAppend(Mutable, *(this + 6));
  CFStringAppend(Mutable, @"ा");
  CFStringAppend(Mutable, @"ि");
  CFStringAppend(Mutable, @"ी");
  CFStringAppend(Mutable, @"ु");
  CFStringAppend(Mutable, @"ू");
  CFStringAppend(Mutable, @"ृ");
  CFStringAppend(Mutable, @"ॄ");
  CFStringAppend(Mutable, @"ॅ");
  CFStringAppend(Mutable, @"े");
  CFStringAppend(Mutable, @"ै");
  CFStringAppend(Mutable, @"ॉ");
  CFStringAppend(Mutable, @"ो");
  CFStringAppend(Mutable, @"ौ");
  *(this + 7) = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  CFRelease(Mutable);
  v5 = CFStringCreateMutable(0, 0);
  CFStringAppend(v5, @"ऋ");
  CFStringAppend(v5, @"क");
  CFStringAppend(v5, @"ख");
  CFStringAppend(v5, @"ग");
  CFStringAppend(v5, @"घ");
  CFStringAppend(v5, @"ङ");
  CFStringAppend(v5, @"च");
  CFStringAppend(v5, @"छ");
  CFStringAppend(v5, @"ज");
  CFStringAppend(v5, @"झ");
  CFStringAppend(v5, @"ञ");
  CFStringAppend(v5, @"ट");
  CFStringAppend(v5, @"ठ");
  CFStringAppend(v5, @"ड");
  CFStringAppend(v5, @"ढ");
  CFStringAppend(v5, @"ण");
  CFStringAppend(v5, @"त");
  CFStringAppend(v5, @"थ");
  CFStringAppend(v5, @"द");
  CFStringAppend(v5, @"ध");
  CFStringAppend(v5, @"न");
  CFStringAppend(v5, @"प");
  CFStringAppend(v5, @"फ");
  CFStringAppend(v5, @"ब");
  CFStringAppend(v5, @"भ");
  CFStringAppend(v5, @"म");
  CFStringAppend(v5, @"य");
  CFStringAppend(v5, @"र");
  CFStringAppend(v5, @"ल");
  CFStringAppend(v5, @"व");
  CFStringAppend(v5, @"श");
  CFStringAppend(v5, @"ष");
  CFStringAppend(v5, @"स");
  CFStringAppend(v5, @"ह");
  CFStringAppend(v5, @"क़");
  CFStringAppend(v5, @"ख़");
  CFStringAppend(v5, @"ग़");
  CFStringAppend(v5, @"ज़");
  CFStringAppend(v5, @"ड़");
  CFStringAppend(v5, @"ढ़");
  CFStringAppend(v5, @"फ़");
  CFStringAppend(v5, @"ॹ");
  CFStringAppend(v5, @"ॐ");
  if (CFStringCompare(a2, @"mr", 0) == kCFCompareEqualTo)
  {
    CFStringAppend(v5, @"ऱ");
    CFStringAppend(v5, @"ळ");
  }

  *(this + 8) = CFCharacterSetCreateWithCharactersInString(0, v5);
  CFRelease(v5);
  v6 = CFStringCreateMutable(0, 0);
  CFStringAppend(v6, @"ङ");
  CFStringAppend(v6, @"ञ");
  CFStringAppend(v6, @"ण");
  CFStringAppend(v6, @"न");
  CFStringAppend(v6, @"म");
  *(this + 9) = CFCharacterSetCreateWithCharactersInString(0, v6);
  CFRelease(v6);
  v7 = CFStringCreateMutable(0, 0);
  CFStringAppend(v7, @"क");
  CFStringAppend(v7, @"ख");
  CFStringAppend(v7, @"ग");
  CFStringAppend(v7, @"घ");
  CFStringAppend(v7, @"ङ");
  *(this + 10) = CFCharacterSetCreateWithCharactersInString(0, v7);
  CFRelease(v7);
  v8 = CFStringCreateMutable(0, 0);
  CFStringAppend(v8, @"च");
  CFStringAppend(v8, @"छ");
  CFStringAppend(v8, @"ज");
  CFStringAppend(v8, @"झ");
  CFStringAppend(v8, @"ञ");
  *(this + 11) = CFCharacterSetCreateWithCharactersInString(0, v8);
  CFRelease(v8);
  v9 = CFStringCreateMutable(0, 0);
  CFStringAppend(v9, @"ट");
  CFStringAppend(v9, @"ठ");
  CFStringAppend(v9, @"ड");
  CFStringAppend(v9, @"ढ");
  CFStringAppend(v9, @"ण");
  *(this + 12) = CFCharacterSetCreateWithCharactersInString(0, v9);
  CFRelease(v9);
  v10 = CFStringCreateMutable(0, 0);
  CFStringAppend(v10, @"ट");
  CFStringAppend(v10, @"ठ");
  CFStringAppend(v10, @"ड");
  CFStringAppend(v10, @"ढ");
  CFStringAppend(v10, @"ण");
  CFStringAppend(v10, @"य");
  CFStringAppend(v10, @"व");
  CFStringAppend(v10, @"श");
  CFStringAppend(v10, @"ष");
  CFStringAppend(v10, @"स");
  CFStringAppend(v10, @"ह");
  *(this + 13) = CFCharacterSetCreateWithCharactersInString(0, v10);
  CFRelease(v10);
  v11 = CFStringCreateMutable(0, 0);
  CFStringAppend(v11, @"क़");
  CFStringAppend(v11, @"ख़");
  CFStringAppend(v11, @"ग़");
  CFStringAppend(v11, @"ज़");
  CFStringAppend(v11, @"ड़");
  CFStringAppend(v11, @"ढ़");
  CFStringAppend(v11, @"फ़");
  CFStringAppend(v11, @"ॹ");
  *(this + 14) = CFCharacterSetCreateWithCharactersInString(0, v11);
  CFRelease(v11);
  v12 = CFStringCreateMutable(0, 0);
  CFStringAppend(v12, @"अ");
  CFStringAppend(v12, @"आ");
  CFStringAppend(v12, @"इ");
  CFStringAppend(v12, @"ई");
  CFStringAppend(v12, @"उ");
  CFStringAppend(v12, @"ऊ");
  CFStringAppend(v12, @"ऋ");
  CFStringAppend(v12, @"ऍ");
  CFStringAppend(v12, @"ए");
  CFStringAppend(v12, @"ऐ");
  CFStringAppend(v12, @"ऑ");
  CFStringAppend(v12, @"ओ");
  CFStringAppend(v12, @"औ");
  *(this + 15) = CFCharacterSetCreateWithCharactersInString(0, v12);
  CFRelease(v12);
  v13 = CFStringCreateMutable(0, 0);
  CFStringAppend(v13, @"०");
  CFStringAppend(v13, @"१");
  CFStringAppend(v13, @"२");
  CFStringAppend(v13, @"३");
  CFStringAppend(v13, @"४");
  CFStringAppend(v13, @"५");
  CFStringAppend(v13, @"६");
  CFStringAppend(v13, @"७");
  CFStringAppend(v13, @"८");
  CFStringAppend(v13, @"९");
  CFStringAppend(v13, @"‍");
  v14 = CFCharacterSetCreateWithCharactersInString(0, v13);
  CFRelease(v13);
  MutableCopy = CFCharacterSetCreateMutableCopy(*MEMORY[0x277CBECE8], *(this + 15));
  CFCharacterSetUnion(MutableCopy, *(this + 8));
  CFCharacterSetUnion(MutableCopy, *(this + 7));
  CFCharacterSetUnion(MutableCopy, v14);
  CFRelease(v14);
  *(this + 16) = CFCharacterSetCreateInvertedSet(0, MutableCopy);
  CFRelease(MutableCopy);
}

void TLDevanagariOrthographyChecker::~TLDevanagariOrthographyChecker(CFTypeRef *this)
{
  *this = &unk_287F864A8;
  CFRelease(this[7]);
  CFRelease(this[8]);
  CFRelease(this[9]);
  CFRelease(this[10]);
  CFRelease(this[11]);
  CFRelease(this[12]);
  CFRelease(this[13]);
  CFRelease(this[14]);
  CFRelease(this[15]);
  CFRelease(this[16]);
}

{
  TLDevanagariOrthographyChecker::~TLDevanagariOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLDevanagariOrthographyChecker::isVowelSign(TLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"ऽ");
  CFStringAppend(Mutable, @"ा");
  CFStringAppend(Mutable, @"ि");
  CFStringAppend(Mutable, @"ी");
  CFStringAppend(Mutable, @"ु");
  CFStringAppend(Mutable, @"ू");
  CFStringAppend(Mutable, @"ृ");
  CFStringAppend(Mutable, @"ॄ");
  CFStringAppend(Mutable, @"ॅ");
  CFStringAppend(Mutable, @"े");
  CFStringAppend(Mutable, @"ै");
  CFStringAppend(Mutable, @"ॉ");
  CFStringAppend(Mutable, @"ो");
  CFStringAppend(Mutable, @"ौ");
  v4 = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v4);
  CFRelease(Mutable);
  CFRelease(v4);
  v8.length = CFStringGetLength(a2);
  v8.location = 0;
  v6 = CFStringFindCharacterFromSet(a2, InvertedSet, v8, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v6;
}

BOOL TLDevanagariOrthographyChecker::canNuktaFollowLetter(TLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, @"कखगजडढफ");
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v3);
  CFRelease(@"कखगजडढफ");
  CFRelease(v3);
  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  v5 = CFStringFindCharacterFromSet(a2, InvertedSet, v7, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v5;
}

BOOL TLDevanagariOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, this[2], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[8];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL TLDevanagariOrthographyChecker::canViramaPrecedeLetter(TLDevanagariOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 8);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 1), 0) == kCFCompareEqualTo;
}

CFMutableStringRef TLDevanagariOrthographyChecker::stringByCorrectingIllegalVowelLetters(TLDevanagariOrthographyChecker *this, const __CFString *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v12 = @"अा";
  v13 = v14;
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"आ";
  v12 = @"अो";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ओ";
  v12 = @"अाे";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ओ";
  v12 = @"आे";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ओ";
  v12 = @"अौ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"औ";
  v12 = @"अाै";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"औ";
  v12 = @"आै";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"औ";
  v12 = @"एॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऍ";
  v12 = @"अॉ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऑ";
  v12 = @"अाॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऑ";
  v12 = @"आॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ऑ";
  v12 = @"अॅ";
  v15 = &v12;
  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v13, &v12)[5] = @"ॲ";
  Length = CFStringGetLength(a2);
  MutableCopy = CFStringCreateMutableCopy(0, Length, a2);
  v5 = v13;
  if (v13 != v14)
  {
    do
    {
      v6 = v5[5];
      v7 = CFStringFind(MutableCopy, v5[4], 0);
      if (v7.length >= 1)
      {
        CFStringReplace(MutableCopy, v7, v6);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v14);
  }

  std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(&v13, v14[0]);
  return MutableCopy;
}

BOOL TLDevanagariOrthographyChecker::checkSpelling(TLDevanagariOrthographyChecker *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  v83 = *MEMORY[0x277D85DE8];
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v84.location = 0;
  v84.length = Length;
  if (CFStringFindCharacterFromSet(theString, *(this + 7), v84, 0, &result))
  {
    v9 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (!result.location)
      {
        goto LABEL_51;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL && result.location == v9 + location)
      {
        v85.location = location;
        v85.length = v9;
        v11 = CFStringCreateWithSubstring(0, theString, v85);
        v12 = CFStringCreateWithSubstring(0, theString, result);
        if ((CFStringCompare(v11, *(this + 2), 0) || CFStringCompare(v12, *(this + 2), 0) == kCFCompareEqualTo) && (CFStringCompare(v12, *(this + 5), 0) || !TLDevanagariOrthographyChecker::isVowelSign(0, v11)) && (CFStringCompare(v12, *(this + 6), 0) || !TLDevanagariOrthographyChecker::canCandrabinduFollowVowelSign(0, v11)) && (CFStringCompare(v12, *(this + 4), 0) || !TLDevanagariOrthographyChecker::isVowelSign(0, v11)))
        {
          if (v11)
          {
            CFRelease(v11);
          }

          if (v12)
          {
            CFRelease(v12);
          }

LABEL_51:
          v24 = 0;
          v25 = @"illegal diacritic placement";
          goto LABEL_139;
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      location = result.location;
      v9 = result.length;
      v86.location = result.length + result.location;
      v86.length = Length - (result.length + result.location);
    }

    while (CFStringFindCharacterFromSet(theString, *(this + 7), v86, 0, &result));
  }

  result = xmmword_26F4F5780;
  v13 = *(this + 2);
  v14 = theString;
  v15.location = 0;
  v15.length = Length;
  while (CFStringFindWithOptions(v14, v13, v15, 0, &result))
  {
    if (!result.location)
    {
      goto LABEL_46;
    }

    v87.location = result.location - 1;
    v87.length = 1;
    v16 = CFStringCreateWithSubstring(0, theString, v87);
    if (!TLDevanagariOrthographyChecker::canNuktaFollowLetter(v16, v16))
    {
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_46:
      v24 = 0;
      v25 = @"illegal nukta placement";
      goto LABEL_139;
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v15.location = result.length + result.location;
    v15.length = Length - (result.length + result.location);
    v13 = *(this + 2);
    v14 = theString;
  }

  result = xmmword_26F4F5780;
  v17 = *(this + 3);
  v18 = theString;
  v19.location = 0;
  v19.length = Length;
  while (CFStringFindWithOptions(v18, v17, v19, 0, &result))
  {
    if (!result.location)
    {
      goto LABEL_56;
    }

    v88.location = result.location - 1;
    v88.length = 1;
    v20 = CFStringCreateWithSubstring(0, theString, v88);
    if (result.location + 1 >= Length)
    {
      v21 = 0;
      if (!TLDevanagariOrthographyChecker::canViramaFollowLetter(this, v20))
      {
LABEL_52:
        if (v20)
        {
          CFRelease(v20);
        }

        if (v21)
        {
          CFRelease(v21);
        }

LABEL_56:
        v24 = 0;
        v25 = @"illegal virama placement";
        goto LABEL_139;
      }

LABEL_37:
      v22 = 1;
      if (!v20)
      {
        goto LABEL_39;
      }

LABEL_38:
      CFRelease(v20);
      goto LABEL_39;
    }

    v89.length = 1;
    v89.location = result.location + 1;
    v21 = CFStringCreateWithSubstring(0, theString, v89);
    if (!TLDevanagariOrthographyChecker::canViramaFollowLetter(this, v20))
    {
      goto LABEL_52;
    }

    if (!v21)
    {
      goto LABEL_37;
    }

    if (!TLDevanagariOrthographyChecker::canViramaPrecedeLetter(this, v21))
    {
      goto LABEL_52;
    }

    v22 = 0;
    if (v20)
    {
      goto LABEL_38;
    }

LABEL_39:
    if ((v22 & 1) == 0)
    {
      CFRelease(v21);
    }

    v19.location = result.length + result.location;
    v19.length = Length - (result.length + result.location);
    v17 = *(this + 3);
    v18 = theString;
  }

  if (a3)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  else
  {
    Mutable = 0;
  }

  v26 = CFStringGetLength(theString);
  v90.location = 0;
  v90.length = v26;
  v75 = a3;
  theArray = Mutable;
  if (!CFStringFindCharacterFromSet(theString, *(this + 9), v90, 0, &range))
  {
    if (!Mutable)
    {
      goto LABEL_111;
    }

    v25 = 0;
    v27 = 1;
LABEL_100:
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v73 = v27;
      v74 = a4;
      MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
      Count = CFArrayGetCount(Mutable);
      if (Count >= 1)
      {
        v42 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v42 - 2);
          Value = CFDictionaryGetValue(ValueAtIndex, @"range.location");
          v45 = CFDictionaryGetValue(ValueAtIndex, @"range.length");
          result = xmmword_26F4F5770;
          CFNumberGetValue(Value, kCFNumberCFIndexType, &result);
          CFNumberGetValue(v45, kCFNumberCFIndexType, &result.length);
          v46 = CFDictionaryGetValue(ValueAtIndex, @"replacement");
          v47.location = result.location;
          if (result.location != -1)
          {
            v47.length = result.length;
            if (result.length >= 1)
            {
              if (v46)
              {
                CFStringReplace(MutableCopy, v47, v46);
              }
            }
          }

          --v42;
          Mutable = theArray;
        }

        while (v42 > 1);
      }

      a4 = v74;
      *v75 = MutableCopy;
      v27 = v73;
    }

    CFRelease(Mutable);
    if (v27)
    {
      goto LABEL_110;
    }

LABEL_138:
    v24 = 0;
    goto LABEL_139;
  }

  v25 = 0;
  v27 = 1;
  while (2)
  {
    if (range.location + 2 >= v26 || CFStringGetCharacterAtIndex(theString, range.location + 1) != 2381)
    {
      goto LABEL_93;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, range.location);
    v29 = CFStringGetCharacterAtIndex(theString, range.location + 2);
    if (CFCharacterSetIsCharacterMember(*(this + 14), v29))
    {
      v30 = 1;
    }

    else
    {
      v30 = range.location + 3 < v26 && CFStringGetCharacterAtIndex(theString, range.location + 3) == 2364;
    }

    if (CharacterAtIndex > 2338)
    {
      if (CharacterAtIndex != 2339)
      {
        if (CharacterAtIndex == 2344 && (CFCharacterSetIsCharacterMember(*(this + 10), v29) || CFCharacterSetIsCharacterMember(*(this + 11), v29) || CFCharacterSetIsCharacterMember(*(this + 12), v29)) && (range.location < 1 || CFStringGetCharacterAtIndex(theString, range.location) != 2381))
        {
          if (Mutable)
          {
            result = xmmword_279DD8F58;
            v82 = @"replacement";
            valuePtr = range.location;
            v78 = 2;
            v32 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
            v33 = CFNumberCreate(0, kCFNumberCFIndexType, &v78);
            values[0] = v32;
            values[1] = v33;
            values[2] = @"ं";
            v34 = v25;
            v35 = CFDictionaryCreate(0, &result, values, 3, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
            CFRelease(v32);
            CFRelease(v33);
            CFArrayAppendValue(theArray, v35);
            v36 = v35;
            v25 = v34;
            Mutable = theArray;
            CFRelease(v36);
          }

          goto LABEL_89;
        }

        goto LABEL_79;
      }

      if (v30)
      {
        goto LABEL_89;
      }

      v31 = *(this + 13);
LABEL_85:
      if (((CFCharacterSetIsCharacterMember(v31, v29) != 0) & v27) == 0)
      {
        goto LABEL_89;
      }

LABEL_86:
      v27 = 1;
      goto LABEL_93;
    }

    if (CharacterAtIndex == 2329)
    {
      if (v30)
      {
        goto LABEL_89;
      }

      v31 = *(this + 10);
      goto LABEL_85;
    }

    if (CharacterAtIndex != 2334)
    {
LABEL_79:
      if ((v27 & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (!v30)
    {
      v31 = *(this + 11);
      goto LABEL_85;
    }

LABEL_89:
    if (!v25)
    {
      v91.location = range.location;
      v91.length = 3;
      v37 = CFStringCreateWithSubstring(0, theString, v91);
      v38 = CFStringCreateWithFormat(0, 0, @"invalid nasal combination '%@'", v37);
      v39 = v37;
      v25 = v38;
      CFRelease(v39);
    }

    if (!Mutable)
    {
      v24 = 0;
      goto LABEL_139;
    }

    v27 = 0;
LABEL_93:
    if (v26 > range.location + 1)
    {
      v92.location = range.location + 1;
      v92.length = v26 - (range.location + 1);
      if (CFStringFindCharacterFromSet(theString, *(this + 9), v92, 0, &range))
      {
        continue;
      }
    }

    break;
  }

  if (Mutable)
  {
    goto LABEL_100;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_138;
  }

LABEL_110:
  Mutable = v25;
LABEL_111:
  Copy = CFCharacterSetCreateCopy(0, *(this + 15));
  v49 = CFCharacterSetCreateCopy(0, *(this + 7));
  v50 = CFCharacterSetCreateWithCharactersInString(0, @"ँं");
  v51 = CFStringGetLength(theString);
  v52 = theString;
  v53 = Copy;
  v54.location = 0;
  v54.length = v51;
  while (1)
  {
    if (!CFStringFindCharacterFromSet(v52, v53, v54, 0, &result))
    {
      v57 = 1;
      goto LABEL_118;
    }

    if (result.location + 1 < v51)
    {
      v55 = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(v49, v55))
      {
        IsCharacterMember = CFCharacterSetIsCharacterMember(v50, v55);
        if (!IsCharacterMember)
        {
          break;
        }
      }
    }

    v54.location = result.length + result.location;
    v54.length = v51 - (result.length + result.location);
    v52 = theString;
    v53 = Copy;
  }

  v57 = 0;
  if (v75)
  {
    *v75 = TLDevanagariOrthographyChecker::stringByCorrectingIllegalVowelLetters(IsCharacterMember, theString);
  }

  Mutable = @"illegal diacritic after vowel letter";
LABEL_118:
  CFRelease(Copy);
  CFRelease(v49);
  CFRelease(v50);
  if (v57)
  {
    v58 = CFStringGetLength(theString);
    v59 = CFStringCreateMutableCopy(0, v58, theString);
    v60 = CFStringFind(v59, @"‌", 0);
    v25 = Mutable;
    if (v60.length >= 1)
    {
      CFStringReplace(v59, v60, &stru_287F86938);
    }

    v61 = CFStringCompare(v59, theString, 0);
    v62 = v61;
    if (v75 && v61)
    {
      *v75 = v59;
    }

    if (v59)
    {
      CFRelease(v59);
      if (v62)
      {
        goto LABEL_126;
      }

LABEL_129:
      v63 = *(this + 1);
      v93.length = CFStringGetLength(theString);
      v93.location = 0;
      if (CFStringFindWithOptions(theString, v63, v93, 0, &result))
      {
        if (result.location)
        {
          v94.length = result.location - 1;
          v94.location = 0;
          v64 = CFStringCreateWithSubstring(0, theString, v94);
          HasSuffix = CFStringHasSuffix(v64, @"र्");
          if (!HasSuffix)
          {
            v25 = @"invalid sequence with ZWJ";
          }

          CFRelease(v64);
          if (!v75 || HasSuffix)
          {
            if (!HasSuffix)
            {
              goto LABEL_138;
            }

            goto LABEL_136;
          }

LABEL_152:
          v70 = CFStringGetLength(theString);
          v71 = CFStringCreateMutableCopy(0, v70, theString);
          v72 = CFStringFind(v71, *(this + 1), 0);
          if (v72.length >= 1)
          {
            CFStringReplace(v71, v72, &stru_287F86938);
          }

          v24 = 0;
          *v75 = v71;
        }

        else
        {
          if (v75)
          {
            v25 = @"invalid sequence with ZWJ";
            goto LABEL_152;
          }

          v24 = 0;
          v25 = @"invalid sequence with ZWJ";
        }
      }

      else
      {
LABEL_136:
        v95.length = CFStringGetLength(theString);
        v95.location = 0;
        CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 16), v95, 0, &result);
        v24 = CharacterFromSet == 0;
        if (CharacterFromSet)
        {
          v67 = CFStringCreateWithSubstring(0, theString, result);
          v25 = CFStringCreateWithFormat(0, 0, @"invalid letter '%@'", v67);
          CFRelease(v67);
        }
      }
    }

    else
    {
      if (v61 == kCFCompareEqualTo)
      {
        goto LABEL_129;
      }

LABEL_126:
      v24 = 0;
      v25 = @"invalid: ZWNJ present";
    }
  }

  else
  {
    v24 = 0;
    v25 = Mutable;
  }

LABEL_139:
  if (!a4 || v24)
  {
    if (!a4 && v25)
    {
      CFRelease(v25);
    }
  }

  else
  {
    *a4 = v25;
  }

  v68 = *MEMORY[0x277D85DE8];
  return v24;
}

void std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<__CFString const*,__CFString const*>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,__CFString const*>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,__CFString const*>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

BOOL TLLanguageModelStr::load(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 24), a2);
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x277D22E30]);
  v20 = __p;
  v4 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, __p);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string const&>(v4 + 56, (v4 + 56), a2);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a2 + 47);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 32);
  }

  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x277D22EA0]);
    v20 = __p;
    v6 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, __p);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string const&>(v6 + 56, (v6 + 56), (a2 + 24));
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x277D22E48]);
    v20 = __p;
    v7 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, __p);
    v8 = v7;
    if (*(v7 + 80))
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v7 + 56);
      *(v8 + 80) = 0;
    }

    *(v8 + 56) = 1;
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x277D22EC0]);
  v20 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, __p);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v9 + 56, (v9 + 56), MEMORY[0x277D22DE8]);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x277D22EB0]);
  v20 = __p;
  v10 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, __p);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v10 + 56, (v10 + 56), MEMORY[0x277D22DE8]);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a1 + 8);
  LOBYTE(__p[0]) = 0;
  v19 = 0;
  language_modeling::v1::LanguageModel::init();
  if (v19 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v18, v18[1]);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = v20;
  if (!v20)
  {
    language_modeling::v1::LanguageModel::makeDefaultSession(__p, *(a1 + 8));
    v13 = __p[0];
    __p[0] = 0;
    std::unique_ptr<language_modeling::v1::LanguageModelSession>::reset[abi:ne200100]((a1 + 16), v13);
    v14 = __p[0];
    __p[0] = 0;
    if (v14)
    {
      language_modeling::v1::LanguageModelSession::~LanguageModelSession(v14);
      MEMORY[0x274392B00]();
    }

    language_modeling::v1::LanguageModel::wireMemory(*(a1 + 8));
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(&v23, v24[0]);
  return v12 == 0;
}

void sub_26F4DF9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v15 - 64, *(v15 - 56));
  _Unwind_Resume(a1);
}

void TLLanguageModelStr::~TLLanguageModelStr(TLLanguageModelStr *this)
{
  *this = &unk_287F864F8;
  v2 = (this + 16);
  if (*(this + 2))
  {
    language_modeling::v1::LanguageModel::unwireMemory(*(this + 1));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  std::unique_ptr<language_modeling::v1::LanguageModelSession>::reset[abi:ne200100](v2, 0);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    language_modeling::v1::LanguageModel::~LanguageModel(v3);
    MEMORY[0x274392B00]();
  }
}

{
  TLLanguageModelStr::~TLLanguageModelStr(this);

  JUMPOUT(0x274392B00);
}

double TLLanguageModelStr::logProbability(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v6 = (a1 + 24);
  v7 = *(a1 + 47);
  if (v7 < 0)
  {
    if (*(a1 + 32) != 2)
    {
      goto LABEL_7;
    }

    v6 = *v6;
LABEL_6:
    if (*v6 == 29301)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v7 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!language_modeling::v1::LanguageModelSession::supportsFragmentsBasedConditionalProbability(*(a1 + 16)))
  {
    return -15.6535598;
  }

LABEL_8:
  v8 = *(a1 + 16);
  if (!language_modeling::v1::LanguageModelSession::canReasonAbout())
  {
    return -15.6535598;
  }

  language_modeling::v1::LinguisticContext::LinguisticContext(v17);
  v10 = *a3;
  v9 = a3[1];
  while (v10 != v9)
  {
    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *v10, *(v10 + 1));
    }

    else
    {
      v11 = *v10;
      v18.__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&v18.__r_.__value_.__l.__data_ = v11;
    }

    v19 = 0;
    MEMORY[0x274392890](v17, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v10 = (v10 + 24);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 8));
  }

  else
  {
    v18 = *a2;
  }

  v19 = 0;
  v13 = *(a1 + 16);
  language_modeling::v1::LanguageModelSession::detailedConditionalProbability();
  language_modeling::v1::Probability::probability();
  v12 = v14;
  language_modeling::v1::Probability::~Probability(&v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  language_modeling::v1::LinguisticContext::~LinguisticContext(v17);
  return v12;
}

void sub_26F4DFC78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  language_modeling::v1::LinguisticContext::~LinguisticContext(va);
  _Unwind_Resume(a1);
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string const&>(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24) == 1)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string const&>(std::__variant_detail::__alt<1ul,std::string> &,std::string const&)::{unnamed type#1}::operator()(v6).n128_u64[0];
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string const&>(std::__variant_detail::__alt<1ul,std::string> &,std::string const&)::{unnamed type#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *v1, *(v1 + 1));
  }

  else
  {
    v3 = *v1;
    v5.__r_.__value_.__r.__words[2] = *(v1 + 2);
    *&v5.__r_.__value_.__l.__data_ = v3;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v5.__r_.__value_.__l.__data_;
  v2[1].n128_u64[0] = v5.__r_.__value_.__r.__words[2];
  *v2 = result;
  v2[1].n128_u32[2] = 1;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_287F86538[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJbSD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(uint64_t a1, std::string *this, char **a3)
{
  if (*(a1 + 24) == 1)
  {
    v6 = *a3;

    std::string::__assign_external(this, v6);
  }

  else
  {
    v11 = v3;
    v12 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v9, *a3);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = 1;
  }

  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>((a2 + 4));

    operator delete(a2);
  }
}

language_modeling::v1::LanguageModelSession *std::unique_ptr<language_modeling::v1::LanguageModelSession>::reset[abi:ne200100](language_modeling::v1::LanguageModelSession **a1, language_modeling::v1::LanguageModelSession *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    language_modeling::v1::LanguageModelSession::~LanguageModelSession(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void TL::SharedCFType::Wrapper::~Wrapper(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *TL::SharedCFType::SharedCFType(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::shared_ptr<TL::SharedCFType::Wrapper>::shared_ptr[abi:ne200100]<TL::SharedCFType::Wrapper,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26F4E04E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TL::SharedCFType::Wrapper>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void ***std::unique_ptr<TL::SharedCFType::Wrapper>::~unique_ptr[abi:ne200100](const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TL::SharedCFType::Wrapper::~Wrapper(v2);
    MEMORY[0x274392B00]();
  }

  return a1;
}

void std::__shared_ptr_pointer<TL::SharedCFType::Wrapper *,std::shared_ptr<TL::SharedCFType::Wrapper>::__shared_ptr_default_delete<TL::SharedCFType::Wrapper,TL::SharedCFType::Wrapper>,std::allocator<TL::SharedCFType::Wrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x274392B00);
}

const void **std::__shared_ptr_pointer<TL::SharedCFType::Wrapper *,std::shared_ptr<TL::SharedCFType::Wrapper>::__shared_ptr_default_delete<TL::SharedCFType::Wrapper,TL::SharedCFType::Wrapper>,std::allocator<TL::SharedCFType::Wrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    TL::SharedCFType::Wrapper::~Wrapper(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TL::SharedCFType::Wrapper *,std::shared_ptr<TL::SharedCFType::Wrapper>::__shared_ptr_default_delete<TL::SharedCFType::Wrapper,TL::SharedCFType::Wrapper>,std::allocator<TL::SharedCFType::Wrapper>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void TLCompositeTransliteratorException::TLCompositeTransliteratorException(TLCompositeTransliteratorException *this, const __CFLocale *a2, const __CFURL *a3)
{
  *this = 0;
  ExceptionList = TLCompositeTransliteratorException::loadExceptionList(this, a2, a3);
  std::unique_ptr<TL::StringMap>::reset[abi:ne200100](this, ExceptionList);
}

TL::StringMap *std::unique_ptr<TL::StringMap>::reset[abi:ne200100](TL::StringMap **a1, TL::StringMap *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TL::StringMap::~StringMap(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

uint64_t TLCompositeTransliteratorException::loadExceptionList(TLCompositeTransliteratorException *this, CFLocaleRef locale, const __CFURL *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3812000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = &unk_26F4F96F1;
  cf = 0;
  if (a3)
  {
    Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v8 = Mutable;
    v15[0] = Mutable;
    if (Mutable)
    {
      CFStringAppend(Mutable, Value);
      CFStringAppend(v8, @"_exceptions.dat");
      buf[0] = CFURLCreateCopyAppendingPathComponent(v6, a3, v8, 0);
      getFileSystemRepresentationFromCFURL(buf[0]);
    }
  }

  else
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = ___ZN34TLCompositeTransliteratorException17loadExceptionListEPK10__CFLocalePK7__CFURL_block_invoke;
    v20 = &unk_279DD8F78;
    v21 = &v23;
    LDEnumerateAssetDataItems();
  }

  v9 = v24[6];
  if (v9)
  {
    getUTF8StringFromCFString(v9, &__p);
    TL::StringMap::createWithFile();
  }

  v10 = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  v11 = _nlpDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "");
    applesauce::CF::convert_or<std::string>(v10, v15, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = p_p;
    _os_log_error_impl(&dword_26F4DB000, v11, OS_LOG_TYPE_ERROR, "Failed to locate exception list for: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  _Block_object_dispose(&v23, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26F4E0AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  v25 = v23;

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a23, 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v24 + 48), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN34TLCompositeTransliteratorException17loadExceptionListEPK10__CFLocalePK7__CFURL_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v10 = PathComponent;
    if (CFStringsAreEqual(PathComponent, @"exceptions.dat"))
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = CFURLCopyPath(url);
      nlp::CFScopedPtr<__CFString const*>::reset((v11 + 48), v12);
      *a6 = 1;
    }

    CFRelease(v10);
  }
}

void sub_26F4E0C70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void applesauce::CF::convert_or<std::string>(CFTypeID a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  applesauce::CF::convert_as<std::string,0>(a1, __p);
  if ((v7 & 1) == 0)
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    return;
  }

  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p[0], __p[1]);
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *__p;
    a3->__r_.__value_.__r.__words[2] = v6;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void TLCompositeTransliteratorException::exceptionCandidatesForInput(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  TLOSSignPostexceptionCandidatesForInput::TLOSSignPostexceptionCandidatesForInput(&v18);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a1)
  {
    v6 = *(a2 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 8);
    }

    if (v6)
    {
      TL::StringMap::get(*a1, a2, &__p);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        splitWithChar(&__p, 0x2Cu, &v14);
        v9 = v14;
        v10 = v15;
        if (v14 != v15)
        {
          v11 = a3[1];
          do
          {
            v13 = 0;
            v19 = 1;
            v12 = 0;
            if (v11 >= a3[2])
            {
              v11 = std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string const&,std::string const&,float,float,TLTransliteratorCandidateType,BOOL>(a3, a2, v9, &v13 + 1, &v13, &v19, &v12);
            }

            else
            {
              TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v11, a2, v9, 1, 0, 0.0, 0.0);
              v11 += 80;
            }

            a3[1] = v11;
            v9 += 24;
          }

          while (v9 != v10);
        }

        v19 = &v14;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
        v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v8 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  TLOSSignPostexceptionCandidatesForInput::~TLOSSignPostexceptionCandidatesForInput(&v18);
}

void sub_26F4E0E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, os_signpost_id_t a20)
{
  *(v20 - 56) = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 56));
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__p);
  TLOSSignPostexceptionCandidatesForInput::~TLOSSignPostexceptionCandidatesForInput(&a20);
  _Unwind_Resume(a1);
}

void TLOSSignPostexceptionCandidatesForInput::TLOSSignPostexceptionCandidatesForInput(TLOSSignPostexceptionCandidatesForInput *this)
{
  v2 = _nlpSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, this);

  *this = v3;
  v4 = _nlpSignpostLog();
  v5 = v4;
  v6 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "exceptionCandidatesForInput", &unk_26F4F80C2, v7, 2u);
  }
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string const&,std::string const&,float,float,TLTransliteratorCandidateType,BOOL>(uint64_t *a1, uint64_t a2, uint64_t a3, float *a4, float *a5, void *a6, unsigned __int8 *a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x333333333333333)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  v17 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v11);
  }

  v14[0] = 0;
  v14[1] = 80 * v7;
  v15 = 80 * v7;
  v16 = 0;
  TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(80 * v7, a2, a3, *a6, *a7, *a4, *a5);
  v15 = 80 * v7 + 80;
  std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, v14);
  v12 = a1[1];
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(v14);
  return v12;
}

void sub_26F4E10CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v11 = *(v7 + 48);
      *(v8 + 57) = *(v7 + 57);
      *(v8 + 48) = v11;
      v7 += 80;
      v8 += 80;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v4);
      v4 += 80;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void TLOSSignPostexceptionCandidatesForInput::~TLOSSignPostexceptionCandidatesForInput(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = v2;
  v4 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v3, OS_SIGNPOST_INTERVAL_END, v4, "exceptionCandidatesForInput", &unk_26F4F80C2, v5, 2u);
  }
}

void nlp::CFScopedPtr<__CFString *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

CFTypeID applesauce::CF::convert_as<std::string,0>@<X0>(CFTypeID result@<X0>, uint64_t a2@<X8>)
{
  if (result && (v3 = result, TypeID = CFStringGetTypeID(), result = CFGetTypeID(v3), TypeID == result))
  {
    result = applesauce::CF::details::CFString_get_value<false>(v3, &v5);
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

_BYTE *applesauce::CF::details::CFString_get_value<false>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v10.location = 0;
  v10.length = Length;
  CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v7 = maxBufLen;
  if (maxBufLen >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v7)
  {
    bzero(a2, v7);
  }

  a2[v7] = 0;
  if (a2[23] >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v11.location = 0;
  v11.length = Length;
  return CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
}

__CFString *TLTransliterationCandidateTypeAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown type: %ld", a1];
  }

  else
  {
    v2 = off_279DD8F98[a1];
  }

  return v2;
}

void sub_26F4E178C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  applesauce::CF::StringRef::~StringRef(&a10);
  _Unwind_Resume(a1);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_26F4E1D80(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void TLBengaliOrthographyChecker::TLBengaliOrthographyChecker(TLBengaliOrthographyChecker *this)
{
  *this = &unk_287F865D0;
  *(this + 1) = @"‍";
  *(this + 2) = @"়";
  *(this + 3) = @"্";
  *(this + 4) = @"ঃ";
  *(this + 5) = @"ং";
  *(this + 6) = @"ঁ";
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, *(this + 2));
  CFStringAppend(Mutable, *(this + 3));
  CFStringAppend(Mutable, *(this + 4));
  CFStringAppend(Mutable, *(this + 5));
  CFStringAppend(Mutable, *(this + 6));
  CFStringAppend(Mutable, @"া");
  CFStringAppend(Mutable, @"ি");
  CFStringAppend(Mutable, @"ী");
  CFStringAppend(Mutable, @"ু");
  CFStringAppend(Mutable, @"ূ");
  CFStringAppend(Mutable, @"ৃ");
  CFStringAppend(Mutable, @"ে");
  CFStringAppend(Mutable, @"ৈ");
  CFStringAppend(Mutable, @"ো");
  CFStringAppend(Mutable, @"ৌ");
  *(this + 7) = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  CFRelease(Mutable);
  v3 = CFStringCreateMutable(0, 0);
  CFStringAppend(v3, @"ক");
  CFStringAppend(v3, @"খ");
  CFStringAppend(v3, @"গ");
  CFStringAppend(v3, @"ঘ");
  CFStringAppend(v3, @"ঙ");
  CFStringAppend(v3, @"চ");
  CFStringAppend(v3, @"ছ");
  CFStringAppend(v3, @"জ");
  CFStringAppend(v3, @"ঝ");
  CFStringAppend(v3, @"ঞ");
  CFStringAppend(v3, @"ট");
  CFStringAppend(v3, @"ঠ");
  CFStringAppend(v3, @"ড");
  CFStringAppend(v3, @"ঢ");
  CFStringAppend(v3, @"ণ");
  CFStringAppend(v3, @"ত");
  CFStringAppend(v3, @"থ");
  CFStringAppend(v3, @"দ");
  CFStringAppend(v3, @"ধ");
  CFStringAppend(v3, @"ন");
  CFStringAppend(v3, @"প");
  CFStringAppend(v3, @"ফ");
  CFStringAppend(v3, @"ব");
  CFStringAppend(v3, @"ভ");
  CFStringAppend(v3, @"ম");
  CFStringAppend(v3, @"য");
  CFStringAppend(v3, @"র");
  CFStringAppend(v3, @"ল");
  CFStringAppend(v3, @"শ");
  CFStringAppend(v3, @"ষ");
  CFStringAppend(v3, @"স");
  CFStringAppend(v3, @"হ");
  CFStringAppend(v3, @"ৎ");
  CFStringAppend(v3, @"ড়");
  CFStringAppend(v3, @"ঢ়");
  CFStringAppend(v3, @"য়");
  *(this + 8) = CFCharacterSetCreateWithCharactersInString(0, v3);
  CFRelease(v3);
  v4 = CFStringCreateMutable(0, 0);
  CFStringAppend(v4, @"অ");
  CFStringAppend(v4, @"আ");
  CFStringAppend(v4, @"ই");
  CFStringAppend(v4, @"ঈ");
  CFStringAppend(v4, @"উ");
  CFStringAppend(v4, @"ঊ");
  CFStringAppend(v4, @"ঋ");
  CFStringAppend(v4, @"এ");
  CFStringAppend(v4, @"ঐ");
  CFStringAppend(v4, @"ও");
  CFStringAppend(v4, @"ঔ");
  *(this + 9) = CFCharacterSetCreateWithCharactersInString(0, v4);
  CFRelease(v4);
  MutableCopy = CFCharacterSetCreateMutableCopy(*MEMORY[0x277CBECE8], *(this + 9));
  CFCharacterSetUnion(MutableCopy, *(this + 8));
  CFCharacterSetUnion(MutableCopy, *(this + 7));
  *(this + 10) = CFCharacterSetCreateInvertedSet(0, MutableCopy);
  CFRelease(MutableCopy);
}

void TLBengaliOrthographyChecker::~TLBengaliOrthographyChecker(CFTypeRef *this)
{
  *this = &unk_287F865D0;
  CFRelease(this[7]);
  CFRelease(this[8]);
  CFRelease(this[9]);
  CFRelease(this[10]);
}

{
  TLBengaliOrthographyChecker::~TLBengaliOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLBengaliOrthographyChecker::isVowelSign(TLBengaliOrthographyChecker *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"া");
  CFStringAppend(Mutable, @"ি");
  CFStringAppend(Mutable, @"ী");
  CFStringAppend(Mutable, @"ু");
  CFStringAppend(Mutable, @"ূ");
  CFStringAppend(Mutable, @"ৃ");
  CFStringAppend(Mutable, @"ে");
  CFStringAppend(Mutable, @"ৈ");
  CFStringAppend(Mutable, @"ো");
  CFStringAppend(Mutable, @"ৌ");
  v4 = CFCharacterSetCreateWithCharactersInString(0, Mutable);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v4);
  CFRelease(Mutable);
  CFRelease(v4);
  v8.length = CFStringGetLength(a2);
  v8.location = 0;
  v6 = CFStringFindCharacterFromSet(a2, InvertedSet, v8, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v6;
}

BOOL TLBengaliOrthographyChecker::canNuktaFollowLetter(TLBengaliOrthographyChecker *this, const __CFString *a2)
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, @"ডঢয");
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v3);
  CFRelease(@"ডঢয");
  CFRelease(v3);
  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  v5 = CFStringFindCharacterFromSet(a2, InvertedSet, v7, 0, 0) == 0;
  CFRelease(InvertedSet);
  return v5;
}

BOOL TLBengaliOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"অ", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"এ", 0) == kCFCompareEqualTo || CFStringCompare(theString1, this[2], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[8];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL TLBengaliOrthographyChecker::checkSpelling(TLBengaliOrthographyChecker *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v34.location = 0;
  v34.length = Length;
  if (CFStringFindCharacterFromSet(theString, *(this + 7), v34, 0, &result))
  {
    v8 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      if (!result.location)
      {
        goto LABEL_59;
      }

      if (location != 0x7FFFFFFFFFFFFFFFLL && result.location == v8 + location)
      {
        v35.location = location;
        v35.length = v8;
        v10 = CFStringCreateWithSubstring(0, theString, v35);
        v11 = CFStringCreateWithSubstring(0, theString, result);
        if ((CFStringCompare(v10, *(this + 2), 0) || CFStringCompare(v11, *(this + 2), 0) == kCFCompareEqualTo) && (CFStringCompare(v11, *(this + 5), 0) || !TLBengaliOrthographyChecker::isVowelSign(0, v10)) && (CFStringCompare(v11, *(this + 6), 0) || !TLBengaliOrthographyChecker::isVowelSign(0, v10)) && (CFStringCompare(v11, *(this + 4), 0) || !TLBengaliOrthographyChecker::isVowelSign(0, v10)))
        {
          if (v10)
          {
            CFRelease(v10);
          }

          if (v11)
          {
            CFRelease(v11);
          }

LABEL_59:
          v29 = 0;
          v31 = @"illegal diacritic placement";
          if (!a4)
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }

      location = result.location;
      v8 = result.length;
      v36.location = result.length + result.location;
      v36.length = Length - (result.length + result.location);
    }

    while (CFStringFindCharacterFromSet(theString, *(this + 7), v36, 0, &result));
  }

  result = xmmword_26F4F5780;
  v12 = *(this + 2);
  v13 = theString;
  v14.location = 0;
  v14.length = Length;
  while (CFStringFindWithOptions(v13, v12, v14, 0, &result))
  {
    if (!result.location)
    {
      goto LABEL_53;
    }

    v37.location = result.location - 1;
    v37.length = 1;
    v15 = CFStringCreateWithSubstring(0, theString, v37);
    if (!TLBengaliOrthographyChecker::canNuktaFollowLetter(v15, v15))
    {
      if (v15)
      {
        CFRelease(v15);
      }

LABEL_53:
      v29 = 0;
      v31 = @"illegal nukta placement";
      if (!a4)
      {
        goto LABEL_72;
      }

LABEL_70:
      if (v29)
      {
        goto LABEL_72;
      }

      *a4 = v31;
      return v29;
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v14.location = result.length + result.location;
    v14.length = Length - (result.length + result.location);
    v12 = *(this + 2);
    v13 = theString;
  }

  result = xmmword_26F4F5780;
  v16 = *(this + 3);
  v17 = theString;
  v18.location = 0;
  v18.length = Length;
  while (1)
  {
    if (!CFStringFindWithOptions(v17, v16, v18, 0, &result))
    {
      v22 = CFCharacterSetCreateWithCharactersInString(0, @"ঁং্");
      v23 = CFStringGetLength(theString);
      v24 = *(this + 9);
      v25 = theString;
      v26.location = 0;
      v26.length = v23;
      while (1)
      {
        if (!CFStringFindCharacterFromSet(v25, v24, v26, 0, &result))
        {
          CFRelease(v22);
          v40.length = CFStringGetLength(theString);
          v40.location = 0;
          CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 10), v40, 0, &result);
          v29 = CharacterFromSet == 0;
          if (CharacterFromSet)
          {
            v30 = CFStringCreateWithSubstring(0, theString, result);
            v31 = CFStringCreateWithFormat(0, 0, @"invalid letter '%@'", v30);
            CFRelease(v30);
            if (a4)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v31 = 0;
            if (a4)
            {
              goto LABEL_70;
            }
          }

          goto LABEL_72;
        }

        if (result.location + 1 < v23)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
          if (CFCharacterSetIsCharacterMember(*(this + 7), CharacterAtIndex))
          {
            if (!CFCharacterSetIsCharacterMember(v22, CharacterAtIndex))
            {
              break;
            }
          }
        }

        v26.location = result.length + result.location;
        v24 = *(this + 9);
        v26.length = v23 - (result.length + result.location);
        v25 = theString;
      }

      CFRelease(v22);
      v29 = 0;
      v31 = @"illegal diacritic after vowel letter";
      if (!a4)
      {
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    if (!result.location)
    {
      break;
    }

    v38.location = result.location - 1;
    v38.length = 1;
    v19 = CFStringCreateWithSubstring(0, theString, v38);
    if (result.location + 1 >= Length)
    {
      v20 = 0;
      if (!TLBengaliOrthographyChecker::canViramaFollowLetter(this, v19))
      {
LABEL_61:
        if (v19)
        {
          CFRelease(v19);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        break;
      }

LABEL_37:
      v21 = 1;
      if (!v19)
      {
        goto LABEL_39;
      }

LABEL_38:
      CFRelease(v19);
      goto LABEL_39;
    }

    v39.length = 1;
    v39.location = result.location + 1;
    v20 = CFStringCreateWithSubstring(0, theString, v39);
    if (!TLBengaliOrthographyChecker::canViramaFollowLetter(this, v19))
    {
      goto LABEL_61;
    }

    if (!v20)
    {
      goto LABEL_37;
    }

    if (!TLDevanagariOrthographyChecker::canViramaPrecedeLetter(this, v20))
    {
      goto LABEL_61;
    }

    v21 = 0;
    if (v19)
    {
      goto LABEL_38;
    }

LABEL_39:
    if ((v21 & 1) == 0)
    {
      CFRelease(v20);
    }

    v18.location = result.length + result.location;
    v18.length = Length - (result.length + result.location);
    v16 = *(this + 3);
    v17 = theString;
  }

  v29 = 0;
  v31 = @"illegal virama placement";
  if (a4)
  {
    goto LABEL_70;
  }

LABEL_72:
  if (!a4 && v31)
  {
    CFRelease(v31);
  }

  return v29;
}

void sub_26F4E30F0(_Unwind_Exception *a1, int a2)
{
  v4 = v2;
  MEMORY[0x274392B00](v4, 0x80C40803F642BLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x26F4E30E0);
  }

  _Unwind_Resume(a1);
}

void TL::StringMap::~StringMap(TL::StringMap *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 1), *(v2 + 8));
    MEMORY[0x274392B00](v2, 0x1020C4062D53EE8);
  }

  if (*this)
  {
    StringMapFile::~StringMapFile(*this);
    MEMORY[0x274392B00]();
  }
}

std::string *TL::StringMap::add(uint64_t a1, void **a2, const std::string *a3)
{
  result = *(a1 + 8);
  if (result)
  {
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(result, a2);
    return std::string::operator=((v5 + 56), a3);
  }

  return result;
}

void TL::StringMap::get(uint64_t a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    StringMapBuilder::get(v4, a2, a3);
  }

  else
  {
    StringMapFile::get(*a1, a2, a3);
  }
}

void StringMapBuilder::get(uint64_t a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v5)
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else if (*(v5 + 79) < 0)
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 64);

    std::string::__init_copy_ctor_external(a3, v7, v8);
  }

  else
  {
    v6 = *(v5 + 56);
    a3->__r_.__value_.__r.__words[2] = *(v5 + 72);
    *&a3->__r_.__value_.__l.__data_ = v6;
  }
}

_BYTE *StringMapFile::get@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (CFBurstTrieFindUTF8String())
  {
    v8 = a1[1];
  }

  else
  {
    v8 = "";
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v8);
}

void *TL::StringMap::write(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return StringMapBuilder::write(result, a2);
  }

  return result;
}

uint64_t StringMapBuilder::write(void *a1, uint64_t a2)
{
  CFBurstTrieCreate();
  v30[0] = 0;
  v30[1] = 0;
  v28 = 0;
  v29 = v30;
  __p = 0;
  v27 = 0;
  LOBYTE(__buf) = 0;
  std::vector<unsigned char>::push_back[abi:ne200100](&__p, &__buf);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v29, v5 + 4);
      if (v30 != v7)
      {
        v8 = *(v7 + 56);
      }

      if ((*(v5 + 55) & 0x8000000000000000) != 0)
      {
        v10 = v5[4];
        v9 = v5[5];
      }

      CFBurstTrieAddUTF8String();
      v11 = *(v5 + 79);
      if (v11 < 0)
      {
        v12 = v5[7];
        v11 = v5[8];
      }

      else
      {
        v12 = v5 + 7;
      }

      v13 = __CFADD__(v11, 1);
      v14 = v11 + 1;
      if (!v13)
      {
        v15 = &v12[v14];
        do
        {
          LOBYTE(__buf) = *v12;
          std::vector<unsigned char>::push_back[abi:ne200100](&__p, &__buf);
          ++v12;
        }

        while (v12 != v15);
      }

      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != v4);
  }

  __buf = 0x1F710C3D2;
  if (*(a2 + 23) >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  v20 = fopen(v19, "wb");
  v21 = fileno(v20);
  write(v21, &__buf, 0x18uLL);
  v22 = lseek(v21, 0, 1);
  CFBurstTrieSerializeWithFileDescriptor();
  v25 = lseek(v21, 0, 1) - v22;
  write(v21, __p, v27 - __p);
  pwrite(v21, &__buf, 0x18uLL, 0);
  CFBurstTrieRelease();
  fclose(v20);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&v29, v30[0]);
  return 1;
}

void sub_26F4E354C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, char *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t *StringMapFile::StringMapFile(uint64_t *a1, char *a2)
{
  *a1 = 0;
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  TL::ReadOnlyFile<char>::open(v3, "r", 1, a1 + 2);
  v4 = *a1[2];
  if (*v4 != -149896238)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "string map file is invalid");
    TL::ResourceCreationException::ResourceCreationException(exception, &v8);
  }

  if (v4[1] != 1)
  {
    v7 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, "string map file version is not supported");
    TL::ResourceCreationException::ResourceCreationException(v7, &v8);
  }

  a1[1] = v4 + v4[2] + 24;
  *a1 = CFBurstTrieCreateFromMapBytes();
  return a1;
}

void sub_26F4E36D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = *(v15 + 24);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void TL::ReadOnlyFile<char>::open(char *__s@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = ___ZN2TL12ReadOnlyFileIcE4openEPKcS3_b_block_invoke;
  v10[3] = &unk_279DD8FC8;
  v10[5] = __s;
  v10[6] = a2;
  v11 = a3;
  v10[4] = &v14;
  nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getResource(__p, v10, a4);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(v15 + 63);
  if (v8 < 0)
  {
    v8 = v15[6];
  }

  if (v8)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    TL::ResourceCreationException::ResourceCreationException(exception, (v15 + 5));
  }

  _Block_object_dispose(&v14, 8);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }
}

void sub_26F4E3894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  v36 = *(v34 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Block_object_dispose(&a24, 8);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getResource(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3802000000;
  v12 = __Block_byref_object_copy__4;
  v14 = 0;
  v15 = 0;
  v13 = __Block_byref_object_dispose__5;
  Queue = nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___ZN3nlp24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN2TL12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPSA_vE_block_invoke;
  v8[3] = &unk_279DD8FF0;
  v8[5] = &v9;
  v8[6] = a1;
  v8[4] = a2;
  dispatch_sync(Queue, v8);
  v7 = v10[6];
  *a3 = v10[5];
  a3[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v9, 8);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_26F4E3A84(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x274392B00](v5, 0x1012C403EBA5055);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    v8 = (*(*v7 + 16))(v7);
    std::string::__assign_external((*(*(v2 + 32) + 8) + 40), v8);
    __cxa_end_catch();
    JUMPOUT(0x26F4E3A70);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__5(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue()
{
  {
    nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue();
  }

  {
    nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue();
  }

  return nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue(void)::queue;
}

void ___ZN3nlp24SingletonResourceManagerINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN2TL12ReadOnlyFileIcEEE11getResourceERKS7_U13block_pointerFPSA_vE_block_invoke(uint64_t a1)
{
  Cache = nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getCache();
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::find<std::string>(Cache, *(a1 + 48));
  if (v3)
  {
    v4 = v3;
    v5 = v3[6];
    if (v5 && (v5 = std::__shared_weak_count::lock(v5)) != 0)
    {
      v6 = v4[5];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 48);
    *(v7 + 40) = v6;
    *(v7 + 48) = v5;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v9 = *(*(a1 + 40) + 8);
  v11 = *(v9 + 40);
  v10 = v9 + 40;
  if (!v11)
  {
    v12 = (*(*(a1 + 32) + 16))();
    std::shared_ptr<TL::ReadOnlyFile<char>>::reset[abi:ne200100]<TL::ReadOnlyFile<char>,0>(v10, v12);
  }
}

void sub_26F4E3C90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getCache()
{
  {
    nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getCache();
  }

  return &nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getCache(void)::cache;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::shared_ptr<TL::ReadOnlyFile<char>>::shared_ptr[abi:ne200100]<TL::ReadOnlyFile<char>,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26F4E43C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TL::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<TL::ReadOnlyFile<char>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    OnlyFile = TL::ReadOnlyFile<char>::~ReadOnlyFile(v2);
    MEMORY[0x274392B00](OnlyFile, 0x1012C403EBA5055);
  }

  return a1;
}

void std::__shared_ptr_pointer<TL::ReadOnlyFile<char> *,std::shared_ptr<TL::ReadOnlyFile<char>>::__shared_ptr_default_delete<TL::ReadOnlyFile<char>,TL::ReadOnlyFile<char>>,std::allocator<TL::ReadOnlyFile<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x274392B00);
}

uint64_t std::__shared_ptr_pointer<TL::ReadOnlyFile<char> *,std::shared_ptr<TL::ReadOnlyFile<char>>::__shared_ptr_default_delete<TL::ReadOnlyFile<char>,TL::ReadOnlyFile<char>>,std::allocator<TL::ReadOnlyFile<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    TL::ReadOnlyFile<char>::~ReadOnlyFile(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TL::ReadOnlyFile<char> *,std::shared_ptr<TL::ReadOnlyFile<char>>::__shared_ptr_default_delete<TL::ReadOnlyFile<char>,TL::ReadOnlyFile<char>>,std::allocator<TL::ReadOnlyFile<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t TL::ReadOnlyFile<char>::~ReadOnlyFile(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
      if (*(a1 + 64) != 2)
      {
        goto LABEL_10;
      }

      v3 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      v4 = open(v3, 2);
      v5 = v4;
      v2 = *a1;
      if ((v4 & 0x80000000) == 0)
      {
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x274392AE0](v2, 0x1000C8077774924);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_26F4E4818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<TL::ReadOnlyFile<char>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<TL::ReadOnlyFile<char>>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<TL::ReadOnlyFile<char>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t TL::ReadOnlyFile<char>::ReadOnlyFile(uint64_t a1, char *a2, char *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), a2);
  std::string::basic_string[abi:ne200100]<0>((a1 + 40), a3);
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  if (*a3 != 114)
  {
    goto LABEL_15;
  }

  if (a3[1])
  {
    if (a3[1] == 43 && !a3[2])
    {
      *(a1 + 64) = 514;
      v8 = open(a2, 514, 384);
      goto LABEL_7;
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x20uLL);
    TL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 1);
    goto LABEL_18;
  }

  *(a1 + 64) = 0;
  v8 = open(a2, 0);
LABEL_7:
  v9 = v8;
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    TL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 2);
    goto LABEL_18;
  }

  if (fstat(v8, &v16) < 0)
  {
    close(v9);
    exception = __cxa_allocate_exception(0x20uLL);
    TL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(exception, 3);
LABEL_18:
  }

  st_size = v16.st_size;
  *(a1 + 8) = v16.st_size;
  v17 = 0;
  v18 = st_size;
  fcntl(v9, 44, &v17);
  if (!a4)
  {
    v12 = *(a1 + 8);
    operator new[]();
  }

  if (*(a1 + 8))
  {
    v11 = mmap(0, *(a1 + 8), *(a1 + 64) & 2 | 1u, 1, v9, 0);
    if (v11 == -1)
    {
      close(v9);
      v15 = __cxa_allocate_exception(0x20uLL);
      TL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(v15, 4);
    }

    *a1 = v11;
  }

  close(v9);
  return a1;
}

void sub_26F4E4E18(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

void *TL::ReadOnlyFileCreationException::ReadOnlyFileCreationException(void *a1, int a2)
{
  if ((a2 - 1) <= 4)
  {
    v3 = off_279DD9010[a2 - 1];
  }

  std::operator+<char>();
  TL::ResourceCreationException::ResourceCreationException(a1, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  *a1 = &unk_287F866B8;
  return a1;
}

void sub_26F4E4F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TL::ResourceCreationException::ResourceCreationException(void *a1, __int128 *a2)
{
  *a1 = &unk_287F866E0;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void TL::ReadOnlyFileCreationException::~ReadOnlyFileCreationException(std::exception *this)
{
  TL::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x274392B00);
}

uint64_t TL::ResourceCreationException::what(TL::ResourceCreationException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void TL::ResourceCreationException::~ResourceCreationException(std::exception *this)
{
  TL::ResourceCreationException::~ResourceCreationException(this);

  JUMPOUT(0x274392B00);
}

{
  this->__vftable = &unk_287F866E0;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void StringMapFile::~StringMapFile(StringMapFile *this)
{
  if (*this)
  {
    CFBurstTrieRelease();
  }

  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void TLCompositeTransliteratorSeq2Seq::TLCompositeTransliteratorSeq2Seq(TLCompositeTransliteratorSeq2Seq *this, const __CFLocale *a2, const __CFURL *a3)
{
  *(this + 1) = 0;
  v6 = (this + 8);
  *this = 0;
  *(this + 2) = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFLocaleCreate(*MEMORY[0x277CBECE8], @"en_US");
  nlp::CFScopedPtr<__CFLocale const*>::reset(this, v8);
  Value = CFLocaleGetValue(a2, *MEMORY[0x277CBEED0]);
  MutableCopy = CFStringCreateMutableCopy(v7, 0, Value);
  v11 = MutableCopy;
  if (MutableCopy)
  {
    v12 = @"_IN";
    if (_os_feature_enabled_impl() && CFStringsAreEqual(Value, @"ar"))
    {
      v12 = @"_AR";
    }

    CFStringAppend(v11, v12);
    v13 = CFLocaleCreate(v7, v11);
    nlp::CFScopedPtr<__CFLocale const*>::reset(v6, v13);
  }

  v14 = TLCompositeTransliteratorSeq2Seq::loadSeq2SeqModel(MutableCopy, a2, a3);
  v15 = *(this + 2);
  *(this + 2) = v14;

  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_26F4E55EC(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v1, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

id TLCompositeTransliteratorSeq2Seq::loadSeq2SeqModel(TLCompositeTransliteratorSeq2Seq *this, CFLocaleRef locale, const __CFURL *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBEED0];
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  v7 = Value;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3812000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = &unk_26F4F96F1;
  cf = 0;
  if (a3)
  {
    v28.__r_.__value_.__r.__words[0] = 0;
    if (_os_feature_enabled_impl())
    {
      if (CFStringsAreEqual(v7, @"ar"))
      {
        v8 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], a3, @"ar_EMT_package", 1u);
LABEL_10:
        v9 = v8;
        v28.__r_.__value_.__r.__words[0] = v8;
        goto LABEL_11;
      }

      if (CFStringsAreEqual(v7, @"ur"))
      {
LABEL_9:
        v8 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], a3, @"ur_EMT_package", 1u);
        goto LABEL_10;
      }

      BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.TransliterationTests");
      v24 = CFBundleCopyResourceURL(BundleWithIdentifier, @"mul.translit", 0, 0);
      __p.__r_.__value_.__r.__words[0] = v24;
      v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v24, @"mul_EMT_package", 1u);
      v28.__r_.__value_.__r.__words[0] = v9;
      if (v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (CFStringsAreEqual(v7, @"ur"))
      {
        goto LABEL_9;
      }

      v23 = CFBundleGetBundleWithIdentifier(@"com.apple.TransliterationTests");
      v24 = CFBundleCopyResourceURL(v23, @"mul.translit", 0, 0);
      __p.__r_.__value_.__r.__words[0] = v24;
      v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v24, @"mul_EMT_package", 1u);
      v28.__r_.__value_.__r.__words[0] = v9;
      if (v24)
      {
LABEL_30:
        CFRelease(v24);
      }
    }

LABEL_11:
    getFileSystemRepresentationFromCFURL(v9);
  }

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = ___ZN32TLCompositeTransliteratorSeq2Seq16loadSeq2SeqModelEPK10__CFLocalePK7__CFURL_block_invoke;
  v32 = &unk_279DD9040;
  v33 = &v36;
  v34 = Value;
  LDEnumerateAssetDataItems();
  v10 = v37[6];
  if (v10)
  {
    getUTF8StringFromCFString(v10, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_p];
    v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v12];
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D07210]);
      v43 = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      v16 = [v14 initWithModelURLs:v15 task:@"siri" skipNonFinalToCatchup:0];

      v17 = dispatch_queue_create("callbackQueue", 0);
      [v16 setCallbackQueue:v17];
    }

    else
    {
      v20 = CFLocaleGetValue(locale, v5);
      v17 = _nlpDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        std::string::basic_string[abi:ne200100]<0>(buf, "");
        applesauce::CF::convert_or<std::string>(v20, buf, &v28);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v28;
        }

        else
        {
          v27 = v28.__r_.__value_.__r.__words[0];
        }

        *v46 = 136315138;
        v47 = v27;
        _os_log_error_impl(&dword_26F4DB000, v17, OS_LOG_TYPE_ERROR, "Failed to load Seq2Seq EMT package for: %s", v46, 0xCu);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (v45 < 0)
        {
          operator delete(*buf);
        }
      }

      v16 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = CFLocaleGetValue(locale, v5);
    v19 = _nlpDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "");
      applesauce::CF::convert_or<std::string>(v18, &v28, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_26F4DB000, v19, OS_LOG_TYPE_ERROR, "Failed to load Seq2Seq EMT package for: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    v16 = 0;
  }

  _Block_object_dispose(&v36, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

void sub_26F4E5C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN32TLCompositeTransliteratorSeq2Seq16loadSeq2SeqModelEPK10__CFLocalePK7__CFURL_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, const __CFString *a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v11 = PathComponent;
    if (CFStringsAreEqual(PathComponent, @"EMT_package"))
    {
      v12 = _os_feature_enabled_impl();
      v13 = *(a1 + 40);
      if (v12)
      {
        if ((!CFStringsAreEqual(v13, @"ar") || !CFStringsAreEqual(a5, @"Transliteration")) && (!CFStringsAreEqual(*(a1 + 40), @"ur") || !CFStringsAreEqual(a5, @"Transliteration")) && !CFStringsAreEqual(a5, @"MultilingualTransliteration"))
        {
          goto LABEL_17;
        }
      }

      else if ((!CFStringsAreEqual(v13, @"ur") || !CFStringsAreEqual(a5, @"Transliteration")) && !CFStringsAreEqual(a5, @"MultilingualTransliteration"))
      {
        goto LABEL_17;
      }

      v14 = *(*(a1 + 32) + 8);
      v15 = CFURLCopyPath(url);
      nlp::CFScopedPtr<__CFString const*>::reset((v14 + 48), v15);
      *a6 = 1;
    }

LABEL_17:
    CFRelease(v11);
  }
}

void sub_26F4E5F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void TLCompositeTransliteratorSeq2Seq::seq2SeqCandidatesForInput(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  TLOSSignPostseq2SeqCandidatesForInput::TLOSSignPostseq2SeqCandidatesForInput(&v60);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1[2])
  {
    if (*(a2 + 23) < 0)
    {
      if (!*(a2 + 8))
      {
        goto LABEL_27;
      }

      v6 = *a2;
    }

    else
    {
      v6 = a2;
      if (!*(a2 + 23))
      {
        goto LABEL_27;
      }
    }

    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v38 = [MEMORY[0x277CCAB68] string];
    v7 = [v39 length];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = ___ZNK32TLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v58[3] = &unk_279DD9068;
    v8 = v38;
    v59 = v8;
    [v39 enumerateSubstringsInRange:0 options:v7 usingBlock:{2, v58}];
    CFStringTrimWhitespace(v8);
    v9 = dispatch_semaphore_create(0);
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__53;
    v56 = __Block_byref_object_dispose__54;
    v57 = 0;
    v10 = *a1;
    v13 = a1 + 1;
    v12 = a1[1];
    v11 = v13[1];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = ___ZNK32TLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_55;
    v49[3] = &unk_279DD9090;
    v51 = &v52;
    v14 = v9;
    v50 = v14;
    v36 = v8;
    v37 = v14;
    [v11 translateString:v8 from:v10 to:v12 completion:v49];
    v15 = dispatch_time(0, 60000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = _nlpDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        TLCompositeTransliteratorSeq2Seq::seq2SeqCandidatesForInput((a2 + 23), a2, v16);
      }
    }

    for (i = 0; ; ++i)
    {
      v18 = [v53[5] count];
      v19 = 5;
      if (v18 < 5)
      {
        v19 = v18;
      }

      if (i >= v19)
      {
        break;
      }

      v20 = [MEMORY[0x277CBEB18] array];
      v21 = [v53[5] objectAtIndexedSubscript:i];
      v22 = [v21 tokens];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v61 count:16];
      if (v24)
      {
        v25 = *v46;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = [*(*(&v45 + 1) + 8 * j) text];
            [v20 addObject:v27];
          }

          v24 = [v23 countByEnumeratingWithState:&v45 objects:v61 count:16];
        }

        while (v24);
      }

      v28 = [v20 componentsJoinedByString:&stru_287F86938];
      v29 = v28;
      v30 = [v28 UTF8String];
      v43 = 0xFFF0000000000000;
      v44 = v30;
      v31 = [v53[5] objectAtIndexedSubscript:i];
      [v31 score];
      v42 = v32;
      v41 = 2;
      v40 = 0;
      v33 = a3[1];
      if (v33 >= a3[2])
      {
        v34 = std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string const&,char const*,double,double,TLTransliteratorCandidateType,BOOL>(a3, a2, &v44, &v43, &v42, &v41, &v40);
      }

      else
      {
        std::construct_at[abi:ne200100]<TLCompositeTransliteratorCandidate,std::string const&,char const*,double,double,TLTransliteratorCandidateType,BOOL,TLCompositeTransliteratorCandidate*>(a3[1], a2, &v44, &v43, &v42, &v41, &v40);
        v34 = v33 + 80;
      }

      a3[1] = v34;
    }

    _Block_object_dispose(&v52, 8);
  }

LABEL_27:
  TLOSSignPostseq2SeqCandidatesForInput::~TLOSSignPostseq2SeqCandidatesForInput(&v60);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_26F4E63B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34)
{
  _Block_object_dispose(&a34, 8);

  *(v35 + 48) = v34;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&a34);
  TLOSSignPostseq2SeqCandidatesForInput::~TLOSSignPostseq2SeqCandidatesForInput((v36 - 256));
  _Unwind_Resume(a1);
}

void ___ZNK32TLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) appendString:?];
  [*(a1 + 32) appendString:@" "];
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZNK32TLCompositeTransliteratorSeq2Seq25seq2SeqCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_55(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void TLOSSignPostseq2SeqCandidatesForInput::TLOSSignPostseq2SeqCandidatesForInput(TLOSSignPostseq2SeqCandidatesForInput *this)
{
  v2 = _nlpSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, this);

  *this = v3;
  v4 = _nlpSignpostLog();
  v5 = v4;
  v6 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "seq2SeqCandidatesForInput", &unk_26F4F80C2, v7, 2u);
  }
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string const&,char const*,double,double,TLTransliteratorCandidateType,BOOL>(uint64_t *a1, uint64_t a2, char **a3, double *a4, double *a5, void *a6, unsigned __int8 *a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x333333333333333)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  v14[4] = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v11);
  }

  v14[0] = 0;
  v14[1] = 80 * v7;
  v14[3] = 0;
  std::construct_at[abi:ne200100]<TLCompositeTransliteratorCandidate,std::string const&,char const*,double,double,TLTransliteratorCandidateType,BOOL,TLCompositeTransliteratorCandidate*>(80 * v7, a2, a3, a4, a5, a6, a7);
  v14[2] = 80 * v7 + 80;
  std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, v14);
  v12 = a1[1];
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(v14);
  return v12;
}

void sub_26F4E67A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:ne200100]<TLCompositeTransliteratorCandidate,std::string const&,char const*,double,double,TLTransliteratorCandidateType,BOOL,TLCompositeTransliteratorCandidate*>(uint64_t a1, uint64_t a2, char **a3, double *a4, double *a5, void *a6, unsigned __int8 *a7)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(a1, a2, __p, *a6, *a7, *a4, *a5);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_26F4E6840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TLOSSignPostseq2SeqCandidatesForInput::~TLOSSignPostseq2SeqCandidatesForInput(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = v2;
  v4 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v3, OS_SIGNPOST_INTERVAL_END, v4, "seq2SeqCandidatesForInput", &unk_26F4F80C2, v5, 2u);
  }
}

void TLArabicOrthographyChecker::TLArabicOrthographyChecker(TLArabicOrthographyChecker *this)
{
  *this = &unk_287F86708;
  *(this + 8) = 0u;
  v2 = (this + 8);
  *(this + 24) = 0u;
  v3 = (this + 24);
  Mutable = CFStringCreateMutable(0, 0);
  v5 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"ء");
    CFStringAppend(v5, @"آ");
    CFStringAppend(v5, @"أ");
    CFStringAppend(v5, @"ؤ");
    CFStringAppend(v5, @"إ");
    CFStringAppend(v5, @"ئ");
    CFStringAppend(v5, @"ا");
    CFStringAppend(v5, @"ب");
    CFStringAppend(v5, @"ة");
    CFStringAppend(v5, @"ت");
    CFStringAppend(v5, @"ث");
    CFStringAppend(v5, @"ج");
    CFStringAppend(v5, @"ح");
    CFStringAppend(v5, @"خ");
    CFStringAppend(v5, @"د");
    CFStringAppend(v5, @"ذ");
    CFStringAppend(v5, @"ر");
    CFStringAppend(v5, @"ز");
    CFStringAppend(v5, @"س");
    CFStringAppend(v5, @"ش");
    CFStringAppend(v5, @"ص");
    CFStringAppend(v5, @"ض");
    CFStringAppend(v5, @"ط");
    CFStringAppend(v5, @"ظ");
    CFStringAppend(v5, @"ع");
    CFStringAppend(v5, @"غ");
    CFStringAppend(v5, @"ف");
    CFStringAppend(v5, @"ق");
    CFStringAppend(v5, @"ك");
    CFStringAppend(v5, @"ل");
    CFStringAppend(v5, @"م");
    CFStringAppend(v5, @"ن");
    CFStringAppend(v5, @"ه");
    CFStringAppend(v5, @"و");
    CFStringAppend(v5, @"ى");
    CFStringAppend(v5, @"ي");
    CFStringAppend(v5, @"ً");
    CFStringAppend(v5, @"ٌ");
    CFStringAppend(v5, @"ٍ");
    CFStringAppend(v5, @"َ");
    CFStringAppend(v5, @"ُ");
    CFStringAppend(v5, @"ِ");
    CFStringAppend(v5, @"ّ");
    CFStringAppend(v5, @"ْ");
    CFStringAppend(v5, @"٠");
    CFStringAppend(v5, @"١");
    CFStringAppend(v5, @"٢");
    CFStringAppend(v5, @"٣");
    CFStringAppend(v5, @"٤");
    CFStringAppend(v5, @"٥");
    CFStringAppend(v5, @"٦");
    CFStringAppend(v5, @"٧");
    CFStringAppend(v5, @"٨");
    CFStringAppend(v5, @"٩");
    CFStringAppend(v5, @" ");
  }

  v6 = CFCharacterSetCreateWithCharactersInString(0, v5);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, InvertedSet);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, @"ً");
    CFStringAppend(v9, @"ٌ");
    CFStringAppend(v9, @"ٍ");
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, @"َ");
    CFStringAppend(v12, @"ُ");
    CFStringAppend(v12, @"ِ");
    CFStringAppend(v12, @"ّ");
    CFStringAppend(v12, @"ْ");
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 2, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"َ");
    CFStringAppend(v15, @"ُ");
    CFStringAppend(v15, @"ِ");
    CFStringAppend(v15, @"ْ");
    CFStringAppend(v15, @"ً");
    CFStringAppend(v15, @"ٌ");
    CFStringAppend(v15, @"ٍ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 4, v16);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_26F4E6EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  nlp::CFScopedPtr<__CFString *>::reset(va1, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va2, 0);
  nlp::CFScopedPtr<__CFString *>::reset(va3, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v3 + 32), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v5, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v3 + 16), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, 0);
  _Unwind_Resume(a1);
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

void TLArabicOrthographyChecker::~TLArabicOrthographyChecker(const void **this)
{
  *this = &unk_287F86708;
  v2 = this + 1;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 4, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 2, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLArabicOrthographyChecker::~TLArabicOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLArabicOrthographyChecker::allValidArabicLetters(CFCharacterSetRef *this, CFStringRef theString)
{
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, this[1], v5, 0, 0) == 0;
}

uint64_t TLArabicOrthographyChecker::alefHasDiacritics(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length < 1)
  {
    return 0;
  }

  v5 = Length;
  v6 = 0;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v6++);
    if (CharacterAtIndex == 1575 && v6 < v5)
    {
      v8 = CFStringGetCharacterAtIndex(theString, v6);
      if (CFCharacterSetIsCharacterMember(this[2], v8))
      {
        break;
      }
    }

    if (v5 == v6)
    {
      return 0;
    }
  }

  return 1;
}

BOOL TLArabicOrthographyChecker::invalidConsecutiveDiacritics(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v14.location = 0;
  v14.length = Length;
  if (!CFStringFindCharacterFromSet(theString, this[4], v14, 0, &result))
  {
    return 0;
  }

  v5 = 0;
  v6.location = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    location = result.location;
    v8 = result.location == 0;
    if (!result.location)
    {
      break;
    }

    if (v6.location != 0x7FFFFFFFFFFFFFFFLL && result.location == v5 + v6.location)
    {
      v6.length = v5;
      v10 = CFStringCreateWithSubstring(0, theString, v6);
      v11 = CFStringCreateWithSubstring(0, theString, result);
      if (v11)
      {
        CFRelease(v11);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      return 1;
    }

    v5 = result.length;
    v15.location = result.length + result.location;
    v15.length = Length - (result.length + result.location);
    CharacterFromSet = CFStringFindCharacterFromSet(theString, this[4], v15, 0, &result);
    v6.location = location;
  }

  while (CharacterFromSet);
  return v8;
}

void sub_26F4E729C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLArabicOrthographyChecker::invalidTMarboutaPosition(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = CFStringCreateWithCString(0, "ة", 0x8000100u);
  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  if (v5 <= 1 || (CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v5 - 2), v9 = CFStringGetCharacterAtIndex(theString, v5 - 1), !CFCharacterSetIsCharacterMember(v7, CharacterAtIndex)) || !CFCharacterSetIsCharacterMember(this[4], v9))
  {
    v13.location = 0;
    v13.length = v5 - 1;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, v7, v13, 0, 0);
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    v14.location = 0;
    v14.length = v5 - 2;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, v7, v14, 0, 0);
LABEL_9:
    v10 = CharacterFromSet != 0;
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = 0;
  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

void sub_26F4E740C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLArabicOrthographyChecker::alefMaksuraIncorrectPosition(TLArabicOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    return 0;
  }

  v4 = Length;
  v5 = CFStringCreateWithCString(0, "ى", 0x8000100u);
  v6 = CFCharacterSetCreateWithCharactersInString(0, v5);
  v9.length = v4 - 1;
  v9.location = 0;
  v7 = CFStringFindCharacterFromSet(theString, v6, v9, 0, 0) != 0;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

void sub_26F4E7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLArabicOrthographyChecker::tanweenIncorrectPosition(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length < 2)
  {
    return 0;
  }

  v6.location = 0;
  v6.length = Length - 2;
  return CFStringFindCharacterFromSet(theString, this[3], v6, 0, 0) != 0;
}

uint64_t TLArabicOrthographyChecker::checkSpelling(CFCharacterSetRef *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  v9.length = CFStringGetLength(theString);
  v9.location = 0;
  CharacterFromSet = CFStringFindCharacterFromSet(theString, this[1], v9, 0, 0);
  if (TLArabicOrthographyChecker::invalidTMarboutaPosition(this, theString))
  {
    return 0;
  }

  if (TLArabicOrthographyChecker::invalidConsecutiveDiacritics(this, theString))
  {
    return 0;
  }

  HasDiacritics = TLArabicOrthographyChecker::alefHasDiacritics(this, theString);
  if ((HasDiacritics & 1) != 0 || TLArabicOrthographyChecker::alefMaksuraIncorrectPosition(HasDiacritics, theString))
  {
    return 0;
  }

  else
  {
    return (CharacterFromSet == 0) & ~TLArabicOrthographyChecker::tanweenIncorrectPosition(this, theString);
  }
}

void TLTamilOrthographyChecker::TLTamilOrthographyChecker(TLTamilOrthographyChecker *this)
{
  *(this + 40) = 0u;
  v2 = (this + 40);
  *(this + 56) = 0u;
  v3 = (this + 56);
  *(this + 9) = 0;
  v4 = (this + 72);
  *this = &unk_287F86748;
  *(this + 1) = @"‍";
  *(this + 3) = @"ஃ";
  *(this + 4) = @"்";
  *(this + 2) = @"ஂ";
  Mutable = CFStringCreateMutable(0, 0);
  v6 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"அ");
    CFStringAppend(v6, @"ஆ");
    CFStringAppend(v6, @"இ");
    CFStringAppend(v6, @"ஈ");
    CFStringAppend(v6, @"உ");
    CFStringAppend(v6, @"ஊ");
    CFStringAppend(v6, @"எ");
    CFStringAppend(v6, @"ஏ");
    CFStringAppend(v6, @"ஐ");
    CFStringAppend(v6, @"ஒ");
    CFStringAppend(v6, @"ஓ");
    CFStringAppend(v6, @"ஔ");
  }

  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, v7);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, @"ா");
    CFStringAppend(v9, @"ி");
    CFStringAppend(v9, @"ீ");
    CFStringAppend(v9, @"ு");
    CFStringAppend(v9, @"ூ");
    CFStringAppend(v9, @"ெ");
    CFStringAppend(v9, @"ே");
    CFStringAppend(v9, @"ை");
    CFStringAppend(v9, @"ொ");
    CFStringAppend(v9, @"ோ");
    CFStringAppend(v9, @"ௌ");
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 6, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, *(this + 4));
    CFStringAppend(v12, *(this + 3));
    CFStringAppend(v12, *(this + 2));
    CFStringAppend(v12, v9);
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"க");
    CFStringAppend(v15, @"ங");
    CFStringAppend(v15, @"ச");
    CFStringAppend(v15, @"ஜ");
    CFStringAppend(v15, @"ஞ");
    CFStringAppend(v15, @"ட");
    CFStringAppend(v15, @"ண");
    CFStringAppend(v15, @"த");
    CFStringAppend(v15, @"ந");
    CFStringAppend(v15, @"ன");
    CFStringAppend(v15, @"ப");
    CFStringAppend(v15, @"ம");
    CFStringAppend(v15, @"ய");
    CFStringAppend(v15, @"ர");
    CFStringAppend(v15, @"ற");
    CFStringAppend(v15, @"ல");
    CFStringAppend(v15, @"ள");
    CFStringAppend(v15, @"ழ");
    CFStringAppend(v15, @"வ");
    CFStringAppend(v15, @"ஶ");
    CFStringAppend(v15, @"ஷ");
    CFStringAppend(v15, @"ஸ");
    CFStringAppend(v15, @"ஹ");
    CFStringAppend(v15, @"ௐ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, v16);
  v17 = CFStringCreateMutable(0, 0);
  v18 = v17;
  if (v17)
  {
    CFStringAppend(v17, v12);
    CFStringAppend(v18, v6);
    CFStringAppend(v18, v15);
  }

  v19 = CFCharacterSetCreateWithCharactersInString(0, v18);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v19);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, InvertedSet);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_26F4E7B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 64), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 48), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v15, 0);
  _Unwind_Resume(a1);
}

void TLTamilOrthographyChecker::~TLTamilOrthographyChecker(const void **this)
{
  *this = &unk_287F86748;
  v2 = this + 5;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 6, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLTamilOrthographyChecker::~TLTamilOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLTamilOrthographyChecker::isVowelSign(TLTamilOrthographyChecker *this, CFStringRef theString)
{
  v3 = *(this + 6);
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, v3, v5, 0, 0) != 0;
}

BOOL TLTamilOrthographyChecker::canViramaFollowLetter(TLTamilOrthographyChecker *this, CFStringRef theString)
{
  v2 = *(this + 8);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v2, CharacterAtIndex) != 0;
}

BOOL TLTamilOrthographyChecker::canViramaPrecedeLetter(TLTamilOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 8);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 1), 0) == kCFCompareEqualTo || CFStringCompare(theString, *(this + 3), 0) == kCFCompareEqualTo;
}

uint64_t TLTamilOrthographyChecker::isInvalidConsecutiveDiacritics(TLTamilOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v18.location = 0;
  v18.length = Length;
  if (!CFStringFindCharacterFromSet(theString, *(this + 7), v18, 0, &result))
  {
    v15 = 0;
    return v15 & 1;
  }

  v5 = 0;
  v6 = 1;
  location = 0x7FFFFFFFFFFFFFFFLL;
  while (result.location)
  {
    if (location == 0x7FFFFFFFFFFFFFFFLL || result.location != v5 + location)
    {
      goto LABEL_24;
    }

    v19.location = location;
    v19.length = v5;
    v8 = CFStringCreateWithSubstring(0, theString, v19);
    v9 = CFStringCreateWithSubstring(0, theString, result);
    if (CFStringCompare(v9, *(this + 2), 0) == kCFCompareEqualTo && (v13 = *(this + 6), v21.length = CFStringGetLength(v8), v21.location = 0, CFStringFindCharacterFromSet(v8, v13, v21, 0, 0)) || CFStringCompare(v9, *(this + 3), 0) == kCFCompareEqualTo && CFStringCompare(v8, *(this + 4), 0) == kCFCompareEqualTo || CFStringCompare(v9, *(this + 3), 0) == kCFCompareEqualTo && (v14 = *(this + 6), v22.length = CFStringGetLength(v8), v22.location = 0, CFStringFindCharacterFromSet(v8, v14, v22, 0, 0)))
    {
      v10 = 1;
      if (!v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      CFRelease(v9);
      goto LABEL_21;
    }

    v10 = 0;
    v6 = 0;
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v8)
    {
      CFRelease(v8);
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    location = result.location;
    v5 = result.length;
    v23.location = result.length + result.location;
    v23.length = Length - (result.length + result.location);
    if (!CFStringFindCharacterFromSet(theString, *(this + 7), v23, 0, &result))
    {
      goto LABEL_27;
    }
  }

  v20.length = result.length;
  v20.location = 0;
  v11 = CFStringCreateWithSubstring(0, theString, v20);
  v12 = CFStringCompare(v11, *(this + 3), 0);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12 == kCFCompareEqualTo)
  {
    goto LABEL_24;
  }

  v6 = 0;
LABEL_27:
  v15 = v6 ^ 1;
  return v15 & 1;
}

void sub_26F4E8080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLTamilOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v14.location = 0;
  v14.length = Length;
  if (!CFStringFindWithOptions(theString, this[4], v14, 0, &result))
  {
    v11 = 0;
    return v11 & 1;
  }

  v5 = 1;
  while (result.location)
  {
    v15.location = result.location - 1;
    v15.length = 1;
    v6 = CFStringCreateWithSubstring(0, theString, v15);
    v7 = 0;
    if (result.location + 1 < Length)
    {
      v16.length = 1;
      v16.location = result.location + 1;
      v7 = CFStringCreateWithSubstring(0, theString, v16);
    }

    v8 = this[8];
    CharacterAtIndex = CFStringGetCharacterAtIndex(v6, 0);
    if (!CFCharacterSetIsCharacterMember(v8, CharacterAtIndex))
    {
      canViramaPrecedeLetter = 0;
      v5 = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }

    if (v7)
    {
      canViramaPrecedeLetter = TLTamilOrthographyChecker::canViramaPrecedeLetter(this, v7);
      v5 &= canViramaPrecedeLetter;
      goto LABEL_10;
    }

    canViramaPrecedeLetter = 1;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (canViramaPrecedeLetter)
    {
      v17.location = result.length + result.location;
      v17.length = Length - (result.length + result.location);
      if (CFStringFindWithOptions(theString, this[4], v17, 0, &result))
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v11 = v5 ^ 1;
  return v11 & 1;
}

void sub_26F4E8234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLTamilOrthographyChecker::isInvalidDiacriticAfterVowelLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFCharacterSetCreateWithCharactersInString(0, @"ஂஃ");
  v6.location = 0;
  v11 = v5;
  while (1)
  {
    v6.length = Length - v6.location;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, this[5], v6, 0, &result);
    if (!CharacterFromSet)
    {
      break;
    }

    if (result.location + 1 < Length)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(this[7], CharacterAtIndex))
      {
        if (!CFCharacterSetIsCharacterMember(v5, CharacterAtIndex))
        {
          break;
        }
      }
    }

    v6.location = result.length + result.location;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return CharacterFromSet != 0;
}

void sub_26F4E833C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLTamilOrthographyChecker::isInvalidTamilLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, this[9], v5, 0, 0) != 0;
}

BOOL TLTamilOrthographyChecker::checkSpelling(CFCharacterSetRef *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  if ((TLTamilOrthographyChecker::isInvalidConsecutiveDiacritics(this, a2) & 1) != 0 || (TLTamilOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(this, a2) & 1) != 0 || TLTamilOrthographyChecker::isInvalidDiacriticAfterVowelLetter(this, a2))
  {
    return 0;
  }

  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  return CFStringFindCharacterFromSet(a2, this[9], v7, 0, 0) == 0;
}

void *operator<<(void *a1, uint64_t a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Latin string: ", 14);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", Transliterated string: ", 25);
  v10 = *(a2 + 24);
  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = a2 + 24;
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 47);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", LM score: ", 12);
  v16 = MEMORY[0x274392A10](v15, *(a2 + 48));
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", Seq2Seq score: ", 17);
  v18 = MEMORY[0x274392A10](v17, *(a2 + 56));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", Type: ", 8);
  v20 = TLTransliterationCandidateTypeAsString(*(a2 + 64));
  v21 = [v20 UTF8String];
  v22 = strlen(v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", Is extension candidate: ", 26);
  if (*(a2 + 72))
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (*(a2 + 72))
  {
    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  v31 = v26;
  memcpy(__dst, v25, v26);
  *(__dst | v26) = 0;
  if ((v31 & 0x80u) == 0)
  {
    v27 = __dst;
  }

  else
  {
    v27 = __dst[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v28 = v31;
  }

  else
  {
    v28 = __dst[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v27, v28);
  if (v31 < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_26F4E85C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, std::string::value_type a5, double a6, double a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v14;
  }

  *&this[2].__r_.__value_.__l.__data_ = a6;
  *&this[2].__r_.__value_.__l.__size_ = a7;
  this[2].__r_.__value_.__r.__words[2] = a4;
  this[3].__r_.__value_.__s.__data_[0] = a5;
}

void sub_26F4E8694(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743929E0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

  MEMORY[0x2743929F0](v13);
  return a1;
}

void sub_26F4E8800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2743929F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26F4E87E0);
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

void sub_26F4E8A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TLCompositeTransliteratorLexicon::TLCompositeTransliteratorLexicon(TLCompositeTransliteratorLexicon *this, const __CFLocale *a2)
{
  *this = 0;
  DirectLatinToNativesMap = TLCompositeTransliteratorLexicon::loadDirectLatinToNativesMap(this, a2);
  nlp::CFScopedPtr<_LXTransliteration const*>::reset(this, DirectLatinToNativesMap);
}

void nlp::CFScopedPtr<_LXTransliteration const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t TLCompositeTransliteratorLexicon::loadDirectLatinToNativesMap(TLCompositeTransliteratorLexicon *this, const __CFLocale *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], a2);
  v4 = LXTransliterationCreate();
  if (!v4)
  {
    Value = CFLocaleGetValue(a2, *MEMORY[0x277CBEED0]);
    v6 = _nlpDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "");
      applesauce::CF::convert_or<std::string>(Value, v10, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v15 = p_p;
      _os_log_error_impl(&dword_26F4DB000, v6, OS_LOG_TYPE_ERROR, "Failed to load direct Latin to Native new lexicon for: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_26F4E8C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void TLCompositeTransliteratorLexicon::lexiconCandidatesForInput(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  TLOSSignPostlexiconCandidatesForInput::TLOSSignPostlexiconCandidatesForInput(&v25);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a1)
  {
    v6 = *(a2 + 23);
    v7 = v6 >= 0 ? *(a2 + 23) : *(a2 + 8);
    if (v7)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x4812000000;
      v21 = __Block_byref_object_copy__2;
      v22 = __Block_byref_object_dispose__2;
      v23 = &unk_26F4F96F1;
      memset(v24, 0, sizeof(v24));
      if (v6 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v8)
      {
        v26 = CFStringCreateWithBytes(0, v8, v7, 0x8000100u, 0);
        if (!v26)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x274392950](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v9 = *a1;
      }

      else
      {
        v26 = 0;
      }

      *&v17[1] = MEMORY[0x277D85DD0];
      *&v17[2] = 3221225472;
      *&v17[3] = ___ZNK32TLCompositeTransliteratorLexicon25lexiconCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      *&v17[4] = &unk_279DD90B8;
      *&v17[5] = &v18;
      LXTransliterationEnumerateForTransliterated();
      v10 = v19[6];
      v11 = v19[7];
      if (v10 != v11)
      {
        v12 = a3[1];
        do
        {
          v17[0] = -INFINITY;
          v16 = 0;
          v15 = 0;
          v14 = 0;
          if (v12 >= a3[2])
          {
            v12 = std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string const&,std::string&,double,float,TLTransliteratorCandidateType,BOOL>(a3, a2, v10, v17, &v16, &v15, &v14);
          }

          else
          {
            TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v12, a2, v10, 0, 0, -INFINITY, 0.0);
            v12 += 80;
          }

          a3[1] = v12;
          v10 += 24;
        }

        while (v10 != v11);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      _Block_object_dispose(&v18, 8);
      v26 = v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
    }
  }

  TLOSSignPostlexiconCandidatesForInput::~TLOSSignPostlexiconCandidatesForInput(&v25);
}

void sub_26F4E8F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v12 - 72));
  _Block_object_dispose(va, 8);
  *(v10 + 80) = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v12 - 72));
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](va);
  TLOSSignPostlexiconCandidatesForInput::~TLOSSignPostlexiconCandidatesForInput((v12 - 80));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZNK32TLCompositeTransliteratorLexicon25lexiconCandidatesForInputERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = LXTransliterationEntryCopyNativeString();
  v23 = v2;
  v3 = *(*(a1 + 32) + 8);
  getUTF8StringFromCFString(v2, __p);
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  if (v5 < v4)
  {
    v6 = *__p;
    *(v5 + 16) = v22;
    *v5 = v6;
    *(v3 + 56) = v5 + 24;
    if (!v2)
    {
      return;
    }

    goto LABEL_14;
  }

  v7 = *(v3 + 48);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  v24.__end_cap_.__value_ = (v3 + 48);
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v3 + 48, v11);
  }

  v12 = 24 * v8;
  v13 = *__p;
  *(v12 + 16) = v22;
  *v12 = v13;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v14 = 24 * v8 + 24;
  v15 = *(v3 + 48);
  v16 = *(v3 + 56) - v15;
  v17 = 24 * v8 - v16;
  memcpy((v12 - v16), v15, v16);
  v18 = *(v3 + 48);
  *(v3 + 48) = v17;
  *(v3 + 56) = v14;
  v19 = *(v3 + 64);
  *(v3 + 64) = 0;
  v24.__end_ = v18;
  v24.__end_cap_.__value_ = v19;
  v24.__first_ = v18;
  v24.__begin_ = v18;
  std::__split_buffer<std::string>::~__split_buffer(&v24);
  v20 = SHIBYTE(v22);
  *(v3 + 56) = v14;
  if ((v20 & 0x80000000) == 0)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_14;
  }

  operator delete(__p[0]);
  if (v2)
  {
LABEL_14:
    CFRelease(v2);
  }
}

void sub_26F4E9174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a16, 0);
  _Unwind_Resume(a1);
}

uint64_t TLCompositeTransliteratorLexicon::isMemberOfTheNativeLexicon(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  CFStringFromString = createCFStringFromString(a2);

  return MEMORY[0x282182028](v2, CFStringFromString);
}

void TLOSSignPostlexiconCandidatesForInput::TLOSSignPostlexiconCandidatesForInput(TLOSSignPostlexiconCandidatesForInput *this)
{
  v2 = _nlpSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, this);

  *this = v3;
  v4 = _nlpSignpostLog();
  v5 = v4;
  v6 = *this;
  if ((*this - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "lexiconCandidatesForInput", &unk_26F4F80C2, v7, 2u);
  }
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string const&,std::string&,double,float,TLTransliteratorCandidateType,BOOL>(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4, float *a5, void *a6, unsigned __int8 *a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x333333333333333)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v8)
  {
    v8 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v11 = 0x333333333333333;
  }

  else
  {
    v11 = v8;
  }

  v17 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v11);
  }

  v14[0] = 0;
  v14[1] = 80 * v7;
  v15 = 80 * v7;
  v16 = 0;
  TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(80 * v7, a2, a3, *a6, *a7, *a4, *a5);
  v15 = 80 * v7 + 80;
  std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, v14);
  v12 = a1[1];
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(v14);
  return v12;
}

void sub_26F4E93C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TLOSSignPostlexiconCandidatesForInput::~TLOSSignPostlexiconCandidatesForInput(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = v2;
  v4 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v3, OS_SIGNPOST_INTERVAL_END, v4, "lexiconCandidatesForInput", &unk_26F4F80C2, v5, 2u);
  }
}

void nlp::CFScopedPtr<__CFDictionary *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void TLGurmukhiOrthographyChecker::TLGurmukhiOrthographyChecker(TLGurmukhiOrthographyChecker *this)
{
  *(this + 3) = 0u;
  v2 = (this + 48);
  *(this + 4) = 0u;
  v3 = (this + 64);
  *(this + 10) = 0;
  v4 = (this + 80);
  *this = &unk_287F86788;
  *(this + 1) = @"਼";
  *(this + 2) = @"੍";
  *(this + 3) = @"ਂ";
  *(this + 4) = @"ੰ";
  *(this + 5) = @"ੱ";
  Mutable = CFStringCreateMutable(0, 0);
  v6 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"ਅ");
    CFStringAppend(v6, @"ਆ");
    CFStringAppend(v6, @"ਇ");
    CFStringAppend(v6, @"ਈ");
    CFStringAppend(v6, @"ਉ");
    CFStringAppend(v6, @"ਊ");
    CFStringAppend(v6, @"ਏ");
    CFStringAppend(v6, @"ਐ");
    CFStringAppend(v6, @"ਓ");
    CFStringAppend(v6, @"ਔ");
  }

  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, v7);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, @"ਾ");
    CFStringAppend(v9, @"ਿ");
    CFStringAppend(v9, @"ੀ");
    CFStringAppend(v9, @"ੁ");
    CFStringAppend(v9, @"ੂ");
    CFStringAppend(v9, @"ੇ");
    CFStringAppend(v9, @"ੈ");
    CFStringAppend(v9, @"ੋ");
    CFStringAppend(v9, @"ੌ");
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 7, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, *(this + 1));
    CFStringAppend(v12, *(this + 2));
    CFStringAppend(v12, *(this + 3));
    CFStringAppend(v12, *(this + 4));
    CFStringAppend(v12, *(this + 5));
    CFStringAppend(v12, v9);
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"ਕ");
    CFStringAppend(v15, @"ਖ");
    CFStringAppend(v15, @"ਗ");
    CFStringAppend(v15, @"ਘ");
    CFStringAppend(v15, @"ਙ");
    CFStringAppend(v15, @"ਚ");
    CFStringAppend(v15, @"ਛ");
    CFStringAppend(v15, @"ਜ");
    CFStringAppend(v15, @"ਝ");
    CFStringAppend(v15, @"ਞ");
    CFStringAppend(v15, @"ਟ");
    CFStringAppend(v15, @"ਠ");
    CFStringAppend(v15, @"ਡ");
    CFStringAppend(v15, @"ਢ");
    CFStringAppend(v15, @"ਣ");
    CFStringAppend(v15, @"ਤ");
    CFStringAppend(v15, @"ਥ");
    CFStringAppend(v15, @"ਦ");
    CFStringAppend(v15, @"ਧ");
    CFStringAppend(v15, @"ਨ");
    CFStringAppend(v15, @"ਪ");
    CFStringAppend(v15, @"ਫ");
    CFStringAppend(v15, @"ਬ");
    CFStringAppend(v15, @"ਭ");
    CFStringAppend(v15, @"ਮ");
    CFStringAppend(v15, @"ਯ");
    CFStringAppend(v15, @"ਰ");
    CFStringAppend(v15, @"ਲ");
    CFStringAppend(v15, @"ਵ");
    CFStringAppend(v15, @"ਸ");
    CFStringAppend(v15, @"ਹ");
    CFStringAppend(v15, @"ੜ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, v16);
  v17 = CFStringCreateMutable(0, 0);
  v18 = v17;
  if (v17)
  {
    CFStringAppend(v17, v12);
    CFStringAppend(v18, v6);
    CFStringAppend(v18, v15);
  }

  v19 = CFCharacterSetCreateWithCharactersInString(0, v18);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v19);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, InvertedSet);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_26F4E9A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 72), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 56), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v15, 0);
  _Unwind_Resume(a1);
}

void TLGurmukhiOrthographyChecker::~TLGurmukhiOrthographyChecker(const void **this)
{
  *this = &unk_287F86788;
  v2 = this + 6;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLGurmukhiOrthographyChecker::~TLGurmukhiOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLGurmukhiOrthographyChecker::isVowelSign(TLGurmukhiOrthographyChecker *this, CFStringRef theString)
{
  v3 = *(this + 7);
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, v3, v5, 0, 0) != 0;
}

BOOL TLGurmukhiOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, this[1], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[9];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL TLGurmukhiOrthographyChecker::canViramaPrecedeLetter(TLGurmukhiOrthographyChecker *this, const __CFString *a2)
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, @"ਰਹਵ");
  CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
  IsCharacterMember = CFCharacterSetIsCharacterMember(v3, CharacterAtIndex);
  if (v3)
  {
    CFRelease(v3);
  }

  return IsCharacterMember != 0;
}

void sub_26F4E9D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLGurmukhiOrthographyChecker::canTippiFollowCharacter(TLGurmukhiOrthographyChecker *this, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  v4 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"ਾ");
    CFStringAppend(v4, @"ੀ");
    CFStringAppend(v4, @"ੇ");
    CFStringAppend(v4, @"ੈ");
    CFStringAppend(v4, @"ੋ");
    CFStringAppend(v4, @"ੌ");
    CFStringAppend(v4, @"ਆ");
    CFStringAppend(v4, @"ਉ");
    CFStringAppend(v4, @"ਊ");
    CFStringAppend(v4, @"ਈ");
    CFStringAppend(v4, @"ਏ");
    CFStringAppend(v4, @"ਐ");
    CFStringAppend(v4, @"ਓ");
    CFStringAppend(v4, @"ਔ");
  }

  v5 = CFCharacterSetCreateWithCharactersInString(0, v4);
  CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
  IsCharacterMember = CFCharacterSetIsCharacterMember(v5, CharacterAtIndex);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return IsCharacterMember == 0;
}

void sub_26F4E9EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLGurmukhiOrthographyChecker::canAddakPrecedeLetter(TLGurmukhiOrthographyChecker *this, CFStringRef theString)
{
  v2 = *(this + 9);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v2, CharacterAtIndex) != 0;
}

BOOL TLGurmukhiOrthographyChecker::canNuktaFollowLetter(TLGurmukhiOrthographyChecker *this, const __CFString *a2)
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, @"ਲਸਖਗਜਫਕ");
  CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
  IsCharacterMember = CFCharacterSetIsCharacterMember(v3, CharacterAtIndex);
  if (v3)
  {
    CFRelease(v3);
  }

  return IsCharacterMember != 0;
}

void sub_26F4E9FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLGurmukhiOrthographyChecker::isInvalidConsecutiveDiacritics(TLGurmukhiOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v17.location = 0;
  v17.length = Length;
  if (!CFStringFindCharacterFromSet(theString, *(this + 8), v17, 0, &result))
  {
    v14 = 0;
    return v14 & 1;
  }

  v5 = 0;
  v6 = 1;
  v7.location = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    location = result.location;
    if (!result.location)
    {
      break;
    }

    if (v7.location == 0x7FFFFFFFFFFFFFFFLL || result.location != v5 + v7.location)
    {
      goto LABEL_23;
    }

    v7.length = v5;
    v9 = CFStringCreateWithSubstring(0, theString, v7);
    v10 = CFStringCreateWithSubstring(0, theString, result);
    if (CFStringCompare(v9, *(this + 1), 0) || CFStringCompare(v10, *(this + 1), 0) == kCFCompareEqualTo)
    {
      if (CFStringCompare(v10, *(this + 5), 0) || (v12 = *(this + 7), v18.length = CFStringGetLength(v9), v18.location = 0, !CFStringFindCharacterFromSet(v9, v12, v18, 0, 0)))
      {
        if ((CFStringCompare(v10, *(this + 3), 0) || TLGurmukhiOrthographyChecker::canTippiFollowCharacter(0, v9)) && (CFStringCompare(v10, *(this + 4), 0) || !TLGurmukhiOrthographyChecker::canTippiFollowCharacter(0, v9)))
        {
          v6 = 0;
          v11 = 0;
          if (!v10)
          {
            goto LABEL_19;
          }

LABEL_18:
          CFRelease(v10);
          goto LABEL_19;
        }
      }
    }

    v11 = 1;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
      goto LABEL_27;
    }

    location = result.location;
LABEL_23:
    v5 = result.length;
    v19.location = result.length + location;
    v19.length = Length - (result.length + location);
    CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 8), v19, 0, &result);
    v7.location = location;
    if (!CharacterFromSet)
    {
      goto LABEL_27;
    }
  }

  v6 = 0;
LABEL_27:
  v14 = v6 ^ 1;
  return v14 & 1;
}

void sub_26F4EA1E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLGurmukhiOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v13.location = 0;
  v13.length = Length;
  if (!CFStringFindWithOptions(theString, this[2], v13, 0, &result))
  {
    v10 = 0;
    return v10 & 1;
  }

  v5 = 1;
  while (result.location)
  {
    v14.location = result.location - 1;
    v14.length = 1;
    v6 = CFStringCreateWithSubstring(0, theString, v14);
    v7 = 0;
    if (result.location + 1 < Length)
    {
      v15.length = 1;
      v15.location = result.location + 1;
      v7 = CFStringCreateWithSubstring(0, theString, v15);
    }

    canViramaFollowLetter = TLGurmukhiOrthographyChecker::canViramaFollowLetter(this, v6);
    if (!canViramaFollowLetter)
    {
      canViramaPrecedeLetter = 0;
      v5 = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }

    if (v7)
    {
      canViramaPrecedeLetter = TLGurmukhiOrthographyChecker::canViramaPrecedeLetter(canViramaFollowLetter, v7);
      v5 &= canViramaPrecedeLetter;
      goto LABEL_10;
    }

    canViramaPrecedeLetter = 1;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (canViramaPrecedeLetter)
    {
      v16.location = result.length + result.location;
      v16.length = Length - (result.length + result.location);
      if (CFStringFindWithOptions(theString, this[2], v16, 0, &result))
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v10 = v5 ^ 1;
  return v10 & 1;
}

void sub_26F4EA380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t TLGurmukhiOrthographyChecker::isInvalidDiacriticAfterVowelLetter(TLGurmukhiOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFCharacterSetCreateWithCharactersInString(0, @"ਂੰੱ");
  v6.location = 0;
  v18 = v5;
  v7 = 1;
  while (1)
  {
    v6.length = Length - v6.location;
    if (!CFStringFindCharacterFromSet(theString, *(this + 6), v6, 0, &result))
    {
LABEL_19:
      v12 = v7 ^ 1;
      if (!v5)
      {
        return v12 & 1;
      }

      goto LABEL_20;
    }

    location = result.location;
    if (result.location + 1 >= Length)
    {
      goto LABEL_18;
    }

    theChar = CFStringGetCharacterAtIndex(theString, result.location + 1);
    if (CFCharacterSetIsCharacterMember(*(this + 8), theChar))
    {
      if (!CFCharacterSetIsCharacterMember(v5, theChar))
      {
        break;
      }
    }

    v9 = CFStringCreateWithCharacters(0, &theChar, 1);
    v15 = v9;
    chars = CFStringGetCharacterAtIndex(theString, result.location);
    v10 = CFStringCreateWithCharacters(0, &chars, 1);
    if (CFStringCompare(v9, *(this + 4), 0) == kCFCompareEqualTo && !TLGurmukhiOrthographyChecker::canTippiFollowCharacter(0, v10) || CFStringCompare(v9, *(this + 3), 0) == kCFCompareEqualTo && TLGurmukhiOrthographyChecker::canTippiFollowCharacter(0, v10))
    {
      v7 = 0;
      v11 = 0;
      if (!v10)
      {
        goto LABEL_14;
      }

LABEL_13:
      CFRelease(v10);
      goto LABEL_14;
    }

    v11 = 1;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
      goto LABEL_19;
    }

    location = result.location;
LABEL_18:
    v6.location = result.length + location;
  }

  v12 = 1;
  if (v5)
  {
LABEL_20:
    CFRelease(v5);
  }

  return v12 & 1;
}

void sub_26F4EA558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t TLGurmukhiOrthographyChecker::isInvalidAddakFollowingConsonant(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v12.location = 0;
  v12.length = Length;
  v5 = CFStringFindWithOptions(theString, this[5], v12, 0, &result);
  if (v5)
  {
    while (result.location && result.location != Length - 1)
    {
      v7 = 0;
      if (result.location + 1 < Length)
      {
        v13.length = 1;
        v13.location = result.location + 1;
        v7 = CFStringCreateWithSubstring(0, theString, v13);
      }

      v8 = this[9];
      CharacterAtIndex = CFStringGetCharacterAtIndex(v7, 0);
      IsCharacterMember = CFCharacterSetIsCharacterMember(v8, CharacterAtIndex);
      if (v7)
      {
        CFRelease(v7);
      }

      if (!IsCharacterMember)
      {
        break;
      }

      v14.location = result.length + result.location;
      v14.length = Length - (result.length + result.location);
      v5 = CFStringFindWithOptions(theString, this[5], v14, 0, &result);
      if (!v5)
      {
        return v5;
      }
    }

    return 1;
  }

  return v5;
}

void sub_26F4EA6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLGurmukhiOrthographyChecker::isInvalidNuktaAfterConsonant(TLGurmukhiOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v5 = *(this + 1);
  v6 = theString;
  v7.location = 0;
  v7.length = Length;
  while (1)
  {
    v8 = CFStringFindWithOptions(v6, v5, v7, 0, &result);
    if (!v8)
    {
      break;
    }

    if (!result.location)
    {
      return 1;
    }

    v12.location = result.location - 1;
    v12.length = 1;
    v9 = CFStringCreateWithSubstring(0, theString, v12);
    canNuktaFollowLetter = TLGurmukhiOrthographyChecker::canNuktaFollowLetter(v9, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    if (!canNuktaFollowLetter)
    {
      return 1;
    }

    v7.location = result.length + result.location;
    v7.length = Length - (result.length + result.location);
    v5 = *(this + 1);
    v6 = theString;
  }

  return v8;
}

void sub_26F4EA7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLGurmukhiOrthographyChecker::isInvalidGurmukhiLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, this[10], v5, 0, 0) != 0;
}

BOOL TLGurmukhiOrthographyChecker::checkSpelling(CFCharacterSetRef *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  if (TLGurmukhiOrthographyChecker::isInvalidConsecutiveDiacritics(this, a2) & 1) != 0 || (TLGurmukhiOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(this, a2) & 1) != 0 || (TLGurmukhiOrthographyChecker::isInvalidDiacriticAfterVowelLetter(this, a2) & 1) != 0 || (TLGurmukhiOrthographyChecker::isInvalidAddakFollowingConsonant(this, a2) & 1) != 0 || (TLGurmukhiOrthographyChecker::isInvalidNuktaAfterConsonant(this, a2))
  {
    return 0;
  }

  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  return CFStringFindCharacterFromSet(a2, this[10], v7, 0, 0) == 0;
}

void TLTeluguOrthographyChecker::TLTeluguOrthographyChecker(TLTeluguOrthographyChecker *this)
{
  *(this + 4) = 0u;
  v2 = (this + 64);
  *(this + 5) = 0u;
  v3 = (this + 80);
  *(this + 12) = 0;
  v4 = (this + 96);
  *this = &unk_287F867C8;
  *(this + 1) = @"‍";
  *(this + 6) = @"఼";
  *(this + 7) = @"్";
  *(this + 4) = @"ం";
  *(this + 5) = @"ః";
  *(this + 2) = @"ఀ";
  *(this + 3) = @"ఁ";
  Mutable = CFStringCreateMutable(0, 0);
  v6 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"అ");
    CFStringAppend(v6, @"ఆ");
    CFStringAppend(v6, @"ఇ");
    CFStringAppend(v6, @"ఈ");
    CFStringAppend(v6, @"ఉ");
    CFStringAppend(v6, @"ఊ");
    CFStringAppend(v6, @"ఋ");
    CFStringAppend(v6, @"ఌ");
    CFStringAppend(v6, @"ఎ");
    CFStringAppend(v6, @"ఏ");
    CFStringAppend(v6, @"ఐ");
    CFStringAppend(v6, @"ఒ");
    CFStringAppend(v6, @"ఓ");
    CFStringAppend(v6, @"ఔ");
  }

  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, v7);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, @"ా");
    CFStringAppend(v9, @"ి");
    CFStringAppend(v9, @"ీ");
    CFStringAppend(v9, @"ు");
    CFStringAppend(v9, @"ూ");
    CFStringAppend(v9, @"ృ");
    CFStringAppend(v9, @"ౄ");
    CFStringAppend(v9, @"ె");
    CFStringAppend(v9, @"ే");
    CFStringAppend(v9, @"ై");
    CFStringAppend(v9, @"ొ");
    CFStringAppend(v9, @"ో");
    CFStringAppend(v9, @"ౌ");
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, *(this + 6));
    CFStringAppend(v12, *(this + 7));
    CFStringAppend(v12, *(this + 5));
    CFStringAppend(v12, *(this + 4));
    CFStringAppend(v12, *(this + 3));
    CFStringAppend(v12, *(this + 2));
    CFStringAppend(v12, v9);
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"క");
    CFStringAppend(v15, @"ఖ");
    CFStringAppend(v15, @"గ");
    CFStringAppend(v15, @"ఘ");
    CFStringAppend(v15, @"ఙ");
    CFStringAppend(v15, @"చ");
    CFStringAppend(v15, @"ఛ");
    CFStringAppend(v15, @"జ");
    CFStringAppend(v15, @"ఝ");
    CFStringAppend(v15, @"ఞ");
    CFStringAppend(v15, @"ట");
    CFStringAppend(v15, @"ఠ");
    CFStringAppend(v15, @"డ");
    CFStringAppend(v15, @"ఢ");
    CFStringAppend(v15, @"ణ");
    CFStringAppend(v15, @"త");
    CFStringAppend(v15, @"థ");
    CFStringAppend(v15, @"ద");
    CFStringAppend(v15, @"ధ");
    CFStringAppend(v15, @"న");
    CFStringAppend(v15, @"ప");
    CFStringAppend(v15, @"ఫ");
    CFStringAppend(v15, @"బ");
    CFStringAppend(v15, @"భ");
    CFStringAppend(v15, @"మ");
    CFStringAppend(v15, @"య");
    CFStringAppend(v15, @"ర");
    CFStringAppend(v15, @"ఱ");
    CFStringAppend(v15, @"ల");
    CFStringAppend(v15, @"ళ");
    CFStringAppend(v15, @"ఴ");
    CFStringAppend(v15, @"వ");
    CFStringAppend(v15, @"శ");
    CFStringAppend(v15, @"ష");
    CFStringAppend(v15, @"స");
    CFStringAppend(v15, @"హ");
    CFStringAppend(v15, @"ౝ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 11, v16);
  v17 = CFStringCreateMutable(0, 0);
  v18 = v17;
  if (v17)
  {
    CFStringAppend(v17, v12);
    CFStringAppend(v18, v6);
    CFStringAppend(v18, v15);
  }

  v19 = CFCharacterSetCreateWithCharactersInString(0, v18);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v19);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, InvertedSet);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_26F4EAF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 88), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 72), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v15, 0);
  _Unwind_Resume(a1);
}

void TLTeluguOrthographyChecker::~TLTeluguOrthographyChecker(const void **this)
{
  *this = &unk_287F867C8;
  v2 = this + 8;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 12, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLTeluguOrthographyChecker::~TLTeluguOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLTeluguOrthographyChecker::isVowelSign(TLTeluguOrthographyChecker *this, CFStringRef theString)
{
  v3 = *(this + 9);
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, v3, v5, 0, 0) != 0;
}

BOOL TLTeluguOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, this[6], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[11];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL TLTeluguOrthographyChecker::canViramaPrecedeLetter(TLTeluguOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 11);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 1), 0) == kCFCompareEqualTo;
}

uint64_t TLTeluguOrthographyChecker::isInvalidConsecutiveDiacritics(TLTeluguOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v19.location = 0;
  v19.length = Length;
  if (!CFStringFindCharacterFromSet(theString, *(this + 10), v19, 0, &result))
  {
    v16 = 0;
    return v16 & 1;
  }

  v5 = 0;
  v6 = 1;
  v7.location = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    location = result.location;
    if (!result.location)
    {
      break;
    }

    if (v7.location == 0x7FFFFFFFFFFFFFFFLL || result.location != v5 + v7.location)
    {
      goto LABEL_25;
    }

    v7.length = v5;
    v9 = CFStringCreateWithSubstring(0, theString, v7);
    v10 = CFStringCreateWithSubstring(0, theString, result);
    if (CFStringCompare(v9, *(this + 6), 0) || CFStringCompare(v10, *(this + 6), 0) == kCFCompareEqualTo)
    {
      if (CFStringCompare(v10, *(this + 4), 0) || (v12 = *(this + 9), v20.length = CFStringGetLength(v9), v20.location = 0, !CFStringFindCharacterFromSet(v9, v12, v20, 0, 0)))
      {
        if (CFStringCompare(v10, *(this + 3), 0) || (v13 = *(this + 9), v21.length = CFStringGetLength(v9), v21.location = 0, !CFStringFindCharacterFromSet(v9, v13, v21, 0, 0)))
        {
          if (CFStringCompare(v10, *(this + 5), 0) || (v14 = *(this + 9), v22.length = CFStringGetLength(v9), v22.location = 0, !CFStringFindCharacterFromSet(v9, v14, v22, 0, 0)))
          {
            v6 = 0;
            v11 = 0;
            if (!v10)
            {
              goto LABEL_21;
            }

LABEL_20:
            CFRelease(v10);
            goto LABEL_21;
          }
        }
      }
    }

    v11 = 1;
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
      goto LABEL_29;
    }

    location = result.location;
LABEL_25:
    v5 = result.length;
    v23.location = result.length + location;
    v23.length = Length - (result.length + location);
    CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 10), v23, 0, &result);
    v7.location = location;
    if (!CharacterFromSet)
    {
      goto LABEL_29;
    }
  }

  v6 = 0;
LABEL_29:
  v16 = v6 ^ 1;
  return v16 & 1;
}

void sub_26F4EB45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLTeluguOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v12.location = 0;
  v12.length = Length;
  if (!CFStringFindWithOptions(theString, this[7], v12, 0, &result))
  {
    v9 = 0;
    return v9 & 1;
  }

  v5 = 1;
  while (result.location)
  {
    v13.location = result.location - 1;
    v13.length = 1;
    v6 = CFStringCreateWithSubstring(0, theString, v13);
    v7 = 0;
    if (result.location + 1 < Length)
    {
      v14.length = 1;
      v14.location = result.location + 1;
      v7 = CFStringCreateWithSubstring(0, theString, v14);
    }

    if (!TLTeluguOrthographyChecker::canViramaFollowLetter(this, v6))
    {
      canViramaPrecedeLetter = 0;
      v5 = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }

    if (v7)
    {
      canViramaPrecedeLetter = TLTeluguOrthographyChecker::canViramaPrecedeLetter(this, v7);
      v5 &= canViramaPrecedeLetter;
      goto LABEL_10;
    }

    canViramaPrecedeLetter = 1;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (canViramaPrecedeLetter)
    {
      v15.location = result.length + result.location;
      v15.length = Length - (result.length + result.location);
      if (CFStringFindWithOptions(theString, this[7], v15, 0, &result))
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v9 = v5 ^ 1;
  return v9 & 1;
}

void sub_26F4EB5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLTeluguOrthographyChecker::isInvalidDiacriticAfterVowelLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFCharacterSetCreateWithCharactersInString(0, @"ఁం");
  v6.location = 0;
  v11 = v5;
  while (1)
  {
    v6.length = Length - v6.location;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, this[8], v6, 0, &result);
    if (!CharacterFromSet)
    {
      break;
    }

    if (result.location + 1 < Length)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(this[10], CharacterAtIndex))
      {
        if (!CFCharacterSetIsCharacterMember(v5, CharacterAtIndex))
        {
          break;
        }
      }
    }

    v6.location = result.length + result.location;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return CharacterFromSet != 0;
}

void sub_26F4EB704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLTeluguOrthographyChecker::isInvalidTeluguLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, this[12], v5, 0, 0) != 0;
}

BOOL TLTeluguOrthographyChecker::checkSpelling(CFCharacterSetRef *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  if ((TLTeluguOrthographyChecker::isInvalidConsecutiveDiacritics(this, a2) & 1) != 0 || (TLTeluguOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(this, a2) & 1) != 0 || TLTeluguOrthographyChecker::isInvalidDiacriticAfterVowelLetter(this, a2))
  {
    return 0;
  }

  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  return CFStringFindCharacterFromSet(a2, this[12], v7, 0, 0) == 0;
}

void TLGujaratiOrthographyChecker::TLGujaratiOrthographyChecker(TLGujaratiOrthographyChecker *this)
{
  *(this + 56) = 0u;
  v2 = (this + 56);
  *(this + 72) = 0u;
  v3 = (this + 72);
  *(this + 11) = 0;
  v4 = (this + 88);
  *this = &unk_287F86808;
  *(this + 1) = @"‍";
  *(this + 2) = @"઼";
  *(this + 3) = @"્";
  *(this + 4) = @"ઃ";
  *(this + 5) = @"ં";
  *(this + 6) = @"ઁ";
  Mutable = CFStringCreateMutable(0, 0);
  v6 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"ા");
    CFStringAppend(v6, @"િ");
    CFStringAppend(v6, @"ી");
    CFStringAppend(v6, @"ુ");
    CFStringAppend(v6, @"ૂ");
    CFStringAppend(v6, @"ૃ");
    CFStringAppend(v6, @"ૄ");
    CFStringAppend(v6, @"ૅ");
    CFStringAppend(v6, @"ે");
    CFStringAppend(v6, @"ૈ");
    CFStringAppend(v6, @"ૉ");
    CFStringAppend(v6, @"ો");
    CFStringAppend(v6, @"ૌ");
  }

  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, v7);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, *(this + 2));
    CFStringAppend(v9, *(this + 3));
    CFStringAppend(v9, *(this + 4));
    CFStringAppend(v9, *(this + 5));
    CFStringAppend(v9, *(this + 6));
    CFStringAppend(v9, v6);
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, @"ક");
    CFStringAppend(v12, @"ખ");
    CFStringAppend(v12, @"ગ");
    CFStringAppend(v12, @"ઘ");
    CFStringAppend(v12, @"ઙ");
    CFStringAppend(v12, @"ચ");
    CFStringAppend(v12, @"છ");
    CFStringAppend(v12, @"જ");
    CFStringAppend(v12, @"ઝ");
    CFStringAppend(v12, @"ઞ");
    CFStringAppend(v12, @"ટ");
    CFStringAppend(v12, @"ઠ");
    CFStringAppend(v12, @"ડ");
    CFStringAppend(v12, @"ઢ");
    CFStringAppend(v12, @"ણ");
    CFStringAppend(v12, @"ત");
    CFStringAppend(v12, @"થ");
    CFStringAppend(v12, @"દ");
    CFStringAppend(v12, @"ધ");
    CFStringAppend(v12, @"ન");
    CFStringAppend(v12, @"પ");
    CFStringAppend(v12, @"ફ");
    CFStringAppend(v12, @"બ");
    CFStringAppend(v12, @"ભ");
    CFStringAppend(v12, @"મ");
    CFStringAppend(v12, @"ય");
    CFStringAppend(v12, @"ર");
    CFStringAppend(v12, @"લ");
    CFStringAppend(v12, @"ળ");
    CFStringAppend(v12, @"વ");
    CFStringAppend(v12, @"શ");
    CFStringAppend(v12, @"ષ");
    CFStringAppend(v12, @"સ");
    CFStringAppend(v12, @"હ");
    CFStringAppend(v12, @"ૐ");
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"અ");
    CFStringAppend(v15, @"આ");
    CFStringAppend(v15, @"ઇ");
    CFStringAppend(v15, @"ઈ");
    CFStringAppend(v15, @"ઉ");
    CFStringAppend(v15, @"ઊ");
    CFStringAppend(v15, @"ઋ");
    CFStringAppend(v15, @"ઌ");
    CFStringAppend(v15, @"ઍ");
    CFStringAppend(v15, @"એ");
    CFStringAppend(v15, @"ઐ");
    CFStringAppend(v15, @"ઑ");
    CFStringAppend(v15, @"ઓ");
    CFStringAppend(v15, @"ઔ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, v16);
  v17 = CFStringCreateMutable(0, 0);
  v18 = v17;
  if (v17)
  {
    CFStringAppend(v17, v9);
    CFStringAppend(v18, v15);
    CFStringAppend(v18, v12);
  }

  v19 = CFCharacterSetCreateWithCharactersInString(0, v18);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v19);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, InvertedSet);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_26F4EBE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 80), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 64), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v15, 0);
  _Unwind_Resume(a1);
}

void TLGujaratiOrthographyChecker::~TLGujaratiOrthographyChecker(const void **this)
{
  *this = &unk_287F86808;
  v2 = this + 7;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLGujaratiOrthographyChecker::~TLGujaratiOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLGujaratiOrthographyChecker::isVowelSign(TLGujaratiOrthographyChecker *this, CFStringRef theString)
{
  v3 = *(this + 8);
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, v3, v5, 0, 0) != 0;
}

BOOL TLGujaratiOrthographyChecker::canViramaFollowLetter(CFStringRef *this, CFStringRef theString1)
{
  if (CFStringCompare(theString1, this[2], 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v4 = this[10];
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString1, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) != 0;
}

BOOL TLGujaratiOrthographyChecker::canViramaPrecedeLetter(TLGujaratiOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 10);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 1), 0) == kCFCompareEqualTo;
}

uint64_t TLGujaratiOrthographyChecker::isInvalidConsecutiveDiacritics(TLGujaratiOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v19.location = 0;
  v19.length = Length;
  if (!CFStringFindCharacterFromSet(theString, *(this + 9), v19, 0, &result))
  {
    v16 = 0;
    return v16 & 1;
  }

  v5 = 0;
  v6 = 1;
  v7.location = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    location = result.location;
    if (!result.location)
    {
      break;
    }

    if (v7.location == 0x7FFFFFFFFFFFFFFFLL || result.location != v5 + v7.location)
    {
      goto LABEL_25;
    }

    v7.length = v5;
    v9 = CFStringCreateWithSubstring(0, theString, v7);
    v10 = CFStringCreateWithSubstring(0, theString, result);
    if (CFStringCompare(v9, *(this + 2), 0) || CFStringCompare(v10, *(this + 2), 0) == kCFCompareEqualTo)
    {
      if (CFStringCompare(v10, *(this + 5), 0) || (v12 = *(this + 8), v20.length = CFStringGetLength(v9), v20.location = 0, !CFStringFindCharacterFromSet(v9, v12, v20, 0, 0)))
      {
        if (CFStringCompare(v10, *(this + 6), 0) || (v13 = *(this + 8), v21.length = CFStringGetLength(v9), v21.location = 0, !CFStringFindCharacterFromSet(v9, v13, v21, 0, 0)))
        {
          if (CFStringCompare(v10, *(this + 4), 0) || (v14 = *(this + 8), v22.length = CFStringGetLength(v9), v22.location = 0, !CFStringFindCharacterFromSet(v9, v14, v22, 0, 0)))
          {
            v6 = 0;
            v11 = 0;
            if (!v10)
            {
              goto LABEL_21;
            }

LABEL_20:
            CFRelease(v10);
            goto LABEL_21;
          }
        }
      }
    }

    v11 = 1;
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
      goto LABEL_29;
    }

    location = result.location;
LABEL_25:
    v5 = result.length;
    v23.location = result.length + location;
    v23.length = Length - (result.length + location);
    CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 9), v23, 0, &result);
    v7.location = location;
    if (!CharacterFromSet)
    {
      goto LABEL_29;
    }
  }

  v6 = 0;
LABEL_29:
  v16 = v6 ^ 1;
  return v16 & 1;
}

void sub_26F4EC360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLGujaratiOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v12.location = 0;
  v12.length = Length;
  if (!CFStringFindWithOptions(theString, this[3], v12, 0, &result))
  {
    v9 = 0;
    return v9 & 1;
  }

  v5 = 1;
  while (result.location)
  {
    v13.location = result.location - 1;
    v13.length = 1;
    v6 = CFStringCreateWithSubstring(0, theString, v13);
    v7 = 0;
    if (result.location + 1 < Length)
    {
      v14.length = 1;
      v14.location = result.location + 1;
      v7 = CFStringCreateWithSubstring(0, theString, v14);
    }

    if (!TLGujaratiOrthographyChecker::canViramaFollowLetter(this, v6))
    {
      canViramaPrecedeLetter = 0;
      v5 = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }

    if (v7)
    {
      canViramaPrecedeLetter = TLGujaratiOrthographyChecker::canViramaPrecedeLetter(this, v7);
      v5 &= canViramaPrecedeLetter;
      goto LABEL_10;
    }

    canViramaPrecedeLetter = 1;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (canViramaPrecedeLetter)
    {
      v15.location = result.length + result.location;
      v15.length = Length - (result.length + result.location);
      if (CFStringFindWithOptions(theString, this[3], v15, 0, &result))
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v9 = v5 ^ 1;
  return v9 & 1;
}

void sub_26F4EC500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLGujaratiOrthographyChecker::isInvalidDiacriticAfterVowelLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFCharacterSetCreateWithCharactersInString(0, @"ઁં");
  v6.location = 0;
  v11 = v5;
  while (1)
  {
    v6.length = Length - v6.location;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, this[7], v6, 0, &result);
    if (!CharacterFromSet)
    {
      break;
    }

    if (result.location + 1 < Length)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(this[9], CharacterAtIndex))
      {
        if (!CFCharacterSetIsCharacterMember(v5, CharacterAtIndex))
        {
          break;
        }
      }
    }

    v6.location = result.length + result.location;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return CharacterFromSet != 0;
}

void sub_26F4EC608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLGujaratiOrthographyChecker::isInvalidGujaratiLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  v5.length = CFStringGetLength(theString);
  v5.location = 0;
  return CFStringFindCharacterFromSet(theString, this[11], v5, 0, 0) != 0;
}

BOOL TLGujaratiOrthographyChecker::checkSpelling(CFCharacterSetRef *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  if ((TLGujaratiOrthographyChecker::isInvalidConsecutiveDiacritics(this, a2) & 1) != 0 || (TLGujaratiOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(this, a2) & 1) != 0 || TLGujaratiOrthographyChecker::isInvalidDiacriticAfterVowelLetter(this, a2))
  {
    return 0;
  }

  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  return CFStringFindCharacterFromSet(a2, this[11], v7, 0, 0) == 0;
}

void TLUrduOrthographyChecker::TLUrduOrthographyChecker(TLUrduOrthographyChecker *this)
{
  *this = &unk_287F86848;
  *(this + 1) = 0;
  v1 = (this + 8);
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"ء");
    CFStringAppend(v3, @"آ");
    CFStringAppend(v3, @"ؤ");
    CFStringAppend(v3, @"ئ");
    CFStringAppend(v3, @"ا");
    CFStringAppend(v3, @"ب");
    CFStringAppend(v3, @"ت");
    CFStringAppend(v3, @"ث");
    CFStringAppend(v3, @"ج");
    CFStringAppend(v3, @"ح");
    CFStringAppend(v3, @"خ");
    CFStringAppend(v3, @"د");
    CFStringAppend(v3, @"ذ");
    CFStringAppend(v3, @"ر");
    CFStringAppend(v3, @"ز");
    CFStringAppend(v3, @"س");
    CFStringAppend(v3, @"ش");
    CFStringAppend(v3, @"ص");
    CFStringAppend(v3, @"ض");
    CFStringAppend(v3, @"ط");
    CFStringAppend(v3, @"ظ");
    CFStringAppend(v3, @"ع");
    CFStringAppend(v3, @"غ");
    CFStringAppend(v3, @"ـ");
    CFStringAppend(v3, @"ف");
    CFStringAppend(v3, @"ق");
    CFStringAppend(v3, @"ل");
    CFStringAppend(v3, @"م");
    CFStringAppend(v3, @"ن");
    CFStringAppend(v3, @"و");
    CFStringAppend(v3, @"ً");
    CFStringAppend(v3, @"ٌ");
    CFStringAppend(v3, @"ٍ");
    CFStringAppend(v3, @"َ");
    CFStringAppend(v3, @"ُ");
    CFStringAppend(v3, @"ِ");
    CFStringAppend(v3, @"ّ");
    CFStringAppend(v3, @"ْ");
    CFStringAppend(v3, @"ٖ");
    CFStringAppend(v3, @"ٗ");
    CFStringAppend(v3, @"٘");
    CFStringAppend(v3, @"ٰ");
    CFStringAppend(v3, @"ٹ");
    CFStringAppend(v3, @"پ");
    CFStringAppend(v3, @"چ");
    CFStringAppend(v3, @"ڈ");
    CFStringAppend(v3, @"ڑ");
    CFStringAppend(v3, @"ژ");
    CFStringAppend(v3, @"ک");
    CFStringAppend(v3, @"گ");
    CFStringAppend(v3, @"ں");
    CFStringAppend(v3, @"ھ");
    CFStringAppend(v3, @"ہ");
    CFStringAppend(v3, @"ۂ");
    CFStringAppend(v3, @"ۃ");
    CFStringAppend(v3, @"ی");
    CFStringAppend(v3, @"ے");
    CFStringAppend(v3, @"ۓ");
    CFStringAppend(v3, @"ࣿ");
  }

  v4 = CFCharacterSetCreateWithCharactersInString(0, v3);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v4);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v1, InvertedSet);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_26F4ECB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v10, 0);
  _Unwind_Resume(a1);
}

void TLUrduOrthographyChecker::~TLUrduOrthographyChecker(const void **this)
{
  *this = &unk_287F86848;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 1, 0);
}

{
  *this = &unk_287F86848;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 1, 0);
}

{
  *this = &unk_287F86848;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 1, 0);

  JUMPOUT(0x274392B00);
}

BOOL TLUrduOrthographyChecker::checkSpelling(CFCharacterSetRef *this, CFStringRef theString, const __CFString **a3, const __CFString **a4)
{
  v7.length = CFStringGetLength(theString);
  v7.location = 0;
  return CFStringFindCharacterFromSet(theString, this[1], v7, 0, 0) == 0;
}

uint64_t _nlpDefaultLog()
{
  if (_nlpDefaultLog::token != -1)
  {
    _nlpDefaultLog_cold_1();
  }

  return _nlpDefaultLog::log;
}

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.Transliteration", "TransliterationDefaultLog");
  _nlpDefaultLog::log = result;
  return result;
}

uint64_t _nlpSignpostLog()
{
  if (_nlpSignpostLog::token != -1)
  {
    _nlpSignpostLog_cold_1();
  }

  return _nlpSignpostLog::log;
}

os_log_t ___nlpSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.Transliteration", "TransliterationSignposts");
  _nlpSignpostLog::log = result;
  return result;
}

void TLMalayalamOrthographyChecker::TLMalayalamOrthographyChecker(TLMalayalamOrthographyChecker *this)
{
  *(this + 3) = 0u;
  v2 = (this + 48);
  *(this + 4) = 0u;
  v3 = (this + 64);
  *(this + 10) = 0;
  v4 = (this + 80);
  *this = &unk_287F868C8;
  *(this + 1) = @"‍";
  *(this + 4) = @"ഃ";
  *(this + 5) = @"്";
  *(this + 2) = @"ഁ";
  *(this + 3) = @"ം";
  Mutable = CFStringCreateMutable(0, 0);
  v6 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"അ");
    CFStringAppend(v6, @"ആ");
    CFStringAppend(v6, @"ഇ");
    CFStringAppend(v6, @"ഈ");
    CFStringAppend(v6, @"ഉ");
    CFStringAppend(v6, @"ഊ");
    CFStringAppend(v6, @"ഋ");
    CFStringAppend(v6, @"ഌ");
    CFStringAppend(v6, @"എ");
    CFStringAppend(v6, @"ഏ");
    CFStringAppend(v6, @"ഐ");
    CFStringAppend(v6, @"ഒ");
    CFStringAppend(v6, @"ഓ");
    CFStringAppend(v6, @"ഔ");
  }

  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, v7);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, @"ാ");
    CFStringAppend(v9, @"ി");
    CFStringAppend(v9, @"ീ");
    CFStringAppend(v9, @"ു");
    CFStringAppend(v9, @"ൂ");
    CFStringAppend(v9, @"ൃ");
    CFStringAppend(v9, @"ൄ");
    CFStringAppend(v9, @"െ");
    CFStringAppend(v9, @"േ");
    CFStringAppend(v9, @"ൈ");
    CFStringAppend(v9, @"ൊ");
    CFStringAppend(v9, @"ോ");
    CFStringAppend(v9, @"ൌ");
    CFStringAppend(v9, @"ൗ");
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 7, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, *(this + 5));
    CFStringAppend(v12, *(this + 4));
    CFStringAppend(v12, *(this + 3));
    CFStringAppend(v12, *(this + 2));
    CFStringAppend(v12, v9);
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"ക");
    CFStringAppend(v15, @"ഖ");
    CFStringAppend(v15, @"ഗ");
    CFStringAppend(v15, @"ഘ");
    CFStringAppend(v15, @"ങ");
    CFStringAppend(v15, @"ച");
    CFStringAppend(v15, @"ഛ");
    CFStringAppend(v15, @"ജ");
    CFStringAppend(v15, @"ഝ");
    CFStringAppend(v15, @"ഞ");
    CFStringAppend(v15, @"ട");
    CFStringAppend(v15, @"ഠ");
    CFStringAppend(v15, @"ഡ");
    CFStringAppend(v15, @"ഢ");
    CFStringAppend(v15, @"ണ");
    CFStringAppend(v15, @"ത");
    CFStringAppend(v15, @"ഥ");
    CFStringAppend(v15, @"ദ");
    CFStringAppend(v15, @"ധ");
    CFStringAppend(v15, @"ന");
    CFStringAppend(v15, @"ഩ");
    CFStringAppend(v15, @"പ");
    CFStringAppend(v15, @"ഫ");
    CFStringAppend(v15, @"ബ");
    CFStringAppend(v15, @"ഭ");
    CFStringAppend(v15, @"മ");
    CFStringAppend(v15, @"യ");
    CFStringAppend(v15, @"ര");
    CFStringAppend(v15, @"റ");
    CFStringAppend(v15, @"ല");
    CFStringAppend(v15, @"ള");
    CFStringAppend(v15, @"ഴ");
    CFStringAppend(v15, @"വ");
    CFStringAppend(v15, @"ശ");
    CFStringAppend(v15, @"ഷ");
    CFStringAppend(v15, @"സ");
    CFStringAppend(v15, @"ഹ");
    CFStringAppend(v15, @"ഺ");
    CFStringAppend(v15, @"ൺ");
    CFStringAppend(v15, @"ൻ");
    CFStringAppend(v15, @"ർ");
    CFStringAppend(v15, @"ൽ");
    CFStringAppend(v15, @"ൾ");
    CFStringAppend(v15, @"ൿ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, v16);
  v17 = CFStringCreateMutable(0, 0);
  v18 = v17;
  if (v17)
  {
    CFStringAppend(v17, v12);
    CFStringAppend(v18, v6);
    CFStringAppend(v18, v15);
  }

  v19 = CFCharacterSetCreateWithCharactersInString(0, v18);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v19);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, InvertedSet);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_26F4ED4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 72), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 56), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v15, 0);
  _Unwind_Resume(a1);
}

void TLMalayalamOrthographyChecker::~TLMalayalamOrthographyChecker(const void **this)
{
  *this = &unk_287F868C8;
  v2 = this + 6;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 8, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLMalayalamOrthographyChecker::~TLMalayalamOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

BOOL TLMalayalamOrthographyChecker::canViramaPrecedeLetter(TLMalayalamOrthographyChecker *this, CFStringRef theString)
{
  v4 = *(this + 9);
  CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
  return CFCharacterSetIsCharacterMember(v4, CharacterAtIndex) || CFStringCompare(theString, *(this + 1), 0) == kCFCompareEqualTo;
}

uint64_t TLMalayalamOrthographyChecker::isInvalidConsecutiveDiacritics(TLMalayalamOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v19.location = 0;
  v19.length = Length;
  if (!CFStringFindCharacterFromSet(theString, *(this + 8), v19, 0, &result))
  {
    v16 = 0;
    return v16 & 1;
  }

  v5 = 0;
  v6 = 1;
  v7.location = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    location = result.location;
    if (!result.location)
    {
      break;
    }

    if (v7.location == 0x7FFFFFFFFFFFFFFFLL || result.location != v5 + v7.location)
    {
      goto LABEL_22;
    }

    v7.length = v5;
    v9 = CFStringCreateWithSubstring(0, theString, v7);
    v10 = CFStringCreateWithSubstring(0, theString, result);
    if (CFStringCompare(v10, *(this + 3), 0) || (v12 = *(this + 7), v20.length = CFStringGetLength(v9), v20.location = 0, !CFStringFindCharacterFromSet(v9, v12, v20, 0, 0)))
    {
      if (CFStringCompare(v10, *(this + 2), 0) || (v13 = *(this + 7), v21.length = CFStringGetLength(v9), v21.location = 0, !CFStringFindCharacterFromSet(v9, v13, v21, 0, 0)))
      {
        if (CFStringCompare(v10, *(this + 4), 0) || (v14 = *(this + 7), v22.length = CFStringGetLength(v9), v22.location = 0, !CFStringFindCharacterFromSet(v9, v14, v22, 0, 0)))
        {
          v6 = 0;
          v11 = 0;
          if (!v10)
          {
            goto LABEL_18;
          }

LABEL_17:
          CFRelease(v10);
          goto LABEL_18;
        }
      }
    }

    v11 = 1;
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
      goto LABEL_26;
    }

    location = result.location;
LABEL_22:
    v5 = result.length;
    v23.location = result.length + location;
    v23.length = Length - (result.length + location);
    CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 8), v23, 0, &result);
    v7.location = location;
    if (!CharacterFromSet)
    {
      goto LABEL_26;
    }
  }

  v6 = 0;
LABEL_26:
  v16 = v6 ^ 1;
  return v16 & 1;
}

void sub_26F4ED8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLMalayalamOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v14.location = 0;
  v14.length = Length;
  if (!CFStringFindWithOptions(theString, this[5], v14, 0, &result))
  {
    v11 = 0;
    return v11 & 1;
  }

  v5 = 1;
  while (result.location)
  {
    v15.location = result.location - 1;
    v15.length = 1;
    v6 = CFStringCreateWithSubstring(0, theString, v15);
    v7 = 0;
    if (result.location + 1 < Length)
    {
      v16.length = 1;
      v16.location = result.location + 1;
      v7 = CFStringCreateWithSubstring(0, theString, v16);
    }

    v8 = this[9];
    CharacterAtIndex = CFStringGetCharacterAtIndex(v6, 0);
    if (!CFCharacterSetIsCharacterMember(v8, CharacterAtIndex))
    {
      canViramaPrecedeLetter = 0;
      v5 = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }

    if (v7)
    {
      canViramaPrecedeLetter = TLMalayalamOrthographyChecker::canViramaPrecedeLetter(this, v7);
      v5 &= canViramaPrecedeLetter;
      goto LABEL_10;
    }

    canViramaPrecedeLetter = 1;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (canViramaPrecedeLetter)
    {
      v17.location = result.length + result.location;
      v17.length = Length - (result.length + result.location);
      if (CFStringFindWithOptions(theString, this[5], v17, 0, &result))
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v11 = v5 ^ 1;
  return v11 & 1;
}

void sub_26F4EDA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLMalayalamOrthographyChecker::isInvalidDiacriticAfterVowelLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFCharacterSetCreateWithCharactersInString(0, @"ഁം");
  v6.location = 0;
  v11 = v5;
  while (1)
  {
    v6.length = Length - v6.location;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, this[6], v6, 0, &result);
    if (!CharacterFromSet)
    {
      break;
    }

    if (result.location + 1 < Length)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(this[8], CharacterAtIndex))
      {
        if (!CFCharacterSetIsCharacterMember(v5, CharacterAtIndex))
        {
          break;
        }
      }
    }

    v6.location = result.length + result.location;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return CharacterFromSet != 0;
}

void sub_26F4EDB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLMalayalamOrthographyChecker::checkSpelling(CFCharacterSetRef *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  if ((TLMalayalamOrthographyChecker::isInvalidConsecutiveDiacritics(this, a2) & 1) != 0 || (TLMalayalamOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(this, a2) & 1) != 0 || TLMalayalamOrthographyChecker::isInvalidDiacriticAfterVowelLetter(this, a2))
  {
    return 0;
  }

  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  return CFStringFindCharacterFromSet(a2, this[10], v7, 0, 0) == 0;
}

void TLKannadaOrthographyChecker::TLKannadaOrthographyChecker(TLKannadaOrthographyChecker *this)
{
  *(this + 4) = 0u;
  v2 = (this + 64);
  *(this + 5) = 0u;
  v3 = (this + 80);
  *(this + 12) = 0;
  v4 = (this + 96);
  *this = &unk_287F86908;
  *(this + 1) = @"‍";
  *(this + 6) = @"಼";
  *(this + 7) = @"್";
  *(this + 4) = @"ಂ";
  *(this + 5) = @"ಃ";
  *(this + 2) = @"ಀ";
  *(this + 3) = @"ಁ";
  Mutable = CFStringCreateMutable(0, 0);
  v6 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"ಅ");
    CFStringAppend(v6, @"ಆ");
    CFStringAppend(v6, @"ಇ");
    CFStringAppend(v6, @"ಈ");
    CFStringAppend(v6, @"ಉ");
    CFStringAppend(v6, @"ಊ");
    CFStringAppend(v6, @"ಋ");
    CFStringAppend(v6, @"ಌ");
    CFStringAppend(v6, @"ಎ");
    CFStringAppend(v6, @"ಏ");
    CFStringAppend(v6, @"ಐ");
    CFStringAppend(v6, @"ಒ");
    CFStringAppend(v6, @"ಓ");
    CFStringAppend(v6, @"ಔ");
  }

  v7 = CFCharacterSetCreateWithCharactersInString(0, v6);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, v7);
  v8 = CFStringCreateMutable(0, 0);
  v9 = v8;
  if (v8)
  {
    CFStringAppend(v8, @"ಾ");
    CFStringAppend(v9, @"ಿ");
    CFStringAppend(v9, @"ೀ");
    CFStringAppend(v9, @"ು");
    CFStringAppend(v9, @"ೂ");
    CFStringAppend(v9, @"ೃ");
    CFStringAppend(v9, @"ೄ");
    CFStringAppend(v9, @"ೆ");
    CFStringAppend(v9, @"ೇ");
    CFStringAppend(v9, @"ೈ");
    CFStringAppend(v9, @"ೊ");
    CFStringAppend(v9, @"ೋ");
    CFStringAppend(v9, @"ೌ");
  }

  v10 = CFCharacterSetCreateWithCharactersInString(0, v9);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, v10);
  v11 = CFStringCreateMutable(0, 0);
  v12 = v11;
  if (v11)
  {
    CFStringAppend(v11, *(this + 6));
    CFStringAppend(v12, *(this + 7));
    CFStringAppend(v12, *(this + 5));
    CFStringAppend(v12, *(this + 4));
    CFStringAppend(v12, *(this + 3));
    CFStringAppend(v12, *(this + 2));
    CFStringAppend(v12, v9);
  }

  v13 = CFCharacterSetCreateWithCharactersInString(0, v12);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v3, v13);
  v14 = CFStringCreateMutable(0, 0);
  v15 = v14;
  if (v14)
  {
    CFStringAppend(v14, @"ಕ");
    CFStringAppend(v15, @"ಖ");
    CFStringAppend(v15, @"ಗ");
    CFStringAppend(v15, @"ಘ");
    CFStringAppend(v15, @"ಙ");
    CFStringAppend(v15, @"ಚ");
    CFStringAppend(v15, @"ಛ");
    CFStringAppend(v15, @"ಜ");
    CFStringAppend(v15, @"ಝ");
    CFStringAppend(v15, @"ಞ");
    CFStringAppend(v15, @"ಟ");
    CFStringAppend(v15, @"ಠ");
    CFStringAppend(v15, @"ಡ");
    CFStringAppend(v15, @"ಢ");
    CFStringAppend(v15, @"ಣ");
    CFStringAppend(v15, @"ತ");
    CFStringAppend(v15, @"ಥ");
    CFStringAppend(v15, @"ದ");
    CFStringAppend(v15, @"ಧ");
    CFStringAppend(v15, @"ನ");
    CFStringAppend(v15, @"ಪ");
    CFStringAppend(v15, @"ಫ");
    CFStringAppend(v15, @"ಬ");
    CFStringAppend(v15, @"ಭ");
    CFStringAppend(v15, @"ಮ");
    CFStringAppend(v15, @"ಯ");
    CFStringAppend(v15, @"ರ");
    CFStringAppend(v15, @"ಱ");
    CFStringAppend(v15, @"ಲ");
    CFStringAppend(v15, @"ಳ");
    CFStringAppend(v15, @"ವ");
    CFStringAppend(v15, @"ಶ");
    CFStringAppend(v15, @"ಷ");
    CFStringAppend(v15, @"ಸ");
    CFStringAppend(v15, @"ಹ");
    CFStringAppend(v15, @"ೝ");
  }

  v16 = CFCharacterSetCreateWithCharactersInString(0, v15);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 11, v16);
  v17 = CFStringCreateMutable(0, 0);
  v18 = v17;
  if (v17)
  {
    CFStringAppend(v17, v12);
    CFStringAppend(v18, v6);
    CFStringAppend(v18, v15);
  }

  v19 = CFCharacterSetCreateWithCharactersInString(0, v18);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v19);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v4, InvertedSet);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_26F4EE2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a11, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a12, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a13, 0);
  nlp::CFScopedPtr<__CFString *>::reset(&a14, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v17, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 88), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v16, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset((v14 + 72), 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v15, 0);
  _Unwind_Resume(a1);
}

void TLKannadaOrthographyChecker::~TLKannadaOrthographyChecker(const void **this)
{
  *this = &unk_287F86908;
  v2 = this + 8;
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 12, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 11, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 10, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(this + 9, 0);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(v2, 0);
}

{
  TLKannadaOrthographyChecker::~TLKannadaOrthographyChecker(this);

  JUMPOUT(0x274392B00);
}

uint64_t TLKannadaOrthographyChecker::isInvalidConsecutiveDiacritics(TLKannadaOrthographyChecker *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v19.location = 0;
  v19.length = Length;
  if (!CFStringFindCharacterFromSet(theString, *(this + 10), v19, 0, &result))
  {
    v16 = 0;
    return v16 & 1;
  }

  v5 = 0;
  v6 = 1;
  v7.location = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    location = result.location;
    if (!result.location)
    {
      break;
    }

    if (v7.location == 0x7FFFFFFFFFFFFFFFLL || result.location != v5 + v7.location)
    {
      goto LABEL_25;
    }

    v7.length = v5;
    v9 = CFStringCreateWithSubstring(0, theString, v7);
    v10 = CFStringCreateWithSubstring(0, theString, result);
    if (CFStringCompare(v9, *(this + 6), 0) || CFStringCompare(v10, *(this + 6), 0) == kCFCompareEqualTo)
    {
      if (CFStringCompare(v10, *(this + 4), 0) || (v12 = *(this + 9), v20.length = CFStringGetLength(v9), v20.location = 0, !CFStringFindCharacterFromSet(v9, v12, v20, 0, 0)))
      {
        if (CFStringCompare(v10, *(this + 3), 0) || (v13 = *(this + 9), v21.length = CFStringGetLength(v9), v21.location = 0, !CFStringFindCharacterFromSet(v9, v13, v21, 0, 0)))
        {
          if (CFStringCompare(v10, *(this + 5), 0) || (v14 = *(this + 9), v22.length = CFStringGetLength(v9), v22.location = 0, !CFStringFindCharacterFromSet(v9, v14, v22, 0, 0)))
          {
            v6 = 0;
            v11 = 0;
            if (!v10)
            {
              goto LABEL_21;
            }

LABEL_20:
            CFRelease(v10);
            goto LABEL_21;
          }
        }
      }
    }

    v11 = 1;
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v11)
    {
      goto LABEL_29;
    }

    location = result.location;
LABEL_25:
    v5 = result.length;
    v23.location = result.length + location;
    v23.length = Length - (result.length + location);
    CharacterFromSet = CFStringFindCharacterFromSet(theString, *(this + 10), v23, 0, &result);
    v7.location = location;
    if (!CharacterFromSet)
    {
      goto LABEL_29;
    }
  }

  v6 = 0;
LABEL_29:
  v16 = v6 ^ 1;
  return v16 & 1;
}

void sub_26F4EE6A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t TLKannadaOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(CFStringRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  result = xmmword_26F4F5780;
  v12.location = 0;
  v12.length = Length;
  if (!CFStringFindWithOptions(theString, this[7], v12, 0, &result))
  {
    v9 = 0;
    return v9 & 1;
  }

  v5 = 1;
  while (result.location)
  {
    v13.location = result.location - 1;
    v13.length = 1;
    v6 = CFStringCreateWithSubstring(0, theString, v13);
    v7 = 0;
    if (result.location + 1 < Length)
    {
      v14.length = 1;
      v14.location = result.location + 1;
      v7 = CFStringCreateWithSubstring(0, theString, v14);
    }

    if (!TLTeluguOrthographyChecker::canViramaFollowLetter(this, v6))
    {
      canViramaPrecedeLetter = 0;
      v5 = 0;
      if (v7)
      {
LABEL_10:
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }

    if (v7)
    {
      canViramaPrecedeLetter = TLTeluguOrthographyChecker::canViramaPrecedeLetter(this, v7);
      v5 &= canViramaPrecedeLetter;
      goto LABEL_10;
    }

    canViramaPrecedeLetter = 1;
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    if (canViramaPrecedeLetter)
    {
      v15.location = result.length + result.location;
      v15.length = Length - (result.length + result.location);
      if (CFStringFindWithOptions(theString, this[7], v15, 0, &result))
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v9 = v5 ^ 1;
  return v9 & 1;
}

void sub_26F4EE848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

BOOL TLKannadaOrthographyChecker::isInvalidDiacriticAfterVowelLetter(CFCharacterSetRef *this, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = CFCharacterSetCreateWithCharactersInString(0, @"ಁಂ");
  v6.location = 0;
  v11 = v5;
  while (1)
  {
    v6.length = Length - v6.location;
    CharacterFromSet = CFStringFindCharacterFromSet(theString, this[8], v6, 0, &result);
    if (!CharacterFromSet)
    {
      break;
    }

    if (result.location + 1 < Length)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, result.location + 1);
      if (CFCharacterSetIsCharacterMember(this[10], CharacterAtIndex))
      {
        if (!CFCharacterSetIsCharacterMember(v5, CharacterAtIndex))
        {
          break;
        }
      }
    }

    v6.location = result.length + result.location;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return CharacterFromSet != 0;
}

void sub_26F4EE950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFCharacterSet const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL TLKannadaOrthographyChecker::checkSpelling(CFCharacterSetRef *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  if ((TLKannadaOrthographyChecker::isInvalidConsecutiveDiacritics(this, a2) & 1) != 0 || (TLKannadaOrthographyChecker::isInvalidViramaFollowingConsonantOrNothing(this, a2) & 1) != 0 || TLKannadaOrthographyChecker::isInvalidDiacriticAfterVowelLetter(this, a2))
  {
    return 0;
  }

  v7.length = CFStringGetLength(a2);
  v7.location = 0;
  return CFStringFindCharacterFromSet(a2, this[12], v7, 0, 0) == 0;
}

void TLCompositeTransliterator::TLCompositeTransliterator(TLCompositeTransliterator *this, const __CFLocale *a2, const __CFURL *a3, BOOL a4, int a5)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  alloc = *MEMORY[0x277CBECE8];
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 7, a2);
  if (a5)
  {
    operator new();
  }

  operator new();
}

void sub_26F4EF234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, TL::StringMap ***a12)
{
  MEMORY[0x274392B00](v17, 0xE1C40D38FB6B8);
  nlp::CFScopedPtr<__CFLocale const*>::reset(v16, 0);
  nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(v15, 0);
  v19 = *v13;
  *v13 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v12[3];
  v12[3] = 0;
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  std::unique_ptr<TLCompositeTransliteratorLexicon>::reset[abi:ne200100](v14, 0);
  std::unique_ptr<TLCompositeTransliteratorException>::reset[abi:ne200100](a12, 0);
  std::unique_ptr<TLCompositeTransliteratorSeq2Seq>::reset[abi:ne200100](v12, 0);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<TLCompositeTransliteratorSeq2Seq>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    nlp::CFScopedPtr<__CFLocale const*>::reset((v2 + 8), 0);
    nlp::CFScopedPtr<__CFLocale const*>::reset(v2, 0);

    JUMPOUT(0x274392B00);
  }

  return result;
}

TL::StringMap **std::unique_ptr<TLCompositeTransliteratorException>::reset[abi:ne200100](TL::StringMap ***a1, TL::StringMap **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TLCompositeTransliteratorException::~TLCompositeTransliteratorException(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

const void **std::unique_ptr<TLCompositeTransliteratorLexicon>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TLCompositeTransliteratorLexicon::~TLCompositeTransliteratorLexicon(result);

    JUMPOUT(0x274392B00);
  }

  return result;
}

void nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

const void *applesauce::CF::get_path@<X0>(applesauce::CF *this@<X0>, void *a2@<X8>)
{
  result = CFURLCopyPath(this);
  *a2 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x274392950](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_26F4EF604(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void TLCompositeTransliterator::~TLCompositeTransliterator(TLCompositeTransliterator *this)
{
  nlp::CFScopedPtr<__CFLocale const*>::reset(this + 7, 0);
  nlp::CFScopedPtr<__EmojiLocaleDataWrapper const*>::reset(this + 6, 0);
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  std::unique_ptr<TLCompositeTransliteratorLexicon>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<TLCompositeTransliteratorException>::reset[abi:ne200100](this + 1, 0);
  std::unique_ptr<TLCompositeTransliteratorSeq2Seq>::reset[abi:ne200100](this, 0);
}

uint64_t TLCompositeTransliterator::isTransliteratedWordInLexiconForCandidate(TLCompositeTransliterator *this, const TLCompositeTransliteratorCandidate *a2)
{
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 1);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    isMemberOfTheNativeLexicon = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return isMemberOfTheNativeLexicon;
    }

    goto LABEL_8;
  }

  isMemberOfTheNativeLexicon = TLCompositeTransliteratorLexicon::isMemberOfTheNativeLexicon(*(this + 2), &__p);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return isMemberOfTheNativeLexicon;
}

void sub_26F4EF790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t TLCompositeTransliterator::updateCandidatesWithEmojiCandidates(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == a2[1])
  {
    return 0;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *v3, *(v3 + 8));
    v3 = *a2;
  }

  else
  {
    v5 = *v3;
    v31.__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&v31.__r_.__value_.__l.__data_ = v5;
  }

  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v30 = *(v3 + 24);
  }

  CFStringFromString = createCFStringFromString(&v30);
  v7 = *(a1 + 48);
  EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
  cf = EmojiTokensForString;
  if (EmojiTokensForString)
  {
    for (i = 0; i < CFArrayGetCount(EmojiTokensForString); ++i)
    {
      CFArrayGetValueAtIndex(EmojiTokensForString, i);
      String = CEMEmojiTokenGetString();
      getUTF8StringFromCFString(String, &__p);
      std::vector<std::string>::push_back[abi:ne200100](&v32, &__p);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p);
      }
    }

    __p = 0uLL;
    v27 = 0;
    v11 = v32;
    v12 = v33;
    if (v32 == v33)
    {
      v13 = 0;
      v21 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v14 = *(v11 + 23);
        if (v14 >= 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = *(v11 + 8);
        }

        v16 = *(v32 + 23);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v32[1];
        }

        if (v15 == v16)
        {
          if (v14 >= 0)
          {
            v18 = v11;
          }

          else
          {
            v18 = *v11;
          }

          if (v17 >= 0)
          {
            v19 = v32;
          }

          else
          {
            v19 = *v32;
          }

          v20 = memcmp(v18, v19, v15) != 0;
        }

        else
        {
          v20 = 1;
        }

        v25 = v20;
        p_p = 0;
        v23 = 3;
        v24 = 0.0;
        if (v13 >= v27)
        {
          v13 = std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string &,std::string &,double,double,TLTransliteratorCandidateType,BOOL &>(&__p, &v31, v11, &p_p, &v24, &v23, &v25);
        }

        else
        {
          TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v13, &v31, v11, 3, v20, 0.0, 0.0);
          v13 += 80;
        }

        *(&__p + 1) = v13;
        v11 += 24;
      }

      while (v11 != v12);
      v21 = __p;
    }

    std::vector<TLCompositeTransliteratorCandidate>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate*>,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(a2, *a2 + 80, v21, v13, 0xCCCCCCCCCCCCCCCDLL * ((v13 - v21) >> 4));
    v6 = 0xAAAAAAAAAAAAAAABLL * (v33 - v32);
    p_p = &__p;
    std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&p_p);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v31.__r_.__value_.__r.__words[0] = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
  return v6;
}