void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void _GLOBAL__sub_I_TIKeyboardInputManager_th_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA74000);

  objc_autoreleasePoolPop(v0);
}

void TIInputManager_th::~TIInputManager_th(TIInputManager_th *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x29EDA52B0);
}

void std::__shared_ptr_emplace<KB::CandidateFilter_th>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A252D4D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA52B0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerFavonius_th_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA74000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_th_24Key_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA74000);

  objc_autoreleasePoolPop(v0);
}

uint64_t KB::CandidateFilter_th::num_words_overlapping_input(KB::CandidateFilter_th *this, const KB::Candidate *a2, const KB::Candidate *a3)
{
  v10[4] = *MEMORY[0x29EDCA608];
  KB::Candidate::capitalized_string(v10, a3);
  KB::String::String(v9);
  v4 = 0;
  do
  {
    v5 = v4;
    if (*a2 <= v4)
    {
      break;
    }

    KB::String::append(v9, (*(a2 + 1) + 240 * v4));
    v6 = KB::String::starts_with();
    v4 = v5 + 1;
  }

  while ((v6 & 1) != 0);
  KB::String::~String(v9);
  KB::String::~String(v10);
  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

void KB::CandidateFilter_th::remove_duplicate_candidate_with_the_same_surface_form(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x29EDCA608];
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy_;
  v18 = 0;
  v19 = 0;
  v16 = __Block_byref_object_dispose_;
  v17 = &v18;
  std::__tree<KB::String>::destroy(&v17, 0);
  v18 = 0;
  v19 = 0;
  v17 = &v18;
  if (*a2 != *(a2 + 8))
  {
    v6 = v13;
    KB::Candidate::capitalized_string(v20, *a2);
    std::__tree<KB::String>::__emplace_unique_key_args<KB::String,KB::String>((v6 + 5), v20);
    KB::String::~String(v20);
    v8 = *a2;
    v7 = *(a2 + 8);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2KB18CandidateFilter_th53remove_duplicate_candidate_with_the_same_surface_formERNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKS3_P10__CFString_block_invoke;
    v11[3] = &unk_29F37C300;
    v11[4] = &v12;
    v11[5] = a4;
    v9 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v8 + 125, v7, v11);
    std::vector<KB::Candidate>::erase(a2, v9, *(a2 + 8));
  }

  _Block_object_dispose(&v12, 8);
  std::__tree<KB::String>::destroy(&v17, v18);
  v10 = *MEMORY[0x29EDCA608];
}

void *__Block_byref_object_copy_(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

uint64_t *std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (((*(a3 + 16))(a3, v3) & 1) == 0)
    {
      v3 += 125;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = (v3 + 125); i != a2; i = (i + 1000))
      {
        if (((*(a3 + 16))(a3, i) & 1) == 0)
        {
          KB::Candidate::operator=(v3, i);
          v3 += 125;
        }
      }
    }
  }

  return v3;
}

BOOL ___ZNK2KB18CandidateFilter_th53remove_duplicate_candidate_with_the_same_surface_formERNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKS3_P10__CFString_block_invoke(uint64_t a1, KB::Candidate *this)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 8);
  KB::Candidate::capitalized_string(&v14, this);
  v5 = std::__tree<KB::String>::find<KB::String>(v4 + 40, &v14);
  v6 = *(*(a1 + 32) + 8) + 48;
  KB::String::~String(&v14);
  v7 = *(*(a1 + 32) + 8);
  KB::Candidate::capitalized_string(&v14, this);
  std::__tree<KB::String>::__emplace_unique_key_args<KB::String,KB::String>(v7 + 40, &v14);
  KB::String::~String(&v14);
  if (v6 != v5)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      KB::Candidate::capitalized_string(&v14, this);
      v10 = v15;
      if (!v15)
      {
        v10 = v16;
      }

      if (v14)
      {
        v11 = v10;
      }

      else
      {
        v11 = "";
      }

      KB::append_format(v8, "[%s] removed by %s\n", v9, v11, "remove_duplicate_candidate_with_the_same_surface_form");
      KB::String::~String(&v14);
    }
  }

  result = v6 != v5;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *std::vector<KB::Candidate>::erase(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        KB::Candidate::operator=(v7, v4);
        v4 = (v4 + 1000);
        v7 += 125;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 = (v6 - 1000);
      MEMORY[0x29EDA5210](v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t *KB::CandidateFilter_th::remove_low_word_score_candidate(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (v5 != *(&v5 + 1))
  {
    v6 = *(v5 + 752);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = ___ZNK2KB18CandidateFilter_th31remove_low_word_score_candidateERNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKS3_P10__CFString_block_invoke;
    v8[3] = &__block_descriptor_tmp_4;
    v8[4] = result;
    v8[5] = a3;
    v9 = v6;
    v8[6] = a4;
    v7 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>((v5 + 1000), *(&v5 + 1), v8);
    return std::vector<KB::Candidate>::erase(a2, v7, *(a2 + 8));
  }

  return result;
}

uint64_t ___ZNK2KB18CandidateFilter_th31remove_low_word_score_candidateERNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKS3_P10__CFString_block_invoke(uint64_t a1, float *a2)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((v4 - KB::CandidateFilter_th::num_words_overlapping_input(a1, a2, *(a1 + 40))) <= 2 && (*(a1 + 56) - a2[188]) <= 8.0)
  {
    result = 0;
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      KB::Candidate::capitalized_string(&v11, a2);
      v7 = v12;
      if (!v12)
      {
        v7 = v13;
      }

      if (v11)
      {
        v8 = v7;
      }

      else
      {
        v8 = "";
      }

      KB::append_format(v5, "[%s] removed by %s\n", v6, v8, "remove_low_word_score_candidate");
      KB::String::~String(&v11);
    }

    result = 1;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void KB::CandidateFilter_th::remove_candidate_having_more_words(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v5 != v6)
  {
    v7 = *v5;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZNK2KB18CandidateFilter_th34remove_candidate_having_more_wordsERNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKS3_P10__CFString_block_invoke;
    v9[3] = &__block_descriptor_tmp_6;
    v10 = v7;
    v9[4] = a4;
    v8 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>((v5 + 1000), v6, v9);
    std::vector<KB::Candidate>::erase(a2, v8, *(a2 + 8));
  }
}

BOOL ___ZNK2KB18CandidateFilter_th34remove_candidate_having_more_wordsERNSt3__16vectorINS_9CandidateENS1_9allocatorIS3_EEEERKS3_P10__CFString_block_invoke(uint64_t a1, KB::Candidate *this)
{
  v12[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *this;
  if (*this > v2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      KB::Candidate::capitalized_string(&v10, this);
      v6 = v11;
      if (!v11)
      {
        v6 = v12;
      }

      if (v10)
      {
        v7 = v6;
      }

      else
      {
        v7 = "";
      }

      KB::append_format(v4, "[%s] removed by %s\n", v5, v7, "remove_candidate_having_more_words");
      KB::String::~String(&v10);
    }
  }

  result = v3 > v2;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void KB::CandidateFilter_th::filter_candidates(uint64_t *a1, uint64_t a2, uint64_t a3, KB::CandidateFilterResources *this)
{
  v8 = KB::CandidateFilterResources::debug_stream(this);
  KB::CandidateFilter_th::remove_duplicate_candidate_with_the_same_surface_form(v8, a2, v9, v8);
  v10 = KB::CandidateFilterResources::debug_stream(this);
  KB::CandidateFilter_th::remove_low_word_score_candidate(a1, a2, a3, v10);
  v11 = KB::CandidateFilterResources::debug_stream(this);

  KB::CandidateFilter_th::remove_candidate_having_more_words(v11, a2, v12, v11);
}

uint64_t *KB::Candidate::operator=(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  WTF::VectorBuffer<KB::Word,3ul>::swap((a1 + 1), a2 + 1);
  v5 = *(a2 + 744);
  v6 = *(a2 + 760);
  a1[97] = *(a2 + 97);
  *(a1 + 93) = v5;
  *(a1 + 95) = v6;
  KB::LanguageModelContext::operator=((a1 + 98), a2 + 49);
  KB::String::operator=();
  v7 = (a1 + 115);
  if (*(a1 + 943) < 0)
  {
    operator delete(*v7);
  }

  v8 = *(a2 + 920);
  a1[117] = *(a2 + 117);
  *v7 = v8;
  *(a2 + 943) = 0;
  *(a2 + 920) = 0;
  KB::ByteString::operator=();
  *(a1 + 60) = a2[60];
  v9 = a1[122];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[122] = 0;
  v10 = *(a2 + 122);
  *(a2 + 122) = 0;
  a1[122] = v10;
  v11 = a1[123];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[123] = 0;
  v12 = *(a2 + 123);
  *(a2 + 123) = 0;
  a1[123] = v12;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t KB::LanguageModelContext::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::vector<TITokenID>::__move_assign(a1 + 16, a2 + 1);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v6;
  language_modeling::v1::LinguisticContext::operator=();
  language_modeling::v1::LinguisticContext::operator=();
  std::vector<std::string>::__vdeallocate((a1 + 80));
  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  return a1;
}

__int128 *WTF::VectorBuffer<KB::Word,3ul>::swap(__int128 *result, void *a2)
{
  v2 = result + 1;
  v3 = a2 + 2;
  v4 = *a2;
  if (*result == result + 1)
  {
    if (v4 == v3)
    {
      for (i = 0; i != 3; ++i)
      {
        for (j = 0; j != 240; ++j)
        {
          v14 = *(v2 + j);
          *(v2 + j) = *(v3 + j);
          *(v3 + j) = v14;
        }

        v3 += 30;
        v2 += 15;
      }
    }

    else
    {
      v6 = 0;
      *result = *a2;
      *a2 = v3;
      a2[1] = 3;
      do
      {
        for (k = 0; k != 240; ++k)
        {
          v8 = *(v2 + k);
          *(v2 + k) = *(v3 + k);
          *(v3 + k) = v8;
        }

        ++v6;
        v3 += 30;
        v2 += 15;
      }

      while (v6 != 3);
    }
  }

  else if (v4 == v3)
  {
    v9 = 0;
    *a2 = *result;
    *result = v2;
    *(result + 1) = 3;
    do
    {
      for (m = 0; m != 240; ++m)
      {
        v11 = *(v2 + m);
        *(v2 + m) = *(v3 + m);
        *(v3 + m) = v11;
      }

      ++v9;
      v3 += 30;
      v2 += 15;
    }

    while (v9 != 3);
  }

  else
  {
    v5 = *result;
    *result = *a2;
    *a2 = v5;
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

__n128 std::vector<TITokenID>::__move_assign(uint64_t a1, __n128 *a2)
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

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
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

void std::__tree<KB::String>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<KB::String>::destroy(a1, *a2);
    std::__tree<KB::String>::destroy(a1, a2[1]);
    KB::String::~String((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<KB::String>::__emplace_unique_key_args<KB::String,KB::String>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<KB::String>::__find_equal<KB::String>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<KB::String>::__find_equal<KB::String>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 8))
    {
      v6 = *(a3 + 8);
    }

    else
    {
      v6 = (a3 + 16);
    }

    do
    {
      while (1)
      {
        v7 = v4;
        v8 = v4[5];
        v9 = (v8 ? v8 : v7 + 6);
        if ((strcmp(v6, v9) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_15;
        }
      }

      if ((strcmp(v9, v6) & 0x80000000) == 0)
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

LABEL_15:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<KB::String>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

uint64_t std::__tree<KB::String>::find<KB::String>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<KB::String>::__lower_bound<KB::String>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 8) ? *(a2 + 8) : (a2 + 16);
  v7 = *(v5 + 40) ? *(v5 + 40) : (v5 + 48);
  if (strcmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<KB::String>::__lower_bound<KB::String>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 8))
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = (a2 + 16);
    }

    do
    {
      if (*(v5 + 40))
      {
        v7 = *(v5 + 40);
      }

      else
      {
        v7 = (v5 + 48);
      }

      v8 = strcmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
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

void operator new()
{
    ;
  }
}