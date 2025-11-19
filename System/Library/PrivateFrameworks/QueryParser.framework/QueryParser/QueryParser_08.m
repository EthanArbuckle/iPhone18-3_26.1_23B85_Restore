std::string *QP::NumericValue::value@<X0>(int **this@<X0>, std::string *a2@<X8>)
{
  if (*this)
  {
    return std::to_string(a2, **this);
  }

  v3 = this[2];
  if (v3)
  {
    return std::to_string(a2, *v3);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void QP::LexemeStatus::suggestionKey(QP::LexemeStatus *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v4 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 23) >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = *this;
    }

    memmove(p_p, v6, v4);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v4) = 45;
  v9 = *(this + 15);
  v8 = this + 120;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  v13 = std::string::append(&__p, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C66080D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke(void *a1, const void *a2, const void *a3, const __CFString *a4, const void *a5)
{
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = *(a1[4] + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  if (!v14)
  {
    Copy = CFStringCreateCopy(v10, a4);
    nlp::CFScopedPtr<__CFString const*>::reset(v13, Copy);
  }

  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", a3);
  if (a5)
  {
    CFDictionarySetValue(Mutable, @"QUERY", a5);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"QUERY", *(*(a1[5] + 8) + 40));
  }

  v16 = *(*(a1[6] + 8) + 40);
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"STATUS", v16);
  }

  CFArrayAppendValue(*(*(a1[7] + 8) + 40), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C6608238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3;
    v6[3] = &__block_descriptor_tmp_422;
    v6[4] = v5;
    v6[5] = a2;
    v6[6] = a3;
    return QP::LexemeLocationExtended::enumerateLocations(result, v6);
  }

  return result;
}

uint64_t QP::LexemeLocationExtended::enumerateLocations(void *a1, uint64_t a2)
{
  v10 = 0;
  v3 = a1[16] - a1[15];
  if (!v3)
  {
    return (*(a2 + 16))(a2, 0, 0, 0, &v10, 0.0, 0.0, 0.0, 0.0);
  }

  v5 = 0;
  v6 = v3 >> 3;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 - 1;
  do
  {
    result = (*(a2 + 16))(a2, *(a1[27] + 4 * v5), *(a1[30] + 4 * v5), *(a1[33] + 4 * v5), &v10, *(a1[15] + 8 * v5), *(a1[18] + 8 * v5), *(a1[21] + 8 * v5), *(a1[24] + 8 * v5));
    if (v10)
    {
      break;
    }
  }

  while (v7 != v5++);
  return result;
}

uint64_t __copy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIN2QP22LexemeLocationExtendedEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c55_ZTSNSt3__110shared_ptrIN2QP22LexemeLocationExtendedEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_2_426(uint64_t a1, const void *a2)
{
  if (a2)
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), a2);
  }
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_3_428(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C660848C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_4(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C6608500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_5(uint64_t a1, const void *a2, const void *a3, const __CFString *a4, const __CFString *a5)
{
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = Mutable;
  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", a3);
  CFDictionarySetValue(Mutable, @"EMAILS", *(a1 + 48));
  if (a5)
  {
    MutableCopy = CFStringCreateMutableCopy(v10, 0, a5);
    v18 = MutableCopy;
    if (CFStringsAreEqual(a4, @"0"))
    {
      CFStringReplaceAll(MutableCopy, *(a1 + 56));
      v13 = 3;
    }

    else
    {
      v14 = *(a1 + 64);
      v20.length = CFStringGetLength(MutableCopy);
      v20.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@a", v14, v20, 0);
      v15 = *(a1 + 72);
      v21.length = CFStringGetLength(MutableCopy);
      v21.location = 0;
      CFStringFindAndReplace(MutableCopy, @"%@x", v15, v21, 0);
      if (CFStringsAreEqual(a4, @"3"))
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    valuePtr = v13;
    v16 = CFNumberCreate(v10, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, @"TYPE", v16);
    CFDictionarySetValue(Mutable, @"QUERY", MutableCopy);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, @"QUERY", *(*(*(a1 + 32) + 8) + 40));
  }

  CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 40), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C6608718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_6(uint64_t a1, const void *a2, const __CFString *a3, const __CFString *a4, const void *a5)
{
  v10 = *(a1 + 88);
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v42 = Mutable;
  v13 = *(*(a1 + 32) + 8);
  v15 = *(v13 + 40);
  v14 = (v13 + 40);
  if (!v15)
  {
    Copy = CFStringCreateCopy(v11, a4);
    nlp::CFScopedPtr<__CFString const*>::reset(v14, Copy);
  }

  v41 = 0;
  if (a3 && *(*(*(a1 + 40) + 8) + 40))
  {
    v17 = CFStringCreateWithFormat(v11, 0, a3, *(*(*(a1 + 40) + 8) + 40));
  }

  else
  {
    v17 = CFRetain(a3);
  }

  v18 = v17;
  v41 = v17;
  CFDictionarySetValue(Mutable, @"TOKEN", a2);
  CFDictionarySetValue(Mutable, @"TEXT", v18);
  if (a5 || (a5 = *(*(*(a1 + 48) + 8) + 40)) != 0)
  {
    CFDictionarySetValue(Mutable, @"QUERY", a5);
  }

  if (QP::ParserGrammar::hasUTIs(*(v10 + 24), *(a1 + 96)))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3002000000;
    v38 = __Block_byref_object_copy__14;
    v39 = __Block_byref_object_dispose__14;
    cf = 0;
    cf = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    v19 = *(v10 + 24);
    v20 = *(a1 + 96);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_7;
    v34[3] = &unk_1E8267A70;
    v34[4] = &v35;
    QP::ParserGrammar::UTIs(v19, v20, v34);
    if (CFArrayGetCount(v36[5]))
    {
      CFDictionarySetValue(Mutable, @"CATEGORY", *(*(*(a1 + 56) + 8) + 40));
      CFDictionarySetValue(Mutable, @"UTI", v36[5]);
    }

    _Block_object_dispose(&v35, 8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  MutableCopy = CFStringCreateMutableCopy(v11, 0, *(*(*(a1 + 40) + 8) + 40));
  v35 = MutableCopy;
  CFStringLowercase(MutableCopy, *(*(v10 + 8) + 112));
  v22 = *(*(*(a1 + 64) + 8) + 24);
  if (v22 && CFDictionaryContainsKey(v22, MutableCopy))
  {
    Value = CFDictionaryGetValue(*(*(*(a1 + 64) + 8) + 24), MutableCopy);
    CFDictionarySetValue(Mutable, @"TEXT", *(*(*(a1 + 40) + 8) + 40));
    v24 = CFDictionaryGetValue(Value, @"ORIGINAL_TEXT");
    v25 = CFDictionaryGetValue(Value, @"ATTRIBUTE");
    v26 = CFDictionaryGetValue(Value, @"STATUS");
    v27 = CFDictionaryGetValue(Value, @"TOKEN");
    if (v24)
    {
      CFDictionarySetValue(Mutable, @"TEXT", v24);
      v28 = *(*(a1 + 72) + 8);
      v29 = CFRetain(v24);
      nlp::CFScopedPtr<__CFString const*>::reset((v28 + 40), v29);
    }

    if (v26)
    {
      CFDictionarySetValue(Mutable, @"STATUS", v26);
    }

    if (v27)
    {
      CFDictionarySetValue(Mutable, @"TOKEN", v27);
    }

    if (v25 && v26)
    {
      v30 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v30, v25);
      CFArrayAppendValue(v30, v26);
      v31 = CFStringCreateByCombiningStrings(v11, v30, @"=");
      CFDictionarySetValue(Mutable, @"QUERY", v31);
      v32 = *(*(a1 + 48) + 8);
      v33 = CFStringCreateWithFormat(v11, 0, @"%@", v31, v31, v30);
      nlp::CFScopedPtr<__CFString const*>::reset((v32 + 40), v33);
      if (v31)
      {
        CFRelease(v31);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }
  }

  CFArrayAppendValue(*(*(*(a1 + 80) + 8) + 40), Mutable);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C6608BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  nlp::CFScopedPtr<__CFArray *>::reset(va, 0);
  nlp::CFScopedPtr<__CFString *>::reset(va1, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v3 - 96), 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v3 - 88), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP18SpotlightFormatter24updateParseWithAttributeEPK10__CFStringNSt3__110shared_ptrINS_14ParseAttributeEEE_block_invoke_7(uint64_t a1, uint64_t a2)
{
  CFStringFromString = QP::createCFStringFromString(a2);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 40), CFStringFromString);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }
}

void sub_1C6608CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::SpotlightFormatter::addRankingDescription(QP::SpotlightFormatter *this, __CFString *theString)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (theString && (Length = CFStringGetLength(theString), v3 = *(this + 13), Length))
    {
      v6 = theString;
    }

    else
    {
      v6 = &stru_1F45E9EA0;
    }

    CFArrayAppendValue(v3, v6);
  }
}

void ___ZL20getDateActionFiltersv_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"_kMDItemBundleID == %s", "com.apple.mobilesafari");
  values = v1;
  keys[0] = @"kMDItemUsedDates";
  getDateActionFilters(void)::gDateActionFilters = CFDictionaryCreate(v0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1C6608E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__tree_node<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>>>::__construct_node<std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>> const&>();
  }

  return v3;
}

std::string *std::pair<std::string const,std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::map<unsigned short,std::map<unsigned short,std::set<std::string>>>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1C66090E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C6609198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C660924C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<unsigned short,std::map<std::string,float>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned short,std::map<std::string,float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<std::string,float>>,std::__tree_node<std::__value_type<unsigned short,std::map<std::string,float>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned short,std::map<std::string,float>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,std::map<std::string,float>>,std::__tree_node<std::__value_type<unsigned short,std::map<std::string,float>>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,std::map<std::string,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,float>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<std::string,float>> const&>(v5, v5 + 1, v4 + 16);
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

uint64_t std::__tree<std::__value_type<unsigned short,std::map<std::string,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,float>>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,std::map<std::string,float>> const&>(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<unsigned short,std::map<unsigned short,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<unsigned short,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<unsigned short,float>>>>::__find_equal<unsigned short>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,std::map<std::string,float>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::map<std::string,float>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::map<std::string,float>>>>::__construct_node<std::pair<unsigned short const,std::map<std::string,float>> const&>();
  }

  return result;
}

void sub_1C6609458(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,std::set<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,float>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,float>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float>,std::__tree_node<std::__value_type<std::string,float>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__construct_node<std::pair<std::string const,float> const&>();
  }

  return result;
}

void sub_1C6609680(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,float>,std::__tree_node<std::__value_type<unsigned short,float>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 14) = *(v9 + 14);
          *(v8 + 8) = *(v9 + 8);
          std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__emplace_multi<std::pair<unsigned short const,float> const&>();
  }

  return result;
}

void sub_1C66097F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 14))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<unsigned int>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,float>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,float>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,float>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<unsigned int>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<unsigned int>::destroy(*a1, v2);
  }

  return a1;
}

void *QPSpotlightKnowledgeSourceCreate(uint64_t a1, __CFString *a2, const void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
  if (v6)
  {
    v7 = 0;
    if (!a1 || !a2 || (v7 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10E00402207B745uLL)) == 0)
    {
LABEL_35:
      v6[2] = hasAnnotations;
      v6[3] = enumerateTypesAndAnnotationsForString;
      v6[4] = enumeratePossibleStringsWithType;
      *v6 = v7;
      v6[1] = copyPossibleTypesForString;
      v6[5] = hasUpdatesForParser;
      v6[6] = willUpdateParser;
      v6[7] = didUpdateParser;
      goto LABEL_36;
    }

    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    *(v7 + 1) = v8;
    *(v7 + 10) = 0;
    *(v7 + 37) = 0;
    *(v7 + 17) = 0;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *(v7 + 3) = 0u;
    *(v7 + 8) = 0;
    *(v7 + 72) = QPAnnotationsEnabled;
    *(v7 + 73) = CFStringsAreEqual(a2, kQPParseAttributeVisualGenerationContextIdentifier);
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"locale");
    }

    else
    {
      Value = systemListenerGetLocale();
    }

    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1C695ACD0](Value);
    *v7 = CFLocaleCreate(v10, v11);
    if (a3)
    {
      v12 = CFDictionaryContainsKey(a3, @"forTesting") != 0;
      v13 = CFDictionaryContainsKey(a3, @"waitForLoad") != 0;
      a3 = CFDictionaryGetValue(a3, @"customFieldSpecifications");
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    *(v7 + 36) = 1000;
    *(v7 + 6) = QPStringCacheCreateWithOptions(0, &unk_1F45FA4C8);
    *(v7 + 7) = QPStringCacheCreateWithOptions(0, 0);
    if (v12)
    {
      addValue(*(v7 + 6), @"Apple Directory", 100, 8);
      addValue(*(v7 + 6), @"六本木", 100, 5);
      addValue(*(v7 + 6), @"San Francisco", 100, 5);
      addValue(*(v7 + 6), @"San Jose", 100, 5);
      addValue(*(v7 + 6), @"Oakland", 100, 5);
      addValue(*(v7 + 6), @"United Airlines", 100, 6);
      addValue(*(v7 + 6), @"Holiday Inn", 100, 11);
      addValue(*(v7 + 6), @"Honolulu", 100, 5);
      addValue(*(v7 + 6), @"San Francisco Airport", 100, 7);
      addValue(*(v7 + 6), @"John Smith", 100, 2);
      addValue(*(v7 + 6), @"Anna", 100, 3);
      addValue(*(v7 + 6), @"Mary Miller", 100, 2);
      addValue(*(v7 + 6), @"Gilles", 100, 3);
      addValue(*(v7 + 6), @"Julie", 100, 3);
      addValue(*(v7 + 6), @"Giulia", 100, 3);
      addValue(*(v7 + 6), @"Richard", 100, 3);
      addValue(*(v7 + 6), @"Christian", 100, 3);
      addValue(*(v7 + 6), @"Julia", 100, 3);
      addValue(*(v7 + 6), @"April", 100, 3);
      addValue(*(v7 + 6), @"eBay", 100, 2);
      addValue(*(v7 + 6), @"バラクオバマ", 100, 2);
      addValue(*(v7 + 6), @"Max Heller", 100, 2);
      addValue(*(v7 + 6), @"高橋", 100, 2);
      addValue(*(v7 + 6), @"高橋真帆", 100, 2);
      addValue(*(v7 + 6), @"ジョニー", 100, 2);
      addValue(*(v7 + 6), @"ジュリア", 100, 2);
      addValue(*(v7 + 6), @"高橋さん", 100, 2);
      *(v7 + 74) = 1;
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);
    if (v12)
    {
      v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INTERACTIVE, 0);
    }

    v16 = v15;
    *(v7 + 13) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Knowledge", v15);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v7 + 14) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Queries", v17);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v7 + 12) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Context", v18);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v7 + 11) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Context", v19);
    v20 = [MEMORY[0x1E695DFA8] setWithObject:a1];
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v21 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412546;
      *&v35[4] = a2;
      *&v35[12] = 2112;
      *&v35[14] = a1;
      _os_log_impl(&dword_1C6584000, v21, OS_LOG_TYPE_DEFAULT, "loading content for context: %@, bundleID: %@", v35, 0x16u);
    }

    if (([(__CFString *)a2 isEqualToString:kQPParseAttributeSpotlightContextIdentifier]& 1) != 0)
    {
      v20 = 0;
      v22 = &unk_1F45F8CF0;
    }

    else
    {
      if (([(__CFString *)a2 isEqualToString:kQPParseAttributeMailContextIdentifier]& 1) != 0)
      {
        [v20 addObject:@"com.apple.mobilemail"];
        [v20 addObject:@"com.apple.spotlight.events"];
        v22 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(&unk_1F45F8CF0 arrayByAddingObjectsFromArray:{&unk_1F45F8D80), "arrayByAddingObjectsFromArray:", &unk_1F45F8D98), "arrayByAddingObjectsFromArray:", &unk_1F45F8DB0), "arrayByAddingObjectsFromArray:", &unk_1F45F8DC8), "arrayByAddingObject:", @"kMDItemEventHotelReservationForName"}];
        if (!v22)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      if ([(__CFString *)a2 isEqualToString:kQPParseAttributeRemindersContextIdentifier])
      {
        [v20 addObject:@"com.apple.reminders"];
        goto LABEL_31;
      }

      if (([(__CFString *)a2 isEqualToString:kQPParseAttributeRemindersParserContextIdentifier]& 1) != 0 || ![(__CFString *)a2 isEqualToString:kQPParseAttributePhotosContextIdentifier])
      {
LABEL_31:
        if (a3)
        {
          v30 = CFRetain(a3);
        }

        else
        {
          v30 = 0;
        }

        *(v7 + 2) = v30;
        v31 = *(v7 + 13);
        *v35 = MEMORY[0x1E69E9820];
        *&v35[8] = 3221225472;
        *&v35[16] = ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke;
        v36 = &__block_descriptor_56_e5_v8__0l;
        v37 = 0;
        v38 = v7;
        v39 = a3;
        dispatch_sync(v31, v35);
        goto LABEL_35;
      }

      [v20 addObject:@"com.apple.mobileslideshow"];
      v22 = &unk_1F45F8D20;
    }

    *(v7 + 36) = 5000;
LABEL_27:
    *(v7 + 15) = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.DynamicQueries", v16);
    if (([(__CFString *)a2 isEqualToString:kQPParseAttributeSpotlightContextIdentifier]& 1) != 0 || [(__CFString *)a2 isEqualToString:kQPParseAttributePhotosContextIdentifier])
    {
      QueryString = createQueryString(&unk_1F45F8D68);
      v24 = [v20 allObjects];
      v25 = &unk_1F45F8D50;
      v26 = &unk_1F45F8D38;
      v27 = v7;
      v28 = QueryString;
      v29 = &unk_1F45F8D68;
    }

    else
    {
      if (([(__CFString *)a2 isEqualToString:kQPParseAttributePhotosContextIdentifier]& 1) != 0)
      {
        goto LABEL_31;
      }

      v34 = createQueryString(v22);
      v24 = [v20 allObjects];
      v25 = &unk_1F45F8D08;
      v26 = &unk_1F45F8CF0;
      v27 = v7;
      v28 = v34;
      v29 = v22;
    }

    extractSpotlightTermsWithContext(v27, v28, v24, v29, v25, v26, v13);
    goto LABEL_31;
  }

LABEL_36:
  v32 = *MEMORY[0x1E69E9840];
  return v6;
}

void enumeratePossibleStringsWithType(uint64_t a1, uint64_t a2)
{
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  v4 = os_signpost_id_generate(sourceLogger(void)::log);
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = sourceLogger(void)::log;
    if (os_signpost_enabled(sourceLogger(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "enumerate all cache items", &unk_1C664887A, buf, 2u);
    }
  }

  if (a1 && a2)
  {
    v6 = *(a1 + 104);
    *buf = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke;
    v12 = &unk_1E8267D00;
    v13 = a2;
    v14 = a1;
    dispatch_sync(v6, buf);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = sourceLogger(void)::log;
      if (os_signpost_enabled(sourceLogger(void)::log))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v7, OS_SIGNPOST_INTERVAL_END, v4, "enumerate all cache items", &unk_1C664887A, v8, 2u);
      }
    }
  }
}

__CFArray *copyPossibleTypesForString(CFTypeRef *a1, __CFString *a2, int a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    if (a2)
    {
      Length = CFStringGetLength(a2);
      if (a3)
      {
        if (Length)
        {
          v9 = CFRetain(*a1);
          v29 = v9;
          v10 = [(__CFString *)a2 stringByFoldingWithOptions:385 locale:0];
          v11 = [objc_msgSend(v10 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "componentsJoinedByString:", @" "}];
          v30.length = [(__CFString *)v11 length];
          v30.location = 0;
          v12 = copyStringInsertingSpacesBetweenIdeographCharacters(v11, v30);
          if (v9)
          {
            v13 = [v12 lowercaseStringWithLocale:v9];
          }

          else
          {
            v13 = [v12 lowercaseString];
          }

          v22 = 0;
          v23 = &v22;
          v24 = 0x3812000000;
          v25 = __Block_byref_object_copy__353;
          v26 = __Block_byref_object_dispose__354;
          v27 = &unk_1C664F151;
          cf = 0;
          cf = CFStringCreateMutableCopy(v6, 0, v13);
          v14 = v23[6];
          if (v14 && CFStringGetLength(v14) && v9)
          {
            v18 = 0;
            v19 = &v18;
            v20 = 0x2020000000;
            v21 = 0;
            v15 = a1[14];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = ___ZL36QPSpotlightKnowledgeContextCopyTypesP26_SpotlightKnowledgeContextPK10__CFStringh_block_invoke;
            block[3] = &unk_1E8267D28;
            block[4] = &v18;
            block[5] = &v22;
            block[6] = a1;
            dispatch_sync(v15, block);
            if (Mutable && *(v19 + 24) == 1)
            {
              CFArrayAppendValue(Mutable, @"Person");
            }

            _Block_object_dispose(&v18, 8);
          }

          _Block_object_dispose(&v22, 8);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }
    }
  }

  return Mutable;
}

void sub_1C660A618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  nlp::CFScopedPtr<__CFString *>::reset((v9 + 48), 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset((v10 - 56), 0);
  _Unwind_Resume(a1);
}

uint64_t hasUpdatesForParser(void *a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = a1[12];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZL19hasUpdatesForParserPv_block_invoke;
    v4[3] = &unk_1E8267D50;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t willUpdateParser(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = mach_absolute_time();
    *(v1 + 152) = result;
  }

  return result;
}

void didUpdateParser(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[12];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL15didUpdateParserPv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(v2, block);
    v3 = a1[19];
    v4 = mach_absolute_time();
    if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
    {
      didUpdateParser();
    }

    v6 = QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo;
    v5 = dword_1EDAC3FEC;
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v7 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = (((v4 - v3) * v6 / v5) / 1000000.0);
      _os_log_impl(&dword_1C6584000, v7, OS_LOG_TYPE_DEFAULT, "updated parser in %.1fms", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void QPSpotlightKnowledgeSourceRefresh(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_32;
  }

  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_32;
  }

  if (*v2)
  {
    LanguageID = SILanguagesGetLanguageID();
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LanguageID = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  v5 = SILanguagesGetLanguageID();
  if (v5 && v5 != LanguageID)
  {
    if (*v2)
    {
      CFRelease(*v2);
    }

    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1C695ACD0](a2);
    *v2 = CFLocaleCreate(v6, v7);
    goto LABEL_13;
  }

LABEL_12:
  if (*(v2 + 72) != 1)
  {
    goto LABEL_32;
  }

LABEL_13:
  v8 = *(v2 + 8);
  if (!v8)
  {
LABEL_16:
    v11 = 0;
LABEL_17:
    v12 = 1;
    goto LABEL_21;
  }

  v9 = CFDictionaryContainsKey(v8, @"waitForLoad");
  v10 = *(v2 + 8);
  if (v10)
  {
    if (!(v9 | CFDictionaryContainsKey(v10, @"waitWithTimeout")))
    {
      goto LABEL_16;
    }
  }

  else if (!v9)
  {
    goto LABEL_16;
  }

  v13 = dispatch_group_create();
  v11 = v13;
  if (!v13)
  {
    goto LABEL_17;
  }

  dispatch_group_enter(v13);
  v12 = 0;
LABEL_21:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __QPSpotlightKnowledgeSourceRefresh_block_invoke;
  v17[3] = &unk_1E8267AE0;
  v17[4] = v11;
  QPSpotlightKnowledgeContextUpdateResources(v2, v17);
  if ((v12 & 1) == 0)
  {
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v14 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = 500;
      _os_log_impl(&dword_1C6584000, v14, OS_LOG_TYPE_DEFAULT, "lexicon loading - wait for time (%u) ms", buf, 8u);
    }

    v15 = dispatch_time(0, 500000000);
    if (dispatch_group_wait(v11, v15))
    {
      if (sourceLogger(void)::token != -1)
      {
        enumeratePossibleStringsWithType();
      }

      if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
      {
        QPSpotlightKnowledgeSourceRefresh_cold_3();
      }
    }

    dispatch_release(v11);
  }

LABEL_32:
  v16 = *MEMORY[0x1E69E9840];
}

void QPSpotlightKnowledgeContextUpdateResources(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    *v51 = 0;
    v52 = v51;
    v53 = 0x3812000000;
    v54 = __Block_byref_object_copy__362_0;
    v55 = __Block_byref_object_dispose__363_0;
    v56 = &unk_1C664F151;
    v57 = 0;
    userInfoValues = 0;
    p_userInfoValues = &userInfoValues;
    v46 = 0x3812000000;
    v47 = __Block_byref_object_copy__362_0;
    v48 = __Block_byref_object_dispose__363_0;
    v49 = &unk_1C664F151;
    v50 = 0;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___ZL19loadSafetyResourcesP26_SpotlightKnowledgeContextb_block_invoke;
    v39[3] = &unk_1E8267DA0;
    v39[4] = v51;
    v39[5] = &userInfoValues;
    systemListenerEnumerateResourcesWithContentType(@"Safety", v39);
    v6 = *(v52 + 6);
    v7 = p_userInfoValues[6];
    if (v6)
    {
      if (v7)
      {
        cf = 0;
        DictionaryWithContentsOfURL = nlp::createDictionaryWithContentsOfURL(v6, &cf, v4, v5);
        v9 = DictionaryWithContentsOfURL;
        if (cf)
        {
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v10 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QPSpotlightKnowledgeContextUpdateResources(&cf, v10);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(cf);
        }

        else
        {
          Value = CFDictionaryGetValue(DictionaryWithContentsOfURL, @"compilationDate");
          v14 = CFDictionaryGetValue(v9, @"safetyTypes");
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v15 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v41 = Value;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEFAULT, "safety: loading resource created at %@ with types %@", buf, 0x16u);
          }

          v16 = CFURLGetString(p_userInfoValues[6]);
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v17 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            v41 = v16;
            _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_DEFAULT, "safety: loading resource at %{private}@", buf, 0xCu);
          }

          v37 = 0;
          QPCFDictionaryGetInt32ValueIfPresent(v9, @"majorVersion", &v37);
          if (v37 == 2)
          {
            v18 = *MEMORY[0x1E695E480];
            PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], p_userInfoValues[6]);
            v20 = CFURLCopyLastPathComponent(p_userInfoValues[6]);
            if (CFStringsAreEqual(v20, @"safety_resources.map"))
            {
              Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFDictionarySetValue(Mutable, *MEMORY[0x1E69D3E00], *MEMORY[0x1E695E4D0]);
              v22 = SIDataMapCreateWithOptions();
              v23 = v22 != 0;
              if (v22)
              {
                unloadSafetyResources(a1);
                *(a1 + 24) = v9;
                *(a1 + 32) = v22;
                if (sourceLogger(void)::token != -1)
                {
                  enumeratePossibleStringsWithType();
                }

                v24 = sourceLogger(void)::log;
                if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = *(a1 + 32);
                  Count = SIDataMapGetCount();
                  *buf = 134217984;
                  v41 = Count;
                  _os_log_impl(&dword_1C6584000, v24, OS_LOG_TYPE_DEFAULT, "safety: loaded resource: %ld", buf, 0xCu);
                }
              }

              else
              {
                if (sourceLogger(void)::token != -1)
                {
                  enumeratePossibleStringsWithType();
                }

                if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
                {
                  QPSpotlightKnowledgeContextUpdateResources();
                }

                if (v9)
                {
                  CFRelease(v9);
                }
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            else
            {
              v23 = 0;
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (PathComponent)
            {
              CFRelease(PathComponent);
            }

            goto LABEL_45;
          }

          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          v27 = sourceLogger(void)::log;
          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QPSpotlightKnowledgeContextUpdateResources(&v37, 2, v27);
          }
        }
      }

      else
      {
        if (sourceLogger(void)::token != -1)
        {
          enumeratePossibleStringsWithType();
        }

        if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
        {
          QPSpotlightKnowledgeContextUpdateResources();
        }
      }
    }

    else if (v7)
    {
      if (sourceLogger(void)::token != -1)
      {
        enumeratePossibleStringsWithType();
      }

      if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
      {
        QPSpotlightKnowledgeContextUpdateResources();
      }
    }

    v23 = 0;
LABEL_45:
    _Block_object_dispose(&userInfoValues, 8);
    if (v50)
    {
      CFRelease(v50);
    }

    _Block_object_dispose(v51, 8);
    if (v57)
    {
      CFRelease(v57);
    }

    if (!v23)
    {
      if (sourceLogger(void)::token != -1)
      {
        enumeratePossibleStringsWithType();
      }

      v30 = sourceLogger(void)::log;
      if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        _os_log_impl(&dword_1C6584000, v30, OS_LOG_TYPE_DEFAULT, "not loading lexicon cache because safety annotations aren't loaded", v51, 2u);
      }

      if (!a2)
      {
        goto LABEL_65;
      }

      v31 = *MEMORY[0x1E695E480];
      v32 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"QueryParser: could not load safety assets");
      v33 = v32;
      if (v32)
      {
        *v51 = *MEMORY[0x1E695E620];
        userInfoValues = v32;
        v34 = CFErrorCreateWithUserInfoKeysAndValues(v31, @"QueryParserErrorDomain", 1, v51, &userInfoValues, 1);
        CFRelease(v33);
        (*(a2 + 16))(a2, v34);
        if (v34)
        {
          CFRelease(v34);
        }

        goto LABEL_65;
      }

      goto LABEL_64;
    }

    v28 = *a1;
    if (!*(a1 + 40))
    {
      v29 = *(a1 + 8);
      *(a1 + 40) = SILexiconCacheCreateWithOptions();
    }

    if (SILexiconCacheIsAvailable())
    {
      if (a2)
      {
LABEL_64:
        (*(a2 + 16))(a2, 0);
      }
    }

    else
    {
      mach_absolute_time();
      v35 = *(a1 + 40);
      SILexiconCacheLoad();
    }

LABEL_65:
    v36 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!a2)
  {
    goto LABEL_65;
  }

  v11 = *(a2 + 16);
  v12 = *MEMORY[0x1E69E9840];

  v11(a2, 0);
}

void sub_1C660B2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  nlp::CFScopedPtr<__CFDictionary *>::reset(&a16, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a17, 0);
  nlp::CFScopedPtr<__CFURL const*>::reset(&a18, 0);
  _Block_object_dispose(&a30, 8);
  nlp::CFScopedPtr<__CFURL const*>::reset((v31 + 48), 0);
  _Block_object_dispose((v32 - 176), 8);
  nlp::CFScopedPtr<__CFURL const*>::reset((v30 + 48), 0);
  _Unwind_Resume(a1);
}

void __QPSpotlightKnowledgeSourceRefresh_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __QPSpotlightKnowledgeSourceRefresh_block_invoke_cold_2();
    }
  }

  else
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v3 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "reloaded lexicon", v5, 2u);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

uint64_t *QPSpotlightKnowledgeSourceSetOptions(uint64_t *result, CFDictionaryRef theDict)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_43;
  }

  v2 = *result;
  if (!*result)
  {
    goto LABEL_43;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"locale");
  }

  else
  {
    Value = 0;
  }

  if (*v2)
  {
    LanguageID = SILanguagesGetLanguageID();
    if (!Value)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LanguageID = 0;
    if (!Value)
    {
      goto LABEL_15;
    }
  }

  v6 = SILanguagesGetLanguageID();
  if (v6 && v6 != LanguageID)
  {
    if (*v2)
    {
      CFRelease(*v2);
    }

    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1C695ACD0](Value);
    *v2 = CFLocaleCreate(v7, v8);
    v9 = 1;
    goto LABEL_17;
  }

LABEL_15:
  if (*(v2 + 72) != 1)
  {
    goto LABEL_37;
  }

  v9 = 0;
LABEL_17:
  v10 = *(v2 + 8);
  if (v10)
  {
    v11 = CFDictionaryContainsKey(v10, @"waitWithTimeout") != 0;
    v12 = *(v2 + 8);
    if (v12)
    {
      v13 = CFDictionaryContainsKey(v12, @"waitForLoad") != 0;
      if (!theDict)
      {
        goto LABEL_20;
      }

LABEL_24:
      v14 = CFDictionaryContainsKey(theDict, @"waitForLoad") != 0;
      v15 = CFDictionaryContainsKey(theDict, @"waitWithTimeout") != 0;
      if (v9)
      {
LABEL_27:
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = ___ZL37QPSpotlightKnowledgeContextSetOptionsP26_SpotlightKnowledgeContextPK14__CFDictionary_block_invoke;
        v21[3] = &unk_1E8267AE0;
        v21[4] = v16;
        QPSpotlightKnowledgeContextUpdateResources(v2, v21);
        if (sourceLogger(void)::token != -1)
        {
          enumeratePossibleStringsWithType();
        }

        v17 = sourceLogger(void)::log;
        if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v23 = 500;
          _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_DEFAULT, "lexicon loading - wait for time (%u) ms", buf, 8u);
        }

        v18 = dispatch_time(0, 500000000);
        if (dispatch_group_wait(v16, v18))
        {
          if (sourceLogger(void)::token != -1)
          {
            enumeratePossibleStringsWithType();
          }

          if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
          {
            QPSpotlightKnowledgeSourceRefresh_cold_3();
          }
        }

        dispatch_release(v16);
        goto LABEL_37;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
  if (theDict)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = 0;
  v15 = 0;
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (v13 != v14) | (v11 ^ v15) & 1 && ((v14 | v15))
  {
    goto LABEL_27;
  }

LABEL_37:
  v19 = *(v2 + 8);
  if (v19)
  {
    CFRelease(v19);
    *(v2 + 8) = 0;
  }

  if (theDict)
  {
    result = CFRetain(theDict);
  }

  else
  {
    result = 0;
  }

  *(v2 + 8) = result;
LABEL_43:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void QPSpotlightKnowledgeSourceSetCustomFields(uint64_t *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 104);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v4;
      block[5] = v2;
      block[6] = a2;
      dispatch_sync(v5, block);
      v6 = *(v2 + 16);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 16) = 0;
      }

      if (a2)
      {
        *(v2 + 16) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
      }
    }
  }
}

void QPSpotlightKnowledgeSourceRelease(uint64_t a1)
{
  if (QPSpotlightKnowledgeSourceRelease::onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    QPSpotlightKnowledgeSourceRelease_cold_1();
    if (!a1)
    {
      return;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __QPSpotlightKnowledgeSourceRelease_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(QPSpotlightKnowledgeSourceRelease::sReleaseQueue, block);
}

dispatch_queue_t __QPSpotlightKnowledgeSourceRelease_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("com.apple.QueryParser.SpotlightKnowledgeSource.Release", v1);
  QPSpotlightKnowledgeSourceRelease::sReleaseQueue = result;
  return result;
}

void __QPSpotlightKnowledgeSourceRelease_block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 32);
  if (v2)
  {
    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 8) = 0;
    }

    unloadSafetyResources(v2);
    if (*(v2 + 40))
    {
      SILexiconCacheRelease();
      *(v2 + 40) = 0;
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 16) = 0;
    }

    v5 = *(v2 + 120);
    if (v5)
    {
      *(v2 + 75) = 1;
      dispatch_sync(v5, &__block_literal_global_392);
      dispatch_sync(*(v2 + 104), &__block_literal_global_394);
      dispatch_sync(*(v2 + 112), &__block_literal_global_396);
      dispatch_sync(*(v2 + 96), &__block_literal_global_398);
      dispatch_sync(*(v2 + 88), &__block_literal_global_400);
      v6 = *(v2 + 128);
      if (v6)
      {
        dispatch_source_cancel(*(v2 + 128));
        dispatch_release(v6);
      }
    }

    dispatch_sync(*(v2 + 104), &__block_literal_global_402);
    dispatch_sync(*(v2 + 112), &__block_literal_global_404);
    dispatch_sync(*(v2 + 96), &__block_literal_global_406);
    dispatch_sync(*(v2 + 88), &__block_literal_global_408);
    v7 = *(v2 + 48);
    if (v7)
    {
      QPStringCacheRelease(v7);
      *(v2 + 48) = 0;
    }

    v8 = *(v2 + 56);
    if (v8)
    {
      QPStringCacheRelease(v8);
      *(v2 + 56) = 0;
    }

    v9 = *(v2 + 64);
    if (v9)
    {
      QPSpotlightCacheRelease(v9);
      *(v2 + 64) = 0;
    }

    v10 = *(v2 + 104);
    if (v10)
    {
      dispatch_release(v10);
      *(v2 + 104) = 0;
    }

    v11 = *(v2 + 112);
    if (v11)
    {
      dispatch_release(v11);
      *(v2 + 112) = 0;
    }

    v12 = *(v2 + 96);
    if (v12)
    {
      dispatch_release(v12);
      *(v2 + 96) = 0;
    }

    v13 = *(v2 + 88);
    if (v13)
    {
      dispatch_release(v13);
      *(v2 + 88) = 0;
    }

    v14 = *(v2 + 120);
    if (v14)
    {
      dispatch_release(v14);
    }

    free(v2);
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v15 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEFAULT, "released QPSpotlightKnowledgeContext", buf, 2u);
    }
  }

  free(*(a1 + 32));
  if (sourceLogger(void)::token != -1)
  {
    enumeratePossibleStringsWithType();
  }

  v16 = sourceLogger(void)::log;
  if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1C6584000, v16, OS_LOG_TYPE_DEFAULT, "released QPSpotlightKnowledgeSource", v17, 2u);
  }
}

BOOL addValue(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || ![(__CFString *)a2 length]|| [(__CFString *)a2 length]> 0x28)
  {
    return 0;
  }

  if ((a4 & 0xFFFFFFFE) != 2)
  {
    v30.length = [(__CFString *)a2 length];
    v30.location = 0;
    v17 = [copyStringInsertingSpacesBetweenIdeographCharacters(a2 v30)];
    v18 = a1;
    v19 = a4;
    return QPStringCacheAddWithCount(v18, v17, v19, a3) != 0;
  }

  if (([(__CFString *)a2 containsString:@"@"]& 1) != 0 || ([(__CFString *)a2 containsString:@"+"]& 1) != 0)
  {
    return 0;
  }

  v28.length = [(__CFString *)a2 length];
  v28.location = 0;
  v10 = [copyStringInsertingSpacesBetweenIdeographCharacters(a2 v28)];
  if (([(__CFString *)v10 isEqualToString:[(__CFString *)a2 lowercaseString]]& 1) == 0)
  {
    v18 = a1;
    v17 = v10;
    v19 = 3;
    return QPStringCacheAddWithCount(v18, v17, v19, a3) != 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x4012000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = &unk_1C664F151;
  v27 = xmmword_1C6632590;
  v11 = [(__CFString *)a2 length];
  v12 = *MEMORY[0x1E696A550];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZL8addValueP14_QPStringCacheP8NSStringm18SpotlightInputType_block_invoke;
  v20[3] = &unk_1E8267B08;
  v20[4] = &v21;
  [(__CFString *)a2 enumerateLinguisticTagsInRange:0 scheme:v11 options:v12 orthography:4 usingBlock:0, v20];
  if (v22[6] == 0x7FFFFFFFFFFFFFFFLL || (v13 = v22[7], v13 >= [(__CFString *)a2 length]))
  {
    v16 = QPStringCacheAddWithCount(a1, v10, 3, a3) == 0;
  }

  else
  {
    v14 = [(__CFString *)a2 substringWithRange:v22[6], v22[7]];
    v29.length = [(__CFString *)v14 length];
    v29.location = 0;
    v15 = [copyStringInsertingSpacesBetweenIdeographCharacters(v14 v29)];
    LOBYTE(v14) = QPStringCacheAddWithCount(a1, v15, 3, a3);
    v16 = (QPStringCacheAddWithCount(a1, v10, a4, a3) | v14) == 0;
  }

  v8 = !v16;
  _Block_object_dispose(&v21, 8);
  return v8;
}

void sub_1C660BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t createQueryString(NSArray *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [(NSArray *)a1 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v13 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(a1);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        v6 = [MEMORY[0x1E695DF70] array];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@=*", v5)}];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = [&unk_1F45F8DE0 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(&unk_1F45F8DE0);
              }

              [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@!=%@", v5, *(*(&v15 + 1) + 8 * j))}];
            }

            v8 = [&unk_1F45F8DE0 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v8);
        }

        [v14 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@)", objc_msgSend(v6, "componentsJoinedByString:", @" && "}];
      }

      v3 = [(NSArray *)a1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v3);
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", objc_msgSend(v14, "componentsJoinedByString:", @" || "];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void extractSpotlightTermsWithContext(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v13 = *(a1 + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke;
    block[3] = &unk_1E8267B30;
    block[4] = a2;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    block[9] = a1;
    v23 = 1;
    dispatch_sync(v13, block);
  }

  else if ([a4 containsObject:@"kMDItemPhotosLocationKeywords"])
  {
    v14 = *(a1 + 120);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_2;
    v20[3] = &unk_1E8267B30;
    v20[4] = a2;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;
    v20[8] = a6;
    v20[9] = a1;
    v21 = 0;
    dispatch_async(v14, v20);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_3;
    handler[3] = &unk_1E8267B30;
    handler[4] = a2;
    handler[5] = a3;
    handler[6] = a4;
    handler[7] = a5;
    handler[8] = a6;
    handler[9] = a1;
    v19 = 0;
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v17 = v16;
    if (v16)
    {
      dispatch_source_set_timer(v16, Current, 0x34630B8A000uLL, 0x68C61714000uLL);
      dispatch_source_set_event_handler(v17, handler);
      dispatch_resume(v17);
    }

    *(a1 + 128) = v17;
  }
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZL8addValueP14_QPStringCacheP8NSStringm18SpotlightInputType_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  if (*(v7 + 48) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v7 + 48) = a3;
    *(v7 + 56) = a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

void queryForAttributes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  spid = os_signpost_id_generate(sourceLogger(void)::log);
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = sourceLogger(void)::log;
    if (os_signpost_enabled(sourceLogger(void)::log))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "query backend", &unk_1C664887A, &buf, 2u);
    }
  }

  if ((*(a1 + 75) & 1) == 0)
  {
    v15 = *(a1 + 80);
    Current = CFAbsoluteTimeGetCurrent();
    if (a7 & 1 | (v15 == 0.0))
    {
      v17 = Current + -31536000.0;
    }

    else
    {
      v17 = *(a1 + 80);
    }

    if (v15 == 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = a7;
    }

    if (v18)
    {
      v19 = 1000;
    }

    else
    {
      v19 = 100;
    }

    *(a1 + 80) = Current;
    v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"(InRange(kMDItemContentCreationDate, %f, %f)) || (_kMDItemContentCreationDateYear!=* && InRange(kMDItemAttributeChangeDate, %f, %f))", *&v17, *&Current, *&v17, *&Current);
    v21 = objc_alloc_init(MEMORY[0x1E6964E70]);
    v40[0] = a2;
    [v21 setFilterQueries:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v40, 1)}];
    [v21 setFetchAttributes:a4];
    [v21 setRankingQueries:a5];
    [v21 setBundleIDs:a3];
    [v21 setLowPriority:1];
    [v21 setAttribute:1];
    [v21 setMaxCount:v19];
    [v21 setMaximumBatchSize:(6554 * v19) >> 16];
    [v21 setDisableResultStreaming:1];
    if ([a4 containsObject:@"kMDItemPhotosLocationKeywords"])
    {
      [v21 setMaxCount:*(a1 + 144)];
      [v21 setMaximumBatchSize:500];
      v20 = &stru_1F45E9EA0;
    }

    v22 = mach_absolute_time();
    v23 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v20 queryContext:v21];
    v24 = *(a1 + 96);
    v25 = *(a1 + 104);
    objc_initWeak(&buf, v23);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke;
    v37[3] = &unk_1E8267B80;
    v38[1] = a1;
    v37[4] = v25;
    objc_copyWeak(v38, &buf);
    v37[5] = a6;
    v37[6] = v24;
    [v23 setFoundAttributesHandler:v37];
    [v23 setChangedAttributesHandler:v37];
    v26 = dispatch_group_create();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_298;
    v35[3] = &unk_1E8267BA8;
    objc_copyWeak(&v36, &buf);
    [v23 setGatherEndedHandler:v35];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299;
    v33[3] = &unk_1E8267BF8;
    v34[1] = v22;
    v33[4] = v25;
    v33[5] = v26;
    objc_copyWeak(v34, &buf);
    [v23 setCompletionHandler:v33];
    dispatch_group_enter(v26);
    [v23 start];
    [v23 poll];
    v27 = dispatch_time(0, 60000000000);
    dispatch_group_wait(v26, v27);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    v28 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_1C6584000, v28, OS_LOG_TYPE_DEFAULT, "queryForAttributes: finished attribute query", v32, 2u);
    }

    dispatch_release(v26);
    if (sourceLogger(void)::token != -1)
    {
      enumeratePossibleStringsWithType();
    }

    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v29 = sourceLogger(void)::log;
      if (os_signpost_enabled(sourceLogger(void)::log))
      {
        *v32 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6584000, v29, OS_SIGNPOST_INTERVAL_END, spid, "query backend", &unk_1C664887A, v32, 2u);
      }
    }

    objc_destroyWeak(v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(v38);
    objc_destroyWeak(&buf);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1C660C7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(v1 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL32extractSpotlightTermsWithContextP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_h_block_invoke_4;
  block[3] = &unk_1E8267B30;
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  v8 = v1;
  v9 = *(a1 + 80);
  dispatch_async(v2, block);
}

void ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 64) + 75))
  {
    Weak = objc_loadWeak((a1 + 56));
    [Weak cancel];

    [Weak poll];
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2;
    v8[3] = &unk_1E8267B58;
    objc_copyWeak(v10, (a1 + 56));
    v10[1] = *(a1 + 64);
    v8[4] = a2;
    v8[5] = a3;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
    objc_destroyWeak(v10);
  }
}

void ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 64));
  if ([*(a1 + 32) isEqualToString:@"kCSEndOfBatchMarker"])
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v3 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v21) = Weak != 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "queryForAttributes: polling %d", buf, 8u);
    }

    [Weak poll];
    goto LABEL_23;
  }

  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  v4 = sourceLogger(void)::log;
  if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "queryForAttributes: attributes: %@", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isEqualToString:@"kMDItemPhotosLocationKeywords"] || (objc_msgSend(&unk_1F45F8DB0, "containsObject:", *(a1 + 32)) & 1) != 0 || objc_msgSend(&unk_1F45F8DC8, "containsObject:", *(a1 + 32)))
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 5;
    goto LABEL_15;
  }

  if ([&unk_1F45F8D80 containsObject:*(a1 + 32)])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 7;
    goto LABEL_15;
  }

  if ([&unk_1F45F8D98 containsObject:*(a1 + 32)])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 6;
    goto LABEL_15;
  }

  if ([*(a1 + 32) isEqualToString:@"kMDItemEventHotelReservationForName"])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 11;
    goto LABEL_15;
  }

  if ([*(a1 + 32) isEqualToString:@"kMDItemVendorName"])
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 9;
    goto LABEL_15;
  }

  if (([*(a1 + 32) isEqualToString:@"kMDItemDisplayName"] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"kMDItemAlternateNames"))
  {
    v7 = *(*(a1 + 72) + 48);
    v8 = *(a1 + 40);
    v9 = 8;
LABEL_15:
    v10 = updateWithValues(v7, v8, v9);
    objc_autoreleasePoolPop(v6);
    if ((v10 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (![*(a1 + 48) containsObject:*(a1 + 32)])
  {
    objc_autoreleasePoolPop(v6);
    goto LABEL_23;
  }

  v18 = updateWithValues(*(*(a1 + 72) + 48), *(a1 + 40), 2u);
  objc_autoreleasePoolPop(v6);
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_16:
  LiveCount = QPStringCacheGetLiveCount(*(*(a1 + 72) + 48));
  v12 = *(a1 + 72);
  if (LiveCount > *(v12 + 144))
  {
    QPStringCachePrune(*(v12 + 48));
    v12 = *(a1 + 72);
  }

  v13 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_296;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v12;
  dispatch_sync(v13, block);
  if (sourceLogger(void)::token != -1)
  {
    enumeratePossibleStringsWithType();
  }

  v14 = sourceLogger(void)::log;
  v15 = os_signpost_id_generate(sourceLogger(void)::log);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v14, OS_SIGNPOST_EVENT, v16, "QPStringCache updates", &unk_1C664887A, buf, 2u);
    }
  }

LABEL_23:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t updateWithValues(uint64_t a1, void *a2, unsigned int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = [a2 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v22)
  {
    v19 = a3;
    v5 = 0;
    v21 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        objc_opt_class();
        v23 = v6;
        if ((objc_opt_isKindOfClass() & 1) != 0 && -[__CFString length](v7, "length") && [-[__CFString stringByTrimmingCharactersInSet:](v7 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")), "length"}])
        {
          if (v19 == 2)
          {
            v8 = [(__CFString *)v7 componentsSeparatedByString:@";"];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v24 = v8;
            v9 = [v8 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v9)
            {
              v10 = v9;
              v25 = *v31;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v31 != v25)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v12 = [*(*(&v30 + 1) + 8 * i) componentsSeparatedByString:@"/"];
                  v26 = 0u;
                  v27 = 0u;
                  v28 = 0u;
                  v29 = 0u;
                  v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
                  if (v13)
                  {
                    v14 = v13;
                    v15 = *v27;
                    do
                    {
                      for (j = 0; j != v14; ++j)
                      {
                        if (*v27 != v15)
                        {
                          objc_enumerationMutation(v12);
                        }

                        v5 |= addValue(a1, [*(*(&v26 + 1) + 8 * j) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")}], 1, 2);
                      }

                      v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
                    }

                    while (v14);
                  }
                }

                v10 = [v24 countByEnumeratingWithState:&v30 objects:v39 count:16];
              }

              while (v10);
            }
          }

          else
          {
            v5 |= addValue(a1, v7, 1, v19);
          }
        }

        v6 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [a2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v22);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

uint64_t ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_298(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  [Weak poll];

  return [Weak setGatherEndedHandler:0];
}

uint64_t ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299_cold_1();
  }

  v5 = QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo;
  v4 = dword_1EDAC3FEC;
  if (sourceLogger(void)::token != -1)
  {
    QPSpotlightKnowledgeSourceCreate_cold_1();
  }

  v6 = sourceLogger(void)::log;
  if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = (((v3 - v2) * v5 / v4) / 1000000.0);
    _os_log_impl(&dword_1C6584000, v6, OS_LOG_TYPE_DEFAULT, "queryForAttributes: query complete in %.1fms", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_300;
  block[3] = &unk_1E8267BD0;
  v7 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v7, block);
  Weak = objc_loadWeak((a1 + 48));
  [Weak setFoundAttributesHandler:0];
  [Weak setChangedAttributesHandler:0];
  [Weak setGatherEndedHandler:0];
  result = [Weak setCompletionHandler:0];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke(uint64_t a1)
{
  block[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    MEMORY[0x1EEE9AC00](Count);
    v5 = (block - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v5, v4);
    CFDictionaryGetKeysAndValues(*(a1 + 32), v5, 0);
    v6 = Count > 0;
    if (Count >= 1)
    {
      v7 = Count;
      do
      {
        v8 = *v5;
        v9 = *(*(a1 + 40) + 48);
        if (*v5)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v22.length = [*v5 length];
          v22.location = 0;
          v11 = [copyStringInsertingSpacesBetweenIdeographCharacters(v8 v22)];
          QPStringCacheRemove(v9, v11, 0xAu);
        }

        ++v5;
        --v7;
      }

      while (v7);
    }

    v13 = (a1 + 48);
    v12 = *(a1 + 48);
    if (!v12)
    {
      if (Count <= 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v13 = (a1 + 48);
    v12 = *(a1 + 48);
    if (!v12)
    {
      goto LABEL_20;
    }

    v6 = 0;
  }

  v14 = CFDictionaryGetCount(v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (block - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v16, v15);
  CFDictionaryGetKeysAndValues(*v13, v16, 0);
  if (v14 >= 1)
  {
    do
    {
      v17 = *v16++;
      addValue(*(*(a1 + 40) + 48), v17, 1, 10);
      --v14;
    }

    while (v14);
    goto LABEL_19;
  }

  if (v6)
  {
LABEL_19:
    QPStringCachePrune(*(*(a1 + 40) + 48));
    v18 = *(a1 + 40);
    v19 = *(v18 + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL30extractCustomFieldsWithContextP26_SpotlightKnowledgeContextPK14__CFDictionaryS3__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v18;
    dispatch_sync(v19, block);
  }

LABEL_20:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t QPSpotlightKnowledgeContextAnnotationsAvailable(uint64_t *a1)
{
  if (*(a1 + 72) != 1 || !a1[4])
  {
    return 0;
  }

  if (*(a1 + 73))
  {
    return 1;
  }

  v1 = *a1;
  v2 = a1[5];
  result = SILexiconCacheIsAvailable();
  if (result)
  {
    return 1;
  }

  return result;
}

void QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForString(uint64_t *a1, CFStringRef theString, CFRange *a3, uint64_t a4, void *a5)
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a5)
    {
      v11 = Length;
      if (Length)
      {
        v40 = *a1;
        if (QPSpotlightKnowledgeContextAnnotationsAvailable(a1))
        {
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v11, 0x8000100u);
          v30[0] = v30;
          v31 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
          v34 = v30 - v13;
          bzero(v30 - v13, v31 + 1);
          v52[0] = 0;
          v51 = 5;
          QPCFDictionaryGetInt32ValueIfPresent(a1[3], @"maxTokenCount", &v51);
          v50 = 6;
          QPCFDictionaryGetInt32ValueIfPresent(a1[3], @"hashSize", &v50);
          v46 = 0;
          v47 = &v46;
          v48 = 0x2020000000;
          v49 = 0;
          if (a4 >= 1)
          {
            v14 = 0;
            v38 = MEMORY[0x1E69E9820];
            v37 = ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke;
            v36 = MEMORY[0x1E69E9820];
            v35 = ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke_2;
            v30[1] = v44;
            p_length = &a3[-1].length;
            v32 = a5;
            while (1)
            {
              p_location = &a3[v14].location;
              v16 = p_location[1];
              v39 = *p_location;
              v45[0] = 0;
              v45[1] = v45;
              v45[2] = 0x2020000000;
              v45[3] = v14;
              v17 = a1[5];
              v44[11] = a5;
              v44[12] = v38;
              v44[13] = 3221225472;
              v44[14] = v37;
              v44[15] = &unk_1E8267C40;
              v44[16] = v45;
              v44[17] = a4;
              v44[18] = a3;
              v44[6] = v36;
              v44[7] = 3221225472;
              v44[8] = v35;
              v44[9] = &unk_1E8267C68;
              v44[10] = &v46;
              if (!SILexiconCacheEnumerateAnyAnnotationsInString())
              {
                v18 = QPAnnotationsCopyNormalizedString(v40, theString, v39, v16);
                v19 = v18;
                if (v18)
                {
                  v53.length = CFStringGetLength(v18);
                  v53.location = 0;
                  CFStringGetBytes(v19, v53, 0x8000100u, 0x2Du, 0, v34, v31 + 1, v52);
                  v34[v52[0]] = 0;
                  v20 = a1[5];
                  v42 = MEMORY[0x1E69E9820];
                  v43 = 3221225472;
                  v44[0] = ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke_3;
                  v44[1] = &unk_1E8267C90;
                  v44[4] = v39;
                  v44[5] = v16;
                  v44[2] = &v46;
                  v44[3] = a5;
                  SILexiconCacheEnumerateOVSAnnotationsInString();
                  CFRelease(v19);
                }
              }

              if (*(v47 + 24) == 1)
              {
                break;
              }

              if (a1[4] && ((v41 = 0, v14 + v51 >= a4) ? (v21 = a4) : (v21 = v14 + v51), v22 = v21 - v14, v21 > v14))
              {
                v23 = &p_length[2 * v21];
                while (1)
                {
                  PayloadWithTokens = QPAnnotationsGetPayloadWithTokens(a1[4], v50, v40, theString, a3, v14, v22, &v41);
                  --v21;
                  if (v41 == 1)
                  {
                    break;
                  }

                  --v22;
                  v23 -= 16;
                  if (v21 <= v14)
                  {
                    a5 = v32;
                    goto LABEL_22;
                  }
                }

                v27 = v23 - 8;
                v26 = *(v23 - 1);
                v25 = *(v27 + 1);
                QPAnnotationsGetIdentifier(PayloadWithTokens);
                a5 = v32;
                (*(*v32 + 16))(*v32);
                v14 = v21;
LABEL_22:
                v28 = *(v47 + 24);
                _Block_object_dispose(v45, 8);
                if (v28)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                _Block_object_dispose(v45, 8);
              }

              if (++v14 >= a4)
              {
                goto LABEL_26;
              }
            }

            _Block_object_dispose(v45, 8);
          }

LABEL_26:
          _Block_object_dispose(&v46, 8);
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1C660D9AC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke(void *a1)
{
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 24);
  if (v2 >= a1[5])
  {
    return -1;
  }

  v3 = (a1[6] + 16 * v2);
  result = *v3;
  v5 = v3[1];
  *(v1 + 24) = v2 + 1;
  return result;
}

uint64_t ___ZL64QPSpotlightKnowledgeContextEnumerateTypesAndAnnotationsForStringP26_SpotlightKnowledgeContextPK10__CFStringPK7CFRangelPU13block_pointerFvS4_S3_PbESA__block_invoke_2(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = **(a1 + 40);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = @"SENSITIVE";
  }

  result = (*(v9 + 16))(v9, a3, a4, v10, *(v8 + 8) + 24);
  *a5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_2;
  v4[3] = &unk_1E8267CD8;
  v4[4] = *(a1 + 32);
  v4[5] = v1;
  return QPStringCacheEnumerateStrings(v2, v4);
}

void ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_2(uint64_t a1, const void *a2, int a3)
{
  if (a3 > 6)
  {
    if (a3 <= 8)
    {
      v12 = *(a1 + 32);
      v6 = *(*(a1 + 32) + 16);
    }

    else
    {
      switch(a3)
      {
        case 9:
          v16 = *(a1 + 32);
          v6 = *(*(a1 + 32) + 16);
          break;
        case 10:
          v17 = *(a1 + 32);
          v6 = *(*(a1 + 32) + 16);
          break;
        case 11:
          v7 = *(a1 + 32);
          v6 = *(*(a1 + 32) + 16);
          break;
        default:
          return;
      }
    }

    goto LABEL_20;
  }

  if (a3 <= 3)
  {
    if (a3 == 2)
    {
      v13 = *(a1 + 32);
      v6 = *(*(a1 + 32) + 16);
      goto LABEL_20;
    }

    if (a3 != 3)
    {
      return;
    }

    v8 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
    CFRetain(a2);
    v9 = *(a1 + 40);
    v10 = *(v9 + 112);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_3;
    v19[3] = &__block_descriptor_48_e5_v8__0l;
    v19[4] = a2;
    v19[5] = v9;
    v11 = v19;
LABEL_16:
    dispatch_async(v10, v11);
    return;
  }

  if (a3 == 4)
  {
    v14 = *(a1 + 32);
    (*(*(a1 + 32) + 16))();
    CFRetain(a2);
    v15 = *(a1 + 40);
    v10 = *(v15 + 112);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_4;
    v18[3] = &__block_descriptor_48_e5_v8__0l;
    v18[4] = a2;
    v18[5] = v15;
    v11 = v18;
    goto LABEL_16;
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 32) + 16);
LABEL_20:

  v6();
}

void ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_3(uint64_t a1)
{
  QPStringCacheAdd(*(*(a1 + 40) + 56), [*(a1 + 32) lowercaseString], 3);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void ___ZL51QPSpotlightKnowledgeContextEnumerateStringsWithTypeP26_SpotlightKnowledgeContextU13block_pointerFvPK10__CFStringS3_PbE_block_invoke_4(uint64_t a1)
{
  QPStringCacheAdd(*(*(a1 + 40) + 56), [*(a1 + 32) lowercaseString], 4);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t __Block_byref_object_copy__353(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t ___ZL36QPSpotlightKnowledgeContextCopyTypesP26_SpotlightKnowledgeContextPK10__CFStringh_block_invoke(void *a1)
{
  result = QPStringCacheHasPrefixWithValue(*(a1[6] + 56), *(*(a1[5] + 8) + 48), 3);
  *(*(a1[4] + 8) + 24) = result != 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    result = QPStringCacheHasPrefixWithValue(*(a1[6] + 56), *(*(a1[5] + 8) + 48), 4);
    *(*(a1[4] + 8) + 24) = result != 0;
  }

  return result;
}

uint64_t ___ZL42QPSpotlightKnowledgeContextUpdateResourcesP26_SpotlightKnowledgeContexthU13block_pointerFvP9__CFErrorE_block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    ___ZL18queryForAttributesP26_SpotlightKnowledgeContextP8NSStringP7NSArrayS4_S4_S4_b_block_invoke_2_299_cold_1();
  }

  v6 = ((v5 - v4) * QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / dword_1EDAC3FEC) / 1000000.0;
  if (a2)
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v7 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      ___ZL42QPSpotlightKnowledgeContextUpdateResourcesP26_SpotlightKnowledgeContexthU13block_pointerFvP9__CFErrorE_block_invoke_cold_3(v7, v6);
    }
  }

  else
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v8 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_1C6584000, v8, OS_LOG_TYPE_DEFAULT, "loaded lexicon cache in %.1fms", &v11, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__362_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZL19loadSafetyResourcesP26_SpotlightKnowledgeContextb_block_invoke(uint64_t a1, CFURLRef url)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (CFStringsAreEqual(PathComponent, @"config.plist"))
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = CFRetain(url);
  }

  else
  {
    if (!CFStringsAreEqual(PathComponent, @"safety_resources.map"))
    {
      goto LABEL_6;
    }

    v5 = *(*(a1 + 40) + 8);
    v6 = CFRetain(url);
  }

  nlp::CFScopedPtr<__CFURL const*>::reset((v5 + 48), v6);
LABEL_6:
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }
}

void sub_1C660E134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t unloadSafetyResources(uint64_t a1)
{
  if (*(a1 + 24) || *(a1 + 32))
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v2 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6584000, v2, OS_LOG_TYPE_INFO, "safety: unloading previous resources", v5, 2u);
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = SIDataMapRelease();
    *(a1 + 32) = 0;
  }

  return result;
}

os_log_t ___ZL12sourceLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QPSpotlightKnowledgeSource");
  sourceLogger(void)::log = result;
  return result;
}

void ___ZL37QPSpotlightKnowledgeContextSetOptionsP26_SpotlightKnowledgeContextPK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __QPSpotlightKnowledgeSourceRefresh_block_invoke_cold_2();
    }
  }

  else
  {
    if (sourceLogger(void)::token != -1)
    {
      QPSpotlightKnowledgeSourceCreate_cold_1();
    }

    v3 = sourceLogger(void)::log;
    if (os_log_type_enabled(sourceLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEFAULT, "reloaded lexicon", v4, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *QPStringCacheCreateWithOptions(const void *a1, const __CFDictionary *a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0x106004038EB2D4CuLL);
  if (v4)
  {
    if (a1)
    {
      v5 = CFRetain(a1);
    }

    else
    {
      v5 = 0;
    }

    v4[1] = 0;
    *v4 = v5;
    v4[2] = 0;
    v4[3] = 0;
    v6 = *MEMORY[0x1E695E480];
    v4[4] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    MutableWithOptions = SIGeneralTrieCreateMutableWithOptions();
    *(v4 + 14) = 0x7FFFFFFF;
    v4[5] = MutableWithOptions;
    v4[6] = 0;
    v4[8] = 0x3FF0000000000000;
    if (a2)
    {
      if (CFDictionaryContainsKey(a2, @"cacheSize"))
      {
        Value = CFDictionaryGetValue(a2, @"cacheSize");
        CFNumberGetValue(Value, kCFNumberCFIndexType, v4 + 7);
      }

      if (CFDictionaryContainsKey(a2, @"cacheGrowthFactor"))
      {
        v9 = CFDictionaryGetValue(a2, @"cacheGrowthFactor");
        CFNumberGetValue(v9, kCFNumberDoubleType, v4 + 8);
      }

      if (CFDictionaryContainsKey(a2, @"doNotPruneList"))
      {
        v10 = CFDictionaryGetValue(a2, @"doNotPruneList");
        Mutable = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
        Count = CFArrayGetCount(v10);
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
            CFSetAddValue(Mutable, ValueAtIndex);
          }
        }

        v4[2] = Mutable;
      }

      if (CFDictionaryContainsKey(a2, @"alwaysPruneList"))
      {
        v16 = CFDictionaryGetValue(a2, @"alwaysPruneList");
        v17 = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
        v18 = CFArrayGetCount(v16);
        if (v18 >= 1)
        {
          v19 = v18;
          for (j = 0; j != v19; ++j)
          {
            v21 = CFArrayGetValueAtIndex(v16, j);
            CFSetAddValue(v17, v21);
          }
        }

        v4[1] = v17;
      }
    }

    *(v4 + 18) = 1;
  }

  return v4;
}

uint64_t QPStringCacheAddWithCount(uint64_t result, CFStringRef theString, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = *(result + 40);
    if (result)
    {
      v11 = 0;
      add(result, *(v4 + 32), *(v4 + 16), theString, a3, a4, &v11, &v11 + 1);
      v5 = v11;
      if (HIBYTE(v11) == 1 && v11 != 0)
      {
        ++*(v4 + 24);
      }

      v7 = *(v4 + 56);
      if (v7 != 0x7FFFFFFF)
      {
        v8 = *(v4 + 24) + v7 + (*(v4 + 64) * v7);
        v9 = *(v4 + 40);
        if (SIGeneralTrieGetCount() > v8)
        {
          prune(v4);
        }
      }

      v10 = *(v4 + 40);
      if (SIGeneralTrieGetCount() - *(v4 + 24) > (*(v4 + 64) * *(v4 + 56)))
      {
        return 1;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

void add(uint64_t a1, __CFSet *a2, const __CFSet *a3, CFStringRef theString, uint64_t a5, uint64_t a6, BOOL *a7, _BYTE *a8)
{
  v29 = *MEMORY[0x1E69E9840];
  valuePtr = a5;
  if (a1)
  {
    if (theString)
    {
      if (CFStringGetLength(theString))
      {
        v14 = *MEMORY[0x1E695E480];
        v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%@", a5, theString);
        if (v15)
        {
          v16 = v15;
          v27[0] = v14;
          Length = CFStringGetLength(v15);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v27[1] = v27;
          v19 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
          v21 = v27 - v20;
          bzero(v27 - v20, v19 + 1);
          if (CFStringGetCString(v16, v21, MaximumSizeForEncoding + 1, 0x8000100u))
          {
            strlen(v21);
            v22 = SIGeneralTrieContainsKey();
            if (a7)
            {
              *a7 = v22 == 0;
            }

            v23 = v22;
            SIGeneralTrieAddKeyWithScore();
            v24 = CFNumberCreate(v27[0], kCFNumberIntType, &valuePtr);
            if (v24)
            {
              v25 = v24;
              if (a3 && a8 && CFSetContainsValue(a3, v24) && !v23)
              {
                *a8 = 1;
              }

              CFSetAddValue(a2, v25);
              CFRelease(v25);
            }
          }

          CFRelease(v16);
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void prune(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) && !*a1)
  {
    Count = CFSetGetCount(*(a1 + 32));
    v3 = *(a1 + 16);
    if (v3)
    {
      v3 = CFSetGetCount(v3);
    }

    v32 = &v30;
    v4 = *(a1 + 56);
    v37 = v4;
    if (Count == v3)
    {
      v5 = 0x7FFFFFFFLL;
    }

    else
    {
      v5 = v4 / (Count - v3);
    }

    MEMORY[0x1EEE9AC00](v3);
    v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFSetGetValues(*(a1 + 32), v7);
    *(a1 + 24) = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Count >= 1)
    {
      v8 = v7;
      do
      {
        v9 = *v8;
        v10 = *(a1 + 16);
        if (!v10 || !CFSetContainsValue(v10, *v8))
        {
          v11 = SITrieCompletionQueueCreate();
          CFDictionarySetValue(Mutable, v9, v11);
          CFRelease(v11);
        }

        ++v8;
        --Count;
      }

      while (Count);
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    MutableWithOptions = SIGeneralTrieCreateMutableWithOptions();
    v12 = *(a1 + 40);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZL5pruneP14_QPStringCache_block_invoke;
    v38[3] = &unk_1E8267DF0;
    v38[4] = &v39;
    v38[5] = a1;
    v13 = Mutable;
    v38[6] = Mutable;
    v38[7] = v37;
    enumerateCompletions(v12, &stru_1F45E9EA0, v38);
    v14 = CFDictionaryGetCount(v13);
    MEMORY[0x1EEE9AC00](v14);
    v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v16, v15);
    CFDictionaryGetKeysAndValues(v13, v7, v16);
    v31 = a1;
    if (v14 >= 1)
    {
      v30 = v14 - 1;
      v34 = v14;
      v17 = 0;
      v18 = 0;
      if (v5 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v5;
      }

      v35 = v19;
      do
      {
        v20 = v16[v17];
        v21 = v35;
        v36 = v35 + v18;
        while (CFBinaryHeapGetCount(v20) >= 1)
        {
          CFBinaryHeapGetMinimum(v20);
          v22 = v40[3];
          SITrieCompletionGetCompletion();
          SITrieCompletionGetLength();
          SITrieCompletionGetPayload();
          SITrieCompletionGetScore();
          SIGeneralTrieAddKeyWithScore();
          CFBinaryHeapRemoveMinimumValue(v20);
          ++v18;
          if (!--v21)
          {
            v18 = v36;
            break;
          }
        }

        if (v18 >= v37)
        {
          break;
        }

        ++v17;
      }

      while (v17 != v34);
      v23 = v30;
      if (v18 < v37)
      {
        do
        {
          v24 = v23;
          v25 = *v16;
          if (CFBinaryHeapGetCount(*v16) >= 1)
          {
            CFBinaryHeapGetMinimum(v25);
            v26 = v40[3];
            SITrieCompletionGetCompletion();
            SITrieCompletionGetLength();
            SITrieCompletionGetPayload();
            SITrieCompletionGetScore();
            SIGeneralTrieAddKeyWithScore();
            CFBinaryHeapRemoveMinimumValue(v25);
            ++v18;
          }

          if (v18 >= v37)
          {
            break;
          }

          v23 = v24 - 1;
          ++v16;
        }

        while (v24);
      }
    }

    CFRelease(Mutable);
    v27 = v31;
    v28 = *(v31 + 40);
    SIGeneralTrieRelease();
    *(v27 + 40) = v40[3];
    _Block_object_dispose(&v39, 8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void QPStringCacheRemove(uint64_t a1, CFStringRef theString, unsigned int a3)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      remove(*(a1 + 40), *(a1 + 16), theString, a3);
    }
  }
}

void remove(int a1, const __CFSet *a2, CFStringRef theString, unsigned int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = a4;
  if (theString && CFStringGetLength(theString))
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v7)
    {
      v8 = v7;
      if (a2)
      {
        v9 = CFSetContainsValue(a2, v7);
        CFRelease(v8);
        if (v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        CFRelease(v7);
      }
    }

    v10 = CFStringCreateWithFormat(v6, 0, @"%d:%@", valuePtr, theString);
    if (v10)
    {
      v11 = v10;
      Length = CFStringGetLength(v10);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v14 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
      v16 = &v18[-v15];
      bzero(&v18[-v15], v14 + 1);
      if (CFStringGetCString(v11, v16, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        strlen(v16);
        if (SIGeneralTrieContainsKey())
        {
          SIGeneralTrieAddKeyWithScore();
        }
      }

      CFRelease(v11);
    }
  }

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t QPStringCacheGetLiveCount(uint64_t a1)
{
  if (a1 && *(a1 + 40))
  {
    return SIGeneralTrieGetCount();
  }

  else
  {
    return 0;
  }
}

void QPStringCachePrune(uint64_t a1)
{
  if (a1)
  {
    prune(a1);
  }
}

uint64_t QPStringCacheEnumerateStrings(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 40);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __QPStringCacheEnumerateStrings_block_invoke;
    v3[3] = &unk_1E8267DC8;
    v3[4] = a2;
    return enumerateCompletions(v2, &stru_1F45E9EA0, v3);
  }

  return result;
}

uint64_t enumerateCompletions(uint64_t result, const __CFString *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  if (result && a3)
  {
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = &stru_1F45E9EA0;
    }

    CFStringGetLength(v3);
    Length = CFStringGetLength(v3);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
    v8 = v10 - v7;
    bzero(v10 - v7, v6 + 1);
    result = CFStringGetCString(v3, v8, MaximumSizeForEncoding + 1, 0x8000100u);
    if (result)
    {
      result = SIGeneralTrieSearch();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __QPStringCacheEnumerateStrings_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SITrieCompletionGetPayload())
  {
    Completion = SITrieCompletionGetCompletion();
    Length = SITrieCompletionGetLength();
    v7 = 0;
    if (Length)
    {
      while (1)
      {
        v8 = *(Completion + v7++);
        if (v8 == 58)
        {
          break;
        }

        if (Length == v7)
        {
          return;
        }
      }
    }

    if (v7 != Length)
    {
      v9 = (Completion + v7);
      v10 = Completion ? v9 : "";
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10, 0x8000100u);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 32);
        Payload = SITrieCompletionGetPayload();
        (*(v13 + 16))(v13, v12, Payload, a3);

        CFRelease(v12);
      }
    }
  }
}

uint64_t QPStringCacheHasPrefixWithValue(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return containsPrefixWithValue(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t containsPrefixWithValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%@", a3, a2);
  if (v4)
  {
    v5 = v4;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZL23containsPrefixWithValueP14_SIGeneralTriePKS_PK10__CFStringj_block_invoke;
    v8[3] = &unk_1E8267E18;
    v8[4] = &v9;
    enumerateCompletions(a1, v4, v8);
    CFRelease(v5);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void QPStringCacheRelease(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[18] - 1;
    a1[18] = v2;
    if (!v2)
    {
      v3 = *a1;
      if (*a1)
      {
        CFRelease(v3);
      }

      v4 = *(a1 + 4);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(a1 + 1);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(a1 + 2);
      if (v6)
      {
        CFRelease(v6);
      }

      if (*(a1 + 5))
      {
        SIGeneralTrieRelease();
      }

      if (*(a1 + 6))
      {
        SIGeneralTrieRelease();
      }

      free(a1);
    }
  }
}

void ___ZL5pruneP14_QPStringCache_block_invoke(uint64_t a1, const void *a2)
{
  valuePtr = SITrieCompletionGetPayload();
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (SITrieCompletionGetPayload())
  {
    v5 = *(*(a1 + 40) + 16);
    if (!v5 || !CFSetContainsValue(v5, v4))
    {
      Value = CFDictionaryGetValue(*(a1 + 48), v4);
      if (*(a1 + 56) <= CFBinaryHeapGetCount(Value))
      {
        CFBinaryHeapGetMinimum(Value);
        SITrieCompletionGetScore();
        v10 = v9;
        SITrieCompletionGetScore();
        if (v10 <= v11)
        {
          goto LABEL_9;
        }

        CFBinaryHeapRemoveMinimumValue(Value);
      }

      CFBinaryHeapAddValue(Value, a2);
      goto LABEL_9;
    }

    v6 = *(*(*(a1 + 32) + 8) + 24);
    SITrieCompletionGetCompletion();
    SITrieCompletionGetLength();
    SITrieCompletionGetPayload();
    SITrieCompletionGetScore();
    SIGeneralTrieAddKeyWithScore();
    SITrieCompletionGetScore();
    *(*(a1 + 40) + 24) = (v7 + *(*(a1 + 40) + 24));
  }

LABEL_9:
  CFRelease(v4);
}

uint64_t ___ZL23containsPrefixWithValueP14_SIGeneralTriePKS_PK10__CFStringj_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_1C660F878(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void localeChangeCallback(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = a2;
  if (v5)
  {
    [v5 updateLocale];
  }
}

id localeKeyForLocale(NSLocale *a1)
{
  v1 = a1;
  v2 = [(NSLocale *)v1 localeIdentifier];
  LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier();

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LanguageIDForIdentifier];
  v5 = [v4 stringValue];

  return v5;
}

void sub_1C660FD5C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C6611C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SystemListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

CFURLRef systemListenerCopyResourceFromBundleWithName(CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName, CFBundleRef bundle)
{
  if (!resourceName || !resourceType)
  {
    return 0;
  }

  if (!bundle)
  {
    bundle = CFBundleGetBundleWithIdentifier(@"com.apple.spotlight.QueryParser");
  }

  return CFBundleCopyResourceURL(bundle, resourceName, resourceType, subDirName);
}

void systemListenerEnableAutoUpdatingLocale(int a1)
{
  v2 = +[SystemListener defaultListener];
  [v2 setAutoUpdatingLocale:a1 != 0];
}

BOOL systemListenerResourcesAvailableForLocaleAndContentType(uint64_t a1, void *a2)
{
  v4 = +[SystemListener defaultListener];
  v5 = [v4 pathsForContentType:a2 locale:a1];
  if ([a2 isEqualToString:@"QueryParser"])
  {
    v6 = [v5 count] > 2;
  }

  else
  {
    v6 = [v5 count] != 0;
  }

  return v6;
}

void systemListenerEnumerateResourcesWithContentType(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = +[SystemListener defaultListener];
  [v13 pathsForContentType:a1 locale:0];
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      v14 = 0;
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [v9 fileExistsAtPath:v8 isDirectory:&v14];

      if (v10)
      {
        v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:v14];
        v3[2](v3, v11, &v19);
      }

      if (v19)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void systemListenerSetLocale(uint64_t a1, uint64_t a2)
{
  v4 = +[SystemListener defaultListener];
  [v4 updateLocaleWithLocale:a1 preferredLanguages:a2 force:1];
}

void *systemListenerGetLocale()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentLocale];

  return v1;
}

void *systemListenerGetRegion()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentRegion];

  return v1;
}

void *systemListenerGetPreferredLanguages()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentPreferredLanguages];

  return v1;
}

uint64_t systemListenerGetFirstWeekDay()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 currentFirstWeekDay];

  return v1;
}

void *systemListenerGetSupportedSemanticLanguages()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 supportedSemanticLanguages];

  return v1;
}

uint64_t systemListenerIsSemanticSearchEnabled()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 semanticSearchEnabled];

  return v1;
}

uint64_t systemListenerHasResourceUpdates()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 hasUpdatedResources];
  if (v1)
  {
    [v0 updateResources];
  }

  return v1;
}

uint64_t systemListenerHasLocaleUpdates()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 hasUpdatedLocale];

  return v1;
}

uint64_t systemListenerHasFirstWeekDayUpdates()
{
  v0 = +[SystemListener defaultListener];
  v1 = [v0 hasUpdatedFirstWeekDay];

  return v1;
}

uint64_t systemListenerGetLongValueTrialFactorForKey(uint64_t a1)
{
  v2 = +[SystemListener defaultListener];
  v3 = [v2 longValueTrialFactorForKey:a1];

  return v3;
}

void systemListenerLogTriggerForCodepathID(uint64_t a1, uint64_t a2)
{
  v4 = +[SystemListener defaultListener];
  [v4 logTriggerForCodepathID:a1 queryID:a2];
}

void ___ZL14listenerLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QueryParserListener");
  v2 = listenerLogger(void)::log;
  listenerLogger(void)::log = v1;
}

void QP::Transcriber::updateLocale(QP::Transcriber *this, const __CFLocale *a2)
{
  if (a2)
  {
    v4 = *this;
    if (!*this || (v5 = MEMORY[0x1C695ACD0](), v6 = MEMORY[0x1C695ACD0](a2), !CFStringsAreEqual(v5, v6)))
    {
      QP::Transcriber::clear(this);
      v7 = CFRetain(a2);
      *this = v7;
      v9.location = 0;
      v9.length = 0;
      *(this + 1) = CFStringTokenizerCreate(*MEMORY[0x1E695E480], &stru_1F45E9EA0, v9, 0x10000uLL, v7);
    }
  }

  else
  {

    QP::Transcriber::clear(this);
  }
}

QP::Transcriber *QP::Transcriber::Transcriber(QP::Transcriber *this, const __CFLocale *a2)
{
  *this = 0;
  *(this + 1) = 0;
  QP::Transcriber::updateLocale(this, a2);
  return this;
}

void QP::Transcriber::~Transcriber(QP::Transcriber *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

void QP::Transcriber::clear(QP::Transcriber *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
    *(this + 1) = 0;
  }
}

uint64_t QP::U2Parser::addArgActions(uint64_t a1, void **a2)
{
  v4 = *(a1 + 112);
  result = std::__tree<std::string>::find<std::string>(v4 + 432, a2);
  if (v4 + 440 != result)
  {
    result = std::__tree<std::string>::find<std::string>(v4 + 432, a2);
    v6 = *(result + 56);
    v7 = (result + 64);
    if (v6 != (result + 64))
    {
      do
      {
        result = std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 128, v6 + 13);
        v8 = *(v6 + 1);
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
            v9 = *(v6 + 2);
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
    }
  }

  return result;
}

void QP::U2Parser::addArgActionstoTimeAttr(uint64_t *a1, QP::ParseAttribute ***a2)
{
  v4 = a1[14];
  std::string::basic_string[abi:ne200100]<0>(__p, "ACTION");
  v5 = QP::ParserGrammar::symbolID(v4, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v6 = a2[1];
  if (v7 != v6)
  {
    v8 = a1 + 17;
    do
    {
      if (QP::ParseAttribute::flag(*v7) == 1 && (*(*v7 + 74) & 1) == 0)
      {
        v9 = a1[16];
        if (v9 != v8)
        {
          do
          {
            QP::ParseAttribute::addAction(*v7, v5, *(v9 + 13));
            v10 = v9[1];
            if (v10)
            {
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v11 = v9[2];
                v12 = *v11 == v9;
                v9 = v11;
              }

              while (!v12);
            }

            v9 = v11;
          }

          while (v11 != v8);
        }
      }

      v7 += 2;
    }

    while (v7 != v6);
  }
}

void sub_1C6612F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::U2Parser::mergeActionsforSearchtoolPersonalAnswers(uint64_t a1, uint64_t *a2, QP::ParseAttribute ***a3)
{
  result = SPQueryKindIsSearchToolSearch(*(*(a1 + 80) + 192));
  if (result)
  {
    result = std::string::starts_with[abi:ne200100](a2, "INTENT_FLIGHT");
    if (result & 1) != 0 || (result = std::string::starts_with[abi:ne200100](a2, "INTENT_HOTEL"), (result) || (result = std::string::starts_with[abi:ne200100](a2, "INTENT_RESTAURANT"), result))
    {
      v8 = *a3;
      v7 = a3[1];
      if (v8 != v7)
      {
        v9 = *(a1 + 112);
        do
        {
          result = QP::ParseAttribute::flag(*v8);
          if (result == 1 && (*(*v8 + 74) & 1) == 0)
          {
            result = std::__tree<std::string>::find<std::string>(v9 + 408, a2);
            if (v9 + 416 != result)
            {
              v10 = *(result + 56);
              v11 = (result + 64);
              if (v10 != (result + 64))
              {
                do
                {
                  v12 = v10[5];
                  if (v12 != v10 + 6)
                  {
                    v13 = *(v10 + 16);
                    do
                    {
                      result = QP::ParseAttribute::addAction(*v8, v13, *(v12 + 13));
                      v14 = v12[1];
                      if (v14)
                      {
                        do
                        {
                          v15 = v14;
                          v14 = *v14;
                        }

                        while (v14);
                      }

                      else
                      {
                        do
                        {
                          v15 = v12[2];
                          v16 = *v15 == v12;
                          v12 = v15;
                        }

                        while (!v16);
                      }

                      v12 = v15;
                    }

                    while (v15 != v10 + 6);
                  }

                  v17 = v10[1];
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
                      v18 = v10[2];
                      v16 = *v18 == v10;
                      v10 = v18;
                    }

                    while (!v16);
                  }

                  v10 = v18;
                }

                while (v18 != v11);
              }
            }
          }

          v8 += 2;
        }

        while (v8 != v7);
      }
    }
  }

  return result;
}

id QP::localIdentifierAliases(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        [v2 addObject:{v7, v13}];
        v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        [v2 addObject:v8];

        v9 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
        [v2 addObject:v9];
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = [v2 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t QP::isSupportedQULanguage(QP *this, NSLocale *a2)
{
  v2 = [(QP *)this languageCode];
  if ([v2 length])
  {
    if (QP::isSupportedQULanguage(NSLocale *)::onceToken != -1)
    {
      QP::isSupportedQULanguage();
    }

    v3 = [QP::isSupportedQULanguage(NSLocale *)::supportedLocales containsObject:v2];
  }

  else
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v4 = u2ParserLogger(void)::log;
    v3 = 0;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU] language string is empty", v6, 2u);
      v3 = 0;
    }
  }

  return v3;
}

id u2ParserLogger(void)
{
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v1 = u2ParserLogger(void)::log;

  return v1;
}

void ___ZN2QP21isSupportedQULanguageEP8NSLocale_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages))
  {
    _ZZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en", @"fr", @"es", @"de", @"ja", @"zh", @"pt", @"it", @"yue", @"nl", @"sv", @"zh_Hant", @"da", @"nb", @"ko", @"tr", @"vi", @"zh_Hans", 0}];
    __cxa_guard_release(&_ZGVZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages);
  }

  v0 = QP::localIdentifierAliases(_ZZZN2QP21isSupportedQULanguageEP8NSLocaleEUb_E18supportedLanguages);
  v1 = QP::isSupportedQULanguage(NSLocale *)::supportedLocales;
  QP::isSupportedQULanguage(NSLocale *)::supportedLocales = v0;
}

uint64_t QP::isSupportedECRLocale(QP *this, NSLocale *a2)
{
  v2 = [(QP *)this localeIdentifier];
  if ([v2 length])
  {
    if (QP::isSupportedECRLocale(NSLocale *)::onceToken != -1)
    {
      QP::isSupportedECRLocale();
    }

    v3 = [QP::isSupportedECRLocale(NSLocale *)::supportedLocaleIdentifiers containsObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___ZN2QP20isSupportedECRLocaleEP8NSLocale_block_invoke()
{
  v0 = QP::localIdentifierAliases(&unk_1F45F8E28);
  v1 = QP::isSupportedECRLocale(NSLocale *)::supportedLocaleIdentifiers;
  QP::isSupportedECRLocale(NSLocale *)::supportedLocaleIdentifiers = v0;
}

uint64_t QP::isAllowedPeopleSpanToken(QP *this, NSString *a2)
{
  v2 = this;
  if (QP::isAllowedPeopleSpanToken(NSString *)::onceToken != -1)
  {
    QP::isAllowedPeopleSpanToken();
  }

  v3 = QP::isAllowedPeopleSpanToken(NSString *)::disallowedTokens;
  v4 = [(QP *)v2 localizedLowercaseString];
  LODWORD(v3) = [v3 containsObject:v4];

  return v3 ^ 1;
}

void ___ZN2QP24isAllowedPeopleSpanTokenEP8NSString_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F45F8E40];
  v1 = QP::isAllowedPeopleSpanToken(NSString *)::disallowedTokens;
  QP::isAllowedPeopleSpanToken(NSString *)::disallowedTokens = v0;
}

uint64_t QP::U2Parser::U2Parser(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = *a2;
  v5 = a2[1];
  *(a1 + 88) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a4;
  v6 = a4[1];
  *(a1 + 104) = v6;
  *(a1 + 96) = v7;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = *a3;
  v8 = a3[1];
  *(a1 + 120) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0uLL;
  *(a1 + 168) = 0uLL;
  *(a1 + 184) = 0uLL;
  *(a1 + 200) = 0uLL;
  [MEMORY[0x1E69C6A68] setUseSpotlightResources:*(*(a1 + 80) + 74)];
  return a1;
}

void sub_1C6613808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  nlp::CFScopedPtr<__CFAttributedString const*>::reset((v10 + 208), 0);
  a10 = (v10 + 184);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 160);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a10);
  nlp::CFScopedPtr<__CFString const*>::reset(v14, 0);
  std::__tree<unsigned int>::destroy(v13, *(v10 + 136));
  v16 = *(v10 + 120);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  QP::U2Parser::U2Parser(v12, v11, v10);
  _Unwind_Resume(a1);
}

__CFArray *QP::U2Parser::createPeopleNameRangesFromPersonLexemes(QP::U2Parser *this)
{
  v35 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(*(this + 10) + 240);
  if (v3)
  {
    v4 = *(this + 19);
    if ([v4 length])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        v7 = *v30;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v30 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v29 + 1) + 8 * i);
            if ([v9 length])
            {
              v11 = [v4 rangeOfString:v9 options:0 range:0 locale:{objc_msgSend(v4, "length"), *(*(this + 10) + 112)}];
              if (v11 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v12 = [MEMORY[0x1E696B098] valueWithRange:{v11, v10}];
                CFArrayAppendValue(Mutable, v12);
              }
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v6);
      }
    }

    goto LABEL_37;
  }

  QP::Lexer::lexemeAtLocation(*(this + 12), 0, &__p);
  v14 = __p;
  v13 = v27;
  if (__p)
  {
    v15 = 1;
    while (1)
    {
      QP::getUTF8StringFromCFString(@"Person", &__p);
      v16 = (v28 & 0x80u) == 0 ? &__p : __p;
      v17 = (v28 & 0x80u) == 0 ? v28 : v27;
      v18 = *(v14 + 23);
      if (v18 < 0)
      {
        v19 = *v14;
        v18 = v14[1];
      }

      else
      {
        v19 = v14;
      }

      v33[0] = v19;
      v33[1] = v18;
      v20 = std::string_view::starts_with[abi:ne200100](v33, v16, v17);
      v21 = v20;
      if (v28 < 0)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_30;
      }

LABEL_31:
      QP::Lexer::lexemeAtLocation(*(this + 12), v15, &__p);
      v14 = __p;
      v23 = v27;
      __p = 0;
      v27 = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }
      }

      ++v15;
      v13 = v23;
      if (!v14)
      {
        if (v23)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    operator delete(__p);
    if (!v21)
    {
      goto LABEL_31;
    }

LABEL_30:
    v22 = [MEMORY[0x1E696B098] valueWithRange:{v14[9], v14[10]}];
    CFArrayAppendValue(Mutable, v22);

    goto LABEL_31;
  }

  v23 = v27;
  if (v27)
  {
LABEL_36:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_37:
  v24 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *QP::U2Parser::createLocationNameRangesFromLocationLexemes(QP::U2Parser *this)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, &__p);
  v4 = __p;
  v3 = v16;
  if (__p)
  {
    v5 = 1;
    while (1)
    {
      QP::getUTF8StringFromCFString(@"Location", &__p);
      v6 = (v17 & 0x80u) == 0 ? &__p : __p;
      v7 = (v17 & 0x80u) == 0 ? v17 : v16;
      v8 = *(v4 + 23);
      if (v8 < 0)
      {
        v9 = *v4;
        v8 = v4[1];
      }

      else
      {
        v9 = v4;
      }

      v18[0] = v9;
      v18[1] = v8;
      v10 = std::string_view::starts_with[abi:ne200100](v18, v6, v7);
      v11 = v10;
      if (v17 < 0)
      {
        break;
      }

      if (v10)
      {
        goto LABEL_16;
      }

LABEL_17:
      QP::Lexer::lexemeAtLocation(*(this + 12), v5, &__p);
      v4 = __p;
      v13 = v16;
      __p = 0;
      v16 = 0;
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }
      }

      ++v5;
      v3 = v13;
      if (!v4)
      {
        if (v13)
        {
          goto LABEL_22;
        }

        return Mutable;
      }
    }

    operator delete(__p);
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = [MEMORY[0x1E696B098] valueWithRange:{v4[9], v4[10]}];
    CFArrayAppendValue(Mutable, v12);

    goto LABEL_17;
  }

  v13 = v16;
  if (v16)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return Mutable;
}

void sub_1C6613D0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFAttributedString *QP::U2Parser::createAnnotations(QP::U2Parser *this)
{
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v30.location = 0;
  v30.length = 0;
  CFAttributedStringReplaceString(Mutable, v30, *(this + 19));
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, &__p);
  v4 = __p;
  v3 = v26;
  if (!__p)
  {
    v23 = v26;
    if (!v26)
    {
      return Mutable;
    }

    goto LABEL_45;
  }

  v5 = 1;
  v6 = MEMORY[0x1E695E0F8];
  do
  {
    QP::getUTF8StringFromCFString(@"Person", &__p);
    if ((v27 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v8 = v27;
    }

    else
    {
      v8 = v26;
    }

    v9 = v4[23];
    if (v9 < 0)
    {
      v10 = *v4;
      v9 = *(v4 + 1);
    }

    else
    {
      v10 = v4;
    }

    v28 = v10;
    v29 = v9;
    v11 = std::string_view::starts_with[abi:ne200100](&v28, p_p, v8);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kQPQUPersonSpan";
    if (v11)
    {
      goto LABEL_39;
    }

    QP::getUTF8StringFromCFString(@"Location", &__p);
    if ((v27 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v14 = v27;
    }

    else
    {
      v14 = v26;
    }

    v15 = v4[23];
    if (v15 < 0)
    {
      v16 = *v4;
      v15 = *(v4 + 1);
    }

    else
    {
      v16 = v4;
    }

    v28 = v16;
    v29 = v15;
    v17 = std::string_view::starts_with[abi:ne200100](&v28, v13, v14);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kQPQULocationSpan";
    if (v17)
    {
      goto LABEL_39;
    }

    QP::getUTF8StringFromCFString(@"Holiday", &__p);
    if ((v27 & 0x80u) == 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v19 = v27;
    }

    else
    {
      v19 = v26;
    }

    v20 = v4[23];
    if (v20 < 0)
    {
      v21 = *v4;
      v20 = *(v4 + 1);
    }

    else
    {
      v21 = v4;
    }

    v28 = v21;
    v29 = v20;
    v22 = std::string_view::starts_with[abi:ne200100](&v28, v18, v19);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    v12 = @"kQPQUHolidaySpan";
    if (v22)
    {
LABEL_39:
      CFAttributedStringSetAttribute(Mutable, *(v4 + 72), v12, v6);
    }

    QP::Lexer::lexemeAtLocation(*(this + 12), v5, &__p);
    v4 = __p;
    v23 = v26;
    __p = 0;
    v26 = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    ++v5;
    v3 = v23;
  }

  while (v4);
  if (v23)
  {
LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return Mutable;
}

void sub_1C6613F78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *QP::U2Parser::createTokenOutputSpans(QP::U2Parser *this, const __CFAttributedString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v18[1] = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (location != -1 && length >= 1)
  {
    Attributes = CFAttributedStringGetAttributes(a2, location, 0);
    if (Attributes)
    {
      v8 = Attributes;
      Count = CFDictionaryGetCount(Attributes);
      MEMORY[0x1EEE9AC00](Count);
      v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v11, v10);
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      if (Count >= 1)
      {
        do
        {
          v12 = CFStringsAreEqual(@"kQPQUPersonSpan", *v11);
          v13 = @"Person";
          if (v12 || (v14 = CFStringsAreEqual(@"kQPQULocationSpan", *v11), v13 = @"Location", v14) || (v15 = CFStringsAreEqual(@"kQPQUHolidaySpan", *v11), v13 = @"Holiday", v15))
          {
            CFArrayAppendValue(Mutable, v13);
          }

          ++v11;
          --Count;
        }

        while (Count);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void QP::U2Parser::lexemeForTokenWithRange(QP::U2Parser *this@<X0>, const __CFString *a2@<X1>, CFRange a3@<0:X2, 8:X3>, const __CFString **a4@<X4>, const __CFString *a5@<X5>, const __CFString *a6@<X6>, void *a7@<X8>)
{
  length = a3.length;
  location = a3.location;
  v43 = *MEMORY[0x1E69E9840];
  v39 = a3;
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, buf);
  v34 = a4;
  v13 = *buf;
  v14 = *&buf[8];
  if (!*buf)
  {
LABEL_36:
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v29 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a2;
      _os_log_impl(&dword_1C6584000, v29, OS_LOG_TYPE_DEFAULT, "Unable to find a Kind* or Media lexeme for %@; falling back to Text", buf, 0xCu);
    }

    *v34 = kQPParseAttributeKeywordKey;
    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const*&,CFRange &,0>();
  }

  v15 = length + location;
  v16 = 1;
  while (1)
  {
    v17 = *(v13 + 72);
    if (v17 <= location && *(v13 + 80) + v17 >= v15)
    {
      QP::getUTF8StringFromCFString(a5, buf);
      v19 = (v42 & 0x80u) == 0 ? buf : *buf;
      v20 = (v42 & 0x80u) == 0 ? v42 : *&buf[8];
      v21 = *(v13 + 23);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v22 = *v13;
        v21 = *(v13 + 8);
      }

      else
      {
        v22 = v13;
      }

      __p = v22;
      v37 = v21;
      if (std::string_view::starts_with[abi:ne200100](&__p, v19, v20))
      {
        QP::getUTF8StringFromCFString(a6, &__p);
        if ((v38 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v38 & 0x80u) == 0)
        {
          v24 = v38;
        }

        else
        {
          v24 = v37;
        }

        v25 = *(v13 + 23);
        if (v25 < 0)
        {
          v26 = *v13;
          v25 = *(v13 + 8);
        }

        else
        {
          v26 = v13;
        }

        v40[0] = v26;
        v40[1] = v25;
        v27 = std::string_view::ends_with[abi:ne200100](v40, p_p, v24);
        if (v38 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v27 = 0;
      }

      if (v42 < 0)
      {
        operator delete(*buf);
      }

      if (v27)
      {
        break;
      }
    }

    QP::Lexer::lexemeAtLocation(*(this + 12), v16, buf);
    v13 = *buf;
    v28 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    ++v16;
    v14 = v28;
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v30 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    v32 = v13;
    if (*(v13 + 23) < 0)
    {
      v32 = *v13;
    }

    *buf = 138412546;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = v32;
    _os_log_debug_impl(&dword_1C6584000, v30, OS_LOG_TYPE_DEBUG, "Found matching lexeme for %@ with type %s", buf, 0x16u);
  }

  *a7 = v13;
  a7[1] = v14;
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1C661444C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void QP::U2Parser::lexemeForArgMediaTypeWithRange(QP::U2Parser *this@<X0>, const __CFString *a2@<X1>, CFRange a3@<0:X2, 8:X3>, const __CFString **a4@<X4>, uint64_t *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  QP::Lexer::lexemeAtLocation(*(this + 12), 0, buf);
  v7 = *buf;
  v8 = *&buf[8];
  v9 = 0;
  if (!*buf)
  {
    goto LABEL_30;
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v8;
    v13 = *(v7 + 72);
    if (v13 > a3.location || *(v7 + 80) + v13 < a3.length + a3.location)
    {
      goto LABEL_19;
    }

    if (std::string::starts_with[abi:ne200100](v7, "Media"))
    {
      break;
    }

    if (!v10)
    {
      if (std::string::starts_with[abi:ne200100](v7, "Kind"))
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::U2Parser::lexemeForTokenWithRange();
        }

        v15 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
        {
          v16 = v7;
          if (*(v7 + 23) < 0)
          {
            v16 = *v7;
          }

          *buf = 138412546;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_debug_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEBUG, "Found matching Kind lexeme for %@ with type %s", buf, 0x16u);
          if (v12)
          {
LABEL_14:
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else if (v12)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        v10 = v7;
        v9 = v12;
        goto LABEL_19;
      }

      v10 = 0;
    }

LABEL_19:
    QP::Lexer::lexemeAtLocation(*(this + 12), v11, buf);
    v7 = *buf;
    v8 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    ++v11;
    if (!v7)
    {
      if (v10)
      {
        *a4 = kQPParseAttributeKindKey;
        *a5 = v10;
        a5[1] = v9;
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_39;
      }

LABEL_30:
      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v17 = u2ParserLogger(void)::log;
      if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(this + 10) + 48);
        *buf = 134218242;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        _os_log_impl(&dword_1C6584000, v17, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Unable to find a Kind* or Media lexeme for %@; falling back to Text", buf, 0x16u);
      }

      *a4 = kQPParseAttributeKeywordKey;
      std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,char const*&,CFRange &,0>();
    }
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v20 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
  {
    QP::U2Parser::lexemeForArgMediaTypeWithRange(v7, a2, v20);
  }

  *a4 = kQPParseAttributeMediaKey;
  *a5 = v7;
  a5[1] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_39:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1C66147CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void QP::U2Parser::parse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v6 = u2ParserLogger(void)::log;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v7 = os_signpost_id_make_with_pointer(u2ParserLogger(void)::log, *(*(a1 + 96) + 440));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "U2Parser.parse", &unk_1C664887A, buf, 2u);
    }
  }

  QP::U2Parser::parseInternal(a1, a2, a3);
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v9 = u2ParserLogger(void)::log;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v10 = os_signpost_id_make_with_pointer(u2ParserLogger(void)::log, *(*(a1 + 96) + 440));
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6584000, v9, OS_SIGNPOST_INTERVAL_END, v11, "U2Parser.parse", &unk_1C664887A, v12, 2u);
    }
  }
}

void sub_1C661AE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  STACK[0x10F0] = &STACK[0x260];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x10F0]);
  STACK[0x10F0] = &STACK[0x10B0];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x10F0]);

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(STACK[0xDD0]);
  }

  STACK[0x10F0] = &STACK[0x1030];
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x10F0]);

  v76 = STACK[0x200];
  _Unwind_Resume(a1);
}

uint64_t **QP::operator+@<X0>(uint64_t **result@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = *a2;
  if (*result)
  {
    if (v3)
    {
      v4 = result[1];
      v9[0] = *result;
      v9[1] = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        v3 = *a2;
      }

      v5 = a2[1];
      v8[0] = v3;
      v8[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
      }

      QP::ParseAttribute::makeGroupAttribute(v9, v8, a3);
    }

    v7 = result[1];
    *a3 = *result;
    a3[1] = v7;
    *result = 0;
    result[1] = 0;
  }

  else
  {
    v6 = a2[1];
    *a3 = v3;
    a3[1] = v6;
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_1C661C1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QP::U2Parser::makePersonAttribute(CFRange a1@<0:X3, 8:X4>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v12 = a1;
  v10 = a2;
  v11 = 0;
  *a3 = 0;
  a3[1] = 0;
  LODWORD(v9) = 0;
  LODWORD(__p[0]) = 0;
  LODWORD(v8) = 2;
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType,0>();
}

void sub_1C661C3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  v30 = *(v28 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<QP::Lexeme>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void QP::U2Parser::makeVisualIdentifierAttribute(CFRange a1@<0:X2, 8:X3>, const __CFDictionary *a2@<X4>, void *a3@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  v5 = a2;
  if ([(__CFDictionary *)v5 count])
  {
    std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType,0>();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1C661CB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  a33 = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

BOOL QP::U2Parser::makeIdentifierAttribute@<W0>(CFRange a1@<0:X3, 8:X4>, CFStringRef theString1@<X5>, const __CFArray *a3@<X6>, const __CFArray *a4@<X7>, void *a5@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  a5[1] = 0;
  if (CFStringsAreEqual(theString1, kQPParseAttributePersonKey) || CFStringsAreEqual(theString1, kQPParseAttributeSenderKey) || CFStringsAreEqual(theString1, kQPParseAttributeRecipientKey) || CFStringsAreEqual(theString1, kQPParseAttributeTaggedPersonKey) || CFStringsAreEqual(theString1, kQPParseAttributeSenderHandleKey) || (result = CFStringsAreEqual(theString1, kQPParseAttributeRecipientHandleKey)))
  {
    a3;
    a4;
    std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType,0>();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C661D1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a55);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(a1);
}

void QP::U2Parser::makeAttribute(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, __CFString *a4@<X5>, int a5@<W7>, void *a6@<X8>)
{
  v12 = a2;
  v13 = a3;
  v11 = a4;
  v10 = a5;
  v8 = a1;
  v9 = 0;
  *a6 = 0;
  a6[1] = 0;
  LODWORD(v7.__r_.__value_.__l.__data_) = 0;
  LODWORD(v6[0]) = 0;
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,QUIntentArgType &,0>();
}

void sub_1C661E38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(&a16, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(&a17, 0);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  v36 = *(v34 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t QP::U2Parser::isIntentUnsafe(QP::U2Parser *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(*(this + 10) + 8);
  if (v1 < 0xE && ((0x2A01u >> v1) & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZN2QP8U2Parser14isIntentUnsafeEv_block_invoke;
    v4[3] = &unk_1E8267F50;
    v4[4] = &v5;
    QP::U2Parser::enumerateParses(this, v4);
    v2 = *(v6 + 24);
  }

  _Block_object_dispose(&v5, 8);
  return v2 & 1;
}

void sub_1C661E5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void QP::U2Parser::enumerateParses(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v5 = *(a1 + 160);
  for (i = *(a1 + 168); v5 != i; v5 += 2)
  {
    v6 = v5[1];
    v7 = *v5;
    v8 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3[2](v3, &v7, &v9);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v9)
    {
      break;
    }
  }
}

void sub_1C661E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *___ZN2QP8U2Parser14isIntentUnsafeEv_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = *(*a2 + 88);
  if (result)
  {
    Value = CFDictionaryGetValue(result, kQPQUOutputIsUnsafeKey);
    result = CFBooleanGetValue(Value);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

void QP::U2Parser::clear(QP::U2Parser *this)
{
  *(this + 216) = 0;
  nlp::CFScopedPtr<__CFString const*>::reset(this + 19, 0);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 20);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 23);
  v3 = *(this + 17);
  v2 = this + 136;
  std::__tree<unsigned int>::destroy((v2 - 8), v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 - 1) = v2;

  nlp::CFScopedPtr<__CFAttributedString const*>::reset(v2 + 9, 0);
}

unint64_t QPTimingNanosecondsSinceAbsoluteTime(uint64_t a1)
{
  v2 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
  {
    QPTimingNanosecondsSinceAbsoluteTime();
  }

  return (v2 - a1) * QPTimingNanosecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / dword_1EDAC3FEC;
}

id QP::gluedU2Output(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(GluedU2Output);
  v3 = [v1 confidenceScore];
  [(GluedU2Output *)v2 setConfidenceScore:v3];

  v4 = [v1 intentId];
  [(GluedU2Output *)v2 setIntentId:v4];

  v5 = [v1 safetyScore];
  [(GluedU2Output *)v2 setSafetyScore:v5];

  -[GluedU2Output setPredictionTime:](v2, "setPredictionTime:", [v1 predictionTime]);
  -[GluedU2Output setEmbeddingsTime:](v2, "setEmbeddingsTime:", [v1 embeddingsTime]);
  v6 = [v1 tokens];
  v7 = [v6 count];

  v38 = objc_opt_new();
  v37 = objc_opt_new();
  v36 = objc_opt_new();
  v34 = v2;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (v7 >= 1)
  {
    v10 = 0;
    for (i = 0; i != v7; ++i)
    {
      v12 = [v1 tokenRanges];
      v13 = [v12 objectAtIndexedSubscript:i];

      v14 = [v13 rangeValue];
      v16 = v15;
      if (![v9 count] || v10 == v14)
      {
        [v9 addIndex:i];
      }

      else
      {
        v17 = QP::newModifiedToken(v9, v1);
        v18 = [v17 token];
        [v38 addObject:v18];

        v19 = MEMORY[0x1E696B098];
        v20 = [v17 tokenRange];
        v22 = [v19 valueWithRange:{v20, v21}];
        [v37 addObject:v22];

        v23 = [v17 argIdsForToken];
        [v36 addObject:v23];

        v24 = [v17 argScoresForToken];
        [v8 addObject:v24];

        [v9 removeAllIndexes];
        [v9 addIndex:i];
      }

      v10 = v14 + v16;
    }
  }

  if ([v9 count])
  {
    v25 = QP::newModifiedToken(v9, v1);
    v26 = [v25 token];
    [v38 addObject:v26];

    v27 = MEMORY[0x1E696B098];
    v28 = [v25 tokenRange];
    v30 = [v27 valueWithRange:{v28, v29}];
    [v37 addObject:v30];

    v31 = [v25 argIdsForToken];
    [v36 addObject:v31];

    v32 = [v25 argScoresForToken];
    [v8 addObject:v32];

    [v9 removeAllIndexes];
  }

  [v35 setTokens:v38];
  [v35 setTokenRanges:v37];
  [v35 setArgIdsForTokens:v36];
  [v35 setArgScoresForTokens:v8];

  return v35;
}

uint64_t QP::tokenHasArgIdAsTopPredictionOrWithScore(void *a1, uint64_t a2, int a3, float a4)
{
  v7 = a1;
  v8 = 0;
  while (1)
  {
    v9 = v8;
    v10 = [v7 argIdsForTokens];
    v11 = [v10 objectAtIndexedSubscript:a2];
    v12 = [v11 count];

    if (v12 <= v9)
    {
      break;
    }

    if (v9)
    {
      v13 = [v7 argScoresForTokens];
      v14 = [v13 objectAtIndexedSubscript:a2];
      v15 = [v14 objectAtIndexedSubscript:v9];
      [v15 floatValue];
      v17 = v16;

      if (v17 < a4)
      {
        LOBYTE(v10) = 0;
        break;
      }
    }

    v18 = [v7 argIdsForTokens];
    v19 = [v18 objectAtIndexedSubscript:a2];
    v20 = [v19 objectAtIndexedSubscript:v9];
    v21 = [v20 intValue];

    v8 = v9 + 1;
    if (v21 == a3)
    {
      LOBYTE(v10) = 1;
      break;
    }
  }

  return (v12 > v9) & v10;
}

id QP::visualIdentifiersWithTimeout(void *a1, uint64_t a2, char a3, void *a4, void *a5, const __CFDictionary *a6)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__599;
  v49 = __Block_byref_object_dispose__600;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__599;
  v43 = __Block_byref_object_dispose__600;
  v44 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = qos_class_self();
  v14 = dispatch_get_global_queue(v13, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2QPL28visualIdentifiersWithTimeoutEP8NSStringb27QPECRClientEntityFilterTypebNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke;
  block[3] = &unk_1F45E89B8;
  v15 = a4[1];
  v34 = *a4;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = &v45;
  v16 = v11;
  v37 = 0;
  v36 = a2;
  v38 = a3;
  v30 = v16;
  v33 = &v39;
  v17 = v12;
  v31 = v17;
  dispatch_async(v14, block);

  valuePtr = 0;
  if (!a6 || (Value = CFDictionaryGetValue(a6, @"kMDQueryOptionColdStartPhotosECRTimeout")) == 0 || (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), (v19 = valuePtr) == 0))
  {
    if (*(*a4 + 35))
    {
      v19 = -1;
    }

    else
    {
      v19 = dispatch_time(0, 100000000);
    }
  }

  if (dispatch_semaphore_wait(v17, v19))
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ECR timed out after %dms", 100];
    v21 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52[0] = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v23 = [v21 errorWithDomain:@"com.apple.QueryParser.QueryUnderstandingError" code:-2002 userInfo:v22];
    v24 = v40[5];
    v40[5] = v23;
  }

  if (a5)
  {
    *a5 = v40[5];
  }

  v25 = v46[5];

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

void sub_1C661F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2QP8U2Parser13parseInternalERNSt3__16vectorINS1_10shared_ptrINS_5ParseEEENS1_9allocatorIS5_EEEEPK14__CFDictionary_block_invoke(void *a1, uint64_t **a2)
{
  v4 = a1[5];
  v5 = *a2;
  v6 = (*a2)[23];
  if (!v6)
  {
    if (MEMORY[0x58] - 1 > 3)
    {
      return;
    }

    v7 = 0;
    goto LABEL_6;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (*(v5[22] + 88) - 1 <= 3)
  {
    v5 = *a2;
LABEL_6:
    v8 = v5[2];
    v9 = a1[6];
    v10 = a1[7];
    if (v8 <= v9)
    {
      v11 = a1[6];
    }

    else
    {
      v11 = v5[2];
    }

    v12 = v5[3] + v8;
    if (v12 >= v10 + v9)
    {
      v12 = v10 + v9;
    }

    v14 = v11 != -1 && v12 > v11;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v14)
    {
      v15 = *a2;
      v29 = 0uLL;
      v16 = v15[23];
      if (v16)
      {
        *(&v29 + 1) = std::__shared_weak_count::lock(v16);
        if (*(&v29 + 1))
        {
          *&v29 = v15[22];
        }
      }

      std::vector<std::shared_ptr<QP::Lexeme>>::push_back[abi:ne200100]((v4 + 184), &v29);
      if (*(&v29 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
      }

      v17 = *a2;
      *(*a2 + 19) = 8;
      v18 = *(a1[4] + 8);
      v20 = *(v18 + 48);
      v19 = *(v18 + 56);
      v27 = v20;
      v28 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *a2;
      }

      v21 = a2[1];
      v25 = v17;
      v26 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::operator+(&v27, &v25, &v29);
      v22 = *(a1[4] + 8);
      v23 = v29;
      v29 = 0uLL;
      v24 = *(v22 + 56);
      *(v22 + 48) = v23;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        if (*(&v29 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
        }
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }
    }

    return;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1C661F364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::tokenHasArgIdWithScore(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = 0;
  while (1)
  {
    v7 = [v5 argIdsForTokens];
    v8 = [v7 objectAtIndexedSubscript:a2];
    v9 = [v8 count];

    if (v9 <= v6)
    {
      break;
    }

    v10 = [v5 argScoresForTokens];
    v11 = [v10 objectAtIndexedSubscript:a2];
    v12 = [v11 objectAtIndexedSubscript:v6];
    [v12 floatValue];
    v14 = v13;

    if (v14 < 0.3)
    {
      break;
    }

    v15 = [v5 argIdsForTokens];
    v16 = [v15 objectAtIndexedSubscript:a2];
    v17 = [v16 objectAtIndexedSubscript:v6];
    v18 = [v17 intValue];

    ++v6;
    if (v18 == a3)
    {
      v19 = 1;
      goto LABEL_7;
    }
  }

  v19 = 0;
LABEL_7:

  return v19;
}

void ___ZN2QP8U2Parser13parseInternalERNSt3__16vectorINS1_10shared_ptrINS_5ParseEEENS1_9allocatorIS5_EEEEPK14__CFDictionary_block_invoke_529(void *a1, void *a2)
{
  v4 = a1[5];
  v5 = *a2;
  v6 = *(*a2 + 16);
  v7 = *(*a2 + 24);
  memset(&v27, 0, sizeof(v27));
  v8 = std::__shared_weak_count::lock(*(v5 + 184));
  v9 = *(v5 + 176);
  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *v9, *(v9 + 1));
  }

  else
  {
    v10 = *v9;
    v27.__r_.__value_.__r.__words[2] = *(v9 + 2);
    *&v27.__r_.__value_.__l.__data_ = v10;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (std::string::starts_with[abi:ne200100](&v27, "Action"))
  {
    v11 = a1[6];
    if (v6 <= v11 && v7 + v6 >= a1[7] + v11)
    {
      v13 = *a2;
      v26 = 0uLL;
      v14 = *(v13 + 184);
      if (v14)
      {
        *(&v26 + 1) = std::__shared_weak_count::lock(v14);
        if (*(&v26 + 1))
        {
          *&v26 = *(v13 + 176);
        }
      }

      std::vector<std::shared_ptr<QP::Lexeme>>::push_back[abi:ne200100]((v4 + 184), &v26);
      if (*(&v26 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
      }

      v15 = *(a1[4] + 8);
      v17 = *(v15 + 48);
      v16 = *(v15 + 56);
      v24 = v17;
      v25 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = a2[1];
      v22 = *a2;
      v23 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::operator+(&v24, &v22, &v26);
      v19 = *(a1[4] + 8);
      v20 = v26;
      v26 = 0uLL;
      v21 = *(v19 + 56);
      *(v19 + 48) = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        if (*(&v26 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
        }
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1C661F6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFAttributedStringRef QP::createEmbeddingString(void *a1, void *a2, void *a3, unint64_t ***a4, uint64_t a5, void *a6, const __CFAttributedString *a7, uint64_t a8, void *a9, char a10)
{
  v178 = *MEMORY[0x1E69E9840];
  v159 = a1;
  v160 = a2;
  v144 = a3;
  v147 = a9;
  v153 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v14 = *a4;
  v15 = a4[1];
  v16 = v15 - *a4;
  if (v15 != *a4)
  {
    v17 = 0;
    v18 = v16 >> 4;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    while (1)
    {
      v19 = *v14;
      v20 = *(*v14 + 23);
      if (v20 < 0)
      {
        if (v19[1] == 14)
        {
          v19 = *v19;
LABEL_9:
          v21 = bswap64(*v19);
          v22 = 0x47726F756E646564;
          if (v21 == 0x47726F756E646564 && (v21 = bswap64(*(v19 + 6)), v22 = 0x6564506572736F6ELL, v21 == 0x6564506572736F6ELL))
          {
            v23 = 0;
          }

          else if (v21 < v22)
          {
            v23 = -1;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            ++v17;
          }
        }
      }

      else if (v20 == 14)
      {
        goto LABEL_9;
      }

      v14 += 2;
      if (!--v18)
      {
        v24 = v17 == 1;
        goto LABEL_20;
      }
    }
  }

  v24 = 0;
LABEL_20:
  v142 = *(*a5 + 112);
  v150 = [v142 languageCode];
  v145 = [&unk_1F45FA568 objectForKey:?];
  if (!v145)
  {
    v145 = [&unk_1F45FA568 objectForKey:@"en"];
  }

  v148 = [&unk_1F45FA540 objectForKey:v150];
  if (!v148)
  {
    v148 = [&unk_1F45FA540 objectForKey:@"en"];
  }

  v158 = a4;
  if (u2ParserLogger(void)::token != -1)
  {
    QP::isSupportedQULanguage();
  }

  v25 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v148 floatValue];
    v27 = v26;
    [v145 floatValue];
    *buf = 134218496;
    v170 = a8;
    v171 = 2048;
    v172 = v27;
    v173 = 2048;
    v174 = v28;
    _os_log_impl(&dword_1C6584000, v25, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] People Threshold: %f, Location Threshold: %f", buf, 0x20u);
  }

  v29 = [MEMORY[0x1E695E000] standardUserDefaults];
  v146 = [v29 objectForKey:@"EnablePersonalizedEmbedding"];

  if (v146)
  {
    v30 = [MEMORY[0x1E695E000] standardUserDefaults];
    v31 = [v30 BOOLForKey:@"EnablePersonalizedEmbedding"];
  }

  else
  {
    v31 = 0;
  }

  if (u2ParserLogger(void)::token != -1)
  {
    QP::U2Parser::lexemeForTokenWithRange();
  }

  v32 = u2ParserLogger(void)::log;
  if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v170 = a8;
    v171 = 1024;
    LODWORD(v172) = v31;
    _os_log_impl(&dword_1C6584000, v32, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] personalized embedding: %d", buf, 0x12u);
  }

  v157 = a6;
  v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx: 0"];
  v33 = [MEMORY[0x1E695DFA8] set];
  v34 = [v147 locationNameRanges];
  v35 = [v34 count] == 0;

  if (!v35)
  {
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v36 = [v147 locationNameRanges];
    v37 = [v36 countByEnumeratingWithState:&v163 objects:v177 count:16];
    if (v37)
    {
      v38 = *v164;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v164 != v38)
          {
            objc_enumerationMutation(v36);
          }

          [v33 addObject:*(*(&v163 + 1) + 8 * i)];
        }

        v37 = [v36 countByEnumeratingWithState:&v163 objects:v177 count:16];
      }

      while (v37);
    }
  }

  v40 = 0;
  v152 = 0;
  v151 = 0.0;
  v141 = v24 & v31;
  while (1)
  {
    v41 = [v160 tokens];
    v42 = v40 < [v41 count];

    if (!v42)
    {
      if (!(v152 & 1 | ((a10 & 1) == 0)))
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::U2Parser::lexemeForTokenWithRange();
        }

        v115 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_ERROR))
        {
          QP::createEmbeddingString(v143, a8, v115);
        }

        goto LABEL_160;
      }

      v106 = a5;
      v107 = *(*a5 + 8);
      v108 = v107 > 0xD;
      v109 = (1 << v107) & 0x2E01;
      if (!v108 && v109 != 0)
      {
        goto LABEL_205;
      }

      if (*(*a5 + 32) != 1)
      {
        goto LABEL_205;
      }

      v121 = [v150 isEqualToString:@"ko"];
      v106 = a5;
      if (v121)
      {
        goto LABEL_205;
      }

      if ([(__CFAttributedString *)v153 length]>= 3 && v151 != 0.0)
      {
        systemListenerLogTriggerForCodepathID(@"A961F9B4-F844-4261-8740-BA91F44C6393", a8);
      }

      *&v122 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"VisualSemanticSearchMinQueryLength"));
      if ([(__CFAttributedString *)v153 length]< v122)
      {
        v123 = u2ParserLogger();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          v140 = COERCE_DOUBLE([(__CFAttributedString *)v153 length]);
          *buf = 134218496;
          v170 = a8;
          v171 = 2048;
          v172 = v140;
          v173 = 2048;
          v174 = *&v122;
          _os_log_error_impl(&dword_1C6584000, v123, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string length (%ld) less than (%ld)", buf, 0x20u);
        }

LABEL_173:

        goto LABEL_160;
      }

      *&v138 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"VisualSemanticSearchMinNumTokens"));
      v106 = a5;
      if (*&v151 < v138)
      {
        v125 = u2ParserLogger();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v170 = a8;
          v171 = 2048;
          v172 = v151;
          v173 = 2048;
          v174 = *&v138;
          _os_log_error_impl(&dword_1C6584000, v125, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string tokens count (%ld) less than (%ld)", buf, 0x20u);
        }
      }

      else
      {
LABEL_205:
        if (*(*v106 + 8) != 2 || *(*v106 + 32) != 1 || ([v150 isEqualToString:@"ko"] & 1) != 0)
        {
          goto LABEL_151;
        }

        if (v151 != 0.0 && [(__CFAttributedString *)v153 length]>= 4)
        {
          systemListenerLogTriggerForCodepathID(@"AA8B6BD9-5D27-4127-B880-4429A0B855B5", a8);
        }

        *&v124 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"MailSemanticSearchMinQueryLength"));
        if ((v124 & 0x8000000000000000) != 0)
        {
          v125 = u2ParserLogger();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            QP::createEmbeddingString(a8, v125, v126, v127, v128, v129, v130, v131);
          }

          goto LABEL_202;
        }

        if ([(__CFAttributedString *)v153 length]< v124)
        {
          v123 = u2ParserLogger();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            v139 = COERCE_DOUBLE([(__CFAttributedString *)v153 length]);
            *buf = 134218496;
            v170 = a8;
            v171 = 2048;
            v172 = v139;
            v173 = 2048;
            v174 = *&v124;
            _os_log_error_impl(&dword_1C6584000, v123, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string length (%ld) less than (%ld)", buf, 0x20u);
          }

          goto LABEL_173;
        }

        *&v132 = COERCE_DOUBLE(systemListenerGetLongValueTrialFactorForKey(@"MailSemanticSearchMinNumTokens"));
        if (*&v151 >= v132)
        {
LABEL_151:
          if (u2ParserLogger(void)::token != -1)
          {
            QP::U2Parser::lexemeForTokenWithRange();
          }

          v111 = u2ParserLogger(void)::log;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v153;
            v113 = [(__CFAttributedString *)v112 length];
            if (v113 > 4)
            {
              v117 = [(__CFAttributedString *)v112 attributedSubstringFromRange:0, 3];
              v118 = [(__CFAttributedString *)v112 attributedSubstringFromRange:v113 - 1, 1];
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@<%lu chars>", v117, v118, v113];
              v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            }

            else
            {
              [(__CFAttributedString *)v112 string];
              v114 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            }

            *buf = 134218242;
            v170 = a8;
            v171 = 2112;
            v172 = v114;
            _os_log_impl(&dword_1C6584000, v111, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] embedding string - (%@)", buf, 0x16u);
          }

          Copy = CFAttributedStringCreateCopy(*MEMORY[0x1E695E480], v153);
          goto LABEL_164;
        }

        v125 = u2ParserLogger();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v170 = a8;
          v171 = 2048;
          v172 = v151;
          v173 = 2048;
          v174 = *&v132;
          _os_log_error_impl(&dword_1C6584000, v125, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] embedding string tokens count (%ld) less than (%ld)", buf, 0x20u);
        }
      }

LABEL_202:

      goto LABEL_160;
    }

    v43 = [v159 objectAtIndexedSubscript:v40];
    v161 = [v43 objectForKeyedSubscript:kQPQUOutputTokenKey];
    v44 = [v43 objectForKeyedSubscript:kQPQUOutputTokenRangeKey];
    v45 = COERCE_DOUBLE([v44 rangeValue]);
    v47 = v46;

    if (v45 == NAN || *&v45 + *&v47 > [v157 length])
    {
      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      log = u2ParserLogger(void)::log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v64 = [v157 length];
        *buf = 134218752;
        v170 = a8;
        v171 = 2048;
        v172 = v45;
        v173 = 2048;
        v174 = v47;
        v175 = 2048;
        v176 = v64;
        _os_log_error_impl(&dword_1C6584000, log, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] Invalid token range: location=%lu, length=%lu, string length=%lu", buf, 0x2Au);
      }

      goto LABEL_52;
    }

    log = [v157 substringWithRange:{*&v45, *&v47}];
    if (log)
    {
      break;
    }

LABEL_53:

    ++v40;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"idx: %lu", v40];
  v155 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v48 = [v160 argIdsForTokens];
  v49 = [v48 objectAtIndexedSubscript:v40];
  v50 = [v49 firstObject];
  v51 = [v50 intValue];

  v52 = [v160 argScoresForTokens];
  v53 = [v52 objectAtIndexedSubscript:v40];
  v54 = [v53 firstObject];
  [v54 floatValue];
  v56 = v55;

  if (!a7)
  {
    goto LABEL_62;
  }

  Attributes = CFAttributedStringGetAttributes(a7, *&v45, 0);
  if (!Attributes)
  {
    goto LABEL_62;
  }

  v58 = CFDictionaryGetValue(Attributes, kQPInputAttributeAnnotationKey);
  v59 = v58;
  if (!v58 || ![v58 isEqualToString:@"PUBLIC_FIGURE"])
  {
LABEL_61:

LABEL_62:
    if (a10)
    {
      v61 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:log];
      v152 |= v51 == 5;
      goto LABEL_135;
    }

    if (v51 > 0xA)
    {
LABEL_134:
      v61 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:log];
LABEL_135:
      v63 = v61;
      if (v61)
      {
        goto LABEL_136;
      }

      goto LABEL_140;
    }

    if (((1 << v51) & 0x1C) == 0)
    {
      if (((1 << v51) & 0x103) != 0)
      {
        goto LABEL_140;
      }

      if (v51 != 10)
      {
        goto LABEL_134;
      }

      if (([v150 isEqualToString:@"it"] & 1) != 0 || objc_msgSend(v150, "isEqualToString:", @"de"))
      {
        v62 = [MEMORY[0x1E696B098] valueWithRange:{*&v45, *&v47}];
        if ([v33 containsObject:v62])
        {
          v63 = 0;
        }

        else
        {
          v63 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:log];
        }

        if (v63)
        {
          goto LABEL_136;
        }

        goto LABEL_140;
      }

      [v145 floatValue];
      if (v56 >= v101)
      {
        goto LABEL_140;
      }

      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v102 = u2ParserLogger(void)::log;
      if (!os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *buf = 134217984;
      v170 = a8;
      v99 = v102;
      v100 = "[QPNLU][qid=%ld] ARG_LOCATION confidence below threshold, keeping it in embedding string";
LABEL_133:
      _os_log_impl(&dword_1C6584000, v99, OS_LOG_TYPE_DEFAULT, v100, buf, 0xCu);
      goto LABEL_134;
    }

    if (([v150 isEqualToString:@"it"] & 1) != 0 || objc_msgSend(v150, "isEqualToString:", @"de"))
    {
      if (v158[1] == *v158)
      {
        goto LABEL_134;
      }

      v65 = 0;
      v66 = 0;
      while (1)
      {
        if (u2ParserLogger(void)::token != -1)
        {
          QP::U2Parser::lexemeForTokenWithRange();
        }

        v67 = u2ParserLogger(void)::log;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          [v157 substringWithRange:{(*v158)[v65][9], (*v158)[v65][10]}];
          v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v69 = (*v158)[v65];
          if (*(v69 + 23) < 0)
          {
            v69 = *v69;
          }

          [MEMORY[0x1E696AEC0] stringWithUTF8String:v69];
          v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 134218498;
          v170 = a8;
          v171 = 2112;
          v172 = v68;
          v173 = 2112;
          v174 = v70;
          _os_log_impl(&dword_1C6584000, v67, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Lexeme: %@ Type: %@", buf, 0x20u);
        }

        v71 = (*v158)[v65];
        v72 = *(v71 + 23);
        if (v72 < 0)
        {
          if (v71[1] != 14)
          {
            goto LABEL_96;
          }

          v73 = *v71;
        }

        else
        {
          v73 = (*v158)[v65];
          if (v72 != 14)
          {
            goto LABEL_96;
          }
        }

        v74 = *v73;
        v75 = *(v73 + 6);
        if (v74 == 0x6465646E756F7247 && v75 == 0x6E6F737265506465)
        {
          v78 = v71[9];
          v77 = v71[10];
          if (v78 == *&v45 && v77 == *&v47)
          {
            goto LABEL_140;
          }
        }

LABEL_96:
        ++v66;
        v65 += 2;
        if (v66 >= (v158[1] - *v158) >> 4)
        {
          goto LABEL_134;
        }
      }
    }

    if (!v141 || (v80 = *v158, v158[1] == *v158))
    {
LABEL_120:
      [v148 floatValue];
      if (v56 >= v97)
      {
        goto LABEL_140;
      }

      if (u2ParserLogger(void)::token != -1)
      {
        QP::U2Parser::lexemeForTokenWithRange();
      }

      v98 = u2ParserLogger(void)::log;
      if (!os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *buf = 134217984;
      v170 = a8;
      v99 = v98;
      v100 = "[QPNLU][qid=%ld] cannot remove ARG_PERSON because of low confidence";
      goto LABEL_133;
    }

    v81 = 0;
    v82 = 0;
    while (1)
    {
      v83 = v80[v81];
      v84 = *(v83 + 23);
      if (v84 < 0)
      {
        if (v83[1] != 14)
        {
          goto LABEL_119;
        }

        v85 = *v83;
      }

      else
      {
        v85 = v83;
        if (v84 != 14)
        {
          goto LABEL_119;
        }
      }

      v86 = *v85;
      v87 = *(v85 + 6);
      if (v86 == 0x6465646E756F7247 && v87 == 0x6E6F737265506465)
      {
        v90 = v83[9];
        v89 = v83[10];
        if (v90 == *&v45 && v89 == *&v47)
        {
          v92 = [v144 objectForKeyedSubscript:v161];
          v93 = v92 == 0;

          if (!v93)
          {
            v94 = [v144 objectForKeyedSubscript:v161];
            v95 = [v94 allKeys];
            v96 = [v95 firstObject];

            if (v96)
            {
              v104 = objc_alloc(MEMORY[0x1E696AAB0]);
              v167 = @"kMDItemPhotosPeoplePersonIdentifiers";
              v168 = v96;
              v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
              v63 = [v104 initWithString:log attributes:v105];

              if (!v63)
              {
                goto LABEL_120;
              }

LABEL_136:
              if ([(__CFAttributedString *)v153 length]&& *(*a5 + 32) == 1)
              {
                v103 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
                [(__CFAttributedString *)v153 appendAttributedString:v103];
              }

              [(__CFAttributedString *)v153 appendAttributedString:v63];

              ++*&v151;
LABEL_140:

LABEL_52:
              goto LABEL_53;
            }
          }
        }
      }

LABEL_119:
      ++v82;
      v80 = *v158;
      v81 += 2;
      if (v82 >= (v158[1] - *v158) >> 4)
      {
        goto LABEL_120;
      }
    }
  }

  if (v51 == 2)
  {
    [v148 floatValue];
    if (v56 > v60)
    {
      goto LABEL_61;
    }

    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v137 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v170 = a8;
      v171 = 2112;
      v172 = v155;
      v173 = 2048;
      v174 = v56;
      v134 = "[QPNLU][qid=%ld] no embedding string as public figure token (%@) with person arg type with low confidence (%f)";
      v135 = v137;
      v136 = 32;
LABEL_197:
      _os_log_impl(&dword_1C6584000, v135, OS_LOG_TYPE_DEFAULT, v134, buf, v136);
    }
  }

  else
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::U2Parser::lexemeForTokenWithRange();
    }

    v133 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v170 = a8;
      v171 = 2112;
      v172 = v155;
      v173 = 1024;
      LODWORD(v174) = v51;
      v134 = "[QPNLU][qid=%ld] no embedding string as public figure token (%@) with non person arg type (%d)";
      v135 = v133;
      v136 = 28;
      goto LABEL_197;
    }
  }

LABEL_160:
  Copy = 0;
LABEL_164:

  v119 = *MEMORY[0x1E69E9840];
  return Copy;
}

id QP::debugDescriptionWithQUOutput(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v10 = a1;
  v70 = a2;
  v65 = a3;
  v76 = a4;
  v63 = a6;
  context = objc_autoreleasePoolPush();
  v74 = [MEMORY[0x1E696AD60] string];
  v11 = v10;
  v64 = v11;
  v12 = [v11 length];
  if (v12 > 4)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v11 substringToIndex:3];
    v16 = [v11 substringFromIndex:v12 - 1];
    v13 = [v14 stringWithFormat:@"%@...%@<%lu chars>", v15, v16, v12];
  }

  else
  {
    v13 = v11;
  }

  [v74 appendFormat:@"  q: %@\n", v13];
  v17 = [v70 intentId];
  [v17 intValue];
  v18 = intentLabel();

  v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
  v19 = [v70 safetyScore];
  [v19 floatValue];
  [v74 appendFormat:@"INTENT: %@, unsafeConf: %.2f, EmbeddingQ: %@\n", v62, v20, v63];

  for (i = 0; ; ++i)
  {
    v21 = [v70 tokens];
    v22 = [v21 count];

    if (v22 <= i)
    {
      break;
    }

    v23 = [v70 tokens];
    v24 = [v23 objectAtIndexedSubscript:i];

    v25 = [v70 tokenRanges];
    v26 = [v25 objectAtIndexedSubscript:i];
    v78.location = [v26 rangeValue];
    v27 = NSStringFromRange(v78);
    [v74 appendFormat:@"  %@:", v27];

    v28 = [v70 argIdsForTokens];
    v75 = [v28 objectAtIndexedSubscript:i];

    v29 = [v70 argScoresForTokens];
    v72 = [v29 objectAtIndexedSubscript:i];

    v66 = [v65 objectAtIndexedSubscript:i];
    v68 = [v66 objectForKeyedSubscript:kQPQUOutputSpanTypesKey];
    if ([v68 count])
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [v68 componentsJoinedByString:{@", "}];
      v67 = [v30 stringWithFormat:@" spans:%@", v31];
    }

    else
    {
      v67 = &stru_1F45E9EA0;
    }

    v32 = 0;
    v33 = 0;
    v73 = &stru_1F45E9EA0;
    while (v33 < [v75 count])
    {
      if (v33)
      {
        [v74 appendString:{@", "}];
      }

      v35 = [v75 objectAtIndexedSubscript:v33];
      v34 = [(__CFString *)v35 intValue];

      HIDWORD(v35) = MEMORY[0x1E696AEC4];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:intentArgShortLabel()];
      if (!v33 && a5 && ([v70 tokens], v35 = objc_claimAutoreleasedReturnValue(), v37 = -[__CFString count](v35, "count") - 1, v35, v37 == i))
      {
        v38 = MEMORY[0x1E696AEC0];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:intentArgShortLabel()];
        v35 = [v38 stringWithFormat:@"%@ {originally %@}", v39, v36];

        v36 = v35;
      }

      else if (v34 != 2)
      {
        v40 = [v76 objectForKeyedSubscript:v24];
        v35 = [v40 count];

        if (!v35)
        {
          goto LABEL_24;
        }
      }

      v41 = [v76 objectForKeyedSubscript:v24];

      if (v41)
      {
        v42 = [v76 objectForKeyedSubscript:v24];
        v43 = [v42 allKeys];
        v44 = [v43 firstObject];

        v45 = [v76 objectForKeyedSubscript:v24];
        v46 = [v45 objectForKeyedSubscript:v44];

        v47 = [v76 objectForKeyedSubscript:v24];
        v48 = [v47 count];

        v35 = MEMORY[0x1E696AEC0];
        v49 = [v46 firstObject];
        [v49 doubleValue];
        v51 = v50;
        v52 = [v46 lastObject];
        [v52 doubleValue];
        if (v48 < 2)
        {
          [(__CFString *)v35 stringWithFormat:@"vids: (%@(%.2g, %2.g))", v44, v51, v53];
          v73 = v55 = v73;
        }

        else
        {
          v54 = v53;
          v55 = [v76 objectForKeyedSubscript:v24];
          v35 = -[__CFString stringWithFormat:](v35, "stringWithFormat:", @"vids: (%@(%.2g, %.2g) + %lu more)", v44, v51, v54, [v55 count] - 1);

          v73 = v35;
        }
      }

LABEL_24:
      v56 = [v72 objectAtIndexedSubscript:v33];
      [v56 floatValue];
      LODWORD(v35) = llroundf(v57 * 100.0);

      if (v32 == v35)
      {
        [v74 appendFormat:@" %@", v36];
      }

      else
      {
        [v74 appendFormat:@" %@ %d%%", v36, v35];
      }

      ++v33;
      v32 = v35;
    }

    v58 = [(__CFString *)v73 length];
    v59 = &stru_1F45E9EA0;
    if (v58)
    {
      v59 = @" ";
    }

    [v74 appendFormat:@"%@%@%@\n", v59, v73, v67];

    v11 = v64;
  }

  objc_autoreleasePoolPop(context);

  return v74;
}

void QP::logQueryUnderstandingOverviewCAEvent(void *a1, void *a2, unsigned int a3, unsigned int a4, BOOL a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v28 = a1;
  v29 = a2;
  empty = xpc_dictionary_create_empty();
  xdict = empty;
  v9 = [v28 intentId];
  v10 = [v9 intValue];

  if (v10 >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1C6632698[v10];
  }

  v12 = QPProcessName();
  xpc_dictionary_set_string(empty, "process", v12);
  v13 = [v29 localeIdentifier];
  v14 = [v13 cStringUsingEncoding:4];

  if (v14)
  {
    xpc_dictionary_set_string(empty, "locale", v14);
  }

  xpc_dictionary_set_uint64(empty, "queryLength", a3);
  xpc_dictionary_set_uint64(empty, "tokenCount", a4);
  xpc_dictionary_set_uint64(empty, "queryIntent", v11);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [v28 argIdsForTokens];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v20)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v34 = 0;
    v30 = 0;
    v21 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = [*(*(&v35 + 1) + 8 * i) firstObject];
        v24 = [v23 intValue];

        if (v24 <= 7)
        {
          if (v24 > 2)
          {
            switch(v24)
            {
              case 3:
                LOBYTE(v33) = 1;
                break;
              case 5:
                BYTE4(v32) = 1;
                break;
              case 7:
                LOBYTE(v31) = 1;
                break;
            }
          }

          else if (v24)
          {
            if (v24 == 1)
            {
              LOBYTE(v32) = 1;
            }

            else if (v24 == 2)
            {
              BYTE4(v31) = 1;
            }
          }

          else
          {
            v30 = 1;
          }
        }

        else if (v24 <= 10)
        {
          if (v24 == 8)
          {
            BYTE4(v34) = 1;
          }

          else if (v24 == 9)
          {
            v16 = 1;
          }

          else
          {
            v19 = 1;
          }
        }

        else if (v24 > 20)
        {
          if (v24 == 21)
          {
            v17 = 1;
          }

          else if (v24 == 50)
          {
            BYTE4(v33) = 1;
          }
        }

        else if (v24 == 11)
        {
          v18 = 1;
        }

        else if (v24 == 12)
        {
          LOBYTE(v34) = 1;
        }
      }

      v20 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v20);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v34 = 0;
    v30 = 0;
  }

  xpc_dictionary_set_BOOL(xdict, "queryContainsActionTokens", 0);
  xpc_dictionary_set_BOOL(xdict, "queryContainsCaptureDeviceTokens", 0);
  xpc_dictionary_set_BOOL(xdict, "queryContainsEventTokens", v16 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsFavoritedTokens", v17 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsGenericLocationTokens", v18 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsLocationTokens", v19 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsMediaTypeTokens", v32 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsNounTokens", v32 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsPersonSenderTokens", v33 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsPersonTokens", v31 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsSortCriteriaTokens", v33 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsSourceAppTokens", v34 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsTimeTokens", v34 & 0x100000000);
  xpc_dictionary_set_BOOL(xdict, "queryContainsUnspecifiedTokens", v30 & 1);
  xpc_dictionary_set_BOOL(xdict, "queryContainsVisualQualityTokens", v31 & 1);
  xpc_dictionary_set_BOOL(xdict, "ecrGroundedPersonEntity", a5);
  analytics_send_event();

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t QP::U2Parser::resourcesLoaded(QP::U2Parser *this)
{
  v1 = [MEMORY[0x1E69C6A68] sharedInstance];
  v2 = [v1 modelLoaded];

  return v2;
}

void QP::U2Parser::preheat(QP::U2Parser *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 10) + 112);
  if (QP::isSupportedQULanguage(v2, v3))
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v4 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this + 10) + 48);
      v6 = [v2 localeIdentifier];
      v14 = 134218242;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Preheat QU model for locale: %@", &v14, 0x16u);
    }

    v7 = *(*(this + 10) + 37);
    v8 = [MEMORY[0x1E69C6A68] sharedInstance];
    v9 = [v8 getModelForLocale:v2 withTimeoutMS:-v7];

    if (QP::isSupportedECRLocale(v2, v10))
    {
      if (*(*(this + 10) + 65) == 1)
      {
        +[QPInProcessECRClient sharedClient];
      }

      else
      {
        +[QPXPCECRClient sharedClient];
      }
      v11 = ;
      v12 = v11;
      if (*(*(this + 10) + 37) == 1)
      {
        [v11 warmUpSync];
      }

      else
      {
        [v11 warmUpAsync];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void QP::U2Parser::cooldown(QP::U2Parser *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 10) + 112);
  if (QP::isSupportedQULanguage(v2, v3))
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    v4 = u2ParserLogger(void)::log;
    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this + 10) + 48);
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Cooldown QU model", &v11, 0xCu);
    }

    v6 = [MEMORY[0x1E69C6A68] sharedInstance];
    [v6 releaseModel];

    if (QP::isSupportedECRLocale(v2, v7))
    {
      if (*(*(this + 10) + 65) == 1)
      {
        +[QPInProcessECRClient sharedClient];
      }

      else
      {
        +[QPXPCECRClient sharedClient];
      }
      v8 = ;
      v9 = v8;
      if (*(*(this + 10) + 37) == 1)
      {
        [v8 cooldownSync];
      }

      else
      {
        [v8 cooldownAsync];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void ___ZL14u2ParserLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QPU2Parser");
  v2 = u2ParserLogger(void)::log;
  u2ParserLogger(void)::log = v1;
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

uint64_t __Block_byref_object_copy__599(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2QPL31allVisualIdentifiersWithTimeoutEP8NSStringNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 64) + 65))
  {
    v2 = off_1E82660B8;
  }

  else
  {
    v2 = &off_1E82660C0;
  }

  v3 = [(__objc2_class *)*v2 sharedClient];
  v4 = *(*(a1 + 64) + 68);
  v5 = *(a1 + 32);
  v13 = 0;
  v6 = [v3 visualIdentifiersWithQuery:v5 entityFilterType:v4 ^ 1 enableBackupSearch:0 error:&v13];
  v7 = v13;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void ___ZN2QPL26u2UnderstandingWithTimeoutEPU31objcproto20QUUnderstandingModel11objc_objectPK10__CFStringlP7QUSpansP8NSNumberbjPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a2;
  v7 = a3;
  CFRelease(*(a1 + 56));
  if (v7)
  {
    if (u2ParserLogger(void)::token != -1)
    {
      QP::isSupportedQULanguage();
    }

    if (os_log_type_enabled(u2ParserLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      ___ZN2QPL26u2UnderstandingWithTimeoutEPU31objcproto20QUUnderstandingModel11objc_objectPK10__CFStringlP7QUSpansP8NSNumberbjPU15__autoreleasingP7NSError_block_invoke_cold_2(a1);
    }

    v8 = 40;
    v4 = a3;
  }

  else
  {
    v8 = 48;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), v4);
  dispatch_group_leave(*(a1 + 32));
}

ModifiedToken *QP::newModifiedToken(void *a1, void *a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v18 = a1;
  v19 = a2;
  v3 = objc_opt_new();
  v39 = 0;
  v40 = &v39;
  v41 = 0x4012000000;
  v42 = __Block_byref_object_copy__627;
  v43 = __Block_byref_object_dispose__628;
  v44 = &unk_1C664F151;
  v45 = 0;
  v46 = 0;
  v4 = objc_opt_new();
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke;
  v33[3] = &unk_1E8267FC8;
  v5 = v19;
  v34 = v5;
  v6 = v3;
  v35 = v6;
  v38 = &v39;
  v7 = v4;
  v36 = v7;
  v8 = v18;
  v37 = v8;
  [v8 enumerateIndexesUsingBlock:v33];
  v9 = [v6 length];
  v40[7] = v9;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__599;
  v31 = __Block_byref_object_dispose__600;
  v32 = &unk_1F45FA750;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__599;
  v25 = __Block_byref_object_dispose__600;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke_633;
  v20[3] = &unk_1E8267FF0;
  v20[4] = &v27;
  v20[5] = &v21;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];
  v10 = [ModifiedToken alloc];
  v12 = v40[6];
  v11 = v40[7];
  v48[0] = v22[5];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v47 = v28[5];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v15 = [(ModifiedToken *)v10 initWithToken:v6 tokenRange:v12 argIdsForToken:v11 argScoresForToken:v13, v14];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v39, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void sub_1C6622700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, id a35, id a36, id a37)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose((v41 - 192), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__627(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) tokens];
  v29 = [v4 objectAtIndexedSubscript:a2];

  if (![*(a1 + 40) length])
  {
    v5 = [*(a1 + 32) tokenRanges];
    v6 = [v5 objectAtIndexedSubscript:a2];

    *(*(*(a1 + 64) + 8) + 48) = [v6 rangeValue];
  }

  [*(a1 + 40) appendString:v29];
  v7 = [*(a1 + 32) argIdsForTokens];
  v8 = [v7 objectAtIndexedSubscript:a2];
  v9 = [v8 firstObject];
  v10 = [v9 intValue];

  v11 = [*(a1 + 32) argScoresForTokens];
  v12 = [v11 objectAtIndexedSubscript:a2];
  v13 = [v12 firstObject];
  [v13 doubleValue];
  v15 = v14;

  v16 = *(a1 + 48);
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    v21 = [v19 objectForKeyedSubscript:v20];

    [v21 doubleValue];
    v23 = v22;
    v24 = [*(a1 + 56) count];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v23 + v15 / v24];
    v26 = *(a1 + 48);
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [v26 setObject:v25 forKeyedSubscript:v27];
  }

  else
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:{v15 / objc_msgSend(*(a1 + 56), "count")}];
    v28 = *(a1 + 48);
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [v28 setObject:v21 forKeyedSubscript:v25];
  }
}

void ___ZN2QPL16newModifiedTokenEP10NSIndexSetPU32objcproto21QUUnderstandingOutput11objc_object_block_invoke_633(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v6 compare:*(*(*(a1 + 32) + 8) + 40)] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void ___ZN2QPL28visualIdentifiersWithTimeoutEP8NSStringb27QPECRClientEntityFilterTypebNSt3__110shared_ptrINS_19ParserConfigurationEEEPU15__autoreleasingP7NSErrorPK14__CFDictionary_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 64) + 65))
  {
    v2 = off_1E82660B8;
  }

  else
  {
    v2 = &off_1E82660C0;
  }

  v3 = [(__objc2_class *)*v2 sharedClient];
  v4 = *(a1 + 32);
  v5 = *(a1 + 88);
  v6 = *(a1 + 80);
  v7 = *(*(a1 + 64) + 67);
  v8 = *(a1 + 89);
  v17 = 0;
  LOBYTE(v16) = 0;
  v9 = [v3 visualIdentifiersWithText:v4 allowPrefixSearch:v5 entityFilterType:v6 includeInferredNames:v7 allowGroundingToNamesAndEmails:v8 useNamesAndEmailsForNonRelations:1 enableBackupSearch:v16 error:&v17];
  v10 = v17;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  dispatch_semaphore_signal(*(a1 + 40));
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<char const*&,CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, char **a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,char const*&,CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,char const*&,CFRange &,QP::Lexeme*>(std::string *a1, char **a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, *a2);
  QP::Lexeme::Lexeme(a1, __p, *a3, *(a3 + 8));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C6622DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,int,int,QUIntentArgType,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, *a6);
  return a1;
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,int,int,QUIntentArgType &,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5, int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, *a6);
  return a1;
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,std::allocator<QP::Parse>,0>(void *a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,QP::Parse*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,QP::Parse*>(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  memset(v12, 0, sizeof(v12));
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v12, *a5, a5[1], (a5[1] - *a5) >> 4);
  QP::Parse::Parse(a1, v8, v9, v10, v12, *a6, 0);
  v13 = v12;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v13);
  return a1;
}

void sub_1C66231B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL QP::startswith(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3)
  {
    v5 = *(a2 + 1);
  }

  else
  {
    v5 = a2[23];
  }

  v6 = &v4[v5];
  if (v5)
  {
    if ((a1[23] & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    while (*v4 == *v7)
    {
      ++v4;
      ++v7;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = v6;
  }

  return v4 == v6;
}

BOOL QP::endswith(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  if (v3 > v4)
  {
    return 0;
  }

  v7 = v2;
  v8 = (a2 + v2);
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = (*a2 + a2[1]);
    v9 = *a2;
  }

  if (v5 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v11 = v10 + v4 - 1;
  do
  {
    result = v8 == v9;
    if (v8 == v9)
    {
      break;
    }

    v13 = *(v8 - 1);
    v8 = (v8 - 1);
    v12 = v13;
    v14 = *v11--;
  }

  while (v12 == v14);
  return result;
}

BOOL QP::equals(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a1[1];
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
    a2 = *a2;
  }

  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v2 == v3;
  return !memcmp(a1, a2, v5) && v6;
}

CFStringRef QP::createCFStringFromString(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return &stru_1F45E9EA0;
    }

    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], v1, v2, 0x8000100u, 0);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v1 = *a1;
    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], v1, v2, 0x8000100u, 0);
  }

  return &stru_1F45E9EA0;
}

_BYTE *QP::getUTF8StringFromCFString@<X0>(const __CFString *this@<X0>, _BYTE *a2@<X8>)
{
  if (this)
  {
    Length = CFStringGetLength(this);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "");
}

uint64_t copyStringInsertingSpacesBetweenIdeographCharacters(const __CFString *a1, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  if (__onceCSetToken != -1)
  {
    copyStringInsertingSpacesBetweenIdeographCharacters();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  Mutable = CFStringCreateMutable(0, 0);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___Z51copyStringInsertingSpacesBetweenIdeographCharactersPK10__CFString7CFRange_block_invoke_2;
  v7[3] = &unk_1E8268860;
  v7[7] = &v14;
  v7[8] = a1;
  v7[4] = v12;
  v7[5] = v10;
  v7[6] = v8;
  CFEnumerateCharactersInCFString(a1, location, length, v7);
  v5 = v15[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

void sub_1C6623654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

CFArrayRef ___Z15getValidRegionsv_block_invoke()
{
  v2[257] = *MEMORY[0x1E69E9840];
  memcpy(v2, off_1E8268030, 0x808uLL);
  result = CFArrayCreate(*MEMORY[0x1E695E480], v2, 257, MEMORY[0x1E695E9C0]);
  getValidRegions(void)::gRegions = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFLocale *getLanguageCode(const __CFLocale *result)
{
  if (result)
  {
    return CFLocaleGetValue(result, *MEMORY[0x1E695E6F0]);
  }

  return result;
}

__CFString *getScriptCode(__CFString *result)
{
  if (result)
  {
    v1 = result;
    result = CFLocaleGetValue(result, *MEMORY[0x1E695E6F8]);
    if (!result)
    {
      Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6F0]);
      v3 = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
      if (Value)
      {
        v4 = v3 == 0;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }

      v5 = v3;
      if (Value != @"zh")
      {
        if (CFStringCompare(Value, @"zh", 0))
        {
          return 0;
        }
      }

      if (v5 == @"HK")
      {
        return @"Hant";
      }

      v6 = CFStringCompare(v5, @"HK", 0) == kCFCompareEqualTo || v5 == @"TW";
      if (v6 || CFStringCompare(v5, @"TW", 0) == kCFCompareEqualTo)
      {
        return @"Hant";
      }

      else
      {
        if (v5 != @"CN" && CFStringCompare(v5, @"CN", 0))
        {
          return 0;
        }

        return @"Hans";
      }
    }
  }

  return result;
}

BOOL CFStringsAreEqual(CFStringRef theString1, const __CFString *a2)
{
  if (theString1 == a2)
  {
    return 1;
  }

  result = 0;
  if (theString1)
  {
    if (a2)
    {
      return CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

const __CFLocale *copyNormalizedLocaleForIdentifier(CFLocaleIdentifier localeIdentifier)
{
  if (localeIdentifier)
  {
    v1 = CFLocaleCreate(*MEMORY[0x1E695E480], localeIdentifier);
  }

  else
  {
    v1 = CFLocaleCopyCurrent();
  }

  v2 = v1;
  if (v1)
  {
    Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
    if (Value)
    {
      v4 = Value;
      if (getValidRegions(void)::onceToken != -1)
      {
        copyNormalizedLocaleForIdentifier();
      }

      v5 = getValidRegions(void)::gRegions;
      v14.length = CFArrayGetCount(getValidRegions(void)::gRegions);
      v14.location = 0;
      if (CFArrayContainsValue(v5, v14, v4))
      {
        v6 = *MEMORY[0x1E695E480];
        v7 = v2;
LABEL_19:
        CFRelease(v2);
        return v7;
      }
    }

    v7 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F0]);
    v8 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F8]);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_US", v7);
    }

    else
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@_US", v7, v8);
    }

    v12 = v11;
    v7 = CFLocaleCreate(v10, v11);
    CFRelease(v12);
    goto LABEL_19;
  }

  return 0;
}

uint64_t normalizedLanguageForLocale(const __CFLocale *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x1C695ACD0]();
  v2 = copyNormalizedLocaleForIdentifier(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x1C695ACD0]();
  CFRelease(v3);
  return v4;
}

const __CFArray *copyNormalizedLanguagesForIdentifiers(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v6 = copyNormalizedLocaleForIdentifier(ValueAtIndex);
        if (v6)
        {
          v7 = v6;
          v8 = MEMORY[0x1C695ACD0]();
          v20.length = CFArrayGetCount(Mutable);
          v20.location = 0;
          if (!CFArrayContainsValue(Mutable, v20, v8))
          {
            CFArrayAppendValue(Mutable, v8);
          }

          CFRelease(v7);
        }
      }
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  if (!CFArrayGetCount(Mutable))
  {
    v9 = CFLocaleCopyCurrent();
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x1C695ACD0]();
      v12 = copyNormalizedLocaleForIdentifier(v11);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0x1C695ACD0]();
        v21.length = CFArrayGetCount(Mutable);
        v21.location = 0;
        if (!CFArrayContainsValue(Mutable, v21, v14))
        {
          CFArrayAppendValue(Mutable, v14);
        }

        CFRelease(v13);
      }
    }

    else
    {
      if (!CFLocaleGetSystem() || (v16 = MEMORY[0x1C695ACD0](), (v17 = copyNormalizedLocaleForIdentifier(v16)) == 0))
      {
LABEL_18:
        if (!CFArrayGetCount(Mutable))
        {
          CFArrayAppendValue(Mutable, @"en-US");
        }

        return Mutable;
      }

      v10 = v17;
      v18 = MEMORY[0x1C695ACD0]();
      v22.length = CFArrayGetCount(Mutable);
      v22.location = 0;
      if (!CFArrayContainsValue(Mutable, v22, v18))
      {
        v19 = MEMORY[0x1C695ACD0](v10);
        CFArrayAppendValue(Mutable, v19);
      }
    }

    CFRelease(v10);
    goto LABEL_18;
  }

  return Mutable;
}

const __CFArray *copyCurrentPreferredLanguages(void)
{
  v0 = CFLocaleCopyPreferredLanguages();
  v1 = copyNormalizedLanguagesForIdentifiers(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFLocaleRef copyCurrentLocale(void)
{
  v0 = copyCurrentPreferredLanguages();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFArrayGetCount(v0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
    v3 = CFLocaleCreate(*MEMORY[0x1E695E480], ValueAtIndex);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

__CFCalendar *copyCurrentCalendar(const __CFLocale *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = MEMORY[0x1C695ACD0]();
  v4 = *MEMORY[0x1E695E480];
  v5 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], v3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = CFCalendarCopyCurrent();
    if (!v6)
    {
      return v6;
    }
  }

  v7 = CFTimeZoneCopySystem();
  if (v7)
  {
    v8 = v7;
    CFCalendarSetTimeZone(v6, v7);
    CFRelease(v8);
  }

  if (a2)
  {
    v9 = CFLocaleCreate(v4, a2);
    CFCalendarSetLocale(v6, v9);
    CFRelease(v9);
  }

  return v6;
}

CFAbsoluteTime getCurrentTime(__CFCalendar *a1, const __CFDate *a2)
{
  if (a2)
  {
    MEMORY[0x1C695AB50](a2);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  at = Current;
  v9 = -1;
  v10 = -1;
  v7 = -1;
  v8 = -1;
  v6 = -1;
  v5 = -1;
  CFCalendarDecomposeAbsoluteTime(a1, Current, "dMyHms", &v10, &v9, &v8, &v7, &v6, &v5);
  CFCalendarComposeAbsoluteTime(a1, &at, "dMyHms", v10, v9, v8, v7, v6, v5);
  return at;
}

CFAbsoluteTime convertAbsoluteTime(__CFCalendar *a1, __CFCalendar *a2, const __CFDate *a3, int a4)
{
  at = 0.0;
  v7 = MEMORY[0x1C695AB50](a3);
  v8 = MEMORY[0x1C695AA30](a2);
  v24 = -1;
  v25 = -1;
  v22 = -1;
  v23 = -1;
  v21 = -1;
  v19 = -1;
  v20 = -1;
  v17 = -1;
  v18 = -1;
  CFCalendarDecomposeAbsoluteTime(a1, v7, "yMdwEFHms", &v23, &v24, &v25, &v21, &v22, &v20, &v19, &v18, &v17);
  v9 = *MEMORY[0x1E695E6B8];
  if (v8 == *MEMORY[0x1E695E6B8] || v8 && v9 && CFStringCompare(v8, v9, 0) == kCFCompareEqualTo)
  {
    v16 = -1;
    CFCalendarComposeAbsoluteTime(a2, &at, "y", v23);
    CFCalendarDecomposeAbsoluteTime(a1, at, "y", &v16);
    v23 = v23 - v16 + 1;
  }

  v10 = MEMORY[0x1C695AA20](a1);
  v11 = MEMORY[0x1C695AA20](a2);
  if (a4 != -1 || v10 == v11)
  {
    CFCalendarComposeAbsoluteTime(a2, &at, "yMdwEFHms", v23, v24, v25, v21, v22, v20, v19, v18, v17);
  }

  else
  {
    CFCalendarComposeAbsoluteTime(a2, &at, "ywEHms", v23, v21, v22, v19, v18, v17, v13, v14, v15);
  }

  return at;
}

BOOL CFStringContainsString(CFStringRef theString, const __CFString *a2)
{
  if (theString == a2)
  {
    return 1;
  }

  result = 0;
  if (theString)
  {
    if (a2)
    {
      return CFStringFind(theString, a2, 0).location != -1;
    }
  }

  return result;
}

BOOL CFLocaleIsCJ(_BOOL8 result)
{
  if (result)
  {
    v1 = MEMORY[0x1C695ACD0]();
    return CFStringHasPrefix(v1, @"zh") || CFStringHasPrefix(v1, @"yue") || CFStringHasPrefix(v1, @"ja") != 0;
  }

  return result;
}

BOOL CFLocalesAreEqual(_BOOL8 result, const __CFLocale *a2)
{
  if (result)
  {
    v3 = MEMORY[0x1C695ACD0]();
    v4 = MEMORY[0x1C695ACD0](a2);
    if (v3 == v4)
    {
      return 1;
    }

    else
    {
      v5 = v4;
      result = 0;
      if (v3)
      {
        if (v5)
        {
          return CFStringCompare(v3, v5, 0) == kCFCompareEqualTo;
        }
      }
    }
  }

  return result;
}

CFIndex CFEnumerateCharactersInCFString(CFIndex theString, CFIndex theIndex, uint64_t a3, uint64_t a4)
{
  v5 = theIndex;
  v6 = theString;
  v9 = 0;
  v7 = theIndex + a3;
  do
  {
    if (v5 >= v7)
    {
      break;
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v6, v5);
    theString = RangeOfComposedCharactersAtIndex.location;
    if (RangeOfComposedCharactersAtIndex.location == -1)
    {
      break;
    }

    theString = (*(a4 + 16))(a4, RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length, &v9);
    v5 += RangeOfComposedCharactersAtIndex.length;
  }

  while (v9 != 1);
  return theString;
}

uint64_t ___Z51copyStringInsertingSpacesBetweenIdeographCharactersPK10__CFString7CFRange_block_invoke(const __CFString *a1)
{
  result = newCharacterSetWithPattern(a1);
  __CSet = result;
  return result;
}

uint64_t newCharacterSetWithPattern(const __CFString *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  HIDWORD(v6) = 0;
  Length = CFStringGetLength(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]");
  MEMORY[0x1EEE9AC00](Length);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v3, v2);
  if (!CFStringGetCharactersPtr(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]"))
  {
    v8.location = 0;
    v8.length = Length;
    CFStringGetCharacters(@"[[:Hani:][:Katakana:][:Hiragana:][:Katakana_Or_Hiragana:][\\u30FC]]", v8, v3);
  }

  result = uset_openPattern();
  if (SHIDWORD(v6) >= 1 && result)
  {
    uset_close();
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void ___Z51copyStringInsertingSpacesBetweenIdeographCharactersPK10__CFString7CFRange_block_invoke_2(uint64_t a1, CFIndex a2, CFIndex a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = (v13 - ((2 * a3 + 17) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, 2 * a3 + 2);
  v14.location = a2;
  v14.length = a3;
  CFStringGetCharacters(*(a1 + 64), v14, v6);
  isWhitespace = u_isWhitespace(*v6);
  v8 = uset_containsAllCodePoints();
  v9 = v8;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24) != 1 || v8 == 0;
    if (!v10 || (*(*(*(a1 + 48) + 8) + 24) == 1 ? (v11 = isWhitespace == 0) : (v11 = 0), v11))
    {
      CFStringAppend(*(*(*(a1 + 56) + 8) + 24), @" ");
    }
  }

  CFStringAppendCharacters(*(*(*(a1 + 56) + 8) + 24), v6, a3);
  *(*(*(a1 + 40) + 8) + 24) = isWhitespace == 0;
  *(*(*(a1 + 48) + 8) + 24) = v9 != 0;
  ++*(*(*(a1 + 32) + 8) + 24);
  v12 = *MEMORY[0x1E69E9840];
}

CFStringRef copyTranslatedRomanNumberFromChineseNumberString(const __CFString *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  values[4] = xmmword_1E82688C0;
  values[5] = *&off_1E82688D0;
  v30 = @"9";
  values[0] = xmmword_1E8268880;
  values[1] = *&off_1E8268890;
  values[2] = xmmword_1E82688A0;
  values[3] = *&off_1E82688B0;
  v26 = xmmword_1E8268928;
  v27 = *&off_1E8268938;
  v28 = @"九";
  *keys = xmmword_1E82688E8;
  v23 = *&off_1E82688F8;
  v24 = xmmword_1E8268908;
  v25 = *&off_1E8268918;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *prefix = xmmword_1E8268950;
  v21 = @"千";
  v4 = CFArrayCreate(v2, prefix, 3, MEMORY[0x1E695E9C0]);
  Length = CFStringGetLength(a1);
  if (Length >= 1)
  {
    v6 = Length;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v33.location = v10;
      v33.length = 1;
      v11 = CFStringCreateWithSubstring(v2, a1, v33);
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, v11, &value))
      {
        IntValue = CFStringGetIntValue(value);
        v13 = 10 * v9;
        if (!v7)
        {
          v13 = v9;
        }

        v9 = IntValue + v13;
        ++v7;
      }

      else
      {
        v32.length = CFArrayGetCount(v4);
        v32.location = 0;
        if (!CFArrayContainsValue(v4, v32, v11))
        {
          CFRelease(v11);
          CFRelease(v3);
          CFRelease(v4);
          result = 0;
          goto LABEL_23;
        }

        HasPrefix = CFStringHasPrefix(v11, prefix[0]);
        if (v9)
        {
          if (HasPrefix)
          {
            v15 = 10 * v9;
          }

          else
          {
            v16 = CFStringHasPrefix(v11, prefix[1]);
            v15 = 1000 * v9;
            if (v16)
            {
              v15 = 100 * v9;
            }
          }
        }

        else if (HasPrefix)
        {
          v15 = 10;
        }

        else if (CFStringHasPrefix(v11, prefix[1]))
        {
          v15 = 100;
        }

        else
        {
          v15 = 1000;
        }

        v9 = 0;
        v7 = 0;
        v8 += v15;
      }

      CFRelease(v11);
      if (v6 == ++v10)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_22:
  CFRelease(v3);
  CFRelease(v4);
  result = CFStringCreateWithFormat(v2, 0, @"%d", (v8 + v9));
LABEL_23:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}