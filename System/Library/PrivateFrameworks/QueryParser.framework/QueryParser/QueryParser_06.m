void QP::ParserGrammar::UTIs(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 224);
  v3 = a1 + 224;
  v4 = v5;
  if (v5)
  {
    v7 = v3;
    v8 = v4;
    do
    {
      v9 = *(v8 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = *(v8 + 8 * v11);
    }

    while (v8);
    if (v7 != v3 && *(v7 + 32) <= a2)
    {
      v12 = v3;
      do
      {
        v13 = *(v4 + 32);
        v10 = v13 >= a2;
        v14 = v13 < a2;
        if (v10)
        {
          v12 = v4;
        }

        v4 = *(v4 + 8 * v14);
      }

      while (v4);
      if (v12 == v3 || *(v12 + 32) > a2)
      {
        v12 = v3;
      }

      v15 = *(v12 + 40);
      v16 = (v12 + 48);
      if (v15 != (v12 + 48))
      {
        do
        {
          if (*(v15 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v15[4], v15[5]);
          }

          else
          {
            __p = *(v15 + 4);
          }

          (*(a3 + 16))(a3, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v17 = v15[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v15[2];
              v19 = *v18 == v15;
              v15 = v18;
            }

            while (!v19);
          }

          v15 = v18;
        }

        while (v18 != v16);
      }
    }
  }
}

void sub_1C65E6860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL QP::ParserGrammar::hasTranslations(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  v4 = *(a1 + 64);
  if (v4 && CFDictionaryContainsKey(v4, CFStringFromString))
  {
    Value = CFDictionaryGetValue(*(a1 + 64), CFStringFromString);
    v6 = CFArrayGetCount(Value) != 0;
    if (!CFStringFromString)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = 0;
  if (CFStringFromString)
  {
LABEL_6:
    CFRelease(CFStringFromString);
  }

  return v6;
}

void sub_1C65E6900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::translations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  v6 = *(a1 + 64);
  if (v6)
  {
    if (CFDictionaryContainsKey(v6, CFStringFromString))
    {
      Value = CFDictionaryGetValue(*(a1 + 64), CFStringFromString);
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
          (*(a3 + 16))(a3, ValueAtIndex);
          ++v9;
        }

        while (Count != v9);
      }
    }
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C65E69D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL QP::ParserGrammar::hasRankingTranslations(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  v4 = *(a1 + 72);
  if (v4 && CFDictionaryContainsKey(v4, CFStringFromString))
  {
    Value = CFDictionaryGetValue(*(a1 + 72), CFStringFromString);
    v6 = CFArrayGetCount(Value) != 0;
    if (!CFStringFromString)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = 0;
  if (CFStringFromString)
  {
LABEL_6:
    CFRelease(CFStringFromString);
  }

  return v6;
}

void sub_1C65E6A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::rankingTranslations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  v6 = *(a1 + 72);
  if (v6)
  {
    if (CFDictionaryContainsKey(v6, CFStringFromString))
    {
      Value = CFDictionaryGetValue(*(a1 + 72), CFStringFromString);
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, v9);
          (*(a3 + 16))(a3, ValueAtIndex);
          ++v9;
        }

        while (Count != v9);
      }
    }
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C65E6B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::symbolFlag(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = *(this + 85);
  if (v2)
  {
    v3 = (this + 680);
    do
    {
      v4 = v2[13];
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *&v2[4 * v6];
    }

    while (v2);
    if (v3 != (this + 680) && v3[13] <= a2)
    {
      return 1;
    }
  }

  v7 = *(this + 88);
  if (v7)
  {
    v8 = (this + 704);
    do
    {
      v9 = v7[13];
      v5 = v9 >= a2;
      v10 = v9 < a2;
      if (v5)
      {
        v8 = v7;
      }

      v7 = *&v7[4 * v10];
    }

    while (v7);
    if (v8 != (this + 704) && v8[13] <= a2)
    {
      return 2;
    }
  }

  v11 = *(this + 91);
  if (v11)
  {
    v12 = (this + 728);
    do
    {
      v13 = v11[13];
      v5 = v13 >= a2;
      v14 = v13 < a2;
      if (v5)
      {
        v12 = v11;
      }

      v11 = *&v11[4 * v14];
    }

    while (v11);
    if (v12 != (this + 728) && v12[13] <= a2)
    {
      return 3;
    }
  }

  v15 = *(this + 100);
  if (v15)
  {
    v16 = (this + 800);
    do
    {
      v17 = v15[13];
      v5 = v17 >= a2;
      v18 = v17 < a2;
      if (v5)
      {
        v16 = v15;
      }

      v15 = *&v15[4 * v18];
    }

    while (v15);
    if (v16 != (this + 800) && v16[13] <= a2)
    {
      return 10;
    }
  }

  v19 = *(this + 106);
  if (v19)
  {
    v20 = (this + 848);
    do
    {
      v21 = v19[13];
      v5 = v21 >= a2;
      v22 = v21 < a2;
      if (v5)
      {
        v20 = v19;
      }

      v19 = *&v19[4 * v22];
    }

    while (v19);
    if (v20 != (this + 848) && v20[13] <= a2)
    {
      return 11;
    }
  }

  v23 = *(this + 103);
  if (v23)
  {
    v24 = (this + 824);
    do
    {
      v25 = v23[13];
      v5 = v25 >= a2;
      v26 = v25 < a2;
      if (v5)
      {
        v24 = v23;
      }

      v23 = *&v23[4 * v26];
    }

    while (v23);
    if (v24 != (this + 824) && v24[13] <= a2)
    {
      return 15;
    }
  }

  v27 = *(this + 118);
  if (v27)
  {
    v28 = (this + 944);
    do
    {
      v29 = v27[13];
      v5 = v29 >= a2;
      v30 = v29 < a2;
      if (v5)
      {
        v28 = v27;
      }

      v27 = *&v27[4 * v30];
    }

    while (v27);
    if (v28 != (this + 944) && v28[13] <= a2)
    {
      return 11;
    }
  }

  if (kQPSymbolIdLocation == a2)
  {
    return 17;
  }

  else
  {
    return 0;
  }
}

BOOL QP::ParserGrammar::isInferred(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = this + 824;
  v3 = *(this + 103);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 824;
  do
  {
    v5 = *(v3 + 13);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 13) > a2)
  {
LABEL_9:
    v4 = this + 824;
  }

  return v4 != v2;
}

BOOL QP::ParserGrammar::isExtension(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = this + 944;
  v3 = *(this + 118);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 944;
  do
  {
    v5 = *(v3 + 13);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 13) > a2)
  {
LABEL_9:
    v4 = this + 944;
  }

  return v4 != v2;
}

BOOL QP::ParserGrammar::isCombinable(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = this + 896;
  v3 = *(this + 112);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 896;
  do
  {
    v5 = *(v3 + 13);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 13) > a2)
  {
LABEL_9:
    v4 = this + 896;
  }

  return v4 != v2;
}

BOOL QP::ParserGrammar::isParent(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = this + 992;
  v3 = *(this + 124);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 992;
  do
  {
    v5 = *(v3 + 13);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 13) > a2)
  {
LABEL_9:
    v4 = this + 992;
  }

  return v4 != v2;
}

BOOL QP::ParserGrammar::requiresComplement(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = this + 920;
  v3 = *(this + 115);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 920;
  do
  {
    v5 = *(v3 + 13);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 13) > a2)
  {
LABEL_9:
    v4 = this + 920;
  }

  return v4 != v2;
}

BOOL QP::ParserGrammar::isExtended(QP::ParserGrammar *this, unsigned int a2)
{
  v2 = this + 968;
  v3 = *(this + 121);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 968;
  do
  {
    v5 = *(v3 + 13);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *&v3[8 * v7];
  }

  while (v3);
  if (v4 == v2 || *(v4 + 13) > a2)
  {
LABEL_9:
    v4 = this + 968;
  }

  return v4 != v2;
}

uint64_t QP::ParserGrammar::getSymbolID(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::ParserGrammar::addSymbol(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a1 + 176 == std::__tree<std::string>::find<std::string>(a1 + 168, a2))
  {
    return kQPSymbolIdNone;
  }

  else
  {
    return *(std::__tree<std::string>::find<std::string>(a1 + 168, a2) + 56);
  }
}

void sub_1C65E6FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void QP::ParserGrammar::setModifier(uint64_t a1, unsigned __int8 *a2)
{
  v29 = QP::ParserGrammar::symbolID(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v27, "DATE");
  if (QP::endswith(a2, v27))
  {
    v4 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "PERIOD");
    if (QP::endswith(a2, v25))
    {
      v4 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "TIME");
      if (QP::endswith(a2, v23))
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "MIN");
        if (QP::startswith(a2, v21))
        {
          v4 = 0;
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "MAX");
          v4 = !QP::startswith(a2, __p);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }

      else
      {
        v4 = 0;
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "ANY");
  v5 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "ON");
  v6 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "IN");
  v7 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v7 || v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = v5;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "FROM");
  v9 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v9)
  {
    v8 = 3;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "START");
  if (QP::startswith(a2, v27))
  {
    v10 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "SINCE");
    v10 = QP::startswith(a2, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v10)
  {
    v8 = 7;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "END");
  if (QP::startswith(a2, v27))
  {
    v11 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "TO");
    v11 = QP::startswith(a2, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v11)
  {
    v8 = 8;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "BEFORE");
  v12 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v12)
  {
    v8 = 5;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "AFTER");
  v13 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v13)
  {
    v8 = 6;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "BY");
  v14 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v14)
  {
    v8 = 9;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "AT");
  v15 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v15)
  {
    v16 = 10;
  }

  else
  {
    v16 = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(v27, "AROUND");
  v17 = QP::startswith(a2, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v17)
  {
    v18 = 11;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    v27[0] = &v29;
    *(std::__tree<std::__value_type<unsigned short,QPModifier>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,QPModifier>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,QPModifier>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(a1 + 192, &v29) + 14) = v18;
  }
}

void sub_1C65E747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
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

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void QP::ParserGrammar::impactGroups(uint64_t a1, void **a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a1 + 392 != std::__tree<std::string>::find<std::string>(a1 + 384, a2))
  {
    v37 = 0;
    v38[0] = 0;
    v38[1] = 0;
    v10 = std::__tree<std::string>::find<std::string>(a1 + 384, a2);
    std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::map[abi:ne200100](&v37, v10 + 56);
    v11 = v38[0];
    if (v38[0])
    {
      v12 = v38;
      v13 = v38[0];
      do
      {
        v14 = *(v13 + 32);
        v15 = v14 >= a3;
        v16 = v14 < a3;
        if (v15)
        {
          v12 = v13;
        }

        v13 = *(v13 + 8 * v16);
      }

      while (v13);
      if (v12 != v38 && *(v12 + 16) <= a3)
      {
        v35 = 0;
        v36[0] = 0;
        v17 = v38;
        v36[1] = 0;
        do
        {
          v18 = *(v11 + 32);
          v15 = v18 >= a3;
          v19 = v18 < a3;
          if (v15)
          {
            v17 = v11;
          }

          v11 = *(v11 + 8 * v19);
        }

        while (v11);
        if (v17 == v38 || *(v17 + 16) > a3)
        {
          v17 = v38;
        }

        std::map<unsigned short,std::set<std::string>>::map[abi:ne200100](&v35, (v17 + 5));
        v20 = v36[0];
        if (v36[0])
        {
          v21 = v36;
          v22 = v36[0];
          do
          {
            v23 = *(v22 + 32);
            v15 = v23 >= a4;
            v24 = v23 < a4;
            if (v15)
            {
              v21 = v22;
            }

            v22 = *(v22 + 8 * v24);
          }

          while (v22);
          if (v21 != v36 && *(v21 + 16) <= a4)
          {
            v33 = 0;
            v34[0] = 0;
            v25 = v36;
            v34[1] = 0;
            do
            {
              v26 = *(v20 + 32);
              v15 = v26 >= a4;
              v27 = v26 < a4;
              if (v15)
              {
                v25 = v20;
              }

              v20 = *(v20 + 8 * v27);
            }

            while (v20);
            if (v25 == v36 || *(v25 + 16) > a4)
            {
              v25 = v36;
            }

            std::set<std::string>::set[abi:ne200100](&v33, (v25 + 5));
            v28 = v33;
            if (v33 != v34)
            {
              do
              {
                if (*(v28 + 55) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, v28[4], v28[5]);
                }

                else
                {
                  __p = *(v28 + 4);
                }

                (*(a5 + 16))(a5, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v29 = v28[1];
                if (v29)
                {
                  do
                  {
                    v30 = v29;
                    v29 = *v29;
                  }

                  while (v29);
                }

                else
                {
                  do
                  {
                    v30 = v28[2];
                    v31 = *v30 == v28;
                    v28 = v30;
                  }

                  while (!v31);
                }

                v28 = v30;
              }

              while (v30 != v34);
            }

            std::__tree<std::string>::destroy(&v33, v34[0]);
            v20 = v36[0];
          }
        }

        std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&v35, v20);
        v11 = v38[0];
      }
    }

    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(&v37, v11);
  }
}

void sub_1C65E77D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22)
{
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&a18, a19);
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

void QP::ParserGrammar::actions(uint64_t a1, void **a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a1 + 368 != std::__tree<std::string>::find<std::string>(a1 + 360, a2))
  {
    v37 = 0;
    v38[0] = 0;
    v38[1] = 0;
    v10 = std::__tree<std::string>::find<std::string>(a1 + 360, a2);
    std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::map[abi:ne200100](&v37, v10 + 56);
    v11 = v38[0];
    if (v38[0])
    {
      v12 = v38;
      v13 = v38[0];
      do
      {
        v14 = *(v13 + 32);
        v15 = v14 >= a3;
        v16 = v14 < a3;
        if (v15)
        {
          v12 = v13;
        }

        v13 = *(v13 + 8 * v16);
      }

      while (v13);
      if (v12 != v38 && *(v12 + 16) <= a3)
      {
        v35 = 0;
        v36[0] = 0;
        v17 = v38;
        v36[1] = 0;
        do
        {
          v18 = *(v11 + 32);
          v15 = v18 >= a3;
          v19 = v18 < a3;
          if (v15)
          {
            v17 = v11;
          }

          v11 = *(v11 + 8 * v19);
        }

        while (v11);
        if (v17 == v38 || *(v17 + 16) > a3)
        {
          v17 = v38;
        }

        std::map<unsigned short,std::set<std::string>>::map[abi:ne200100](&v35, (v17 + 5));
        v20 = v36[0];
        if (v36[0])
        {
          v21 = v36;
          v22 = v36[0];
          do
          {
            v23 = *(v22 + 32);
            v15 = v23 >= a4;
            v24 = v23 < a4;
            if (v15)
            {
              v21 = v22;
            }

            v22 = *(v22 + 8 * v24);
          }

          while (v22);
          if (v21 != v36 && *(v21 + 16) <= a4)
          {
            v33 = 0;
            v34[0] = 0;
            v25 = v36;
            v34[1] = 0;
            do
            {
              v26 = *(v20 + 32);
              v15 = v26 >= a4;
              v27 = v26 < a4;
              if (v15)
              {
                v25 = v20;
              }

              v20 = *(v20 + 8 * v27);
            }

            while (v20);
            if (v25 == v36 || *(v25 + 16) > a4)
            {
              v25 = v36;
            }

            std::set<std::string>::set[abi:ne200100](&v33, (v25 + 5));
            v28 = v33;
            if (v33 != v34)
            {
              do
              {
                if (*(v28 + 55) < 0)
                {
                  std::string::__init_copy_ctor_external(&__p, v28[4], v28[5]);
                }

                else
                {
                  __p = *(v28 + 4);
                }

                (*(a5 + 16))(a5, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v29 = v28[1];
                if (v29)
                {
                  do
                  {
                    v30 = v29;
                    v29 = *v29;
                  }

                  while (v29);
                }

                else
                {
                  do
                  {
                    v30 = v28[2];
                    v31 = *v30 == v28;
                    v28 = v30;
                  }

                  while (!v31);
                }

                v28 = v30;
              }

              while (v30 != v34);
            }

            std::__tree<std::string>::destroy(&v33, v34[0]);
            v20 = v36[0];
          }
        }

        std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&v35, v20);
        v11 = v38[0];
      }
    }

    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(&v37, v11);
  }
}

void sub_1C65E7A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22)
{
  std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(&a18, a19);
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::hasAttribute(QP::ParserGrammar *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 43);
  if (!v3)
  {
    return 0;
  }

  v5 = this + 344;
  v6 = this + 344;
  v7 = *(this + 43);
  do
  {
    v8 = *(v7 + 16);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *&v7[8 * v10];
  }

  while (v7);
  if (v6 != v5 && *(v6 + 16) <= a2)
  {
    v19 = 0;
    v20[0] = 0;
    v11 = this + 344;
    v20[1] = 0;
    do
    {
      v12 = *(v3 + 16);
      v9 = v12 >= a2;
      v13 = v12 < a2;
      if (v9)
      {
        v11 = v3;
      }

      v3 = *&v3[8 * v13];
    }

    while (v3);
    if (v11 == v5 || *(v11 + 16) > a2)
    {
      v11 = this + 344;
    }

    std::map<unsigned short,std::string>::map[abi:ne200100](&v19, (v11 + 40));
    if (v20[0])
    {
      v14 = v20;
      v15 = v20[0];
      do
      {
        v16 = *(v15 + 16);
        v9 = v16 >= a3;
        v17 = v16 < a3;
        if (v9)
        {
          v14 = v15;
        }

        v15 = *&v15[8 * v17];
      }

      while (v15);
      if (v14 != v20 && *(v14 + 16) <= a3)
      {
        std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v19, v20[0]);
        return 1;
      }
    }

    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v19, v20[0]);
  }

  return 0;
}

void QP::ParserGrammar::attribute(QP::ParserGrammar *this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, std::string *a4@<X8>)
{
  v6 = *(this + 43);
  if (!v6)
  {
    goto LABEL_26;
  }

  v8 = this + 344;
  v9 = this + 344;
  v10 = *(this + 43);
  do
  {
    v11 = *(v10 + 16);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *&v10[8 * v13];
  }

  while (v10);
  if (v9 == v8 || *(v9 + 16) > a2)
  {
    goto LABEL_26;
  }

  v27 = 0;
  v28[0] = 0;
  v14 = this + 344;
  v28[1] = 0;
  do
  {
    v15 = *(v6 + 16);
    v12 = v15 >= a2;
    v16 = v15 < a2;
    if (v12)
    {
      v14 = v6;
    }

    v6 = *&v6[8 * v16];
  }

  while (v6);
  if (v14 == v8 || *(v14 + 16) > a2)
  {
    v14 = this + 344;
  }

  std::map<unsigned short,std::string>::map[abi:ne200100](&v27, (v14 + 40));
  v17 = v28[0];
  if (!v28[0])
  {
    goto LABEL_25;
  }

  v18 = v28;
  v19 = v28[0];
  do
  {
    v20 = *(v19 + 16);
    v12 = v20 >= a3;
    v21 = v20 < a3;
    if (v12)
    {
      v18 = v19;
    }

    v19 = *&v19[8 * v21];
  }

  while (v19);
  if (v18 == v28 || *(v18 + 16) > a3)
  {
LABEL_25:
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v27, v28[0]);
LABEL_26:
    if (*(this + 119) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *(this + 12), *(this + 13));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *(this + 6);
      a4->__r_.__value_.__r.__words[2] = *(this + 14);
    }

    return;
  }

  v22 = v28;
  v23 = v28[0];
  do
  {
    v24 = *(v23 + 16);
    v12 = v24 >= a3;
    v25 = v24 < a3;
    if (v12)
    {
      v22 = v23;
    }

    v23 = *&v23[8 * v25];
  }

  while (v23);
  if (v22 == v28 || *(v22 + 16) > a3)
  {
    v22 = v28;
  }

  if (*(v22 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v22[5], v22[6]);
    v17 = v28[0];
  }

  else
  {
    v26 = *(v22 + 5);
    a4->__r_.__value_.__r.__words[2] = v22[7];
    *&a4->__r_.__value_.__l.__data_ = v26;
  }

  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v27, v17);
}

uint64_t QP::ParserGrammar::isValidSuggestionKey(QP::ParserGrammar *this, CFStringRef theString, unsigned int a3, unsigned int a4)
{
  if (!theString || CFStringHasPrefix(theString, @"kQPLocation"))
  {
    return 0;
  }

  if (CFStringHasSuffix(theString, @"SearchAction") || CFStringHasSuffix(theString, @"Owner") || CFStringHasSuffix(theString, @"DatedAction") || CFStringHasSuffix(theString, @"CreatedAction") || CFStringHasSuffix(theString, @"ModifiedAction") || CFStringHasSuffix(theString, @"ViewedAction") || CFStringHasSuffix(theString, @"DownloadedAction") || CFStringHasSuffix(theString, @"PrintedAction") || CFStringHasSuffix(theString, @"SentAction") || CFStringHasSuffix(theString, @"ReceivedAction") || CFStringHasSuffix(theString, @"FavoritedAction") || CFStringHasSuffix(theString, @"ReadAction") || CFStringHasSuffix(theString, @"RepliedAction") || CFStringHasSuffix(theString, @"IgnoredAction") || CFStringHasSuffix(theString, @"FlaggedAction") || CFStringHasSuffix(theString, @"FlagColorAction"))
  {
    return 1;
  }

  if (CFStringHasSuffix(theString, @"FacebookAction") || CFStringHasSuffix(theString, @"TwitterAction"))
  {
    return 0;
  }

  if (CFStringHasSuffix(theString, @"Subject"))
  {
    return 1;
  }

  if (CFStringHasSuffix(theString, @"Topic"))
  {
    return 0;
  }

  return QP::ParserGrammar::hasSuggestion(this, theString, a3, a4);
}

uint64_t QP::ParserGrammar::hasSuggestion(QP::ParserGrammar *this, const __CFString *a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  QP::getUTF8StringFromCFString(a2, __p);
  if ((this + 536) == std::__tree<std::string>::find<std::string>(this + 528, __p))
  {
    goto LABEL_29;
  }

  v25 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v7 = std::__tree<std::string>::find<std::string>(this + 528, __p);
  std::map<unsigned short,std::map<unsigned short,std::string>>::map[abi:ne200100](&v25, v7 + 56);
  v8 = v26[0];
  if (!v26[0])
  {
    goto LABEL_28;
  }

  v9 = v26;
  v10 = v26[0];
  do
  {
    v11 = *(v10 + 16);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v9 = v10;
    }

    v10 = v10[v13];
  }

  while (v10);
  if (v9 == v26 || *(v9 + 16) > a3)
  {
LABEL_28:
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&v25, v26[0]);
LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  v23 = 0;
  v24[0] = 0;
  v14 = v26;
  v24[1] = 0;
  do
  {
    v15 = *(v8 + 16);
    v12 = v15 >= a3;
    v16 = v15 < a3;
    if (v12)
    {
      v14 = v8;
    }

    v8 = v8[v16];
  }

  while (v8);
  if (v14 == v26 || *(v14 + 16) > a3)
  {
    v14 = v26;
  }

  std::map<unsigned short,std::string>::map[abi:ne200100](&v23, (v14 + 5));
  if (!v24[0])
  {
    goto LABEL_27;
  }

  v17 = v24;
  v18 = v24[0];
  do
  {
    v19 = *(v18 + 16);
    v12 = v19 >= a4;
    v20 = v19 < a4;
    if (v12)
    {
      v17 = v18;
    }

    v18 = *&v18[8 * v20];
  }

  while (v18);
  if (v17 == v24 || *(v17 + 16) > a4)
  {
LABEL_27:
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v23, v24[0]);
    goto LABEL_28;
  }

  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v23, v24[0]);
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&v25, v26[0]);
  v21 = 1;
LABEL_30:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  return v21;
}

void sub_1C65E8178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&a13, a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void QP::ParserGrammar::suggestion(QP::ParserGrammar *this@<X0>, const __CFString *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, std::string *a5@<X8>)
{
  if (a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    v36 = 0;
    QP::getUTF8StringFromCFString(a2, __p);
    if ((this + 536) != std::__tree<std::string>::find<std::string>(this + 528, __p))
    {
      v33 = 0;
      v34[0] = 0;
      v34[1] = 0;
      v9 = std::__tree<std::string>::find<std::string>(this + 528, __p);
      std::map<unsigned short,std::map<unsigned short,std::string>>::map[abi:ne200100](&v33, v9 + 56);
      v10 = v34[0];
      if (v34[0])
      {
        v11 = v34;
        v12 = v34[0];
        do
        {
          v13 = *(v12 + 16);
          v14 = v13 >= a3;
          v15 = v13 < a3;
          if (v14)
          {
            v11 = v12;
          }

          v12 = v12[v15];
        }

        while (v12);
        if (v11 != v34 && *(v11 + 16) <= a3)
        {
          v31 = 0;
          v32[0] = 0;
          v16 = v34;
          v32[1] = 0;
          do
          {
            v17 = *(v10 + 16);
            v14 = v17 >= a3;
            v18 = v17 < a3;
            if (v14)
            {
              v16 = v10;
            }

            v10 = v10[v18];
          }

          while (v10);
          if (v16 == v34 || *(v16 + 16) > a3)
          {
            v16 = v34;
          }

          std::map<unsigned short,std::string>::map[abi:ne200100](&v31, (v16 + 5));
          v19 = v32[0];
          if (v32[0])
          {
            v20 = v32;
            v21 = v32[0];
            do
            {
              v22 = *(v21 + 16);
              v14 = v22 >= a4;
              v23 = v22 < a4;
              if (v14)
              {
                v20 = v21;
              }

              v21 = *&v21[8 * v23];
            }

            while (v21);
            if (v20 != v32 && *(v20 + 16) <= a4)
            {
              v26 = v32;
              v27 = v32[0];
              do
              {
                v28 = *(v27 + 16);
                v14 = v28 >= a4;
                v29 = v28 < a4;
                if (v14)
                {
                  v26 = v27;
                }

                v27 = *&v27[8 * v29];
              }

              while (v27);
              if (v26 == v32 || *(v26 + 16) > a4)
              {
                v26 = v32;
              }

              if (*(v26 + 63) < 0)
              {
                std::string::__init_copy_ctor_external(a5, v26[5], v26[6]);
                v19 = v32[0];
              }

              else
              {
                v30 = *(v26 + 5);
                a5->__r_.__value_.__r.__words[2] = v26[7];
                *&a5->__r_.__value_.__l.__data_ = v30;
              }

              std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v31, v19);
              std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&v33, v34[0]);
              goto LABEL_34;
            }
          }

          std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&v31, v32[0]);
          v10 = v34[0];
        }
      }

      std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&v33, v10);
    }

    if (*(this + 119) < 0)
    {
      std::string::__init_copy_ctor_external(a5, *(this + 12), *(this + 13));
    }

    else
    {
      *&a5->__r_.__value_.__l.__data_ = *(this + 6);
      a5->__r_.__value_.__r.__words[2] = *(this + 14);
    }

LABEL_34:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  if (*(this + 119) < 0)
  {
    v24 = *(this + 12);
    v25 = *(this + 13);

    std::string::__init_copy_ctor_external(a5, v24, v25);
  }

  else
  {
    *&a5->__r_.__value_.__l.__data_ = *(this + 6);
    a5->__r_.__value_.__r.__words[2] = *(this + 14);
  }
}

void sub_1C65E8428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(&a10, a11);
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(&a13, a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t QP::ParserGrammar::modifier(QP::ParserGrammar *this, unsigned int a2)
{
  v4 = *(this + 25);
  v2 = this + 200;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  do
  {
    v7 = *(v6 + 13);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *&v6[8 * v9];
  }

  while (v6);
  if (v5 == v2 || *(v5 + 13) > a2)
  {
    return 0;
  }

  v11 = v2;
  do
  {
    v12 = *(v3 + 13);
    v8 = v12 >= a2;
    v13 = v12 < a2;
    if (v8)
    {
      v11 = v3;
    }

    v3 = *&v3[8 * v13];
  }

  while (v3);
  if (v11 == v2 || *(v11 + 13) > a2)
  {
    v11 = v2;
  }

  return *(v11 + 14);
}

BOOL QP::ParserGrammar::isValidType(QP::ParserGrammar *this, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  v3 = *(*(this + 5) + 8);
  if (v3 < 0xE && ((0x2A01u >> v3) & 1) != 0)
  {
    return 1;
  }

  if (CFStringHasPrefix(theString, @"LocationHome") || CFStringHasPrefix(theString, @"LocationWork"))
  {
    return 0;
  }

  return CFStringHasPrefix(theString, @"LocationVehicle") == 0;
}

BOOL QP::ParserGrammar::isIgnoredTerm(QP::ParserGrammar *this, CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString))
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v10 = MutableCopy;
  CFStringLowercase(MutableCopy, *(*(this + 5) + 112));
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  QP::getUTF8StringFromCFString(MutableCopy, __p);
  v5 = *(this + 15);
  v11 = 0;
  v6 = (this + 128) != std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(v5, this + 16, __p);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    if (!MutableCopy)
    {
      return v6;
    }

    goto LABEL_8;
  }

  operator delete(__p[0]);
  if (MutableCopy)
  {
LABEL_8:
    CFRelease(MutableCopy);
  }

  return v6;
}

void sub_1C65E8764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFString *>::reset(&a16, 0);
  _Unwind_Resume(a1);
}

os_log_t ___ZL13grammarLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QPSpotlightKnowledgeSource");
  grammarLogger(void)::log = result;
  return result;
}

std::string *std::pair<std::string,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100]<std::string const&,std::map<std::string,std::set<std::string>>,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  v6 = a3 + 1;
  v7 = a3[1];
  this[1].__r_.__value_.__l.__size_ = v7;
  v8 = &this[1].__r_.__value_.__s.__data_[8];
  v9 = a3[2];
  this[1].__r_.__value_.__r.__words[2] = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *a3 = v6;
    *v6 = 0;
    a3[2] = 0;
  }

  else
  {
    this[1].__r_.__value_.__r.__words[0] = v8;
  }

  return this;
}

uint64_t std::pair<std::string,std::map<std::string,std::set<std::string>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string,std::set<std::string>>::~pair(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string,std::map<unsigned short,std::set<unsigned short>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string,std::set<unsigned short>>::~pair(uint64_t a1)
{
  std::__tree<unsigned int>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>::~pair(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__find[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity>(void *a1, void *a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v3 + 55);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = v3[5];
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v3 + 4 : v3[4];
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
      if (v12 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy(a1, a2[1]);
    std::__tree<std::string>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::set<unsigned short>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::set<unsigned short>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned short>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned short>>,0>(uint64_t a1)
{
  std::__tree<unsigned int>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::string>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::string>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<unsigned short,std::map<std::string,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::map<std::string,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::map<std::string,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,std::string>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::map<unsigned short,float>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::map<unsigned short,std::map<unsigned short,float>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::map<unsigned short,float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,float>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,std::map<unsigned short,float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,float>>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<unsigned short,float>> const&>(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<unsigned short,float>> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__construct_node<std::pair<unsigned short const,std::map<unsigned short,float>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 16) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1C65E92AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,float>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,float>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<unsigned int>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::map<unsigned short,float>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,float>,std::__tree_node<std::__value_type<unsigned short,float>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,float>,std::__tree_node<std::__value_type<unsigned short,float>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,float> const&>(v5, v5 + 1, v4 + 14);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,float> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__find_equal<unsigned short>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__find_equal<unsigned short>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 14), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 14) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 14))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F45E9B88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *,nlp::_TrieCompletion *,BOOL *),std::allocator<void (*)(void *,nlp::_TrieCompletion *,BOOL *)>,void ()(void *,nlp::_TrieCompletion *,BOOL *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void *,nlp::_TrieCompletion *,BOOL *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void nlp::CFScopedPtr<__CFSet *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,float>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 28);
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

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::set<std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::string>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<std::string,std::set<std::string>>>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string,std::map<std::string,std::set<std::string>>>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<std::string>>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string,std::map<std::string,std::set<std::string>>>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<float,float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<float,float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<float,float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<float,float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<float,float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<float,float>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1C65EA054(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1C65EA1B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 28);
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

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::set<unsigned short>>>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string,std::map<std::string,std::set<std::string>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::set<unsigned short>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::set<unsigned short>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::set<unsigned short>>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string,std::map<std::string,std::set<std::string>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<unsigned short>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<unsigned short>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<unsigned short>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::set<unsigned short>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<unsigned short>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<unsigned short>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string,std::map<std::string,std::set<std::string>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<unsigned short,std::set<std::string>>> const&>(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<unsigned short,std::set<std::string>>> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>>>::__construct_node<std::pair<unsigned short const,std::map<unsigned short,std::set<std::string>>> const&>();
  }

  return result;
}

void sub_1C65EAC10(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::set<std::string>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<unsigned short,std::set<std::string>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::set<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::set<std::string>>,std::__tree_node<std::__value_type<unsigned short,std::set<std::string>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,std::set<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::set<std::string>>,std::__tree_node<std::__value_type<unsigned short,std::set<std::string>>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::set<std::string>> const&>(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::set<std::string>> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::set<std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<std::string>>>>::__construct_node<std::pair<unsigned short const,std::set<std::string>> const&>();
  }

  return result;
}

void sub_1C65EAE1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::set<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 32);
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::map<unsigned short,std::string>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::string>,std::__tree_node<std::__value_type<unsigned short,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::string>,std::__tree_node<std::__value_type<unsigned short,std::string>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::string> const&>(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::string> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__construct_node<std::pair<unsigned short const,std::string> const&>();
  }

  return result;
}

void sub_1C65EB1E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string,std::map<std::string,std::set<std::string>>>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::string>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::string>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::string>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::string>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 32);
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

void *std::map<unsigned short,std::map<unsigned short,std::string>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::map<unsigned short,std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,std::map<unsigned short,std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<unsigned short,std::string>> const&>(v5, v5 + 1, v4 + 16);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<unsigned short,std::string>> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,std::string>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,std::string>>>>::__construct_node<std::pair<unsigned short const,std::map<unsigned short,std::string>> const&>();
  }

  return result;
}

void sub_1C65EB710(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::map<unsigned short,std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned short,QPModifier>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,QPModifier>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,QPModifier>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 26);
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

uint64_t std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned short>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<unsigned short,unsigned short>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,unsigned short>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,unsigned short>>(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 26);
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

const void *QP::fallbackCompletionKeys(QP *this, const __CFString *a2)
{
  if (QP::fallbackCompletionKeys(__CFString const*)::onceToken == -1)
  {
    if (!this)
    {
      return 0;
    }
  }

  else
  {
    QP::fallbackCompletionKeys();
    if (!this)
    {
      return 0;
    }
  }

  if (!CFDictionaryContainsKey(QP::fallbackCompletionKeys(__CFString const*)::gCompletionKeys, this))
  {
    return 0;
  }

  v3 = QP::fallbackCompletionKeys(__CFString const*)::gCompletionKeys;

  return CFDictionaryGetValue(v3, this);
}

void ___ZN2QP22fallbackCompletionKeysEPK10__CFString_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeTodayDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeYesterdayDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeThisWeekDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeLastWeekDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeThisMonthDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeLastMonthDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeThisYearDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeLastYearDate");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate1");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate2");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate3");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate4");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate5");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate6");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate7");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate8");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate9");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate10");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate11");
  CFArrayAppendValue(Mutable, @"kQPTokenDate:kQPDate:ANYDATE:RelativeMonthDate12");
  MutableCopy = CFArrayCreateMutableCopy(v0, 0, Mutable);
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-0");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-1");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-2");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-3");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-4");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-5");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlagColorAction:kQPFlagColorAction:PROACTION:FlagColorStatus-6");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlaggedAction:kQPFlaggedAction:PROACTION:FlaggedStatus-0");
  CFArrayAppendValue(MutableCopy, @"kQPTokenFlaggedAction:kQPFlaggedAction:PROACTION:FlaggedStatus-1");
  CFArrayAppendValue(MutableCopy, @"kQPTokenRepliedAction:kQPRepliedAction:PROACTION:RepliedStatus-0");
  CFArrayAppendValue(MutableCopy, @"kQPTokenRepliedAction:kQPRepliedAction:PROACTION:RepliedStatus-1");
  CFArrayAppendValue(MutableCopy, @"kQPTokenReadAction:kQPReadAction:PROACTION:ReadStatus-0");
  CFArrayAppendValue(MutableCopy, @"kQPTokenReadAction:kQPReadAction:PROACTION:ReadStatus-1");
  CFArrayAppendValue(MutableCopy, @"kQPTokenSubjectAction:kQPSubjectAction:PROACTION:SubjectStatus-1");
  CFArrayAppendValue(MutableCopy, @"kQPTokenSubjectAction:kQPSubjectAction:PROACTION:SubjectStatus-0");
  CFArrayAppendValue(MutableCopy, @"kQPTokenIgnoredAction:kQPIgnoredAction:PROACTION:ActionIgnored");
  CFArrayAppendValue(MutableCopy, @"kQPTokenMessage:kQPKind:KIND:KindMail");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindAudio");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindAudiobook");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindAudioFormatAac");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindAudioFormatAiff");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindAudioFormatMp3");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindBook");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindContacts");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindContactsFormatVcf");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindDocument");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindDocumentFormatDoc");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindDocumentFormatIwork");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindDocumentFormatPages");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindDocumentFormatPass");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindDocumentFormatPdf");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindEventFormatIcs");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindFile");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindFileFormatDat");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindFileFormatPatch");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindFileFormatTar");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImage");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImageFormatGif");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImageFormatHeic");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImageFormatJpg");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImageFormatPng");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImageFormatRaw");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindImageFormatTiff");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindPresentation");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindPresentationFormatKey");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindPresentationFormatPpt");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindSource");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindSourceFormatJava");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindSpreadsheet");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindSpreadsheetFormatNumbers");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindSpreadsheetFormatXls");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindTextFormatRtf");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindTextFormatTxt");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindVideo");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindVideoFormatMov");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindVideoFormatMp4");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachment:kQPAttachedKind:PROATTACHED:KindVideoFormatQuicktime");
  CFArrayAppendValue(MutableCopy, @"kQPTokenAttachmentAny:kQPAttachment:PROATTACHMOD:KindAttachment");
  v3 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v3, @"Search", Mutable);
  CFDictionarySetValue(v3, @"Mail", MutableCopy);
  QP::fallbackCompletionKeys(__CFString const*)::gCompletionKeys = v3;
}

const void *QP::fallbackTokenKeys(QP *this, const __CFString *a2)
{
  if (QP::fallbackTokenKeys(__CFString const*)::onceToken == -1)
  {
    if (!this)
    {
      return 0;
    }
  }

  else
  {
    QP::fallbackTokenKeys();
    if (!this)
    {
      return 0;
    }
  }

  if (!CFDictionaryContainsKey(QP::fallbackTokenKeys(__CFString const*)::gTokenKeys, this))
  {
    return 0;
  }

  v3 = QP::fallbackTokenKeys(__CFString const*)::gTokenKeys;

  return CFDictionaryGetValue(v3, this);
}

void ___ZN2QP17fallbackTokenKeysEPK10__CFString_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"TOKEN:kQPTokenDate");
  MutableCopy = CFArrayCreateMutableCopy(v0, 0, Mutable);
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenAttachment");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenAttachmentAny");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenMessage");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenFlagColorAction");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenFlaggedAction");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenReadAction");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenRepliedAction");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenSubjectAction");
  CFArrayAppendValue(MutableCopy, @"TOKEN:kQPTokenIgnoredAction");
  v3 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v3, @"Search", Mutable);
  CFDictionarySetValue(v3, @"Mail", MutableCopy);
  QP::fallbackTokenKeys(__CFString const*)::gTokenKeys = v3;
}

void QP::dictStrKeytoIntKey(const __CFString *this, const void *a2, __CFDictionary *a3, void *a4)
{
  v11.location = 0;
  v11.length = CFStringGetLength(this);
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberFormatterCreate(*MEMORY[0x1E695E480], 0, kCFNumberFormatterNoStyle);
  v9 = CFNumberFormatterCreateNumberFromString(v7, v8, this, &v11, 1uLL);
  if (v9)
  {
    v10 = v9;
    CFDictionaryAddValue(a3, v9, a2);
    CFRelease(v10);
  }

  CFRelease(v8);
}

BOOL QP::bplistMissingAnything(QP *this, const __CFDictionary *a2)
{
  v2 = this;
  keys[1] = *MEMORY[0x1E69E9840];
  if (CFDictionaryGetCount(this) == 1)
  {
    values = 0;
    keys[0] = 0;
    CFDictionaryGetKeysAndValues(v2, keys, &values);
    v3 = CFGetTypeID(values);
    if (v3 != CFDictionaryGetTypeID())
    {
      result = 1;
      goto LABEL_23;
    }

    v2 = values;
  }

  Value = CFDictionaryGetValue(v2, @"completion_keys");
  v5 = CFDictionaryGetValue(v2, @"completion_suggestion_keys");
  v6 = CFDictionaryGetValue(v2, @"completion_token_keys");
  v7 = CFDictionaryGetValue(v2, @"FILE-EXTENSIONS");
  v8 = CFDictionaryGetValue(v2, @"UTI-CORE");
  v9 = CFDictionaryGetValue(v2, @"GROUPINGS");
  if (Value)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  result = v10 || v6 == 0 || v8 == 0 || v7 == 0 || v9 == 0;
LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void QP::loadCompletionsFromPlist(const __CFDictionary *a1, const __CFDictionary *a2, const void **a3, const void **a4, const void **a5)
{
  if (a1 && !QP::bplistMissingAnything(a1, a2))
  {
    Value = CFDictionaryGetValue(a1, @"completion_keys");
    v11 = CFDictionaryGetValue(a1, @"completion_suggestion_keys");
    v12 = CFDictionaryGetValue(a1, @"completion_token_keys");
    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryApplyFunction(Value, QP::dictStrKeytoIntKey, Mutable);
    nlp::CFScopedPtr<__CFDictionary const*>::reset(a3, Mutable);
    v15 = v11 ? CFDictionaryCreateCopy(v13, v11) : 0;
    nlp::CFScopedPtr<__CFDictionary const*>::reset(a4, v15);
    v16 = v12 ? CFDictionaryCreateCopy(v13, v12) : 0;
    nlp::CFScopedPtr<__CFDictionary const*>::reset(a5, v16);
    v17 = CFDictionaryGetValue(a1, @"completions");
    if (v17)
    {
      BytePtr = CFDataGetBytePtr(v17);
      v20 = nlp::BurstTrieCreateWithBytes(BytePtr, v19);
      if (v20)
      {
        v21 = v20;
        *a2 = nlp::BurstTrieCreateMutableCopy(v20);

        nlp::BurstTrieRelease(v21);
      }
    }
  }
}

void QP::generateCompletions(unint64_t a1, QP *this, const __CFString *a3, const __CFLocale *a4, uint64_t a5, const void **a6, const void **a7, const void **a8)
{
  theArray = QP::fallbackCompletionKeys(this, this);
  v40 = QP::fallbackTokenKeys(this, v12);
  v46 = this;
  if (!this || !theArray || !v40)
  {
    return;
  }

  v37 = a7;
  v38 = a6;
  v13 = *MEMORY[0x1E695E480];
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v63 = theDict;
  Mutable = CFDictionaryCreateMutable(v13, 0, v14, v15);
  v62 = Mutable;
  v16 = v13;
  v48 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v61 = v48;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_37;
  }

  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
    v19 = copyLocalizedStringForDomain(a1, v46, @"Completions", ValueAtIndex, a3);
    v60 = v19;
    v20 = copyLocalizedStringForDomain(a1, v46, @"Suggestions", ValueAtIndex, a3);
    v59 = v20;
    v21 = copyLocalizedStringForDomain(a1, v46, @"Tokens", ValueAtIndex, a3);
    v22 = v21;
    v58 = v21;
    if (!v19)
    {
      break;
    }

    if (v20)
    {
      CFDictionaryAddValue(theDict, ValueAtIndex, v20);
      if (v22)
      {
        CFDictionarySetValue(v48, ValueAtIndex, v22);
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v16, v19, @" | ");
      v57 = ArrayBySeparatingStrings;
      v24 = CFArrayGetCount(ArrayBySeparatingStrings);
      if (v24)
      {
        valuePtr = v17 + 1;
        v55 = CFNumberCreate(v16, kCFNumberIntType, &valuePtr);
        cf = v55;
        CFDictionarySetValue(Mutable, v55, ValueAtIndex);
        if (v24 >= 1)
        {
          v25 = 0;
          while (1)
          {
            v26 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v25);
            MutableCopy = CFStringCreateMutableCopy(v16, 0, v26);
            v54 = MutableCopy;
            CFStringLowercase(MutableCopy, a4);
            v64.length = CFStringGetLength(MutableCopy);
            v64.location = 0;
            CFStringFindAndReplace(MutableCopy, @"’", @"'", v64, 0);
            __p = 0;
            v52 = 0;
            v53 = 0;
            QP::getUTF8StringFromCFString(MutableCopy, &__p);
            v28 = v53 >= 0 ? &__p : __p;
            v29 = v53 >= 0 ? HIBYTE(v53) : v52;
            nlp::BurstTrieAdd(a5, v28, v29, valuePtr);
            if ((SHIBYTE(v53) & 0x80000000) == 0)
            {
              break;
            }

            operator delete(__p);
            if (MutableCopy)
            {
              goto LABEL_23;
            }

LABEL_24:
            if (v24 == ++v25)
            {
              goto LABEL_25;
            }
          }

          if (!MutableCopy)
          {
            goto LABEL_24;
          }

LABEL_23:
          CFRelease(MutableCopy);
          goto LABEL_24;
        }

LABEL_25:
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (ArrayBySeparatingStrings)
      {
        CFRelease(ArrayBySeparatingStrings);
      }
    }

LABEL_30:
    if (v22)
    {
      CFRelease(v22);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (++v17 == Count)
    {
      goto LABEL_37;
    }
  }

  if (v20)
  {
    goto LABEL_30;
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_37:
  Copy = CFDictionaryCreateCopy(v16, Mutable);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v38, Copy);
  v31 = CFDictionaryCreateCopy(v16, theDict);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v37, v31);
  v32 = CFArrayGetCount(v40);
  if (v32 >= 1)
  {
    for (i = 0; i != v32; ++i)
    {
      v34 = CFArrayGetValueAtIndex(v40, i);
      v35 = copyLocalizedStringForDomain(a1, v46, @"Tokens", v34, a3);
      __p = v35;
      if (v35)
      {
        CFDictionaryAddValue(v48, v34, v35);
        CFRelease(v35);
      }
    }
  }

  v36 = CFDictionaryCreateCopy(v16, v48);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(a8, v36);
  if (v48)
  {
    CFRelease(v48);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_1C65EC900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  nlp::CFScopedPtr<__CFDictionary *>::reset((v33 - 104), 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v33 - 96), 0);
  _Unwind_Resume(a1);
}

uint64_t QP::PhotosFormatter::setParse(QP::SpotlightFormatter *this, const __CFString ***a2)
{
  if (*(*a2 + 81) == 1)
  {
    QP::SpotlightFormatter::clear(this);
    QP::Formatter::clear(this);
    v4 = a2[1];
    v22 = *a2;
    v23 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::Formatter::setParse(this, &v22);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v5 = *a2;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1174405120;
    v16[2] = ___ZN2QP15PhotosFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke;
    v16[3] = &unk_1F45E8D38;
    v16[5] = this;
    v16[6] = v5;
    v6 = a2[1];
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16[4] = &v18;
    QP::Parse::enumerateParseAttributes(v5, v16);
    v7 = *(v19 + 6);
    v8 = v7 > 0;
    if (v7 >= 1)
    {
      QP::Formatter::setResultValue(this, kQPParseResultIsEntitySearchKey, *MEMORY[0x1E695E4D0]);
      valuePtr = 3;
      v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v14 = v9;
      QP::Formatter::setResultValue(this, kQPParseResultConfidenceKey, v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = a2[1];
    v12 = *a2;
    v13 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = QP::SpotlightFormatter::setParse(this, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v8;
}

void sub_1C65ECC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a11, 0);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void ___ZN2QP15PhotosFormatter8setParseENSt3__110shared_ptrINS_5ParseEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (QP::ParseAttribute::flag(*a2) == 1 || QP::ParseAttribute::flag(*a2) == 2 || QP::ParseAttribute::flag(*a2) == 3 || QP::ParseAttribute::flag(*a2) == 4)
  {
    v5 = **(a1 + 48);
    v6 = *(a2 + 8);
    v12 = *a2;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 64))(v4, v5, &v12);
    v7 = v13;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = **(a1 + 48);
    v9 = *a2;
    v10 = *(a2 + 8);
    v11[0] = v9;
    v11[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    QP::PhotosFormatter::updateEntityParseWithAttribute(v4, v8, v11);
    if (v10)
    {
      v7 = v10;
LABEL_8:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

void sub_1C65ECD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void QP::PhotosFormatter::updateEntityParseWithAttribute(QP::Formatter *a1, const __CFString *a2, uint64_t *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = *a3;
  v8 = std::__shared_weak_count::lock(*(*a3 + 184));
  v9 = CFStringCreateWithSubstring(v6, a2, *(*(v7 + 176) + 72));
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  v10 = *a3;
  v11 = std::__shared_weak_count::lock(*(*a3 + 184));
  v12 = *(v10 + 176);
  if (v12[23] < 0)
  {
    v12 = *v12;
  }

  v13 = CFStringCreateWithCString(v6, v12, 0x8000100u);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  v14 = kQPParseResultAttributeTypeKey;
  v15 = *a3;
  v16 = std::__shared_weak_count::lock(*(*a3 + 184));
  QP::Formatter::setParseAttribute(a1, v14, v13, *(*(v15 + 176) + 72));
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v17 = *a3;
  v18 = *(*a3 + 184);
  if (v18 && (v18 = std::__shared_weak_count::lock(v18)) != 0)
  {
    v19 = *(v17 + 176);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v19 + 119);
  if (v20 < 0)
  {
    v20 = *(v19 + 104);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    v21 = *a3;
    v22 = std::__shared_weak_count::lock(*(*a3 + 184));
    v23 = *(v21 + 176);
    v24 = (v23 + 96);
    if (*(v23 + 119) < 0)
    {
      v24 = *v24;
    }

    v25 = CFStringCreateWithCString(v6, v24, 0x8000100u);
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    v26 = kQPParseResultAttributeStemKey;
    v27 = *a3;
    v28 = std::__shared_weak_count::lock(*(*a3 + 184));
    QP::Formatter::setParseAttribute(a1, v26, v25, *(*(v27 + 176) + 72));
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  v29 = *(a1 + 26);
  if (v29)
  {
    if (*(*(a1 + 1) + 72) == 1)
    {
      v30 = QP::SpellCheckWrapper::spellCheck(v29, v9, 10);
      if (v30)
      {
        v31 = kQPParseResultAttributeSpellCorrectKey;
        v32 = *a3;
        v33 = std::__shared_weak_count::lock(*(*a3 + 184));
        QP::Formatter::setParseAttribute(a1, v31, v30, *(*(v32 + 176) + 72));
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1C65ECFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_48c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c37_ZTSNSt3__110shared_ptrIN2QP5ParseEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::PhotosFormatter::update(QP::PhotosFormatter *this)
{
  if (!*(this + 26))
  {
    v1 = *(this + 1);
    if (*(v1 + 72) == 1)
    {
      v2 = *(v1 + 112);
      if (v2)
      {
        CFLocaleGetValue(v2, *MEMORY[0x1E695E6F0]);
      }

      operator new();
    }
  }

  QP::Formatter::update(this);
}

void QP::PhotosFormatter::updateParseWithDateAttribute(QP::Formatter *a1, const __CFString *a2, CFRange **a3)
{
  v129 = *MEMORY[0x1E69E9840];
  v6 = a3[1];
  v123 = *a3;
  v124 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v125 = &unk_1F45E8F08;
  *(&v125 + 1) = a3;
  *&v126 = a1;
  *(&v126 + 1) = &v125;
  QP::Formatter::updateParseWithDateAttribute(a1, a2, &v123, &v125);
  std::__function::__value_func<void ()(__CFDictionary const*)>::~__value_func[abi:ne200100](&v125);
  if (v124)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v124);
  }

  v7 = *a3;
  length = (*a3)[11].length;
  if (length)
  {
    v9 = std::__shared_weak_count::lock(length);
    if (v9)
    {
      v10 = v9;
      location = v7[11].location;
      if (!location)
      {
LABEL_109:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_110;
      }

      v121 = 0;
      v122 = 0;
      v116 = 0;
      v117 = &v116;
      v118 = 0x3002000000;
      v119 = __Block_byref_object_copy__10;
      v120 = __Block_byref_object_dispose__10;
      v12 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v115 = Mutable;
      v14 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
      v114 = v14;
      v15 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v113 = v15;
      v107 = 0;
      v108 = &v107;
      v109 = 0x3002000000;
      v110 = __Block_byref_object_copy__1_0;
      v111 = __Block_byref_object_dispose__2_0;
      v112 = 0;
      v112 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
      v52 = v14;
      if (QP::ParserGrammar::hasTranslations(*(a1 + 3), &(*a3)[3]))
      {
        v51 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v106 = v51;
        v16 = *(location + 120);
        v17 = *(location + 128);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v16 && ((*a3)[4].length & 0x10000) == 0)
        {
          v18 = *(v16 + 152);
          v125 = *(v16 + 136);
          v126 = v18;
          v127 = *(v16 + 168);
          v128 = *(v16 + 184);
          v105 = 0;
          v103 = 0u;
          v104 = 0u;
          v19 = *(v16 + 24);
          v20 = *(v16 + 56);
          v103 = *(v16 + 40);
          v104 = v20;
          v105 = *(v16 + 72);
          v102 = v19;
          v21 = *(v16 + 96);
          v98 = *(v16 + 80);
          v99 = v21;
          v100 = *(v16 + 112);
          v101 = *(v16 + 128);
          isEmpty = QP::DateComponents::isEmpty(&v125);
          v23 = *(v16 + 12);
          if (v23 > 5)
          {
            v24 = isEmpty;
          }

          else
          {
            v24 = 0;
          }

          if (v24 == 1)
          {
            v50 = v23 < 0x5B;
          }

          else if (v23 == 4)
          {
            v50 = QP::DateComponents::componentsCount(&v102) > 1 || QP::DateComponents::componentsCount(&v98) >= 2;
            v23 = *(v16 + 12);
          }

          else
          {
            v50 = 0;
          }

          if ((v23 - 1) <= 0x3F && ((1 << (v23 - 1)) & 0x8000000008008001) != 0 || v23 == 102)
          {
            v50 = 1;
          }

          v29 = *(a1 + 2);
          v96 = *(a1 + 1);
          v97 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            v23 = *(v16 + 12);
          }

          QP::DateConverter::resolveDateComponentsAsRange(&v96, *(v16 + 16), v23, &v102, &v98, &v125, v50);
          if (v97)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          v90 = 0;
          v91 = &v90;
          v92 = 0x3002000000;
          v93 = __Block_byref_object_copy__1_0;
          v94 = __Block_byref_object_dispose__2_0;
          v95 = 0;
          v95 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
          v88[0] = 0;
          v88[1] = v88;
          v88[2] = 0x3002000000;
          v88[3] = __Block_byref_object_copy__1_0;
          v88[4] = __Block_byref_object_dispose__2_0;
          v89 = 0;
          v89 = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
          v86[0] = 0;
          v86[1] = v86;
          v86[2] = 0x3002000000;
          v86[3] = __Block_byref_object_copy__10;
          v86[4] = __Block_byref_object_dispose__10;
          started = 0;
          v30 = *(a1 + 5);
          v84 = v16;
          v85 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          started = QP::DateFormatter::copyISODisplayForStartDate(v30, &v84, *(v16 + 16), 0, 0, 0);
          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          v81 = v17;
          v82[0] = 0;
          v82[1] = v82;
          v82[2] = 0x3002000000;
          v82[3] = __Block_byref_object_copy__10;
          v82[4] = __Block_byref_object_dispose__10;
          v83 = 0;
          v31 = *(a1 + 5);
          v80 = v16;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v83 = QP::DateFormatter::copyISODisplayForEndDate(v31, &v80, *(v16 + 16), 0, 0, 0, 1);
          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          v32 = *(a1 + 3);
          v33 = *a3;
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 1174405120;
          v67[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke;
          v67[3] = &unk_1F45E8E18;
          v67[8] = a1;
          v67[9] = v33;
          v34 = a3[1];
          v68 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v79 = v50;
          v67[4] = v86;
          v67[5] = v82;
          v67[6] = &v90;
          v69 = v16;
          v70 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v71 = v102;
          v72 = v103;
          v73 = v104;
          v75 = v98;
          v76 = v99;
          v77 = v100;
          v78 = v101;
          v74 = v105;
          v67[7] = v88;
          QP::ParserGrammar::translations(v32, &v33[3], v67);
          v49 = Mutable;
          v66 = CFStringCreateWithSubstring(v12, a2, *(location + 72));
          v48 = v66;
          QP::Formatter::setParseAttribute(a1, kQPParseAttributeDateKey, v66, (*a3)[1]);
          Count = CFArrayGetCount(v91[5]);
          if (Count)
          {
            v36 = CFStringCreateByCombiningStrings(v12, v91[5], @" || ");
            v57 = v36;
            if (CFStringGetLength(v36))
            {
              v47 = v117;
              if (Count <= 1)
              {
                v37 = CFStringCreateWithFormat(v12, 0, @"%@", v36);
              }

              else
              {
                v37 = CFStringCreateWithFormat(v12, 0, @"(%@)", v36);
              }

              nlp::CFScopedPtr<__CFString const*>::reset(v47 + 5, v37);
              if (CFStringGetLength(v117[5]))
              {
                QP::Formatter::setParseAttribute(a1, kQPParseAttributeDescriptionKey, v117[5], (*a3)[1]);
              }

              ++*(a1 + 10);
            }

            if (v36)
            {
              CFRelease(v36);
            }
          }

          v38 = *(a1 + 5);
          v63 = v16;
          v64 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          Mutable = v49;
          v39 = QP::DateFormatter::copyDisplayForDate(v38, &v63, v50, 0);
          v65 = v39;
          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v64);
          }

          if (v39)
          {
            v57 = 0;
            v58 = &v57;
            v59 = 0x3002000000;
            v60 = __Block_byref_object_copy__10;
            v61 = __Block_byref_object_dispose__10;
            cf = 0;
            v40 = *a3;
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 0x40000000;
            v56[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_24;
            v56[3] = &unk_1E8267230;
            v56[4] = &v57;
            v56[5] = a1;
            QP::ParseAttribute::actionsForRoot(v40, v56);
            v41 = v58[5];
            if (v41)
            {
              v42 = CFStringCreateWithFormat(v12, 0, v41, v39);
              nlp::CFScopedPtr<__CFString const*>::reset(&v122, v42);
              QP::SpotlightFormatter::addDisplay(a1, v122, (*a3)[1]);
              CFDictionarySetValue(v15, @"kQPDisplay", v122);
            }

            else
            {
              Copy = CFStringCreateCopy(v12, v39);
              nlp::CFScopedPtr<__CFString const*>::reset(&v122, Copy);
              QP::SpotlightFormatter::addDisplay(a1, v39, (*a3)[1]);
              CFDictionarySetValue(v15, @"kQPDisplay", v39);
              v55 = 0;
              v44 = CFStringCreateWithFormat(v12, 0, @"%d", *(v16 + 16));
              v54 = v17;
              v55 = v44;
              v45 = *(a1 + 3);
              v53[0] = MEMORY[0x1E69E9820];
              v53[1] = 1174405120;
              v53[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_35;
              v53[3] = &unk_1F45E8E50;
              v53[6] = a1;
              v53[7] = v16;
              if (v17)
              {
                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v53[4] = &v116;
              v53[5] = &v107;
              QP::ParserGrammar::tokens(v45, @"kQPDate", v44, v39, v53);
              if (v54)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              }

              nlp::CFScopedPtr<__CFString const*>::reset(&v55, 0);
            }

            _Block_object_dispose(&v57, 8);
            if (cf)
            {
              CFRelease(cf);
            }

            CFRelease(v39);
            Mutable = v49;
          }

          if (v48)
          {
            CFRelease(v48);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
          }

          _Block_object_dispose(v82, 8);
          if (v83)
          {
            CFRelease(v83);
          }

          _Block_object_dispose(v86, 8);
          if (started)
          {
            CFRelease(started);
          }

          _Block_object_dispose(v88, 8);
          if (v89)
          {
            CFRelease(v89);
          }

          _Block_object_dispose(&v90, 8);
          if (v95)
          {
            CFRelease(v95);
          }
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        goto LABEL_94;
      }

      v25 = *a3;
      QP::getUTF8StringFromCFString(kQPParseAttributeDateExtensionKey, &v125);
      v26 = QP::equals(&v25[3].location, &v125);
      v27 = v26;
      if (SBYTE7(v126) < 0)
      {
        operator delete(v125);
        if (!v27)
        {
          goto LABEL_94;
        }
      }

      else if (!v26)
      {
LABEL_94:
        if (*(*(a1 + 1) + 39) != 1 || (QP::DatePeriod::isSingleYearPeriod(*(location + 120)) & 1) == 0)
        {
          QP::SpotlightFormatter::addTokens(a1, @"kQPTokenDate", v108[5]);
          QP::SpotlightFormatter::addSuggestion(a1, v122);
        }

        QP::SpotlightFormatter::addDescription(a1, v117[5]);
        QP::SpotlightFormatter::addAttributes(a1, v15);
        QP::SpotlightFormatter::addPrimaryCategories(a1, Mutable);
        QP::SpotlightFormatter::addSecondaryCategory(a1, v52);
        _Block_object_dispose(&v107, 8);
        if (v112)
        {
          CFRelease(v112);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        _Block_object_dispose(&v116, 8);
        if (v121)
        {
          CFRelease(v121);
        }

        if (v122)
        {
          CFRelease(v122);
        }

        goto LABEL_109;
      }

      v28 = CFStringCreateWithSubstring(v12, a2, *(location + 72));
      *&v125 = v28;
      QP::Formatter::setParseAttribute(a1, kQPParseAttributeDateExtensionKey, v28, (*a3)[1]);
      ++*(a1 + 10);
      if (v28)
      {
        CFRelease(v28);
      }

      goto LABEL_94;
    }
  }

LABEL_110:
  v46 = *MEMORY[0x1E69E9840];
}

void sub_1C65EDCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, const void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, const void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53, uint64_t a54, std::__shared_weak_count *a55)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a26, 0);
  _Block_object_dispose(&a33, 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v57 + 40), 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a41, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a42, 0);
  if (a55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a55);
  }

  if (a53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a53);
  }

  _Block_object_dispose(&STACK[0x200], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x228], 0);
  _Block_object_dispose(&STACK[0x240], 8);
  nlp::CFScopedPtr<__CFString const*>::reset(&STACK[0x268], 0);
  _Block_object_dispose(&STACK[0x270], 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&STACK[0x298], 0);
  _Block_object_dispose(&STACK[0x2A0], 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&STACK[0x2C8], 0);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  nlp::CFScopedPtr<__CFDictionary *>::reset(&STACK[0x358], 0);
  _Block_object_dispose(&STACK[0x360], 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&STACK[0x388], 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(&STACK[0x390], 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&STACK[0x398], 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v58 - 256), 0);
  _Block_object_dispose((v58 - 248), 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v58 - 208), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v58 - 200), 0);
  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__1_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t QP::DateComponents::componentsCount(QP::DateComponents *this)
{
  v1 = *(this + 3);
  v2 = v1 >= 0;
  if (v1 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (*(this + 4) < 0)
  {
    v3 = v2;
  }

  v4 = vcgez_s32(*(this + 4));
  v5.i32[0] = *this;
  v5.i32[1] = *(this + 8);
  v5.i64[1] = *(this + 44);
  v6 = vandq_s8(vcgezq_s32(v5), xmmword_1C66321C0);
  v6.i32[0] = vaddvq_s32(v6) & 0xF;
  *v6.i8 = vcnt_s8(*v6.i8);
  v6.i16[0] = vaddlv_u8(*v6.i8);
  return v6.i32[0] + (*(this + 5) >= 0) + (v4.i8[4] & 1u) - v4.i32[0] + v3;
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 1174405120;
  v37[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2;
  v37[3] = &unk_1F45E8DA8;
  v42 = v5;
  v43 = v4;
  v6 = *(a1 + 80);
  v44 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v56 = *(a1 + 216);
  v38 = *(a1 + 32);
  v39 = *(a1 + 48);
  v8 = *(a1 + 88);
  v7 = *(a1 + 96);
  v45 = a2;
  v46 = v8;
  v47 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *(a1 + 104);
  v49 = *(a1 + 120);
  v50 = *(a1 + 136);
  v9 = *(a1 + 152);
  v10 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v10;
  v54 = *(a1 + 192);
  v11 = *(a1 + 208);
  v51 = v9;
  v55 = v11;
  v40 = *(a1 + 56);
  v41 = &v57;
  QP::ParseAttribute::actionsForRoot(v4, v37);
  if ((v58[3] & 1) == 0)
  {
    v12 = *(v5 + 24);
    v13 = *(a1 + 72);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1174405120;
    v20[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_13;
    v20[3] = &unk_1F45E8DE0;
    v36 = *(a1 + 216);
    v21 = *(a1 + 32);
    v14 = *(a1 + 48);
    v24 = v5;
    v25 = a2;
    v22 = v14;
    v15 = *(a1 + 96);
    v26 = *(a1 + 88);
    v27 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(a1 + 120);
    v28 = *(a1 + 104);
    v29 = v16;
    v30 = *(a1 + 136);
    v17 = *(a1 + 176);
    v32 = *(a1 + 160);
    v18 = *(a1 + 152);
    v33 = v17;
    v34 = *(a1 + 192);
    v19 = *(a1 + 208);
    v31 = v18;
    v35 = v19;
    v23 = *(a1 + 56);
    QP::ParserGrammar::actions(v12, (v13 + 48), kQPSymbolIdDefault, kQPSymbolIdActionDefault, v20);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Block_object_dispose(&v57, 8);
}

void sub_1C65EE2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  _Block_object_dispose((v51 - 96), 8);
  _Unwind_Resume(a1);
}

void QP::ParseAttribute::actionsForRoot(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      v11 = 0;
      v12[0] = 0;
      v12[1] = 0;
      std::set<unsigned short>::set[abi:ne200100](&v11, (v2 + 5));
      v5 = v11;
      if (v11 != v12)
      {
        do
        {
          (*(a2 + 16))(a2, *(v2 + 16), *(v5 + 13));
          v6 = v5[1];
          if (v6)
          {
            do
            {
              v7 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = v5[2];
              v8 = *v7 == v5;
              v5 = v7;
            }

            while (!v8);
          }

          v5 = v7;
        }

        while (v7 != v12);
      }

      std::__tree<unsigned int>::destroy(&v11, v12[0]);
      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v8 = *v10 == v2;
          v2 = v10;
        }

        while (!v8);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v6 = *(v5 + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3;
  v10[3] = &unk_1F45E8D70;
  v25 = *(a1 + 232);
  v11 = *(a1 + 32);
  v7 = *(a1 + 48);
  v14 = v5;
  v12 = v7;
  v15 = *(a1 + 96);
  v8 = *(a1 + 112);
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 120);
  v18 = *(a1 + 136);
  v19 = *(a1 + 152);
  v20 = *(a1 + 168);
  v9 = *(a1 + 192);
  v21 = *(a1 + 176);
  v22 = v9;
  v23 = *(a1 + 208);
  v24 = *(a1 + 224);
  v13 = *(a1 + 56);
  QP::ParserGrammar::actions(v6, (v4 + 48), a2, a3, v10);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1C65EE554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  CFStringFromString = QP::createCFStringFromString(a2);
  v19 = CFStringFromString;
  if (*(a1 + 216))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, *(a1 + 80), CFStringFromString, v5, *(*(*(a1 + 40) + 8) + 40));
    v18 = v6;
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v20.length = CFArrayGetCount(v7);
    v20.location = 0;
    if (!CFArrayContainsValue(v7, v20, v6))
    {
      CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 40), v6);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v8 = *(v3 + 8);
    v10 = *(v8 + 80);
    v9 = *(v8 + 88);
    v11 = *(*(a1 + 88) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_4;
    v17[3] = &unk_1E82671E0;
    v17[4] = *(a1 + 56);
    QP::enumerateQueryWithAction(v9, v10, CFStringFromString, 0, v11, (a1 + 104), (a1 + 160), v17);
    v12 = *MEMORY[0x1E695E480];
    v13 = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], *(*(*(a1 + 56) + 8) + 40), @" && ");
    v18 = v13;
    if (CFArrayGetCount(*(*(*(a1 + 56) + 8) + 40)) < 2)
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v22.length = CFArrayGetCount(v16);
      v22.location = 0;
      if (!CFArrayContainsValue(v16, v22, v13))
      {
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 40), v13);
      }
    }

    else
    {
      v14 = CFStringCreateWithFormat(v12, 0, @"(%@)", v13);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v21.length = CFArrayGetCount(v15);
      v21.location = 0;
      if (!CFArrayContainsValue(v15, v21, v14))
      {
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 40), v14);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    CFArrayRemoveAllValues(*(*(*(a1 + 56) + 8) + 40));
    if (v13)
    {
      CFRelease(v13);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C65EE7F4(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_4(uint64_t a1, const void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7.length = CFArrayGetCount(v4);
  v7.location = 0;
  if (!CFArrayContainsValue(v4, v7, a2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);

    CFArrayAppendValue(v5, a2);
  }
}

uint64_t __copy_helper_block_e8_88c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE104160(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  *(result + 88) = *(a2 + 88);
  *(result + 96) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_88c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE104c25_ZTSN2QP14DateComponentsE160c25_ZTSN2QP14DateComponentsE(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *__copy_helper_block_e8_80c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE104c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE120176(void *result, void *a2)
{
  v2 = a2[11];
  result[10] = a2[10];
  result[11] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[14];
  result[13] = a2[13];
  result[14] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_80c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE104c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE120c25_ZTSN2QP14DateComponentsE176c25_ZTSN2QP14DateComponentsE(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_13(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  CFStringFromString = QP::createCFStringFromString(a2);
  v19 = CFStringFromString;
  if (*(a1 + 208))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, *(a1 + 72), CFStringFromString, v5, *(*(*(a1 + 40) + 8) + 40));
    v18 = v6;
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v20.length = CFArrayGetCount(v7);
    v20.location = 0;
    if (!CFArrayContainsValue(v7, v20, v6))
    {
      CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 40), v6);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v8 = *(v3 + 8);
    v10 = *(v8 + 80);
    v9 = *(v8 + 88);
    v11 = *(*(a1 + 80) + 16);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_14;
    v17[3] = &unk_1E8267208;
    v17[4] = *(a1 + 56);
    QP::enumerateQueryWithAction(v9, v10, CFStringFromString, 0, v11, (a1 + 96), (a1 + 152), v17);
    v12 = *MEMORY[0x1E695E480];
    v13 = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], *(*(*(a1 + 56) + 8) + 40), @" && ");
    v18 = v13;
    if (CFArrayGetCount(*(*(*(a1 + 56) + 8) + 40)) < 2)
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v22.length = CFArrayGetCount(v16);
      v22.location = 0;
      if (!CFArrayContainsValue(v16, v22, v13))
      {
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 40), v13);
      }
    }

    else
    {
      v14 = CFStringCreateWithFormat(v12, 0, @"(%@)", v13);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v21.length = CFArrayGetCount(v15);
      v21.location = 0;
      if (!CFArrayContainsValue(v15, v21, v14))
      {
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 40), v14);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    CFArrayRemoveAllValues(*(*(*(a1 + 56) + 8) + 40));
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C65EEC00(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 64), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 56), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_14(uint64_t a1, const void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7.length = CFArrayGetCount(v4);
  v7.location = 0;
  if (!CFArrayContainsValue(v4, v7, a2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);

    CFArrayAppendValue(v5, a2);
  }
}

uint64_t __copy_helper_block_e8_80c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE96152(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_80c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE96c25_ZTSN2QP14DateComponentsE152c25_ZTSN2QP14DateComponentsE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *__copy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE88c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE104160(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[12];
  result[11] = a2[11];
  result[12] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_72c47_ZTSNSt3__110shared_ptrIN2QP14ParseAttributeEEE88c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE104c25_ZTSN2QP14DateComponentsE160c25_ZTSN2QP14DateComponentsE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_24(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = *(a1 + 40);
    if (QP::ParserGrammar::hasSuggestion(*(v6 + 24), kQPParseAttributeDateKey, a2, a3))
    {
      v7 = *(*(a1 + 32) + 8);
      QP::ParserGrammar::suggestion(*(v6 + 24), kQPParseAttributeDateKey, a2, a3, &__p);
      CFStringFromString = QP::createCFStringFromString(&__p);
      nlp::CFScopedPtr<__CFString const*>::reset((v7 + 40), CFStringFromString);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1C65EEE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP15PhotosFormatter28updateParseWithDateAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_35(void *a1, const void *a2, int a3, CFStringRef str, const __CFString *a5)
{
  v8 = a1[6];
  IntValue = CFStringGetIntValue(str);
  v10 = *(v8 + 40);
  v11 = a1[8];
  v30 = a1[7];
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = QP::DateFormatter::copyDisplayForDate(v10, &v30, IntValue, 1u, 0, 0);
  v32 = v12;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v29 = Mutable;
  v15 = *(v8 + 40);
  v16 = a1[8];
  v26 = a1[7];
  v27 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  started = QP::DateFormatter::copyISODisplayForStartDate(v15, &v26, IntValue, 0, 1, 0);
  v28 = started;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v18 = *(v8 + 40);
  v19 = a1[8];
  v23 = a1[7];
  v24 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = QP::DateFormatter::copyISODisplayForEndDate(v18, &v23, IntValue, 0, 1, 0, 1);
  v25 = v20;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a5)
  {
    MutableCopy = CFStringCreateMutableCopy(v13, 0, a5);
    v33.length = CFStringGetLength(MutableCopy);
    v33.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%1@", started, v33, 0);
    v34.length = CFStringGetLength(MutableCopy);
    v34.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%2@", v20, v34, 0);
    CFDictionarySetValue(Mutable, @"QUERY", MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    v22 = *(*(a1[4] + 8) + 40);
    if (v22)
    {
      CFDictionarySetValue(Mutable, @"QUERY", v22);
    }
  }

  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", v12);
  CFArrayAppendValue(*(*(a1[5] + 8) + 40), Mutable);
  if (v20)
  {
    CFRelease(v20);
  }

  if (started)
  {
    CFRelease(started);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1C65EF100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v12 = va_arg(va3, const void *);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va2, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va3, 0);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_56c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c43_ZTSNSt3__110shared_ptrIN2QP10DatePeriodEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void QP::PhotosFormatter::~PhotosFormatter(QP::PhotosFormatter *this)
{
  QP::PhotosFormatter::~PhotosFormatter(this);

  JUMPOUT(0x1C695B850);
}

{
  *this = &unk_1F45E8E90;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    MEMORY[0x1C695B850](v2, 0xC400A2AC0F1);
  }

  QP::SpotlightFormatter::~SpotlightFormatter(this);
}

void *std::set<unsigned short>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned short>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<unsigned short>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned short>::__emplace_hint_unique_key_args<unsigned short,unsigned short const&>(v5, v5 + 1, v4 + 13);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<unsigned short>::__emplace_hint_unique_key_args<unsigned short,unsigned short const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<unsigned short>::__find_equal<unsigned short>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned short>::__find_equal<unsigned short>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 13) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 26);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 13))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 26);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t QP::DatePeriod::isSingleYearPeriod(QP::DatePeriod *this)
{
  result = QP::DateComponents::isYearOnly((this + 24));
  if (result)
  {
    result = QP::DateComponents::isEmpty((this + 136));
    if (result)
    {
      result = QP::DateComponents::isEmpty((this + 80));
      if (result)
      {
        v3 = *(this + 5);
        return !v3 || v3 == 3;
      }
    }
  }

  return result;
}

uint64_t QP::DateComponents::isYearOnly(QP::DateComponents *this)
{
  if ((*(this + 5) & 0x80000000) == 0 && (*(this + 3) & 0x80000000) != 0 && (*(this + 8) & 0x80000000) != 0 && (*(this + 4) & 0x80000000) != 0 && (*(this + 6) & 0x80000000) != 0 && (*(this + 2) & 0x80000000) != 0 && (*(this + 1) & 0x80000000) != 0 && (*this & 0x80000000) != 0 && (*(this + 7) & 0x80000000) != 0 && (*(this + 11) & 0x80000000) != 0 && (*(this + 10) & 0x80000000) != 0 && (*(this + 9) & 0x80000000) != 0)
  {
    return *(this + 12) >> 31;
  }

  else
  {
    return 0;
  }
}

void QP::SpotlightFormatter::~SpotlightFormatter(const void **this)
{
  *this = &unk_1F45E9678;
  v2 = this + 11;
  nlp::CFScopedPtr<__CFArray const*>::reset(this + 24, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 23, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(this + 22, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(this + 21, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(this + 20, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 19, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 18, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 17, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 16, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 15, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 14, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 13, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 12, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(v2, 0);

  QP::Formatter::~Formatter(this);
}

{
  QP::SpotlightFormatter::~SpotlightFormatter(this);

  JUMPOUT(0x1C695B850);
}

__n128 std::__function::__func<QP::PhotosFormatter::updateParseWithDateAttribute(__CFString const*,std::shared_ptr<QP::ParseAttribute>)::$_0,std::allocator<QP::PhotosFormatter::updateParseWithDateAttribute(__CFString const*,std::shared_ptr<QP::ParseAttribute>)::$_0>,void ()(__CFDictionary const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F45E8F08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<QP::PhotosFormatter::updateParseWithDateAttribute(__CFString const*,std::shared_ptr<QP::ParseAttribute>)::$_0,std::allocator<QP::PhotosFormatter::updateParseWithDateAttribute(__CFString const*,std::shared_ptr<QP::ParseAttribute>)::$_0>,void ()(__CFDictionary const*)>::operator()(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  Value = CFDictionaryGetValue(*a2, kQPParseAttributeValueDateComponentsKey);
  if (Value)
  {
    QP::Formatter::setParseAttribute(v4, kQPParseAttributeValueDateComponentsKey, Value, *(**(a1 + 8) + 16));
    ++*(v4 + 10);
  }

  v6 = CFDictionaryGetValue(v3, kQPParseAttributeValueDateStartComponentsKey);
  if (v6)
  {
    QP::Formatter::setParseAttribute(v4, kQPParseAttributeValueDateStartComponentsKey, v6, *(**(a1 + 8) + 16));
    ++*(v4 + 10);
  }

  v7 = CFDictionaryGetValue(v3, kQPParseAttributeValueDateEndComponentsKey);
  if (v7)
  {
    QP::Formatter::setParseAttribute(v4, kQPParseAttributeValueDateEndComponentsKey, v7, *(**(a1 + 8) + 16));
    ++*(v4 + 10);
  }
}

uint64_t std::__function::__func<QP::PhotosFormatter::updateParseWithDateAttribute(__CFString const*,std::shared_ptr<QP::ParseAttribute>)::$_0,std::allocator<QP::PhotosFormatter::updateParseWithDateAttribute(__CFString const*,std::shared_ptr<QP::ParseAttribute>)::$_0>,void ()(__CFDictionary const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t QP::PhotosParserFormatter::setParse(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = QP::Formatter::setParse(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_1C65EF9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::PhotosParserFormatter::updateParseWithDateAttribute(QP::Formatter *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::Formatter::updateParseWithDateAttribute(a1, a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1C65EFA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void QP::PhotosParserFormatter::~PhotosParserFormatter(const void **this)
{
  QP::Formatter::~Formatter(this);

  JUMPOUT(0x1C695B850);
}

uint64_t _CFGetTypeID_QueryParserWrapper(void)
{
  {
    unk_1EDAC3FB8 = 0u;
    unk_1EDAC3FA8 = 0u;
    _CFGetTypeID_QueryParserWrapper(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_QueryParserWrapper(void)::typeID;
}

uint64_t createQueryParserEngineWrapper(QP::QueryParserEngine *a1)
{
  CFAllocatorGetDefault();
  _CFGetTypeID_QueryParserWrapper();
  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

__CFDictionary *QPQueryParserCopyDefaultOptionsForContext(const __CFString *Identifier)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Identifier)
  {
    MutableCopy = CFStringCreateMutableCopy(v2, 0, Identifier);
    cf = MutableCopy;
    CFStringLowercase(MutableCopy, 0);
    MainBundle = CFBundleGetMainBundle();
    if (!MainBundle || (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
    {
      CFDictionarySetValue(Mutable, kQPQueryParserOptionBundleIdentifierKey, Identifier);
    }

    if (QPQueryParserCopyDefaultOptionsForContext::onceToken != -1)
    {
      QPQueryParserCopyDefaultOptionsForContext_cold_1();
    }

    CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, MutableCopy);
    v6 = _os_feature_enabled_impl();
    v7 = MEMORY[0x1E695E4D0];
    if (v6)
    {
      CFDictionarySetValue(Mutable, kQPQueryParserOptionGeoSearchEnabledKey, *MEMORY[0x1E695E4D0]);
    }

    if (CFStringsAreEqual(MutableCopy, @"com.apple.mail") || CFStringsAreEqual(MutableCopy, @"com.apple.mobilemail") || CFStringsAreEqual(MutableCopy, @"com.apple.email.maild") || CFStringsAreEqual(MutableCopy, @"com.apple.email.SearchIndexer"))
    {
      valuePtr = 1;
      v8 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v31 = v8;
      CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v8);
      CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeMailContextIdentifier);
      v9 = *v7;
      CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, *v7);
      v10 = *MEMORY[0x1E695E4C0];
      if (QPQueryParserCopyDefaultOptionsForContext::enableU2Expansion)
      {
        v11 = v9;
      }

      else
      {
        v11 = *MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v11);
      CFDictionarySetValue(Mutable, kQPQueryParserOptionEmbeddingsSafetyDisabledKey, v10);
      CFDictionarySetValue(Mutable, @"loadAnnotations", v9);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      if (CFStringsAreEqual(MutableCopy, @"com.apple.notes") || CFStringsAreEqual(MutableCopy, @"com.apple.mobilenotes"))
      {
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v13 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreFutureDatesKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, v13);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeNotesContextIdentifier);
        CFDictionarySetValue(Mutable, @"loadAnnotations", v13);
      }

      else if (CFStringsAreEqual(MutableCopy, @"com.apple.calendar") || CFStringsAreEqual(MutableCopy, @"com.apple.calendarui") || CFStringsAreEqual(MutableCopy, @"com.apple.ical") || CFStringsAreEqual(MutableCopy, @"com.apple.ical.calendarquerygenius") || CFStringsAreEqual(MutableCopy, @"com.apple.mobilecal"))
      {
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeCalendarContextIdentifier);
        CFDictionarySetValue(Mutable, @"loadAnnotations", *v7);
      }

      else if (CFStringsAreEqual(MutableCopy, @"com.apple.photos.parser"))
      {
        valuePtr = 0;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v14 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreFutureDatesKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, v14);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v14);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributePhotosContextIdentifier);
      }

      else if (CFStringHasPrefix(MutableCopy, @"com.apple.memorycreation"))
      {
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v15 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, *v7);
        CFDictionarySetValue(Mutable, @"resolveHolidayDatesInPast", v15);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeMemoryCreationContextIdentifier);
      }

      else if (CFStringHasPrefix(MutableCopy, @"com.apple.photo") || CFStringHasPrefix(MutableCopy, @"com.apple.mobileslideshow") || CFStringsAreEqual(MutableCopy, @"com.apple.plphotosctl"))
      {
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v16 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreFutureDatesKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, v16);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributePhotosContextIdentifier);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreSingleYearSuggestionKey, v16);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionEmbeddingsEnabledKey, v16);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v16);
        CFDictionarySetValue(Mutable, @"useECRForPets", v16);
        CFDictionarySetValue(Mutable, @"loadAnnotations", v16);
        CFDictionarySetValue(Mutable, @"waitWithTimeout", v16);
        if (CFStringsAreEqual(Identifier, @"com.apple.plphotosctl") || CFStringHasPrefix(Identifier, @"com.apple.SpotlightUITests") || CFStringHasPrefix(Identifier, @"com.apple.SpotlightAutomation"))
        {
          if (qpqueryparserLogger(void)::token != -1)
          {
            QPQueryParserCopyDefaultOptionsForContext_cold_2();
          }

          v17 = qpqueryparserLogger(void)::log;
          if (os_log_type_enabled(qpqueryparserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_DEFAULT, "waitForLoad and forTesting set to true", v30, 2u);
          }

          CFDictionarySetValue(Mutable, @"waitForLoad", v16);
          CFDictionarySetValue(Mutable, @"forTesting", v16);
        }
      }

      else if (CFStringHasPrefix(MutableCopy, @"com.apple.mobilesms"))
      {
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v18 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v18);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeSpotlightContextIdentifier);
      }

      else if (CFStringsAreEqual(MutableCopy, @"com.apple.reminders.parser"))
      {
        valuePtr = 0;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v19 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnorePastDatesKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreRecurringDatesKey, *MEMORY[0x1E695E4C0]);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInFutureKey, v19);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveConcreteDatesKey, v19);
        CFDictionarySetValue(Mutable, @"usePartOfSpeech", v19);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionBundleIdentifierKey, @"com.apple.reminders");
        CFDictionarySetValue(Mutable, @"loadAnnotations", v19);
      }

      else if (CFStringsAreEqual(MutableCopy, @"com.apple.queryparser") || CFStringsAreEqual(MutableCopy, @"com.apple.query.parser") || CFStringsAreEqual(MutableCopy, @"com.apple.query-parser") || CFStringsAreEqual(MutableCopy, @"com.apple.default"))
      {
        valuePtr = 0;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreRecurringDatesKey, *MEMORY[0x1E695E4C0]);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeQueryParserContextIdentifier);
      }

      else if (SPQueryKindIsSearchToolSearch(Identifier) || SPQueryKindIsSearchToolSearch(cf))
      {
        v20 = QPQueryParserCopyDefaultOptionsForContext::useLLMParseForSearchtool;
        v21 = QPQueryParserCopyDefaultOptionsForContext::enableU2Expansion;
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeSearchtoolContextIdentifier);
        v22 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionUseECRInProcessKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionSeparateEmbeddingsEnabledKey, v22);
        v23 = *MEMORY[0x1E695E4C0];
        CFDictionarySetValue(Mutable, @"loadAnnotations", *MEMORY[0x1E695E4C0]);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionEmbeddingsSafetyDisabledKey, v22);
        if ((v20 ^ 1) & v21)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v24);
        if (QPQueryParserCopyDefaultOptionsForContext::useLLMParseForSearchtool)
        {
          v25 = v22;
        }

        else
        {
          v25 = v23;
        }

        CFDictionarySetValue(Mutable, kQPQueryParserOptionUseLLMParseKey, v25);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionUseLexemeSubEntitiesKey, v22);
      }

      else if (CFStringsAreEqual(cf, @"com.apple.spotlight") || CFStringsAreEqual(cf, @"com.apple.searchd") || CFStringsAreEqual(cf, @"com.apple.shortcuts.search") || CFStringsAreEqual(cf, @"com.apple.workflowkit.backgroundshortcutrunner") || CFStringsAreEqual(cf, @"com.apple.documentsapp") || CFStringsAreEqual(cf, @"com.apple.search.framework") || CFStringsAreEqual(cf, @"com.apple.pommesctl") || CFStringsAreEqual(cf, @"com.apple.cslinguistics"))
      {
        valuePtr = 1;
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
        v26 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeSpotlightContextIdentifier);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionUseECRInProcessKey, v26);
        CFDictionarySetValue(Mutable, @"useECRForPets", v26);
        CFDictionarySetValue(Mutable, @"loadAnnotations", v26);
        if (CFStringsAreEqual(Identifier, @"com.apple.WorkflowKit.BackgroundShortcutRunner"))
        {
          CFDictionarySetValue(Mutable, kQPQueryParserOptionEmbeddingsEnabledKey, v26);
        }

        v27 = cf;
        if (CFStringsAreEqual(cf, @"com.apple.pommesctl") || CFStringsAreEqual(v27, @"com.apple.cslinguistics"))
        {
          CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreFutureDatesKey, v26);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionIgnoreSingleYearSuggestionKey, v26);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionForTestingKey, v26);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionWaitForLoadKey, v26);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionEmbeddingsSafetyDisabledKey, v26);
          CFDictionarySetValue(Mutable, @"loadAnnotations", *MEMORY[0x1E695E4C0]);
        }

        if (CFStringsAreEqual(v27, @"com.apple.pommesctl"))
        {
          CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v26);
        }

        if (CFStringsAreEqual(Identifier, @"com.apple.Spotlight") || CFStringsAreEqual(Identifier, @"com.apple.Search.framework"))
        {
          CFDictionarySetValue(Mutable, kQPQueryParserOptionSeparateEmbeddingsEnabledKey, v26);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v26);
        }

        if (CFStringsAreEqual(Identifier, @"com.apple.passd") || CFStringsAreEqual(Identifier, @"com.apple.Passbook"))
        {
          CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, v26);
        }
      }

      else if (CFStringsAreEqual(cf, kQPParseAttributeVisualGenerationContextIdentifier))
      {
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeVisualGenerationContextIdentifier);
        v28 = *v7;
        CFDictionarySetValue(Mutable, kQPQueryParserOptionU2EnabledKey, *v7);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionUseECRInProcessKey, v28);
        CFDictionarySetValue(Mutable, kQPQueryParserOptionUseECRForSpansKey, v28);
        CFDictionarySetValue(Mutable, @"useECRForInferredNames", v28);
        CFDictionarySetValue(Mutable, @"loadAnnotations", v28);
        v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &kVisualGenerationEmbeddingTimeoutMs);
        CFDictionarySetValue(Mutable, @"kMDQueryOptionEmbeddingGenerationTimeout", v31);
      }

      else
      {
        valuePtr = 1;
        if (CFStringsAreEqual(cf, @"com.apple.finder"))
        {
          v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
          v29 = *v7;
          CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, *v7);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeQuerySearchContextIdentifier);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionUseECRInProcessKey, v29);
        }

        else
        {
          v31 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionFormatKey, v31);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionResolveDatesInPastKey, *v7);
          CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, kQPParseAttributeQuerySearchContextIdentifier);
        }
      }

      nlp::CFScopedPtr<__CFNumber const*>::reset(&v31, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return Mutable;
}

void sub_1C65F09E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString *>::reset(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t __QPQueryParserCopyDefaultOptionsForContext_block_invoke()
{
  QPQueryParserCopyDefaultOptionsForContext::enableU2Expansion = _os_feature_enabled_impl();
  result = _os_feature_enabled_impl();
  QPQueryParserCopyDefaultOptionsForContext::useLLMParseForSearchtool = result;
  return result;
}

BOOL QPQueryParserAvailableForLocale(_BOOL8 result)
{
  if (result)
  {
    return systemListenerResourcesAvailableForLocaleAndContentType(result, @"QueryParser");
  }

  return result;
}

void QPQueryParserPreheat(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      QP::QueryParserEngine::preheat(v1);
    }
  }
}

void QPQueryParserCooldown(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      QP::QueryParserEngine::cooldown(v1);
    }
  }
}

void QPQueryParserSetOptions(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return;
  }

  if (!theDict)
  {
    return;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, kQPQueryParserOptionContextIdentifierKey);
  v35 = CFDictionaryGetValue(theDict, kQPQueryParserOptionLocaleKey);
  v23 = CFDictionaryGetValue(theDict, kQPQueryParserOptionPreferredLanguagesKey);
  v34 = CFDictionaryGetValue(theDict, kQPQueryParserOptionReferenceDateKey);
  v4 = CFDictionaryGetValue(theDict, kQPQueryParserOptionFormatKey);
  v5 = CFDictionaryGetValue(theDict, @"loadAnnotations");
  v6 = CFDictionaryGetValue(theDict, kQPQueryParserOptionIgnoreFutureDatesKey);
  v7 = CFDictionaryGetValue(theDict, kQPQueryParserOptionIgnorePastDatesKey);
  v8 = CFDictionaryGetValue(theDict, kQPQueryParserOptionIgnoreRecurringDatesKey);
  v9 = CFDictionaryGetValue(theDict, kQPQueryParserOptionResolveDatesInFutureKey);
  v26 = CFDictionaryGetValue(theDict, kQPQueryParserOptionResolveDatesInPastKey);
  v28 = CFDictionaryGetValue(theDict, kQPQueryParserOptionResolveConcreteDatesKey);
  v30 = CFDictionaryGetValue(theDict, @"usePartOfSpeech");
  v24 = CFDictionaryGetValue(theDict, @"forTesting");
  v25 = CFDictionaryGetValue(theDict, kQPQueryParserOptionCustomFieldSpecifications);
  v27 = CFDictionaryGetValue(theDict, kQPQueryParserOptionPrivateParsingKey);
  v29 = CFDictionaryGetValue(theDict, kQPQueryParserOptionEmbeddingsEnabledKey);
  v31 = CFDictionaryGetValue(theDict, kQPQueryParserOptionSeparateEmbeddingsEnabledKey);
  v32 = CFDictionaryGetValue(theDict, @"embeddingGenerationTimeout");
  v10 = CFDictionaryGetValue(theDict, kQPQueryParserOptionU2EnabledKey);
  v11 = CFDictionaryGetValue(theDict, kQPQueryParserOptionUseLLMParseKey);
  v33 = CFDictionaryGetValue(theDict, kQPQueryParserOptionIsEntitySearchKey);
  v22 = CFDictionaryGetValue(theDict, kQPQueryParserOptionEnableEntitySearchStemming);
  v21 = CFDictionaryGetValue(theDict, kQPQueryParserOptionEnableEntitySearchSpellCorrect);
  if (v4)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    LODWORD(v4) = QP::QueryParserEngine::setFormat(v3, valuePtr, 0);
  }

  if (v5)
  {
    QP::QueryParserEngine::setLoadAnnotations(v3, v5);
  }

  if (v6)
  {
    QP::QueryParserEngine::setIgnoreFutureDates(v3, v6);
  }

  if (v7)
  {
    QP::QueryParserEngine::setIgnorePastDates(v3, v7);
  }

  if (v8)
  {
    QP::QueryParserEngine::setIgnoreRecurringDates(v3, v8);
  }

  if (v9)
  {
    QP::QueryParserEngine::setResolvePastDates(v3, v9);
  }

  if (v26)
  {
    QP::QueryParserEngine::setResolveFutureDates(v3, v26);
  }

  if (v28)
  {
    QP::QueryParserEngine::setResolveConcreteDates(v3, v28);
  }

  if (v30)
  {
    QP::QueryParserEngine::setUsePartOfSpeech(v3, v30);
  }

  if (v34)
  {
    QP::QueryParserEngine::setDate(v3, v34);
  }

  if (v27)
  {
    QP::QueryParserEngine::setPrivateParsing(v3, v27);
  }

  if (v29)
  {
    QP::QueryParserEngine::setEmbeddingsEnabled(v3, v29);
  }

  if (v31)
  {
    QP::QueryParserEngine::setSeparateEmbeddingsEnabled(v3, v31);
  }

  if (v32)
  {
    QP::QueryParserEngine::setEmbeddingGenerationTimeout(v3, v32);
  }

  if (v10)
  {
    v12 = CFBooleanGetValue(v10);
    if (v12 != QP::QueryParserEngine::U2Enabled(v3))
    {
      if (QP::QueryParserEngine::U2Enabled(v3))
      {
        QP::QueryParserEngine::cooldown(v3);
      }

      QP::QueryParserEngine::setU2Enabled(v3, v10);
      LODWORD(v4) = 1;
    }
  }

  if (v11)
  {
    v13 = CFBooleanGetValue(v11);
    if (v13 != QP::QueryParserEngine::useLLMParse(v3))
    {
      QP::QueryParserEngine::setUseLLMParse(v3, v11);
      LODWORD(v4) = 1;
    }
  }

  if (v33)
  {
    QP::QueryParserEngine::setIsEntitySearch(v3, v33, v22, v21);
    QP::QueryParserEngine::updateEntitySearch(v3);
  }

  if (v35)
  {
    if (!v23)
    {
      v17 = copyCurrentPreferredLanguages();
      valuePtr = v17;
      MutableCopy = CFArrayCreateMutableCopy(0, 0, v17);
      v19 = normalizedLanguageForLocale(v35);
      if (v19)
      {
        v38.length = CFArrayGetCount(MutableCopy);
        v38.location = 0;
        if (!CFArrayContainsValue(MutableCopy, v38, v19))
        {
          CFArrayAppendValue(MutableCopy, v19);
        }
      }

      v20 = QP::QueryParserEngine::setLocale(v3, v35, MutableCopy, 0);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      LODWORD(v4) = v20 | v4;
      if (!Value)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    LODWORD(v4) = QP::QueryParserEngine::setLocale(v3, v35, v23, 0) | v4;
  }

  if (Value)
  {
LABEL_46:
    LODWORD(v4) = QP::QueryParserEngine::setContextIdentifier(v3, Value, 0) | v4;
  }

LABEL_47:
  v14 = v4;
  if (v25)
  {
    v14 = QP::QueryParserEngine::setCustomFieldSpecifications(v3, v25, 0) | v4;
  }

  if (v24)
  {
    systemListenerEnableAutoUpdatingLocale(0);
    systemListenerEnableForceLoadingAssets(1);
    v15 = QP::QueryParserEngine::locale(v3);
    PreferredLanguages = QP::QueryParserEngine::getPreferredLanguages(v3);
    systemListenerSetLocale(v15, PreferredLanguages);
  }

  if (v14)
  {
    QP::QueryParserEngine::updateWithOptions(v3, theDict, v4 & 1);
  }
}

__CFDictionary *QPQueryParserCopyOptions(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(*(v4 + 1) + 184);
      if (v5)
      {
        CFDictionarySetValue(Mutable, kQPQueryParserOptionContextIdentifierKey, v5);
      }

      v6 = QP::QueryParserEngine::locale(v4);
      if (v6)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionLocaleKey, v6);
      }

      PreferredLanguages = QP::QueryParserEngine::getPreferredLanguages(v4);
      if (PreferredLanguages)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionPreferredLanguagesKey, PreferredLanguages);
      }

      Calendar = QP::QueryParserEngine::getCalendar(v4);
      if (Calendar)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionReferenceCalendarKey, Calendar);
      }

      Date = QP::QueryParserEngine::getDate(v4);
      if (Date)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionReferenceDateKey, Date);
      }

      v10 = *(v4 + 1);
      v11 = MEMORY[0x1E695E4D0];
      if (v10[23] == 1)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionIgnoreFutureDatesKey, *MEMORY[0x1E695E4D0]);
        v10 = *(v4 + 1);
      }

      if (v10[24] == 1)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionIgnorePastDatesKey, *v11);
        v10 = *(v4 + 1);
      }

      if (v10[27] == 1)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionResolveDatesInFutureKey, *v11);
        v10 = *(v4 + 1);
      }

      if (v10[26] == 1)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionResolveDatesInPastKey, *v11);
        v10 = *(v4 + 1);
      }

      if (v10[29] == 1)
      {
        CFDictionarySetValue(v3, kQPQueryParserOptionResolveConcreteDatesKey, *v11);
      }
    }
  }

  return v3;
}

QP::QueryParserEngine *QPQueryParserSetUseSystemLocale(QP::QueryParserEngine *result, const __CFBoolean *a2)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::useSystemLocale(result, a2);
    }
  }

  return result;
}

uint64_t QPQueryParserSetLocale(uint64_t result, const __CFLocale *a2, const __CFArray *a3)
{
  if (result)
  {
    result = *(result + 24);
    if (result)
    {
      return QP::QueryParserEngine::setLocale(result, a2, a3, 1);
    }
  }

  return result;
}

uint64_t QPQueryParserGetLocale(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return QP::QueryParserEngine::locale(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t QPQueryParserGetPreferredLanguages(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return QP::QueryParserEngine::getPreferredLanguages(v1);
  }

  else
  {
    return 0;
  }
}

QP::ParserConfiguration *QPQueryParserSetCustomResourceDirectory(QP::ParserConfiguration *result, const __CFURL *a2)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::setCustomResourceDirectory(result, a2, 1);
    }
  }

  return result;
}

uint64_t QPQueryParserGetCustomResourceDirectory(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return QP::QueryParserEngine::getCustomResourceDirectory(v1);
  }

  else
  {
    return 0;
  }
}

QP::QueryParserEngine *QPQueryParserSetIgnoreAttributedParses(QP::QueryParserEngine *result, const __CFBoolean *a2)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::setIgnoreAttributedParses(result, a2);
    }
  }

  return result;
}

_DWORD *QPQueryParserSetFormat(_DWORD *result, int a2)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::setFormat(result, a2, 1);
    }
  }

  return result;
}

QP::ParserConfiguration *QPQueryParserSetContext(QP::ParserConfiguration *result, const __CFString *a2)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::setContextIdentifier(result, a2, 1);
    }
  }

  return result;
}

void QPQueryParserSetReferenceDate(uint64_t a1, const __CFDate *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      QP::QueryParserEngine::setDate(v2, a2);
    }
  }
}

uint64_t QPQueryParserGetReferenceDate(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return QP::QueryParserEngine::getDate(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t QPQueryParserGetCalendar(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return QP::QueryParserEngine::getCalendar(v1);
  }

  else
  {
    return 0;
  }
}

QP::QueryParserEngine *QPQueryParserIsAvailable(QP::QueryParserEngine *result)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::resourcesLoaded(result);
    }
  }

  return result;
}

QP::QueryParserEngine *QPQueryParserIsParsingAvailable(QP::QueryParserEngine *result)
{
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return QP::QueryParserEngine::parsingEnabled(result);
    }
  }

  return result;
}

uint64_t QPQueryParserUseKnowledgeSource(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = *(result + 24);
    if (result)
    {
      return QP::QueryParserEngine::useKnowledgeSource(result, a2);
    }
  }

  return result;
}

__CFDictionary *QPQueryParserParse(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return QPQueryParserCopyInputAttributes(a1, a3, a2);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    if (a5)
    {
      QPQueryParserEnumerateSuggestions(a1, a2, a3, a5);
    }

    if (a4)
    {
      v10 = QP::QueryParserEngine::U2Enabled(v8);
      v11 = QP::QueryParserEngine::useLLMParse(v8);
      v12 = QP::QueryParserEngine::embeddingsEnabled(v8);
      v13 = QP::QueryParserEngine::entitySearchEnabled(v8);
      QP::QueryParserEngine::setString(v8, a3, a2, v10, v11, v12, v13, 0);
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3002000000;
      v16[3] = __Block_byref_object_copy__11;
      v16[4] = __Block_byref_object_dispose__11;
      cf = 0;
      cf = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __QPQueryParserParse_block_invoke;
      v15[3] = &unk_1E8267278;
      v15[4] = a4;
      v15[5] = v16;
      QP::QueryParserEngine::enumerateParseResults(v8, v15);
      _Block_object_dispose(v16, 8);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    return QPQueryParserCopyInputAttributes(a1, a3, a2);
  }

  return 0;
}

void sub_1C65F15AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  nlp::CFScopedPtr<__CFSet *>::reset((v7 + 40), 0);
  _Unwind_Resume(a1);
}

void QPQueryParserEnumerateSuggestions(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      QP::QueryParserEngine::setString(*(a1 + 24), a3, a2, 0, 0, 0, 0, 1);
      if (a4)
      {
        v22[0] = 0;
        v22[1] = v22;
        v22[2] = 0x3002000000;
        v22[3] = __Block_byref_object_copy__11;
        v22[4] = __Block_byref_object_dispose__11;
        Mutable = 0;
        allocator = *MEMORY[0x1E695E480];
        Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 0x40000000;
        v21[2] = __QPQueryParserEnumerateSuggestions_block_invoke;
        v21[3] = &unk_1E82672C8;
        v21[4] = a4;
        v21[5] = v22;
        QP::QueryParserEngine::enumerateSuggestionResults(v4, v21);
        v20 = QP::QueryParserEngine::copyCompletions(v4);
        TokenCompletedQuery = QP::QueryParserEngine::copyLastTokenCompletedQuery(v4);
        v19[6] = TokenCompletedQuery;
        theArray = v20;
        Count = CFArrayGetCount(v20);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            QP::QueryParserEngine::setString(v4, ValueAtIndex, a2, 0, 0, 0, 0, 0);
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 0x40000000;
            v19[2] = __QPQueryParserEnumerateSuggestions_block_invoke_2;
            v19[3] = &unk_1E82672F0;
            v19[4] = a4;
            v19[5] = v22;
            QP::QueryParserEngine::enumerateSuggestionResults(v4, v19);
          }
        }

        v11 = CFArrayGetCount(TokenCompletedQuery);
        if (v11 >= 1)
        {
          for (j = 0; j != v11; ++j)
          {
            v13 = CFArrayGetValueAtIndex(TokenCompletedQuery, j);
            QP::QueryParserEngine::setString(v4, v13, a2, 0, 0, 0, 0, 0);
            v17[0] = 0;
            v17[1] = v17;
            v17[2] = 0x3002000000;
            v17[3] = __Block_byref_object_copy__11;
            v17[4] = __Block_byref_object_dispose__11;
            cf = 0;
            cf = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 0x40000000;
            v16[2] = __QPQueryParserEnumerateSuggestions_block_invoke_3;
            v16[3] = &unk_1E8267318;
            v16[4] = a4;
            v16[5] = v17;
            QP::QueryParserEngine::enumerateParseResults(v4, v16);
            _Block_object_dispose(v17, 8);
            if (cf)
            {
              CFRelease(cf);
            }
          }
        }

        if (TokenCompletedQuery)
        {
          CFRelease(TokenCompletedQuery);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        _Block_object_dispose(v22, 8);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }
}

void sub_1C65F1918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, const void *a31)
{
  nlp::CFScopedPtr<__CFArray const*>::reset(&a30, 0);
  nlp::CFScopedPtr<__CFArray const*>::reset(&a31, 0);
  _Block_object_dispose((v31 - 152), 8);
  nlp::CFScopedPtr<__CFSet *>::reset((v31 - 112), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __QPQueryParserParse_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kQPParseResultDescriptionKey);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (Value)
  {
    if (CFSetContainsValue(v5, Value))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = Value;
  }

  else
  {
    if (CFSetContainsValue(v5, theDict))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = theDict;
  }

  CFSetAddValue(v6, v7);
}

__CFDictionary *QPQueryParserCopyInputAttributes(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = QP::QueryParserEngine::string(*(a1 + 24));
  if (!a2 && v6 || a2 && (!QP::QueryParserEngine::string(v3) || (Length = CFStringGetLength(a2), v14 = QP::QueryParserEngine::string(v3), Length != CFStringGetLength(v14)) || (v15 = QP::QueryParserEngine::string(v3), !CFStringsAreEqual(a2, v15))))
  {
    QP::QueryParserEngine::setString(v3, a2, a3);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (QP::QueryParserEngine::embeddingsEnabled(v3))
  {
    EmbeddingData = QP::QueryParserEngine::copyQueryEmbeddingData(v3);
    v9 = QP::QueryParserEngine::copyEmbeddingError(v3);
    if (EmbeddingData)
    {
      CFDictionarySetValue(Mutable, kQPInputAttributesEmbeddingResultKey, EmbeddingData);
      CFRelease(EmbeddingData);
    }

    if (v9)
    {
      CFDictionarySetValue(Mutable, kQPInputAttributesEmbeddingErrorDescriptionKey, v9);
      CFRelease(v9);
    }
  }

  v10 = QP::QueryParserEngine::copyAttributedInput(v3);
  if (v10)
  {
    v11 = v10;
    CFDictionarySetValue(Mutable, kQPInputAttributesAttributedResultKey, v10);
    CFRelease(v11);
  }

  return Mutable;
}

void QPQueryParserCancel(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      QP::QueryParserEngine::cancelWithQueryReference(v2, a2);
    }
  }
}

void QPQueryParserEnumerateParses(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v8 = QP::QueryParserEngine::U2Enabled(*(a1 + 24));
      v9 = QP::QueryParserEngine::useLLMParse(v4);
      v10 = QP::QueryParserEngine::embeddingsEnabled(v4);
      v11 = QP::QueryParserEngine::entitySearchEnabled(v4);
      QP::QueryParserEngine::setString(v4, a3, a2, v8, v9, v10, v11, 0);
      if (a4)
      {
        v13[0] = 0;
        v13[1] = v13;
        v13[2] = 0x3002000000;
        v13[3] = __Block_byref_object_copy__11;
        v13[4] = __Block_byref_object_dispose__11;
        cf = 0;
        cf = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = __QPQueryParserEnumerateParses_block_invoke;
        v12[3] = &unk_1E82672A0;
        v12[4] = a4;
        v12[5] = v13;
        QP::QueryParserEngine::enumerateParseResults(v4, v12);
        _Block_object_dispose(v13, 8);
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void sub_1C65F1D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  nlp::CFScopedPtr<__CFSet *>::reset((v7 + 40), 0);
  _Unwind_Resume(a1);
}

void __QPQueryParserEnumerateParses_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kQPParseResultDescriptionKey);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (Value)
  {
    if (CFSetContainsValue(v5, Value))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = Value;
  }

  else
  {
    if (CFSetContainsValue(v5, theDict))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = theDict;
  }

  CFSetAddValue(v6, v7);
}

void __QPQueryParserEnumerateSuggestions_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kQPSuggestionResultDescriptionKey);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (Value)
  {
    if (CFSetContainsValue(v5, Value))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = Value;
  }

  else
  {
    if (CFSetContainsValue(v5, theDict))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = theDict;
  }

  CFSetAddValue(v6, v7);
}

void __QPQueryParserEnumerateSuggestions_block_invoke_2(uint64_t a1, CFDictionaryRef theDict, _BYTE *a3)
{
  Value = CFDictionaryGetValue(theDict, kQPSuggestionResultDescriptionKey);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (Value)
  {
    if (!CFSetContainsValue(v7, Value))
    {
      (*(*(a1 + 32) + 16))();
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = Value;
LABEL_6:
      CFSetAddValue(v8, v9);
    }
  }

  else if (!CFSetContainsValue(v7, theDict))
  {
    (*(*(a1 + 32) + 16))();
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = theDict;
    goto LABEL_6;
  }

  *a3 = 1;
}

void __QPQueryParserEnumerateSuggestions_block_invoke_3(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kQPParseResultDescriptionKey);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (Value)
  {
    if (CFSetContainsValue(v5, Value))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = Value;
  }

  else
  {
    if (CFSetContainsValue(v5, theDict))
    {
      return;
    }

    (*(*(a1 + 32) + 16))();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = theDict;
  }

  CFSetAddValue(v6, v7);
}

uint64_t QPQueryParserCopyParses(uint64_t a1, const __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __QPQueryParserCopyParses_block_invoke;
  v6[3] = &unk_1E8267340;
  v6[4] = &v7;
  QPQueryParserEnumerateParses(a1, 0, a2, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1C65F21F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void QPQueryParserEnumerateParsesForStartAndEndDates(uint64_t a1, const __CFDictionary *a2, __CFString *a3, __CFDictionary *a4, __CFString *a5, __CFDictionary *a6, uint64_t a7)
{
  if (a1 && a7)
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __QPQueryParserEnumerateParsesForStartAndEndDates_block_invoke;
      v8[3] = &unk_1E8267368;
      v8[4] = a7;
      QP::QueryParserEngine::enumerateDateRangeParses(v7, a2, a3, a4, a5, a6, v8);
    }
  }
}

__CFDictionary *QPQueryParserCopyResourcesInfo(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = QP::QueryParserEngine::resourcesLoaded(v4);
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (v5)
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(Mutable, @"QueryParserEngineResources", v8);
      valuePtr = QP::QueryParserEngine::dynamicResourcesLoadedCount(v4);
      v9 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, @"QueryParserLexerDynamicResourcesCount", v9);
      CFRelease(v9);
      if (QP::QueryParserEngine::hasAnnotations(v4))
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      CFDictionarySetValue(Mutable, @"AnnotationResourcesLoaded", v10);
      if (QP::QueryParserEngine::u2ModelLoaded(v4))
      {
        v11 = v6;
      }

      else
      {
        v11 = v7;
      }

      CFDictionarySetValue(Mutable, @"u2ModelLoaded", v11);
      if (QP::QueryParserEngine::embeddingServiceWarmedUp(v4))
      {
        v12 = v6;
      }

      else
      {
        v12 = v7;
      }

      CFDictionarySetValue(Mutable, @"embeddingServiceWarmedUp", v12);
    }
  }

  return Mutable;
}

void QueryParserWrapper::~QueryParserWrapper(QueryParserWrapper *this)
{
  *this = &unk_1F45E9030;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F45E9030;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1C695B850);
}

os_log_t ___ZL19qpqueryparserLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QueryParser");
  qpqueryparserLogger(void)::log = result;
  return result;
}

CFIndex QPAnnotationsGetID(const __CFString *a1)
{
  if (getAnnotationsList(void)::onceToken != -1)
  {
    QPAnnotationsGetID();
  }

  v2 = getAnnotationsList(void)::gAnnotations;
  v5.length = CFArrayGetCount(getAnnotationsList(void)::gAnnotations);
  v5.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v5, a1);
  if (FirstIndexOfValue == -1)
  {
    return -1;
  }

  else
  {
    return FirstIndexOfValue + 1;
  }
}

const void *QPAnnotationsGetIdentifier(CFIndex a1)
{
  if (getAnnotationsList(void)::onceToken != -1)
  {
    QPAnnotationsGetID();
  }

  if (a1 < 1)
  {
    return 0;
  }

  v2 = getAnnotationsList(void)::gAnnotations;
  if (CFArrayGetCount(getAnnotationsList(void)::gAnnotations) < a1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v2, a1 - 1);
}

void ___ZL18getAnnotationsListv_block_invoke()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"COPYRIGHTED");
  CFArrayAppendValue(Mutable, @"PHOTOSENSITIVE");
  CFArrayAppendValue(Mutable, @"PUBLIC_FIGURE");
  CFArrayAppendValue(Mutable, @"FICTIONAL_CHARACTER");
  CFArrayAppendValue(Mutable, @"PHOTOSALLOW");
  CFArrayAppendValue(Mutable, @"OFFENSIVE");
  CFArrayAppendValue(Mutable, @"SENSITIVE");
  CFArrayAppendValue(Mutable, @"COMMON");
  CFArrayAppendValue(Mutable, @"EMOJI");
  CFArrayAppendValue(Mutable, @"GENERIC_ENTITY");
  CFArrayAppendValue(Mutable, @"TEXTSENSITIVE");
  CFArrayAppendValue(Mutable, @"ALLOW");
  getAnnotationsList(void)::gAnnotations = Mutable;
}

void QP::QueryParserEngine::QueryParserEngine(QP::QueryParserEngine *this, const __CFDictionary *a2)
{
  *this = &unk_1F45E90D8;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  QP::QueryParserEngine::init(this, a2);
}

void sub_1C65F27AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QP::Embedder>::reset[abi:ne200100]((v2 + 104), 0);
  v5 = *(v2 + 96);
  *(v2 + 96) = 0;
  if (v5)
  {
    QP::QueryParserEngine::QueryParserEngine(v5);
  }

  std::unique_ptr<QP::LLMParser>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<QP::Parser>::reset[abi:ne200100]((v2 + 80), 0);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = *(v2 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v2 + 32);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void QP::QueryParserEngine::init(QP::QueryParserEngine *this, const __CFDictionary *a2)
{
  v5 = a2;
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v2 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "QueryParserEngine::init", &unk_1C664887A, buf, 2u);
    }
  }

  std::allocate_shared[abi:ne200100]<QP::ParserConfiguration,std::allocator<QP::ParserConfiguration>,__CFDictionary const*&,0>();
}

void sub_1C65F2C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  QP::QueryParserEngine::init(v12 + 8);
  _Unwind_Resume(a1);
}

QP::Parser *std::unique_ptr<QP::Parser>::reset[abi:ne200100](QP::Parser **a1, QP::Parser *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::Parser::~Parser(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

QP::LLMParser *std::unique_ptr<QP::LLMParser>::reset[abi:ne200100](QP::LLMParser **a1, QP::LLMParser *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::LLMParser::~LLMParser(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

const void **std::unique_ptr<QP::Embedder>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    QP::Embedder::~Embedder(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

void QP::QueryParserEngine::loadKnowledgeSource(QP::QueryParserEngine *this, const __CFDictionary *a2)
{
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v4 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "QueryParserEngine::loadKnowledgeSource", &unk_1C664887A, buf, 2u);
    }
  }

  v6 = *(this + 14);
  if (v6)
  {
    QPSpotlightKnowledgeSourceRelease(v6);
    *(this + 14) = 0;
  }

  v7 = *(this + 1);
  if (*(v7 + 16) == 1)
  {
    v8 = QPSpotlightKnowledgeSourceCreate(*(v7 + 192), *(v7 + 184), a2);
    *(this + 14) = v8;
    v9 = *(this + 5);
    if (v9)
    {
      QP::Lexer::useKnowledgeSource(v9, v8);
    }

    if (*(*(this + 1) + 8) == 10)
    {
      operator new();
    }

    operator new();
  }

  v10 = *(v7 + 8);
  if (v10 != 10)
  {
    if (v10 != 14)
    {
      if (v10 == 13)
      {
        operator new();
      }

      operator new();
    }

    v11 = QPSpotlightKnowledgeSourceCreate(*(v7 + 192), *(v7 + 184), a2);
    *(this + 14) = v11;
    v12 = *(this + 5);
    if (v12)
    {
      QP::Lexer::useKnowledgeSource(v12, v11);
    }

    operator new();
  }

  v13 = QPSpotlightKnowledgeSourceCreate(*(v7 + 192), *(v7 + 184), a2);
  *(this + 14) = v13;
  v14 = *(this + 5);
  if (v14)
  {
    QP::Lexer::useKnowledgeSource(v14, v13);
  }

  operator new();
}

void sub_1C65F3350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  QP::QueryParserEngine::loadKnowledgeSource(v10 + 8);
  _Unwind_Resume(a1);
}

void QP::QueryParserEngine::updateResources(QP::QueryParserEngine *this)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 1) + 112);
  LanguageCode = getLanguageCode(v2);
  ScriptCode = getScriptCode(v2);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v5 = parserLogger(void)::log;
  if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = LanguageCode;
    _os_log_impl(&dword_1C6584000, v5, OS_LOG_TYPE_INFO, "[QueryParserEngine] updating resources for language %@", &buf, 0xCu);
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }
  }

  v6 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v7 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "QueryParserEngine::updateResources", &unk_1C664887A, &buf, 2u);
    }
  }

  QP::QueryParserEngine::clearResources(this);
  QPSpotlightKnowledgeSourceRefresh(*(this + 14), v2);
  *(this + 120) = 0;
  if (!*(*(this + 1) + 176))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3002000000;
    v83 = __Block_byref_object_copy__12;
    v84 = __Block_byref_object_dispose__12;
    v85 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x3002000000;
    v76 = __Block_byref_object_copy__12;
    v77 = __Block_byref_object_dispose__12;
    v78 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x3002000000;
    v70 = __Block_byref_object_copy__12;
    v71 = __Block_byref_object_dispose__12;
    v72 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3002000000;
    v64 = __Block_byref_object_copy__12;
    v65 = __Block_byref_object_dispose__12;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3002000000;
    v58 = __Block_byref_object_copy__12;
    v59 = __Block_byref_object_dispose__12;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3002000000;
    v52 = __Block_byref_object_copy__12;
    v53 = __Block_byref_object_dispose__12;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3002000000;
    v46 = __Block_byref_object_copy__12;
    v47 = __Block_byref_object_dispose__12;
    v48 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3002000000;
    v40 = __Block_byref_object_copy__12;
    v41 = __Block_byref_object_dispose__12;
    cf = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2000000000;
    v36 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = QP::QueryParserEngine::bplistFilename(this);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = ___ZN2QP17QueryParserEngine15updateResourcesEv_block_invoke;
    v30[3] = &unk_1E82673D0;
    v30[4] = &buf;
    v30[5] = &v31;
    v30[6] = &v73;
    v30[7] = v35;
    v30[8] = &v49;
    v30[9] = &v67;
    v30[10] = &v61;
    v30[11] = &v55;
    v30[12] = &v37;
    systemListenerEnumerateResourcesWithContentType(@"QueryParser", v30);
    v7 = v6 - 1;
    CFRelease(v32[3]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = ___ZN2QP17QueryParserEngine15updateResourcesEv_block_invoke_2;
    v29[3] = &unk_1E82673F8;
    v29[4] = &v43;
    systemListenerEnumerateResourcesWithContentType(@"Geo", v29);
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      QP::ParserConfiguration::loadConfigurationResource(*(this + 1), v13, v11, v12);
      v14 = *(this + 1);
      if (*(v14 + 208) && *(v14 + 112) && *(v14 + 34) == 1)
      {
        if (parserLogger(void)::token != -1)
        {
          QP::QueryParserEngine::init();
        }

        v15 = parserLogger(void)::log;
        if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*(&buf + 1) + 40);
          *v79 = 138412290;
          v80 = v16;
          _os_log_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEFAULT, "[QueryParserEngine] loading assets with url %@", v79, 0xCu);
        }

        QP::ParserGrammar::loadParserGrammarResource(*(this + 3), v74[5], 0);
        QP::Lexer::loadLexerResource(*(this + 5), v68[5]);
        QP::Lexer::loadLexerResource(*(this + 5), v62[5]);
        QP::Lexer::loadLexerResource(*(this + 5), v56[5]);
        QP::Lexer::loadLexerResource(*(this + 5), v38[5]);
        QP::Lexer::loadLexerResource(*(this + 5), v44[5]);
        QP::Formatter::loadFormatterResource(*(this + 12), v50[5]);
        v17 = 1;
LABEL_34:
        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(v35, 8);
        _Block_object_dispose(&v37, 8);
        if (cf)
        {
          CFRelease(cf);
        }

        _Block_object_dispose(&v43, 8);
        if (v48)
        {
          CFRelease(v48);
        }

        _Block_object_dispose(&v49, 8);
        if (v54)
        {
          CFRelease(v54);
        }

        _Block_object_dispose(&v55, 8);
        if (v60)
        {
          CFRelease(v60);
        }

        _Block_object_dispose(&v61, 8);
        if (v66)
        {
          CFRelease(v66);
        }

        _Block_object_dispose(&v67, 8);
        if (v72)
        {
          CFRelease(v72);
        }

        _Block_object_dispose(&v73, 8);
        if (v78)
        {
          CFRelease(v78);
        }

        _Block_object_dispose(&buf, 8);
        if (v85)
        {
          CFRelease(v85);
        }

        if (v17)
        {
          goto LABEL_60;
        }

        goto LABEL_61;
      }
    }

    else if (v74[5])
    {
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      v24 = parserLogger(void)::log;
      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v74[5];
        *v79 = 138412290;
        v80 = v25;
        _os_log_impl(&dword_1C6584000, v24, OS_LOG_TYPE_DEFAULT, "[QueryParserEngine] loading fallback with url %@", v79, 0xCu);
      }

      QP::ParserGrammar::loadParserGrammarResource(*(this + 3), v74[5], 1);
    }

    v17 = 0;
    goto LABEL_34;
  }

  *&buf = 0;
  v73 = 0;
  v67 = 0;
  v9 = MEMORY[0x1E695E480];
  if (ScriptCode)
  {
    v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_%@", LanguageCode, ScriptCode);
  }

  else
  {
    v10 = CFRetain(LanguageCode);
  }

  v18 = v10;
  v67 = v10;
  v19 = CFURLCreateCopyAppendingPathComponent(*v9, *(*(this + 1) + 176), v10, 1u);
  *&buf = v19;
  AssetsWithURL = QP::QueryParserEngine::loadAssetsWithURL(this, v20, v19);
  if ((AssetsWithURL & 1) == 0)
  {
    QP::QueryParserEngine::clearResources(this);
    v22 = *(*(this + 1) + 200);
    v23 = v22 ? CFBundleGetBundleWithIdentifier(v22) : 0;
    v26 = systemListenerCopyResourceFromBundleWithName(@"cfg", @"plist", @"root", v23);
    v61 = v26;
    QP::ParserGrammar::loadParserGrammarResource(*(this + 3), v26, 1);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (AssetsWithURL)
  {
LABEL_60:
    *(this + 120) = 1;
  }

LABEL_61:
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v27 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v27, OS_SIGNPOST_INTERVAL_END, v6, "QueryParserEngine::updateResources", &unk_1C664887A, &buf, 2u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1C65F3C58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void QP::QueryParserEngine::~QueryParserEngine(QP::QueryParserEngine *this)
{
  *this = &unk_1F45E90D8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<QP::Parser>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<QP::LLMParser>::reset[abi:ne200100](this + 11, 0);
  v3 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<QP::Embedder>::reset[abi:ne200100](this + 13, 0);
  v5 = *(this + 14);
  if (v5)
  {
    QPSpotlightKnowledgeSourceRelease(v5);
    *(this + 14) = 0;
  }

  std::unique_ptr<QP::Embedder>::reset[abi:ne200100](this + 13, 0);
  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<QP::LLMParser>::reset[abi:ne200100](this + 11, 0);
  std::unique_ptr<QP::Parser>::reset[abi:ne200100](this + 10, 0);
  v10 = (this + 56);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = *(this + 6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

{
  QP::QueryParserEngine::~QueryParserEngine(this);

  JUMPOUT(0x1C695B850);
}

uint64_t QP::QueryParserEngine::setLocale(QP::ParserConfiguration **this, const __CFLocale *a2, const __CFArray *a3, int a4)
{
  QP::QueryParserEngine::setString(this, &stru_1F45E9EA0, 0, *(this[1] + 63), *(this[1] + 64), *(this[1] + 58), *(this[1] + 70), 1);
  v8 = this[1];

  return QP::ParserConfiguration::setLocale(v8, a2, a3, a4);
}

uint64_t QP::QueryParserEngine::locale(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 112);
  }

  else
  {
    return 0;
  }
}

uint64_t QP::QueryParserEngine::getPreferredLanguages(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 168);
  }

  else
  {
    return 0;
  }
}

uint64_t QP::QueryParserEngine::useKnowledgeSource(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return QP::Lexer::useKnowledgeSource(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::useSystemLocale(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setUseSystemLocale(result, a2);
  }

  return result;
}

QP::Lexer *QP::QueryParserEngine::dynamicResourcesLoadedCount(QP::QueryParserEngine *this)
{
  result = *(this + 5);
  if (result)
  {
    return QP::Lexer::dynamicResourcesUpdatesCount(result);
  }

  return result;
}

QP::Parser *QP::QueryParserEngine::u2ModelLoaded(QP::QueryParserEngine *this)
{
  result = *(this + 10);
  if (result)
  {
    return QP::Parser::hasResourcesLoaded(result);
  }

  return result;
}

uint64_t QP::QueryParserEngine::parsingEnabled(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 56);
  }

  return v1 & 1;
}

uint64_t QP::QueryParserEngine::setPrivateParsing(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setPrivateParsing(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setEmbeddingsEnabled(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setEmbeddingsEnabled(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setSeparateEmbeddingsEnabled(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setSeparateEmbeddingsEnabled(result, a2);
  }

  return result;
}

QP::ParserConfiguration *QP::QueryParserEngine::setEmbeddingGenerationTimeout(QP::QueryParserEngine *this, const __CFNumber *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setEmbeddingGenerationTimeout(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setU2Enabled(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setU2Enabled(result, a2);
  }

  return result;
}

uint64_t QP::QueryParserEngine::setUseLLMParse(QP::QueryParserEngine *this, const __CFBoolean *a2)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setUseLLMParse(result, a2);
  }

  return result;
}

void QP::QueryParserEngine::preheat(QP::Parser **this)
{
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v2 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "QueryParserEngine::preheat", &unk_1C664887A, buf, 2u);
    }
  }

  QP::Parser::preheat(this[10]);
  v4 = this[1];
  if (*(v4 + 64) == 1)
  {
    v5 = this[11];
    if (v5)
    {
      QP::LLMParser::preheat(v5);
      v4 = this[1];
    }
  }

  if (*(v4 + 58) == 1)
  {
    v6 = this[13];
    if (v6)
    {
      QP::Embedder::preheat(v6);
    }
  }

  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v7, OS_SIGNPOST_INTERVAL_END, v2, "QueryParserEngine::preheat", &unk_1C664887A, v8, 2u);
    }
  }
}

void QP::QueryParserEngine::cooldown(QP::Parser **this)
{
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v2 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "QueryParserEngine::cooldown", &unk_1C664887A, buf, 2u);
    }
  }

  QP::Parser::cooldown(this[10]);
  v4 = this[11];
  if (v4)
  {
    QP::LLMParser::cooldown(v4);
  }

  v5 = this[13];
  if (v5)
  {
    QP::Embedder::cooldown(v5);
  }

  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v6, OS_SIGNPOST_INTERVAL_END, v2, "QueryParserEngine::cooldown", &unk_1C664887A, v7, 2u);
    }
  }
}

_BYTE *QP::QueryParserEngine::setIsEntitySearch(QP::QueryParserEngine *this, const __CFBoolean *a2, const __CFBoolean *a3, const __CFBoolean *a4)
{
  result = *(this + 1);
  if (result)
  {
    return QP::ParserConfiguration::setIsEntitySearch(result, a2, a3, a4);
  }

  return result;
}

uint64_t QP::QueryParserEngine::entitySearchEnabled(QP::QueryParserEngine *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 70);
  }

  return v1 & 1;
}

CFStringRef QP::QueryParserEngine::bplistFilename(QP::QueryParserEngine *this)
{
  v1 = *(*(this + 1) + 184);
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, v1);
  CFArrayAppendValue(Mutable, @".bplist");
  v4 = CFStringCreateByCombiningStrings(v2, Mutable, &stru_1F45E9EA0);
  CFRelease(Mutable);
  return v4;
}

uint64_t QP::QueryParserEngine::loadAssetsWithURL(QP::QueryParserEngine *this, const __CFLocale *a2, CFURLRef url)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], url, @"config.plist", 0);
  QP::ParserConfiguration::loadConfigurationResource(*(this + 1), v6, v7, v8);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v9 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "QueryParserEngine::loadAssetsWithURL", &unk_1C664887A, buf, 2u);
    }
  }

  v11 = *(this + 1);
  if (*(v11 + 208) && *(v11 + 112) && *(v11 + 34) == 1)
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v12 = parserLogger(void)::log;
    if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = url;
      _os_log_impl(&dword_1C6584000, v12, OS_LOG_TYPE_INFO, "[QueryParserEngine] loading assets with url %@", buf, 0xCu);
    }

    if (_os_feature_enabled_impl())
    {
      v13 = QP::QueryParserEngine::bplistFilename(this);
      v14 = CFURLCreateCopyAppendingPathComponent(v5, url, v13, 0);
      if (v6)
      {
        CFRelease(v6);
      }

      cf = v14;
      if (!CFURLResourceIsReachable(v14, 0))
      {
        v15 = CFURLCreateCopyAppendingPathComponent(v5, url, @"cfg.plist", 0);
        if (v14)
        {
          CFRelease(v14);
        }

        cf = v15;
        v14 = v15;
      }

      CFRelease(v13);
    }

    else
    {
      v14 = CFURLCreateCopyAppendingPathComponent(v5, url, @"cfg.plist", 0);
      if (v6)
      {
        CFRelease(v6);
      }

      cf = v14;
    }

    QP::ParserGrammar::loadParserGrammarResource(*(this + 3), v14, 0);
    v20 = CFURLCreateCopyAppendingPathComponent(v5, url, @"root.cache", 0);
    if (cf)
    {
      CFRelease(cf);
    }

    QP::Lexer::loadLexerResource(*(this + 5), v20);
    v21 = CFURLCreateCopyAppendingPathComponent(v5, url, @"dates.cache", 0);
    if (v20)
    {
      CFRelease(v20);
    }

    QP::Lexer::loadLexerResource(*(this + 5), v21);
    v22 = CFURLCreateCopyAppendingPathComponent(v5, url, @"lexicon.cache", 0);
    if (v21)
    {
      CFRelease(v21);
    }

    QP::Lexer::loadLexerResource(*(this + 5), v22);
    v23 = CFURLCreateCopyAppendingPathComponent(v5, url, @"dates.plist", 0);
    if (v22)
    {
      CFRelease(v22);
    }

    QP::Formatter::loadFormatterResource(*(this + 12), v23);
    v6 = CFURLCreateCopyAppendingPathComponent(v5, url, @"reference.mdplist", 0);
    if (v23)
    {
      CFRelease(v23);
    }

    QP::Lexer::loadLexerResource(*(this + 5), v6);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v17, OS_SIGNPOST_INTERVAL_END, v9, "QueryParserEngine::loadAssetsWithURL", &unk_1C664887A, buf, 2u);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

void QP::QueryParserEngine::clearResources(QP::QueryParserEngine *this)
{
  QP::ParserGrammar::clearResources(*(this + 3));
  QP::Lexer::clearResources(*(this + 5));
  v2 = *(this + 12);

  QP::Formatter::clearResources(v2);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN2QP17QueryParserEngine15updateResourcesEv_block_invoke(void *a1, CFURLRef url)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (CFStringsAreEqual(PathComponent, @"config.plist"))
  {
    v5 = *(a1[4] + 8);
    v6 = CFRetain(url);
LABEL_3:
    nlp::CFScopedPtr<__CFURL const*>::reset((v5 + 40), v6);
    goto LABEL_4;
  }

  if (_os_feature_enabled_impl() && CFStringsAreEqual(PathComponent, *(*(a1[5] + 8) + 24)))
  {
    v7 = *(a1[6] + 8);
    v8 = CFRetain(url);
    nlp::CFScopedPtr<__CFURL const*>::reset((v7 + 40), v8);
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    if ((*(*(a1[7] + 8) + 24) & 1) == 0 && CFStringsAreEqual(PathComponent, @"cfg.plist"))
    {
      v5 = *(a1[6] + 8);
      v6 = CFRetain(url);
      goto LABEL_3;
    }

    if (CFStringsAreEqual(PathComponent, @"dates.plist"))
    {
      v5 = *(a1[8] + 8);
      v6 = CFRetain(url);
      goto LABEL_3;
    }

    if (CFStringsAreEqual(PathComponent, @"root.cache"))
    {
      v5 = *(a1[9] + 8);
      v6 = CFRetain(url);
      goto LABEL_3;
    }

    if (CFStringsAreEqual(PathComponent, @"dates.cache"))
    {
      v5 = *(a1[10] + 8);
      v6 = CFRetain(url);
      goto LABEL_3;
    }

    if (CFStringsAreEqual(PathComponent, @"lexicon.cache"))
    {
      v5 = *(a1[11] + 8);
      v6 = CFRetain(url);
      goto LABEL_3;
    }

    if (CFStringsAreEqual(PathComponent, @"reference.mdplist"))
    {
      v5 = *(a1[12] + 8);
      v6 = CFRetain(url);
      goto LABEL_3;
    }
  }

LABEL_4:
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }
}

void sub_1C65F4BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP17QueryParserEngine15updateResourcesEv_block_invoke_2(uint64_t a1, CFURLRef url)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (CFStringsAreEqual(PathComponent, @"geobase.map"))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = CFRetain(url);
    nlp::CFScopedPtr<__CFURL const*>::reset((v5 + 40), v6);
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }
}

void sub_1C65F4C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::QueryParserEngine::setString(QP::ParserConfiguration **this, const __CFString *a2, const __CFDictionary *a3, int a4, int a5, int a6, int a7, int a8)
{
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  v13 = os_signpost_id_generate(parserLogger(void)::log);
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v13, "QueryParserEngine::setString", &unk_1C664887A, buf, 2u);
    }
  }

  v15 = this + 1;
  if (*(this[1] + 33) == 1)
  {
    if (systemListenerHasLocaleUpdates())
    {
      Locale = systemListenerGetLocale();
      Region = systemListenerGetRegion();
      PreferredLanguages = systemListenerGetPreferredLanguages();
      QP::QueryParserEngine::setString(this, &stru_1F45E9EA0, 0, *(this[1] + 63), *(this[1] + 64), *(this[1] + 58), *(this[1] + 70), 1);
      QP::ParserConfiguration::setLocale(this[1], Locale, PreferredLanguages, 1);
      v19 = this[1];
      if (v19)
      {
        QP::ParserConfiguration::setCalendarRegion(v19, Region);
      }
    }
  }

  if (!*(*v15 + 22) && systemListenerHasResourceUpdates())
  {
    QP::QueryParserEngine::updateResources(this);
  }

  if (*(*v15 + 33) == 1)
  {
    if (systemListenerHasFirstWeekDayUpdates())
    {
      FirstWeekDay = systemListenerGetFirstWeekDay();
      if (*v15)
      {
        QP::ParserConfiguration::setFirstWeekDay(*v15, FirstWeekDay);
      }
    }
  }

  if (a3 && CFDictionaryContainsKey(a3, @"queryID"))
  {
    valuePtr = -1;
    Value = CFDictionaryGetValue(a3, @"queryID");
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
    v22 = *v15;
    v23 = valuePtr;
    if (*(*v15 + 6) == valuePtr)
    {
      v24 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v22 = *v15;
    v23 = -1;
  }

  QP::ParserConfiguration::setQueryID(v22, v23);
  v25 = this[13];
  if (v25)
  {
    QP::Embedder::clear(v25);
  }

  v24 = 1;
LABEL_27:
  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    QP::QueryParserEngine::setString((this + 1));
  }

  QP::QueryParserEngine::parseString(this, a2, a3, a4, a5, a6, a7, a8, v24, v13);
  if (a6)
  {
    QP::QueryParserEngine::setEmbeddingString(this, a2, a3, a4, a5, v24);
  }

  if (parserLogger(void)::token != -1)
  {
    QP::QueryParserEngine::init();
  }

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = parserLogger(void)::log;
    if (os_signpost_enabled(parserLogger(void)::log))
    {
      *v30 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v26, OS_SIGNPOST_INTERVAL_END, v13, "QueryParserEngine::setString", &unk_1C664887A, v30, 2u);
    }
  }
}

void QP::QueryParserEngine::parseString(QP::QueryParserEngine *this, const __CFString *a2, const __CFDictionary *a3, int a4, _BOOL4 a5, int a6, int a7, int a8, char a9, os_signpost_id_t a10)
{
  v95 = *MEMORY[0x1E69E9840];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 7);
  if (a5 && *(this + 11))
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    if (a10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = parserLogger(void)::log;
      if (os_signpost_enabled(parserLogger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v17, OS_SIGNPOST_INTERVAL_BEGIN, a10, "QPLLMParser::parse", &unk_1C664887A, buf, 2u);
      }
    }

    v18 = *(this + 11);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v67[2] = ___ZN2QP17QueryParserEngine11parseStringEPK10__CFStringPK14__CFDictionarybbbbbby_block_invoke;
    v67[3] = &__block_descriptor_tmp_55_0;
    v67[4] = this;
    v67[5] = a10;
    QP::LLMParser::parse(v18, a3, a9, v67);
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    if (a10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = parserLogger(void)::log;
      if (os_signpost_enabled(parserLogger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v19, OS_SIGNPOST_INTERVAL_END, a10, "QPLLMParser::parse", &unk_1C664887A, buf, 2u);
      }
    }

    v20 = *(this + 11);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 0x40000000;
    v66[2] = ___ZN2QP17QueryParserEngine11parseStringEPK10__CFStringPK14__CFDictionarybbbbbby_block_invoke_56;
    v66[3] = &__block_descriptor_tmp_58;
    v66[4] = this;
    QP::LLMParser::enumerateParses(v20, v66);
    goto LABEL_77;
  }

  value = a8;
  if (*(this + 5))
  {
    v60 = mach_absolute_time();
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v21 = a10 - 1;
    if (a10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = parserLogger(void)::log;
      if (os_signpost_enabled(parserLogger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v22, OS_SIGNPOST_INTERVAL_BEGIN, a10, "QPLexer::setString", &unk_1C664887A, buf, 2u);
      }
    }

    v23 = (a6 & 1) != 0 || *(*(this + 1) + 8) == 14;
    QP::Lexer::setString(*(this + 5), a2, v23);
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    if (v21 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = parserLogger(void)::log;
      if (os_signpost_enabled(parserLogger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v24, OS_SIGNPOST_INTERVAL_END, a10, "QPLexer::setString", &unk_1C664887A, buf, 2u);
      }
    }

    if (*(this + 10))
    {
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      if (v21 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v25 = parserLogger(void)::log;
        if (os_signpost_enabled(parserLogger(void)::log))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C6584000, v25, OS_SIGNPOST_INTERVAL_BEGIN, a10, "QPParser::parse", &unk_1C664887A, buf, 2u);
        }
      }

      Length = CFStringGetLength(a2);
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      v26 = parserLogger(void)::log;
      if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*(this + 1) + 48);
        *buf = 134219264;
        *&buf[4] = v27;
        *&buf[12] = 1024;
        *&buf[14] = a9;
        *&buf[18] = 1024;
        *&buf[20] = a4;
        LOWORD(v71) = 1024;
        *(&v71 + 2) = a5;
        HIWORD(v71) = 1024;
        *v72 = a6;
        *&v72[4] = 2048;
        *&v72[6] = Length;
        _os_log_impl(&dword_1C6584000, v26, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] starting m_parser parse with new:%d u2:%d llm:%d embeddings:%d queryLen:%ld", buf, 0x2Eu);
      }

      QP::Parser::parse(*(this + 10), a4, a5, a7, value, a3);
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      if (v21 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = parserLogger(void)::log;
        if (os_signpost_enabled(parserLogger(void)::log))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C6584000, v28, OS_SIGNPOST_INTERVAL_END, a10, "QPParser::parse", &unk_1C664887A, buf, 2u);
        }
      }

      v29 = mach_absolute_time();
      if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
      {
        QP::QueryParserEngine::parseString();
      }

      v30 = *(this + 10);
      if (!a4)
      {
        goto LABEL_76;
      }

      v31 = *(this + 1);
      if (*(v31 + 37) & 1) != 0 || (*(v31 + 57))
      {
        goto LABEL_76;
      }

      v32 = *(v30 + 48);
      v33 = (v32 + 14);
      if (*(v32 + 79) < 0)
      {
        if (!*(v32 + 8))
        {
          stringa = 0;
LABEL_55:
          v35 = QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo;
          v34 = dword_1EDAC3FEC;
          v36 = *(v31 + 48);
          v37 = *(v31 + 112);
          valuea = *v32;
          v38 = *(this + 5);
          v40 = *(v38 + 456);
          v39 = *(v38 + 464);
          v55 = *(v32 + 2);
          v56 = *(v32 + 1);
          v54 = *(v32 + 3);
          v41 = *(v32 + 5);
          v52 = v36;
          v53 = *(v32 + 4);
          v57 = v32[13];
          v58 = v32[12];
          empty = xpc_dictionary_create_empty();
          __p[0] = 0;
          __p[1] = 0;
          v69 = 0;
          if (v37)
          {
            v43 = MEMORY[0x1C695ACD0](v37);
            if (v43)
            {
              QP::getUTF8StringFromCFString(v43, buf);
              if (SHIBYTE(v69) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = *buf;
              v69 = *&buf[16];
            }
          }

          if (v69 >= 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          xpc_dictionary_set_string(empty, "locale", v44);
          xpc_dictionary_set_uint64(empty, "status", valuea);
          xpc_dictionary_set_uint64(empty, "queryLength", Length);
          xpc_dictionary_set_uint64(empty, "tokenCount", -1431655765 * ((v39 - v40) >> 3));
          v45 = ((v29 - v60) * v35 / v34) / 1000000000.0;
          xpc_dictionary_set_double(empty, "totalLatency", v45);
          xpc_dictionary_set_double(empty, "quLatency", v56 / 1000000000.0);
          xpc_dictionary_set_double(empty, "loadLatency", v55 / 1000000000.0);
          xpc_dictionary_set_double(empty, "cdmLatency", v41 / 1000000000.0);
          xpc_dictionary_set_double(empty, "u2Latency", (v54 - v41) / 1000000000.0);
          xpc_dictionary_set_double(empty, "ecrLatency", v53 / 1000000000.0);
          xpc_dictionary_set_uint64(empty, "ecrCount", v58);
          xpc_dictionary_set_uint64(empty, "ecrErrorCount", v57);
          if (stringa)
          {
            xpc_dictionary_set_string(empty, "errorMessage", stringa);
          }

          v46 = QPProcessName();
          xpc_dictionary_set_string(empty, "process", v46);
          if (parserLogger(void)::token != -1)
          {
            QP::QueryParserEngine::init();
          }

          v47 = parserLogger(void)::log;
          if (os_log_type_enabled(parserLogger(void)::log, OS_LOG_TYPE_INFO))
          {
            v48 = QPProcessName();
            v49 = __p;
            if (v69 < 0)
            {
              v49 = __p[0];
            }

            *buf = 134221826;
            v50 = "";
            *&buf[4] = v52;
            if (stringa)
            {
              v50 = stringa;
            }

            *&buf[12] = 2080;
            *&buf[14] = "com.apple.queryUnderstandingPerfAndReliability";
            *&buf[22] = 2080;
            v71 = v48;
            *v72 = 2080;
            *&v72[2] = v49;
            *&v72[10] = 2048;
            *&v72[12] = valuea;
            v73 = 1024;
            v74 = Length;
            v75 = 1024;
            v76 = -1431655765 * ((v39 - v40) >> 3);
            v77 = 2048;
            v78 = v45;
            v79 = 2048;
            v80 = v56 / 1000000000.0;
            v81 = 2048;
            v82 = v55 / 1000000000.0;
            v83 = 2048;
            v84 = v41 / 1000000000.0;
            v85 = 2048;
            v86 = (v54 - v41) / 1000000000.0;
            v87 = 2048;
            v88 = v53 / 1000000000.0;
            v89 = 1024;
            v90 = v58;
            v91 = 1024;
            v92 = v57;
            v93 = 2080;
            v94 = v50;
            _os_log_impl(&dword_1C6584000, v47, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] log_query_parse_analytic_event: %s {\n\tprocess: %s\n\\tlocale: %s\ntstatus: %llu\n\tqueryLength: %u\n\ttokenCount: %u\n\ttotalLatency: %.4f\n\tquLatency: %.4f\n\tloadLatency: %.4f\n\tcdmLatency: %.4f\n\tu2Latency: %.4f\n\tecrLatency: %.4f\n\tecrCount: %u\n\tecrErrorCount: %u\n\terrorMessage: %s\n}", buf, 0x92u);
          }

          analytics_send_event();
          xpc_release(empty);
          if (SHIBYTE(v69) < 0)
          {
            operator delete(__p[0]);
          }

          v30 = *(this + 10);
LABEL_76:
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 0x40000000;
          v65[2] = ___ZN2QP17QueryParserEngine11parseStringEPK10__CFStringPK14__CFDictionarybbbbbby_block_invoke_59;
          v65[3] = &__block_descriptor_tmp_60;
          v65[4] = this;
          QP::Parser::enumerateParses(v30, v65);
          goto LABEL_77;
        }

        v33 = *v33;
      }

      else if (!*(v32 + 79))
      {
        v33 = 0;
      }

      stringa = v33;
      goto LABEL_55;
    }
  }

LABEL_77:
  v51 = *MEMORY[0x1E69E9840];
}

void sub_1C65F58B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP17QueryParserEngine11parseStringEPK10__CFStringPK14__CFDictionarybbbbbby_block_invoke(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::size_type a6, std::string::size_type a7, uint64_t **a8, _BYTE *a9)
{
  v70 = *(a1 + 32);
  if (*(v70 + 40))
  {
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v15 = *(a1 + 40);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = parserLogger(void)::log;
      if (os_signpost_enabled(parserLogger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "QPLexer::setStringWithLexemes", &unk_1C664887A, buf, 2u);
      }
    }

    QP::Lexer::setStringWithLexemes(*(v70 + 40), a2, 0, a8);
    if (parserLogger(void)::token != -1)
    {
      QP::QueryParserEngine::init();
    }

    v17 = *(a1 + 40);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = parserLogger(void)::log;
      if (os_signpost_enabled(parserLogger(void)::log))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v18, OS_SIGNPOST_INTERVAL_END, v17, "QPLexer::setStringWithLexemes", &unk_1C664887A, buf, 2u);
      }
    }

    if (*(v70 + 80))
    {
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      v19 = *(a1 + 40);
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = parserLogger(void)::log;
        if (os_signpost_enabled(parserLogger(void)::log))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C6584000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v19, "QPParser::parseLLMLexer", &unk_1C664887A, buf, 2u);
        }
      }

      *buf = 0;
      v78 = 0;
      v79 = 0;
      v21 = v70;
      QP::Parser::parseLLMLexer(*(v70 + 80), a8, buf);
      if (parserLogger(void)::token != -1)
      {
        QP::QueryParserEngine::init();
      }

      v22 = a5;
      v23 = *(a1 + 40);
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v24 = parserLogger(void)::log;
        if (os_signpost_enabled(parserLogger(void)::log))
        {
          *v75 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C6584000, v24, OS_SIGNPOST_INTERVAL_END, v23, "QPParser::parseLLMLexer", &unk_1C664887A, v75, 2u);
        }
      }

      v26 = *buf;
      v25 = v78;
      if (*buf != v78)
      {
        while (1)
        {
          v27 = *v26;
          if (((*v26)[3].__r_.__value_.__s.__data_[1] & 1) == 0)
          {
            if (*(v22 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, *v22, *(v22 + 8));
            }

            else
            {
              __str = *v22;
            }

            std::string::operator=(v27 + 2, &__str);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          v28 = *v26;
          v28->__r_.__value_.__r.__words[2] = a6;
          v28[1].__r_.__value_.__r.__words[0] = a7;
          v29 = v28[7].__r_.__value_.__r.__words[2];
          if (v29)
          {
            v30 = std::__shared_weak_count::lock(v29);
            if (v30)
            {
              break;
            }
          }

          MEMORY[0x48] = a6;
          MEMORY[0x50] = a7;
          if (a9)
          {
            goto LABEL_35;
          }

LABEL_89:
          v64 = *(v21 + 88);
          v65 = *(a3 + 8);
          v73 = *a3;
          v74 = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = v26[1];
          v71 = *v26;
          v72 = v66;
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::LLMParser::safeMakeGroupAttribute(&v73, &v71, v75);
          v67 = *v75;
          memset(v75, 0, sizeof(v75));
          v68 = *(a3 + 8);
          *a3 = v67;
          if (v68)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v68);
            if (*&v75[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v75[8]);
            }
          }

          if (v72)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v72);
          }

          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          v26 += 2;
          if (v26 == v25)
          {
            goto LABEL_103;
          }
        }

        size = v28[7].__r_.__value_.__l.__size_;
        *(size + 72) = a6;
        *(size + 80) = a7;
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        if (!a9)
        {
          goto LABEL_89;
        }

LABEL_35:
        v32 = *v26;
        v33 = (*v26)[7].__r_.__value_.__r.__words[2];
        if (v33)
        {
          v34 = std::__shared_weak_count::lock(v33);
          if (v34)
          {
            if (std::string::starts_with[abi:ne200100](v32[7].__r_.__value_.__l.__size_, "Relative"))
            {
              goto LABEL_87;
            }
          }

          else if (std::string::starts_with[abi:ne200100](0, "Relative"))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v34 = 0;
          if (std::string::starts_with[abi:ne200100](0, "Relative"))
          {
            goto LABEL_88;
          }
        }

        v35 = *v26;
        v36 = std::__shared_weak_count::lock((*v26)[7].__r_.__value_.__r.__words[2]);
        v37 = v36;
        v38 = v35[7].__r_.__value_.__l.__size_;
        v39 = *(v38 + 23);
        if (v39 < 0)
        {
          if (*(v38 + 8) != 19)
          {
            goto LABEL_54;
          }

          v38 = *v38;
        }

        else if (v39 != 19)
        {
          goto LABEL_54;
        }

        v40 = *v38;
        v41 = *(v38 + 8);
        v42 = *(v38 + 11);
        if (v40 != 0x6D726F4673696854 || v41 != 0x7265506465747461 || v42 != 0x646F697265506465)
        {
LABEL_54:
          v45 = *v26;
          v46 = std::__shared_weak_count::lock((*v26)[7].__r_.__value_.__r.__words[2]);
          v47 = v45[7].__r_.__value_.__l.__size_;
          v48 = *(v47 + 23);
          if (v48 < 0)
          {
            if (*(v47 + 8) != 19)
            {
              goto LABEL_66;
            }

            v47 = *v47;
          }

          else if (v48 != 19)
          {
            goto LABEL_66;
          }

          v49 = *v47;
          v50 = *(v47 + 8);
          v51 = *(v47 + 11);
          if (v49 == 0x6D726F467478654ELL && v50 == 0x7265506465747461 && v51 == 0x646F697265506465)
          {
            v63 = 1;
LABEL_82:
            std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            v22 = a5;
            v21 = v70;
            if (!v63)
            {
              goto LABEL_89;
            }

            goto LABEL_88;
          }

LABEL_66:
          v54 = *v26;
          v55 = std::__shared_weak_count::lock((*v26)[7].__r_.__value_.__r.__words[2]);
          v56 = v54[7].__r_.__value_.__l.__size_;
          v57 = *(v56 + 23);
          if (v57 < 0)
          {
            if (*(v56 + 8) != 19)
            {
LABEL_80:
              v63 = 0;
LABEL_81:
              std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              goto LABEL_82;
            }

            v56 = *v56;
          }

          else if (v57 != 19)
          {
            goto LABEL_80;
          }

          v58 = *v56;
          v59 = *(v56 + 8);
          v60 = *(v56 + 11);
          v63 = v58 == 0x6D726F467473614CLL && v59 == 0x7265506465747461 && v60 == 0x646F697265506465;
          goto LABEL_81;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        v21 = v70;
        if (v34)
        {
LABEL_87:
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

LABEL_88:
        *a9 = 1;
        goto LABEL_89;
      }

LABEL_103:
      *v75 = buf;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v75);
    }
  }
}