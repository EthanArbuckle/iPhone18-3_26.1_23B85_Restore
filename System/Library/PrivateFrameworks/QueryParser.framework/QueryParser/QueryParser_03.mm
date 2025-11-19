void ___ZN2QP5Lexer10addLexemesERNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(**(a1 + 40) + 16 * a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v3 = *(a1 + 48);
  *(&v3 + 1) = a2;
  std::vector<CFRange>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, &v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1C65BACD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<CFRange>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<CFRange>>::__emplace_back_slow_path<std::vector<CFRange> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<CFRange>>::__construct_one_at_end[abi:ne200100]<std::vector<CFRange> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void QP::Lexer::addEntityLexemes(QP::Lexer *this)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr[0] = 0;
  valuePtr[1] = Mutable;
  v4 = *(this + 17);
  v5 = *(this + 18);
  while (v4 != v5)
  {
    v6 = CFNumberCreate(v2, kCFNumberCFIndexType, (*v4 + 72));
    v44[0] = v6;
    cf[0] = CFNumberCreate(v2, kCFNumberIntType, valuePtr);
    if (*(*v4 + 88) - 1 > 3)
    {
      goto LABEL_11;
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(Mutable, v6, &value) && (*&v35 = 0, CFNumberGetValue(value, kCFNumberSInt64Type, &v35), *(*(*(this + 17) + 16 * v35) + 80) > *(*v4 + 80)))
    {
      v7 = 0;
      ++valuePtr[0];
    }

    else
    {
      CFDictionarySetValue(Mutable, v44[0], cf[0]);
      v7 = 1;
    }

    if (value)
    {
      CFRelease(value);
    }

    if (v7)
    {
LABEL_11:
      ++valuePtr[0];
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v44[0])
    {
      CFRelease(v44[0]);
    }

    v4 += 16;
  }

  v9 = *(this + 57);
  v8 = *(this + 58);
  if (v9 != v8)
  {
    v32 = *(this + 58);
    v33 = (this + 528);
    v10 = -1;
    do
    {
      cf[0] = 0;
      cf[1] = 0;
      v42 = 0;
      v11 = *v9;
      v42 = *(v9 + 2);
      *cf = v11;
      v12 = CFNumberCreate(v2, kCFNumberCFIndexType, cf);
      number[0] = 0;
      number[1] = v12;
      if (!CFDictionaryGetValueIfPresent(Mutable, v12, number))
      {
        if (v10 <= cf[0] || v10 < (cf[1] + cf[0]))
        {
          value = 0;
          v38 = 0;
          v39 = 0;
          std::string::basic_string[abi:ne200100]<0>(&value, "Text");
          if ((v42 & 0x400) != 0)
          {
            if (SHIBYTE(v39) < 0)
            {
              v38 = 11;
              p_value = value;
            }

            else
            {
              HIBYTE(v39) = 11;
              p_value = &value;
            }

            strcpy(p_value, "Punctuation");
          }

          v36 = CFStringCreateWithSubstring(v2, *(this + 55), *cf);
          if (*(this + 52))
          {
            v30 = *(*(this + 39) + 112);
            if (SILocalizationGetTokenTypeInString() == 5)
            {
              if (SHIBYTE(v39) < 0)
              {
                v38 = 8;
                v31 = value;
              }

              else
              {
                HIBYTE(v39) = 8;
                v31 = &value;
              }

              strcpy(v31, "Stopword");
            }
          }

          v35 = 0uLL;
          std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
        }

        goto LABEL_56;
      }

      value = 0;
      CFNumberGetValue(number[0], kCFNumberSInt64Type, &value);
      v13 = *(*(this + 17) + 16 * value);
      v34 = *(*(this + 17) + 16 * value);
      v14 = *(*(this + 17) + 16 * value + 8);
      if (*(&v13 + 1))
      {
        atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
        v15 = *(this + 67);
        v16 = *(this + 68);
        if (v15 >= v16)
        {
          goto LABEL_31;
        }

        *v15 = v13;
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v15 = *(this + 67);
        v16 = *(this + 68);
        if (v15 >= v16)
        {
LABEL_31:
          v19 = (v15 - *v33) >> 4;
          v20 = v19 + 1;
          if ((v19 + 1) >> 60)
          {
            std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
          }

          v21 = v16 - *v33;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          v44[4] = this + 528;
          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(v33, v22);
          }

          v23 = 16 * v19;
          *(16 * v19) = v13;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = (v23 + 16);
          v24 = *(this + 66);
          v25 = *(this + 67) - v24;
          v26 = v23 - v25;
          memcpy((v23 - v25), v24, v25);
          v27 = *(this + 66);
          *(this + 66) = v26;
          *(this + 67) = v18;
          v28 = *(this + 68);
          *(this + 68) = 0;
          v44[2] = v27;
          v44[3] = v28;
          v44[0] = v27;
          v44[1] = v27;
          std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v44);
          v8 = v32;
          goto LABEL_42;
        }

        *v15 = v13;
      }

      v18 = v15 + 1;
LABEL_42:
      *(this + 67) = v18;
      v29 = *(v34 + 72);
      if (*(v34 + 80) + v29 > v10)
      {
        v10 = *(v34 + 80) + v29;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

LABEL_56:
      if (number[0])
      {
        CFRelease(number[0]);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      v9 = (v9 + 24);
    }

    while (v9 != v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1C65BB34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, const void *a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a22, 0);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFNumber const*>::reset(&a29, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a30, 0);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v33 - 136), 0);
  _Unwind_Resume(a1);
}

void ___ZN2QP5Lexer5parseEbRNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[8];
  if ((*(a2 + 17) & 8) == 0)
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    QP::Lexer::tagTokenWhitespace(v5, &v10.location, *(*(a1[4] + 8) + 24));
    v7 = *(*(a1[5] + 8) + 24);
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 24);
    *(v8 + 24) = v9 + 1;
    *(v7 + 16 * v9) = *a2;
    if (0xAAAAAAAAAAAAAAABLL * ((*(v5 + 464) - *(v5 + 456)) >> 3) >= a1[9])
    {
      *a3 = 1;
    }
  }

  if (CFStringFindCharacterFromSet(*(v5 + 440), *(v5 + 368), *a2, 0, 0))
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    QP::Lexer::tagTokenSingleQuote(v5, &v10.location, *(*(a1[4] + 8) + 24));
  }

  else if (!CFStringFindCharacterFromSet(*(v5 + 440), *(v5 + 392), *a2, 0, 0))
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    QP::Lexer::tagTokenPunctuation(v5, &v10, *(*(a1[4] + 8) + 24), *(*(a1[7] + 8) + 40), *(*(a1[7] + 8) + 48));
  }
}

void QP::Lexer::merge(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int a4@<W4>, void *a5@<X8>)
{
  v33 = 0;
  v34 = 0;
  v8 = a1[43];
  v9 = a2[1];
  v31 = *a2;
  v32 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  v29 = *a3;
  v30 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::LexemeConverter::merge(v8, &v31, &v29, &v33);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a4)
  {
    if (v33)
    {
      v11 = a1[64];
      v12 = a1[65];
      if (v11 >= v12)
      {
        v16 = a1[63];
        v17 = (v11 - v16) >> 4;
        v18 = v17 + 1;
        if ((v17 + 1) >> 60)
        {
          std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v16;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        v35[4] = a1 + 63;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((a1 + 63), v20);
        }

        v21 = v34;
        v22 = (16 * v17);
        *v22 = v33;
        v22[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v22 + 2;
        v23 = a1[63];
        v24 = a1[64] - v23;
        v25 = v22 - v24;
        memcpy(v22 - v24, v23, v24);
        v26 = a1[63];
        a1[63] = v25;
        a1[64] = v14;
        v27 = a1[65];
        a1[65] = 0;
        v35[2] = v26;
        v35[3] = v27;
        v35[0] = v26;
        v35[1] = v26;
        std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v35);
      }

      else
      {
        v13 = v34;
        *v11 = v33;
        v11[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v11 + 2;
      }

      a1[64] = v14;
    }

    else
    {
      v14 = a1[64];
    }

    v28 = *(v14 - 1);
    *a5 = *(v14 - 2);
    a5[1] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = v34;
    *a5 = v33;
    a5[1] = v15;
    v33 = 0;
    v34 = 0;
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_1C65BB790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void QP::Lexer::resolve(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, BOOL *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v31 = 0;
  v32 = 0;
  v9 = a1[43];
  v10 = a2[1];
  v29 = *a2;
  v30 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::LexemeConverter::resolve(v9, &v29, a3, a4, &v31);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v31)
  {
    if (a5)
    {
      v11 = a1[64];
      v12 = a1[65];
      if (v11 >= v12)
      {
        v16 = a1[63];
        v17 = (v11 - v16) >> 4;
        v18 = v17 + 1;
        if ((v17 + 1) >> 60)
        {
          std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
        }

        v19 = v12 - v16;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        v33[4] = a1 + 63;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>((a1 + 63), v20);
        }

        v21 = v32;
        v22 = (16 * v17);
        *v22 = v31;
        v22[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v22 + 2;
        v23 = a1[63];
        v24 = a1[64] - v23;
        v25 = v22 - v24;
        memcpy(v22 - v24, v23, v24);
        v26 = a1[63];
        a1[63] = v25;
        a1[64] = v14;
        v27 = a1[65];
        a1[65] = 0;
        v33[2] = v26;
        v33[3] = v27;
        v33[0] = v26;
        v33[1] = v26;
        std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v33);
      }

      else
      {
        v13 = v32;
        *v11 = v31;
        v11[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v11 + 2;
      }

      a1[64] = v14;
      v28 = *(v14 - 1);
      *a6 = *(v14 - 2);
      a6[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = v32;
      *a6 = v31;
      a6[1] = v15;
      v31 = 0;
      v32 = 0;
    }
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_1C65BB96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___ZL11lexerLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QueryParserLexer");
  lexerLogger(void)::log = result;
  return result;
}

void std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<CFRange>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65BBA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::Lexeme>>,std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::Lexeme>>,std::shared_ptr<QP::Lexeme>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::Lexeme>>,std::shared_ptr<QP::Lexeme>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::shared_ptr<QP::Lexeme>>::emplace_back<std::shared_ptr<QP::Lexeme> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v5 = std::vector<std::shared_ptr<QP::Lexeme>>::__emplace_back_slow_path<std::shared_ptr<QP::Lexeme> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = (v3 + 2);
  }

  *(a1 + 8) = v5;
  return v5 - 16;
}

uint64_t std::vector<std::shared_ptr<QP::Lexeme>>::__emplace_back_slow_path<std::shared_ptr<QP::Lexeme> const&>(const void **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16[4] = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1, v7);
  }

  v8 = 16 * v2;
  v9 = *a2;
  *(16 * v2) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v8 + 16;
  v11 = a1[1] - *a1;
  v12 = v8 - v11;
  memcpy((v8 - v11), *a1, v11);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v10;
  v14 = a1[2];
  a1[2] = 0;
  v16[2] = v13;
  v16[3] = v14;
  v16[0] = v13;
  v16[1] = v13;
  std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v16);
  return v10;
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
    std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
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

void *std::vector<std::shared_ptr<QP::Lexeme>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>,std::__wrap_iter<std::shared_ptr<QP::Lexeme>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v19 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::Lexeme>>,std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v19 = (v7 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(v31, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v31[0] = 0;
    v12 = a5 + ((v10 - v11) >> 4);
    if (v12 >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    v15 = v14 >> 3;
    if (v14 >> 3 <= v12)
    {
      v15 = v12;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1, v16);
    }

    v20 = 16 * (v13 >> 4);
    v32 = 0;
    v21 = (v20 + 16 * a5);
    v22 = v20;
    do
    {
      *v22 = *v7;
      v23 = v7[1];
      *(v22 + 1) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v22 += 16;
      v7 += 2;
    }

    while (v22 != v21);
    memcpy(v21, v5, a1[1] - v5);
    v24 = *a1;
    v25 = &v21[a1[1] - v5];
    a1[1] = v5;
    v26 = v5 - v24;
    v27 = (v20 - (v5 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v25;
    v29 = a1[2];
    a1[2] = v32;
    v31[2] = v28;
    v32 = v29;
    v31[0] = v28;
    v31[1] = v28;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v31);
    return v20;
  }

  return v5;
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

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,false>(uint64_t *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 1);
  v95 = a2 - 1;
  v97 = (a2 - 3);
  v98 = (a2 - 2);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*a3)(v8, v9))
        {
          v88 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v88;
          v89 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v89;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v78 = (*a3)(v9 + 2, v9);
      v79 = (*a3)(v8, v9 + 2);
      if (v78)
      {
        v81 = v9 + 1;
        v80 = *v9;
        if (v79)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v93 = *(v9 + 1);
          v9[3] = v9[1];
          v81 = v9 + 3;
          v9[2] = v80;
          *v9 = v93;
          if (!(*a3)(v8, v9 + 2))
          {
            return;
          }

          v80 = v9[2];
          v9[2] = *(a2 - 2);
        }

        *(a2 - 2) = v80;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v90 = v9[2];
        v9[2] = *(a2 - 2);
        *(a2 - 2) = v90;
        v91 = v9[3];
        v95 = v9 + 3;
        v9[3] = *(a2 - 1);
        *(a2 - 1) = v91;
        if (!(*a3)(v9 + 2, v9))
        {
          return;
        }

        v92 = *v9;
        *v9 = v9[2];
        v9[2] = v92;
        v81 = v9 + 1;
      }

      v94 = *v81;
      *v81 = *v95;
      *v95 = v94;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a3);
      if ((*a3)(v8, v9 + 6))
      {
        v82 = v9[6];
        v9[6] = *(a2 - 2);
        *(a2 - 2) = v82;
        v83 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v83;
        if ((*a3)(v9 + 6, v9 + 4))
        {
          v84 = *(v9 + 2);
          *(v9 + 2) = *(v9 + 3);
          *(v9 + 3) = v84;
          if ((*a3)(v9 + 4, v9 + 2))
          {
            v85 = *(v9 + 1);
            *(v9 + 1) = *(v9 + 2);
            *(v9 + 2) = v85;
            if ((*a3)(v9 + 2, v9))
            {
              v86 = *v9;
              *v9 = *(v9 + 1);
              *(v9 + 1) = v86;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    v15 = *a3;
    v100 = v11;
    if (v12 >= 0x81)
    {
      v16 = v15(&v9[2 * (v12 >> 1)], v9);
      v17 = (*a3)(v8, v14);
      v96 = v13;
      if (v16)
      {
        v19 = a1 + 1;
        v18 = *a1;
        if (v17)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        v32 = a1[1];
        *a1 = *v14;
        v14[1] = v32;
        v19 = v14 + 1;
        *v14 = v18;
        if ((*a3)(v8, v14))
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
          v26 = a2 - 1;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = v14 + 1;
        v25 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, a1))
        {
          v27 = *a1;
          *a1 = *v14;
          v19 = a1 + 1;
          *v14 = v27;
          goto LABEL_28;
        }
      }

      v34 = v14 - 2;
      v35 = (*a3)(v14 - 2, a1 + 2);
      v36 = (*a3)(v98, v14 - 2);
      if (v35)
      {
        v37 = a1[2];
        v38 = a1 + 3;
        if (v36)
        {
          a1[2] = *v98;
          *v98 = v37;
          v39 = a2 - 3;
          v40 = v96;
          goto LABEL_40;
        }

        v45 = *v38;
        *(a1 + 1) = *v34;
        *(v14 - 1) = v45;
        v38 = v14 - 1;
        *v34 = v37;
        v40 = v96;
        if ((*a3)(v98, v14 - 2))
        {
          v46 = *v34;
          *v34 = *v98;
          *v98 = v46;
          v39 = a2 - 3;
LABEL_40:
          v47 = *v38;
          *v38 = *v39;
          *v39 = v47;
        }
      }

      else
      {
        v40 = v96;
        if (v36)
        {
          v41 = *v34;
          *v34 = *(a2 - 4);
          *(a2 - 4) = v41;
          v39 = v14 - 1;
          v42 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v42;
          if ((*a3)(v14 - 2, a1 + 2))
          {
            v43 = a1[2];
            a1[2] = *v34;
            *v34 = v43;
            v38 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      v48 = v40 + 1;
      v49 = &a1[2 * v40 + 2];
      v50 = (*a3)(v49, a1 + 4);
      v51 = (*a3)(v97, v49);
      v52 = v8;
      if (v50)
      {
        v53 = a1[4];
        v54 = a1 + 5;
        if (v51)
        {
          v55 = a2 - 3;
          a1[4] = *v97;
          goto LABEL_49;
        }

        v60 = *v54;
        *(a1 + 2) = *v49;
        v49[1] = v60;
        v54 = v49 + 1;
        *v49 = v53;
        if ((*a3)(v97, v49))
        {
          v53 = *v49;
          v55 = a2 - 3;
          *v49 = *v97;
LABEL_49:
          *v55 = v53;
          v58 = a2 - 5;
LABEL_50:
          v61 = *v54;
          *v54 = *v58;
          *v58 = v61;
        }
      }

      else if (v51)
      {
        v56 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v56;
        v58 = v49 + 1;
        v57 = v49[1];
        v49[1] = *(a2 - 5);
        *(a2 - 5) = v57;
        if ((*a3)(v49, a1 + 4))
        {
          v59 = a1[4];
          a1[4] = *v49;
          *v49 = v59;
          v54 = a1 + 5;
          goto LABEL_50;
        }
      }

      v62 = (*a3)(v14, v14 - 2);
      v63 = (*a3)(v49, v14);
      if (v62)
      {
        v64 = *v34;
        v8 = v52;
        if (v63)
        {
          *v34 = *v49;
          *v49 = v64;
          v65 = v14 - 1;
          goto LABEL_59;
        }

        v68 = *v14;
        v14[1] = *(v14 - 1);
        *v14 = v64;
        *v34 = v68;
        if ((*a3)(v49, v14))
        {
          v69 = *v14;
          *v14 = *v49;
          *v49 = v69;
          v65 = v14 + 1;
LABEL_59:
          v70 = &a1[2 * v48];
          v71 = *v65;
          *v65 = v70[1];
          v70[1] = v71;
        }
      }

      else
      {
        v8 = v52;
        if (v63)
        {
          v66 = *v14;
          *v14 = *v49;
          *v49 = v66;
          if ((*a3)(v14, v14 - 2))
          {
            v67 = *v34;
            *v34 = *v14;
            v65 = v14 - 1;
            *v14 = v67;
            v48 = v96;
            goto LABEL_59;
          }
        }
      }

      v72 = *a1;
      *a1 = *v14;
      v23 = a1 + 1;
      *v14 = v72;
      v31 = v14 + 1;
LABEL_61:
      v73 = *v23;
      *v23 = *v31;
      *v31 = v73;
      goto LABEL_62;
    }

    v20 = v15(v9, &v9[2 * (v12 >> 1)]);
    v21 = (*a3)(v8, v9);
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v8;
LABEL_37:
        *v8 = v22;
        v31 = a2 - 1;
        goto LABEL_61;
      }

      v44 = v14[1];
      *v14 = *v9;
      v9[1] = v44;
      v23 = v9 + 1;
      *v9 = v22;
      if ((*a3)(v8, v9))
      {
        v22 = *v9;
        *v9 = *v8;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v28 = *v9;
      *v9 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v9, v14))
      {
        v30 = *v14;
        *v14 = *v9;
        *v9 = v30;
        v23 = v14 + 1;
        v31 = v9 + 1;
        goto LABEL_61;
      }
    }

LABEL_62:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 2, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Lexeme> *,BOOL (*&)(std::shared_ptr<QP::Lexeme>&,std::shared_ptr<QP::Lexeme>&)>(a1, a2, a3);
      v75 = v100;
      goto LABEL_69;
    }

    v74 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Lexeme> *,BOOL (*&)(std::shared_ptr<QP::Lexeme>&,std::shared_ptr<QP::Lexeme>&)>(a1, a2, a3);
    v75 = v100;
    if ((v76 & 1) == 0)
    {
      goto LABEL_67;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(a1, v74, a3);
    v9 = v74 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(v74 + 2, a2, a3))
    {
      a4 = -v100;
      a2 = v74;
      if (v77)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v100 + 1;
    if (!v77)
    {
LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,false>(a1, v74, a3, -v100, a5 & 1);
      v9 = v74 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v75;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v8, a3);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          v18 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            v12 = *(a1 + v10);
            *v11 = 0;
            *(v11 + 8) = 0;
            v13 = *(a1 + v10 + 24);
            *(v11 + 16) = v12;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (!v10)
            {
              break;
            }

            v14 = (*a3)(&v18, a1 + v10 - 16);
            v10 -= 16;
            if ((v14 & 1) == 0)
            {
              v15 = a1 + v10 + 16;
              goto LABEL_12;
            }
          }

          v15 = a1;
LABEL_12:
          v16 = v18;
          v18 = 0uLL;
          v17 = *(v15 + 8);
          *v15 = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }
        }

        v5 = (v8 + 16);
        v7 += 16;
      }

      while (v8 + 16 != a2);
    }
  }
}

void sub_1C65BCC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v7 = a1 - 1;
      do
      {
        v8 = v4;
        v4 = v5;
        if ((*a3)(v5, v8))
        {
          v15 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = v7;
          do
          {
            v10 = v9[1];
            *(v9 + 2) = 0;
            *(v9 + 3) = 0;
            v11 = *(v9 + 5);
            v9[2] = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = (*a3)(&v15, v9--);
          }

          while ((v12 & 1) != 0);
          v13 = v15;
          v15 = 0uLL;
          v14 = *(v9 + 5);
          v9[2] = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*(&v15 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
          }
        }

        v5 = v4 + 1;
        ++v7;
      }

      while (v4 + 1 != a2);
    }
  }
}

void sub_1C65BCCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Lexeme> *,BOOL (*&)(std::shared_ptr<QP::Lexeme>&,std::shared_ptr<QP::Lexeme>&)>(__int128 *a1, void *a2, uint64_t (**a3)(__int128 *, void *))
{
  v4 = a2;
  v17 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if ((*a3)(&v17, a2 - 2))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = v6[1];
    v6[1] = v4[1];
    v4[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v11 = (v6 - 2);
  if (v6 - 2 != a1)
  {
    v12 = *v11;
    *v11 = 0;
    *(v6 - 1) = 0;
    v13 = *(a1 + 1);
    *a1 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = v17;
  v17 = 0uLL;
  v15 = *(v6 - 1);
  *(v6 - 1) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  return v6;
}

void sub_1C65BCE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Lexeme> *,BOOL (*&)(std::shared_ptr<QP::Lexeme>&,std::shared_ptr<QP::Lexeme>&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v19 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  do
  {
    v7 = (*a3)(&a1[++v6], &v19);
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v19));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      v12 = *(v9 + 1);
      *(v9 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v19) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v19));
    }

    while (v9 < v10);
  }

  v13 = v9 - 1;
  if (v9 - 1 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    *(v9 - 1) = 0;
    v15 = *(a1 + 1);
    *a1 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v16 = v19;
  v19 = 0uLL;
  v17 = *(v9 - 1);
  *(v9 - 1) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  return v9 - 1;
}

void sub_1C65BD018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (*a3)(a1 + 2, a1);
      v15 = (*a3)(a2 - 2, a1 + 2);
      if (v14)
      {
        v17 = a1 + 1;
        v16 = *a1;
        if (v15)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v30 = *(a1 + 1);
          a1[3] = a1[1];
          v17 = a1 + 3;
          a1[2] = v16;
          *a1 = v30;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v16 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v16;
        v25 = a2 - 1;
      }

      else
      {
        if (!v15)
        {
          return 1;
        }

        v23 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v25 = a1 + 3;
        v24 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v24;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        v17 = a1 + 1;
      }

      v31 = *v17;
      *v17 = *v25;
      *v25 = v31;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)(a2 - 2, a1 + 6))
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v11 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v11;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v12 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v12;
              if ((*a3)(a1 + 2, a1))
              {
                v13 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 4;
  v19 = (*a3)(a1 + 2, a1);
  v20 = (*a3)(a1 + 4, a1 + 2);
  if (v19)
  {
    v22 = a1 + 1;
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[4];
    }

    else
    {
      v32 = *(a1 + 1);
      a1[3] = a1[1];
      v22 = a1 + 3;
      a1[2] = v21;
      *a1 = v32;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v21 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v21;
    v28 = a1 + 5;
    goto LABEL_34;
  }

  if (v20)
  {
    v27 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 2);
    *(a1 + 2) = v27;
    if ((*a3)(a1 + 2, a1))
    {
      v28 = a1 + 3;
      v29 = *a1;
      *a1 = a1[2];
      a1[2] = v29;
      v22 = a1 + 1;
LABEL_34:
      v33 = *v22;
      *v22 = *v28;
      *v28 = v33;
    }
  }

LABEL_35:
  v34 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ((*a3)(v34, v18))
    {
      v46 = *v34;
      *v34 = 0;
      v34[1] = 0;
      v37 = v35;
      while (1)
      {
        v38 = a1 + v37;
        v39 = *(a1 + v37 + 32);
        *(v38 + 4) = 0;
        *(v38 + 5) = 0;
        v40 = *(a1 + v37 + 56);
        *(v38 + 3) = v39;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v37 == -32)
        {
          break;
        }

        v41 = (*a3)(&v46, (a1 + v37 + 16));
        v37 -= 16;
        if ((v41 & 1) == 0)
        {
          v42 = a1 + v37 + 48;
          goto LABEL_45;
        }
      }

      v42 = a1;
LABEL_45:
      v43 = v46;
      v46 = 0uLL;
      v44 = *(v42 + 8);
      *v42 = v43;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (*(&v46 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
      }

      if (++v36 == 8)
      {
        return v34 + 2 == a2;
      }
    }

    v18 = v34;
    v35 += 16;
    v34 += 2;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

void sub_1C65BD458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int (**a4)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(uint64_t a1, unsigned int (**a2)(__int128 *, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 1)))
      {
        ++v12;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v20 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        do
        {
          v14 = v12;
          v15 = *v12;
          *v12 = 0;
          *(v12 + 1) = 0;
          v16 = *(v5 + 1);
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)((a1 + 16 * v17), (v12 + 1)))
          {
            ++v12;
          }

          else
          {
            v11 = v17;
          }

          v5 = v14;
        }

        while (!(*a2)(v12, &v20));
        v18 = v20;
        v20 = 0uLL;
        v19 = *(v14 + 1);
        *v14 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }
      }
    }
  }
}

void sub_1C65BD6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = *(v9 + 1);
      *v10 = v8;
      *(v10 + 1) = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = *(v9 + 1);
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 1);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_1C65BD80C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Lexeme> &,std::shared_ptr<QP::Lexeme> &),std::shared_ptr<QP::Lexeme>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8, (a2 - 16)))
    {
      v15 = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v12 = *(v9 + 1);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0uLL;
      v14 = *(v10 + 1);
      *v10 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (*(&v15 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
        }
      }
    }
  }
}

void sub_1C65BD8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NLToken>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(a1, v2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t ___ZN2QPL13containsRangeEPK10__CFString7CFRangePK16__CFCharacterSetNSt3__16vectorINS7_10shared_ptrINS_6LexemeEEENS7_9allocatorISB_EEEEPb_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

uint64_t std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CFRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65BDCA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CFRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,false>(uint64_t *a1, __n128 *a2, uint64_t (**a3)(void **, void **), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(v9, &v9[1].n128_i64[1], &a2[-2].n128_i64[1], a3);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(v9, &v9[1].n128_i64[1], &v9[3], &a2[-2].n128_i64[1], a3);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(v9, &v9[1].n128_i64[1], &v9[3], &v9[4].n128_i64[1], &a2[-2].n128_i64[1], a3);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v26 = *a3;
        v42 = 0;
        v43 = 0;
        v41 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v41, a2[-2].n128_i64[1], a2[-1].n128_i64[0], (a2[-1].n128_u64[0] - a2[-2].n128_u64[1]) >> 4);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v38, v9->n128_u64[0], v9->n128_i64[1], (v9->n128_u64[1] - v9->n128_u64[0]) >> 4);
        v27 = v26(&v41, &v38);
        v28 = v27;
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v28)
        {
          v29 = v9->n128_u64[0];
          v9->n128_u64[0] = a2[-2].n128_u64[1];
          a2[-2].n128_u64[1] = v29;
          v30 = v9->n128_u64[1];
          v9->n128_u64[1] = a2[-1].n128_u64[0];
          a2[-1].n128_u64[0] = v30;
          v31 = v9[1].n128_u64[0];
          v9[1].n128_u64[0] = a2[-1].n128_u64[1];
          a2[-1].n128_u64[1] = v31;
        }

        return;
      }
    }

    if (v12 <= 575)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(v9, a2, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = v9 + 3 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(v9 + 3 * v14, v9, &a2[-2].n128_i64[1], a3);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(v9, v9 + 3 * v14, &a2[-2].n128_i64[1], a3);
      v16 = 3 * v14;
      v17 = &v9[-1] + 3 * v14 - 1;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(&v9[1].n128_i64[1], v17, &a2[-3], a3);
      v18 = &v9[1].n128_i64[v16 + 1];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1 + 6, v18, &a2[-5].n128_i64[1], a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(v17, v15, v18, a3);
      v19 = *a1;
      *a1 = *v15;
      *v15 = v19;
      v20 = a1[2];
      a1[2] = v15[2];
      v15[2] = v20;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v21 = *a3;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v35, *(a1 - 3), *(a1 - 2), (*(a1 - 2) - *(a1 - 3)) >> 4);
    __p = 0;
    v33 = 0;
    v34 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *a1, a1[1], (a1[1] - *a1) >> 4);
    v22 = v21(&v35, &__p);
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if ((v22 & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>)>(a1, a2, a3);
      goto LABEL_26;
    }

LABEL_21:
    v23 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>)>(a1, a2, a3);
    if ((v24 & 1) == 0)
    {
      goto LABEL_24;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(a1, v23, a3);
    v9 = (v23 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(v23 + 3, a2, a3))
    {
      a4 = -v11;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v25)
    {
LABEL_24:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,false>(a1, v23, a3, -v11, a5 & 1);
      v9 = (v23 + 3);
LABEL_26:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,std::vector<CFRange>*>(v9, a2, a2, a3);
  }
}

void sub_1C65BE0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(void **, void **))
{
  v8 = *a4;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v59, *a2, a2[1], (a2[1] - *a2) >> 4);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v56, *a1, a1[1], (a1[1] - *a1) >> 4);
  v9 = v8(&v59, &v56);
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  v10 = *a4;
  if (v9)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v41, *a3, a3[1], (a3[1] - *a3) >> 4);
    __p = 0;
    v39 = 0;
    v40 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *a2, a2[1], (a2[1] - *a2) >> 4);
    v11 = v10(&v41, &__p);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    v13 = a1 + 2;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
      v14 = a1[1];
      a1[1] = a3[1];
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      v24 = a1[1];
      a1[1] = a2[1];
      v13 = a2 + 2;
      v25 = a2[2];
      a2[1] = v24;
      v26 = a1[2];
      a1[2] = v25;
      a2[2] = v26;
      v27 = *a4;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v35, *a3, a3[1], (a3[1] - *a3) >> 4);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v32, *a2, a2[1], (a2[1] - *a2) >> 4);
      v28 = v27(&v35, &v32);
      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (!v28)
      {
        return 1;
      }

      v29 = *a2;
      *a2 = *a3;
      *a3 = v29;
      v14 = a2[1];
      a2[1] = a3[1];
    }

    a3[1] = v14;
    v19 = a3 + 2;
LABEL_30:
    v30 = *v13;
    *v13 = *v19;
    *v19 = v30;
    return 1;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v53, *a3, a3[1], (a3[1] - *a3) >> 4);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v50, *a2, a2[1], (a2[1] - *a2) >> 4);
  v15 = v10(&v53, &v50);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v15)
  {
    v16 = *a2;
    *a2 = *a3;
    *a3 = v16;
    v17 = a2[1];
    a2[1] = a3[1];
    a3[1] = v17;
    v19 = a2 + 2;
    v18 = a2[2];
    a2[2] = a3[2];
    a3[2] = v18;
    v20 = *a4;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v47, *a2, a2[1], (a2[1] - *a2) >> 4);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v44, *a1, a1[1], (a1[1] - *a1) >> 4);
    v21 = v20(&v47, &v44);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (!v21)
    {
      return 1;
    }

    v22 = *a1;
    *a1 = *a2;
    *a2 = v22;
    v23 = a1[1];
    a1[1] = a2[1];
    a2[1] = v23;
    v13 = a1 + 2;
    goto LABEL_30;
  }

  return 0;
}

void sub_1C65BE49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(void **, void **))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1, a2, a3, a5);
  v10 = *a5;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v40, *a4, a4[1], (a4[1] - *a4) >> 4);
  __p = 0;
  v38 = 0;
  v39 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *a3, a3[1], (a3[1] - *a3) >> 4);
  v11 = v10(&v40, &__p);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v11)
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    v13 = a3[1];
    a3[1] = a4[1];
    a4[1] = v13;
    v14 = a3[2];
    a3[2] = a4[2];
    a4[2] = v14;
    v15 = *a5;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v34, *a3, a3[1], (a3[1] - *a3) >> 4);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v31, *a2, a2[1], (a2[1] - *a2) >> 4);
    v16 = v15(&v34, &v31);
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = a2[2];
      a2[2] = a3[2];
      a3[2] = v19;
      v20 = *a5;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v28, *a2, a2[1], (a2[1] - *a2) >> 4);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v25, *a1, a1[1], (a1[1] - *a1) >> 4);
      v21 = v20(&v28, &v25);
      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      if (v21)
      {
        v22 = *a1;
        *a1 = *a2;
        *a2 = v22;
        v23 = a1[1];
        a1[1] = a2[1];
        a2[1] = v23;
        v24 = a1[2];
        a1[2] = a2[2];
        a2[2] = v24;
      }
    }
  }
}

void sub_1C65BE7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(void **, void **))
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v53, *a5, a5[1], (a5[1] - *a5) >> 4);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v50, *a4, a4[1], (a4[1] - *a4) >> 4);
  v13 = v12(&v53, &v50);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v13)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    v15 = a4[1];
    a4[1] = a5[1];
    a5[1] = v15;
    v16 = a4[2];
    a4[2] = a5[2];
    a5[2] = v16;
    v17 = *a6;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v47, *a4, a4[1], (a4[1] - *a4) >> 4);
    __p = 0;
    v45 = 0;
    v46 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *a3, a3[1], (a3[1] - *a3) >> 4);
    v18 = v17(&v47, &__p);
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v18)
    {
      v19 = *a3;
      *a3 = *a4;
      *a4 = v19;
      v20 = a3[1];
      a3[1] = a4[1];
      a4[1] = v20;
      v21 = a3[2];
      a3[2] = a4[2];
      a4[2] = v21;
      v22 = *a6;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v41, *a3, a3[1], (a3[1] - *a3) >> 4);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v38, *a2, a2[1], (a2[1] - *a2) >> 4);
      v23 = v22(&v41, &v38);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (v23)
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = a2[2];
        a2[2] = a3[2];
        a3[2] = v26;
        v27 = *a6;
        v36 = 0;
        v37 = 0;
        v35 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v35, *a2, a2[1], (a2[1] - *a2) >> 4);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v32, *a1, a1[1], (a1[1] - *a1) >> 4);
        v28 = v27(&v35, &v32);
        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        if (v28)
        {
          v29 = *a1;
          *a1 = *a2;
          *a2 = v29;
          v30 = a1[1];
          a1[1] = a2[1];
          a2[1] = v30;
          v31 = a1[2];
          a1[2] = a2[2];
          a2[2] = v31;
        }
      }
    }
  }
}

void sub_1C65BEB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(void **, void **))
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a2;
  v4 = (a1 + 24);
  if (&a1[1].n128_i8[8] == a2)
  {
    return;
  }

  v5 = 0;
  v6 = a1;
  do
  {
    v7 = v4;
    v8 = *a3;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v31, v6[1].n128_i64[1], v6[2].n128_i64[0], (v6[2].n128_u64[0] - v6[1].n128_u64[1]) >> 4);
    __p = 0;
    v29 = 0;
    v30 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v6->n128_u64[0], v6->n128_i64[1], (v6->n128_u64[1] - v6->n128_u64[0]) >> 4);
    v9 = v8(&v31, &__p);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = v6[1].n128_i64[1];
    v19 = v6[2];
    v7->n128_u64[0] = 0;
    v7->n128_u64[1] = 0;
    v7[1].n128_u64[0] = 0;
    std::vector<CFRange>::__move_assign(v7, v6);
    v11 = a1;
    if (v6 == a1)
    {
      goto LABEL_21;
    }

    v12 = v5;
    while (1)
    {
      v13 = *a3;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v25, v10, v19.n128_i64[0], (v19.n128_u64[0] - v10) >> 4);
      v14 = *(&a1[-1] + v12 - 8);
      v15 = *(a1[-1].n128_i64 + v12);
      v22 = 0;
      v23 = 0;
      v24 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v22, v14, v15, (v15 - v14) >> 4);
      v16 = v13(&v25, &v22);
      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
        if ((v16 & 1) == 0)
        {
          v11 = v6;
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      if (!v16)
      {
        break;
      }

LABEL_17:
      v6 = (v6 - 24);
      std::vector<CFRange>::__move_assign(a1 + v12, (a1 + v12 - 24));
      v12 -= 24;
      if (!v12)
      {
        v11 = a1;
        goto LABEL_20;
      }
    }

    v11 = (a1 + v12);
LABEL_20:
    v3 = a2;
LABEL_21:
    v17 = v11->n128_u64[0];
    if (v11->n128_u64[0])
    {
      v11->n128_u64[1] = v17;
      operator delete(v17);
      v11->n128_u64[0] = 0;
      v11->n128_u64[1] = 0;
      v11[1].n128_u64[0] = 0;
    }

    v11->n128_u64[0] = v10;
    *(v11 + 8) = v19;
LABEL_24:
    v4 = (v7 + 24);
    v5 += 24;
    v6 = v7;
  }

  while (&v7[1].n128_i8[8] != v3);
}

void sub_1C65BEE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(void **, void **))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 3;
    if (a1 + 3 != a2)
    {
      do
      {
        v7 = v5;
        v8 = *a3;
        v30 = 0;
        v31 = 0;
        v29 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v29, v4[3], v4[4], (v4[4] - v4[3]) >> 4);
        __p = 0;
        v27 = 0;
        v28 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *v4, v4[1], (v4[1] - *v4) >> 4);
        v9 = v8(&v29, &__p);
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }

        if (v9)
        {
          v10 = *v7;
          v11 = *(v4 + 2);
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          v19 = v11;
          v12 = v11;
          v13 = (v11 - v10) >> 4;
          v14 = v7;
          do
          {
            v15 = v14 - 24;
            std::vector<CFRange>::__move_assign(v14, (v14 - 24));
            v16 = *a3;
            v24 = 0;
            v25 = 0;
            v23 = 0;
            std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v23, v10, v12, v13);
            v20 = 0;
            v21 = 0;
            v22 = 0;
            std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v20, *(v14 - 48), *(v14 - 40), (*(v14 - 40) - *(v14 - 48)) >> 4);
            v17 = v16(&v23, &v20);
            if (v20)
            {
              v21 = v20;
              operator delete(v20);
            }

            if (v23)
            {
              v24 = v23;
              operator delete(v23);
            }

            v14 -= 24;
          }

          while ((v17 & 1) != 0);
          v18 = *v15;
          if (*v15)
          {
            *(v15 + 8) = v18;
            operator delete(v18);
            *v15 = 0;
            *(v15 + 8) = 0;
            *(v15 + 16) = 0;
          }

          *v15 = v10;
          *(v15 + 8) = v19;
        }

        v5 = v7 + 3;
        v4 = v7;
      }

      while (v7 + 3 != a2);
    }
  }
}

void sub_1C65BF048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>)>(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void **, void **))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v8 = *a3;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v29 = v7;
  v9 = v7;
  v10 = (v7 - v6) >> 4;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v63, v6, v7, v10);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v60, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
  v11 = v8(&v63, &v60);
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v11)
  {
    i = a1;
    do
    {
      v13 = *a3;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v57, v6, v9, v10);
      v54 = 0;
      v55 = 0;
      v56 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v54, i[3], i[4], (i[4] - i[3]) >> 4);
      v14 = v13(&v57, &v54);
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      i += 3;
    }

    while ((v14 & 1) == 0);
  }

  else
  {
    for (i = (a1 + 24); i < a2; i += 3)
    {
      v27 = *a3;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v51, v6, v9, v10);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v48, *i, i[1], (i[1] - *i) >> 4);
      v28 = v27(&v51, &v48);
      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      if (v28)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    do
    {
      v15 = *a3;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v45, v6, v9, v10);
      __p = 0;
      v43 = 0;
      v44 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
      v16 = v15(&v45, &__p);
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      a2 -= 3;
    }

    while ((v16 & 1) != 0);
  }

  while (i < a2)
  {
    v17 = *i;
    *i = *a2;
    *a2 = v17;
    v18 = i[1];
    i[1] = a2[1];
    a2[1] = v18;
    v19 = i[2];
    i[2] = a2[2];
    a2[2] = v19;
    do
    {
      v20 = *a3;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v39, v6, v9, v10);
      v36 = 0;
      v37 = 0;
      v38 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v36, i[3], i[4], (i[4] - i[3]) >> 4);
      v21 = v20(&v39, &v36);
      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      i += 3;
    }

    while (!v21);
    do
    {
      v22 = *a3;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v33, v6, v9, v10);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v30, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
      v23 = v22(&v33, &v30);
      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      a2 -= 3;
    }

    while ((v23 & 1) != 0);
  }

  v24 = (i - 3);
  if (i - 3 != a1)
  {
    std::vector<CFRange>::__move_assign(a1, (i - 3));
  }

  v25 = *v24;
  if (*v24)
  {
    *(i - 2) = v25;
    operator delete(v25);
    *v24 = 0;
    *(i - 2) = 0;
    *(i - 1) = 0;
  }

  *(i - 3) = v6;
  *(i - 1) = v29;
  return i;
}

void sub_1C65BF478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(v34 - 128);
  if (v36)
  {
    *(v34 - 120) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 104);
  if (v37)
  {
    *(v34 - 96) = v37;
    operator delete(v37);
  }

  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<CFRange> *,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>)>(uint64_t a1, void *a2, uint64_t (**a3)(void **, void **))
{
  v6 = 0;
  v7 = *a1;
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v39 = v8;
  v9 = v8;
  v10 = (v8 - v7) >> 4;
  do
  {
    v11 = *a3;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v67, *(a1 + v6 + 24), *(a1 + v6 + 32), (*(a1 + v6 + 32) - *(a1 + v6 + 24)) >> 4);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v64, v7, v9, v10);
    v12 = v11(&v67, &v64);
    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    v6 += 24;
  }

  while ((v12 & 1) != 0);
  v13 = a1 + v6;
  if (v6 == 24)
  {
    if (v13 < a2)
    {
      do
      {
        v18 = *a3;
        v62 = 0;
        v63 = 0;
        v61 = 0;
        v19 = *(a2 - 3);
        v20 = *(a2 - 2);
        a2 -= 3;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v61, v19, v20, (v20 - v19) >> 4);
        v58 = 0;
        v59 = 0;
        v60 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v58, v7, v9, v10);
        v21 = v18(&v61, &v58);
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        if (v61)
        {
          v62 = v61;
          operator delete(v61);
        }

        if (v13 >= a2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }
      }

      while ((v22 & 1) == 0);
    }
  }

  else
  {
    do
    {
      v14 = *(a2 - 3);
      v15 = *(a2 - 2);
      a2 -= 3;
      v16 = *a3;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v55, v14, v15, (v15 - v14) >> 4);
      __p = 0;
      v53 = 0;
      v54 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v7, v9, v10);
      v17 = v16(&v55, &__p);
      if (__p)
      {
        v53 = __p;
        operator delete(__p);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }
    }

    while ((v17 & 1) == 0);
  }

  v23 = (a1 + v6);
  if (v13 < a2)
  {
    v24 = a2;
    do
    {
      v25 = *v23;
      *v23 = *v24;
      *v24 = v25;
      v26 = v23[1];
      v23[1] = v24[1];
      v24[1] = v26;
      v27 = v23[2];
      v23[2] = v24[2];
      v24[2] = v27;
      do
      {
        v28 = v23[3];
        v29 = v23[4];
        v23 += 3;
        v30 = *a3;
        v50 = 0;
        v51 = 0;
        v49 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v49, v28, v29, (v29 - v28) >> 4);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v46, v7, v9, v10);
        v31 = v30(&v49, &v46);
        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }
      }

      while ((v31 & 1) != 0);
      do
      {
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v32 = *(v24 - 3);
        v33 = *(v24 - 2);
        v24 -= 3;
        v34 = *a3;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v43, v32, v33, (v33 - v32) >> 4);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v40, v7, v9, v10);
        v35 = v34(&v43, &v40);
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }
      }

      while (!v35);
    }

    while (v23 < v24);
  }

  v36 = (v23 - 3);
  if (v23 - 3 != a1)
  {
    std::vector<CFRange>::__move_assign(a1, (v23 - 3));
  }

  v37 = *v36;
  if (*v36)
  {
    *(v23 - 2) = v37;
    operator delete(v37);
    *v36 = 0;
    *(v23 - 2) = 0;
    *(v23 - 1) = 0;
  }

  *(v23 - 3) = v7;
  *(v23 - 1) = v39;
  return v23 - 3;
}

void sub_1C65BF90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(void **, void **))
{
  v4 = a2;
  v5 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = *a3;
        v45 = 0;
        v46 = 0;
        v44 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v44, *(a2 - 3), *(a2 - 2), (*(a2 - 2) - *(a2 - 3)) >> 4);
        v41 = 0;
        v42 = 0;
        v43 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v41, *a1, a1[1], (a1[1] - *a1) >> 4);
        v7 = v6(&v44, &v41);
        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v7)
        {
          v8 = *a1;
          *a1 = *(v4 - 3);
          *(v4 - 3) = v8;
          v9 = a1[1];
          a1[1] = *(v4 - 2);
          *(v4 - 2) = v9;
          v10 = a1[2];
          a1[2] = *(v4 - 1);
          *(v4 - 1) = v10;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1, a1 + 3, a2 - 3, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1, a1 + 3, a1 + 6, a2 - 3, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3, a3);
      return 1;
  }

LABEL_15:
  v11 = (a1 + 6);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,0>(a1, a1 + 3, a1 + 6, a3);
  v12 = a1 + 9;
  if (a1 + 9 == v4)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  v25 = v4;
  while (1)
  {
    v15 = *a3;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v38, *v12, v12[1], (v12[1] - *v12) >> 4);
    __p = 0;
    v36 = 0;
    v37 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v11->n128_u64[0], v11->n128_i64[1], (v11->n128_u64[1] - v11->n128_u64[0]) >> 4);
    v16 = v15(&v38, &__p);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v16)
    {
      v26 = v14;
      v17 = *v12;
      v27 = *(v12 + 1);
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
      std::vector<CFRange>::__move_assign(v12, v11);
      v18 = v13;
      do
      {
        v19 = *a3;
        v33 = 0;
        v34 = 0;
        v32 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v32, v17, v27.n128_i64[0], (v27.n128_u64[0] - v17) >> 4);
        v20 = *(a1 + v18 + 24);
        v21 = *(a1 + v18 + 32);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v29, v20, v21, (v21 - v20) >> 4);
        v22 = v19(&v32, &v29);
        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
          if ((v22 & 1) == 0)
          {
            v11 = (a1 + v18 + 48);
            goto LABEL_31;
          }
        }

        else if (!v22)
        {
          goto LABEL_31;
        }

        v11 = (v11 - 24);
        std::vector<CFRange>::__move_assign(a1 + v18 + 48, (a1 + v18 + 24));
        v18 -= 24;
      }

      while (v18 != -48);
      v11 = a1;
LABEL_31:
      v4 = v25;
      v23 = v11->n128_u64[0];
      if (v11->n128_u64[0])
      {
        v11->n128_u64[1] = v23;
        operator delete(v23);
        v11->n128_u64[0] = 0;
        v11->n128_u64[1] = 0;
        v11[1].n128_u64[0] = 0;
      }

      v11->n128_u64[0] = v17;
      *(v11 + 8) = v27;
      ++v14;
      if (v26 == 7)
      {
        return v12 + 3 == v25;
      }
    }

    v11 = v12;
    v13 += 24;
    v12 += 3;
    if (v12 == v4)
    {
      return 1;
    }
  }
}

void sub_1C65BFDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 - 136);
  if (v28)
  {
    *(v26 - 128) = v28;
    operator delete(v28);
  }

  v29 = *(v26 - 112);
  if (v29)
  {
    *(v26 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<CFRange>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*,std::vector<CFRange>*>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t (**a4)(void **, void **))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 3 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        v14 = *a4;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v25, *v13, v13[1], (v13[1] - *v13) >> 4);
        __p = 0;
        v23 = 0;
        v24 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, a1->n128_u64[0], a1->n128_i64[1], (a1->n128_u64[1] - a1->n128_u64[0]) >> 4);
        v15 = v14(&v25, &__p);
        if (__p)
        {
          v23 = __p;
          operator delete(__p);
        }

        if (v25)
        {
          v26 = v25;
          operator delete(v25);
        }

        if (v15)
        {
          v16 = *v13;
          *v13 = a1->n128_u64[0];
          a1->n128_u64[0] = v16;
          v17 = v13[1];
          v13[1] = a1->n128_i64[1];
          a1->n128_u64[1] = v17;
          v18 = v13[2];
          v13[2] = a1[1].n128_i64[0];
          a1[1].n128_u64[0] = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(a1, v6, a4, v19);
        v6 -= 24;
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

void sub_1C65C0050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(uint64_t a1, uint64_t (**a2)(void **, void **), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v5 = a4;
  v36 = v4 >> 1;
  if ((v4 >> 1) < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
  {
    return result;
  }

  v9 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
  v10 = (a1 + 24 * v9);
  v11 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
  if (v11 < a3)
  {
    v12 = *a2;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v58, v10->n128_u64[0], v10->n128_i64[1], (v10->n128_u64[1] - v10->n128_u64[0]) >> 4);
    v13 = v10[1].n128_i64[1];
    v14 = v10[2].n128_i64[0];
    v55 = 0;
    v56 = 0;
    v57 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v55, v13, v14, (v14 - v13) >> 4);
    v15 = v12(&v58, &v55);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v15)
    {
LABEL_8:
      v10 = (v10 + 24);
      v9 = v11;
    }
  }

LABEL_9:
  v16 = *a2;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v52, v10->n128_u64[0], v10->n128_i64[1], (v10->n128_u64[1] - v10->n128_u64[0]) >> 4);
  __p = 0;
  v50 = 0;
  v51 = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, *v5, v5[1], (v5[1] - *v5) >> 4);
  v17 = v16(&v52, &__p);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if ((v17 & 1) == 0)
  {
    v19 = *v5;
    v20 = *(v5 + 1);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    v33 = v20;
    v21 = v20;
    v34 = a1;
    v35 = v19;
    v22 = (v20 - v19) >> 4;
    while (1)
    {
      v23 = v10;
      std::vector<CFRange>::__move_assign(v5, v10);
      if (v36 < v9)
      {
LABEL_30:
        v32 = v23->n128_u64[0];
        if (v23->n128_u64[0])
        {
          v23->n128_u64[1] = v32;
          operator delete(v32);
          v23->n128_u64[0] = 0;
          v23->n128_u64[1] = 0;
          v23[1].n128_u64[0] = 0;
        }

        v23->n128_u64[0] = v35;
        result = v33;
        *(v23 + 8) = v33;
        return result;
      }

      v24 = 2 * v9;
      v9 = (2 * v9) | 1;
      v10 = (v34 + 24 * v9);
      v25 = v24 + 2;
      if (v24 + 2 < a3)
      {
        v26 = *a2;
        v47 = 0;
        v48 = 0;
        v46 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v46, v10->n128_u64[0], v10->n128_i64[1], (v10->n128_u64[1] - v10->n128_u64[0]) >> 4);
        v27 = v10[1].n128_i64[1];
        v28 = v10[2].n128_i64[0];
        v43 = 0;
        v44 = 0;
        v45 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v43, v27, v28, (v28 - v27) >> 4);
        v29 = v26(&v46, &v43);
        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (!v46)
        {
          if (!v29)
          {
            goto LABEL_22;
          }

LABEL_21:
          v10 = (v10 + 24);
          v9 = v25;
          goto LABEL_22;
        }

        v47 = v46;
        operator delete(v46);
        if (v29)
        {
          goto LABEL_21;
        }
      }

LABEL_22:
      v30 = *a2;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v40, v10->n128_u64[0], v10->n128_i64[1], (v10->n128_u64[1] - v10->n128_u64[0]) >> 4);
      v37 = 0;
      v38 = 0;
      v39 = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v37, v35, v21, v22);
      v31 = v30(&v40, &v37);
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      v5 = v23;
      if (v31)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

void sub_1C65C03A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 136);
  if (v31)
  {
    *(v29 - 128) = v31;
    operator delete(v31);
  }

  __pa = *(v29 - 112);
  if (__pa)
  {
    *(v29 - 104) = __pa;
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(__n128 *a1, uint64_t a2, uint64_t (**a3)(void **, void **), uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = a1->n128_u64[0];
    v8 = a1->n128_u64[1];
    v9 = a1[1].n128_u64[0];
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1->n128_u64[0] = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 24);
    if (v10 == (a2 - 24))
    {
      v15 = v10->n128_u64[0];
      if (v11->n128_u64[0])
      {
        v11->n128_u64[1] = v15;
        operator delete(v15);
        v11->n128_u64[0] = 0;
        v11->n128_u64[1] = 0;
        v11[1].n128_u64[0] = 0;
      }

      v11->n128_u64[0] = v7;
      v11->n128_u64[1] = v8;
      v11[1].n128_u64[0] = v9;
    }

    else
    {
      std::vector<CFRange>::__move_assign(v10, (a2 - 24));
      v13 = &v11[1].n128_i64[1];
      v14 = *v12;
      if (*v12)
      {
        *(a2 - 16) = v14;
        operator delete(v14);
        *v12 = 0;
        *(a2 - 16) = 0;
        *(a2 - 8) = 0;
      }

      *(a2 - 24) = v7;
      *(a2 - 16) = v8;
      *(a2 - 8) = v9;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(a1, v13, a3, 0xAAAAAAAAAAAAAAABLL * ((v13 - a1) >> 3));
    }
  }
}

void sub_1C65C0590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(__n128 *a1, uint64_t (**a2)(void **, void **), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    v9 = a1 + 3 * v6;
    a1 = (v9 + 3);
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_8;
    }

    v12 = *a2;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v21, v9[3], v9[4], (v9[4] - v9[3]) >> 4);
    __p = 0;
    v19 = 0;
    v20 = 0;
    v13 = v9[6];
    v14 = v9[7];
    v15 = (v9 + 6);
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v13, v14, (v14 - v13) >> 4);
    v16 = v12(&v21, &__p);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      a1 = v15;
      v6 = v11;
      goto LABEL_8;
    }

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_8:
    std::vector<CFRange>::__move_assign(v8, a1);
  }

  while (v6 <= v7);
  return a1;
}

void sub_1C65C06D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::vector<CFRange>,std::vector<CFRange>),std::vector<CFRange>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(void **, void **), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 24 * (v4 >> 1));
    v10 = *a3;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v34, v9->n128_u64[0], v9->n128_i64[1], (v9->n128_u64[1] - v9->n128_u64[0]) >> 4);
    v11 = *(a2 - 24);
    v12 = *(a2 - 16);
    v13 = (a2 - 24);
    __p = 0;
    v32 = 0;
    v33 = 0;
    std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&__p, v11, v12, (v12 - v11) >> 4);
    v14 = v10(&v34, &__p);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v14)
    {
      v16 = *(a2 - 24);
      v17 = *(a2 - 16);
      v13->n128_u64[0] = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v24 = v17;
      v18 = v17;
      v19 = (v17 - v16) >> 4;
      do
      {
        v20 = v9;
        std::vector<CFRange>::__move_assign(v13, v9);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v21 = *a3;
        v29 = 0;
        v30 = 0;
        v28 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v28, v9->n128_u64[0], v9->n128_i64[1], (v9->n128_u64[1] - v9->n128_u64[0]) >> 4);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(&v25, v16, v18, v19);
        v22 = v21(&v28, &v25);
        if (v25)
        {
          v26 = v25;
          operator delete(v25);
        }

        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        v13 = v20;
      }

      while ((v22 & 1) != 0);
      v23 = v20->n128_u64[0];
      if (v20->n128_u64[0])
      {
        v20->n128_u64[1] = v23;
        operator delete(v23);
        v20->n128_u64[0] = 0;
        v20->n128_u64[1] = 0;
        v20[1].n128_u64[0] = 0;
      }

      v20->n128_u64[0] = v16;
      result = v24;
      *(v20 + 8) = v24;
    }
  }

  return result;
}

void sub_1C65C08B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<CFRange>>::__construct_one_at_end[abi:ne200100]<std::vector<CFRange> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<CFRange>>::__emplace_back_slow_path<std::vector<CFRange> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
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
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C65C0A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<CFRange>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<CFRange>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<CFRange>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<CFRange>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void QP::LexemeConverter::~LexemeConverter(QP::LexemeConverter *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    QP::Transcriber::~Transcriber(v3);
    MEMORY[0x1C695B850]();
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    MEMORY[0x1C695B850](v4, 0x60C4044C4A2DFLL);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    QP::DateConverter::~DateConverter(v5);
    MEMORY[0x1C695B850]();
  }

  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::shared_ptr<QP::Lexeme>::shared_ptr[abi:ne200100]<QP::Lexeme,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1C65C0D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QP::Lexeme>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<QP::Lexeme>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    QP::Lexeme::~Lexeme(v2);
    MEMORY[0x1C695B850]();
  }

  return a1;
}

void std::__shared_ptr_pointer<QP::Lexeme *,std::shared_ptr<QP::Lexeme>::__shared_ptr_default_delete<QP::Lexeme,QP::Lexeme>,std::allocator<QP::Lexeme>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void **std::__shared_ptr_pointer<QP::Lexeme *,std::shared_ptr<QP::Lexeme>::__shared_ptr_default_delete<QP::Lexeme,QP::Lexeme>,std::allocator<QP::Lexeme>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    QP::Lexeme::~Lexeme(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<QP::Lexeme *,std::shared_ptr<QP::Lexeme>::__shared_ptr_default_delete<QP::Lexeme,QP::Lexeme>,std::allocator<QP::Lexeme>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::string>::find<std::string>(uint64_t a1, void **a2)
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

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
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

void sub_1C65C1110(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

std::string *std::__shared_ptr_emplace<QP::Lexeme>::__shared_ptr_emplace[abi:ne200100]<char const(&)[9],CFRange &,std::allocator<QP::Lexeme>,0>(std::string *a1, char *a2, uint64_t a3)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8438;
  std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[9],CFRange &,QP::Lexeme*>(a1 + 1, a2, a3);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::Lexeme,char const(&)[9],CFRange &,QP::Lexeme*>(std::string *a1, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  QP::Lexeme::Lexeme(a1, __p, *a3, *(a3 + 8));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1C65C1360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getEnumValueFromIntentString(uint64_t a1)
{
  v1 = [intentNameToEnumMapping objectForKeyedSubscript:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t getEnumValueFromIntentArgString(uint64_t a1)
{
  v1 = [argNameToEnumMapping objectForKeyedSubscript:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double QP::LLMParser::LLMParser(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  *(a1 + 16) = *a4;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

void QP::LLMParser::enumerateParses(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v5 = *(a1 + 56);
  for (i = *(a1 + 64); v5 != i; v5 += 2)
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

void sub_1C65C1574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

CFStringRef QP::LLMParser::createDisplayDate(QP::LLMParser *this)
{
  v2 = *MEMORY[0x1E695E480];
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0x333uLL);
  CurrentTime = getCurrentTime(*(*this + 96), *(*this + 80));
  v5 = CFDateCreate(v2, CurrentTime);
  if (v5)
  {
    StringWithDate = CFDateFormatterCreateStringWithDate(v2, ISO8601Formatter, v5);
    CFRelease(v5);
    if (!ISO8601Formatter)
    {
      return StringWithDate;
    }

    goto LABEL_5;
  }

  StringWithDate = 0;
  if (ISO8601Formatter)
  {
LABEL_5:
    CFRelease(ISO8601Formatter);
  }

  return StringWithDate;
}

void sub_1C65C1648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFDate const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

void QP::LLMParser::safeMakeGroupAttribute(uint64_t **a1@<X1>, uint64_t **a2@<X2>, uint64_t **a3@<X8>)
{
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = a1[1];
      v9[0] = *a1;
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

    v7 = a1[1];
    *a3 = *a1;
    a3[1] = v7;
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v6 = a2[1];
    *a3 = v3;
    a3[1] = v6;
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_1C65C1728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void QP::ParseAttribute::makeGroupAttribute(uint64_t **a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (**a1 >= **a2)
  {
    v6 = **a2;
  }

  else
  {
    v6 = **a1;
  }

  (*a1)[1];
  (*a2)[1];
  *a3 = 0;
  a3[1] = 0;
  v8 = v4[2];
  v7 = v4[3];
  v10 = v5[2];
  v9 = v5[3];
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange,int,int,0>();
}

void sub_1C65C188C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void QP::LLMParser::createAttribute(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = a2;
  v9 = a3;
  v6 = a1;
  v7 = 0;
  *a4 = 0;
  a4[1] = 0;
  LODWORD(v4[0]) = 0;
  v5 = 0;
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,int,int,0>();
}

void sub_1C65C19CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void QP::LLMParser::gatherAttributes(QP::LLMParser *this@<X0>, const __CFString *DisplayDate@<X1>, CFRange a3@<0:X4, 8:X5>, CFStringRef theString1@<X6>, void *a5@<X8>, const __CFArray *a6, const __CFArray *a7, const __CFDictionary *a8, BOOL a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = a3;
  *a5 = 0;
  a5[1] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (CFStringsAreEqual(theString1, kQPParseAttributeFlightLocationKey) || CFStringsAreEqual(theString1, kQPParseAttributeFlightArrivalLocationKey) || CFStringsAreEqual(theString1, kQPParseAttributeFlightDepartureLocationKey) || CFStringsAreEqual(theString1, kQPParseAttributeRestaurantActionKey) || CFStringsAreEqual(theString1, kQPParseAttributeFlightActionKey) || CFStringsAreEqual(theString1, kQPParseAttributeHotelActionKey) || CFStringsAreEqual(theString1, kQPParseAttributeEarliestActionKey) || CFStringsAreEqual(theString1, kQPParseAttributeLatestActionKey) || CFStringsAreEqual(theString1, kQPParseAttributeMediaKey))
  {
    if (SHIBYTE(v44) < 0)
    {
      v43 = 4;
      v14 = v42;
    }

    else
    {
      HIBYTE(v44) = 4;
      v14 = &v42;
    }

    strcpy(v14, "Text");
    if (CFStringsAreEqual(theString1, kQPParseAttributeEarliestActionKey) || CFStringsAreEqual(theString1, kQPParseAttributeLatestActionKey))
    {
      DisplayDate = QP::LLMParser::createDisplayDate(this);
    }

    QP::getUTF8StringFromCFString(DisplayDate, __p);
    std::allocate_shared[abi:ne200100]<QP::LexemeValue,std::allocator<QP::LexemeValue>,std::string &,std::string,CFRange &,0>();
  }

  if (CFStringsAreEqual(theString1, kQPParseAttributeFlagColorKey))
  {
    QP::getUTF8StringFromCFString(DisplayDate, __p);
    std::allocate_shared[abi:ne200100]<QP::LexemeValue,std::allocator<QP::LexemeValue>,std::string &,std::string,CFRange &,0>();
  }

  if (!CFStringsAreEqual(theString1, kQPParseAttributeGroundedPersonKey))
  {
    if (CFStringsAreEqual(theString1, kQPParseAttributeSenderKey) || CFStringsAreEqual(theString1, kQPParseAttributeSenderHandleKey) || CFStringsAreEqual(theString1, kQPParseAttributeRecipientKey) || CFStringsAreEqual(theString1, kQPParseAttributeRecipientHandleKey) || CFStringsAreEqual(theString1, kQPParseAttributeTaggedPersonKey))
    {
      if (!CFStringsAreEqual(theString1, kQPParseAttributeSenderKey) && !CFStringsAreEqual(theString1, kQPParseAttributeRecipientKey) && !CFStringsAreEqual(theString1, kQPParseAttributeTaggedPersonKey))
      {
        a6 = a7;
      }

      v32 = a6;
      if ([(__CFArray *)v32 count])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        obj = v32;
        if ([(__CFArray *)obj countByEnumeratingWithState:&v34 objects:v46 count:16])
        {
          *v35;
          *v35;
          *&v41 = [**(&v34 + 1) UTF8String];
          std::allocate_shared[abi:ne200100]<QP::LexemeValue,std::allocator<QP::LexemeValue>,std::string &,char const*,CFRange &,0>();
        }
      }

      if (CFStringsAreEqual(theString1, kQPParseAttributeTaggedPersonKey))
      {
        if (SHIBYTE(v44) < 0)
        {
          v43 = 12;
          v19 = v42;
        }

        else
        {
          HIBYTE(v44) = 12;
          v19 = &v42;
        }

        *(v19 + 2) = 1852797810;
        *v19 = *"TaggedPerson";
        v21 = v19 + 12;
      }

      else
      {
        if (SHIBYTE(v44) < 0)
        {
          v43 = 6;
          v20 = v42;
        }

        else
        {
          HIBYTE(v44) = 6;
          v20 = &v42;
        }

        *(v20 + 2) = 28271;
        *v20 = 1936876880;
        v21 = v20 + 6;
      }

      *v21 = 0;
      std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
    }

    if (CFStringsAreEqual(theString1, kQPParseAttributeReadKey) || CFStringsAreEqual(theString1, kQPParseAttributeUnreadKey) || CFStringsAreEqual(theString1, kQPParseAttributeFlaggedKey) || CFStringsAreEqual(theString1, kQPParseAttributeRepliedKey) || CFStringsAreEqual(theString1, kQPParseAttributeSharedKey))
    {
      *&v41 = 0;
      if (CFStringsAreEqual(theString1, kQPParseAttributeReadKey))
      {
        if (SHIBYTE(v44) < 0)
        {
          v43 = 10;
          v22 = v42;
        }

        else
        {
          HIBYTE(v44) = 10;
          v22 = &v42;
        }

        strcpy(v22, "ReadStatus");
      }

      else
      {
        if (CFStringsAreEqual(theString1, kQPParseAttributeUnreadKey))
        {
          if (SHIBYTE(v44) < 0)
          {
            v43 = 10;
            v23 = v42;
          }

          else
          {
            HIBYTE(v44) = 10;
            v23 = &v42;
          }

          strcpy(v23, "ReadStatus");
          v24 = "0";
          goto LABEL_72;
        }

        if (CFStringsAreEqual(theString1, kQPParseAttributeFlaggedKey))
        {
          if (SHIBYTE(v44) < 0)
          {
            v43 = 13;
            v25 = v42;
          }

          else
          {
            HIBYTE(v44) = 13;
            v25 = &v42;
          }

          v26 = "FlaggedStatus";
        }

        else
        {
          if (!CFStringsAreEqual(theString1, kQPParseAttributeRepliedKey))
          {
            if (!CFStringsAreEqual(theString1, kQPParseAttributeSharedKey))
            {
LABEL_73:
              std::allocate_shared[abi:ne200100]<QP::LexemeStatus,std::allocator<QP::LexemeStatus>,std::string &,char const*&,CFRange &,0>();
            }

            if (SHIBYTE(v44) < 0)
            {
              v43 = 12;
              v27 = v42;
            }

            else
            {
              HIBYTE(v44) = 12;
              v27 = &v42;
            }

            strcpy(v27, "SharedStatus");
            goto LABEL_66;
          }

          if (SHIBYTE(v44) < 0)
          {
            v43 = 13;
            v25 = v42;
          }

          else
          {
            HIBYTE(v44) = 13;
            v25 = &v42;
          }

          v26 = "RepliedStatus";
        }

        *v25 = *v26;
        *(v25 + 5) = *(v26 + 5);
        v25[13] = 0;
      }

LABEL_66:
      v24 = "1";
LABEL_72:
      *&v41 = v24;
      goto LABEL_73;
    }

    if (CFStringsAreEqual(theString1, kQPParseAttributeAttachmentKey))
    {
      if (SHIBYTE(v44) < 0)
      {
        v43 = 10;
        v28 = v42;
      }

      else
      {
        HIBYTE(v44) = 10;
        v28 = &v42;
      }

      *(v28 + 4) = 29806;
      v30 = "Attachment";
      goto LABEL_95;
    }

    if (CFStringsAreEqual(theString1, kQPParseAttributeReceivedKey))
    {
      if (SHIBYTE(v44) < 0)
      {
        v43 = 14;
        v29 = v42;
      }

      else
      {
        HIBYTE(v44) = 14;
        v29 = &v42;
      }

      qmemcpy(v29, "ReceivedAction", 14);
      v31 = v29 + 14;
    }

    else
    {
      if (CFStringsAreEqual(theString1, kQPParseAttributeSentKey))
      {
        HIBYTE(v44) = 10;
        v28 = &v42;
        LOWORD(v43) = 28271;
        v30 = "SentAction";
LABEL_95:
        *v28 = *v30;
        v31 = v28 + 10;
        goto LABEL_100;
      }

      HIBYTE(v44) = 4;
      LODWORD(v42) = 1954047316;
      v31 = &v42 + 4;
    }

LABEL_100:
    *v31 = 0;
    std::allocate_shared[abi:ne200100]<QP::Lexeme,std::allocator<QP::Lexeme>,std::string &,CFRange &,0>();
  }

  v16 = a8;
  if ([(__CFDictionary *)v16 count])
  {
    if (SHIBYTE(v44) < 0)
    {
      v43 = 14;
      v17 = v42;
    }

    else
    {
      HIBYTE(v44) = 14;
      v17 = &v42;
    }

    strcpy(v17, "GroundedPerson");
    v39 = 0u;
    v40 = 0u;
    *__p = 0u;
    QP::getVisualIdsAndScores(v16, __p);
    std::allocate_shared[abi:ne200100]<QP::LexemeGroundedPerson,std::allocator<QP::LexemeGroundedPerson>,std::string &,std::vector<std::string> &,std::vector<std::pair<double,double>> &,CFRange &,0>();
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1C65C27E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  v74 = *(v71 + 8);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  _Unwind_Resume(a1);
}

void QP::getVisualIdsAndScores(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v2 = a1;
  memset(v37, 0, sizeof(v37));
  __src = 0;
  v35 = 0;
  v36 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v4)
  {
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = [v2 objectForKeyedSubscript:{v7, v27}];
        v9 = [v8 firstObject];
        [v9 doubleValue];
        v11 = v10;

        v12 = [v8 lastObject];
        [v12 doubleValue];
        v14 = v13;

        v15 = v7;
        std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
        std::vector<std::string>::push_back[abi:ne200100](v37, __p);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        v16 = v35;
        if (v35 >= v36)
        {
          v18 = __src;
          v19 = v35 - __src;
          v20 = (v35 - __src) >> 4;
          v21 = v20 + 1;
          if ((v20 + 1) >> 60)
          {
            std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
          }

          v22 = v36 - __src;
          if ((v36 - __src) >> 3 > v21)
          {
            v21 = v22 >> 3;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF0)
          {
            v23 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(&__src, v23);
          }

          v24 = (16 * v20);
          *v24 = v11;
          v24[1] = v14;
          v17 = 16 * v20 + 16;
          memcpy(0, v18, v19);
          v25 = __src;
          __src = 0;
          v35 = v17;
          v36 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v35 = v11;
          *(v16 + 1) = v14;
          v17 = (v16 + 16);
        }

        v35 = v17;
      }

      v4 = [v3 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v4);
  }

  std::pair<std::vector<std::string>,std::vector<std::pair<double,double>>>::pair[abi:ne200100]<std::vector<std::string>&,std::vector<std::pair<double,double>>&,0>(v27, v37, &__src);
  if (__src)
  {
    v35 = __src;
    operator delete(__src);
  }

  __src = v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1C65C2CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *__p, char *a25, uint64_t a26, char a27)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  __p = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::vector<std::string>,std::vector<std::pair<double,double>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void QP::LLMParser::parse(QP::LLMParser *a1, const __CFDictionary *a2, char a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3)
  {
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v8 = llmParserLogger(void)::log;
    if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*a1 + 48);
      v15 = 134217984;
      v16 = v9;
      _os_log_impl(&dword_1C6584000, v8, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Parsing using LLMParse", &v15, 0xCu);
    }

    QP::LLMParser::parseInternal(a1, a2, v7);
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v10 = llmParserLogger(void)::log;
    if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*a1 + 48);
      v15 = 134217984;
      v16 = v11;
      v12 = "[QPNLU][qid=%ld] Finished parsing using LLMParse";
LABEL_14:
      _os_log_impl(&dword_1C6584000, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
    }
  }

  else
  {
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v10 = llmParserLogger(void)::log;
    if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*a1 + 48);
      v15 = 134217984;
      v16 = v13;
      v12 = "[QPNLU][qid=%ld] Skipping parsing using LLMParse for the same queryID";
      goto LABEL_14;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void QP::LLMParser::parseInternal(QP::LLMParser *a1, const __CFDictionary *a2, void *a3)
{
  v179 = *MEMORY[0x1E69E9840];
  v125 = a3;
  v126 = a1;
  if (QP::LLMParser::parseInternal(__CFDictionary const*,void({block_pointer})(__CFString const*,std::shared_ptr<QP::ParseAttribute> &,long,std::string,CFRange,std::vector<std::shared_ptr<QP::Lexeme>> &,BOOL *))::onceToken != -1)
  {
    QP::LLMParser::parseInternal();
  }

  QP::LLMParser::clear(a1);
  if (s3rTestEnvironment)
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  QP::ParserConfiguration::setS3RTestingEnvironment(*a1, *v5);
  if (s3rTestEnvironment == 1)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 stringForKey:@"testID"];

    if (v7)
    {
      QP::ParserConfiguration::setS3RTestID(*v126, v7);
    }

    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 stringForKey:@"testVersion"];

    a1 = v126;
    if (v9)
    {
      QP::ParserConfiguration::setS3RTestVersion(*v126, v9);
    }
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"kMDQueryOptionSPQUParse");
    v11 = Value;
    if (Value)
    {
      v12 = CFGetTypeID(Value);
      if (v12 == CFDictionaryGetTypeID())
      {
        if (llmParserLogger(void)::token != -1)
        {
          QP::LLMParser::parse();
          a1 = v126;
        }

        v13 = llmParserLogger(void)::log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*a1 + 48);
          LODWORD(buf[0].__locale_) = 134217984;
          *(&buf[0].__locale_ + 4) = v14;
          _os_log_impl(&dword_1C6584000, v13, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Got non-empty QU Parse from LLM spQUParse", buf, 0xCu);
        }

        if (llmParserLogger(void)::token != -1)
        {
          QP::LLMParser::parse();
        }

        v15 = llmParserLogger(void)::log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          QP::LLMParser::parseInternal(v126, v11, v15);
        }

        memset(v150, 0, sizeof(v150));
        std::map<std::string,std::map<std::string,std::set<std::string>>>::map[abi:ne200100](v150, *(v126 + 32) + 456);
        memset(v149, 0, sizeof(v149));
        std::map<std::string,std::string>::map[abi:ne200100](v149, *(v126 + 32) + 480);
        v148[0] = 0;
        v147 = 0;
        v148[1] = 0;
        std::map<std::string,std::string>::map[abi:ne200100](&v147, *(v126 + 32) + 504);
        v145 = 0;
        v144 = 0;
        v146 = 0;
        v143 = 0;
        v121 = CFDictionaryGetValue(v11, @"isPQA");
        if (!v121)
        {
          v121 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
        }

        v120 = CFDictionaryGetValue(v11, @"intentLabel");
        v118 = [MEMORY[0x1E696AD98] numberWithInteger:getEnumValueFromIntentString(v120)];
        theArray = CFDictionaryGetValue(v11, @"arguments");
        v142 = 0;
        if (enableSearchToolMockShippingOrderQU == 1 && theArray)
        {
          theArray = QP::createMockArgumentForShippingOrder(theArray, &v142, v16);
        }

        Count = CFArrayGetCount(theArray);
        v18 = *MEMORY[0x1E695E480];
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        v140 = CFArrayCreateMutable(v18, Count, MEMORY[0x1E695E9C0]);
        alloc = v18;
        v138 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Count <= 0)
        {
          *(v126 + 130) = 0;
        }

        else
        {
          v20 = 0;
          v21 = 0;
          for (i = 0; i < Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            v24 = CFDictionaryGetValue(ValueAtIndex, @"textLabel");
            v25 = v24;
            if (v24)
            {
              if (CFStringHasPrefix(v24, @"QUPP_ARG_APP_ENTITY_TYPE"))
              {
                *(v126 + 129) = 1;
                v26 = *(v126 + 32);
                QP::getUTF8StringFromCFString(v25, buf);
                *(v126 + 120) = QP::ParserGrammar::symbolID(v26, buf);
                if (SHIBYTE(buf[2].__locale_) < 0)
                {
                  operator delete(buf[0].__locale_);
                }

                if (CFStringsAreEqual(v25, @"QUPP_ARG_APP_ENTITY_TYPE_REMINDER"))
                {
                  *(v126 + 132) = 1;
                }

                if (CFStringsAreEqual(v25, @"QUPP_ARG_APP_ENTITY_TYPE_TIMER"))
                {
                  *(v126 + 133) = 1;
                }
              }

              if (CFStringHasPrefix(v25, @"QUPP_ARG_EVENT_TYPE"))
              {
                v27 = *(v126 + 32);
                QP::getUTF8StringFromCFString(v25, buf);
                *(v126 + 122) = QP::ParserGrammar::symbolID(v27, buf);
                if (SHIBYTE(buf[2].__locale_) < 0)
                {
                  operator delete(buf[0].__locale_);
                }
              }

              if (CFStringHasPrefix(v25, @"QUPP_ARG_INFERRED_APP_ENTITY_TYPE"))
              {
                v28 = *(v126 + 32);
                QP::getUTF8StringFromCFString(v25, buf);
                *(v126 + 122) = QP::ParserGrammar::symbolID(v28, buf);
                if (SHIBYTE(buf[2].__locale_) < 0)
                {
                  operator delete(buf[0].__locale_);
                }
              }

              if (CFStringHasPrefix(v25, @"QUPP_ARG_APP_ENTITY_STATUS"))
              {
                if (v20)
                {
                  ++v20;
                }

                else
                {
                  QP::getUTF8StringFromCFString(v25, buf);
                  v29 = std::__tree<std::string>::find<std::string>(&v147, &buf[0].__locale_);
                  if (SHIBYTE(buf[2].__locale_) < 0)
                  {
                    operator delete(buf[0].__locale_);
                  }

                  if (v148 != v29)
                  {
                    QP::getUTF8StringFromCFString(v25, buf);
                    v30 = std::__tree<std::string>::find<std::string>(&v147, &buf[0].__locale_);
                    v31 = (v30 + 56);
                    if (*(v30 + 79) < 0)
                    {
                      v31 = *v31;
                    }

                    v32 = CFStringCreateWithCString(v18, v31, 0x8000100u);
                    if (SHIBYTE(buf[2].__locale_) < 0)
                    {
                      operator delete(buf[0].__locale_);
                    }

                    v33 = *(v126 + 32);
                    QP::getUTF8StringFromCFString(v32, buf);
                    *(v126 + 126) = QP::ParserGrammar::symbolID(v33, buf);
                    if (SHIBYTE(buf[2].__locale_) < 0)
                    {
                      operator delete(buf[0].__locale_);
                    }

                    CFRelease(v32);
                  }

                  v20 = 1;
                }
              }

              if (CFStringsAreEqual(v25, @"QUPP_ARG_TIME"))
              {
                ++v21;
              }
            }
          }

          v34 = 0;
          *(v126 + 131) = v20 == 1;
          *(v126 + 130) = v21 == 1;
          do
          {
            v35 = CFArrayGetValueAtIndex(theArray, v34);
            v36 = CFDictionaryGetValue(v35, @"text");
            v37 = CFDictionaryGetValue(v35, @"textLabel");
            QP::LLMParser::parseArgument(v126, v36, v37, &v143, *(*v126 + 112), Mutable, v138, v140, v34, v150, v149, &v147, &v144, v125);

            ++v34;
          }

          while (v34 < Count);
        }

        v39 = *(v126 + 8);
        v127 = *v126;
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v117 = v140;
        v130 = v138;
        v124 = v118;
        v119 = v39;
        v40 = [MEMORY[0x1E695E000] standardUserDefaults];
        v123 = [v40 objectForKey:@"EnablePersonalizedEmbedding"];

        if (v123 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v131 = [v123 BOOLValue];
        }

        else
        {
          v131 = 0;
        }

        if (llmParserLogger(void)::token != -1)
        {
          QP::LLMParser::parse();
        }

        v41 = llmParserLogger(void)::log;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v127[6];
          LODWORD(buf[0].__locale_) = 134218240;
          *(&buf[0].__locale_ + 4) = v42;
          WORD2(buf[1].__locale_) = 1024;
          *(&buf[1].__locale_ + 6) = v131;
          _os_log_impl(&dword_1C6584000, v41, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Personalized embedding: %d", buf, 0x12u);
        }

        memset(v157, 0, sizeof(v157));
        v158 = 1065353216;
        v132 = objc_opt_new();
        v133 = objc_opt_new();
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v43 = v117;
        v44 = [(__CFArray *)v43 countByEnumeratingWithState:&v153 objects:v167 count:16];
        v139 = v43;
        if (v44)
        {
          v129 = 0;
          v134 = 0;
          v135 = 0;
          v136 = 0;
          *v137 = *v154;
          while (1)
          {
            *v141 = v44;
            v45 = 0;
            do
            {
              if (*v154 != *v137)
              {
                objc_enumerationMutation(v43);
              }

              v46 = *(*(&v153 + 1) + 8 * v45);
              v47 = [v46 valueForKey:kQPQUOutputTokenRawTextKey];
              v48 = [v46 valueForKey:kQPQUOutputTokenKey];
              v49 = [v46 valueForKey:kQPQUOutputTokenArgIdsKey];
              v50 = [v46 valueForKey:kQPQUOutputTokenArgLabelsKey];
              if ([v49 count])
              {
                v51 = [v49 count];
                if (v51 == [v50 count])
                {
                  v52 = [v49 objectAtIndexedSubscript:0];
                  v53 = [v52 integerValue];

                  v152 = v53;
                  v54 = [v50 objectAtIndexedSubscript:0];
                  v55 = v54;
                  if (v136)
                  {
                    v136 = 1;
                    goto LABEL_88;
                  }

                  v136 = 1;
                  if (v152 <= 79)
                  {
                    if (v152 != 14 && v152 != 29)
                    {
LABEL_123:
                      v136 = 0;
                    }
                  }

                  else if (v152 != 80 && v152 != 116 && v152 != 144)
                  {
                    goto LABEL_123;
                  }

LABEL_88:
                  v56 = v135 || v152 == 35 || v152 == 150;
                  v135 = v56;
                  if (v134)
                  {
                    v134 = 1;
                  }

                  else
                  {
                    v58 = v54;
                    if ([v58 hasPrefix:@"QUPP_ARG_APP_ENTITY_TYPE_"])
                    {
                      v134 = 1;
                    }

                    else
                    {
                      v134 = [v58 hasPrefix:@"QUPP_ARG_APP_SOURCE_TYPE_"];
                    }
                  }

                  v59 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &v152);
                  if (!v59)
                  {
                    memset(buf, 0, sizeof(buf));
                    LODWORD(v169) = 1065353216;
                    v59 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::__emplace_unique_key_args<long,long &,std::unordered_map<long,std::vector<std::string>>>(v157, &v152);
                    std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::~__hash_table(buf);
                  }

                  v60 = [v46 valueForKey:kQPQUOutputTokenAttributeIndexesKey];
                  v61 = [v60 objectAtIndexedSubscript:0];
                  v62 = [v61 integerValue];

                  v151 = v62;
                  v63 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v59 + 3, &v151);
                  if (!v63)
                  {
                    memset(buf, 0, 24);
                    v63 = std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::__emplace_unique_key_args<long,long &,std::vector<std::string>>(v59 + 3, &v151);
                    *&__dst = buf;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__dst);
                  }

                  v64 = v48;
                  std::string::basic_string[abi:ne200100]<0>(buf, [v48 UTF8String]);
                  std::vector<std::string>::push_back[abi:ne200100]((v63 + 3), buf);
                  if (SHIBYTE(buf[2].__locale_) < 0)
                  {
                    operator delete(buf[0].__locale_);
                  }

                  if ([v133 containsObject:v47])
                  {
                    v65 = 0;
LABEL_138:

                    goto LABEL_139;
                  }

                  v66 = v152;
                  v67 = v131;
                  if (v152 != 64)
                  {
                    v67 = 0;
                  }

                  if (v67 == 1)
                  {
                    v68 = [(__CFDictionary *)v130 objectForKeyedSubscript:v48];
                    v69 = v68 == 0;

                    if (!v69)
                    {
                      v70 = [(__CFDictionary *)v130 objectForKeyedSubscript:v48];
                      v71 = [v70 allKeys];
                      v72 = [v71 firstObject];

                      if (v72)
                      {
                        v73 = objc_alloc(MEMORY[0x1E696AAB0]);
                        v165 = @"kMDItemPhotosPeoplePersonIdentifiers";
                        v166 = v72;
                        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
                        v65 = [v73 initWithString:v47 attributes:v74];
                      }

                      else
                      {
                        v65 = 0;
                      }

LABEL_133:
                      [v133 addObject:v47];
                      if (v65)
                      {
                        if ([v132 length] && *(v127 + 32) == 1)
                        {
                          v80 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
                          [v132 appendAttributedString:v80];
                        }

                        [v132 appendAttributedString:v65];
                      }

                      goto LABEL_138;
                    }

                    v66 = v152;
                  }

                  if (v66 == 1)
                  {
                    v75 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v47];
                    v76 = [v47 localizedLowercaseString];
                    v77 = v76;
                    std::string::basic_string[abi:ne200100]<0>(&__dst, [v76 UTF8String]);
                    {
                      operator new();
                    }

                    v78 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(QP::isOptionalCalendarSearchTermOneOnOne(std::string const&)::_calendarSearchTermOneOnOneToRemove, &__dst);
                    if (SHIBYTE(v177) < 0)
                    {
                      operator delete(__dst);
                    }

                    v79 = v78 != 0;

                    BYTE4(v129) |= !v79;
                    LOBYTE(v129) = v79 | v129;
                    v65 = v75;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  goto LABEL_133;
                }
              }

LABEL_139:

              ++v45;
              v43 = v139;
            }

            while (v45 != *v141);
            v44 = [(__CFArray *)v139 countByEnumeratingWithState:&v153 objects:v167 count:16];
            if (!v44)
            {
              v81 = v129 ^ 1 | BYTE4(v129);
              goto LABEL_146;
            }
          }
        }

        v134 = 0;
        v135 = 0;
        v136 = 0;
        v81 = 1;
LABEL_146:

        v175 = 0;
        memset(v174, 0, sizeof(v174));
        v173 = 0u;
        v172 = 0u;
        *__p = 0u;
        *__src = 0u;
        v169 = 0u;
        memset(buf, 0, sizeof(buf));
        std::ostringstream::basic_ostringstream[abi:ne200100](buf);
        if (v136)
        {
          *&__dst = 1;
          v82 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst);
          if (v82)
          {
            v83 = v82 + 5;
            v84 = "[Calendar Intent][No valid SEARCH_TERM]";
            v85 = 39;
            do
            {
              v83 = *v83;
              if (!v83)
              {
                goto LABEL_163;
              }

              v86 = v83[4];
              if (v86 - v83[3] != 24)
              {
                break;
              }

              {
                operator new();
              }
            }

            while (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(QP::isOptionalCalendarSuffix(std::string const&)::_calendarSuffixesToRemove, (v86 - 24)));
            if (v81)
            {
LABEL_164:
              v89 = buf + *(buf[0].__locale_ - 3);
              if ((v89[32] & 5) == 0)
              {
                (*(**(v89 + 5) + 32))(&__dst);
                if (!v178)
                {
                  goto LABEL_167;
                }
              }

              *&__dst = 5;
              if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst))
              {
                goto LABEL_167;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "[No LOCATION]", 13);
              if ((BYTE8(v173) & 0x10) != 0)
              {
                v115 = v173;
                if (v173 < __src[1])
                {
                  *&v173 = __src[1];
                  v115 = __src[1];
                }

                locale = __src[0];
              }

              else
              {
                if ((BYTE8(v173) & 8) == 0)
                {
                  v112 = 0;
                  HIBYTE(v177) = 0;
LABEL_206:
                  *(&__dst + v112) = 0;
                  if (*(v126 + 159) < 0)
                  {
                    operator delete(*(v126 + 136));
                  }

                  *(v126 + 136) = __dst;
                  *(v126 + 152) = v177;
                  goto LABEL_167;
                }

                locale = buf[3].__locale_;
                v115 = *(&v169 + 1);
              }

              v112 = v115 - locale;
              if ((v115 - locale) >= 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v112 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v177) = v115 - locale;
              if (v112)
              {
                memmove(&__dst, locale, v112);
              }

              goto LABEL_206;
            }

            v84 = "[Calendar Intent][1:1 and No none-1:1 SEARCH_TERM]";
            v85 = 50;
          }

          else
          {
            v84 = "[Calendar Intent][No valid SEARCH_TERM]";
            v85 = 39;
          }

LABEL_163:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v84, v85);
          goto LABEL_164;
        }

        *&__dst = 1;
        if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst))
        {
          goto LABEL_167;
        }

        if (v135)
        {
          v87 = "[No SEARCH_TERM][Contact Intent]";
          v88 = 32;
        }

        else
        {
          *&__dst = 64;
          if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst))
          {
LABEL_187:
            v113 = buf + *(buf[0].__locale_ - 3);
            if ((v113[32] & 5) != 0 || ((*(**(v113 + 5) + 32))(&__dst), v178))
            {
              *&__dst = 5;
              v114 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst);
              if (v124)
              {
                if (!v114 && [v124 intValue] != 2 && objc_msgSend(v124, "intValue") != 3)
                {
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "[No LOCATION/EVENT_TYPE]", 24);
                  std::stringbuf::str[abi:ne200100](&buf[1], &__dst);
                  if (*(v126 + 159) < 0)
                  {
                    operator delete(*(v126 + 136));
                  }

                  *(v126 + 136) = __dst;
                  *(v126 + 152) = v177;
                }
              }
            }

LABEL_167:
            buf[0] = *MEMORY[0x1E69E54E8];
            *(buf + *(buf[0].__locale_ - 3)) = *(MEMORY[0x1E69E54E8] + 24);
            buf[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
            if (SHIBYTE(v172) < 0)
            {
              operator delete(__p[1]);
            }

            buf[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
            std::locale::~locale(&buf[2]);
            std::ostream::~ostream();
            MEMORY[0x1C695B7D0](v174);
            if (llmParserLogger(void)::token != -1)
            {
              QP::LLMParser::parse();
            }

            v90 = llmParserLogger(void)::log;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = v127[6];
              v92 = [v132 string];
              v94 = QP::QPLLMRedactString(v92, v93);
              LODWORD(buf[0].__locale_) = 134218242;
              *(&buf[0].__locale_ + 4) = v91;
              WORD2(buf[1].__locale_) = 2112;
              *(&buf[1].__locale_ + 6) = v94;
              _os_log_impl(&dword_1C6584000, v90, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Visual embedding string - (%@)", buf, 0x16u);
            }

            v95 = v132;
            Copy = CFAttributedStringCreateCopy(alloc, v95);

            std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::~__hash_table(v157);
            nlp::CFScopedPtr<__CFAttributedString const*>::reset((v126 + 104), Copy);
            if (v119)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v119);
            }

            v97 = [(__CFDictionary *)v130 objectForKeyedSubscript:@"me"];
            v98 = v97 == 0;

            if (v98)
            {
              v99 = getMeCardData();
              [(__CFDictionary *)v130 setObject:v99 forKeyedSubscript:@"me"];
            }

            v163[0] = kQPParseResultEcrGroundedKey;
            v163[1] = kQPQUOutputIsPQAKey;
            v164[0] = v130;
            v164[1] = v121;
            v164[2] = kQPQUParseTypeLLM;
            v163[2] = kQPQUOutputParseTypeKey;
            v163[3] = kQPQUOutputIntentIdsKey;
            v162 = v124;
            v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
            v164[3] = v100;
            v163[4] = kQPQUOutputIntentLabelsKey;
            v161 = v120;
            v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v161 count:1];
            v164[4] = v101;
            v163[5] = kQPQUOutputIntentScoresKey;
            v102 = [MEMORY[0x1E696AD98] numberWithInt:1];
            v160 = v102;
            v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v160 count:1];
            v164[5] = v103;
            v163[6] = kQPQUOutputIsUnsafeKey;
            v104 = [MEMORY[0x1E696AD98] numberWithBool:0];
            v164[6] = v104;
            v163[7] = kQPQUOutputUnsafeConfidenceScoreKey;
            v105 = [MEMORY[0x1E696AD98] numberWithInt:0];
            v159 = v105;
            v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
            v164[7] = v106;
            v164[8] = v139;
            v163[8] = kQPQUOutputTokenInfoKey;
            v163[9] = @"debugDescription";
            v164[9] = @"LLM QU";
            v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:v163 count:10];

            *&__dst = v107;
            if (llmParserLogger(void)::token != -1)
            {
              QP::LLMParser::parse();
            }

            v108 = llmParserLogger(void)::log;
            if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
            {
              v109 = *(*v126 + 48);
              v110 = *(v126 + 48);
              LODWORD(buf[0].__locale_) = 134218499;
              *(&buf[0].__locale_ + 4) = v109;
              WORD2(buf[1].__locale_) = 2117;
              *(&buf[1].__locale_ + 6) = v110;
              HIWORD(buf[2].__locale_) = 2117;
              buf[3].__locale_ = v130;
              _os_log_impl(&dword_1C6584000, v108, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] groundings from ECR output for query %{sensitive}@ is %{sensitive}@", buf, 0x20u);
            }

            buf[1].__locale_ = 0;
            buf[0].__locale_ = 0;
            v167[0] = (v145 - v144) >> 4;
            std::allocate_shared[abi:ne200100]<QP::Parse,std::allocator<QP::Parse>,__CFString *&,unsigned long,long &,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,0>();
          }

          if (v134)
          {
            v87 = "[No SEARCH_TERM][No PERSON][Filter Intent]";
            v88 = 42;
          }

          else
          {
            *&__dst = 65;
            if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst))
            {
              goto LABEL_187;
            }

            *&__dst = 66;
            if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst))
            {
              goto LABEL_187;
            }

            *&__dst = 104;
            if (std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(v157, &__dst))
            {
              goto LABEL_187;
            }

            v87 = "[No SEARCH_TERM][No PERSON][No SENDER/RECEIVER/SELF]";
            v88 = 52;
          }
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v87, v88);
        goto LABEL_187;
      }
    }
  }

  if (llmParserLogger(void)::token != -1)
  {
    QP::LLMParser::parse();
    a1 = v126;
  }

  v38 = llmParserLogger(void)::log;
  if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_ERROR))
  {
    QP::LLMParser::parseInternal(a1, v38);
  }

  v111 = *MEMORY[0x1E69E9840];
}

void sub_1C65C4FC0(unint64_t a1)
{
  STACK[0x2D8] = a1;
  v2 = (v1 - 105);
  v3 = -144;
  v4 = (v1 - 105);
  while (1)
  {
    v5 = *v4;
    v4 -= 24;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 24;
    if (!v3)
    {
      MEMORY[0x1C695B850](STACK[0x2B0], 0x10A0C408EF24B1CLL);
      std::ostringstream::~ostringstream(&STACK[0x530], MEMORY[0x1E69E54E8]);
      MEMORY[0x1C695B7D0](&STACK[0x5A0]);

      std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::~__hash_table(&STACK[0x3B0]);
      v6 = STACK[0x238] == 0;

      if (!v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x238]);
      }

      STACK[0x530] = &STACK[0x300];
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x530]);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x318], STACK[0x320]);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&STACK[0x330], STACK[0x338]);
      std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(&STACK[0x348], STACK[0x350]);

      _Unwind_Resume(STACK[0x2D8]);
    }
  }
}

void QP::LLMParser::groundECRIdentifiers(std::__shared_weak_count **this, __CFString *a2, __CFString *a3, __CFString *a4, const __CFLocale *a5, __CFDictionary *a6, BOOL *a7, uint64_t a8, BOOL *a9, BOOL *a10)
{
  v129 = *MEMORY[0x1E69E9840];
  v103 = a6;
  v104 = a2;
  v100 = a3;
  v105 = a4;
  if ([(__CFString *)a4 length]< 0xA)
  {
    v14 = a4;
    v101 = a4;
  }

  else
  {
    v101 = [(__CFString *)a4 substringFromIndex:9];
    v14 = a4;
  }

  if (([(__CFString *)v14 isEqualToString:@"QUPP_ARG_PERSON"]& 1) == 0 && ([(__CFString *)a4 isEqualToString:@"QUPP_ARG_PERSON_SENDER"]& 1) == 0 && ![(__CFString *)a4 isEqualToString:@"QUPP_ARG_PERSON_RECEIVER"])
  {
    goto LABEL_88;
  }

  if ([(__CFString *)v104 isEqualToString:@"SELF"])
  {
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v15 = llmParserLogger(void)::log;
    if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v82 = (*this)[2].__vftable;
      *buf = 134218498;
      v117 = v82;
      v118 = 2048;
      v119 = a8;
      v120 = 2112;
      v121 = v101;
      _os_log_debug_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld][%lu][%@] Received token value SELF", buf, 0x20u);
    }

    if (a7)
    {
      *a7 = 1;
    }

    if (a9)
    {
      v16 = [(__CFDictionary *)v103 objectForKeyedSubscript:@"me"];
      v17 = v16 != 0;
      *a9 = v17;

      if (v17)
      {
        v18 = [(__CFDictionary *)v103 objectForKeyedSubscript:@"me"];
        v19 = [v18 objectForKeyedSubscript:@"personNames"];
        if ([v19 count])
        {
          v20 = 1;
        }

        else
        {
          v73 = [(__CFDictionary *)v103 objectForKeyedSubscript:@"me"];
          v74 = [v73 objectForKeyedSubscript:@"personEmails"];
          v20 = [v74 count] != 0;
        }

        v75 = !v20;
        if (!a10)
        {
          v75 = 1;
        }

        if ((v75 & 1) == 0)
        {
          v102 = 0;
          v37 = 0;
          v36 = 0;
          v42 = 0;
          v41 = 0;
          *a10 = 1;
          goto LABEL_112;
        }

        goto LABEL_88;
      }
    }

    v33 = getMeCardData();
    v96 = v33;
    v34 = [MEMORY[0x1E695DF90] dictionary];
    if (v33)
    {
      v35 = [v33 mutableCopy];

      v36 = [v96 objectForKeyedSubscript:@"personNames"];
      v37 = [v96 objectForKeyedSubscript:@"personEmails"];
      v34 = v35;
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    if (readFromGroundTruthECRForUnitTests == 1)
    {
      v53 = [MEMORY[0x1E695E000] standardUserDefaults];
      v54 = [v53 valueForKey:@"testID"];

      v55 = [MEMORY[0x1E695E000] standardUserDefaults];
      v56 = [v55 valueForKey:v54];
      v57 = [v56 valueForKey:kQPParseResultEcrGroundedKey];
      v58 = [v57 valueForKey:@"me"];

      if (llmParserLogger(void)::token != -1)
      {
        QP::LLMParser::parse();
      }

      v59 = llmParserLogger(void)::log;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = (*this)[2].__vftable;
        v62 = QP::QPLLMRedactString(v104, v60);
        *buf = 134219010;
        v117 = v61;
        v118 = 2048;
        v119 = a8;
        v120 = 2112;
        v121 = v101;
        v122 = 2112;
        v123 = v62;
        v124 = 2112;
        v125 = v58;
        _os_log_impl(&dword_1C6584000, v59, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld][%lu][%@] Got grounding for token %@. ECR identifier:%@", buf, 0x34u);
      }

      v102 = 0;
    }

    else
    {
      v63 = this[1];
      v114 = *this;
      v115 = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v113 = 0;
      v58 = QP::ecrGroundingsWithTimeout(@"me", &v114, &v113);
      v102 = v113;
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }
    }

    if (v58)
    {
      v42 = [v58 objectForKeyedSubscript:@"visualIdentifier"];
      [v34 setObject:v42 forKeyedSubscript:@"visualIdentifier"];
      if (![v36 count])
      {
        v64 = [v58 objectForKeyedSubscript:@"personNames"];
        v65 = [v64 count] == 0;

        if (!v65)
        {
          v66 = [v58 objectForKeyedSubscript:@"personNames"];

          v36 = v66;
          [v34 setObject:v66 forKeyedSubscript:@"personNames"];
        }
      }

      if (![v37 count])
      {
        v67 = [v58 objectForKeyedSubscript:@"personEmails"];
        v68 = [v67 count] == 0;

        if (!v68)
        {
          v69 = [v58 objectForKeyedSubscript:@"personEmails"];

          v37 = v69;
          [v34 setObject:v69 forKeyedSubscript:@"personEmails"];
        }
      }
    }

    else
    {
      v42 = 0;
    }

    if (![v42 count] && !objc_msgSend(v36, "count") && !objc_msgSend(v37, "count"))
    {
LABEL_82:

LABEL_89:
      v41 = 0;
      goto LABEL_112;
    }

    [(__CFDictionary *)v103 setObject:v34 forKeyedSubscript:@"me"];
    if (a9)
    {
      *a9 = 1;
    }

    if ([v36 count])
    {
      v70 = a10;
      if (!a10)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v71 = [v37 count];
      v70 = a10;
      if (!a10 || !v71)
      {
        goto LABEL_77;
      }
    }

    *v70 = 1;
LABEL_77:
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v72 = llmParserLogger(void)::log;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      v83 = (*this)[2].__vftable;
      v84 = [v42 count];
      v85 = [v36 count];
      *buf = 134219010;
      v117 = v83;
      v118 = 2048;
      v119 = a8;
      v120 = 2112;
      v121 = v101;
      v122 = 2048;
      v123 = v84;
      v124 = 2048;
      v125 = v85;
      _os_log_debug_impl(&dword_1C6584000, v72, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld][%lu][%@] Successfully grounded person SELF (visualIDs: %lu, names: %lu)", buf, 0x34u);
    }

    goto LABEL_82;
  }

  if (a9)
  {
    v21 = [(__CFDictionary *)v103 objectForKeyedSubscript:v104];
    *a9 = v21 != 0;

    if (v21)
    {
LABEL_88:
      v102 = 0;
      v37 = 0;
      v36 = 0;
      v42 = 0;
      goto LABEL_89;
    }
  }

  if (readFromGroundTruthECRForUnitTests == 1)
  {
    v22 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [v22 valueForKey:@"testID"];

    v24 = [MEMORY[0x1E695E000] standardUserDefaults];
    v25 = [v24 valueForKey:v23];
    v26 = [v25 valueForKey:kQPParseResultEcrGroundedKey];
    v27 = [v26 valueForKey:v104];

    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v28 = llmParserLogger(void)::log;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = (*this)[2].__vftable;
      v31 = QP::QPLLMRedactString(v104, v29);
      *buf = 134219010;
      v117 = v30;
      v118 = 2048;
      v119 = a8;
      v120 = 2112;
      v121 = v101;
      v122 = 2112;
      v123 = v31;
      v124 = 2112;
      v125 = v27;
      _os_log_impl(&dword_1C6584000, v28, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld][%lu][%@] Unit Tests - Got grounding for token %@. ECR identifier:%@", buf, 0x34u);
    }

    v102 = 0;
    v32 = v27;
  }

  else
  {
    v38 = this[1];
    v111 = *this;
    v112 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v110 = 0;
    v32 = QP::ecrGroundingsWithTimeout(v104, &v111, &v110);
    v102 = v110;
    if (v112)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v112);
    }
  }

  v97 = v32;
  if (v32)
  {
    v39 = [v32 objectForKey:@"visualIdentifier"];
    v40 = [v97 objectForKey:@"personNames"];
    v94 = [v97 objectForKey:@"personEmails"];
    v95 = v40;
    v93 = v39;
    v41 = objc_opt_new();
    v42 = v39;
    [v41 setObject:v39 forKeyedSubscript:@"visualIdentifier"];
    [v41 setObject:v40 forKeyedSubscript:@"personNames"];
    [v41 setObject:v94 forKeyedSubscript:@"personEmails"];
    [v41 setObject:v100 forKeyedSubscript:@"rawQueryToken"];
    if ([v40 count])
    {
      v92 = getMeCardData();
      v43 = [v92 objectForKey:@"meCardRelationMap"];
      if (v43)
      {
        v44 = objc_opt_new();
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v45 = v40;
        v46 = [v45 countByEnumeratingWithState:&v106 objects:v128 count:16];
        if (v46)
        {
          v47 = *v107;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v107 != v47)
              {
                objc_enumerationMutation(v45);
              }

              v49 = *(*(&v106 + 1) + 8 * i);
              v50 = [v43 objectForKey:v49];
              v51 = v50 == 0;

              if (!v51)
              {
                v52 = [v43 objectForKey:v49];
                [v44 setObject:v52 forKeyedSubscript:v49];
              }
            }

            v46 = [v45 countByEnumeratingWithState:&v106 objects:v128 count:16];
          }

          while (v46);
        }

        [v41 setObject:v44 forKeyedSubscript:@"personRelationMap"];
      }

      v37 = v94;
      v36 = v95;
      v42 = v93;
    }

    else
    {
      v37 = v94;
      v36 = v40;
    }
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v42 = 0;
    v41 = 0;
  }

  if (v102)
  {
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v76 = llmParserLogger(void)::log;
    if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      v90 = (*this)[2].__vftable;
      *buf = 134218754;
      v117 = v90;
      v118 = 2048;
      v119 = a8;
      v120 = 2112;
      v121 = v101;
      v122 = 2112;
      v123 = v102;
      _os_log_error_impl(&dword_1C6584000, v76, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld][%lu][%@] Unable to lookup visual identifiers: %@", buf, 0x2Au);
    }

    if (atomic_fetch_add(&sQUECRErrorCount, 1u) == 25)
    {
      if (llmParserLogger(void)::token != -1)
      {
        QP::LLMParser::parse();
      }

      v77 = llmParserLogger(void)::log;
      if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_FAULT))
      {
        v91 = (*this)[2].__vftable;
        *buf = 134218754;
        v117 = v91;
        v118 = 2048;
        v119 = a8;
        v120 = 2112;
        v121 = v101;
        v122 = 1024;
        LODWORD(v123) = 25;
        _os_log_fault_impl(&dword_1C6584000, v77, OS_LOG_TYPE_FAULT, "[QPNLU][qid=%ld][%lu][%@] [Recurring Failure] ECR failed %d times", buf, 0x26u);
      }
    }
  }

  if ([v42 count] || objc_msgSend(v36, "count") || objc_msgSend(v37, "count"))
  {
    [(__CFDictionary *)v103 setObject:v41 forKeyedSubscript:v104];
    if (a9)
    {
      *a9 = 1;
    }

    v78 = +[QPEntityResolutionPrefixCache sharedCache];
    [v78 cacheGroundedToken:v104];

    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v79 = llmParserLogger(void)::log;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      v86 = (*this)[2].__vftable;
      v87 = QP::QPLLMRedactString(v104, v80);
      v88 = [v42 count];
      v89 = [v36 count];
      *buf = 134219266;
      v117 = v86;
      v118 = 2048;
      v119 = a8;
      v120 = 2112;
      v121 = v101;
      v122 = 2112;
      v123 = v87;
      v124 = 2048;
      v125 = v88;
      v126 = 2048;
      v127 = v89;
      _os_log_debug_impl(&dword_1C6584000, v79, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld][%lu][%@] Successfully grounded person with token %@ (visualIDs: %lu, names: %lu)", buf, 0x3Eu);
    }
  }

LABEL_112:
  v81 = *MEMORY[0x1E69E9840];
}

QP *QP::QPLLMRedactString(QP *this, NSString *a2)
{
  v2 = this;
  v3 = [(QP *)v2 length];
  if (v3 > 4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(QP *)v2 substringToIndex:3];
    v7 = [(QP *)v2 substringFromIndex:v3 - 1];
    v4 = [v5 stringWithFormat:@"%@...%@<%lu chars>", v6, v7, v3];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

id QP::ecrGroundingsWithTimeout(void *a1, void *a2, void *a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__8;
  v43 = __Block_byref_object_dispose__8;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8;
  v37 = __Block_byref_object_dispose__8;
  v38 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = qos_class_self();
  v8 = dispatch_get_global_queue(v7, 0);
  block = MEMORY[0x1E69E9820];
  v22 = 3321888768;
  v23 = ___ZN2QPL24ecrGroundingsWithTimeoutEP8NSStringb27QPECRClientEntityFilterTypebNSt3__110shared_ptrINS_19ParserConfigurationEEElPU15__autoreleasingP7NSError_block_invoke;
  v24 = &unk_1F45E89B8;
  v9 = a2[1];
  v29 = *a2;
  v30 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = &v39;
  v10 = v5;
  v32 = 256;
  v31 = 1;
  v25 = v10;
  v28 = &v33;
  v11 = v6;
  v26 = v11;
  dispatch_async(v8, &block);

  if (*(*a2 + 35))
  {
    v12 = -1;
  }

  else
  {
    v12 = dispatch_time(0, 500000000);
  }

  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ECR timed out after %dms", 500, block, v22, v23, v24, v25];
    v14 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A578];
    v46[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.QueryParser.QueryUnderstandingError" code:-2002 userInfo:v15];
    v17 = v34[5];
    v34[5] = v16;
  }

  if (a3)
  {
    *a3 = v34[5];
  }

  v18 = v40[5];

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_1C65C6A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

uint64_t QP::LLMParser::updateQueryStringAndGetRange(QP::LLMParser *this, CFStringRef theString, uint64_t *a3, __CFString *a4)
{
  v8 = *a3;
  Length = CFStringGetLength(theString);
  if (*(*this + 32) == 1)
  {
    v10 = Length + *a3 + 1;
  }

  else
  {
    v10 = *a3 + Length;
  }

  *a3 = v10;
  if (CFStringGetLength(a4) >= 1 && *(*this + 32) == 1)
  {
    CFStringAppend(a4, @" ");
  }

  CFStringAppend(a4, theString);
  return v8;
}

void QP::LLMParser::addTokenInfo(QP::LLMParser *this, __CFString *a2, __CFString *a3, __CFString *a4, __CFString *a5, const __CFString *a6, CFRange a7, uint64_t *a8, const __CFLocale *a9, const __CFArray *a10, uint64_t a11, __CFArray *a12, BOOL a13, const __CFArray *a14, BOOL a15)
{
  v81 = *MEMORY[0x1E69E9840];
  v54 = a2;
  v55 = a4;
  v56 = a3;
  v58 = a5;
  v53 = a12;
  v59 = a10;
  v57 = a14;
  v61 = objc_opt_new();
  v50 = a6;
  v60 = objc_opt_new();
  if ([(__CFArray *)v59 count])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v19 = v59;
    v20 = [(__CFArray *)v19 countByEnumeratingWithState:&v71 objects:v80 count:16, a6];
    if (v20)
    {
      v21 = *v72;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v72 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v71 + 1) + 8 * i);
          v24 = objc_opt_new();
          v25 = *(this + 2);
          v65 = MEMORY[0x1E69E9820];
          v66 = 3221225472;
          v67 = ___ZN2QP9LLMParser12addTokenInfoEPK10__CFStringS3_S3_S3_S3_7CFRangePlPK10__CFLocalePK9__CFArraylPS9_bSB_b_block_invoke;
          v68 = &unk_1E8266F30;
          v69 = v23;
          v26 = v24;
          v70 = v26;
          QP::Lexer::tokenize(v25, v23);
          if ([v26 count])
          {
            [v61 addObject:v26];
          }
        }

        v20 = [(__CFArray *)v19 countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v20);
    }
  }

  [v60 setObject:v55 forKeyedSubscript:{kQPQUOutputTokenRawTextKey, v50}];
  [v60 setObject:v61 forKeyedSubscript:kQPQUOutputECRGroundNamesTokenKey];
  if (v59)
  {
    v27 = v59;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  [v60 setObject:v27 forKeyedSubscript:kQPQUOutputECRGroundNamesKey];
  [v60 setObject:v54 forKeyedSubscript:kQPQUOutputTokenKey];
  [v60 setObject:v56 forKeyedSubscript:kQPQUOutputLemmaKey];
  [v60 setObject:v57 forKeyedSubscript:kQPQUOutputRawTextTokenizedKey];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:getEnumValueFromIntentArgString(v58)];
  v79 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  [v60 setObject:v29 forKeyedSubscript:kQPQUOutputTokenArgIdsKey];

  v78 = v58;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  [v60 setObject:v30 forKeyedSubscript:kQPQUOutputTokenArgLabelsKey];

  v31 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v77 = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  [v60 setObject:v32 forKeyedSubscript:kQPQUOutputTokenArgScoresKey];

  v33 = [MEMORY[0x1E696B098] valueWithRange:{a7.location, a7.length}];
  [v60 setObject:v33 forKeyedSubscript:kQPQUOutputTokenRangeKey];

  [v60 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:kQPQUOutputSpanTypesKey];
  v34 = [MEMORY[0x1E696AD98] numberWithLong:a11];
  v76 = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  [v60 setObject:v35 forKeyedSubscript:kQPQUOutputTokenAttributeIndexesKey];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:a13];
  [v60 setObject:v36 forKeyedSubscript:kQPQUOutputTokenIsSelfKey];

  v37 = [MEMORY[0x1E696AD98] numberWithBool:a15];
  [v60 setObject:v37 forKeyedSubscript:kQPQUOutputTokenIsRelativeTimeKey];

  v38 = v51;
  if ([v38 length])
  {
    v39 = *(this + 4);
    v40 = v38;
    std::string::basic_string[abi:ne200100]<0>(__p, [v38 UTF8String]);
    v41 = std::__tree<std::string>::find<std::string>(v39 + 600, __p);
    v43 = v39 + 608;
    if (v64 < 0)
    {
      operator delete(__p[0]);
    }

    if (v43 != v41)
    {
      LODWORD(v42) = *(v41 + 56);
      v44 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
      v75[0] = v44;
      LODWORD(v45) = *(v41 + 60);
      v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
      v75[1] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];

      [v60 setObject:v47 forKeyedSubscript:kQPQUOutputTokenPhraseWeightsKey];
    }
  }

  v48 = [v60 copy];
  [(__CFArray *)v53 addObject:v48];

  v49 = *MEMORY[0x1E69E9840];
}

void ___ZN2QP9LLMParser12addTokenInfoEPK10__CFStringS3_S3_S3_S3_7CFRangePlPK10__CFLocalePK9__CFArraylPS9_bSB_b_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 32), *a2);
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];

    CFRelease(v4);
  }
}

void QP::LLMParser::addParseAttr(uint64_t a1, const __CFString *a2, uint64_t a3, void *a4, uint64_t a5, const __CFString *a6, uint64_t a7, uint64_t a8, CFIndex a9, CFIndex a10, void **a11, const __CFArray *a12, const __CFArray *a13, const __CFDictionary *a14, BOOL a15)
{
  v57 = *MEMORY[0x1E69E9840];
  v54 = 0uLL;
  v44 = a4;
  std::string::basic_string[abi:ne200100]<0>(buf, [v44 UTF8String]);
  v18 = std::__tree<std::string>::find<std::string>(a5, buf);
  if (v56 < 0)
  {
    operator delete(*buf);
  }

  if (a5 + 8 != v18)
  {
    v19 = *(v18 + 56);
    v20 = (v18 + 64);
    if (v19 == (v18 + 64))
    {
      v25 = 0;
      v26 = 0;
      if (!a6)
      {
LABEL_57:
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a11, &v54);
        if (*(&v54 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v54 + 1));
        }

        goto LABEL_65;
      }
    }

    else
    {
      theString1 = a6;
      v21 = *MEMORY[0x1E695E480];
      do
      {
        v22 = (v19 + 4);
        if (*(v19 + 55) < 0)
        {
          v22 = *v22;
        }

        v23 = CFStringCreateWithCString(v21, v22, 0x8000100u);
        v24 = *(&v54 + 1);
        v53 = v54;
        if (*(&v54 + 1))
        {
          atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v58.location = a9;
        v58.length = a10;
        QP::LLMParser::gatherAttributes(a1, a2, v58, v23, &v51, a12, a13, a14, a15);
        QP::LLMParser::safeMakeGroupAttribute(&v53, &v51, buf);
        v26 = *buf;
        v25 = *&buf[8];
        *buf = 0;
        *&buf[8] = 0;
        *&v54 = v26;
        *(&v54 + 1) = v25;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }
        }

        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (*(&v53 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
        }

        if ([v44 isEqualToString:@"QUPP_ARG_TIME"] && *(a1 + 131) == 1 && *(a1 + 130) == 1 && *(a1 + 132) == 1)
        {
          v27 = *(a1 + 32);
          std::string::basic_string[abi:ne200100]<0>(buf, "STATUSACTION");
          v28 = QP::ParserGrammar::symbolID(v27, buf);
          if (v56 < 0)
          {
            operator delete(*buf);
          }

          if (v28 != kQPSymbolIdNone)
          {
            v29 = *(a1 + 126);
            if (v29 != kQPSymbolIdNone)
            {
              QP::ParseAttribute::addAction(v26, v28, v29);
            }
          }
        }

        CFRelease(v23);
        v30 = v19[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v19[2];
            v32 = *v31 == v19;
            v19 = v31;
          }

          while (!v32);
        }

        v19 = v31;
      }

      while (v31 != v20);
      a6 = theString1;
      if (!theString1)
      {
        goto LABEL_57;
      }
    }

    v49 = 0;
    v50 = 0;
    v59.location = a9;
    v59.length = a10;
    QP::LLMParser::gatherAttributes(a1, a2, v59, a6, &v49, a12, a13, a14, a15);
    LODWORD(v34) = *(a1 + 120);
    if (v34 == kQPSymbolIdNone)
    {
      v34 = *(a1 + 32);
      std::string::basic_string[abi:ne200100]<0>(buf, "DEFAULT_APP_ENTITY");
      LOWORD(v34) = QP::ParserGrammar::symbolID(v34, buf);
      if (v56 < 0)
      {
        operator delete(*buf);
      }
    }

    v35 = v49;
    *buf = v34;
    std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v49 + 13), buf);
    if (*(a1 + 122) != kQPSymbolIdNone)
    {
      *buf = *(a1 + 122);
      std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v35 + 16), buf);
    }

    if (*(a1 + 124) != kQPSymbolIdNone)
    {
      *buf = *(a1 + 124);
      std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v35 + 19), buf);
    }

    v47 = v26;
    v48 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = v50;
    v45 = v35;
    v46 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::LLMParser::safeMakeGroupAttribute(&v47, &v45, buf);
    v37 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v54 = v37;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    goto LABEL_57;
  }

  if ([v44 length] < 0xA)
  {
    v33 = v44;
  }

  else
  {
    v33 = [v44 substringFromIndex:9];
  }

  v38 = v33;
  if (llmParserLogger(void)::token != -1)
  {
    QP::LLMParser::parse();
  }

  v39 = llmParserLogger(void)::log;
  if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(*a1 + 48);
    *buf = 134218242;
    *&buf[4] = v40;
    *&buf[12] = 2112;
    *&buf[14] = v38;
    _os_log_impl(&dword_1C6584000, v39, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld][%@] Got empty grammar for the label and skipping adding attributed Parse", buf, 0x16u);
  }

LABEL_65:
  v41 = *MEMORY[0x1E69E9840];
}

void sub_1C65C7858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v30 = *(v28 - 136);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

uint64_t *QP::ParseAttribute::addAction(QP::ParseAttribute *this, unsigned int a2, unsigned __int16 a3)
{
  v19 = a2;
  v18 = a3;
  v5 = *(this + 11);
  v3 = this + 88;
  v4 = v5;
  v6 = (v3 - 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v3;
  do
  {
    v8 = *(v4 + 16);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *&v4[8 * v10];
  }

  while (v4);
  if (v7 == v3 || *(v7 + 16) > a2)
  {
LABEL_9:
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    LOWORD(v15) = a2;
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>((v3 - 8), &v15);
    std::__tree<unsigned int>::destroy(&v16, v17[0]);
    std::__tree<unsigned int>::destroy(&v13, v14[0]);
  }

  v15 = &v19;
  v11 = std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v6, &v19);
  return std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v11 + 5), &v18);
}

void sub_1C65C7A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  std::__tree<unsigned int>::destroy(v14 + 8, a14);
  std::__tree<unsigned int>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

void QP::LLMParser::addTokenInfoAndAttr(std::__shared_weak_count **a1, void *a2, __CFString *a3, void *a4, void *a5, uint64_t *a6, __CFString *a7, int a8, __CFDictionary *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, __CFArray *a16)
{
  v74 = *MEMORY[0x1E69E9840];
  v22 = a5;
  v64 = a10;
  v62 = [v64 count];
  v23 = a2;
  v24 = a4;
  *v67 = 0;
  v66 = 0;
  v65 = v24;
  v27 = v23;
  if ([(__CFString *)v22 isEqualToString:@"QUPP_ARG_TIME"])
  {
    v28 = QP::normalizeTimeString(v23, v25);

    v27 = v28;
  }

  QP::LLMParser::groundECRIdentifiers(a1, v23, v24, v22, v26, a9, &v67[1], v62, v67, &v66);
  if (v67[1])
  {
    if (!v67[0])
    {
      if ([(__CFString *)v22 length]< 0xA)
      {
        v29 = v22;
      }

      else
      {
        v29 = [(__CFString *)v22 substringFromIndex:9];
      }

      v53 = v29;
      if (llmParserLogger(void)::token != -1)
      {
        QP::LLMParser::parse();
      }

      v54 = llmParserLogger(void)::log;
      if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v55 = (*a1)[2].__vftable;
        *buf = 134218754;
        *&buf[4] = v55;
        v69 = 2048;
        v70 = v62;
        v71 = 2112;
        *v72 = v53;
        *&v72[8] = 1024;
        v73 = v67[0];
        _os_log_impl(&dword_1C6584000, v54, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld][%lu][%@] Unable to ground person SELF, so dropping it because isECRGrounded:%d", buf, 0x26u);
      }

      v52 = 0;
      v33 = 0;
      v63 = 0;
      v32 = 0;
      goto LABEL_45;
    }

LABEL_8:
    v30 = a9;
    v59 = v30;
    v60 = a3;
    if (v67[1])
    {
      v31 = a7;
      v32 = [(__CFDictionary *)v30 objectForKeyedSubscript:@"me"];
      if (v32)
      {
LABEL_10:
        v33 = [v32 objectForKeyedSubscript:@"personNames"];
        v34 = [v32 objectForKeyedSubscript:@"personEmails"];
        v63 = [v32 objectForKeyedSubscript:@"visualIdentifier"];
        v61 = v34;
        goto LABEL_14;
      }
    }

    else
    {
      v32 = [(__CFDictionary *)v30 objectForKeyedSubscript:v27];
      v31 = a7;
      if (v32)
      {
        goto LABEL_10;
      }
    }

    v61 = 0;
    v33 = 0;
    v63 = 0;
LABEL_14:
    a7 = v31;
    v35 = [v33 count];
    if (v35 && v67[1])
    {
      if (llmParserLogger(void)::token != -1)
      {
        QP::LLMParser::parse();
      }

      v36 = llmParserLogger(void)::log;
      if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v37 = (*a1)[2].__vftable;
        *buf = 134218752;
        *&buf[4] = v37;
        v69 = 2048;
        v70 = v62;
        v71 = 1024;
        *v72 = v67[1];
        *&v72[4] = 1024;
        *&v72[6] = 1;
        _os_log_impl(&dword_1C6584000, v36, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld][%lu] Got person names and isSelfToken:%d and hasPersonName:%d, so updating the label to PERSON_SELF", buf, 0x22u);
      }

      v38 = [v33 objectAtIndexedSubscript:0];

      v27 = v38;
      if ([(__CFString *)v22 isEqualToString:@"QUPP_ARG_PERSON"])
      {

        v22 = @"QUPP_ARG_PERSON_SELF";
      }

      v65 = v27;
    }

    else
    {
      if (llmParserLogger(void)::token != -1)
      {
        QP::LLMParser::parse();
      }

      v39 = llmParserLogger(void)::log;
      if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v40 = (*a1)[2].__vftable;
        *buf = 134218752;
        *&buf[4] = v40;
        v69 = 2048;
        v70 = v62;
        v71 = 1024;
        *v72 = v67[1];
        *&v72[4] = 1024;
        *&v72[6] = v35 != 0;
        _os_log_impl(&dword_1C6584000, v39, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld][%lu] Did not get person names and isSelfToken:%d and haspersonName:%d, so not updating the label to PERSON_SELF", buf, 0x22u);
      }
    }

    goto LABEL_28;
  }

  if (v67[0])
  {
    goto LABEL_8;
  }

  v60 = a3;
  v61 = 0;
  v33 = 0;
  v63 = 0;
  v32 = 0;
LABEL_28:
  Range = QP::LLMParser::updateQueryStringAndGetRange(a1, v27, a6, a7);
  v43 = v42;
  v44 = v22;
  std::string::basic_string[abi:ne200100]<0>(buf, -[__CFString UTF8String](v22, "UTF8String"));
  v45 = std::__tree<std::string>::find<std::string>(a13, buf);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(*buf);
  }

  if (a13 + 8 == v45)
  {
    v49 = 0;
  }

  else
  {
    v46 = v22;
    std::string::basic_string[abi:ne200100]<0>(buf, -[__CFString UTF8String](v22, "UTF8String"));
    v47 = std::__tree<std::string>::find<std::string>(a13, buf);
    v48 = (v47 + 56);
    if (*(v47 + 79) < 0)
    {
      v48 = *v48;
    }

    v49 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v48, 0x8000100u);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(*buf);
    }
  }

  v75.location = Range;
  v75.length = v43;
  QP::LLMParser::addTokenInfo(a1, v27, v60, v65, v22, v49, v75, v57, v58, v33, a11, v64, v67[1], a16, 0);
  QP::LLMParser::addParseAttr(a1, v27, v50, v22, a12, v49, a11, v51, Range, v43, a15, v33, v61, v63, v66);
  if (v49)
  {
    CFRelease(v49);
  }

  v52 = v61;
LABEL_45:

  v56 = *MEMORY[0x1E69E9840];
}

id QP::normalizeTimeString(QP *this, NSString *a2)
{
  v2 = this;
  if (QP::normalizeTimeString(NSString *)::onceToken != -1)
  {
    QP::normalizeTimeString();
  }

  v3 = [QP::normalizeTimeString(NSString *)::regex stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{-[QP length](v2, "length"), @"$1"}];

  return v3;
}

void QP::LLMParser::parseDateArgument(uint64_t a1, const __CFString *a2, void *a3, uint64_t *a4, int a5, __CFString *a6, __CFArray *a7, uint64_t a8, uint64_t a9, void **a10, void *a11, __CFArray *a12, uint64_t a13)
{
  v19 = a11;
  v20 = a3;
  v60 = a2;
  Range = QP::LLMParser::updateQueryStringAndGetRange(a1, a2, a4, a6);
  v57 = v22;
  v58 = Range;
  v82 = 0;
  v81 = 0uLL;
  v80 = 0uLL;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v61 = v20;
  std::string::basic_string[abi:ne200100]<0>(&v74, -[__CFString UTF8String](v20, "UTF8String"));
  v23 = std::__tree<std::string>::find<std::string>(a9, &v74);
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v74);
  }

  if (a9 + 8 != v23)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
    QP::getUTF8StringFromCFString(kQPParseAttributeDateKey, &v74);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    QP::getUTF8StringFromCFString(kQPParseAttributeDurationKey, &v71);
    v24 = *(v23 + 56);
    if (v24 != (v23 + 64))
    {
      do
      {
        v25 = (v24 + 4);
        v26 = *(v24 + 55);
        v27 = v24[5];
        if (v26 >= 0)
        {
          v28 = *(v24 + 55);
        }

        else
        {
          v28 = v24[5];
        }

        if (*(a1 + 133) == 1)
        {
          v29 = HIBYTE(v76);
          if (v76 < 0)
          {
            v29 = v75;
          }

          if (v28 != v29)
          {
            goto LABEL_27;
          }

          if (v26 >= 0)
          {
            v30 = (v24 + 4);
          }

          else
          {
            v30 = *v25;
          }

          v31 = v74;
          v32 = v76 < 0;
          v33 = &v74;
        }

        else
        {
          v34 = HIBYTE(v73);
          if (v73 < 0)
          {
            v34 = v72;
          }

          if (v28 != v34)
          {
LABEL_27:
            if (v26 < 0)
            {
              std::string::__init_copy_ctor_external(&v70, *v25, v27);
            }

            else
            {
              *&v70.__r_.__value_.__l.__data_ = *v25;
              v70.__r_.__value_.__r.__words[2] = v24[6];
            }

            v54 = &v82;
            (v19)[2](v19, v60, &v81, a8, &v70, v58, v57, &v77);
            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v70.__r_.__value_.__l.__data_);
            }

            v37 = v77;
            v36 = v78;
            while (v37 != v36)
            {
              std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100]((a1 + 80), v37++);
            }

            if ([(__CFString *)v61 isEqualToString:@"QUPP_ARG_TIME"]&& *(a1 + 131) == 1 && *(a1 + 130) == 1 && *(a1 + 132) == 1)
            {
              v38 = *(a1 + 32);
              std::string::basic_string[abi:ne200100]<0>(__p, "STATUSACTION");
              v39 = QP::ParserGrammar::symbolID(v38, __p);
              if (v69 < 0)
              {
                operator delete(__p[0]);
              }

              if (v39 != kQPSymbolIdNone)
              {
                v40 = *(a1 + 126);
                if (v40 != kQPSymbolIdNone)
                {
                  QP::ParseAttribute::addAction(v81, v39, v40);
                }
              }
            }

            goto LABEL_44;
          }

          if (v26 >= 0)
          {
            v30 = (v24 + 4);
          }

          else
          {
            v30 = *v25;
          }

          v31 = v71;
          v32 = v73 < 0;
          v33 = &v71;
        }

        if (v32)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }

        if (memcmp(v30, v35, v28))
        {
          goto LABEL_27;
        }

LABEL_44:
        v41 = v24[1];
        if (v41)
        {
          do
          {
            v42 = v41;
            v41 = *v41;
          }

          while (v41);
        }

        else
        {
          do
          {
            v42 = v24[2];
            v43 = *v42 == v24;
            v24 = v42;
          }

          while (!v43);
        }

        v24 = v42;
      }

      while (v42 != (v23 + 64));
    }

    if (v81)
    {
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a10, &v81);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, -[__CFString UTF8String](v61, "UTF8String"));
    v44 = std::__tree<std::string>::find<std::string>(a13, __p);
    if (v69 < 0)
    {
      operator delete(__p[0]);
    }

    if (a13 + 8 == v44)
    {
      v48 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, -[__CFString UTF8String](v61, "UTF8String"));
      v45 = std::__tree<std::string>::find<std::string>(a13, __p);
      v46 = (v45 + 56);
      if (*(v45 + 79) < 0)
      {
        v46 = *v46;
      }

      v47 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v46, 0x8000100u);
      v48 = v47;
      if ((v69 & 0x80000000) == 0)
      {
        if (!v47)
        {
          goto LABEL_61;
        }

LABEL_63:
        v66 = 0;
        v67 = 0;
        v83.length = v57;
        v83.location = v58;
        QP::LLMParser::gatherAttributes(a1, v60, v83, v48, &v66, 0, 0, 0, 0);
        LODWORD(v50) = *(a1 + 120);
        if (v50 == kQPSymbolIdNone)
        {
          v50 = *(a1 + 32);
          std::string::basic_string[abi:ne200100]<0>(__p, "DEFAULT_APP_ENTITY");
          LOWORD(v50) = QP::ParserGrammar::symbolID(v50, __p);
          if (v69 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v51 = v66;
        LOWORD(__p[0]) = v50;
        std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v66 + 13), __p);
        if (*(a1 + 122) != kQPSymbolIdNone)
        {
          LOWORD(__p[0]) = *(a1 + 122);
          std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>((v51 + 16), __p);
        }

        v64 = 0;
        v65 = 0;
        v52 = v67;
        v62 = v51;
        v63 = v67;
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QP::LLMParser::safeMakeGroupAttribute(&v64, &v62, __p);
        v53 = *__p;
        __p[0] = 0;
        __p[1] = 0;
        v56 = v53;
        v80 = v53;
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (v56)
        {
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a10, &v80);
        }

        v49 = 0;
        goto LABEL_79;
      }

      operator delete(__p[0]);
      if (v48)
      {
        goto LABEL_63;
      }
    }

LABEL_61:
    v49 = 1;
LABEL_79:
    v84.length = v57;
    v84.location = v58;
    QP::LLMParser::addTokenInfo(a1, v60, 0, v60, v61, v48, v84, v54, v55, 0, a8, a7, 0, a12, v82);
    if ((v49 & 1) == 0)
    {
      CFRelease(v48);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v71);
    }

    v20 = v61;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v74);
    }
  }

  v74 = &v77;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v74);
  if (*(&v80 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v80 + 1));
  }

  if (*(&v81 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v81 + 1));
  }
}

void sub_1C65C8838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (*(v46 - 177) < 0)
  {
    operator delete(*(v46 - 200));
  }

  if (*(v46 - 153) < 0)
  {
    operator delete(*(v46 - 176));
  }

  *(v46 - 176) = v46 - 152;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100]((v46 - 176));
  v48 = *(v46 - 120);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v46 - 104);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void QP::LLMParser::parseArgument(uint64_t a1, const __CFString *a2, void *a3, uint64_t *a4, uint64_t a5, __CFString *a6, uint64_t a7, __CFArray *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void *a14)
{
  v27 = a14;
  v25 = a3;
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = *(a1 + 16);
  v21 = v25;
  v22 = v19;
  QP::Lexer::tokenize(v20, a2);
  if (([v21 isEqualToString:@"QUPP_ARG_CONVERSATION_FILTER_TIME"] & 1) != 0 || objc_msgSend(v21, "isEqualToString:", @"QUPP_ARG_TIME"))
  {
    QP::LLMParser::parseDateArgument(a1, a2, v21, a4, v23, a6, a8, a9, a10, a13, v27, v22, a11);
  }

  else
  {
    *v24 = *(a1 + 16);
    v28 = v22;
    QP::Lexer::tokenize(*v24, a2);
  }
}

void ___ZN2QP9LLMParser13parseArgumentEPK10__CFStringS3_PlPK10__CFLocalePS1_P14__CFDictionaryP9__CFArraylRNSt3__13mapINSD_12basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEENSE_ISK_NSD_3setISK_NSD_4lessISK_EENSI_ISK_EEEESN_NSI_INSD_4pairIKSK_SP_EEEEEESN_NSI_INSQ_ISR_SU_EEEEEERNSE_ISK_SK_SN_NSI_INSQ_ISR_SK_EEEEEES12_RNSD_6vectorINSD_10shared_ptrINS_14ParseAttributeEEENSI_IS16_EEEEU13block_pointerFvS3_RS16_lSK_7CFRangeRNS13_INS14_INS_6LexemeEEENSI_IS1D_EEEEPbE_block_invoke(uint64_t a1, CFRange *a2)
{
  v3 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 48), *a2);
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) isEqualToString:@"QUPP_ARG_TIME"];
    v6 = v4;
    if (v5)
    {
      v7 = QP::normalizeTimeString(v4, v4);

      v6 = v7;
    }

    v8 = v6;
    [*(a1 + 40) addObject:v6];
    CFRelease(v4);
  }
}

void ___ZN2QP9LLMParser13parseArgumentEPK10__CFStringS3_PlPK10__CFLocalePS1_P14__CFDictionaryP9__CFArraylRNSt3__13mapINSD_12basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEENSE_ISK_NSD_3setISK_NSD_4lessISK_EENSI_ISK_EEEESN_NSI_INSD_4pairIKSK_SP_EEEEEESN_NSI_INSQ_ISR_SU_EEEEEERNSE_ISK_SK_SN_NSI_INSQ_ISR_SK_EEEEEES12_RNSD_6vectorINSD_10shared_ptrINS_14ParseAttributeEEENSI_IS16_EEEEU13block_pointerFvS3_RS16_lSK_7CFRangeRNS13_INS14_INS_6LexemeEEENSI_IS1D_EEEEPbE_block_invoke_2(uint64_t a1, CFRange *a2, __CFString *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], *(a1 + 48), *a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    if (QP::normalizeQueryToken(NSString *)::onceToken != -1)
    {
      ___ZN2QP9LLMParser13parseArgumentEPK10__CFStringS3_PlPK10__CFLocalePS1_P14__CFDictionaryP9__CFArraylRNSt3__13mapINSD_12basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEENSE_ISK_NSD_3setISK_NSD_4lessISK_EENSI_ISK_EEEESN_NSI_INSD_4pairIKSK_SP_EEEEEESN_NSI_INSQ_ISR_SU_EEEEEERNSE_ISK_SK_SN_NSI_INSQ_ISR_SK_EEEEEES12_RNSD_6vectorINSD_10shared_ptrINS_14ParseAttributeEEENSI_IS16_EEEEU13block_pointerFvS3_RS16_lSK_7CFRangeRNS13_INS14_INS_6LexemeEEENSI_IS1D_EEEEPbE_block_invoke_2_cold_1();
    }

    v9 = [QP::normalizeQueryToken(NSString *)::apostropheSRegex stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{-[__CFString length](v8, "length"), &stru_1F45E9EA0}];

    v10 = v9;
    if (v9)
    {
      if (CFStringGetLength(v9) >= 1)
      {
        v12 = *(a1 + 56);
        if (v12)
        {
          Count = CFArrayGetCount(v12);
          if (!a3)
          {
            goto LABEL_15;
          }
        }

        else
        {
          Count = -1;
          if (!a3)
          {
LABEL_15:
            QP::LLMParser::addTokenInfoAndAttr(v5, v8, a3, *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 80), v11, *(a1 + 96), *(a1 + 56), *(a1 + 104), *(a1 + 112), *(a1 + 120), v21, *(a1 + 136), *(a1 + 32));
            goto LABEL_16;
          }
        }

        if (llmParserLogger(void)::token != -1)
        {
          QP::LLMParser::parse();
        }

        v14 = llmParserLogger(void)::log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v17 = (*v5)[2].__vftable;
          v18 = QP::QPLLMRedactString(v8, v15);
          v20 = QP::QPLLMRedactString(a3, v19);
          *buf = 134218754;
          v23 = v17;
          v24 = 2048;
          v25 = Count;
          v26 = 2112;
          v27 = v18;
          v28 = 2112;
          v29 = v20;
          _os_log_debug_impl(&dword_1C6584000, v14, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld][%ld] Get lemma for input token %@: %@", buf, 0x2Au);
        }

        goto LABEL_15;
      }
    }
  }

LABEL_16:
  CFRelease(v7);
  v16 = *MEMORY[0x1E69E9840];
}

const __CFArray *QP::createMockArgumentForShippingOrder(CFArrayRef theArray, const __CFArray *a2, BOOL *a3)
{
  MutableCopy = theArray;
  *a2 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, @"textLabel");
        if (Value)
        {
          if (CFEqual(Value, @"QUPP_ARG_SEARCH_TERM"))
          {
            v10 = CFDictionaryGetValue(ValueAtIndex, @"text");
            if (v10)
            {
              if (CFStringFind(v10, @"order", 1uLL).location != -1)
              {
                break;
              }
            }
          }
        }

        if (v6 == ++v7)
        {
          return MutableCopy;
        }
      }

      v12 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, MutableCopy);
      Mutable = CFDictionaryCreateMutable(v12, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"text", @"order");
      CFDictionaryAddValue(Mutable, @"textLabel", @"QUPP_ARG_EVENT_SHIPPING_ORDER");
      CFDictionaryAddValue(Mutable, @"textRange", @"NSRange: {18446744073709551615, 0}");
      CFArrayAppendValue(MutableCopy, Mutable);
      CFRelease(Mutable);
      *a2 = 1;
    }
  }

  return MutableCopy;
}

void ___ZN2QP9LLMParser13parseInternalEPK14__CFDictionaryU13block_pointerFvPK10__CFStringRNSt3__110shared_ptrINS_14ParseAttributeEEElNS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE7CFRangeRNS7_6vectorINS8_INS_6LexemeEEENSF_ISL_EEEEPbE_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  readFromGroundTruthECRForUnitTests = [v0 BOOLForKey:@"SpotlightForSearchToolUnitTestECRCache"];

  enableSearchToolMockShippingOrderQU = _os_feature_enabled_impl();
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  s3rTestEnvironment = [v1 BOOLForKey:@"S3RTestEnvironment"];
}

void QP::LLMParser::clear(QP::LLMParser *this)
{
  *(this + 128) = 0;
  nlp::CFScopedPtr<__CFString const*>::reset(this + 6, 0);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 7);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 10);
  v2 = &kQPSymbolIdNone;
  v3 = vld1_dup_s16(v2);
  *(this + 15) = v3;
  *(this + 129) = 0;
  if (*(this + 159) < 0)
  {
    **(this + 17) = 0;
    *(this + 18) = 0;
  }

  else
  {
    *(this + 136) = 0;
    *(this + 159) = 0;
  }
}

void nlp::CFScopedPtr<__CFAttributedString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void QP::LLMParser::preheat(QP::LLMParser *this)
{
  if (*(*this + 65))
  {
    v2 = off_1E82660B8;
  }

  else
  {
    v2 = &off_1E82660C0;
  }

  v3 = [(__objc2_class *)*v2 sharedClient];
  v4 = v3;
  if (*(*this + 37) == 1)
  {
    [v3 warmUpSync];
  }

  else
  {
    [v3 warmUpAsync];
  }
}

void QP::LLMParser::cooldown(QP::LLMParser *this)
{
  if (*(*this + 65))
  {
    v2 = off_1E82660B8;
  }

  else
  {
    v2 = &off_1E82660C0;
  }

  v3 = [(__objc2_class *)*v2 sharedClient];
  v4 = v3;
  if (*(*this + 37) == 1)
  {
    [v3 cooldownSync];
  }

  else
  {
    [v3 cooldownAsync];
  }
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange,int,int,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, 0);
  return a1;
}

void std::__shared_ptr_emplace<QP::ParseAttribute>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t QP::ParseAttribute::ParseAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, __int16 a7, int a8)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 34) = a7;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 48), "");
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = a8;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return a1;
}

void QP::ParseAttribute::~ParseAttribute(QP::ParseAttribute *this)
{
  v3 = (this + 192);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__tree<unsigned int>::destroy(this + 152, *(this + 20));
  std::__tree<unsigned int>::destroy(this + 128, *(this + 17));
  std::__tree<unsigned int>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(this + 80, *(this + 11));
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

void std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::destroy(a1, a2[1]);
    std::__tree<unsigned int>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::vector<std::shared_ptr<QP::ParseAttribute>>::__assign_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::ParseAttribute>>,std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::ParseAttribute>>,std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::ParseAttribute>>,std::shared_ptr<QP::ParseAttribute>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::ParseAttribute>>,std::shared_ptr<QP::ParseAttribute>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void *std::vector<std::shared_ptr<QP::ParseAttribute>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::ParseAttribute>*>,std::__wrap_iter<std::shared_ptr<QP::ParseAttribute>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v19 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::ParseAttribute>>,std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v19 = (v7 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(v31, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v31[0] = 0;
    v12 = a5 + ((v10 - v11) >> 4);
    if (v12 >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    v15 = v14 >> 3;
    if (v14 >> 3 <= v12)
    {
      v15 = v12;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1, v16);
    }

    v20 = 16 * (v13 >> 4);
    v32 = 0;
    v21 = (v20 + 16 * a5);
    v22 = v20;
    do
    {
      *v22 = *v7;
      v23 = v7[1];
      *(v22 + 1) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v22 += 16;
      v7 += 2;
    }

    while (v22 != v21);
    memcpy(v21, v5, a1[1] - v5);
    v24 = *a1;
    v25 = &v21[a1[1] - v5];
    a1[1] = v5;
    v26 = v5 - v24;
    v27 = (v20 - (v5 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v25;
    v29 = a1[2];
    a1[2] = v32;
    v31[2] = v28;
    v32 = v29;
    v31[0] = v28;
    v31[1] = v28;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v31);
    return v20;
  }

  return v5;
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
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
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

void *std::pair<std::vector<std::string>,std::vector<std::pair<double,double>>>::pair[abi:ne200100]<std::vector<std::string>&,std::vector<std::pair<double,double>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1C65C9BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
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

void sub_1C65C9C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
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

  LOBYTE(v10) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
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

uint64_t std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CFRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65C9E74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL15llmParserLoggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "LLMParser");
  v2 = llmParserLogger(void)::log;
  llmParserLogger(void)::log = v1;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2QPL24ecrGroundingsWithTimeoutEP8NSStringb27QPECRClientEntityFilterTypebNSt3__110shared_ptrINS_19ParserConfigurationEEElPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
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
  LOBYTE(v16) = 1;
  v9 = [v3 visualIdentifiersWithText:v4 allowPrefixSearch:v5 entityFilterType:v6 includeInferredNames:v7 allowGroundingToNamesAndEmails:v8 useNamesAndEmailsForNonRelations:0 enableBackupSearch:v16 error:&v17];
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

uint64_t __copy_helper_block_ea8_64c52_ZTSNSt3__110shared_ptrIN2QP19ParserConfigurationEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_64c52_ZTSNSt3__110shared_ptrIN2QP19ParserConfigurationEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::pair<unsigned short,std::set<unsigned short>>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__construct_node<std::pair<unsigned short,std::set<unsigned short>>>();
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

uint64_t *std::__tree<std::__value_type<unsigned short,std::set<unsigned short>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::set<unsigned short>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::set<unsigned short>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<unsigned short>::__emplace_unique_key_args<unsigned short,unsigned short const&>(uint64_t a1, unsigned __int16 *a2)
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