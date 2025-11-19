void sub_26F4EFA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  __p = (v35 - 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
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

void TLCompositeTransliterator::performOrthographyCheck(uint64_t a1, __int128 **a2)
{
  if (*(a1 + 40))
  {
    v3 = *a2;
    v4 = *a2;
    while (v4 != a2[1])
    {
      CFStringFromString = createCFStringFromString(v4 + 24);
      if ((*(**(a1 + 40) + 16))(*(a1 + 40), CFStringFromString, 0, 0))
      {
        v4 += 80;
        if (!CFStringFromString)
        {
          continue;
        }
      }

      else
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(&v10, (v4 + 80), a2[1], v4);
        v8 = v7;
        v9 = a2[1];
        if (v9 != v7)
        {
          do
          {
            v9 -= 80;
            std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v9);
          }

          while (v9 != v8);
        }

        a2[1] = v8;
        if (!CFStringFromString)
        {
          continue;
        }
      }

      CFRelease(CFStringFromString);
    }
  }
}

void TLCompositeTransliterator::assignLanguageModelScoreToCandidates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    if (*a2 != *(a2 + 8))
    {
      Value = CFLocaleGetValue(*(a1 + 56), *MEMORY[0x277CBEED0]);
      if (!CFEqual(Value, @"ar"))
      {
        v8 = *a2;
        v7 = *(a2 + 8);
        if (*a2 != v7)
        {
          v9 = v8 + 3;
          do
          {
            *(v9 + 3) = (***(a1 + 24))(*(a1 + 24), v9, a3);
            v10 = (v9 + 7);
            v9 += 10;
          }

          while (v10 != v7);
          v8 = *a2;
          v7 = *(a2 + 8);
        }

        v17 = a1;
        if (v7 - v8 < 1)
        {
          v16 = 0;
          v12 = 0;
        }

        else
        {
          v11 = MEMORY[0x277D826F0];
          v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4);
          while (1)
          {
            v13 = operator new(80 * v12, v11);
            if (v13)
            {
              break;
            }

            v14 = v12 >> 1;
            v15 = v12 > 1;
            v12 >>= 1;
            if (!v15)
            {
              v16 = 0;
              v12 = v14;
              goto LABEL_15;
            }
          }

          v16 = v13;
        }

LABEL_15:
        std::__stable_sort<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(v8, v7, &v17, 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4), v16, v12);
        if (v16)
        {
          operator delete(v16);
        }
      }
    }
  }
}

void sub_26F4EFE10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL TLCompositeTransliterator::containsInvalidInputChars(uint64_t a1, char *a2)
{
  Value = CFLocaleGetValue(*(a1 + 56), *MEMORY[0x277CBEED0]);
  v4 = CFEqual(Value, @"ar");
  v5 = a2[23];
  v6 = v5;
  v7 = *a2;
  v8 = *(a2 + 1);
  if ((v5 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v5 & 0x80u) == 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (v10)
  {
    v11 = v4;
    v12 = &v9[v10];
    v13 = MEMORY[0x277D85DE0];
    do
    {
      v14 = *v9;
      if (v11)
      {
        if ((v14 & 0x80000000) != 0)
        {
          v15 = __maskrune(*v9, 0x500uLL);
        }

        else
        {
          v15 = *(v13 + 4 * v14 + 60) & 0x500;
        }

        if (v14 != 39 && v15 == 0)
        {
          goto LABEL_23;
        }
      }

      else if ((v14 & 0x80000000) != 0)
      {
        if (!__maskrune(*v9, 0x100uLL))
        {
          goto LABEL_23;
        }
      }

      else if ((*(v13 + 4 * v14 + 60) & 0x100) == 0)
      {
        goto LABEL_23;
      }

      ++v9;
      --v10;
    }

    while (v10);
    v9 = v12;
LABEL_23:
    v5 = a2[23];
    v7 = *a2;
    v8 = *(a2 + 1);
    v6 = a2[23];
  }

  if (v6 < 0)
  {
    v5 = v8;
  }

  else
  {
    v7 = a2;
  }

  return v9 != &v7[v5];
}

void TLCompositeTransliterator::addEasternArabicNumberTransliterations(uint64_t *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[23];
  if (v6 < 0)
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = *a2;
      goto LABEL_6;
    }
  }

  else if (a2[23])
  {
    v7 = a2;
LABEL_6:
    while (1)
    {
      v8 = *v7;
      if (v8 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x400) == 0)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        v9 = 0;
        goto LABEL_11;
      }
    }
  }

  v9 = 1;
LABEL_11:
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [v10 languageCode];

  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [v12 numberingSystem];

  if ([v11 isEqualToString:@"ar"])
  {
    v14 = [v13 isEqualToString:@"arab"] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  if (((v9 | v14) & 1) == 0)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"ar@numbers=arab"];
    [v15 setLocale:v16];

    [v15 setNumberStyle:1];
    v17 = MEMORY[0x277CCABB0];
    if (a2[23] >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
    v20 = [v17 numberWithInteger:{objc_msgSend(v19, "integerValue")}];

    [v15 setUsesGroupingSeparator:0];
    v21 = [v15 stringFromNumber:v20];
    std::string::basic_string[abi:ne200100]<0>(__p, [v21 UTF8String]);
    if (SHIBYTE(v50) < 0)
    {
      if (__p[1] != 2)
      {
        goto LABEL_24;
      }

      v22 = __p[0];
    }

    else
    {
      if (SHIBYTE(v50) != 2)
      {
        goto LABEL_24;
      }

      v22 = __p;
    }

    if (*v22 == 41177)
    {
      v30 = a2[23];
      if ((v30 & 0x8000000000000000) != 0)
      {
        if (*(a2 + 1) < 2uLL)
        {
          goto LABEL_63;
        }

        v31 = *a2;
      }

      else
      {
        v31 = a2;
        if (v30 <= 1)
        {
          goto LABEL_63;
        }
      }

      if (*v31 == 48)
      {
        v32 = *(a2 + 1);
        if ((v30 & 0x80000000) == 0)
        {
          v32 = a2[23];
        }

        if (v32 >= 2)
        {
          v33 = v30 >> 63;
          v34 = 1;
          do
          {
            if (v33)
            {
              v35 = *a2;
            }

            else
            {
              v35 = a2;
            }

            if (v35[v34] != 48)
            {
              break;
            }

            std::operator+<char>();
            if (SHIBYTE(v50) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *v43;
            v50 = v44;
            ++v34;
            v36 = a2[23];
            v33 = v36 >> 63;
            if ((v36 & 0x80000000) != 0)
            {
              v36 = *(a2 + 1);
            }
          }

          while (v34 < v36);
        }
      }

LABEL_63:
      [v15 setUsesGroupingSeparator:1];
      v37 = [v15 stringFromNumber:v20];
      std::string::basic_string[abi:ne200100]<0>(v47, [v37 UTF8String]);
      v38 = a2[23];
      if ((v38 & 0x80u) != 0)
      {
        v38 = *(a2 + 1);
      }

      if (v38 < 2)
      {
        v42 = *a1;
        if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) < 2)
        {
          TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v43, a2, __p, 4, 0, 0.0, 0.0);
          std::vector<TLCompositeTransliteratorCandidate>::insert(a1, v42, v43);
        }

        else
        {
          TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v43, a2, __p, 4, 0, 0.0, 0.0);
          std::vector<TLCompositeTransliteratorCandidate>::insert(a1, v42 + 80, v43);
        }
      }

      else
      {
        v39 = *a1;
        TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v43, a2, __p, 4, 0, 0.0, 0.0);
        std::vector<TLCompositeTransliteratorCandidate>::insert(a1, v39, v43);
        if (v46 < 0)
        {
          operator delete(v45);
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43[0]);
        }

        v40 = a2[23];
        if ((v40 & 0x80u) != 0)
        {
          v40 = *(a2 + 1);
        }

        if (v40 < 5)
        {
          goto LABEL_81;
        }

        v41 = *a1;
        TLCompositeTransliteratorCandidate::TLCompositeTransliteratorCandidate(v43, a2, v47, 4, 0, 0.0, 0.0);
        std::vector<TLCompositeTransliteratorCandidate>::insert(a1, v41 + 80, v43);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }

LABEL_81:
      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_86;
    }

LABEL_24:
    v23 = a2[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      if (*(a2 + 1) < 2uLL)
      {
        goto LABEL_63;
      }

      v24 = *a2;
    }

    else
    {
      v24 = a2;
      if (v23 <= 1)
      {
        goto LABEL_63;
      }
    }

    if (*v24 == 48)
    {
      v25 = *(a2 + 1);
      if ((v23 & 0x80000000) == 0)
      {
        v25 = a2[23];
      }

      if (v25)
      {
        v26 = 0;
        v27 = v23 >> 63;
        do
        {
          if (v27)
          {
            v28 = *a2;
          }

          else
          {
            v28 = a2;
          }

          if (v28[v26] != 48)
          {
            break;
          }

          std::operator+<char>();
          if (SHIBYTE(v50) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *v43;
          v50 = v44;
          ++v26;
          v29 = a2[23];
          v27 = v29 >> 63;
          if ((v29 & 0x80000000) != 0)
          {
            v29 = *(a2 + 1);
          }
        }

        while (v26 < v29);
      }
    }

    goto LABEL_63;
  }

LABEL_86:
  *a3 = *a1;
  *(a3 + 16) = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
}

void sub_26F4F04D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  TLCompositeTransliteratorCandidate::~TLCompositeTransliteratorCandidate(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 4) + 1;
    if (v12 > 0x333333333333333)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v11) >> 4);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v14 >= 0x199999999999999)
    {
      v16 = 0x333333333333333;
    }

    else
    {
      v16 = v15;
    }

    v25 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v16);
    }

    v21 = 0;
    v22 = 16 * (v13 >> 4);
    v23 = v22;
    v24 = 0;
    std::__split_buffer<TLCompositeTransliteratorCandidate>::emplace_back<TLCompositeTransliteratorCandidate>(&v21, a3);
    v4 = std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, &v21, v4);
    std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(&v21);
  }

  else if (a2 == v6)
  {
    v17 = *a3;
    *(v6 + 16) = *(a3 + 16);
    *v6 = v17;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v18 = *(a3 + 24);
    *(v6 + 40) = *(a3 + 40);
    *(v6 + 24) = v18;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 24) = 0;
    v19 = *(a3 + 48);
    *(v6 + 57) = *(a3 + 57);
    *(v6 + 48) = v19;
    a1[1] = v6 + 80;
  }

  else
  {
    std::vector<TLCompositeTransliteratorCandidate>::__move_range(a1, a2, v6, a2 + 80);
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v8 = *a3;
    *(v4 + 16) = *(a3 + 16);
    *v4 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
    if (*(v4 + 47) < 0)
    {
      operator delete(*(v4 + 24));
    }

    v9 = *(a3 + 24);
    *(v4 + 40) = *(a3 + 40);
    *(v4 + 24) = v9;
    *(a3 + 47) = 0;
    *(a3 + 24) = 0;
    v10 = *(a3 + 48);
    *(v4 + 57) = *(a3 + 57);
    *(v4 + 48) = v10;
  }

  return v4;
}

void sub_26F4F0784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TLCompositeTransliteratorCandidate::~TLCompositeTransliteratorCandidate(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t TLCompositeTransliterator::containsInvalidDigitsForArabic(uint64_t a1, unsigned __int8 *a2)
{
  Value = CFLocaleGetValue(*(a1 + 56), *MEMORY[0x277CBEED0]);
  result = CFEqual(Value, @"ar");
  if (result)
  {
    v5 = a2[23];
    v6 = v5 < 0;
    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6)
    {
      v8 = *(a2 + 1);
    }

    else
    {
      v8 = a2[23];
    }

    v9 = &v7[v8];
    if (v8)
    {
      while (1)
      {
        v10 = *v7;
        v11 = v10 > 0x34;
        v12 = (1 << v10) & 0x13000000000000;
        if (!v11 && v12 != 0)
        {
          break;
        }

        ++v7;
        if (!--v8)
        {
          v7 = v9;
          return v7 != v9;
        }
      }
    }

    return v7 != v9;
  }

  return result;
}

void TLCompositeTransliterator::getTransliterationCandidates(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  TLOSSignPostgetTransliterationCandidates::TLOSSignPostgetTransliterationCandidates(&v42);
  v9 = TLCompositeTransliterator::containsInvalidInputChars(a1, a3);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if (v9)
  {
    goto LABEL_58;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *a3, *(a3 + 8));
  }

  else
  {
    v41 = *a3;
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = (&v41 + HIBYTE(v41.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v10 = (v41.__r_.__value_.__r.__words[0] + v41.__r_.__value_.__l.__size_);
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v41;
  }

  else
  {
    v11 = v41.__r_.__value_.__r.__words[0];
  }

  while (v11 != v10)
  {
    v11->__r_.__value_.__s.__data_[0] = __tolower(v11->__r_.__value_.__s.__data_[0]);
    v11 = (v11 + 1);
  }

  v39 = 0uLL;
  locale = 0;
  if (*a1 && (TLCompositeTransliterator::containsInvalidDigitsForArabic(a1, a3) & 1) == 0)
  {
    TLCompositeTransliteratorSeq2Seq::seq2SeqCandidatesForInput(*a1, &v41, &v45);
    std::vector<TLCompositeTransliteratorCandidate>::__vdeallocate(&v39);
    v39 = v45;
    locale = v46[0].__locale_;
    v46[0].__locale_ = 0;
    v45 = 0uLL;
    __dst = &v45;
    std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__dst);
  }

  TLCompositeTransliteratorException::exceptionCandidatesForInput(*(a1 + 8), a3, &v37);
  v12 = v37;
  v13 = v38;
  if (v37 == v38)
  {
    TLCompositeTransliteratorException::exceptionCandidatesForInput(*(a1 + 8), &v41, &v45);
    std::vector<TLCompositeTransliteratorCandidate>::__assign_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(&v37, v45, *(&v45 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v45 + 1) - v45) >> 4));
    __dst = &v45;
    std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__dst);
    v12 = v37;
    v13 = v38;
  }

  if (v12 == v13)
  {
    TLCompositeTransliteratorLexicon::lexiconCandidatesForInput(*(a1 + 16), &v41, &v45);
    if (*(&v45 + 1) == v45)
    {
      if (&v39 != a5)
      {
        std::vector<TLCompositeTransliteratorCandidate>::__assign_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(a5, v39, *(&v39 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v39 + 1) - v39) >> 4));
      }
    }

    else
    {
      if (&v45 != a5)
      {
        std::vector<TLCompositeTransliteratorCandidate>::__assign_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(a5, v45, *(&v45 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v45 + 1) - v45) >> 4));
      }

      v16 = *(&v39 + 1);
      for (i = v39; i != v16; i += 5)
      {
        if ((candidateSurfaceFormPresentInVector(i, a5) & 1) == 0)
        {
          std::vector<TLCompositeTransliteratorCandidate>::push_back[abi:ne200100](a5, i);
        }
      }
    }

    TLCompositeTransliterator::assignLanguageModelScoreToCandidates(a1, a5, a2);
    __dst = &v45;
    std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__dst);
  }

  else
  {
    if (&v37 != a5)
    {
      std::vector<TLCompositeTransliteratorCandidate>::__assign_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(a5, v12, v13, 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 4));
    }

    if (v39 != *(&v39 + 1))
    {
      TLCompositeTransliterator::assignLanguageModelScoreToCandidates(a1, &v39, a2);
      v14 = *(&v39 + 1);
      for (j = v39; j != v14; j += 5)
      {
        if ((candidateSurfaceFormPresentInVector(j, a5) & 1) == 0)
        {
          std::vector<TLCompositeTransliteratorCandidate>::push_back[abi:ne200100](a5, j);
        }
      }
    }
  }

  TLCompositeTransliterator::performOrthographyCheck(a1, a5);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v45);
  v19 = *a5;
  v18 = *(a5 + 8);
  if (*a5 != v18)
  {
    v20 = MEMORY[0x277D82680];
    do
    {
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "<", 1);
      v22 = operator<<(v21, v19);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ">", 1);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v24 = std::locale::use_facet(v53, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(v53);
      std::ostream::put();
      std::ostream::flush();
      v19 += 80;
    }

    while (v19 != v18);
  }

  v25 = _nlpDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46[4].__locale_;
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v44 = 0;
LABEL_72:
        *(&__dst + v31) = 0;
        p_dst = &__dst;
        if (v44 < 0)
        {
          p_dst = __dst;
        }

        *v53 = 136315394;
        *&v53[4] = "Candidates";
        v54 = 2080;
        v55 = p_dst;
        _os_log_debug_impl(&dword_26F4DB000, v25, OS_LOG_TYPE_DEBUG, "%s:\n %s", v53, 0x16u);
        if (v44 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_42;
      }

      v33 = v46[1].__locale_;
      v32 = v46[3].__locale_;
    }

    v31 = v32 - v33;
    if ((v32 - v33) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v44 = v32 - v33;
    if (v31)
    {
      memmove(&__dst, v33, v31);
    }

    goto LABEL_72;
  }

LABEL_42:

  *&v45 = *MEMORY[0x277D82828];
  *(&v46[-2].__locale_ + *(v45 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v45 + 1) = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(__p);
  }

  *(&v45 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v46);
  std::ostream::~ostream();
  MEMORY[0x274392AA0](&v52);
  v26 = *(a3 + 23);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a3 + 8);
  }

  if (v26 < 2)
  {
    updated = 0;
  }

  else
  {
    updated = TLCompositeTransliterator::updateCandidatesWithEmojiCandidates(a1, a5);
  }

  if (updated + 5 >= updated + a4)
  {
    v28 = updated + a4;
  }

  else
  {
    v28 = updated + 5;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 8) - *a5) >> 4) > v28)
  {
    std::vector<TLCompositeTransliteratorCandidate>::resize(a5, v28);
  }

  Value = CFLocaleGetValue(*(a1 + 56), *MEMORY[0x277CBEED0]);
  if (CFEqual(Value, @"ar"))
  {
    memset(v36, 0, sizeof(v36));
    std::vector<TLCompositeTransliteratorCandidate>::__init_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(v36, *a5, *(a5 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 8) - *a5) >> 4));
    TLCompositeTransliterator::addEasternArabicNumberTransliterations(v36, a3, &v45);
    std::vector<TLCompositeTransliteratorCandidate>::__vdeallocate(a5);
    *a5 = v45;
    *(a5 + 16) = v46[0];
    v46[0].__locale_ = 0;
    v45 = 0uLL;
    __dst = &v45;
    std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__dst);
    __dst = v36;
    std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&__dst);
  }

  *&v45 = &v37;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&v45);
  *&v45 = &v39;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&v45);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

LABEL_58:
  TLOSSignPostgetTransliterationCandidates::~TLOSSignPostgetTransliterationCandidates(&v42);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_26F4F0FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, os_signpost_id_t a28, char *a29, uint64_t a30, uint64_t a31, char a32)
{
  a29 = &a17;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&a29);
  TLOSSignPostgetTransliterationCandidates::~TLOSSignPostgetTransliterationCandidates(&a28);
  _Unwind_Resume(a1);
}

uint64_t candidateSurfaceFormPresentInVector(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v3 = a1 + 24;
  v4 = v5;
  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  if (v6 >= 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  for (i = *a2 + 24; ; i += 80)
  {
    v10 = *(i + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(i + 8);
    }

    if (v10 == v7)
    {
      v12 = v11 >= 0 ? i : *i;
      if (!memcmp(v12, v8, v7))
      {
        break;
      }
    }

    v13 = i + 56;
    if (v13 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<TLCompositeTransliteratorCandidate const&>(a1, a2);
  }

  else
  {
    std::vector<TLCompositeTransliteratorCandidate>::__construct_one_at_end[abi:ne200100]<TLCompositeTransliteratorCandidate const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

void std::vector<TLCompositeTransliteratorCandidate>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<TLCompositeTransliteratorCandidate>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 80 * a2;
    while (v3 != v7)
    {
      v3 -= 80;
      std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v3);
    }

    a1[1] = v7;
  }
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

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZL30loadLMSpecificModulatingFactorPK10__CFLocalePK7__CFURL_block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, const __CFString *a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v11 = PathComponent;
    if (CFStringHasSuffix(PathComponent, @".lm"))
    {
      if (CFStringsAreEqual(a5, @"LanguageModel"))
      {
        v12 = *(*(a1 + 32) + 8);
        v13 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], url, @"Info.plist", 0);
        nlp::CFScopedPtr<__CFURL const*>::reset((v12 + 48), v13);
        *a6 = 1;
      }
    }

    CFRelease(v11);
  }
}

void sub_26F4F13F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
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

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<std::string &,std::string &,double,double,TLTransliteratorCandidateType,BOOL &>(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4, double *a5, void *a6, unsigned __int8 *a7)
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

void sub_26F4F16D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::vector<TLCompositeTransliteratorCandidate>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate*>,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(uint64_t *a1, uint64_t a2, std::string *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 5 * a5;
        std::vector<TLCompositeTransliteratorCandidate>::__move_range(a1, a2, a1[1], a2 + 80 * a5);
        v17 = (a3 + 16 * v18);
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>,TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(a1, a3 + v16, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<TLCompositeTransliteratorCandidate>::__move_range(a1, v5, v10, v5 + 80 * a5);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 4);
    if (v12 > 0x333333333333333)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x199999999999999)
    {
      v15 = 0x333333333333333;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v15);
    }

    v20 = 0;
    v21 = 16 * (v13 >> 4);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<TLCompositeTransliteratorCandidate>::__construct_at_end_with_size<std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(&v20, a3, a5);
    v5 = std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, &v20, v5);
    std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(&v20);
  }

  return v5;
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v12 = *(v9 + 48);
      *(v8 + 57) = *(v9 + 57);
      *(v8 + 48) = v12;
      v9 += 80;
      v8 += 80;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(&v14, a2, v7, v6);
}

void std::__split_buffer<TLCompositeTransliteratorCandidate>::__construct_at_end_with_size<std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 80 * a3;
    v8 = 80 * a3;
    do
    {
      v9 = (v4 + v6);
      v10 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *v10, *(v10 + 1));
      }

      else
      {
        v11 = *v10;
        v9->__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&v9->__r_.__value_.__l.__data_ = v11;
      }

      v12 = (v4 + v6);
      v13 = a2 + v6;
      if (*(a2 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v12 + 1, *(v13 + 24), *(v13 + 32));
      }

      else
      {
        v14 = *(v13 + 24);
        v12[1].__r_.__value_.__r.__words[2] = *(v13 + 40);
        *&v12[1].__r_.__value_.__l.__data_ = v14;
      }

      v15 = v4 + v6;
      v16 = *(a2 + v6 + 48);
      *(v15 + 57) = *(a2 + v6 + 57);
      *(v15 + 48) = v16;
      v6 += 80;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *(a1 + 16) = v7;
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v12 = *(v9 + 48);
      *(v8 + 57) = *(v9 + 57);
      *(v8 + 48) = v12;
      v9 += 80;
      v8 += 80;
    }

    while (v9 != v7);
    v13 = a3;
    do
    {
      std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v13);
      v13 += 80;
    }

    while (v13 != v7);
  }

  v14 = *a1;
  v15 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v16 = v15 + v14 - a3;
  if (v14 != a3)
  {
    v17 = v14;
    v18 = v15 + v14 - a3;
    do
    {
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = 0;
      v20 = *(v17 + 24);
      *(v18 + 40) = *(v17 + 40);
      *(v18 + 24) = v20;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0;
      *(v17 + 24) = 0;
      v21 = *(v17 + 48);
      *(v18 + 57) = *(v17 + 57);
      *(v18 + 48) = v21;
      v17 += 80;
      v18 += 80;
    }

    while (v17 != a3);
    do
    {
      std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v14);
      v14 += 80;
    }

    while (v14 != a3);
  }

  a2[1] = v16;
  v22 = *a1;
  *a1 = v16;
  a1[1] = v22;
  a2[1] = v22;
  v23 = a1[1];
  a1[1] = a2[2];
  a2[2] = v23;
  v24 = a1[2];
  a1[2] = a2[3];
  a2[3] = v24;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>,TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v14 = a4 + v7;
      v15 = *(a2 + v7 + 48);
      *(v14 + 57) = *(a2 + v7 + 57);
      *(v14 + 48) = v15;
      v7 += 80;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_26F4F1CB0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 80);
      if (*(a4 + v7 - 57) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 80);
      v11 = *v10;
      *(a4 + v7 - 64) = *(a3 + v7 - 64);
      *v9 = v11;
      *(a3 + v7 - 57) = 0;
      *v10 = 0;
      v12 = (v8 - 56);
      if (*(v8 - 33) < 0)
      {
        operator delete(*v12);
      }

      v13 = a3 + v7;
      v14 = *(a3 + v7 - 56);
      *(v8 - 40) = *(a3 + v7 - 40);
      *v12 = v14;
      *(v13 - 33) = 0;
      *(v13 - 56) = 0;
      v15 = a4 + v7;
      v16 = *(a3 + v7 - 32);
      *(v15 - 23) = *(a3 + v7 - 23);
      *(v15 - 32) = v16;
      v7 -= 80;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    v7 = *(&v5[2].__r_.__value_.__r.__words[1] + 1);
    *&this[2].__r_.__value_.__l.__data_ = *&v5[2].__r_.__value_.__l.__data_;
    *(&this[2].__r_.__value_.__r.__words[1] + 1) = v7;
    this = (this + 80);
    v5 = (v5 + 80);
  }

  while (v5 != v6);
  return v6;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      v9 = v5[3];
      *(a4 + 57) = *(v5 + 57);
      *(a4 + 48) = v9;
      v5 += 5;
      a4 += 80;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 std::__split_buffer<TLCompositeTransliteratorCandidate>::emplace_back<TLCompositeTransliteratorCandidate>(void *a1, __int128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 4);
      }

      v10 = a1[4];
      v14[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(v10, v9);
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4) + 1 + ((0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4) + 1) >> 63);
    v7 = -5 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(v14, v5, v4, &v5[-5 * (v6 >> 1)]);
    v4 = v8;
    a1[1] += 16 * v7;
    a1[2] = v8;
  }

  v11 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v11;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v12 = *(a2 + 24);
  *(v4 + 40) = *(a2 + 5);
  *(v4 + 24) = v12;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  result = a2[3];
  *(v4 + 57) = *(a2 + 57);
  *(v4 + 48) = result;
  a1[2] += 80;
  return result;
}

void TLOSSignPostgetTransliterationCandidates::TLOSSignPostgetTransliterationCandidates(TLOSSignPostgetTransliterationCandidates *this)
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
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "getTransliterationCandidates", &unk_26F4F80C2, v7, 2u);
  }
}

void std::vector<TLCompositeTransliteratorCandidate>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<TLCompositeTransliteratorCandidate>::__assign_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<TLCompositeTransliteratorCandidate>::__vdeallocate(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TLCompositeTransliteratorCandidate>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 80;
        std::__destroy_at[abi:ne200100]<TLCompositeTransliteratorCandidate,0>(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>,TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(a1, __str + v11, a3, *(a1 + 8));
  }
}

void std::vector<TLCompositeTransliteratorCandidate>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

__n128 std::vector<TLCompositeTransliteratorCandidate>::__construct_one_at_end[abi:ne200100]<TLCompositeTransliteratorCandidate const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  result = a2[3];
  *(v4 + 57) = *(a2 + 57);
  *(v4 + 48) = result;
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_26F4F2424(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__emplace_back_slow_path<TLCompositeTransliteratorCandidate const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v6);
  }

  v7 = 80 * v2;
  v13[0] = 0;
  v13[1] = v7;
  v14 = v7;
  v15 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  v10 = a2[3];
  *(v7 + 57) = *(a2 + 57);
  *(v7 + 48) = v10;
  v14 += 80;
  std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, v13);
  v11 = a1[1];
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(v13);
  return v11;
}

void sub_26F4F2590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_26F4F2700(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x274392AA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x274392A50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26F4F27BC(_Unwind_Exception *a1)
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

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::vector<TLCompositeTransliteratorCandidate>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 80 * ((80 * a2 - 80) / 0x50) + 80;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    v12[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLCompositeTransliteratorCandidate>>(a1, v9);
    }

    v12[0] = 0;
    v12[1] = 80 * v6;
    v12[3] = 0;
    v11 = 80 * ((80 * a2 - 80) / 0x50) + 80;
    bzero((80 * v6), v11);
    v12[2] = 80 * v6 + v11;
    std::vector<TLCompositeTransliteratorCandidate>::__swap_out_circular_buffer(a1, v12);
    std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(v12);
  }
}

void sub_26F4F2B58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TLCompositeTransliteratorCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TLCompositeTransliteratorCandidate>::__init_with_size[abi:ne200100]<TLCompositeTransliteratorCandidate*,TLCompositeTransliteratorCandidate*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TLCompositeTransliteratorCandidate>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26F4F2BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TLOSSignPostgetTransliterationCandidates::~TLOSSignPostgetTransliterationCandidates(os_signpost_id_t *this)
{
  v2 = _nlpSignpostLog();
  v3 = v2;
  v4 = *this;
  if (*this - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_26F4DB000, v3, OS_SIGNPOST_INTERVAL_END, v4, "getTransliterationCandidates", &unk_26F4F80C2, v5, 2u);
  }
}

void nlp::CFScopedPtr<__CFArray const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__stable_sort<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(uint64_t *a1, __int128 *a2, uint64_t *a3, unint64_t a4, void *a5, uint64_t a6)
{
  v62 = a2;
  v63 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v62 = a2 - 5;
      v9 = *a3;
      TotalScore = TLCompositeTransliteratorCandidate::getTotalScore((a2 - 5), *(*a3 + 32));
      if (TotalScore > TLCompositeTransliteratorCandidate::getTotalScore(a1, *(v9 + 32)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate *> &,std::__wrap_iter<TLCompositeTransliteratorCandidate *> &>(&v63, &v62);
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v17 = (a1 + 10);
        if (a1 + 10 != a2)
        {
          v18 = 0;
          v19 = a1;
          do
          {
            v20 = v17;
            v21 = *a3;
            v22 = TLCompositeTransliteratorCandidate::getTotalScore(v17, *(*a3 + 32));
            if (v22 > TLCompositeTransliteratorCandidate::getTotalScore(v19, *(v21 + 32)))
            {
              v23 = *v20;
              v65 = *(v20 + 2);
              *__p = v23;
              *(v20 + 1) = 0;
              *(v20 + 2) = 0;
              *v20 = 0;
              v66 = *(v19 + 13);
              v67 = v19[15];
              v19[14] = 0;
              v19[15] = 0;
              v19[13] = 0;
              v68[0] = *(v19 + 8);
              *(v68 + 9) = *(v19 + 137);
              v24 = v18;
              while (1)
              {
                v25 = (a1 + v24);
                if (*(a1 + v24 + 103) < 0)
                {
                  operator delete(v25[10]);
                }

                *(v25 + 5) = *v25;
                v25[12] = v25[2];
                *(v25 + 23) = 0;
                *v25 = 0;
                if (*(v25 + 127) < 0)
                {
                  operator delete(v25[13]);
                }

                v26 = a1 + v24;
                v27 = *(a1 + v24 + 24);
                v25[15] = *(a1 + v24 + 40);
                *(v25 + 13) = v27;
                v26[47] = 0;
                v26[24] = 0;
                *(v26 + 8) = *(a1 + v24 + 48);
                *(v26 + 137) = *(a1 + v24 + 57);
                if (!v24)
                {
                  break;
                }

                v28 = *a3;
                v29 = TLCompositeTransliteratorCandidate::getTotalScore(__p, *(*a3 + 32));
                v24 -= 80;
                if (v29 <= TLCompositeTransliteratorCandidate::getTotalScore((v26 - 80), *(v28 + 32)))
                {
                  v30 = a1 + v24 + 80;
                  goto LABEL_24;
                }
              }

              v30 = a1;
LABEL_24:
              if (*(v30 + 23) < 0)
              {
                operator delete(*v30);
              }

              v31 = *__p;
              *(v30 + 16) = v65;
              *v30 = v31;
              HIBYTE(v65) = 0;
              LOBYTE(__p[0]) = 0;
              if (*(v30 + 47) < 0)
              {
                operator delete(*(v26 + 3));
                v34 = SHIBYTE(v65);
                v35 = v66;
                *(v26 + 5) = v67;
                *(v26 + 24) = v35;
                HIBYTE(v67) = 0;
                LOBYTE(v66) = 0;
                v36 = v68[0];
                *(v26 + 57) = *(v68 + 9);
                *(v26 + 3) = v36;
                if (v34 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v32 = v66;
                *(v26 + 5) = v67;
                *(v26 + 24) = v32;
                v33 = v68[0];
                *(v26 + 57) = *(v68 + 9);
                *(v26 + 3) = v33;
              }
            }

            v17 = (v20 + 80);
            v18 += 80;
            v19 = v20;
          }

          while ((v20 + 80) != a2);
        }
      }
    }

    else
    {
      v13 = a5;
      v14 = a4 >> 1;
      v15 = &a1[10 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v61 = 0;
        __p[0] = a5;
        __p[1] = &v61;
        std::__stable_sort_move<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(a1, &a1[10 * (a4 >> 1)], a3, a4 >> 1, a5);
        v61 = a4 >> 1;
        v37 = a4 - v14;
        v38 = v13 + 80 * v14;
        std::__stable_sort_move<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(&a1[10 * (a4 >> 1)], a2, a3, v37, v38);
        v61 = a4;
        v39 = v13 + 80 * a4;
        v40 = a1 + 3;
        v41 = v38;
        while (v41 != v39)
        {
          v42 = *a3;
          v43 = TLCompositeTransliteratorCandidate::getTotalScore(v41, *(*a3 + 32));
          v44 = TLCompositeTransliteratorCandidate::getTotalScore(v13, *(v42 + 32));
          v45 = (v40 - 3);
          v46 = *(v40 - 1);
          if (v43 <= v44)
          {
            if (v46 < 0)
            {
              operator delete(*v45);
            }

            v50 = *v13;
            *(v40 - 1) = *(v13 + 16);
            *v45 = v50;
            *(v13 + 23) = 0;
            *v13 = 0;
            if (*(v40 + 23) < 0)
            {
              operator delete(*v40);
            }

            v51 = *(v13 + 24);
            v40[2] = *(v13 + 40);
            *v40 = v51;
            *(v13 + 47) = 0;
            *(v13 + 24) = 0;
            v52 = *(v13 + 48);
            *(v40 + 33) = *(v13 + 57);
            *(v40 + 3) = v52;
            v13 += 80;
          }

          else
          {
            if (v46 < 0)
            {
              operator delete(*v45);
            }

            v47 = *v41;
            *(v40 - 1) = *(v41 + 16);
            *v45 = v47;
            *(v41 + 23) = 0;
            *v41 = 0;
            if (*(v40 + 23) < 0)
            {
              operator delete(*v40);
            }

            v48 = *(v41 + 24);
            v40[2] = *(v41 + 40);
            *v40 = v48;
            *(v41 + 47) = 0;
            *(v41 + 24) = 0;
            v49 = *(v41 + 48);
            *(v40 + 33) = *(v41 + 57);
            *(v40 + 3) = v49;
            v41 += 80;
          }

          v40 += 10;
          if (v13 == v38)
          {
            while (v41 != v39)
            {
              if (*(v40 - 1) < 0)
              {
                operator delete(*(v40 - 3));
              }

              v57 = v40 - 3;
              v58 = *v41;
              v57[2] = *(v41 + 16);
              *v57 = v58;
              *(v41 + 23) = 0;
              *v41 = 0;
              if (*(v40 + 23) < 0)
              {
                operator delete(*v40);
              }

              v59 = *(v41 + 24);
              v40[2] = *(v41 + 40);
              *v40 = v59;
              *(v41 + 47) = 0;
              *(v41 + 24) = 0;
              v60 = *(v41 + 48);
              *(v40 + 33) = *(v41 + 57);
              *(v40 + 3) = v60;
              v40 += 10;
              v41 += 80;
            }

            goto LABEL_60;
          }
        }

        while (v13 != v38)
        {
          v53 = (v40 - 3);
          if (*(v40 - 1) < 0)
          {
            operator delete(*v53);
          }

          v54 = *v13;
          *(v40 - 1) = *(v13 + 16);
          *v53 = v54;
          *(v13 + 23) = 0;
          *v13 = 0;
          if (*(v40 + 23) < 0)
          {
            operator delete(*v40);
          }

          v55 = *(v13 + 24);
          v40[2] = *(v13 + 40);
          *v40 = v55;
          *(v13 + 47) = 0;
          *(v13 + 24) = 0;
          v56 = *(v13 + 48);
          *(v40 + 33) = *(v13 + 57);
          *(v40 + 3) = v56;
          v40 += 10;
          v13 += 80;
        }

LABEL_60:
        std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](__p);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(a1, &a1[10 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v14;
        std::__stable_sort<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(v15, a2, a3, v16, v13, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(a1, v15, a2, a3, v14, v16, v13, a6);
      }
    }
  }
}

void sub_26F4F3264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate *> &,std::__wrap_iter<TLCompositeTransliteratorCandidate *> &>(uint64_t **a1, __int128 **a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v16 = (*a1)[1];
  *&v16[7] = *(*a1 + 15);
  v5 = *(*a1 + 23);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v7 = (v2 + 3);
  v6 = v2[3];
  *v15 = v2[4];
  *&v15[7] = *(v2 + 39);
  v8 = *(v2 + 47);
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = 0;
  *&v14[9] = *(v2 + 57);
  *v14 = *(v2 + 3);
  v9 = *v3;
  v2[2] = *(v3 + 2);
  *v2 = v9;
  *(v3 + 23) = 0;
  *v3 = 0;
  if (*(v2 + 47) < 0)
  {
    operator delete(*v7);
  }

  v10 = *(v3 + 24);
  v2[5] = *(v3 + 5);
  *v7 = v10;
  *(v3 + 47) = 0;
  *(v3 + 24) = 0;
  v11 = v3[3];
  *(v2 + 57) = *(v3 + 57);
  *(v2 + 3) = v11;
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v4;
  *(v3 + 1) = *v16;
  *(v3 + 15) = *&v16[7];
  *(v3 + 23) = v5;
  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 3));
  }

  *(v3 + 3) = v6;
  *(v3 + 4) = *v15;
  *(v3 + 39) = *&v15[7];
  *(v3 + 47) = v8;
  v3[3] = *v14;
  result = *&v14[9];
  *(v3 + 57) = *&v14[9];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = a2;
    v9 = result;
    if (a4 == 2)
    {
      v73 = a5;
      v74 = &v75;
      v75 = 0;
      v13 = a2 - 10;
      v14 = *a3;
      TotalScore = TLCompositeTransliteratorCandidate::getTotalScore((a2 - 10), *(*a3 + 32));
      if (TotalScore <= TLCompositeTransliteratorCandidate::getTotalScore(v9, *(v14 + 32)))
      {
        v51 = *v9;
        *(v5 + 16) = v9[2];
        *v5 = v51;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        v52 = *(v9 + 3);
        *(v5 + 40) = v9[5];
        *(v5 + 24) = v52;
        v9[4] = 0;
        v9[5] = 0;
        v9[3] = 0;
        v53 = *(v9 + 3);
        *(v5 + 57) = *(v9 + 57);
        *(v5 + 48) = v53;
        v19 = v75;
        v54 = *(v8 - 8);
        *(v5 + 80) = *v13;
        *(v5 + 96) = v54;
        *(v8 - 9) = 0;
        *(v8 - 8) = 0;
        *v13 = 0;
        v55 = *(v8 - 7);
        *(v5 + 120) = *(v8 - 5);
        *(v5 + 104) = v55;
        *(v8 - 6) = 0;
        *(v8 - 5) = 0;
        *(v8 - 7) = 0;
        v22 = v8 - 4;
      }

      else
      {
        v16 = *v13;
        *(v5 + 16) = *(v8 - 8);
        *v5 = v16;
        *(v8 - 9) = 0;
        *(v8 - 8) = 0;
        *v13 = 0;
        v17 = *(v8 - 7);
        *(v5 + 40) = *(v8 - 5);
        *(v5 + 24) = v17;
        *(v8 - 6) = 0;
        *(v8 - 5) = 0;
        *(v8 - 7) = 0;
        v18 = *(v8 - 2);
        *(v5 + 57) = *(v8 - 23);
        *(v5 + 48) = v18;
        v19 = v75;
        v20 = v9[2];
        *(v5 + 80) = *v9;
        *(v5 + 96) = v20;
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        v21 = *(v9 + 3);
        *(v5 + 120) = v9[5];
        *(v5 + 104) = v21;
        v9[4] = 0;
        v9[5] = 0;
        v9[3] = 0;
        v22 = v9 + 6;
      }

      v56 = *v22;
      *(v5 + 137) = *(v22 + 9);
      *(v5 + 128) = v56;
      v50 = v19 + 1;
    }

    else
    {
      if (a4 == 1)
      {
        v10 = *result;
        *(a5 + 16) = result[2];
        *a5 = v10;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        v11 = *(result + 3);
        *(a5 + 40) = result[5];
        *(a5 + 24) = v11;
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        v12 = *(result + 3);
        *(a5 + 57) = *(result + 57);
        *(a5 + 48) = v12;
        return result;
      }

      if (a4 <= 8)
      {
        if (result == a2)
        {
          return result;
        }

        v73 = a5;
        v74 = &v75;
        v23 = *result;
        *(a5 + 16) = result[2];
        *a5 = v23;
        result[1] = 0;
        result[2] = 0;
        *result = 0;
        v24 = *(result + 3);
        *(a5 + 40) = result[5];
        *(a5 + 24) = v24;
        result[4] = 0;
        result[5] = 0;
        result[3] = 0;
        v25 = *(result + 3);
        *(a5 + 57) = *(result + 57);
        *(a5 + 48) = v25;
        v75 = 1;
        v26 = (result + 10);
        if (result + 10 != a2)
        {
          v27 = 0;
          v28 = a5;
          do
          {
            v29 = v26;
            v30 = *a3;
            v31 = TLCompositeTransliteratorCandidate::getTotalScore(v26, *(*a3 + 32));
            v32 = v28 + 5;
            if (v31 <= TLCompositeTransliteratorCandidate::getTotalScore(v28, *(v30 + 32)))
            {
              v43 = *v29;
              *(v28 + 12) = *(v29 + 2);
              *v32 = v43;
              *(v29 + 1) = 0;
              *(v29 + 2) = 0;
              *v29 = 0;
              v44 = *(v9 + 13);
              *(v28 + 15) = v9[15];
              *(v28 + 104) = v44;
              v9[14] = 0;
              v9[15] = 0;
              v9[13] = 0;
              v45 = *(v9 + 8);
              *(v28 + 137) = *(v9 + 137);
              v28[8] = v45;
              ++v75;
            }

            else
            {
              *v32 = *v28;
              *(v28 + 12) = *(v28 + 2);
              *v28 = 0;
              *(v28 + 1) = 0;
              v33 = *(v28 + 24);
              *(v28 + 2) = 0;
              *(v28 + 3) = 0;
              *(v28 + 104) = v33;
              *(v28 + 15) = *(v28 + 5);
              *(v28 + 4) = 0;
              *(v28 + 5) = 0;
              *(v28 + 137) = *(v28 + 57);
              v34 = v28[3];
              ++v75;
              v35 = v5;
              v28[8] = v34;
              if (v28 != v5)
              {
                v36 = v27;
                while (1)
                {
                  v37 = *a3;
                  v38 = TLCompositeTransliteratorCandidate::getTotalScore(v29, *(*a3 + 32));
                  v39 = v5 + v36;
                  v40 = (v5 + v36 - 80);
                  if (v38 <= TLCompositeTransliteratorCandidate::getTotalScore(v40, *(v37 + 32)))
                  {
                    break;
                  }

                  v41 = v5 + v36;
                  if (*(v5 + v36 + 23) < 0)
                  {
                    operator delete(*v39);
                  }

                  *v39 = *v40;
                  *(v39 + 16) = *(v5 + v36 - 64);
                  *(v41 - 57) = 0;
                  *v40 = 0;
                  if (*(v41 + 47) < 0)
                  {
                    operator delete(*(v41 + 24));
                  }

                  v42 = v5 + v36;
                  *(v41 + 24) = *(v5 + v36 - 56);
                  *(v41 + 40) = *(v5 + v36 - 40);
                  *(v42 - 33) = 0;
                  *(v42 - 56) = 0;
                  *(v42 + 48) = *(v5 + v36 - 32);
                  *(v42 + 57) = *(v5 + v36 - 23);
                  v36 -= 80;
                  if (!v36)
                  {
                    v35 = v5;
                    goto LABEL_23;
                  }
                }

                v35 = v5 + v36;
LABEL_23:
                v8 = a2;
              }

              if (*(v35 + 23) < 0)
              {
                operator delete(*v35);
              }

              v46 = *v29;
              *(v35 + 16) = *(v29 + 2);
              *v35 = v46;
              *(v9 + 103) = 0;
              *v29 = 0;
              if (*(v35 + 47) < 0)
              {
                operator delete(*(v35 + 24));
              }

              v47 = *(v9 + 13);
              *(v35 + 40) = v9[15];
              *(v35 + 24) = v47;
              *(v9 + 127) = 0;
              *(v9 + 104) = 0;
              v48 = *(v9 + 8);
              *(v35 + 57) = *(v9 + 137);
              *(v35 + 48) = v48;
            }

            v26 = (v29 + 80);
            v27 += 80;
            v28 = v32;
            v9 = v29;
          }

          while ((v29 + 80) != v8);
        }

        goto LABEL_36;
      }

      v49 = &result[10 * (a4 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(result, v49, a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(&v9[10 * (a4 >> 1)], v8, a3, a4 - (a4 >> 1), v5 + 80 * (a4 >> 1), a4 - (a4 >> 1));
      v73 = v5;
      v74 = &v75;
      v75 = 0;
      if (v49 == v8)
      {
        v50 = 0;
LABEL_44:
        if (v9 == v49)
        {
          goto LABEL_36;
        }

        do
        {
          v66 = *v9;
          *(v5 + 16) = v9[2];
          *v5 = v66;
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          v67 = *(v9 + 3);
          *(v5 + 40) = v9[5];
          *(v5 + 24) = v67;
          v9[4] = 0;
          v9[5] = 0;
          v9[3] = 0;
          v68 = *(v9 + 3);
          *(v5 + 57) = *(v9 + 57);
          *(v5 + 48) = v68;
          v9 += 10;
          v5 += 80;
          ++v50;
        }

        while (v9 != v49);
      }

      else
      {
        v57 = &v9[10 * (a4 >> 1)];
        while (1)
        {
          v58 = *a3;
          v59 = TLCompositeTransliteratorCandidate::getTotalScore(v57, *(*a3 + 32));
          if (v59 <= TLCompositeTransliteratorCandidate::getTotalScore(v9, *(v58 + 32)))
          {
            v63 = *v9;
            *(v5 + 16) = v9[2];
            *v5 = v63;
            v9[1] = 0;
            v9[2] = 0;
            *v9 = 0;
            v64 = *(v9 + 3);
            *(v5 + 40) = v9[5];
            *(v5 + 24) = v64;
            v9[4] = 0;
            v9[5] = 0;
            v9[3] = 0;
            v65 = *(v9 + 3);
            *(v5 + 57) = *(v9 + 57);
            *(v5 + 48) = v65;
            v9 += 10;
          }

          else
          {
            v60 = *v57;
            *(v5 + 16) = v57[2];
            *v5 = v60;
            v57[1] = 0;
            v57[2] = 0;
            *v57 = 0;
            v61 = *(v57 + 3);
            *(v5 + 40) = v57[5];
            *(v5 + 24) = v61;
            v57[4] = 0;
            v57[5] = 0;
            v57[3] = 0;
            v62 = *(v57 + 3);
            *(v5 + 57) = *(v57 + 57);
            *(v5 + 48) = v62;
            v57 += 10;
          }

          v50 = ++v75;
          v5 += 80;
          if (v9 == v49)
          {
            break;
          }

          if (v57 == v8)
          {
            goto LABEL_44;
          }
        }

        if (v57 == v8)
        {
          goto LABEL_36;
        }

        do
        {
          v69 = *v57;
          *(v5 + 16) = v57[2];
          *v5 = v69;
          v57[1] = 0;
          v57[2] = 0;
          *v57 = 0;
          v70 = *(v57 + 3);
          *(v5 + 40) = v57[5];
          *(v5 + 24) = v70;
          v57[4] = 0;
          v57[5] = 0;
          v57[3] = 0;
          v71 = *(v57 + 3);
          *(v5 + 57) = *(v57 + 57);
          *(v5 + 48) = v71;
          v57 += 10;
          v5 += 80;
          ++v50;
        }

        while (v57 != v8);
      }
    }

    v75 = v50;
LABEL_36:
    v73 = 0;
    return std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](&v73);
  }

  return result;
}

void sub_26F4F3A70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v107 = a1;
  v111 = a2;
  v112 = a1;
  if (a6)
  {
    v8 = a8;
    v12 = v111;
    v13 = a2;
    while (a6 > v8 && a5 > v8)
    {
      if (!a5)
      {
        goto LABEL_42;
      }

      v14 = a2;
      v106 = a6;
      v15 = 0;
      v16 = -a5;
      v17 = v107;
      while (1)
      {
        v18 = &v107[v15 / 8];
        v19 = *a4;
        v20 = v13;
        TotalScore = TLCompositeTransliteratorCandidate::getTotalScore(v13, *(*a4 + 32));
        if (TotalScore > TLCompositeTransliteratorCandidate::getTotalScore(&v107[v15 / 8], *(v19 + 32)))
        {
          break;
        }

        v15 += 80;
        v22 = __CFADD__(v16++, 1);
        v13 = v20;
        if (v22)
        {
          goto LABEL_42;
        }
      }

      v112 = &v107[v15 / 8];
      v23 = -v16;
      v24 = v106;
      v104 = a4;
      if (-v16 >= v106)
      {
        if (v16 == -1)
        {
          v111 = v12;
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate *> &,std::__wrap_iter<TLCompositeTransliteratorCandidate *> &>(&v112, &v111);
          return;
        }

        v36 = v20;
        v35 = v23 / 2;
        v37 = a3;
        if (a3 == v20)
        {
          v26 = a7;
        }

        else
        {
          v102 = a7;
          v109 = v23 / 2;
          v39 = &v107[10 * v35];
          v40 = *a4;
          v41 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v20) >> 4);
          v42 = v20;
          do
          {
            v43 = &v42[5 * (v41 >> 1)];
            v44 = TLCompositeTransliteratorCandidate::getTotalScore(v43, *(v40 + 32));
            v45 = TLCompositeTransliteratorCandidate::getTotalScore(&v39[v15 / 8], *(v40 + 32));
            if (v44 <= v45)
            {
              v41 >>= 1;
            }

            else
            {
              v41 += ~(v41 >> 1);
            }

            if (v44 > v45)
            {
              v42 = (v43 + 80);
            }
          }

          while (v41);
          v26 = v102;
          v24 = v106;
          v17 = v107;
          v36 = v20;
          v37 = v42;
          v35 = v109;
        }

        v38 = 0xCCCCCCCCCCCCCCCDLL * (v37 - v36);
        v25 = &v17[10 * v35 + v15 / 8];
      }

      else
      {
        v25 = v14;
        v108 = &v14[10 * (v106 / 2)];
        v26 = a7;
        if (v14 - v107 != v15)
        {
          v101 = a7;
          v27 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v107 - v15) >> 4);
          v25 = &v107[v15 / 8];
          do
          {
            v28 = &v25[10 * (v27 >> 1)];
            v29 = a4;
            v30 = *a4;
            v31 = v25;
            v32 = TLCompositeTransliteratorCandidate::getTotalScore(v108, *(v30 + 32));
            v33 = *(v30 + 32);
            a4 = v29;
            v34 = TLCompositeTransliteratorCandidate::getTotalScore(v28, v33);
            if (v32 <= v34)
            {
              v25 = (v28 + 80);
            }

            else
            {
              v25 = v31;
            }

            if (v32 <= v34)
            {
              v27 += ~(v27 >> 1);
            }

            else
            {
              v27 >>= 1;
            }
          }

          while (v27);
          v26 = v101;
          v24 = v106;
          v17 = v107;
        }

        v35 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v17 - v15) >> 4);
        v36 = v20;
        v37 = v108;
        v38 = v106 / 2;
      }

      v46 = v37;
      if (v25 != v36)
      {
        v46 = v25;
        if (v37 != v36)
        {
          v47 = v25;
          v48 = v35;
          v49 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TLCompositeTransliteratorCandidate *>>(v25, v36, v37);
          v35 = v48;
          v25 = v47;
          v24 = v106;
          v46 = v49;
        }
      }

      a5 = -(v35 + v16);
      v50 = v24 - v38;
      if (v35 + v38 >= v24 - (v35 + v38) - v16)
      {
        v51 = v37;
        v52 = v35;
        a7 = v26;
        v8 = a8;
        v53 = v25;
        std::__inplace_merge<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(v46, v51, a3, v104, -(v35 + v16), v24 - v38, v26, a8);
        a2 = v53;
        v13 = v53;
        v50 = v38;
        a5 = v52;
        a3 = v46;
      }

      else
      {
        v8 = a8;
        a7 = v26;
        std::__inplace_merge<std::_ClassicAlgPolicy,TLCompositeTransliterator::assignLanguageModelScoreToCandidates(std::vector<TLCompositeTransliteratorCandidate> &,std::vector<std::string> const&)::$_1 &,std::__wrap_iter<TLCompositeTransliteratorCandidate*>>(v18, v25, v46, v104, v35, v38, v26, a8);
        v112 = v46;
        v18 = v46;
        v13 = v37;
        a2 = v37;
      }

      v12 = v13;
      v107 = v18;
      a6 = v50;
      a4 = v104;
      if (!v50)
      {
LABEL_42:
        v111 = v12;
        return;
      }
    }

    v111 = v12;
    v54 = a7;
    v113[0] = a7;
    v113[1] = &v114;
    v114 = 0;
    if (a5 > a6)
    {
      v55 = v107;
      if (v13 == a3)
      {
        goto LABEL_82;
      }

      v56 = 0;
      v57 = 0;
      v58 = a3;
      do
      {
        v59 = a7 + v56;
        v60 = (v13 + v56);
        v61 = *(v13 + v56);
        *(v59 + 16) = *(v13 + v56 + 16);
        *v59 = v61;
        v60[1] = 0;
        v60[2] = 0;
        *v60 = 0;
        v62 = *(v13 + v56 + 24);
        *(v59 + 40) = *(v13 + v56 + 40);
        *(v59 + 24) = v62;
        v60[4] = 0;
        v60[5] = 0;
        v60[3] = 0;
        v63 = *(v13 + v56 + 48);
        *(v59 + 57) = *(v13 + v56 + 57);
        *(v59 + 48) = v63;
        ++v57;
        v56 += 80;
      }

      while (v60 + 10 != a3);
      v64 = (a7 + v56);
      v114 = v57;
      v65 = a3 - 80;
      v66 = a3;
      v110 = v64;
      v67 = v64;
      while (1)
      {
        if (v13 == v55)
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<TLCompositeTransliteratorCandidate *>,std::reverse_iterator<TLCompositeTransliteratorCandidate *>,std::reverse_iterator<std::__wrap_iter<TLCompositeTransliteratorCandidate *>>>(v110, v67, v54, a3, v66, v115);
          goto LABEL_82;
        }

        v68 = v13;
        v69 = v67;
        v70 = v67 - 80;
        v71 = *a4;
        v72 = TLCompositeTransliteratorCandidate::getTotalScore((v67 - 80), *(*a4 + 32));
        v73 = (v68 - 80);
        v74 = TLCompositeTransliteratorCandidate::getTotalScore((v68 - 80), *(v71 + 32));
        v75 = *(v65 + 23);
        if (v72 <= v74)
        {
          v73 = v68;
          v76 = v69;
          if (v75 < 0)
          {
            operator delete(*v65);
            v76 = v69;
            v73 = v68;
          }

          v79 = *v70;
          *(v65 + 16) = *(v70 + 16);
          *v65 = v79;
          *(v76 - 57) = 0;
          *(v76 - 80) = 0;
          v78 = v58 - 56;
          v67 = v70;
          if ((*(v65 + 47) & 0x80000000) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v76 = v68;
          v67 = v69;
          if (v75 < 0)
          {
            operator delete(*v65);
            v67 = v69;
            v76 = v68;
          }

          v77 = *v73;
          *(v65 + 16) = *(v68 - 8);
          *v65 = v77;
          *(v76 - 57) = 0;
          *(v76 - 80) = 0;
          v78 = v65 + 24;
          v70 = v67;
          if ((*(v65 + 47) & 0x80000000) == 0)
          {
            goto LABEL_59;
          }
        }

        operator delete(*v78);
        v67 = v70;
LABEL_59:
        v58 -= 80;
        v80 = *(v76 - 56);
        *(v78 + 16) = *(v76 - 40);
        *v78 = v80;
        *(v76 - 33) = 0;
        *(v76 - 56) = 0;
        v81 = *(v76 - 32);
        *(v65 + 57) = *(v76 - 23);
        *(v65 + 48) = v81;
        v66 -= 80;
        v65 -= 80;
        v13 = v73;
        v55 = v107;
        if (v67 == v54)
        {
          goto LABEL_82;
        }
      }
    }

    v82 = v107;
    if (v107 == v13)
    {
      goto LABEL_82;
    }

    v83 = 0;
    v84 = a7;
    v85 = v107;
    do
    {
      v86 = *v85;
      *(v84 + 16) = v85[2];
      *v84 = v86;
      v85[1] = 0;
      v85[2] = 0;
      *v85 = 0;
      v87 = *(v85 + 3);
      *(v84 + 40) = v85[5];
      *(v84 + 24) = v87;
      v85[4] = 0;
      v85[5] = 0;
      v85[3] = 0;
      v88 = *(v85 + 3);
      *(v84 + 57) = *(v85 + 57);
      *(v84 + 48) = v88;
      ++v83;
      v85 += 10;
      v84 += 80;
    }

    while (v85 != v13);
    v114 = v83;
    while (v13 != a3)
    {
      v89 = *a4;
      v90 = v13;
      v91 = TLCompositeTransliteratorCandidate::getTotalScore(v13, *(*a4 + 32));
      v92 = TLCompositeTransliteratorCandidate::getTotalScore(v54, *(v89 + 32));
      v93 = *(v82 + 23);
      if (v91 <= v92)
      {
        if (v93 < 0)
        {
          operator delete(*v82);
        }

        v98 = *v54;
        *(v82 + 16) = *(v54 + 16);
        *v82 = v98;
        *(v54 + 23) = 0;
        *v54 = 0;
        v13 = v90;
        if (*(v82 + 47) < 0)
        {
          operator delete(*(v82 + 24));
          v13 = v90;
        }

        v99 = *(v54 + 24);
        *(v82 + 40) = *(v54 + 40);
        *(v82 + 24) = v99;
        *(v54 + 47) = 0;
        *(v54 + 24) = 0;
        v100 = *(v54 + 48);
        *(v82 + 57) = *(v54 + 57);
        *(v82 + 48) = v100;
        v54 += 80;
      }

      else
      {
        if (v93 < 0)
        {
          operator delete(*v82);
        }

        v94 = v90;
        v95 = *v90;
        *(v82 + 16) = *(v90 + 2);
        *v82 = v95;
        *(v90 + 23) = 0;
        *v90 = 0;
        if (*(v82 + 47) < 0)
        {
          operator delete(*(v82 + 24));
          v94 = v90;
        }

        v96 = *(v94 + 24);
        *(v82 + 40) = *(v94 + 5);
        *(v82 + 24) = v96;
        *(v94 + 47) = 0;
        *(v94 + 24) = 0;
        v97 = *(v94 + 3);
        *(v82 + 57) = *(v94 + 57);
        *(v82 + 48) = v97;
        v13 = (v94 + 80);
      }

      v82 += 80;
      if (v84 == v54)
      {
        goto LABEL_82;
      }
    }

    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *,TLCompositeTransliteratorCandidate *>(v115, v54, v84, v82);
LABEL_82:
    std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](v113);
  }
}

void sub_26F4F41C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<TLCompositeTransliteratorCandidate,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 23);
      do
      {
        if (v5[24] < 0)
        {
          operator delete(*(v5 + 1));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        ++v4;
        v5 += 80;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::reverse_iterator<TLCompositeTransliteratorCandidate *>,std::reverse_iterator<TLCompositeTransliteratorCandidate *>,std::reverse_iterator<std::__wrap_iter<TLCompositeTransliteratorCandidate *>>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v8 = a2;
  if (a2 != a3)
  {
    v12 = 0;
    do
    {
      v13 = a5 + v12;
      v14 = (a5 + v12 - 80);
      if (*(a5 + v12 - 57) < 0)
      {
        operator delete(*v14);
      }

      v15 = (v8 + v12 - 80);
      v16 = *v15;
      *(a5 + v12 - 64) = *(v8 + v12 - 64);
      *v14 = v16;
      *(v8 + v12 - 57) = 0;
      *v15 = 0;
      v17 = (v13 - 56);
      if (*(v13 - 33) < 0)
      {
        operator delete(*v17);
      }

      v18 = v8 + v12;
      v19 = *(v8 + v12 - 56);
      *(v13 - 40) = *(v8 + v12 - 40);
      *v17 = v19;
      *(v18 - 33) = 0;
      *(v18 - 56) = 0;
      v20 = a5 + v12;
      v21 = *(v8 + v12 - 32);
      *(v20 - 23) = *(v8 + v12 - 23);
      *(v20 - 32) = v21;
      v12 -= 80;
    }

    while (v8 + v12 != a3);
    a5 += v12;
    v8 += v12;
  }

  *a6 = a1;
  a6[1] = v8;
  a6[2] = a4;
  a6[3] = a5;
}

uint64_t *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TLCompositeTransliteratorCandidate *>>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate *> &,std::__wrap_iter<TLCompositeTransliteratorCandidate *> &>(&v11, &v10);
    v5 = v11 + 10;
    v6 = v10 + 5;
    v10 = v6;
    v11 += 10;
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<TLCompositeTransliteratorCandidate *> &,std::__wrap_iter<TLCompositeTransliteratorCandidate *> &>(&v11, &v10);
        v7 = v11 + 10;
        v8 = v10 + 5;
        v10 = v8;
        v11 += 10;
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

void TLCreateStringWithValidatedFormat(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26F4DB000, log, OS_LOG_TYPE_ERROR, "Failed to create string with format %@:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue()
{
  {
    nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue(void)::attributes = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  }
}

{
  {
    nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue(void)::queue = dispatch_queue_create("com.apple.NLPUtils.SingletonResourceManager", nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getQueue(void)::attributes);
  }
}

void nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getCache()
{
  {
    nlp::SingletonResourceManager<std::string,TL::ReadOnlyFile<char>>::getCache(void)::cache = 0u;
    unk_2806EACD8 = 0u;
    dword_2806EACE8 = 1065353216;
  }
}

void TLCompositeTransliteratorSeq2Seq::seq2SeqCandidatesForInput(char *a1, void *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_26F4DB000, log, OS_LOG_TYPE_ERROR, "Failed to get seq2seq candidates for string: %s, translateString timedout", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}