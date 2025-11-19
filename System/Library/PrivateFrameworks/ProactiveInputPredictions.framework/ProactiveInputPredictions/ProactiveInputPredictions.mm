id psg_default_log_handle()
{
  if (psg_default_log_handle__pasOnceToken2 != -1)
  {
    dispatch_once(&psg_default_log_handle__pasOnceToken2, &__block_literal_global_308);
  }

  v1 = psg_default_log_handle__pasExprOnceResult;

  return v1;
}

void sub_260D194CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PSGLMWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_260D1A0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  operator delete(v38);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__66(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__67(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a4);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }
}

void sub_260D1A280(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL12tokenizeTextPvS_P8NSStringS1__block_invoke(uint64_t a1, const UInt8 *a2, CFIndex a3, int a4)
{
  TokenIDForLemmaString = a4;
  if (a4)
  {
    goto LABEL_2;
  }

  if (a3)
  {
    v5 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
    if (!v5)
    {
LABEL_2:
      std::vector<unsigned int>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 48, &TokenIDForLemmaString);
      return;
    }

    v6 = v5;
    TokenIDForLemmaString = getTokenIDForLemmaString(v6, *(a1 + 56), *(a1 + 64));
    if (!TokenIDForLemmaString)
    {
      if ([(NSString *)v6 length]>= 3)
      {
        v7 = [(NSString *)v6 substringWithRange:[(NSString *)v6 length]- 2, 2];
        if ([@"’s" isEqualToString:v7] & 1) != 0 || (objc_msgSend(@"'s", "isEqualToString:", v7) & 1) != 0 || (objc_msgSend(@"’S", "isEqualToString:", v7) & 1) != 0 || (objc_msgSend(@"'S", "isEqualToString:", v7))
        {
          v8 = [(NSString *)v6 substringToIndex:[(NSString *)v6 length]- 2];
          TokenIDForLemmaString = getTokenIDForLemmaString(v8, *(a1 + 56), *(a1 + 64));

          if (TokenIDForLemmaString)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      v9 = *(a1 + 56);
      TokenIDForLemmaString = LMLanguageModelGetTokenIDForString();
      if (!TokenIDForLemmaString)
      {
        [(NSString *)v6 lowercaseString];
        v10 = *(a1 + 56);
        TokenIDForLemmaString = LMLanguageModelGetTokenIDForString();
        if (!TokenIDForLemmaString)
        {
          [(NSString *)v6 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
          v11 = *(a1 + 56);
          TokenIDForLemmaString = LMLanguageModelGetTokenIDForString();
          if (!TokenIDForLemmaString)
          {
            v12 = [(NSString *)v6 lowercaseString];
            [v12 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

            v13 = *(a1 + 56);
            TokenIDForLemmaString = LMLanguageModelGetTokenIDForString();
            if (!TokenIDForLemmaString && *(a1 + 72) && *(a1 + 80) == 1)
            {
              v14 = malloc_type_malloc(2 * [(NSString *)v6 length], 0x1000040BDFB0063uLL);
              if (!v14)
              {
                v49 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
                objc_exception_throw(v49);
              }

              [(NSString *)v6 getCharacters:v14 range:0, [(NSString *)v6 length]];
              v15 = *(a1 + 72);
              LMLexiconGetRootCursor();
              v16 = *(a1 + 72);
              [(NSString *)v6 length];
              if (LMLexiconGetCursorByAdvancingWithCharacters())
              {
                v17 = *(a1 + 72);
                if (LMLexiconCursorHasEntries())
                {
                  v18 = *(a1 + 72);
                  TokenIDForLemmaString = LMLexiconCursorFirstTokenID();
                }
              }

              free(v14);
            }
          }
        }
      }
    }

LABEL_28:
    v20 = v6;
    if (*(a1 + 80) != 1)
    {
      goto LABEL_45;
    }

    v20 = v6;
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_45;
    }

    v21 = *(*(a1 + 32) + 8);
    v23 = *(v21 + 48);
    v22 = *(v21 + 56);
    v20 = v6;
    if (v23 == v22)
    {
      goto LABEL_45;
    }

    v24 = *(a1 + 64);
    v25 = *(v22 - 4);
    ClassForTokenID = LMVocabularyGetClassForTokenID();
    v27 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:v6];
    v28 = *(a1 + 56);
    TokenIDForString = LMLanguageModelGetTokenIDForString();
    v30 = *(a1 + 64);
    v31 = LMVocabularyGetClassForTokenID();
    if ((v31 - 68) > 0x15 || ((1 << (v31 - 68)) & 0x200003) == 0)
    {
      v20 = v6;
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 56) -= 4;
      TokenIDForLemmaString = TokenIDForString;
      v20 = v27;

      v33 = *(*(a1 + 32) + 8);
      v35 = *(v33 + 48);
      v34 = *(v33 + 56);
      if (v35 == v34)
      {
        v38 = *(*(a1 + 40) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = 0;
        goto LABEL_43;
      }

      v36 = *(a1 + 64);
      v37 = *(v34 - 4);
      ClassForTokenID = LMVocabularyGetClassForTokenID();
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
    }

    if (ClassForTokenID != 69)
    {
      goto LABEL_45;
    }

    v40 = *(a1 + 64);
    if (LMVocabularyGetClassForTokenID() != 68)
    {
      goto LABEL_45;
    }

    v41 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingString:v20];
    v42 = *(a1 + 56);
    v43 = LMLanguageModelGetTokenIDForString();
    v44 = *(a1 + 64);
    if (LMVocabularyGetClassForTokenID() != 89)
    {
LABEL_44:

LABEL_45:
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
      v46 = [(NSString *)v20 copy];
      v47 = *(*(a1 + 40) + 8);
      v48 = *(v47 + 40);
      *(v47 + 40) = v46;

      CFRelease(v6);
      goto LABEL_2;
    }

    *(*(*(a1 + 32) + 8) + 56) -= 4;
    TokenIDForLemmaString = v43;
    v45 = v41;
    v39 = v20;
    v20 = v45;
LABEL_43:

    v41 = v20;
    goto LABEL_44;
  }

  v19 = psg_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v50[0] = 0;
    _os_log_error_impl(&dword_260D18000, v19, OS_LOG_TYPE_ERROR, "Encountered empty token with non-special token id.", v50, 2u);
  }
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t getTokenIDForLemmaString(NSString *a1, void *a2, void *a3)
{
  v3 = a1;
  if ([(NSString *)v3 length])
  {
    if (LMVocabularyContainsLemma())
    {
      TokenIDForString = LMLanguageModelGetTokenIDForString();
    }

    else
    {
      v5 = [(NSString *)v3 localizedCapitalizedString];
      if (LMVocabularyContainsLemma())
      {
        TokenIDForString = LMLanguageModelGetTokenIDForString();
      }

      else
      {
        TokenIDForString = 0;
      }

      CFRelease(v5);
    }
  }

  else
  {
    TokenIDForString = 0;
  }

  return TokenIDForString;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
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

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_279ABCCF0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_260D1B5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_260D1BE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260D1D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260D1FE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D1FF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D20178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D20300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __psg_default_log_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.proactive.ProactiveInputPredictions", "Default");
  v2 = psg_default_log_handle__pasExprOnceResult;
  psg_default_log_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __Block_byref_object_copy__330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _PASValidatedFormat(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v19[1] = &a9;
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v19[0] = 0;
  v11 = [[v9 alloc] initWithValidatedFormat:v10 validFormatSpecifiers:@"%@" locale:0 arguments:&a9 error:v19];

  v12 = v19[0];
  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277CBEAD8]);
    v14 = *MEMORY[0x277CBE660];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v16 = [v13 initWithName:v14 reason:@"An error occurred while formatting the string." userInfo:v15];

    [v16 raise];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_260D2635C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__697(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260D2ADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1011(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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