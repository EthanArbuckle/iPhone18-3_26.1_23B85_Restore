void sub_26B594EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (*(v49 - 129) < 0)
  {
    operator delete(*(v49 - 152));
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t RDDoLocaleIdentifiersMatch(CFLocaleIdentifier localeIdentifier, const __CFString *a2)
{
  v3 = CFLocaleCreate(0, localeIdentifier);
  v4 = CFLocaleCreate(0, a2);
  if (v3)
  {
    v5 = v4;
    if (!v4)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v6 = *MEMORY[0x277CBEED0];
    Value = CFLocaleGetValue(v3, *MEMORY[0x277CBEED0]);
    v8 = *MEMORY[0x277CBEE98];
    v9 = CFLocaleGetValue(v3, *MEMORY[0x277CBEE98]);
    v10 = CFLocaleGetValue(v5, v6);
    v11 = CFLocaleGetValue(v5, v8);
    if (Value)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_8;
    }

    v13 = v11;
    if (CFStringCompare(Value, v10, 0))
    {
      goto LABEL_8;
    }

    if (v9)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!(v9 | v13))
      {
        goto LABEL_22;
      }
    }

    else if (CFStringCompare(v9, v13, 0) == kCFCompareEqualTo)
    {
LABEL_22:
      v14 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v14 = 0;
LABEL_9:
    CFRelease(v5);
LABEL_12:
    CFRelease(v3);
    return v14;
  }

  return 0;
}

void RDString::RDString(RDString *this, CFStringRef theString, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (theString)
  {
    if (CFStringGetCStringPtr(theString, 0x8000100u))
    {
      MEMORY[0x26D679700](this);
    }

    else
    {
      Length = CFStringGetLength(theString);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      std::string::resize(this, MaximumSizeForEncoding + 2, 0);
      v8 = this;
      if (*(this + 23) < 0)
      {
        v8 = *this;
      }

      CFStringGetCString(theString, v8, MaximumSizeForEncoding + 1, 0x8000100u);
      v9 = this;
      if (*(this + 23) < 0)
      {
        v9 = *this;
      }

      v10 = strlen(v9);
      std::string::resize(this, v10, 0);
    }

    if (a3)
    {
      CFRelease(theString);
    }
  }
}

void sub_26B595274(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void RDInt::RDInt(RDInt *this, CFNumberRef number, int a3)
{
  if (number)
  {
    CFNumberGetValue(number, kCFNumberIntType, this);
    if (a3)
    {
      CFRelease(number);
    }
  }

  else
  {
    *this = 0;
  }
}

void RDURL::RDURL(RDURL *this, CFURLRef anURL, int a3)
{
  if (anURL)
  {
    v6 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    RDString::RDString(this, v6, 1);
    if (a3)
    {
      CFRelease(anURL);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void sub_26B595364(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RDURL::DirName(std::string *this)
{
  result = std::string::rfind(this, 47, 0xFFFFFFFFFFFFFFFFLL);
  if (result != -1)
  {

    return std::string::erase(this, result, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::string::find[abi:ne200100](uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
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
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v9 = (v3 + v4);
    if (v8 >= v7)
    {
      v12 = (v3 + a3);
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v10 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_14;
        }

        v12 = v10 + 1;
        v8 = v9 - (v10 + 1);
      }

      while (v8 >= v7);
    }

    v10 = v9;
LABEL_14:
    if (v10 == v9)
    {
      return -1;
    }

    else
    {
      return &v10[-v3];
    }
  }

  return a3;
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF6878, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void RXLanguageObjectCFTokenizerTokenize()
{
  dispatch_once(&RXLanguageObjectCFTokenizerTokenize(__CFString const*,__CFLocale const*)::onceToken, &__block_literal_global_101);
}

{
  dispatch_once(&WordBoundaryUnitStringTokenizerForLocale(__CFLocale const*)::onceToken, &__block_literal_global_103);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
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