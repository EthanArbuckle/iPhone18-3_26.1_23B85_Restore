void REEnsureMatchingFeatureTypes(void *a1, void *a2)
{
  v19 = a1;
  v9 = a2;
  v10 = v19;
  if (v19)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature must be non-nil", v3, v4, v5, v6, v7, v8, v18);
    v10 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature must be non-nil", v3, v4, v5, v6, v7, v8, v18);
  v10 = v19;
LABEL_3:
  v11 = [v10 featureType];
  if (v11 != [v9 featureType])
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature (%@) must match feature type of %@", v12, v13, v14, v15, v16, v17, v19);
  }
}

void REEnsureFeatureWithType(void *a1, unint64_t a2)
{
  v3 = a1;
  v19 = v3;
  if (!v3)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature must be non-nil", v4, v5, v6, v7, v8, v9, v17);
    v3 = 0;
  }

  if ([v3 featureType] != a2)
  {
    v10 = *MEMORY[0x277CBE660];
    v18 = REStringFromFeatureType(a2);
    RERaiseInternalException(v10, @"Feature (%@) must be a %@ feature", v11, v12, v13, v14, v15, v16, v19);
  }
}

uint64_t RECreateDoubleFeatureValueTaggedPointer()
{
  v0 = [REFeatureValue featureValueWithDouble:?];
  v1 = v0;
  if (!v0)
  {
    v4 = 0;
    goto LABEL_27;
  }

  v2 = [v0 type];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      [v1 doubleValue];
      if (((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE && vabdd_f64(COERCE_DOUBLE(*&v12 & 0xFFFFFFFFFFFFFFF8), v12) < *&REFloatingPointTaggedPointerPrecision)
      {
        v4 = *&v12 & 0xFFFFFFFFFFFFFFF8 | 5;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v2 != 3)
    {
      goto LABEL_26;
    }

    v5 = [v1 stringValue];
    if (!_RECanEncodeStringValue(v5))
    {

      goto LABEL_26;
    }

    v6 = v5;
    v7 = [v6 length];
    v8 = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

      ;
    }

    if (v7 < 7)
    {
LABEL_15:
      v10 = v7 - 7;
      do
      {
        v8 <<= 8;
      }

      while (!__CFADD__(v10++, 1));
    }

    v4 = (8 * v8) | 7;
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = [v1 int64Value];
        if (!(v3 >> 61))
        {
          v4 = (8 * v3) | 3;
          goto LABEL_27;
        }
      }

LABEL_26:
      v4 = v1;
      goto LABEL_27;
    }

    if ([v1 BOOLValue])
    {
      v4 = 9;
    }

    else
    {
      v4 = 1;
    }
  }

LABEL_27:

  return v4;
}

void REReleaseFeatureValueTaggedPointer(CFTypeRef cf)
{
  if (cf)
  {
    if ((cf & 1) == 0)
    {
      CFRelease(cf);
    }
  }
}

CFTypeRef RERetainFeatureValueTaggedPointer(CFTypeRef cf)
{
  if (cf)
  {
    if ((cf & 1) == 0)
    {
      return CFRetain(cf);
    }
  }

  return cf;
}

uint64_t REFeatureValueHashForTaggedPointer(unint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = 0;
LABEL_19:
    v10 = *MEMORY[0x277D85DE8];
    return v3;
  }

  if (a1)
  {
    v4 = (a1 >> 1) & 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithDouble:COERCE_DOUBLE(a1 & 0xFFFFFFFFFFFFFFF8)];
      }

      else
      {
        v7 = a1 >> 3;
        v11[0] = 0;
        for (i = 6; i != -1; --i)
        {
          *(v11 + i) = v7;
          v7 >>= 8;
        }

        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      }

      v9 = v6;
      v3 = [v6 hash];
    }

    else
    {
      v5 = 3269800123;
      if (a1 < 8)
      {
        v5 = 842849807;
      }

      if (v4)
      {
        v3 = a1 >> 3;
      }

      else
      {
        v3 = v5;
      }
    }

    goto LABEL_19;
  }

  v1 = *MEMORY[0x277D85DE8];

  return [a1 hash];
}

uint64_t RECreateBooleanFeatureValueTaggedPointer(int a1)
{
  if (a1)
  {
    return 9;
  }

  else
  {
    return 1;
  }
}

uint64_t REInvertRelation(uint64_t a1)
{
  if ((a1 + 2) > 6)
  {
    return 4;
  }

  else
  {
    return qword_2286B2A28[a1 + 2];
  }
}

uint64_t RECreateIntegerFeatureValueTaggedPointer(uint64_t a1)
{
  v1 = [REFeatureValue featureValueWithInt64:a1];
  v2 = v1;
  if (!v1)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v3 = [v1 type];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      [v2 doubleValue];
      if (((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE && vabdd_f64(COERCE_DOUBLE(*&v13 & 0xFFFFFFFFFFFFFFF8), v13) < *&REFloatingPointTaggedPointerPrecision)
      {
        v5 = *&v13 & 0xFFFFFFFFFFFFFFF8 | 5;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v3 != 3)
    {
      goto LABEL_26;
    }

    v6 = [v2 stringValue];
    if (!_RECanEncodeStringValue(v6))
    {

      goto LABEL_26;
    }

    v7 = v6;
    v8 = [v7 length];
    v9 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

      ;
    }

    if (v8 < 7)
    {
LABEL_15:
      v11 = v8 - 7;
      do
      {
        v9 <<= 8;
      }

      while (!__CFADD__(v11++, 1));
    }

    v5 = (8 * v9) | 7;
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = [v2 int64Value];
        if (!(v4 >> 61))
        {
          v5 = (8 * v4) | 3;
          goto LABEL_27;
        }
      }

LABEL_26:
      v5 = v2;
      goto LABEL_27;
    }

    if ([v2 BOOLValue])
    {
      v5 = 9;
    }

    else
    {
      v5 = 1;
    }
  }

LABEL_27:

  return v5;
}

id REValidateObjectOfClass(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id REValidateObjectOfClasses(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = REValidateObjectOfClass(v3);
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

float RERelevanceScaleForPriority(unint64_t a1)
{
  result = 1.0;
  if (a1 <= 3)
  {
    return flt_2286B2740[a1];
  }

  return result;
}

double REPercentThroughRange(double a1, double a2, double a3)
{
  result = fmin((a1 - a2) / (a3 - a2), 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t REScheduledUpdateSortedByDate(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 updateDate];
  v5 = [v3 updateDate];

  v6 = [v4 compare:v5];
  return v6;
}

void sub_2285A8148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285A963C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285A9A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(*result + 80);
  v5 = *a2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_2285AA1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNLTagSchemeLemma()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getNLTagSchemeLemmaSymbolLoc_ptr;
  v8 = getNLTagSchemeLemmaSymbolLoc_ptr;
  if (!getNLTagSchemeLemmaSymbolLoc_ptr)
  {
    v1 = NaturalLanguageLibrary();
    v6[3] = dlsym(v1, "NLTagSchemeLemma");
    getNLTagSchemeLemmaSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [RELemmaEnumerator init];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t NaturalLanguageLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!NaturalLanguageLibraryCore_frameworkLibrary)
  {
    NaturalLanguageLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = NaturalLanguageLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NaturalLanguageLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NaturalLanguageLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getNLTagSchemeLanguageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NaturalLanguageLibrary();
  result = dlsym(v2, "NLTagSchemeLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNLTagSchemeLanguageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NaturalLanguageLibrary()
{
  v0 = NaturalLanguageLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getNLTagSchemeLemmaSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NaturalLanguageLibrary();
  result = dlsym(v2, "NLTagSchemeLemma");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNLTagSchemeLemmaSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNLTaggerClass_block_invoke(uint64_t a1)
{
  NaturalLanguageLibrary();
  result = objc_getClass("NLTagger");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNLTaggerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNLTaggerClass_block_invoke_cold_1();
    return re_tokenize_string(v3);
  }

  return result;
}

uint64_t re_tokenize_string(uint64_t *a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (re_tokenize_string(std::string const&,std::vector<std::string> *)::onceToken != -1)
  {
    re_tokenize_string();
  }

  if (!re_tokenize_string(std::string const&,std::vector<std::string> *)::Enumerator)
  {
    return 0;
  }

  pthread_rwlock_wrlock(&re_tokenize_string(std::string const&,std::vector<std::string> *)::m_rwlock);
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = ___Z18re_tokenize_stringRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_6vectorIS5_NS3_IS5_EEEE_block_invoke_2;
  v27[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v27[4] = a2;
  v6 = [re_tokenize_string(std::string const& std:"enumerateLemmasInString:withBlock:" :v5 vector<std:v27 :? string> *):? :?Enumerator];
  if (v6)
  {
    v8 = *a2;
    v7 = a2[1];
    std::string::basic_string[abi:ne200100]<0>(v25, " ");
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    if (v9 >= 2)
    {
      v10 = 0;
      for (i = 1; i != v9; ++i)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= i - 1)
        {
          std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
        }

        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((*a2 + v10), v25, &v22);
        if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= i)
        {
          std::vector<std::string>::__throw_out_of_range[abi:ne200100]();
        }

        v12 = *a2 + v10;
        v15 = *(v12 + 24);
        v13 = v12 + 24;
        v14 = v15;
        v16 = *(v13 + 23);
        if (v16 >= 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = v14;
        }

        if (v16 >= 0)
        {
          v18 = *(v13 + 23);
        }

        else
        {
          v18 = *(v13 + 8);
        }

        v19 = std::string::append(&v22, v17, v18);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v24 = v19->__r_.__value_.__r.__words[2];
        *__p = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::vector<std::string>::push_back[abi:ne200100](a2, __p);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        v10 += 24;
      }
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }

  pthread_rwlock_unlock(&re_tokenize_string(std::string const&,std::vector<std::string> *)::m_rwlock);
  return v6;
}

uint64_t ___Z18re_tokenize_stringRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_6vectorIS5_NS3_IS5_EEEE_block_invoke()
{
  pthread_rwlock_init(&re_tokenize_string(std::string const&,std::vector<std::string> *)::m_rwlock, 0);
  re_tokenize_string(std::string const&,std::vector<std::string> *)::Enumerator = objc_alloc_init(RELemmaEnumerator);

  return MEMORY[0x2821F96F8]();
}

void ___Z18re_tokenize_stringRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_6vectorIS5_NS3_IS5_EEEE_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
  std::vector<std::string>::push_back[abi:ne200100](v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2285AAADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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

id RETokenizeString(void *a1)
{
  v1 = a1;
  if (RETokenizeString::onceToken != -1)
  {
    RETokenizeString_cold_1();
  }

  os_unfair_lock_lock(&RETokenizeString::CacheLock);
  v2 = [RETokenizeString::TokenizedStringCache objectForKey:v1];
  os_unfair_lock_unlock(&RETokenizeString::CacheLock);
  if (!v2)
  {
    v3 = v1;
    v4 = v3;
    if (v3)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (re_tokenize_string(__p, &v13))
      {
        v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3)];
        v6 = v13;
        if (v14 != v13)
        {
          v7 = 0;
          v8 = 0;
          do
          {
            if (*(v6 + v7 + 23) < 0)
            {
              v9 = *(v6 + v7);
            }

            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
            [v5 addObject:v10];

            ++v8;
            v6 = v13;
            v7 += 24;
          }

          while (v8 < 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
        }

        v2 = [v5 copy];
      }

      else
      {
        v2 = MEMORY[0x277CBEBF8];
      }

      v18 = &v13;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v2 = MEMORY[0x277CBEBF8];
    }

    os_unfair_lock_lock(&RETokenizeString::CacheLock);
    [RETokenizeString::TokenizedStringCache setObject:v2 forKey:v4];
    os_unfair_lock_unlock(&RETokenizeString::CacheLock);
  }

  v11 = v2;

  return v11;
}

void sub_2285AAFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __RETokenizeString_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = RETokenizeString::TokenizedStringCache;
  RETokenizeString::TokenizedStringCache = v0;

  RETokenizeString::CacheLock = 0;
}

void RETokenizeStringPrewarm()
{
  std::string::basic_string[abi:ne200100]<0>(__p, [&stru_283B97458 UTF8String]);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (re_tokenize_string(__p, &v7))
  {
    v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3)];
    v1 = v7;
    if (v8 != v7)
    {
      v2 = 0;
      v3 = 0;
      do
      {
        if (*(v1 + v2 + 23) < 0)
        {
          v4 = *(v1 + v2);
        }

        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v0 addObject:v5];

        ++v3;
        v1 = v7;
        v2 += 24;
      }

      while (v3 < 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
    }

    v6 = [v0 copy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v12 = &v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2285AB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19)
{
  a19 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2785F9818, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2785F9820, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
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

float REPercentBetweenDates(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:-1 toDate:v4 options:0];

  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  [v4 timeIntervalSinceReferenceDate];
  v11 = v10;

  [v5 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = (v13 - v9) / (v11 - v9);
  v15 = expf(v14) * 0.367879441;
  v16 = fmin(v15, 1.0);
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16;

  return v17;
}

id REDateFromPercentFromDate(void *a1, float a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 dateByAddingUnit:16 value:-1 toDate:v3 options:0];

  if (a2 <= 0.001)
  {
    v11 = v5;
  }

  else
  {
    v6 = fmin((logf(a2) + 1.0), 1.0);
    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    v7 = v6;
    [v5 timeIntervalSinceReferenceDate];
    v9 = v8;
    [v3 timeIntervalSinceReferenceDate];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{REValueThroughRange(v7, v9, v10)}];
  }

  v12 = v11;

  return v12;
}

void sub_2285AD794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285AF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285AF7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285AFD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 + 40));
  _Unwind_Resume(a1);
}

__CFString *REStringForUpdateType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2785F9E88[a1];
  }
}

void sub_2285B28E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t _RECreateSharedQueueAttr(void *a1, void *a2)
{
  v3 = _RECreateSharedQueueAttr_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    _RECreateSharedQueueAttr_cold_1();
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v7 = [@"com.apple.RelevanceEngine." stringByAppendingString:v5];

  v8 = [v7 UTF8String];
  v9 = dispatch_queue_create_with_target_V2(v8, v6, _RECreateSharedQueueAttr_SharedQueue);

  return v9;
}

id RECreateSharedQueueWithQOS(void *a1, dispatch_qos_class_t a2)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, a2, 0);
  v4 = _RECreateSharedQueueAttr(a1, v3);

  return v4;
}

void sub_2285B4CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285B5844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2285B6158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285B69E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285B6D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285B6F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void REEnumerateContentAttributesOfElement(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v23 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v6 content];
          v15 = [v14 objectForKey:v13];

          if (objc_opt_respondsToSelector())
          {
            v16 = [v15 contentEncodedString];
            if (v16)
            {
              v7[2](v7, v16, &v23);
              if (v23)
              {

                goto LABEL_15;
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v5 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2285B868C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a29);
  objc_destroyWeak((v29 - 152));
  _Unwind_Resume(a1);
}

void sub_2285BC488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 8);
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _REIconDescriptionForDevice(uint64_t a1, uint64_t a2, float a3)
{
  v4 = 2 * (a2 == 1);
  if (a1)
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v5 = 2 * (a2 == 1);
  }

  else
  {
    v5 = v4;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = getISImageDescriptorClass_softClass;
  v22 = getISImageDescriptorClass_softClass;
  if (!getISImageDescriptorClass_softClass)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getISImageDescriptorClass_block_invoke;
    v17 = &unk_2785F9BC0;
    v18 = &v19;
    __getISImageDescriptorClass_block_invoke(&v14);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v8 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
  v22 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
  if (!getkISImageDescriptorHomeScreenSymbolLoc_ptr)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getkISImageDescriptorHomeScreenSymbolLoc_block_invoke;
    v17 = &unk_2785F9BC0;
    v18 = &v19;
    v9 = IconServicesLibrary();
    v10 = dlsym(v9, "kISImageDescriptorHomeScreen");
    *(v18[1] + 24) = v10;
    getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(v18[1] + 24);
    v8 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v8)
  {
    v13 = [RELemmaEnumerator init];
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v13);
  }

  v11 = [v6 imageDescriptorNamed:*v8];
  [v11 setScale:a3];
  [v11 setShape:v5];

  return v11;
}

uint64_t _REIconVariantForDevice(uint64_t result, uint64_t a2, float a3)
{
  if (result == 1)
  {
    if (a2)
    {
      return 42;
    }
  }

  else
  {
    if (result)
    {
      return result;
    }

    if (a2)
    {
      if (a3 < 3.0)
      {
        return 47;
      }

      else
      {
        return 48;
      }
    }
  }

  if (a3 < 3.0)
  {
    v4 = 15;
  }

  else
  {
    v4 = 32;
  }

  if (a3 >= 2.0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_2285BFCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285BFF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISImageDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getISImageDescriptorClass_block_invoke_cold_1();
    return IconServicesLibrary();
  }

  return result;
}

uint64_t IconServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __IconServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2785FA708;
    v6 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IconServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkISImageDescriptorHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IconServicesLibrary();
  result = dlsym(v2, "kISImageDescriptorHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RelevanceEngineUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNanoResourceGrabberClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NanoResourceGrabberLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NanoResourceGrabberLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2785FA738;
    v7 = 0;
    NanoResourceGrabberLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (NanoResourceGrabberLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NanoResourceGrabber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNanoResourceGrabberClass_block_invoke_cold_1();
  }

  getNanoResourceGrabberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoResourceGrabberLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoResourceGrabberLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

REHTMLDataElement *__getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getISIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getISIconClass_block_invoke_cold_1();
    return [(REHTMLDataElement *)v3 initWithData:v4, v5];
  }

  return result;
}

void sub_2285C0B1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2285C1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285C22A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t REIsIdentifierStartCharacter(int a1)
{
  if (a1 == 95)
  {
    return 1;
  }

  else
  {
    return ((a1 - 65) < 0x3A) & (0x3FFFFFF03FFFFFFuLL >> (a1 - 65));
  }
}

BOOL REIsIdentifierCharacter(int a1)
{
  if (a1 - 65) < 0x3A && ((0x3FFFFFF43FFFFFFuLL >> (a1 - 65)))
  {
    return 1;
  }

  return a1 == 45 || (a1 - 48) < 0xA;
}

uint64_t REIsOperatorCharacter(uint64_t a1)
{
  if (RELoadOperatorCharacterMap_onceToken != -1)
  {
    dispatch_once(&RELoadOperatorCharacterMap_onceToken, &__block_literal_global_13);
  }

  v2 = REOperatorCharacterSet;

  return [v2 characterIsMember:a1];
}

void __RELoadOperatorCharacterMap_block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(&unk_283BBD950, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v1 = [&unk_283BBD950 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v23;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(&unk_283BBD950);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = REDescriptionForTokenType([v5 unsignedIntegerValue]);
        [v0 setObject:v5 forKeyedSubscript:v6];
      }

      v2 = [&unk_283BBD950 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v2);
  }

  v7 = [v0 copy];
  v8 = REOperatorTokenMap;
  REOperatorTokenMap = v7;

  v9 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = REOperatorTokenMap;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addCharactersInString:{*(*(&v18 + 1) + 8 * j), v18}];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v15 = [v9 copy];
  v16 = REOperatorCharacterSet;
  REOperatorCharacterSet = v15;

  v17 = *MEMORY[0x277D85DE8];
}

void __REKeywordTokenForString_block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(&unk_283BBD968, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [&unk_283BBD968 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(&unk_283BBD968);
        }

        v5 = *(*(&v10 + 1) + 8 * i);
        v6 = REDescriptionForTokenType([v5 unsignedIntegerValue]);
        [v0 setObject:v5 forKeyedSubscript:v6];
      }

      v2 = [&unk_283BBD968 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  v7 = [v0 copy];
  v8 = REKeywordTokenForString_KeywordTokenMap;
  REKeywordTokenForString_KeywordTokenMap = v7;

  v9 = *MEMORY[0x277D85DE8];
}

void __RELoadControlCharacterMap_block_invoke()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(&unk_283BBD980, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v1 = [&unk_283BBD980 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v23;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(&unk_283BBD980);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = REDescriptionForTokenType([v5 unsignedIntegerValue]);
        [v0 setObject:v5 forKeyedSubscript:v6];
      }

      v2 = [&unk_283BBD980 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v2);
  }

  v7 = [v0 copy];
  v8 = REControlTokenMap;
  REControlTokenMap = v7;

  v9 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = REControlTokenMap;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addCharactersInString:{*(*(&v18 + 1) + 8 * j), v18}];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v15 = [v9 copy];
  v16 = REControlCharacterSet;
  REControlCharacterSet = v15;

  v17 = *MEMORY[0x277D85DE8];
}

__CFString *REStringForPeriodOfDay(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2785FAB38[a1];
  }
}

id REDateIntervalUnion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v3 startDate];
      v7 = [v5 startDate];
      v8 = [v6 earlierDate:v7];

      v9 = [v3 endDate];
      v10 = [v5 endDate];
      v11 = [v9 laterDate:v10];

      v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v11];
      goto LABEL_7;
    }

    v13 = v3;
  }

  else
  {
    v13 = v4;
  }

  v12 = v13;
LABEL_7:

  return v12;
}

id REDateIntervalMidpoint(void *a1)
{
  v1 = a1;
  v2 = [v1 startDate];
  [v1 duration];
  v4 = v3;

  v5 = [v2 dateByAddingTimeInterval:v4 * 0.5];

  return v5;
}

id REUpNextDuplicateIntervalsByAddingUnit(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v27 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v24 = a4;
  if (a4)
  {
    v26 = 0;
    do
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v25;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v28 = *v31;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v30 + 1) + 8 * i);
            v12 = [v11 endDate];
            v13 = [v7 firstObject];
            v14 = [v13 startDate];
            v15 = [v6 components:a2 fromDate:v12 toDate:v14 options:0];

            v16 = [v15 valueForComponent:a2];
            if (v16 >= 0)
            {
              v17 = v16;
            }

            else
            {
              v17 = -v16;
            }

            if (v17 < a3)
            {
              v18 = [v11 startDate];
              v19 = [v6 dateByAddingUnit:a2 value:v26 * a3 toDate:v18 options:0];

              v20 = objc_alloc(MEMORY[0x277CCA970]);
              [v11 duration];
              v21 = [v20 initWithStartDate:v19 duration:?];
              [v27 addObject:v21];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v9);
      }

      ++v26;
    }

    while (v26 != v24);
  }

  [v27 sortUsingComparator:&__block_literal_global_15];

  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t REIndexOfDateInPeriodsOfDay(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [_REPeriodOfDay alloc];
  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 duration:0.0];

  v7 = [(_REPeriodOfDay *)v5 initWithInterval:v6 periodOfDay:2];
  v8 = [v3 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v3 usingComparator:{"count"), 256, &__block_literal_global_338}];

  return v8;
}

uint64_t __REIndexOfDateInPeriodsOfDay_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 interval];
  v7 = [v5 interval];
  v8 = [v6 intersectsDateInterval:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v4 interval];
    v11 = [v5 interval];
    v9 = [v10 compare:v11];
  }

  return v9;
}

void sub_2285C8C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL RESubclassOverridesMethod(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 instanceMethodForSelector:a3];
  v7 = [v5 methodForSelector:a3];

  if (v7)
  {
    v8 = v7 == v6;
  }

  else
  {
    v8 = 1;
  }

  return !v8;
}

void sub_2285CAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_2285CAC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2285CAF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CDContextQueriesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDContextQueriesClass_softClass;
  v7 = get_CDContextQueriesClass_softClass;
  if (!get_CDContextQueriesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_CDContextQueriesClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_CDContextQueriesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285CBAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CDContextualPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDContextualPredicateClass_softClass;
  v7 = get_CDContextualPredicateClass_softClass;
  if (!get_CDContextualPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_CDContextualPredicateClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_CDContextualPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285CBBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CDMDCSContextualPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDMDCSContextualPredicateClass_softClass;
  v7 = get_CDMDCSContextualPredicateClass_softClass;
  if (!get_CDMDCSContextualPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_CDMDCSContextualPredicateClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_CDMDCSContextualPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285CBCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CDContextualChangeRegistrationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_CDContextualChangeRegistrationClass_softClass;
  v7 = get_CDContextualChangeRegistrationClass_softClass;
  if (!get_CDContextualChangeRegistrationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_CDContextualChangeRegistrationClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_CDContextualChangeRegistrationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285CC540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285CD688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CoreDuetContextLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreDuetContextLibraryCore_frameworkLibrary)
  {
    CoreDuetContextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreDuetContextLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreDuetContextLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetContextLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void CoreDuetContextLibrary()
{
  if (!CoreDuetContextLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285CE540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2285CED84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  _Block_object_dispose((v16 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getHKUnitClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass;
  v7 = getHKUnitClass_softClass;
  if (!getHKUnitClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285CF834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HealthKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = HealthKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void HealthKitLibrary()
{
  if (!HealthKitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getHKUnitClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKUnitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKUnitClass_block_invoke_cold_1();
    return +[(REWorkoutRelevanceProvider *)v3];
  }

  return result;
}

void sub_2285D067C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285D211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285D29F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  _Block_object_dispose((v28 - 112), 8);
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285D2FC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2285D33F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285D3ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HealthKitLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    HealthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = HealthKitLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary_0();
  result = dlsym(v2, "kHKHealthDaemonActiveWorkoutServersDidUpdateNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHKHealthDaemonActiveWorkoutServersDidUpdateNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HealthKitLibrary_0()
{
  v0 = HealthKitLibraryCore_0();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class __getHKObserverQueryClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKObserverQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKObserverQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKObserverQueryClass_block_invoke_cold_1();
    return __getHKSampleTypeClass_block_invoke(v3);
  }

  return result;
}

Class __getHKSampleTypeClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKSampleType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSampleTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKSampleTypeClass_block_invoke_cold_1();
    return __getHKQueryClass_block_invoke(v3);
  }

  return result;
}

Class __getHKQueryClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKQueryClass_block_invoke_cold_1();
    return __getHKSourceClass_block_invoke(v3);
  }

  return result;
}

Class __getHKSourceClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKSourceClass_block_invoke_cold_1();
    return __getHKSampleSortIdentifierStartDateSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getHKSampleSortIdentifierStartDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary_0();
  result = dlsym(v2, "HKSampleSortIdentifierStartDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKSampleSortIdentifierStartDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKSampleQueryClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKSampleQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSampleQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKSampleQueryClass_block_invoke_cold_1();
    return __getHKObjectTypeClass_block_invoke(v3);
  }

  return result;
}

Class __getHKObjectTypeClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKObjectType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKObjectTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHKObjectTypeClass_block_invoke_cold_1();
    return [(REHealthStore *)v3 _init];
  }

  return result;
}

id getHKHealthStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKHealthStoreClass_softClass;
  v7 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKHealthStoreClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __getHKHealthStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285D467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HealthKitLibraryCore_1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    HealthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = HealthKitLibraryCore_frameworkLibrary_1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FitnessUILibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    FitnessUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = FitnessUILibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FitnessUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FitnessUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  if (!HealthKitLibraryCore_1())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getHKHealthStoreClass_block_invoke_cold_1();
    return +[(_RETrueConstantCondition *)v4];
  }

  return result;
}

void sub_2285D58F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *REDescriptionForTokenType(unint64_t a1)
{
  if (a1 > 0x2D)
  {
    return 0;
  }

  else
  {
    return off_2785FB0E0[a1];
  }
}

unint64_t REIntegerGCD(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    a1 = v2;
  }

  while (a2);
  return v2;
}

void sub_2285D6F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v21 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *REStringForDailyRoutineType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2785FB310[a1];
  }
}

uint64_t REDailyRoutineTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"morning"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"evening"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2285D8274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285D8668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285D89F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285D8C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_2285DD09C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void BayesianModel::BayesianModel(BayesianModel *this)
{
  this->m_features.__table_.__bucket_list_ = 0u;
  *&this->m_features.__table_.__first_node_.__next_ = 0u;
  this->m_features.__table_.__max_load_factor_ = 1.0;
  this->m_empty = xmmword_2286B28A0;
  this->m_nFeaturesCount = 0;
  this->m_nNumberOfTraining = 0;
  *&this->m_nTotalTrue = 0u;
  this->m_dNormalizedLogScore = 0.0;
  *&this->m_dSumPredictions = 0u;
  *this->m_nCalibrationCurveTrue = 0u;
  *&this->m_nCalibrationCurveTrue[2] = 0u;
  *&this->m_nCalibrationCurveTrue[4] = 0u;
  *&this->m_nCalibrationCurveTrue[6] = 0u;
  *&this->m_nCalibrationCurveTrue[8] = 0u;
  *this->m_nCalibrationCurveCount = 0u;
  *&this->m_nCalibrationCurveCount[2] = 0u;
  *&this->m_nCalibrationCurveCount[4] = 0u;
  *&this->m_nCalibrationCurveCount[6] = 0u;
  *&this->m_nCalibrationCurveCount[8] = 0u;
  pthread_rwlock_init(&this->m_rwlock, 0);
}

BOOL BayesianModel::InitializeFeatures(BayesianModel *this, int a2, int a3, double a4, unint64_t a5, double a6)
{
  pthread_rwlock_wrlock(&this->m_rwlock);
  this->m_nFeaturesCount = a3 + 1;
  if (a3 <= 249)
  {
    *&this->m_nTotalTrue = 0u;
    this->m_nNumberOfTraining = 0;
    *&this->m_dSumPredictions = 0u;
    this->m_dNormalizedLogScore = 0.0;
    *this->m_nCalibrationCurveTrue = 0u;
    *&this->m_nCalibrationCurveTrue[2] = 0u;
    *&this->m_nCalibrationCurveTrue[4] = 0u;
    *&this->m_nCalibrationCurveTrue[6] = 0u;
    *&this->m_nCalibrationCurveTrue[8] = 0u;
    *this->m_nCalibrationCurveCount = 0u;
    *&this->m_nCalibrationCurveCount[2] = 0u;
    *&this->m_nCalibrationCurveCount[4] = 0u;
    *&this->m_nCalibrationCurveCount[6] = 0u;
    this->m_nModelVersion = a2;
    *&this->m_nCalibrationCurveCount[8] = 0u;
    std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::clear(&this->m_features.__table_.__bucket_list_.__ptr_);
    this->m_maxFeatureCoordinates = a5;
    this->m_dEpsilon = a6;
    StdNormal_Inv(a4);
    v13 = v12;
    m_nFeaturesCount = this->m_nFeaturesCount;
    v17[0] = 0xFF00000000000000;
    v17[2] = v17;
    v15 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&this->m_features.__table_.__bucket_list_.__ptr_, v17);
    v15[3] = 1.0;
    v15[4] = v13 * sqrt(m_nFeaturesCount + m_nFeaturesCount);
  }

  pthread_rwlock_unlock(&this->m_rwlock);
  return a3 < 250;
}

uint64_t BayesianModel::SaveModel(uint64_t a1, void *a2, int a3)
{
  v69 = *MEMORY[0x277D85DE8];
  pthread_rwlock_rdlock(a1);
  *(a2 + *(*a2 - 24) + 16) = 15;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ModelDefinition\n", 16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ModelVersion\t", 13);
  v6 = MEMORY[0x22AABBCA0](v5, *(a1 + 296));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "FeaturesCount\t", 14);
  v8 = MEMORY[0x22AABBCA0](v7, *(a1 + 240));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "TotalTrue\t", 10);
  v10 = MEMORY[0x22AABBCD0](v9, *(a1 + 248));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "TotalExamples\t", 14);
  v12 = MEMORY[0x22AABBCD0](v11, *(a1 + 256));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "SumPredictions\t", 15);
  v14 = MEMORY[0x22AABBC80](v13, *(a1 + 264));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LogScore\t", 9);
  v16 = MEMORY[0x22AABBC80](v15, *(a1 + 272));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "NormalizedLogScore\t", 19);
  v18 = MEMORY[0x22AABBC80](v17, *(a1 + 280));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "NegativeEntropy\t", 16);
    v21 = *(a1 + 256);
    if (v21)
    {
      v20.n128_f64[0] = *(a1 + 272) / v21;
    }

    else
    {
      v20.n128_u64[0] = 0;
    }

    v22 = MEMORY[0x22AABBC80](v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n", 1);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "NormalizedEntropy\t", 18);
    v24 = *(a1 + 280);
    v25.n128_u64[0] = 0;
    if (v24 != 0.0)
    {
      v25.n128_f64[0] = fmax(fmin(*(a1 + 272) / v24, 1.0), 0.0);
      if (v24 < -1000000.0)
      {
        *(a1 + 272) = 0;
        *(a1 + 280) = 0;
      }
    }

    v26 = MEMORY[0x22AABBC80](v23, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "\n", 1);
  }

  for (i = 0; i != 80; i += 8)
  {
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "CalibrationTrue\t", 16);
    v29 = MEMORY[0x22AABBCD0](v28, *(a1 + i + 304));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "\n", 1);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "CalibrationCount\t", 17);
    v31 = MEMORY[0x22AABBCD0](v30, *(a1 + i + 384));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "\n", 1);
    if (a3)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "CalibrationValue\t", 17);
      v32 = *(a1 + i + 304) / *(a1 + i + 384);
      v33 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\n\n", 2);
    }
  }

  *__str = 0u;
  v68 = 0u;
  *__s = 0u;
  v66 = 0u;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Features\n", 9);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n\n\n", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "FeatureID_Value\tFeatureID\tFeatureValue\tPrecisionMean\tPrecision\tMean\tVariance\n", 77);
  }

  for (j = *(a1 + 216); j; j = *j)
  {
    v35 = *(j + 2);
    v36 = j[3];
    v37 = j[4];
    snprintf(__str, 0x1FuLL, "%016llX", v35);
    if (a3)
    {
      v38 = j[3];
      v39 = j[4];
      snprintf(__s, 0x1FuLL, "%016llX", v35 & 0xFFFFFFFFFFFFFFLL);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "0x", 2);
      v41 = strlen(__str);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, __str, v41);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\t", 1);
      v44 = MEMORY[0x22AABBCA0](v43, HIBYTE(v35));
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "\t0x", 3);
      v46 = strlen(__s);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, __s, v46);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\t", 1);
      v49 = MEMORY[0x22AABBC80](v48, v37);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "\t", 1);
      v51 = MEMORY[0x22AABBC80](v50, v36);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "\t", 1);
      v53 = MEMORY[0x22AABBC80](v52, v39 / v38);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\t", 1);
      v55 = MEMORY[0x22AABBC80](v54, 1.0 / v38);
    }

    else
    {
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "0x", 2);
      v57 = strlen(__str);
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, __str, v57);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "\t", 1);
      v60 = MEMORY[0x22AABBC80](v59, v37);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "\t", 1);
      v55 = MEMORY[0x22AABBC80](v61, v36);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "\n", 1);
  }

  result = pthread_rwlock_unlock(a1);
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2285DE7B0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

double BayesianModel::getAverageNegativeEntropy(BayesianModel *this)
{
  m_nTotalExamples = this->m_nTotalExamples;
  if (m_nTotalExamples)
  {
    return this->m_dLogScore / m_nTotalExamples;
  }

  else
  {
    return 0.0;
  }
}

BayesianModel *BayesianModel::getAverageNormalizedEntropy(BayesianModel *this)
{
  m_dNormalizedLogScore = this->m_dNormalizedLogScore;
  if (m_dNormalizedLogScore != 0.0)
  {
    v2 = fmax(fmin(this->m_dLogScore / m_dNormalizedLogScore, 1.0), 0.0);
    if (m_dNormalizedLogScore < -1000000.0)
    {
      this->m_dLogScore = 0.0;
      this->m_dNormalizedLogScore = 0.0;
    }
  }

  return this;
}

uint64_t BayesianModel::CaptureDebugTable(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  pthread_rwlock_rdlock(a1);
  v4 = *a2;
  v5 = a2[1];
  while (v5 != v4)
  {
    v5 -= 24;
    *&__p = v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  a2[1] = v4;
  memset(v19, 0, sizeof(v19));
  std::string::basic_string[abi:ne200100]<0>(&__p, "FeatureID_Value");
  std::vector<std::string>::push_back[abi:ne200100](v19, &__p);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "FeatureID");
  std::vector<std::string>::push_back[abi:ne200100](v19, &__p);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "FeatureValue");
  std::vector<std::string>::push_back[abi:ne200100](v19, &__p);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Mean");
  std::vector<std::string>::push_back[abi:ne200100](v19, &__p);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Variance");
  std::vector<std::string>::push_back[abi:ne200100](v19, &__p);
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p);
  }

  std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, v19);
  __p = 0u;
  v23 = 0u;
  *__str = 0u;
  v21 = 0u;
  for (i = *(a1 + 216); i; i = *i)
  {
    v7 = *(i + 2);
    snprintf(&__p, 0x1FuLL, "%016llX", v7);
    v8 = i[3];
    v9 = i[4];
    snprintf(__str, 0x1FuLL, "%016llX", v7 & 0xFFFFFFFFFFFFFFLL);
    memset(v18, 0, sizeof(v18));
    std::string::basic_string[abi:ne200100]<0>(&v16, "0x");
    v10 = std::string::append(&v16, &__p);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    std::to_string(&v17, HIBYTE(v7));
    std::vector<std::string>::push_back[abi:ne200100](v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, "0x");
    v12 = std::string::append(&v16, __str);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    std::to_string(&v17, v9 / v8);
    std::vector<std::string>::push_back[abi:ne200100](v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    std::to_string(&v17, 1.0 / v8);
    std::vector<std::string>::push_back[abi:ne200100](v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    std::vector<std::vector<std::string>>::push_back[abi:ne200100](a2, v18);
    v17.__r_.__value_.__r.__words[0] = v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  }

  *&__p = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  result = pthread_rwlock_unlock(a1);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2285DEBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::vector<std::vector<std::string>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t BayesianModel::GetKeyValueDouble(uint64_t a1, void *a2, const void **a3, double *a4)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, 9u);
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    goto LABEL_16;
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = HIBYTE(v19);
  if (v19 < 0)
  {
    v10 = v18;
  }

  if (v9 == v10 && (v8 >= 0 ? (v11 = a3) : (v11 = *a3), v19 >= 0 ? (v12 = &__p) : (v12 = __p), !memcmp(v11, v12, v9) && (v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, 0xAu), (*(v13 + *(*v13 - 24) + 32) & 5) == 0)))
  {
    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *a4 = atof(p_p);
    v14 = 1;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_2285DEE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x22AABBC30](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2285DEFB4(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2285DEF74);
  }

  __cxa_rethrow();
}

uint64_t BayesianModel::GetKeyValueInt(uint64_t a1, void *a2, const void **a3, int *a4)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, 9u);
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    goto LABEL_16;
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = HIBYTE(v19);
  if (v19 < 0)
  {
    v10 = v18;
  }

  if (v9 == v10 && (v8 >= 0 ? (v11 = a3) : (v11 = *a3), v19 >= 0 ? (v12 = &__p) : (v12 = __p), !memcmp(v11, v12, v9) && (v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, 0xAu), (*(v13 + *(*v13 - 24) + 32) & 5) == 0)))
  {
    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *a4 = atoi(p_p);
    v14 = 1;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_2285DF184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BayesianModel::GetKeyValueUInt64(uint64_t a1, void *a2, const void **a3, unint64_t *a4)
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, 9u);
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    goto LABEL_16;
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = HIBYTE(v20);
  if (v20 < 0)
  {
    v10 = v19;
  }

  if (v9 == v10 && (v8 >= 0 ? (v11 = a3) : (v11 = *a3), v20 >= 0 ? (v12 = &__p) : (v12 = __p), !memcmp(v11, v12, v9) && (v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__p, 0xAu), (*(v13 + *(*v13 - 24) + 32) & 5) == 0)))
  {
    v17 = 0;
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *a4 = strtoull(p_p, &v17, 10);
    v14 = 1;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  return v14;
}

void sub_2285DF2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BayesianModel::LoadModel(uint64_t a1, const std::string *a2, char a3)
{
  pthread_rwlock_wrlock(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v56, a2, 24);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 1;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0x3FF0000000000000;
  v48 = 0;
  v46 = 0x3FF0000000000000;
  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  std::ios_base::getloc((v56 + *(v56[0] - 24)));
  v6 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
  LOBYTE(a2) = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v42);
  v7 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v56, &v53, a2);
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    goto LABEL_45;
  }

  if (SHIBYTE(v55) < 0)
  {
    if (v54 != 15)
    {
      goto LABEL_59;
    }

    v16 = v53;
  }

  else
  {
    if (SHIBYTE(v55) != 15)
    {
      goto LABEL_59;
    }

    v16 = &v53;
  }

  v17 = *v16;
  v18 = *(v16 + 7);
  if (v17 == 0x6665446C65646F4DLL && v18 == 0x6E6F6974696E6966)
  {
LABEL_45:
    v8 = std::string::basic_string[abi:ne200100]<0>(&v42, "ModelVersion");
    if (BayesianModel::GetKeyValueInt(v8, v56, &v42.__locale_, &v51))
    {
      v9 = std::string::basic_string[abi:ne200100]<0>(__endptr, "FeaturesCount");
      if (BayesianModel::GetKeyValueInt(v9, v56, __endptr, &v52))
      {
        v10 = std::string::basic_string[abi:ne200100]<0>(v38, "TotalTrue");
        if (BayesianModel::GetKeyValueUInt64(v10, v56, v38, &v50))
        {
          v11 = std::string::basic_string[abi:ne200100]<0>(v36, "TotalExamples");
          if (BayesianModel::GetKeyValueUInt64(v11, v56, v36, &v49))
          {
            v12 = std::string::basic_string[abi:ne200100]<0>(v34, "SumPredictions");
            if (BayesianModel::GetKeyValueDouble(v12, v56, v34, &v48))
            {
              v13 = std::string::basic_string[abi:ne200100]<0>(v32, "LogScore");
              if (BayesianModel::GetKeyValueDouble(v13, v56, v32, &v47))
              {
                v14 = std::string::basic_string[abi:ne200100]<0>(__p, "NormalizedLogScore");
                KeyValueDouble = BayesianModel::GetKeyValueDouble(v14, v56, __p, &v46);
                if (v31 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                KeyValueDouble = 0;
              }

              if (v33 < 0)
              {
                operator delete(v32[0]);
              }
            }

            else
            {
              KeyValueDouble = 0;
            }

            if (v35 < 0)
            {
              operator delete(v34[0]);
            }
          }

          else
          {
            KeyValueDouble = 0;
          }

          if (v37 < 0)
          {
            operator delete(v36[0]);
          }
        }

        else
        {
          KeyValueDouble = 0;
        }

        if (v39 < 0)
        {
          operator delete(v38[0]);
        }
      }

      else
      {
        KeyValueDouble = 0;
      }

      if (v41 < 0)
      {
        operator delete(__endptr[0]);
      }
    }

    else
    {
      KeyValueDouble = 0;
    }

    if (v43 < 0)
    {
      operator delete(v42.__locale_);
    }

    v20 = (a1 + 384);
    v21 = 10;
    do
    {
      v22 = std::string::basic_string[abi:ne200100]<0>(&v42, "CalibrationTrue");
      BayesianModel::GetKeyValueUInt64(v22, v56, &v42.__locale_, v20 - 10);
      if (v43 < 0)
      {
        operator delete(v42.__locale_);
      }

      v23 = std::string::basic_string[abi:ne200100]<0>(&v42, "CalibrationCount");
      BayesianModel::GetKeyValueUInt64(v23, v56, &v42.__locale_, v20);
      if (v43 < 0)
      {
        operator delete(v42.__locale_);
      }

      ++v20;
      --v21;
    }

    while (v21);
    if (KeyValueDouble)
    {
      if (a3)
      {
        if (*(a1 + 240) < v52)
        {
          goto LABEL_59;
        }
      }

      else if (v51 != *(a1 + 296) || v52 != *(a1 + 240))
      {
        goto LABEL_59;
      }

      std::ios_base::getloc((v56 + *(v56[0] - 24)));
      v24 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
      v25 = (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v42);
      v26 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v56, &v53, v25);
      if ((*(v26 + *(*v26 - 24) + 32) & 5) != 0)
      {
        goto LABEL_52;
      }

      if (SHIBYTE(v55) < 0)
      {
        if (v54 != 8)
        {
          goto LABEL_59;
        }

        v27 = v53;
      }

      else
      {
        if (SHIBYTE(v55) != 8)
        {
          goto LABEL_59;
        }

        v27 = &v53;
      }

      if (*v27 == 0x7365727574616546)
      {
LABEL_52:
        v38[0] = 0;
        operator new();
      }
    }
  }

LABEL_59:
  std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::~__hash_table(v44);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v53);
  }

  v56[0] = *MEMORY[0x277D82818];
  v28 = *(MEMORY[0x277D82818] + 72);
  *(v56 + *(v56[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v56[2] = v28;
  v57 = MEMORY[0x277D82878] + 16;
  if (v59 < 0)
  {
    operator delete(v58[7].__locale_);
  }

  v57 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v58);
  std::iostream::~basic_iostream();
  MEMORY[0x22AABBD50](&v60);
  pthread_rwlock_unlock(a1);
  return 0;
}

void sub_2285DFBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::~__hash_table(&a52);
  if (a69 < 0)
  {
    operator delete(a64);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a70, MEMORY[0x277D82818]);
  MEMORY[0x22AABBD50](&a72);
  pthread_rwlock_unlock(v72);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_2285DFFC8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x22AABBD50](v1);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

BOOL BayesianModel::Train(BayesianModel *a1, uint64_t *a2, int a3)
{
  v3 = (a2[1] - *a2) >> 3;
  v4 = a1->m_nFeaturesCount - 1;
  if (v3 == v4)
  {
    pthread_rwlock_wrlock(&a1->m_rwlock);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    __p = 0;
    v49 = 0;
    v50 = 0;
    BayesianModel::GetGaussiansAndBias2(a1, a2, &v51, &__p);
    ++a1->m_nNumberOfTraining;
    v46 = 0.0;
    __C = 0.0;
    vDSP_sveD(v51, 1, &__C, (v52 - v51) >> 3);
    vDSP_sveD(__p, 1, &v46, (v49 - __p) >> 3);
    v8 = v46 + a1->m_nFeaturesCount;
    v9 = sqrt(v8);
    v10 = 1.0 / v9;
    if (a3)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = -1.0;
    }

    v12 = v11 * __C * v10;
    StdNormal_Cdf(v12);
    v15 = -v12;
    if (v14 >= 1.0e-300)
    {
      v15 = exp(v12 * v15 * 0.5) / 2.50662827 / v14;
    }

    BayesianModel::w(v13, v10 * (v11 * __C));
    v17 = v16;
    StdNormal_Cdf(__C / sqrt(v46 + a1->m_nFeaturesCount));
    v19 = fmin(v18 * 10.0, 9.0);
    ++a1->m_nCalibrationCurveCount[v19];
    v20 = a1->m_nTotalExamples + 1;
    a1->m_nTotalExamples = v20;
    a1->m_dSumPredictions = v18 + a1->m_dSumPredictions;
    if (a3)
    {
      v21 = v19;
      v22 = a1->m_nTotalTrue + 1;
      a1->m_nTotalTrue = v22;
      a1->m_dLogScore = log(v18) + a1->m_dLogScore;
      a1->m_dNormalizedLogScore = a1->m_dNormalizedLogScore + log(v22 / v20);
      ++a1->m_nCalibrationCurveTrue[v21];
    }

    else
    {
      a1->m_dLogScore = log(1.0 - v18) + a1->m_dLogScore;
      a1->m_dNormalizedLogScore = a1->m_dNormalizedLogScore + log(1.0 - a1->m_nTotalTrue / v20);
    }

    v23 = v11 * v15 / v9;
    v24 = *a2;
    v25 = v17 / v8;
    if (a2[1] != *a2)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *(v51 + v26);
        v29 = *(__p + v26);
        m_dEpsilon = a1->m_dEpsilon;
        v31 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&a1->m_features.__table_.__bucket_list_.__ptr_, (v24 + v26));
        if (!v31)
        {
          v54 = (*a2 + v26);
          v31 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a1->m_features.__table_.__bucket_list_.__ptr_, v54);
        }

        v32 = v29 * (1.0 - v29 * v25);
        v33 = v32 / (1.0 - m_dEpsilon + m_dEpsilon * v32);
        v31[3] = 1.0 / v33;
        v31[4] = v33 * ((v28 + v29 * v23) * (1.0 - m_dEpsilon) / v32) * (1.0 / v33);
        ++v27;
        v24 = *a2;
        v26 += 8;
      }

      while (v27 < (a2[1] - *a2) >> 3);
    }

    v45 = 0xFF00000000000000;
    v34 = *(v52 - 1);
    v35 = *(__p + v52 - v51 - 8);
    v36 = a1->m_dEpsilon;
    v37 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&a1->m_features.__table_.__bucket_list_.__ptr_, &v45);
    if (!v37)
    {
      v54 = &v45;
      v37 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a1->m_features.__table_.__bucket_list_.__ptr_, &v45);
    }

    v38 = v35 * (1.0 - v35 * v25);
    v39 = v38 / (1.0 - v36 + v36 * v38);
    v37[3] = 1.0 / v39;
    v37[4] = v39 * ((v34 + v35 * v23) * (1.0 - v36) / v38) * (1.0 / v39);
    if (a1->m_features.__table_.__size_ > a1->m_maxFeatureCoordinates)
    {
      v40 = 0;
      v41 = 0.95;
      v42 = 0.005;
      do
      {
        BayesianModel::PruneByMean(a1, v42);
        BayesianModel::PruneByVariance(a1, v41);
        v42 = v42 + 0.005;
        v41 = v41 + -0.05;
      }

      while (a1->m_maxFeatureCoordinates * 0.9 < a1->m_features.__table_.__size_ && v40++ < 9);
    }

    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    pthread_rwlock_unlock(&a1->m_rwlock);
  }

  return v3 == v4;
}

void sub_2285E04EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  pthread_rwlock_unlock(v17);
  _Unwind_Resume(a1);
}

void BayesianModel::GetGaussiansAndBias2(uint64_t a1, uint64_t *a2, const void **a3, const void **a4)
{
  std::vector<double>::reserve(a3, ((a2[1] - *a2) >> 3) + 1);
  std::vector<double>::reserve(a4, ((a2[1] - *a2) >> 3) + 1);
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    do
    {
      v14 = *(v8 + 8 * v9);
      v10 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>((a1 + 200), &v14);
      if (v10)
      {
        v11 = (v10 + 3);
      }

      else
      {
        v11 = (a1 + 480);
      }

      v14 = v11[1] / *v11;
      std::vector<double>::push_back[abi:ne200100](a3, &v14);
      v14 = 1.0 / *v11;
      std::vector<double>::push_back[abi:ne200100](a4, &v14);
      ++v9;
      v8 = *a2;
    }

    while (v9 < (a2[1] - *a2) >> 3);
  }

  v14 = -5.48612407e303;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>((a1 + 200), &v14);
  if (v12)
  {
    v13 = (v12 + 3);
  }

  else
  {
    v13 = (a1 + 480);
  }

  v14 = v13[1] / *v13;
  std::vector<double>::push_back[abi:ne200100](a3, &v14);
  v14 = 1.0 / *v13;
  std::vector<double>::push_back[abi:ne200100](a4, &v14);
}

void BayesianModel::v(BayesianModel *this, double a2)
{
  StdNormal_Cdf(a2);
  if (v3 >= 1.0e-300)
  {
    exp(-a2 * a2 * 0.5);
  }
}

void BayesianModel::w(BayesianModel *this, double a2)
{
  StdNormal_Cdf(a2);
  if (v3 >= 1.0e-300)
  {
    exp(-a2 * a2 * 0.5);
  }
}

uint64_t BayesianModel::PruneByMean(BayesianModel *this, double a2)
{
  pthread_rwlock_wrlock(&this->m_rwlock);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  next = this->m_features.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      if (fabs(next[4] / next[3]) < a2)
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v9, next + 2);
      }

      next = *next;
    }

    while (next);
    v5 = v9;
    v6 = v10;
    if (v9 != v10)
    {
      do
      {
        v8 = *v5;
        std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__erase_unique<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v8);
        ++v5;
      }

      while (v5 != v6);
      v5 = v9;
    }

    if (v5)
    {
      v10 = v5;
      operator delete(v5);
    }
  }

  return pthread_rwlock_unlock(&this->m_rwlock);
}

void sub_2285E0840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  pthread_rwlock_unlock(v11);
  _Unwind_Resume(a1);
}

uint64_t BayesianModel::PruneByVariance(BayesianModel *this, double a2)
{
  pthread_rwlock_wrlock(&this->m_rwlock);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  next = this->m_features.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      if (1.0 / next[3] >= a2)
      {
        std::vector<unsigned long long>::push_back[abi:ne200100](&v9, next + 2);
      }

      next = *next;
    }

    while (next);
    v5 = v9;
    v6 = v10;
    if (v9 != v10)
    {
      do
      {
        v8 = *v5;
        std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__erase_unique<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v8);
        ++v5;
      }

      while (v5 != v6);
      v5 = v9;
    }

    if (v5)
    {
      v10 = v5;
      operator delete(v5);
    }
  }

  return pthread_rwlock_unlock(&this->m_rwlock);
}

void sub_2285E0930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  pthread_rwlock_unlock(v11);
  _Unwind_Resume(a1);
}

uint64_t BayesianModel::Predict@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  pthread_rwlock_rdlock(a1);
  if (*(a1 + 240) - 1 == (a2[1] - *a2) >> 3)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    __p = 0;
    v18 = 0;
    v19 = 0;
    BayesianModel::GetGaussiansAndBias2(a1, a2, &v20, &__p);
    v15 = 0.0;
    __C = 0.0;
    vDSP_sveD(v20, 1, &__C, (v21 - v20) >> 3);
    vDSP_sveD(__p, 1, &v15, (v18 - __p) >> 3);
    v8 = *(a1 + 240);
    v9 = v15;
    StdNormal_Inv((a4 + 1.0) * 0.5);
    StdNormal_Cdf(1.0 / sqrt(v8) * (__C - v10 * sqrt(v9)));
    *(a3 + 24) = v11;
    StdNormal_Cdf(__C / sqrt(v15 + *(a1 + 240)));
    *(a3 + 16) = v12;
    v13 = v15;
    *a3 = __C;
    *(a3 + 8) = v13;
    *(a3 + 32) = 1;
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }

  else
  {
    *(a3 + 24) = 0x3FE0000000000000;
    *a3 = 0;
    *(a3 + 8) = xmmword_2286B28C0;
    *(a3 + 32) = 0;
  }

  return pthread_rwlock_unlock(a1);
}

void sub_2285E0AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  pthread_rwlock_unlock(v15);
  _Unwind_Resume(a1);
}

BOOL BayesianModel::Absorb(BayesianModel *this, const BayesianModel *a2)
{
  m_nFeaturesCount = this->m_nFeaturesCount;
  v3 = a2->m_nFeaturesCount;
  if (m_nFeaturesCount == v3)
  {
    pthread_rwlock_wrlock(&this->m_rwlock);
    pthread_rwlock_rdlock(&a2->m_rwlock);
    if (this != a2)
    {
      this->m_features.__table_.__max_load_factor_ = a2->m_features.__table_.__max_load_factor_;
      std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,Gaussian>,void *> *>>(&this->m_features.__table_.__bucket_list_.__ptr_, a2->m_features.__table_.__first_node_.__next_, 0);
    }

    pthread_rwlock_unlock(&a2->m_rwlock);
    pthread_rwlock_unlock(&this->m_rwlock);
  }

  return m_nFeaturesCount == v3;
}

void sub_2285E0B9C(_Unwind_Exception *a1)
{
  pthread_rwlock_unlock(v2);
  pthread_rwlock_unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t BayesianModel::IncreaseVariance(BayesianModel *this, double a2)
{
  pthread_rwlock_wrlock(&this->m_rwlock);
  for (i = this->m_features.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = i[3];
    if (1.0 / v5 < 1.0)
    {
      v6 = 1.0 / (1.0 / v5 + (1.0 - 1.0 / v5) * a2);
      v7 = v6 * (i[4] / v5);
      i[3] = v6;
      i[4] = v7;
    }
  }

  return pthread_rwlock_unlock(&this->m_rwlock);
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
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

void BayesianModel::GetSums(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  *a3 = 0.0;
  *a4 = 0.0;
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5)
  {
    v6 = v5 >> 4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      *a3 = *a3 + v4[1] / *v4;
      v7 = *v4;
      v4 += 2;
      *a4 = *a4 + 1.0 / v7;
      --v6;
    }

    while (v6);
  }
}

void BayesianModel::GetGaussiansAndBias(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  std::vector<Gaussian>::reserve(a3, ((a2[1] - *a2) >> 3) + 1);
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    do
    {
      v12 = *(v6 + 8 * v7);
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>((a1 + 200), &v12);
      if (v8)
      {
        v9 = v8 + 3;
      }

      else
      {
        v9 = (a1 + 480);
      }

      std::vector<Gaussian>::push_back[abi:ne200100](a3, v9);
      ++v7;
      v6 = *a2;
    }

    while (v7 < (a2[1] - *a2) >> 3);
  }

  v12 = 0xFF00000000000000;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>((a1 + 200), &v12);
  if (v10)
  {
    v11 = v10 + 3;
  }

  else
  {
    v11 = (a1 + 480);
  }

  std::vector<Gaussian>::push_back[abi:ne200100](a3, v11);
}

void *std::vector<Gaussian>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<Gaussian>>(result, a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<Gaussian>::push_back[abi:ne200100](uint64_t *a1, _OWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<Gaussian>>(a1, v10);
    }

    *(16 * v7) = *a2;
    v6 = 16 * v7 + 16;
    v11 = *a1;
    v12 = a1[1];
    v13 = 16 * v7 + *a1 - v12;
    if (*a1 != v12)
    {
      v14 = (16 * v7 + *a1 - v12);
      do
      {
        v15 = *v11++;
        *v14++ = v15;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v6;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[1] = v6;
}

Gaussian *BayesianModel::GetGaussian(BayesianModel *this, uint64_t a2)
{
  v5 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return (v3 + 3);
  }

  else
  {
    return &this->m_empty;
  }
}

{
  v5 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    return (v3 + 3);
  }

  else
  {
    return &this->m_empty;
  }
}

Gaussian *BayesianModel::GetGaussian(BayesianModel *this, unsigned __int8 a2, uint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFFLL | (a2 << 56);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v6);
  if (v4)
  {
    return (v4 + 3);
  }

  else
  {
    return &this->m_empty;
  }
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(result, a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
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

double BayesianModel::getMean(BayesianModel *this, unsigned __int8 a2, uint64_t a3)
{
  v7 = a3 & 0xFFFFFFFFFFFFFFLL | (a2 << 56);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v7);
  p_m_empty = (v4 + 3);
  if (!v4)
  {
    p_m_empty = &this->m_empty;
  }

  return p_m_empty->m_dPredicionMean / p_m_empty->m_dPrecision;
}

double BayesianModel::getVariance(BayesianModel *this, unsigned __int8 a2, uint64_t a3)
{
  v7 = a3 & 0xFFFFFFFFFFFFFFLL | (a2 << 56);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(&this->m_features.__table_.__bucket_list_.__ptr_, &v7);
  p_m_empty = (v4 + 3);
  if (!v4)
  {
    p_m_empty = &this->m_empty;
  }

  return 1.0 / p_m_empty->m_dPrecision;
}

double BayesianModel::getCalibration(BayesianModel *this, unsigned int a2)
{
  result = 0.0;
  if (a2 <= 9)
  {
    v3 = this->m_nCalibrationCurveCount[a2];
    if (v3)
    {
      return this->m_nCalibrationCurveTrue[a2] / v3;
    }
  }

  return result;
}

double BayesianModel::getCalibrationCount(BayesianModel *this, unsigned int a2)
{
  result = 0.0;
  if (a2 <= 9)
  {
    return this->m_nCalibrationCurveCount[a2];
  }

  return result;
}

uint64_t ReadStreamToCharacter(void *a1, uint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v4 = a1 + 4;
  if ((*(a1 + *(*a1 - 24) + 32) & 2) == 0)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = std::istream::read();
      if ((*(v10 + *(*v10 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (!v9)
      {
        v14 = 0;
        if (v8 < a4)
        {
          goto LABEL_18;
        }

        v13 = *(a2 + 23);
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a2 + 8);
        }

        if (v13 <= v8)
        {
          std::string::append(a2, &v14, 1uLL);
        }

        else
        {
LABEL_18:
          *std::string::at(a2, v8) = 0;
        }

        return 1;
      }

      __s = 0;
      if (v8 < a4)
      {
        goto LABEL_9;
      }

      v11 = *(a2 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a2 + 8);
      }

      if (v11 <= v8)
      {
        std::string::append(a2, &__s, 1uLL);
      }

      else
      {
LABEL_9:
        *std::string::at(a2, v8) = 0;
      }

      ++v8;
    }

    while ((*(v4 + *(*a1 - 24)) & 2) == 0);
  }

  return 0;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = *a2 ^ HIDWORD(*a2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 ^ HIDWORD(*a2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__rehash<true>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AABBC50](v13, a1);
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

  MEMORY[0x22AABBC60](v13);
  return a1;
}

void sub_2285E1CC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x22AABBC60](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2285E1CA4);
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
      std::string::basic_string[abi:ne200100](__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
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

void sub_2285E1E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<std::string>>::__construct_one_at_end[abi:ne200100]<std::vector<std::string> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::string>>::__emplace_back_slow_path<std::vector<std::string> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v14);
  return v8;
}

void sub_2285E203C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2285E20B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AABBD00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2285E2494(_Unwind_Exception *a1)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,Gaussian>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        *(v8 + 3) = *(a2 + 3);
        v10 = *v8;
        v11 = v9 ^ HIDWORD(v9);
        v8[1] = v11;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__node_insert_multi_prepare(a1, v11, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v13 = *v8;
        operator delete(v8);
        v8 = v13;
      }

      while (v13);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__emplace_multi<std::pair<unsigned long long const,Gaussian> const&>();
  }
}

void sub_2285E26A8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 ^ HIDWORD(*a2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 ^ HIDWORD(*a2);
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 ^ HIDWORD(*a2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 ^ HIDWORD(*a2);
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::__erase_unique<unsigned long long>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Gaussian>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Gaussian>,BayesianModel::SuperHasher,BayesianModel::SuperHasher,true>,std::allocator<std::__hash_value_type<unsigned long long,Gaussian>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Gaussian>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_2285E3560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2285E3980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_2285E3CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostream::~ostream();
  std::stringbuf::~stringbuf(v15 - 136);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::~stringbuf(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_2285E3EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostream::~ostream();
  std::stringbuf::~stringbuf(v15 - 136);
  _Unwind_Resume(a1);
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x22AABBD00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2285E40F8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void REExtractRules(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v34 = *MEMORY[0x277CBE658];
    v11 = 0x2785F8000uLL;
    v12 = 0x2785F8000uLL;
    do
    {
      v13 = 0;
      v33 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = *(v11 + 3512);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v7;
LABEL_10:
          [v16 addObject:v14];
          goto LABEL_11;
        }

        v17 = *(v12 + 2896);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v6;
          goto LABEL_10;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v19 = MEMORY[0x277CBEAD8];
        if (isKindOfClass)
        {
          [MEMORY[0x277CBEAD8] raise:v34 format:{@"Rule %@ cannot be used. Only filtering and ranking rules are allowed to be used by a section", v14}];
        }

        else
        {
          v20 = *(v12 + 2896);
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = *(v11 + 3512);
          v24 = objc_opt_class();
          NSStringFromClass(v24);
          v25 = v10;
          v26 = v11;
          v27 = v7;
          v28 = v5;
          v30 = v29 = v6;
          [v19 raise:v34 format:{@"Unexpected rule %@. Use %@ or %@ instead.", v14, v22, v30}];

          v6 = v29;
          v5 = v28;
          v7 = v27;
          v11 = v26;
          v10 = v25;
          v9 = v33;

          v12 = 0x2785F8000;
        }

LABEL_11:
        ++v13;
      }

      while (v9 != v13);
      v31 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v9 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2285E89D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  pthread_rwlock_unlock((v23 + 88));

  _Unwind_Resume(a1);
}

void sub_2285E8EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  MEMORY[0x22AABBC10](&a34);

  pthread_rwlock_unlock((v35 + 88));
  _Unwind_Resume(a1);
}

void sub_2285E931C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  pthread_rwlock_unlock((v25 + 88));

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

void sub_2285E9524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  pthread_rwlock_unlock((v16 + 88));

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

id REIntrinsicFeatureSet()
{
  if (REIntrinsicFeatureSet_onceToken != -1)
  {
    REIntrinsicFeatureSet_cold_1();
  }

  v1 = REIntrinsicFeatureSet_IntrinsicFeatures;

  return v1;
}

void __REIntrinsicFeatureSet_block_invoke()
{
  v5 = +[(REFeatureSet *)REMutableFeatureSet];
  v0 = +[REFeature forcedFeature];
  [v5 addFeature:v0];

  v1 = +[REFeature groupFeature];
  [v5 addFeature:v1];

  v2 = +[REFeature relevanceThresholdFeature];
  [v5 addFeature:v2];

  v3 = [v5 copy];
  v4 = REIntrinsicFeatureSet_IntrinsicFeatures;
  REIntrinsicFeatureSet_IntrinsicFeatures = v3;
}

void RERelevanceEngineDisplayDebugProbabilitiesDidUpdate()
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v0 = +[(RESingleton *)RERelevanceEngineDebugger];
  v1 = [v0 availableEngines];

  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 coordinator];
        v8 = [v7 elementRelevanceEngine];
        [v8 refreshContent];

        v9 = +[(RESingleton *)RERelevanceEngineDebugger];
        [v9 reloadDataSourceForEngine:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285EC9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void REHandlePredictedActionsUpdated(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:a3 object:a4 userInfo:a5];
  [a2 _requestPredictions:v6];
}

void sub_2285EFDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id soft_RESignificantLocationUpdateNotification()
{
  v0 = RelevanceEngineLibraryCore();
  if (v0)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v1 = getRESignificantLocationUpdateNotificationSymbolLoc_ptr;
    v8 = getRESignificantLocationUpdateNotificationSymbolLoc_ptr;
    if (!getRESignificantLocationUpdateNotificationSymbolLoc_ptr)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __getRESignificantLocationUpdateNotificationSymbolLoc_block_invoke;
      v4[3] = &unk_2785F9BC0;
      v4[4] = &v5;
      __getRESignificantLocationUpdateNotificationSymbolLoc_block_invoke(v4);
      v1 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v1)
    {
      v3 = [RELemmaEnumerator init];
      _Block_object_dispose(&v5, 8);
      _Unwind_Resume(v3);
    }

    v0 = *v1;
  }

  return v0;
}

void sub_2285F04FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2285F0C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2285F1554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t RelevanceEngineLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary)
  {
    RelevanceEngineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getRESignificantLocationUpdateNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RelevanceEngineLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "RESignificantLocationUpdateNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRESignificantLocationUpdateNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void REOptimizeFeatureSetGraph(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v16 = v1;
  v3 = [v1 allFeatures];
  v4 = [v3 mutableCopy];
  while (1)
  {

    if (![v4 count])
    {
      break;
    }

    v3 = [v4 lastObject];
    [v4 removeLastObject];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v3 _dependentFeatures];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v2 member:v10];
          v12 = v11;
          if (v11)
          {
            v13 = v11 == v10;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            if (!v11)
            {
              [v4 addObject:v10];
              [v2 addObject:v10];
            }
          }

          else
          {
            [v3 _replaceDependentFeature:v10 withFeature:v11];
            v14 = v12;

            v10 = v14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t RECrossFeatureValues(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __RECrossFeatureValues_block_invoke;
  v6[3] = &unk_2785FB7F0;
  v6[5] = &v8;
  v6[6] = a1;
  v6[4] = v7;
  [v3 enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);

  return v4;
}

void sub_2285F2950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void __RECrossFeatureValues_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  v6 = *(a1[6] + 8 * a3);
  if (REFeatureValueTypeForTaggedPointer(v6) == 1)
  {
    v7 = REIntegerValueForTaggedPointer(v6);
  }

  else
  {
    v8 = REFeatureValueForTaggedPointer(v6);
    v7 = [v8 _integralFeatureValue];
  }

  v9 = ~(-1 << v5);
  if (v5 > 0x3F)
  {
    v9 = -1;
  }

  *(*(a1[5] + 8) + 24) |= (v7 & v9) << *(*(a1[4] + 8) + 24);
  *(*(a1[4] + 8) + 24) += v5;
}

id RELogFileBaseDirectory()
{
  if (RELogFileBaseDirectory_onceToken != -1)
  {
    RELogFileBaseDirectory_cold_1();
  }

  if (RELogFileBaseDirectory_ValidDirectory == 1)
  {
    v0 = RELogFileBaseDirectory_BaseDirectory;
  }

  else
  {
    v0 = NSTemporaryDirectory();
  }

  return v0;
}

void __RELogFileBaseDirectory_block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  IsRelevanced = REProcessIsRelevanced();
  v1 = NSHomeDirectory();
  v2 = v1;
  if (IsRelevanced)
  {
    v3 = @"Library/Logs/CrashReporter/";
  }

  else
  {
    v3 = @"Library/Logs/CrashReporter/DiagnosticLogs/RelevanceEngine/";
  }

  v4 = [v1 stringByAppendingPathComponent:v3];
  v5 = RELogFileBaseDirectory_BaseDirectory;
  RELogFileBaseDirectory_BaseDirectory = v4;

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:RELogFileBaseDirectory_BaseDirectory];

  if (v7)
  {
    RELogFileBaseDirectory_ValidDirectory = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:RELogFileBaseDirectory_BaseDirectory];
    if (v8)
    {
      v9 = v8;
      getpid();
      v16 = [v9 fileSystemRepresentation];
      v10 = sandbox_check();

      if (!v10)
      {
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v17 = 0;
        v12 = [v11 createDirectoryAtPath:RELogFileBaseDirectory_BaseDirectory withIntermediateDirectories:1 attributes:0 error:&v17];
        v13 = v17;
        RELogFileBaseDirectory_ValidDirectory = v12;

        v14 = RELogForDomain(5);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v13;
          _os_log_impl(&dword_22859F000, v14, OS_LOG_TYPE_DEFAULT, "Unable to write file %@", buf, 0xCu);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id RENewLogFileNameForTask(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 components:252 fromDate:v5];

  v12 = v3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"RelevanceEngine-%@-", v3];
  if (v1)
  {
    v8 = [v1 stringByAppendingString:@"-"];
  }

  else
  {
    v8 = &stru_283B97458;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld-%02ld-%02ld-%02ld%02ld%02ld", objc_msgSend(v6, "year"), objc_msgSend(v6, "month"), objc_msgSend(v6, "day"), objc_msgSend(v6, "hour"), objc_msgSend(v6, "minute"), objc_msgSend(v6, "second")];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@.logs", v7, v8, v9];

  return v10;
}

id RENewLogFilePathForTask(void *a1)
{
  v1 = a1;
  v2 = RELogFileBaseDirectory();
  v3 = RENewLogFileNameForTask(v1);

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

void REStoreLogFileForTask(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = RENewLogFilePathForTask(v3);
  v9 = 0;
  v6 = [v4 writeToFile:v5 atomically:1 encoding:4 error:&v9];

  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = RELogForDomain(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      REStoreLogFileForTask_cold_1(v3, v7, v8);
    }
  }
}

void sub_2285F4554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285F4790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285F4978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285F52A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285F53E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285F6350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void sub_2285F6A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285F824C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2285F88EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _REPurgeIntentsImageCaches__49165157(int a1)
{
  if (a1)
  {
    dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_26);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_26);
  }
}

void sub_2285F8D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2285F92E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKSystemEventStreamsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_DKSystemEventStreamsClass_softClass;
  v7 = get_DKSystemEventStreamsClass_softClass;
  if (!get_DKSystemEventStreamsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_DKSystemEventStreamsClass_block_invoke;
    v3[3] = &unk_2785F9BC0;
    v3[4] = &v4;
    __get_DKSystemEventStreamsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2285F9A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_DKKnowledgeStorageDidInsertEventsNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr;
  v8 = get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr;
  if (!get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr)
  {
    v1 = CoreDuetLibrary();
    v6[3] = dlsym(v1, "_DKKnowledgeStorageDidInsertEventsNotification");
    get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [RELemmaEnumerator init];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id get_DKKnowledgeStorageDidTombstoneEventsNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = get_DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc_ptr;
  v8 = get_DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc_ptr;
  if (!get_DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc_ptr)
  {
    v1 = CoreDuetLibrary();
    v6[3] = dlsym(v1, "_DKKnowledgeStorageDidTombstoneEventsNotification");
    get_DKKnowledgeStorageDidTombstoneEventsNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [RELemmaEnumerator init];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

BOOL isFutureDate(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  v3 = [v1 date];
  v4 = [v2 compare:v3];

  v5 = v4 == 1;
  return v5;
}

void sub_2285FA298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2285FA85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2285FAD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2285FB1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreDuetLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreDuetLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreDuetLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreDuetLibrary()
{
  v0 = CoreDuetLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_2285FC538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *REDisplayStringForPropertyName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (REDisplayStringForPropertyName_onceToken != -1)
    {
      REDisplayStringForPropertyName_cold_1();
    }

    v2 = [REDisplayStringForPropertyName_CamelCaseRegex stringByReplacingMatchesInString:v1 options:0 range:0 withTemplate:{objc_msgSend(v1, "length"), @"$1 $2"}];
    v3 = [v2 localizedCapitalizedString];
  }

  else
  {
    v3 = &stru_283B97458;
  }

  return v3;
}

uint64_t __REDisplayStringForPropertyName_block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-z])([A-Z])" options:0 error:0];
  v1 = REDisplayStringForPropertyName_CamelCaseRegex;
  REDisplayStringForPropertyName_CamelCaseRegex = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2285FFC40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *REDescriptionStringFromRelevanceBehavior(uint64_t a1)
{
  v1 = @"min";
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"max";
  }

  else
  {
    return v1;
  }
}

uint64_t RETrainingSimulationIsCurrentlyActive()
{
  if (_fetchedInternalBuildOnceToken_1 != -1)
  {
    RETrainingSimulationIsCurrentlyActive_cold_1();
  }

  if (_isInternalDevice_1 != 1)
  {
    return 0;
  }

  v0 = +[(RESingleton *)RETrainingSimulationCoordinator];
  v1 = [v0 isActivelyTraining];

  return v1;
}

uint64_t __RETrainingSimulationIsCurrentlyActive_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_1 = result;
  return result;
}

void sub_228609F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22860A334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22860A5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = UIKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

RESectionPath *__getUIWindowClass_block_invoke(uint64_t a1)
{
  if (!UIKitLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("UIWindow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIWindowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getUIWindowClass_block_invoke_cold_1();
    return [(RESectionPath *)v4 sectionPathWithSectionName:v5 element:v6, v7];
  }

  return result;
}

id REStringForSectionPath(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 sectionName];
  v4 = [v2 element];

  v5 = [v1 stringWithFormat:@"%@ - %lu", v3, v4];

  return v5;
}

void sub_22860C1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t kTaggedFeatureCFEqual(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = REFeatureValueTypeForTaggedPointer(a1);
  if (v4 != REFeatureValueTypeForTaggedPointer(a2))
  {
    return 0;
  }

  v5 = REFeatureValueForTaggedPointer(a1);
  v6 = REFeatureValueForTaggedPointer(a2);
  v7 = [v5 isEqual:v6];

  return v7;
}

uint64_t kTaggedFeatureCFApplier(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    if ((a2[8] & 1) == 0)
    {
      return (*(*a2 + 16))();
    }
  }

  return result;
}

id REBundleConfiguraitonFromBundle(void *a1)
{
  v1 = a1;
  v2 = [v1 principalClass];
  if (v2)
  {
    if ([v2 isSubclassOfClass:objc_opt_class()])
    {
      v3 = objc_opt_new();
      goto LABEL_8;
    }
  }

  else
  {
    v4 = RELogForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__REDirectoryClassLoader__enumerateClassesWithBlock___block_invoke_cold_1(v1, v4);
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id REScriptParseOptionsValues(void *a1, void *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v3 push];
  v5 = [v3 currentToken];
  v6 = [v5 type];

  if (v6 != 32)
  {
LABEL_12:
    [v3 consume];
    v11 = [v4 copy];
    goto LABEL_15;
  }

  [v3 next];
  if (!REExpectTokenTypeInBuffer(v3, 6uLL, a2))
  {
LABEL_10:
    if (!REExpectTokenTypeInBuffer(v3, 0x21uLL, a2))
    {
      [v3 pop];
      goto LABEL_14;
    }

    [v3 next];
    goto LABEL_12;
  }

  while (1)
  {
    v7 = [v3 currentToken];
    [v3 next];
    v8 = [v3 currentToken];
    v9 = [v8 type];

    v10 = v7;
    if (v9 != 29)
    {
      goto LABEL_6;
    }

    [v3 next];
    if (!REExpectTokenTypeInBuffer(v3, 6uLL, a2))
    {
      break;
    }

    v10 = [v3 currentToken];

    [v3 next];
LABEL_6:
    [v4 setObject:v10 forKeyedSubscript:v7];
    if (!REExpectTokenTypeInBuffer(v3, 0x1BuLL, a2))
    {

      goto LABEL_10;
    }

    [v3 next];

    if (!REExpectTokenTypeInBuffer(v3, 6uLL, a2))
    {
      goto LABEL_10;
    }
  }

  [v3 pop];

LABEL_14:
  v11 = 0;
LABEL_15:

  return v11;
}

void sub_2286104BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228610A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    if (v15)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [v13 name];
      v22 = [v16 description];
      v19 = [v17 stringWithFormat:@"Unable to transformer %@: %@"];

      a12 = @"REErrorTokenKey";
      v20 = [v14 token];
      a13 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a13 forKeys:&a12 count:1];
      *v15 = RECreateErrorWithCodeMessageAndUseInfo(211, v19, v21);
    }

    objc_end_catch();
    JUMPOUT(0x228610A10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id REPropertyNameFromInternalAttribute(void *a1)
{
  v1 = a1;
  v2 = [v1 substringFromIndex:{objc_msgSend(@"$attrib-", "length")}];

  return v2;
}

id REUpNextSiriServerInterface()
{
  if (REUpNextSiriServerInterface_onceToken != -1)
  {
    REUpNextSiriServerInterface_cold_1();
  }

  v1 = REUpNextSiriServerInterface_interface;

  return v1;
}

uint64_t __REUpNextSiriServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BC4020];
  v1 = REUpNextSiriServerInterface_interface;
  REUpNextSiriServerInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id REUpNextSiriClientInterface()
{
  if (REUpNextSiriClientInterface_onceToken != -1)
  {
    REUpNextSiriClientInterface_cold_1();
  }

  v1 = REUpNextSiriClientInterface_interface;

  return v1;
}

uint64_t __REUpNextSiriClientInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283BE38C8];
  v1 = REUpNextSiriClientInterface_interface;
  REUpNextSiriClientInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_228614694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228614B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228614D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228614EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSLPRFDefaultAppDataProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CarouselPreferenceServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CarouselPreferenceServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2785FC388;
    v7 = 0;
    CarouselPreferenceServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CarouselPreferenceServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CSLPRFDefaultAppDataProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSLPRFDefaultAppDataProviderClass_block_invoke_cold_1();
  }

  getCSLPRFDefaultAppDataProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarouselPreferenceServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarouselPreferenceServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *RERelationDescription(uint64_t a1)
{
  if ((a1 + 2) > 6)
  {
    return 0;
  }

  else
  {
    return off_2785FC3F0[a1 + 2];
  }
}

__CFString *REStringFromFeatureType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2785FC428[a1];
  }
}

id RERootFeatureSetForFeatures(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    if ([v1 count] == 1)
    {
      v2 = [v1 allFeatures];
      v3 = [v2 firstObject];
      v4 = [v3 _rootFeatures];
    }

    else
    {
      v2 = +[(REFeatureSet *)REMutableFeatureSet];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v1;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v13 + 1) + 8 * i) _rootFeatures];
            [v2 unionFeatureSet:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v4 = [v2 copy];
    }
  }

  else
  {
    v4 = +[REFeatureSet featureSet];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_22861AB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22861B10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPAVRoutingControllerActiveSystemRouteDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPAVRoutingControllerActiveSystemRouteDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPAVRoutingControllerActiveSystemRouteDidChangeNotificationSymbolLoc_ptr;
  if (!getMPAVRoutingControllerActiveSystemRouteDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v6[3] = dlsym(v1, "MPAVRoutingControllerActiveSystemRouteDidChangeNotification");
    getMPAVRoutingControllerActiveSystemRouteDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = [RELemmaEnumerator init];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_22861BCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPRequestResponseControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPRequestResponseController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPRequestResponseControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPRequestResponseControllerClass_block_invoke_cold_1();
    return MediaPlayerLibrary();
  }

  return result;
}

uint64_t MediaPlayerLibrary()
{
  v0 = MediaPlayerLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t MediaPlayerLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = MediaPlayerLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMPAVRoutingControllerActiveSystemRouteDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPAVRoutingControllerActiveSystemRouteDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPAVRoutingControllerActiveSystemRouteDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getMPAVRoutingControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPAVRoutingController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPAVRoutingControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getMPAVRoutingControllerClass_block_invoke_cold_1();
    __getMPCPlayerRequestClass_block_invoke(v2);
  }
}

void __getMPCPlayerRequestClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPCPlayerRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPCPlayerRequestClass_block_invoke_cold_1();
    MediaPlaybackCoreLibrary();
  }
}

void MediaPlaybackCoreLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __MediaPlaybackCoreLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2785FC480;
    v4 = 0;
    MediaPlaybackCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!MediaPlaybackCoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __MediaPlaybackCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlaybackCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

REDataSourceCatalog *__getMPCPlayerPathClass_block_invoke(uint64_t a1)
{
  MediaPlaybackCoreLibrary();
  result = objc_getClass("MPCPlayerPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPCPlayerPathClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPCPlayerPathClass_block_invoke_cold_1();
    return [(REDataSourceCatalog *)v3 initWithDataSourceManager:v4, v5];
  }

  return result;
}

uint64_t REApplicationIsRestricted(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 applicationIsRestricted:v1];

  return v3;
}

uint64_t REApplicationIsRemoved(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 applicationIsRemoved:v1];

  return v3;
}

uint64_t REApplicationIsRemote(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 applicationIsRemote:v1];

  return v3;
}

id RELocalApplicationIdentifierForRemoteApplication(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 localApplicationForRemoteApplication:v1];

  return v3;
}

id RERemoteApplicationIdentifierForLocalApplication(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 remoteApplicationForLocalApplication:v1];

  return v3;
}

id REWatchKitExtensionForApplicationIdentifier(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 watchKitExtensionForApplication:v1];

  return v3;
}

uint64_t REApplicationGetType(void *a1)
{
  v1 = a1;
  v2 = +[REApplicationCache sharedInstance];
  v3 = [v2 typeForApplication:v1];

  return v3;
}

void normal_erf(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v1 = fabs(a1);
    if (v1 > 0.662912607)
    {
      exp(-(v1 * v1) * 0.5);
    }
  }
}

double scaled_box_muller(double a1, double a2, double a3)
{
  do
  {
    v6 = rand();
    v7 = (v6 + v6) / 2147483650.0 + -1.0;
    v8 = rand();
    v9 = (v8 + v8) / 2147483650.0 + -1.0;
    v10 = v9 * v9;
    v11 = v10 + v7 * v7;
  }

  while (v11 == 0.0 || v11 > 1.0);
  return a1 + v7 * sqrt(log(v10 + v7 * v7) * -2.0 / v11) * a3 * sqrt(a2);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22861F01C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_22861EFEC(a1);
}

id RESharedSerialDispatchQueue()
{
  if (RESharedSerialDispatchQueue_onceToken != -1)
  {
    RESharedSerialDispatchQueue_cold_1();
  }

  v1 = RESharedSerialDispatchQueue_queue;

  return v1;
}

void __RESharedSerialDispatchQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.relevanceengine.shared.utility.dispatch-queue", v2);
  v1 = RESharedSerialDispatchQueue_queue;
  RESharedSerialDispatchQueue_queue = v0;
}

BOOL REDeviceIsLocked()
{
  if (_RERegisterForLockedStatusChangeIfNecessary_onceToken != -1)
  {
    REDeviceIsLocked_cold_1();
  }

  v0 = MKBGetDeviceLockState();
  if (v0)
  {
    v1 = v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

BOOL REDeviceUnlockedSinceBoot()
{
  if (_RERegisterForLockedStatusChangeIfNecessary_onceToken != -1)
  {
    REDeviceIsLocked_cold_1();
  }

  return MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1;
}

void sub_2286207F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _REGetIsInternalBuild()
{
  if (_REGetIsInternalBuild_onceToken != -1)
  {
    _REGetIsInternalBuild_cold_1();
  }

  return _REGetIsInternalBuild_internal;
}

uint64_t _REGetIsInternalBuildDebug150813772()
{
  if (_REGetIsInternalBuild_onceToken != -1)
  {
    _REGetIsInternalBuild_cold_1();
  }

  return _REGetIsInternalBuild_internal;
}

void _REClearSupergreenUsedQuery()
{
  os_unfair_lock_lock(&lastQueryLock);
  v0 = lastQueryDate;
  lastQueryDate = 0;

  os_unfair_lock_unlock(&lastQueryLock);
}

uint64_t _REIsSupergreenUsedInLastInterval(double a1)
{
  v37 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&lastQueryLock);
  if (!_REIsSupergreenUsedInLastInterval_lastInUseCache)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = _REIsSupergreenUsedInLastInterval_lastInUseCache;
    _REIsSupergreenUsedInLastInterval_lastInUseCache = v2;
  }

  if (!lastQueryDate || ([lastQueryDate timeIntervalSinceNow], fabs(v4) > 3600.0))
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = lastQueryDate;
    lastQueryDate = v5;

    v7 = _REIsSupergreenUsedInLastInterval_lastInUseDate;
    _REIsSupergreenUsedInLastInterval_lastInUseDate = 0;

    v8 = @"com.apple.RelevanceEngine";
    v9 = @"SupergreenLastInUseDate";
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = [MEMORY[0x277D2BCF8] sharedInstance];
    v11 = [v10 getAllDevices];

    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v8 pairedDevice:*(*(&v28 + 1) + 8 * i)];
          v17 = [v16 objectForKey:v9];
          v18 = v17;
          if (v17 && (!_REIsSupergreenUsedInLastInterval_lastInUseDate || [v17 compare:?] == 1))
          {
            objc_storeStrong(&_REIsSupergreenUsedInLastInterval_lastInUseDate, v18);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v13);
    }

    [_REIsSupergreenUsedInLastInterval_lastInUseCache removeAllObjects];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:a1];
  v20 = [_REIsSupergreenUsedInLastInterval_lastInUseCache objectForKeyedSubscript:v19];

  if (v20)
  {
    v21 = [_REIsSupergreenUsedInLastInterval_lastInUseCache objectForKeyedSubscript:v19];
    v22 = [v21 BOOLValue];
  }

  else
  {
    if (_REIsSupergreenUsedInLastInterval_lastInUseDate)
    {
      [_REIsSupergreenUsedInLastInterval_lastInUseDate timeIntervalSinceNow];
      v22 = v23 >= 0.0 || -v23 < a1;
      v24 = RELogForDomain(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = @"NO";
        if (v22)
        {
          v25 = @"YES";
        }

        *buf = 134218242;
        v33 = a1;
        v34 = 2112;
        v35 = v25;
        _os_log_impl(&dword_22859F000, v24, OS_LOG_TYPE_DEFAULT, "_REIsSupergreenUsedInLastInterval(%f): %@", buf, 0x16u);
      }
    }

    else
    {
      v24 = RELogForDomain(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v33 = a1;
        _os_log_impl(&dword_22859F000, v24, OS_LOG_TYPE_DEFAULT, "_REIsSupergreenUsedInLastInterval(%f): NO (no date pref)", buf, 0xCu);
      }

      v22 = 0;
    }

    v21 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    [_REIsSupergreenUsedInLastInterval_lastInUseCache setObject:v21 forKeyedSubscript:v19];
  }

  os_unfair_lock_unlock(&lastQueryLock);
  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t REProcessIsRelevanced()
{
  if (REProcessIsRelevanced_onceToken != -1)
  {
    REProcessIsRelevanced_cold_1();
  }

  return REProcessIsRelevanced_IsRelevanced;
}

void __REProcessIsRelevanced_block_invoke()
{
  v0 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];

  if (!v0)
  {
    v1 = SecTaskCreateFromSelf(0);
    if (v1)
    {
      v2 = v1;
      error = 0;
      v3 = SecTaskCopyValueForEntitlement(v1, @"application-identifier", &error);
      v4 = v3;
      if (v3)
      {
        REProcessIsRelevanced_IsRelevanced = [v3 isEqualToString:@"com.apple.relevanceengine.relevanced"];
      }

      else
      {
        v6 = RELogForDomain(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __REProcessIsRelevanced_block_invoke_cold_1(&error, v6);
        }
      }

      CFRelease(v2);
    }

    else
    {
      v5 = RELogForDomain(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __REProcessIsRelevanced_block_invoke_cold_2(v5);
      }
    }
  }
}

id REBuildVersion()
{
  if (REBuildVersion_onceToken != -1)
  {
    REBuildVersion_cold_1();
  }

  v1 = REBuildVersion_BuildVersion;

  return v1;
}

uint64_t __REBuildVersion_block_invoke()
{
  v0 = MGGetStringAnswer();
  v1 = REBuildVersion_BuildVersion;
  REBuildVersion_BuildVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id REUpNextDemoUserDefaults()
{
  if (REUpNextDemoUserDefaults_onceToken != -1)
  {
    REUpNextDemoUserDefaults_cold_1();
  }

  v1 = REUpNextDemoUserDefaults_defaults;

  return v1;
}

uint64_t __REUpNextDemoUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit.face"];
  v1 = REUpNextDemoUserDefaults_defaults;
  REUpNextDemoUserDefaults_defaults = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void RERaiseInternalException(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = a1;
  v13 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v14 = RELogForDomain(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    RERaiseInternalException_cold_1(v13);
  }

  RESubmitError(v12, v13);
}

void _REGenerateSimulatedCrash(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v11 = a2;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:&a9];
  v13 = RELogForDomain(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    _REGenerateSimulatedCrash_cold_1(v12);
  }

  v14 = getpid();
  v15 = v12;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v16 = getSimulateCrashSymbolLoc_ptr;
  v22 = getSimulateCrashSymbolLoc_ptr;
  if (!getSimulateCrashSymbolLoc_ptr)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getSimulateCrashSymbolLoc_block_invoke;
    v18[3] = &unk_2785F9BC0;
    v18[4] = &v19;
    __getSimulateCrashSymbolLoc_block_invoke(v18);
    v16 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v16)
  {
    v17 = [RELemmaEnumerator init];
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v17);
  }

  v16(v14, 195936478, v15);
}

uint64_t REIsCurrentLocaleCJK()
{
  if (REIsCurrentLocaleCJK_onceToken != -1)
  {
    REIsCurrentLocaleCJK_cold_1();
  }

  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x277CBE6C8]];

  v2 = [REIsCurrentLocaleCJK__cjkSet containsObject:v1];
  return v2;
}

uint64_t __REIsCurrentLocaleCJK_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"zh", @"ja", @"ko", 0}];
  v1 = REIsCurrentLocaleCJK__cjkSet;
  REIsCurrentLocaleCJK__cjkSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t REShowRecentDeveloperDonations()
{
  v6 = *MEMORY[0x277D85DE8];
  if (REShowRecentDeveloperDonations_onceToken != -1)
  {
    REShowRecentDeveloperDonations_cold_1();
  }

  [REShowRecentDeveloperDonations_defaultAccessLock lock];
  if ((REShowRecentDeveloperDonations___needsUpdate & 1) == 0)
  {
    REShowRecentDeveloperDonations___flag = CFPreferencesGetAppBooleanValue(@"displayRecentDonations", @"com.apple.duetexpertd", 0) != 0;
    v0 = RELogForDomain(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      if (REShowRecentDeveloperDonations___flag)
      {
        v1 = @"YES";
      }

      else
      {
        v1 = @"NO";
      }

      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_22859F000, v0, OS_LOG_TYPE_DEFAULT, "Is the Display Recent Donations switch on? : %@", &v4, 0xCu);
    }

    REShowRecentDeveloperDonations___needsUpdate = 1;
  }

  [REShowRecentDeveloperDonations_defaultAccessLock unlock];
  result = REShowRecentDeveloperDonations___flag;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __REShowRecentDeveloperDonations_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = REShowRecentDeveloperDonations_defaultAccessLock;
  REShowRecentDeveloperDonations_defaultAccessLock = v0;

  v2 = MEMORY[0x277D85CD0];

  return notify_register_dispatch("com.apple.duetexpertd.defaultsChanged", &REShowRecentDeveloperDonations_notifyToken, v2, &__block_literal_global_92);
}

void __REShowRecentDeveloperDonations_block_invoke_2()
{
  [REShowRecentDeveloperDonations_defaultAccessLock lock];
  REShowRecentDeveloperDonations___needsUpdate = 0;
  [REShowRecentDeveloperDonations_defaultAccessLock unlock];
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"REShowRecentDeveloperDonationsChangedNotification" object:0];
}

id REBundle()
{
  if (REBundle_onceToken != -1)
  {
    REBundle_cold_1();
  }

  v1 = REBundle_Bundle;

  return v1;
}

uint64_t __REBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = REBundle_Bundle;
  REBundle_Bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void *__getSimulateCrashSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2785FC5D8;
    v8 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
    if (CrashReporterSupportLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSimulateCrashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2286260E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228626FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSLPRFDefaultAppDataProviderClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CarouselPreferenceServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CarouselPreferenceServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2785FC7A8;
    v7 = 0;
    CarouselPreferenceServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (CarouselPreferenceServicesLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CSLPRFDefaultAppDataProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSLPRFDefaultAppDataProviderClass_block_invoke_cold_1();
  }

  getCSLPRFDefaultAppDataProviderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CarouselPreferenceServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarouselPreferenceServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Int64_SafeTimeIntervalToNSEC(double a1)
{
  if (a1 <= 9223372040.0)
  {
    return (a1 * 1000000000.0);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

unint64_t UInt64_SafeTimeIntervalToNSEC(double a1)
{
  if (a1 > 1.84467441e10)
  {
    return -1;
  }

  else
  {
    return (a1 * 1000000000.0);
  }
}

void sub_228627C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228629848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22862A9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ElementIdentifierByRemovingNamespacedIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = [v1 identifier];

  if (isKindOfClass)
  {
    v5 = [v4 identifier];

    v4 = v5;
  }

  return v4;
}

void sub_22862C278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak(&a44);
  objc_destroyWeak((v44 - 256));
  _Unwind_Resume(a1);
}

void sub_22862DA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22862DC30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22862DE1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __REGetShowAllElements_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_3 = result;
  return result;
}

id soft__REEngineDefaults()
{
  if (RelevanceEngineLibraryCore_0())
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2050000000;
    v0 = get_REEngineDefaultsClass_softClass;
    v7 = get_REEngineDefaultsClass_softClass;
    if (!get_REEngineDefaultsClass_softClass)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __get_REEngineDefaultsClass_block_invoke;
      v3[3] = &unk_2785F9BC0;
      v3[4] = &v4;
      __get_REEngineDefaultsClass_block_invoke(v3);
      v0 = v5[3];
    }

    v1 = v0;
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_22862E644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RE_Cached_updateValue__ShowAllElements()
{
  os_unfair_lock_lock(&__RE_Cached_lock__ShowAllElements);
  __RE_Cached_hasValue__ShowAllElements = 0;
  os_unfair_lock_unlock(&__RE_Cached_lock__ShowAllElements);

  RERelevanceEngineDisplayDebugProbabilitiesDidUpdate();
}

uint64_t RelevanceEngineLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_0)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22862F2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id REStartOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 startOfDayForDate:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id REStartOfNextDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 dateByAddingUnit:16 value:1 toDate:v2 options:0];

    v5 = [v3 startOfDayForDate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id REEndOfDayForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 components:30 fromDate:v2];

    [v4 setHour:23];
    [v4 setMinute:59];
    [v4 setSecond:59];
    [v4 setNanosecond:99999999];
    v5 = [v3 dateFromComponents:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id RERoundDateDownToNearestMinute(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CBEA80];
    v2 = a1;
    v3 = [v1 currentCalendar];
    v4 = [v3 components:126 fromDate:v2];

    v5 = [v3 dateFromComponents:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id REEndOfDayAfterNumberOfDaysForDate(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CBEA80];
    v4 = a1;
    v5 = [v3 currentCalendar];
    v6 = objc_opt_new();
    [v6 setDay:a2];
    v7 = [v5 dateByAddingComponents:v6 toDate:v4 options:0];

    v8 = REEndOfDayForDate(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id REDemoPivotDate()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = REStartOfDayForDate(v0);
  v2 = [v1 dateByAddingTimeInterval:64800.0];

  return v2;
}

id REDemoDateForIdentifier(void *a1, uint64_t a2)
{
  v3 = REDemoDateForIdentifier_onceToken;
  v4 = a1;
  if (v3 != -1)
  {
    REDemoDateForIdentifier_cold_1();
  }

  v5 = [REDemoDateForIdentifier_defaults integerForKey:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  v7 = REDemoPivotDate();
  v8 = [v7 dateByAddingTimeInterval:v6 * 60.0];

  return v8;
}

uint64_t __REDemoDateForIdentifier_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.NanoTimeKit.face"];
  v1 = REDemoDateForIdentifier_defaults;
  REDemoDateForIdentifier_defaults = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

REForcedRelevanceProvider *REAbsoluteRelevanceProviderForDate(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = REStartOfDayForDate(v2);
  v5 = REEndOfDayForDate(v2);
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  if ([v6 containsDate:v1])
  {
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v7 components:96 fromDate:v1];
    v9 = [v8 minute];
    v10 = 1.0 - ((v9 + [v8 hour] * 60.0) / 1440.0 * 0.9 + 0.1);
    v11 = [REForcedRelevanceProvider alloc];
    *&v12 = v10;
    v13 = [(REForcedRelevanceProvider *)v11 initWithForcedRelevance:v12];
  }

  else
  {
    v13 = [[REForcedRelevanceProvider alloc] initWithForcedRelevance:0.0];
  }

  return v13;
}

id REDemoElementsFromElements(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = __REDemoElementsFromElements_block_invoke(v4, *(*(&v12 + 1) + 8 * v7));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = v4;
    }

    while (v4);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

REElement *__REDemoElementsFromElements_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [v2 relevanceProviders];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = [v4 interval];
  v9 = [v8 startDate];

  if (v9)
  {
    v10 = REAbsoluteRelevanceProviderForDate(v9);
    v11 = [REElement alloc];
    v12 = [v2 identifier];
    v13 = [v2 content];
    v14 = [v2 action];
    v23 = v10;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    v16 = -[REElement initWithIdentifier:content:action:relevanceProviders:privacyBehavior:](v11, "initWithIdentifier:content:action:relevanceProviders:privacyBehavior:", v12, v13, v14, v15, [v2 privacyBehavior]);
  }

  else
  {
    v16 = v2;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id REDateByRemovingSubseconds(void *a1)
{
  if (a1)
  {
    [a1 timeIntervalSinceReferenceDate];
    a1 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:floor(v2)];
    v1 = vars8;
  }

  return a1;
}

id REDateByCeilingSubseconds(void *a1)
{
  if (a1)
  {
    [a1 timeIntervalSinceReferenceDate];
    a1 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:ceil(v2)];
    v1 = vars8;
  }

  return a1;
}

uint64_t REDateOccursToday(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  v3 = [v1 date];
  v4 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = REStartOfDayForDate(v3);
  v6 = REEndOfDayForDate(v3);
  v7 = [v4 initWithStartDate:v5 endDate:v6];

  v8 = [v7 containsDate:v2];
  return v8;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const char *RELogNameForDomain(uint64_t a1)
{
  if ((a1 - 1) > 0x15)
  {
    return "default";
  }

  else
  {
    return off_2785FCAD0[a1 - 1];
  }
}

id RELogForDomain(uint64_t a1)
{
  if (RELogForDomain_onceToken != -1)
  {
    RELogForDomain_cold_1();
  }

  v2 = RELogForDomain_LogForDomains;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __RELogForDomain_block_invoke()
{
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:23];
  for (i = 0; i != 23; ++i)
  {
    v1 = RELogNameForDomain(i);
    v2 = os_log_create("com.apple.RelevanceEngine", v1);
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v6 setObject:v2 forKeyedSubscript:v3];
  }

  v4 = [v6 copy];
  v5 = RELogForDomain_LogForDomains;
  RELogForDomain_LogForDomains = v4;
}

id REElementsLoggableString(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) identifier];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = REElementsIdsLoggableString(v2);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id REElementsIdsLoggableString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendString:@"["];
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndex:v3];
      [v2 appendString:v4];

      if (++v3 < [v1 count])
      {
        [v2 appendString:{@", "}];
      }
    }

    while (v3 < [v1 count]);
  }

  [v2 appendString:@"]"];

  return v2;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228637160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228638A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __REGetDisplayDebugProbabilities_block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_6 = result;
  return result;
}

uint64_t __RE_Cached_Get__DisplayDebugProbabilities(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____RE_Cached_Get__DisplayDebugProbabilities_block_invoke;
  block[3] = &unk_2785F9AB8;
  v2 = v1;
  v20 = v2;
  if (__RE_Cached_Get__DisplayDebugProbabilities_onceToken != -1)
  {
    dispatch_once(&__RE_Cached_Get__DisplayDebugProbabilities_onceToken, block);
  }

  os_unfair_lock_lock(&__RE_Cached_lock__DisplayDebugProbabilities);
  if ((__RE_Cached_hasValue__DisplayDebugProbabilities & 1) == 0)
  {
    v18 = 0;
    v3 = v2;
    if (!v3)
    {
      goto LABEL_22;
    }

    if (RelevanceEngineLibraryCore_1() && ([soft__REEngineDefaults_0() defaultsForEngine:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [v4 _BOOLValueForKey:@"DisplayDebugProbabilities" set:&v18];
      v7 = v18 & v6;
      v8 = RELogForDomain(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key DisplayDebugProbabilities: %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = 0;
    }

    if ((v18 & 1) == 0)
    {
LABEL_22:
      if (RelevanceEngineLibraryCore_1())
      {
        v10 = [soft__REEngineDefaults_0() globalDefaults];
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 _BOOLValueForKey:@"DisplayDebugProbabilities" set:&v18];
      v12 = v18 & v11;
      v13 = RELogForDomain(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithBool:v12 & 1];
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_22859F000, v13, OS_LOG_TYPE_DEFAULT, "Prefs reading value for key DisplayDebugProbabilities: %@", buf, 0xCu);
      }

      v7 = v18 & v12;
    }

    __RE_Cached__DisplayDebugProbabilities = v7 & 1;
    __RE_Cached_hasValue__DisplayDebugProbabilities = 1;
  }

  os_unfair_lock_unlock(&__RE_Cached_lock__DisplayDebugProbabilities);
  v15 = __RE_Cached__DisplayDebugProbabilities;

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}