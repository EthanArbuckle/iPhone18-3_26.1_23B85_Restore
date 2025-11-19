uint64_t KB::LanguageModelImplBase::should_not_suggest_or_predict_text(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  if ((*(*a1 + 16))(a1) && *a3 && **(*a3 + 8) != *(*(*a3 + 8) + 8))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    KB::LanguageModelImplBase::tokenize_text(a1, a2);
    v6 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void ___ZNK2KB21LanguageModelImplBase34should_not_suggest_or_predict_textERKNS_6StringERKN3WTF6RefPtrINS_19DictionaryContainerEEE_block_invoke(void *a1, unsigned __int16 *a2, void *a3)
{
  if ((*(*(a1[4] + 8) + 24) & 1) == 0 && (*a3 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL)
  {
    v23[7] = v3;
    v23[8] = v4;
    v7 = a1[5];
    v8 = a1[6];
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    *__p = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v18);
    language_modeling::v1::LinguisticContext::LinguisticContext((&v18 + 8));
    v19 = 0uLL;
    v20 = 0;
    KB::LanguageModelImplBase::static_words_for_string(v7, a2, v8, &v14, 1, 0, &v21);
    v23[0] = &v19;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v23);
    language_modeling::v1::LinguisticContext::~LinguisticContext((&v18 + 8));
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v18);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v14 + 1));
    }

    v9 = v21;
    if (v21 != v22)
    {
      while (1)
      {
        v10 = *(v9 + 104);
        if ((v10 & 0x800012) == 0)
        {
          v11 = (*(v9 + 104) & 0x2080) == 0x80 || (v10 & 0x2042000) == 0x2000000;
          if (!v11 && (*(v9 + 104) & 0x2004) != 4)
          {
            break;
          }
        }

        v9 += 240;
        if (v9 == v22)
        {
          v13 = 1;
          goto LABEL_20;
        }
      }
    }

    v13 = 0;
LABEL_20:
    *(*(a1[4] + 8) + 24) = v13;
    *&v14 = &v21;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v14);
  }
}

void KB::LanguageModelImplBase::static_words_for_string(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  KB::DictionaryContainer::derive_static_words(*a3, a7, a2);
  v14 = *a7;
  v13 = a7[1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 0x40000000;
  v19[2] = ___ZNK2KB21LanguageModelImplBase23static_words_for_stringERKNS_6StringERKN3WTF6RefPtrINS_19DictionaryContainerEEERKNS_20LanguageModelContextEbb_block_invoke;
  v19[3] = &__block_descriptor_tmp_10597;
  v20 = a6;
  v19[4] = a1;
  v19[5] = a2;
  v15 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Word *>,BOOL({block_pointer})(KB::Word const&)>(v14, v13, v19);
  std::vector<KB::Word>::erase(a7, v15, a7[1]);
  if ((a5 & 1) == 0)
  {
    while (v14 != v15)
    {
      v16 = *(v14 + 136);
      (*(*a1 + 424))(v17, a1, v14, &v16, a4, 0, *(v14 + 52));
      *(v14 + 48) = v17[0];
      if (v18 < 0)
      {
        operator delete(v17[2]);
      }

      v14 += 240;
    }
  }
}

BOOL ___ZNK2KB21LanguageModelImplBase23static_words_for_stringERKNS_6StringERKN3WTF6RefPtrINS_19DictionaryContainerEEERKNS_20LanguageModelContextEbb_block_invoke(uint64_t a1, const KB::String *a2)
{
  v3 = *(a2 + 17);
  v4 = *(a1 + 48) == 1 && HIDWORD(v3) == 0;
  return v4 || !KB::LanguageModel::lexicon_id_active(*(a1 + 32), v3) || !KB::String::equal(*(a1 + 40), a2, 0);
}

uint64_t std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Word *>,BOOL({block_pointer})(KB::Word const&)>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (((*(a3 + 16))(a3, v3) & 1) == 0)
    {
      v3 += 240;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 240; i != a2; i += 240)
      {
        if (((*(a3 + 16))(a3, i) & 1) == 0)
        {
          KB::String::operator=(v3, i);
          KB::ByteString::operator=((v3 + 32), (i + 32));
          v8 = *(i + 48);
          *(v3 + 56) = *(i + 56);
          *(v3 + 48) = v8;
          KB::String::operator=(v3 + 64, (i + 64));
          v9 = *(i + 96);
          v10 = *(i + 112);
          v11 = *(i + 144);
          *(v3 + 128) = *(i + 128);
          *(v3 + 144) = v11;
          *(v3 + 96) = v9;
          *(v3 + 112) = v10;
          KB::String::operator=(v3 + 160, (i + 160));
          *(v3 + 192) = *(i + 192);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v3 + 200, (i + 200));
          v3 += 240;
        }
      }
    }
  }

  return v3;
}

uint64_t KB::LanguageModelImplBase::is_text_blocklisted(KB::LanguageModel *a1, unsigned __int16 *a2, int a3, const KB::LanguageModelContext *a4, uint64_t a5)
{
  KB::LanguageModel::lexicon_id_active(a1, a3);
  if (!(*(*a1 + 16))(a1) || !*a5 || **(*a5 + 8) == *(*(*a5 + 8) + 8))
  {
    return 1;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x9002000000;
  v11[3] = __Block_byref_object_copy__10599;
  v11[4] = __Block_byref_object_dispose__10600;
  KB::LanguageModelContext::LanguageModelContext(&v12, a4);
  KB::LanguageModelImplBase::tokenize_text(a1, a2);
  v9 = *(v20 + 24);
  _Block_object_dispose(v11, 8);
  v23 = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v23);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v17);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v16);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __Block_byref_object_dispose__10600(uint64_t a1)
{
  v4 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 112));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 104));
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void ___ZNK2KB21LanguageModelImplBase19is_text_blocklistedERKNS_6StringEjRKNS_20LanguageModelContextERKN3WTF6RefPtrINS_19DictionaryContainerEEE27TIBlocklistSensitivityLevel_block_invoke(uint64_t a1, unsigned __int16 *a2, TITokenID *a3)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = *a3;
    if ((*a3 - 0x1F400000000) > 0xFFFFFE0CFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    KB::LanguageModelImplBase::static_words_for_string(*(a1 + 48), a2, *(a1 + 56), *(*(a1 + 40) + 8) + 40, 1, 1, &v17);
    v7 = v18;
    v8 = v17;
    if (v17 == v18)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v9 = v17 + 240;
      do
      {
        v10 = *(v9 - 136);
        v11 = (v10 >> 1) & 1;
        if ((v10 & 2) == 0)
        {
          break;
        }

        v12 = v9 == v18;
        v9 += 240;
      }

      while (!v12);
    }

    *(*(*(a1 + 32) + 8) + 24) = v11;
    if (!HIDWORD(*&v6))
    {
      if (v8 != v7)
      {
        for (i = v8 + 240; i != v7; i += 240)
        {
          if (*(v8 + 48) < *(i + 48))
          {
            v8 = i;
          }
        }
      }

      if (v8 == v7)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(v8 + 136);
      }
    }

    v19 = &v17;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v19);
    v14 = *(*(a1 + 32) + 8);
    if (*(v14 + 24))
    {
      v15 = 1;
    }

    else
    {
LABEL_22:
      v15 = (*(*v5 + 488))(v5, a2, v6, *(*(a1 + 40) + 8) + 40, *(a1 + 64));
      v14 = *(*(a1 + 32) + 8);
    }

    *(v14 + 24) = v15;
    v16 = v6;
    KB::LanguageModelContext::append((*(*(a1 + 40) + 8) + 40), v16, a2, 0);
  }
}

void KB::LanguageModelImplBase::set_app_context(KB::LanguageModelImplBase *this, const __CFString *a2)
{
  v4 = *(this + 17);
  std::mutex::lock(v4);
  KB::retain_ptr<__CFDictionary const*>::operator=(this + 6, a2);

  std::mutex::unlock(v4);
}

void KB::LanguageModelImplBase::update_lexicon_id_vector(KB::LanguageModelImplBase *this, CFArrayRef theArray)
{
  v18 = *MEMORY[0x277D85DE8];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v6 = *(this + 13);
    v5 = this + 104;
    *(v5 + 1) = v6;
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v10 = MEMORY[0x2318BC170](ValueAtIndex);
        if (v10)
        {
          v15 = 0;
          v16 = 32;
          v17 = 0;
          if (CFStringGetCString(v10, buffer, 32, 0x8000100u))
          {
            if (v17)
            {
              v11 = v15;
            }

            else
            {
              v11 = buffer;
            }

            v13 = TILexiconIDForLocaleIdentifier(v11);
            std::vector<unsigned int>::push_back[abi:nn200100](v5, &v13);
          }

          free(v15);
        }
      }
    }
  }

  else
  {
    *(this + 14) = *(this + 13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL KB::LanguageModelImplBase::does_support_english(KB::LanguageModelImplBase *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 4;
  do
  {
    result = TIIsLexiconIDEnglish(*(v3 - 4));
    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 4;
  }

  while (!v5);
  return result;
}

void KB::LanguageModelImplBase::LanguageModelImplBase(KB::LanguageModelImplBase *this, const KB::LanguageModelConfig *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *this = &unk_283FDC9A8;
  *(this + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 1);
  *(this + 2) = v5;
  if (v5)
  {
    CFRetain(v5);
    *(this + 2) = v5;
  }

  v6 = *(a2 + 2);
  *(this + 3) = v6;
  if (v6)
  {
    CFRetain(v6);
    *(this + 3) = v6;
  }

  v7 = *(a2 + 3);
  *(this + 4) = v7;
  if (v7)
  {
    CFRetain(v7);
    *(this + 4) = v7;
  }

  v8 = *(a2 + 4);
  *(this + 5) = v8;
  if (v8)
  {
    CFRetain(v8);
    *(this + 5) = v8;
  }

  v9 = *(a2 + 5);
  *(this + 6) = v9;
  if (v9)
  {
    CFRetain(v9);
    *(this + 6) = v9;
  }

  v10 = *(a2 + 6);
  *(this + 7) = v10;
  if (v10)
  {
    CFRetain(v10);
    *(this + 7) = v10;
  }

  v11 = *(a2 + 56);
  v12 = *(a2 + 72);
  v13 = *(a2 + 22);
  *(this + 104) = 0u;
  *(this + 24) = v13;
  *(this + 5) = v12;
  *(this + 4) = v11;
  *(this + 120) = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDAC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t __Block_byref_object_copy__10693(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void KB::CandidateFilterFlags::CandidateFilterFlags(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

uint64_t KB::CandidateFilterFlags::candidate_filter_flag_type(KB::CandidateFilterFlags *this, KB::CandidateFilterFlags *a2)
{
  if (this == a2)
  {
    return 2;
  }

  v2 = (this + 8);
  do
  {
    v3 = *(v2 - 4);
    if (v3)
    {
      break;
    }

    v4 = v2 == a2;
    v2 = (v2 + 8);
  }

  while (!v4);
  v5 = this;
  while ((*(v5 + 4) & 1) != 0)
  {
    v5 = (v5 + 8);
    if (v5 == a2)
    {
      return 2;
    }
  }

  if (!v3)
  {
    return 2;
  }

  while (1)
  {
    if (*(this + 4) == 1)
    {
      v6 = *this;
      if (v6 < 2)
      {
        break;
      }
    }

    this = (this + 8);
    if (this == a2)
    {
      return 2;
    }
  }

  return v6;
}

uint64_t TI::CP::PathEncoder::encode_path(TI::CP::PathEncoder *this)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*(this + 71) & 0x8000000000000000) != 0)
  {
    if (*(this + 7))
    {
      goto LABEL_26;
    }
  }

  else if (*(this + 71))
  {
    goto LABEL_26;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v15);
  v2 = *this;
  v3 = *(this + 1);
  while (v2 != v3)
  {
    v4 = *v2;
    v5 = v2[1];
    v2 += 3;
    *&v23[152] = v4;
    v24 = vextq_s8(v5, v5, 8uLL);
    std::ostream::write();
  }

  if ((v22 & 0x10) != 0)
  {
    v7 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v7 = v18;
    }

    locale = v17[4].__locale_;
    goto LABEL_15;
  }

  if ((v22 & 8) != 0)
  {
    locale = v17[1].__locale_;
    v7 = v17[3].__locale_;
LABEL_15:
    v6 = v7 - locale;
    if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v14) = v7 - locale;
    if (v6)
    {
      memmove(&v13, locale, v6);
    }

    goto LABEL_21;
  }

  v6 = 0;
  HIBYTE(v14) = 0;
LABEL_21:
  *(&v13 + v6) = 0;
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  *(this + 3) = v13;
  v9 = MEMORY[0x277D82818];
  *(this + 8) = v14;
  v15[0] = *v9;
  v10 = v9[9];
  *(v15 + *(v15[0] - 24)) = v9[8];
  v15[2] = v10;
  v16 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x2318BE200](v23);
LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
  return this + 48;
}

void KB::CandidateFilter_Indic::filter_candidates(KB::CandidateFilter_Indic *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*(*a2 + 444))
  {
    KB::Candidate::compute_string(*a2);
  }

  KB::String::String(v45, (v6 + 888));
  v50 = 0;
  do
  {
    v7 = HIWORD(v50);
    v8 = v46;
    if (!v46)
    {
      KB::String::compute_length(v45);
      v8 = v46;
    }

    if (v7 >= v8)
    {
      break;
    }

    v9 = KB::UTF8Iterator::next(v45);
  }

  while (!character_is_diacritic_or_has_diacritics(v9));
  if (v48)
  {
    v10 = v47 == 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    free(v48);
  }

  if (v7 < v8)
  {
    v11 = *(a4 + 2);
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
    }

    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::__value_func[abi:nn200100](v40, *(v11 + 8) + 112);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v11);
    v12 = *(a4 + 7);
    v13 = *a2;
    if (!*(*a2 + 444))
    {
      KB::Candidate::compute_string(*a2);
    }

    v14 = count_diacritics((v13 + 888));
    v39 = KB::Candidate::sort_key(*a2, v40);
    v15 = *a2;
    v16 = a2[1];
    v17 = 0x1CAC083126E978D5 * ((v16 - *a2) >> 3);
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = (v15 + 1000 * v19);
        if (!*(v20 + 444))
        {
          KB::Candidate::compute_string((v15 + 1000 * v19));
        }

        v21 = count_diacritics((v20 + 111));
        if (v21 < v14)
        {
          v22 = v21;
          if (KB::Candidate::should_suggest(v20))
          {
            if (!*v20)
            {
              goto LABEL_33;
            }

            v24 = 240 * *v20 - 240;
            v25 = (v20[1] + 120);
            do
            {
              v27 = *v25;
              v25 += 60;
              v26 = v27;
              if (v27)
              {
                v28 = 1;
              }

              else
              {
                v28 = v24 == 0;
              }

              v24 -= 240;
            }

            while (!v28);
            if (!v26)
            {
LABEL_33:
              v29 = *a2;
              if (!*(*a2 + 444))
              {
                KB::Candidate::compute_string(*a2);
              }

              if (!*(v20 + 444))
              {
                KB::Candidate::compute_string(v20);
              }

              if (KB::strings_have_spaces_in_same_positions((v29 + 888), (v20 + 111), v23))
              {
                v30 = KB::Candidate::sort_key(v20, v40);
                if (KB::operator==(v30, v39))
                {
                  v18 = v19;
                  v14 = v22;
                }
              }
            }
          }
        }

        v19 = (v19 + 1);
        v15 = *a2;
        v16 = a2[1];
        v17 = 0x1CAC083126E978D5 * ((v16 - *a2) >> 3);
      }

      while (v17 > v19);
      if (v18)
      {
        *(v15 + 250 * v18 + 186) = 0;
        if (v12)
        {
          KB::Candidate::capitalized_string((v15 + 1000 * v18), v45);
          v31 = v48;
          if (!v48)
          {
            v31 = &v49;
          }

          if (v45[0])
          {
            v32 = v31;
          }

          else
          {
            v32 = "";
          }

          KB::Candidate::capitalized_string(*a2, v41);
          v34 = v43;
          if (!v43)
          {
            v34 = &v44;
          }

          if (v41[0])
          {
            v35 = v34;
          }

          else
          {
            v35 = "";
          }

          KB::append_format(v12, "[%s] boosted over [%s] by %s\n", v33, v32, v35, "boost_word_with_minimum_diacritics");
          if (v43 && v42 == 1)
          {
            free(v43);
          }

          if (v48 && v47 == 1)
          {
            free(v48);
          }

          v15 = *a2;
          v16 = a2[1];
          v17 = 0x1CAC083126E978D5 * ((v16 - *a2) >> 3);
        }
      }
    }

    v36 = 126 - 2 * __clz(v17);
    if (v16 == v15)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v15, v16, v37, 1);
    std::__function::__value_func<KB::ByteString ()(KB::String const&)>::~__value_func[abi:nn200100](v40);
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t count_diacritics(const KB::String *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::String::String(v8, a1);
  v1 = 0;
  v2 = 0;
  for (i = 0; ; v1 = HIWORD(i))
  {
    v3 = v9;
    if (!v9)
    {
      KB::String::compute_length(v8);
      v3 = v9;
    }

    if (v1 >= v3)
    {
      break;
    }

    v4 = KB::UTF8Iterator::next(v8);
    v2 = (v2 + character_is_diacritic_or_has_diacritics(v4));
  }

  if (v11)
  {
    v5 = v10 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v11);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL character_is_diacritic_or_has_diacritics(UChar32 a1)
{
  v2 = 1;
  if (!u_getIntPropertyValue(a1, UCHAR_TRAIL_CANONICAL_COMBINING_CLASS))
  {
    return ((1 << u_charType(a1)) & 0x4000050) != 0;
  }

  return v2;
}

void TI::CP::ContextualShapeRecognizer::store_shapes(TI::CP::ContextualShapeRecognizer *this)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v2 = *(this + 38);
  if (v2)
  {
    do
    {
      if ((v2[20] & 9) != 0)
      {
        v3 = &v16;
      }

      else
      {
        v3 = &v19;
      }

      std::vector<TI::CP::ShapeRecord>::push_back[abi:nn200100](v3, (v2 + 5));
      v2 = *v2;
    }

    while (v2);
    v4 = v19;
    v5 = v16;
    v6 = v17;
    v7 = 0xF0F0F0F0F0F0F0F1 * ((v20 - v19) >> 3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = 0;
  }

  if (v7 >= 1)
  {
    v8 = (*(this + 60) * v7);
    if (0xF0F0F0F0F0F0F0F1 * (v6 - v5) < v8)
    {
      v9 = v7 & 0x7FFFFFFF;
      v10 = v4 + 136 * v9 - 56;
      do
      {
        v11 = v4 + 136 * arc4random_uniform(v9);
        std::vector<TI::CP::ShapeRecord>::push_back[abi:nn200100](&v16, v11);
        *v11 = *(v10 - 80);
        std::string::operator=((v11 + 8), (v10 - 72));
        TI::CP::Path::operator=(v11 + 32, (v10 - 48));
        std::string::operator=((v11 + 80), v10);
        v12 = *(v10 + 36);
        *(v11 + 104) = *(v10 + 24);
        *(v11 + 116) = v12;
        v5 = v16;
        v6 = v17;
        if (v9 < 2)
        {
          break;
        }

        --v9;
        v10 -= 136;
      }

      while (0xF0F0F0F0F0F0F0F1 * (v17 - v16) < v8);
    }
  }

  if (v5 != v6)
  {
    v13 = *(this + 70);
    v14 = v5 + 10;
    do
    {
      if (v13 <= 9999)
      {
        TI::CP::ShapeStore::store_shape(this + 208, v14 - 9, v14, *(v14 + 6), *(v14 + 4));
        v13 = *(this + 70) + 1;
        *(this + 70) = v13;
      }

      v15 = v14 + 7;
      v14 += 17;
    }

    while (v15 != v6);
  }

  v22 = &v16;
  std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](&v22);
  v16 = &v19;
  std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](&v16);
}

uint64_t std::vector<TI::CP::ShapeRecord>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<TI::CP::ShapeRecord>::__emplace_back_slow_path<TI::CP::ShapeRecord const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 8);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 24) = *(a2 + 24);
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    std::vector<TI::CP::PathSample>::vector[abi:nn200100]((v4 + 32), (a2 + 32));
    std::vector<unsigned int>::vector[abi:nn200100]((v4 + 56), (a2 + 56));
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(v4 + 96) = *(a2 + 96);
      *(v4 + 80) = v8;
    }

    v9 = *(a2 + 104);
    *(v4 + 116) = *(a2 + 116);
    *(v4 + 104) = v9;
    result = v4 + 136;
  }

  a1[1] = result;
  return result;
}

void std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        v6 = *(v4 - 10);
        if (v6)
        {
          *(v4 - 9) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 13);
        if (v7)
        {
          *(v4 - 12) = v7;
          operator delete(v7);
        }

        if (*(v4 - 105) < 0)
        {
          operator delete(*(v4 - 16));
        }

        v4 -= 17;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void TI::CP::ContextualShapeRecognizer::remove_text_usage(int8x8_t *this, const KB::String *a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  KB::String::String(v23, " \t\n");
  KB::String::trim(a2, v23, v25);
  v4 = v27;
  if (!v27)
  {
    v4 = v28;
  }

  if (v25[0])
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v5);
  if (v27 && v26 == 1)
  {
    free(v27);
  }

  if (v24 && v23[6] == 1)
  {
    free(v24);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(&this[36], __p))
  {
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::find<std::string>(&this[36], __p);
    if (v6)
    {
      v7 = v6;
      v8 = this[37];
      v9 = v6[1];
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        if (v9 >= *&v8)
        {
          v9 %= *&v8;
        }
      }

      else
      {
        v9 &= *&v8 - 1;
      }

      v11 = this[36];
      v12 = *(*&v11 + 8 * v9);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != v6);
      if (v13 == &this[38])
      {
        goto LABEL_31;
      }

      v14 = v13[1];
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v9)
      {
LABEL_31:
        if (!*v6)
        {
          goto LABEL_32;
        }

        v15 = *(*v6 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v9)
        {
LABEL_32:
          *(*&v11 + 8 * v9) = 0;
        }
      }

      v16 = *v6;
      if (*v6)
      {
        v17 = *(*&v16 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v17 >= *&v8)
          {
            v17 %= *&v8;
          }
        }

        else
        {
          v17 &= *&v8 - 1;
        }

        if (v17 != v9)
        {
          *(*&this[36] + 8 * v17) = v13;
          v16 = *v6;
        }
      }

      *v13 = v16;
      *v6 = 0;
      --*&this[39];
      if (v6[17].i8[7] < 0)
      {
        operator delete(*&v6[15]);
      }

      v18 = v7[12];
      if (v18)
      {
        v7[13] = v18;
        operator delete(v18);
      }

      v19 = v7[9];
      if (v19)
      {
        v7[10] = v19;
        operator delete(v19);
      }

      if (v7[8].i8[7] < 0)
      {
        operator delete(*&v7[6]);
      }

      if (v7[4].i8[7] < 0)
      {
        operator delete(*&v7[2]);
      }

      operator delete(v7);
    }
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void TI::CP::ContextualShapeRecognizer::text_accepted_from_UI(TI::CP::ContextualShapeRecognizer *this, const KB::String *a2, const KB::String *a3, unsigned int a4, int a5)
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (*(this + 8) != *(this + 9))
  {
    KB::String::String(&v24, " \t\n");
    KB::String::trim(a2, &v24, v27);
    if (v25)
    {
      v9 = BYTE6(v24) == 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      free(v25);
    }

    KB::String::String(&v24, " ");
    KB::String::find_last_of(&v20, v27, &v24);
    if (v25 && BYTE6(v24) == 1)
    {
      free(v25);
    }

    v10 = v27[0];
    if (v29)
    {
      v11 = v29;
    }

    else
    {
      v11 = v30;
    }

    v24 = v11;
    LODWORD(v25) = v27[0];
    HIDWORD(v25) = v27[0];
    v26 = 0;
    KB::String::iterator::initialize(&v24);
    if (DWORD2(v20) != v25)
    {
      *v22 = v20;
      v23 = v21;
      KB::String::iterator::operator++(v22);
      v16 = v11;
      v17 = v10;
      v18 = v10;
      v19 = 0;
      KB::String::iterator::initialize(&v16);
      KB::String::String(&v24, v22, &v16);
      KB::String::operator=(v27, &v24);
      if (v25)
      {
        if (BYTE6(v24) == 1)
        {
          free(v25);
        }
      }
    }

    KB::String::String(v22, " \t\n");
    KB::String::trim(a3, v22, &v24);
    if (v22[1] && BYTE6(v22[0]) == 1)
    {
      free(v22[1]);
    }

    if (a5)
    {
      v12 = 8;
    }

    else
    {
      v12 = 2;
    }

    if (v24)
    {
      v13 = (v29 ? v29 : v30);
      v14 = *(a3 + 1) ? *(a3 + 1) : a3 + 16;
      if (strcmp(v13, v14))
      {
        (*(*this + 96))(this, &v24);
        v12 = 1;
      }
    }

    if (*(this + 70) <= 9999)
    {
      TI::CP::ContextualShapeRecognizer::store_path_with_correct_word(this, v27, v12);
    }

    *(this + 9) = *(this + 8);
    *(this + 12) = *(this + 11);
    if (v25 && BYTE6(v24) == 1)
    {
      free(v25);
    }

    if (v29 && v28 == 1)
    {
      free(v29);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void TI::CP::ContextualShapeRecognizer::store_path_with_correct_word(void *a1, unsigned __int16 *a2, int a3)
{
  if (*a2 < 2u)
  {
    return;
  }

  v4 = a1 + 8;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[9] - a1[8]) >> 4) < 2)
  {
    return;
  }

  if (*(a2 + 1))
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = (a2 + 8);
  }

  std::string::basic_string[abi:nn200100]<0>(&v27, v6);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v27;
  }

  v24 = 0u;
  memset(&v25, 0, sizeof(v25));
  *v22 = 0u;
  *v23 = 0u;
  *&v26[16] = a3;
  std::vector<TI::CP::PathSample>::vector[abi:nn200100](v28, v4);
  std::vector<unsigned int>::vector[abi:nn200100](v29, a1 + 11);
  __p = 0;
  v31 = 0;
  v32 = 0;
  v7 = TI::CP::PathEncoder::encode_path(v28);
  std::string::operator=(&v25, v7);
  v8 = a1[8];
  *v26 = -1431655765 * ((a1[9] - v8) >> 4);
  *&v26[8] = *(v8 + 16);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v27;
  }

  else
  {
    v9 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, size);
  v12 = v11;
  v13 = a1[37];
  if (!*&v13)
  {
    goto LABEL_38;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *&v13)
    {
      v16 = v11 % *&v13;
    }
  }

  else
  {
    v16 = (*&v13 - 1) & v11;
  }

  v17 = *(a1[36] + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v12)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v13)
      {
        v19 %= *&v13;
      }
    }

    else
    {
      v19 &= *&v13 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_38;
    }

LABEL_37:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_38;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v18 + 2, &v27))
  {
    goto LABEL_37;
  }

  *(v18 + 10) = v20;
  std::string::operator=(v18 + 2, &v21);
  TI::CP::Path::operator=((v18 + 9), v22);
  std::string::operator=(v18 + 5, &v25);
  *(v18 + 9) = *v26;
  *(v18 + 156) = *&v26[12];
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v23[1])
  {
    *&v24 = v23[1];
    operator delete(v23[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void TI::CP::ContextualShapeRecognizer::generate_candidates(uint64_t a1, uint64_t a2, int a3, double a4, __n128 a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 328) & 1) == 0)
  {
    a4 = *(*(a1 + 16) + 16);
    *(a1 + 272) = 1;
    *(a1 + 264) = a4;
  }

  TI::CP::ContextualShapeRecognizer::hypotheses_for_path(a1, (a1 + 64), __p, a4, a5);
  v7 = __p[1];
  v8 = __p[0];
  if (__p[1] != __p[0])
  {
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      KB::String::String(v25, v8);
      v10 = *(v8 + 4);
      v28 = v8[10];
      v27 = v10;
      v11 = v10;
      KB::String::String(&valuePtr, v25);
      KB::Candidate::Candidate(v23, &valuePtr, 0);
      if (v22 && BYTE6(valuePtr) == 1)
      {
        free(v22);
      }

      v12 = fmin(1.0 / (v11 / 100.0), 1.0);
      v24 = logf(v12);
      std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v23);
      if (a3 >= 1)
      {
        Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        valuePtr = v28;
        v14 = CFNumberCreate(v9, kCFNumberDoubleType, &valuePtr);
        CFDictionarySetValue(Mutable, @"num_records", v14);
        if (v14)
        {
          CFRelease(v14);
        }

        valuePtr = v12;
        v15 = CFNumberCreate(v9, kCFNumberDoubleType, &valuePtr);
        CFDictionarySetValue(Mutable, @"final_score", v15);
        if (v15)
        {
          CFRelease(v15);
        }

        CFDictionarySetValue(Mutable, @"source", @"shapematching");
        KB::Candidate::add_sources_info(v23, @"shapematching", Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      KB::Candidate::~Candidate(v23);
      if (v26 && v25[6] == 1)
      {
        free(v26);
      }

      v8 += 12;
    }

    while (v8 != v7);
    v8 = __p[0];
  }

  if (v8)
  {
    v16 = __p[1];
    v17 = v8;
    if (__p[1] != v8)
    {
      do
      {
        v18 = *(v16 - 5);
        if (v18 && *(v16 - 42) == 1)
        {
          free(v18);
        }

        v16 -= 12;
      }

      while (v16 != v8);
      v17 = __p[0];
    }

    __p[1] = v8;
    operator delete(v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void TI::CP::ContextualShapeRecognizer::hypotheses_for_path(TI::CP::ContextualShapeRecognizer *this@<X0>, __int128 **a2@<X1>, void *a3@<X8>, double a4@<D0>, __n128 a5@<Q1>)
{
  v30[23] = *MEMORY[0x277D85DE8];
  shape_as_simd_double3(v30, *a2, a2[1], a4, a5);
  v8 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  v9 = (v8 * 1.4);
  if (v8 <= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 - v9;
  }

  TI::CP::ShapeStore::recall_shapes((this + 208), v10, v9 - 1431655765 * (a2[1] - *a2), &v28);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v11 = v28;
  for (i = v29; v11 != i; v11 += 136)
  {
    LODWORD(v21) = *v11;
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v13 = *(v11 + 8);
      v22.__r_.__value_.__r.__words[2] = *(v11 + 24);
      *&v22.__r_.__value_.__l.__data_ = v13;
    }

    std::vector<TI::CP::PathSample>::vector[abi:nn200100](&v23, (v11 + 32));
    std::vector<unsigned int>::vector[abi:nn200100](v25, (v11 + 56));
    if (*(v11 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *(v11 + 80), *(v11 + 88));
    }

    else
    {
      v14 = *(v11 + 80);
      v26.__r_.__value_.__r.__words[2] = *(v11 + 96);
      *&v26.__r_.__value_.__l.__data_ = v14;
    }

    v15 = *(v11 + 104);
    *(v27 + 12) = *(v11 + 116);
    v16 = *(v27 + 12);
    v27[0] = v15;
    shape_as_simd_double3(&__p, v23, v24, *&v15, v16);
    if (v30[1] != v30[0] && v20 != __p)
    {
      v17 = (v20 - __p) >> 5;
      if (!(v17 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v17);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    if (__p)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  v21 = &v28;
  std::vector<TI::CP::ShapeRecord>::__destroy_vector::operator()[abi:nn200100](&v21);
  if (v30[0])
  {
    operator delete(v30[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void shape_as_simd_double3(const TI::CP::Path *a1, __int128 *a2, __int128 *a3, double a4, __n128 a5)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      v9 = *v6;
      a5.n128_u64[0] = *(v6 + 3);
      v10 = *(a1 + 2);
      if (v8 >= v10)
      {
        v11 = *a1;
        v12 = v8 - *a1;
        v13 = (v12 >> 5) + 1;
        if (v13 >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v14 = v10 - v11;
        if (v14 >> 4 > v13)
        {
          v13 = v14 >> 4;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          v17 = *v6;
          if (!(v15 >> 59))
          {
            operator new();
          }

          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v16 = 32 * (v12 >> 5);
        *v16 = v9;
        *(v16 + 16) = a5;
        v8 = v16 + 32;
        memcpy(0, v11, v12);
        *a1 = 0;
        *(a1 + 2) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v8 = v9;
        *(v8 + 16) = a5;
        v8 += 32;
      }

      *(a1 + 1) = v8;
      v6 += 3;
    }

    while (v6 != a3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::ContextualShapeRecognizer::recognition_hypothesis>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<TI::CP::ContextualShapeRecognizer::recognition_hypothesis>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      v5 = *(v2 - 40);
      if (v5 && *(v2 - 42) == 1)
      {
        free(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<TI::CP::ContextualShapeRecognizer::recognition_hypothesis>,TI::CP::ContextualShapeRecognizer::recognition_hypothesis*>(KB::String *this, KB::String *a2, uint64_t a3)
{
  if (this != a2)
  {
    v5 = this;
    v6 = this;
    do
    {
      *a3 = 0x100000;
      *(a3 + 4) = 0;
      *(a3 + 6) = 0;
      *(a3 + 8) = 0;
      KB::String::operator=(a3, v6);
      v7 = *(v6 + 4);
      *(a3 + 40) = *(v6 + 10);
      *(a3 + 32) = v7;
      v6 = (v6 + 48);
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      v8 = *(v5 + 1);
      if (v8)
      {
        if (*(v5 + 6) == 1)
        {
          free(v8);
        }
      }

      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }
}

double TI::CP::ContextualShapeRecognizer::path_length(TI::CP::ContextualShapeRecognizer *this)
{
  v1 = *(this + 3);
  if (*(this + 2) == v1)
  {
    return 0.0;
  }

  else
  {
    return *(v1 - 16);
  }
}

uint64_t TI::CP::ContextualShapeRecognizer::reset_path(uint64_t this)
{
  *(this + 192) = *(this + 184);
  *(this + 144) = *(this + 136);
  *(this + 168) = *(this + 160);
  *(this + 24) = *(this + 16);
  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 96) = *(this + 88);
  *(this + 112) = 7;
  return this;
}

double TI::CP::ContextualShapeRecognizer::last_touch(TI::CP::ContextualShapeRecognizer *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  v3 = (v2 - 40);
  v4 = v1 == v2;
  if (v1 == v2)
  {
    v5 = MEMORY[0x277CBF348];
  }

  else
  {
    v5 = v2 - 48;
  }

  v6 = (MEMORY[0x277CBF348] + 8);
  if (!v4)
  {
    v6 = v3;
  }

  v7 = *v6;
  return *v5;
}

void TI::CP::ContextualShapeRecognizer::~ContextualShapeRecognizer(TI::CP::ContextualShapeRecognizer *this)
{
  TI::CP::ContextualShapeRecognizer::~ContextualShapeRecognizer(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDBBB0;
  v2 = *(this + 38);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 143) < 0)
      {
        operator delete(v2[15]);
      }

      v4 = v2[12];
      if (v4)
      {
        v2[13] = v4;
        operator delete(v4);
      }

      v5 = v2[9];
      if (v5)
      {
        v2[10] = v5;
        operator delete(v5);
      }

      if (*(v2 + 71) < 0)
      {
        operator delete(v2[6]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v6 = *(this + 36);
  *(this + 36) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  TI::CP::ShapeStore::~ShapeStore(this + 26);
  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    *(this + 21) = v8;
    operator delete(v8);
  }

  v9 = *(this + 17);
  if (v9)
  {
    *(this + 18) = v9;
    operator delete(v9);
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
  }

  v11 = *(this + 8);
  if (v11)
  {
    *(this + 9) = v11;
    operator delete(v11);
  }

  v12 = *(this + 5);
  if (v12)
  {
    *(this + 6) = v12;
    operator delete(v12);
  }

  v13 = *(this + 2);
  if (v13)
  {
    *(this + 3) = v13;
    operator delete(v13);
  }

  *this = &unk_283FDDD68;
  v14 = *(this + 1);
  if (v14)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }
}

unsigned int *TI::Favonius::SearchNodeResultQueue::visit(unsigned int *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    if ((*(v2 + 160) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v5 = *(result + 2);
      v4 = *(result + 3);
      if (v5 >= v4)
      {
        v7 = *(result + 1);
        v8 = (v5 - v7) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v9 = v4 - v7;
        v10 = v9 >> 2;
        if (v9 >> 2 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v38 = v3 + 2;
        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v11);
        }

        v34 = 0;
        v35 = 8 * v8;
        v36 = 8 * v8;
        v37 = 0;
        *(8 * v8) = v2;
        atomic_fetch_add((v2 + 8), 1u);
        v12 = v37;
        v6 = v36 + 8;
        v13 = *(v3 + 1);
        v14 = *(v3 + 2);
        v15 = (v35 + v13 - v14);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v13, v14, v15);
        v16 = *(v3 + 1);
        *(v3 + 1) = v15;
        *(v3 + 2) = v6;
        v17 = *(v3 + 3);
        *(v3 + 3) = v12;
        v36 = v16;
        v37 = v17;
        v34 = v16;
        v35 = v16;
        std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v34);
      }

      else
      {
        *v5 = v2;
        v6 = (v5 + 1);
        atomic_fetch_add((v2 + 8), 1u);
      }

      *(v3 + 2) = v6;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeResultQueue::LessThanWordScore &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> *>>(*(v3 + 1), v6, (v6 - *(v3 + 1)) >> 3);
    }

    result = (*(*v3 + 16))(&v33);
    v18 = v33;
    if (v33)
    {
      v33 = 0;
      v19 = *(v3 + 9);
      v20 = *(v3 + 10);
      if (v19 >= v20)
      {
        v22 = *(v3 + 8);
        v23 = (v19 - v22) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v25 = v20 - v22;
        if (v25 >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        v26 = v25 >= 0x7FFFFFFFFFFFFFF8;
        v27 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v26)
        {
          v27 = v24;
        }

        v38 = v3 + 16;
        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(v27);
        }

        *(8 * v23) = 0;
        v21 = 8 * v23 + 8;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(v22, v19, 0);
        v28 = *(v3 + 8);
        *(v3 + 8) = 0;
        *(v3 + 9) = v21;
        v29 = *(v3 + 10);
        *(v3 + 10) = 0;
        v36 = v28;
        v37 = v29;
        v34 = v28;
        v35 = v28;
        std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(&v34);
      }

      else
      {
        *v19 = 0;
        v21 = (v19 + 8);
      }

      *(v3 + 9) = v21;
      v30 = *(v21 - 8);
      *(v21 - 8) = v18;
      if (v30)
      {
        v31 = atomic_load(v30 + 2);
        if (v31 == 1)
        {
          (*(*v30 + 8))(v30);
        }

        else
        {
          atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
        }
      }

      TI::Favonius::SearchNodeSourceQueue::push_heap((v3 + 10), *(v21 - 8));
      result = v33;
      if (v33)
      {
        v32 = atomic_load(v33 + 2);
        if (v32 == 1)
        {
          return (*(*v33 + 8))();
        }

        else
        {
          atomic_fetch_add(v33 + 2, 0xFFFFFFFF);
        }
      }
    }
  }

  return result;
}

unsigned int *std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeResultQueue::LessThanWordScore &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> *>>(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v4 = result;
  v5 = v3 >> 1;
  v6 = &result[2 * (v3 >> 1)];
  v9 = *(a2 - 8);
  v7 = (a2 - 8);
  v8 = v9;
  if ((*(*v6 + 36) + (*(*v6 + 35) * 0.35)) >= (*(v9 + 144) + (*(v9 + 140) * 0.35)))
  {
    return result;
  }

  *v7 = 0;
  v10 = *v6;
  do
  {
    v11 = v6;
    *v6 = 0;
    v12 = *v7;
    *v7 = v10;
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = atomic_load(v12 + 2);
    if (v13 == 1)
    {
      (*(*v12 + 8))(v12);
LABEL_7:
      if (!v5)
      {
        break;
      }

      goto LABEL_10;
    }

    atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    if (!v5)
    {
      break;
    }

LABEL_10:
    v5 = (v5 - 1) >> 1;
    v6 = &v4[2 * v5];
    v10 = *v6;
    v7 = v11;
  }

  while ((*(*v6 + 36) + (*(*v6 + 35) * 0.35)) < (*(v8 + 144) + (*(v8 + 140) * 0.35)));
  result = *v11;
  *v11 = v8;
  if (result)
  {
    v14 = atomic_load(result + 2);
    if (v14 == 1)
    {
      v15 = *(*result + 8);

      return v15();
    }

    else
    {
      atomic_fetch_add(result + 2, 0xFFFFFFFF);
    }
  }

  return result;
}

unsigned int *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<WTF::RefPtr<TI::Favonius::SearchNodeSource>>,WTF::RefPtr<TI::Favonius::SearchNodeSource>*>(unsigned int *result, void *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      v5 += 2;
      *a3++ = v6;
    }

    while (v5 != a2);
    do
    {
      result = *v4;
      if (*v4)
      {
        v7 = atomic_load(result + 2);
        if (v7 == 1)
        {
          result = (*(*result + 8))(result);
        }

        else
        {
          atomic_fetch_add(result + 2, 0xFFFFFFFF);
        }
      }

      ++v4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<WTF::RefPtr<TI::Favonius::SearchNodeSource>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    if (v4)
    {
      v5 = atomic_load(v4 + 2);
      if (v5 == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        atomic_fetch_add(v4 + 2, 0xFFFFFFFF);
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned int *TI::Favonius::SearchNodeResultQueue::next_word_node(unsigned int *this, uint64_t a2)
{
  v3 = this;
  while (1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = v4 == v5 ? -INFINITY : *(*v4 + 144) + (*(*v4 + 140) * 0.35);
    v7 = *(a2 + 40);
    if (v7 == *(a2 + 48))
    {
      break;
    }

    v8 = *(*v7 + 24);
    if (v8 < v6 || (LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    TI::Favonius::SearchNodeSourceQueue::next_search_node(&v29, -INFINITY, (a2 + 40));
    v30 = v29;
    TI::Favonius::SearchNodeResultQueue::visit(a2, &v30);
    this = v30;
    if (v30)
    {
      v9 = atomic_load(v30 + 2);
      if (v9 == 1)
      {
        this = (*(*v30 + 8))();
      }

      else
      {
        atomic_fetch_add(v30 + 2, 0xFFFFFFFF);
      }
    }
  }

  if (v4 == v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v4;
    if (*v4)
    {
      atomic_fetch_add((v10 + 8), 1u);
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    v11 = (v5 - v4) >> 3;
    if (v11 >= 2)
    {
      v12 = 0;
      v28 = *v4;
      *v4 = 0;
      v13 = v4;
      do
      {
        v14 = v13;
        v13 += 2 * v12 + 2;
        v15 = 2 * v12;
        v12 = (2 * v12) | 1;
        v16 = v15 + 2;
        if (v16 < v11 && (*(*v13 + 144) + (*(*v13 + 140) * 0.35)) < (*(*(v13 + 1) + 144) + (*(*(v13 + 1) + 140) * 0.35)))
        {
          v13 += 2;
          v12 = v16;
        }

        v17 = *v13;
        *v13 = 0;
        v18 = *v14;
        *v14 = v17;
        if (v18)
        {
          v19 = atomic_load(v18 + 2);
          if (v19 == 1)
          {
            (*(*v18 + 8))(v18);
          }

          else
          {
            atomic_fetch_add(v18 + 2, 0xFFFFFFFF);
          }
        }
      }

      while (v12 <= ((v11 - 2) >> 1));
      v20 = (v5 - 2);
      if (v5 - 2 == v13)
      {
        v24 = *v13;
        *v13 = v28;
        if (v24)
        {
          v25 = atomic_load(v24 + 2);
          if (v25 == 1)
          {
            (*(*v24 + 8))(v24);
          }

          else
          {
            atomic_fetch_add(v24 + 2, 0xFFFFFFFF);
          }
        }
      }

      else
      {
        v21 = *v20;
        *v20 = 0;
        v22 = *v13;
        *v13 = v21;
        if (v22)
        {
          v23 = atomic_load(v22 + 2);
          if (v23 == 1)
          {
            (*(*v22 + 8))(v22);
          }

          else
          {
            atomic_fetch_add(v22 + 2, 0xFFFFFFFF);
          }
        }

        v26 = *v20;
        *v20 = v28;
        if (v26)
        {
          v27 = atomic_load(v26 + 2);
          if (v27 == 1)
          {
            (*(*v26 + 8))(v26);
          }

          else
          {
            atomic_fetch_add(v26 + 2, 0xFFFFFFFF);
          }
        }

        std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::SearchNodeResultQueue::LessThanWordScore &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::SearchNode> *>>(v4, (v13 + 2), ((v13 + 2) - v4) >> 3);
      }
    }

    this = std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100]((a2 + 8), *(a2 + 16) - 8);
  }

  *v3 = v10;
  return this;
}

unsigned int *std::vector<WTF::RefPtr<TI::Favonius::SearchNode>>::__base_destruct_at_end[abi:nn200100](unsigned int *result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; i -= 8)
  {
    v5 = *(i - 8);
    result = v5;
    if (v5)
    {
      v6 = atomic_load(result + 2);
      if (v6 == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        atomic_fetch_add(result + 2, 0xFFFFFFFF);
      }
    }
  }

  *(v3 + 1) = a2;
  return result;
}

id UIKeyboardUserDirectory()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = TI_KB_USER_DIRECTORY();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  if (![v1 fileExistsAtPath:v0 isDirectory:&v12])
  {
    v10 = 0;
    v3 = [v1 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v10];
    v2 = v10;
    if (v3)
    {
      goto LABEL_10;
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v4 = TIOSLogFacility();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "UIKeyboardUserDirectory", v2];
    *buf = 138412290;
    v14 = v5;
LABEL_19:
    _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_14;
  }

  if (v12)
  {
    v2 = 0;
LABEL_10:
    v7 = v0;
    goto LABEL_15;
  }

  v11 = 0;
  v6 = [v1 removeItemAtPath:v0 error:&v11];
  v2 = v11;
  if (v6)
  {
    goto LABEL_10;
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v4 = TIOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "UIKeyboardUserDirectory", v2];
    *buf = 138412290;
    v14 = v5;
    goto LABEL_19;
  }

LABEL_14:

  v7 = 0;
LABEL_15:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id UIAssetPathForInputMode(void *a1)
{
  v1 = a1;
  v2 = [v1 normalizedIdentifier];
  if (TIInputModeIsTransliteration())
  {
    [v1 normalizedIdentifier];
  }

  else
  {
    [v1 languageWithRegion];
  }
  v3 = ;

  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy__17805;
  v11 = __Block_byref_object_dispose__17806;
  cf = 0;
  LDEnumerateAssetDataItems();
  v5 = v8[5];
  v8[5] = 0;
  _Block_object_dispose(&v7, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

CFMutableArrayRef UIAssetLMBundlePathForInputMode(void *a1)
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = [a1 preferredModelLocaleIdentifier];
  v3 = [v1 localeWithLocaleIdentifier:v2];

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  LDEnumerateAssetDataItems();
  if (Mutable)
  {
    v5 = Mutable;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

uint64_t std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

id UIKeyboardUnigramLexiconPathForInputMode(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v13[0] = &unk_283FDD4C0;
    v14 = v13;
    v2 = UIAssetPathForInputMode(v1);
    std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v13);
  }

  else
  {
    v3 = v1;
    v4 = [v3 locale];
    v5 = [v4 scriptCode];
    v6 = [v5 isEqualToString:@"Latn"];

    v7 = v3;
    if (v6)
    {
      v8 = [v3 locale];
      v9 = [v8 languageCode];
      v7 = +[TIInputMode inputModeWithIdentifier:isSiriMode:](TIInputMode, "inputModeWithIdentifier:isSiriMode:", v9, [v3 isSiriMode]);
    }

    v13[0] = &unk_283FDD478;
    v14 = v13;
    v10 = UIAssetPathForInputMode(v7);
    std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v13);

    if (v10)
    {
      v2 = v10;
    }

    else
    {
      v13[0] = &unk_283FDD430;
      v14 = v13;
      v2 = UIAssetPathForInputMode(v3);
      std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v13);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

id UIKeyboardPhraseLexiconPathForInputMode(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD550;
  }

  else
  {
    v2 = &unk_283FDD508;
  }

  v6[0] = v2;
  v6[3] = v6;
  v3 = UIAssetPathForInputMode(v1);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id UIKeyboardDeltaLexiconPathForInputMode(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD5E0;
  }

  else
  {
    v2 = &unk_283FDD598;
  }

  v6[0] = v2;
  v6[3] = v6;
  v3 = UIAssetPathForInputMode(v1);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id UIKeyboardMorphemeLexiconPathForInputMode(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6[0] = &unk_283FDD628;
  v6[3] = v6;
  v2 = UIAssetPathForInputMode(v1);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*)>::~__value_func[abi:nn200100](v6);
  if (v2)
  {
    v3 = [v2 stringByAppendingPathComponent:@"morpheme.dat"];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id UIKeyboardOTALanguageModelPathsForInputMode(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD748;
  }

  else
  {
    v2 = &unk_283FDD700;
  }

  v6[0] = v2;
  v6[3] = v6;
  v3 = UIAssetLMBundlePathForInputMode(v1);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::~__value_func[abi:nn200100](uint64_t a1)
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

id UIKeyboardSystemLanguageModelPathsForInputMode(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isSiriMode])
  {
    v2 = &unk_283FDD6B8;
  }

  else
  {
    v2 = &unk_283FDD670;
  }

  v6[0] = v2;
  v6[3] = v6;
  v3 = UIAssetLMBundlePathForInputMode(v1);

  std::__function::__value_func<BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::~__value_func[abi:nn200100](v6);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id UIKeyboardOTADictionaryPathForContentType(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[TIAssetManager sharedAssetManager];
  v9 = [v8 ddsAssetContentItemsWithContentType:v5 inputMode:v6 filteredWithRegion:0];

  v10 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Content items for type %@: %@", "UIKeyboardOTADictionaryPathForContentType", v5, v9];
    *buf = 138412290;
    v34 = v25;
    _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v26 = v6;
    v27 = v5;
    v14 = *v29;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v28 + 1) + 8 * i) path];
        v17 = [v16 path];

        v18 = [v17 lastPathComponent];
        if (![v7 length] || objc_msgSend(v18, "hasPrefix:", v7))
        {
          if ([v18 hasSuffix:@".dat"])
          {
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            v20 = [v19 fileExistsAtPath:v17];

            if (v20)
            {

              goto LABEL_16;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v17 = 0;
LABEL_16:
    v6 = v26;
    v5 = v27;
  }

  else
  {
    v17 = 0;
  }

  v21 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s dictionaryPathForContentType ddsResult: %@", "UIKeyboardOTADictionaryPathForContentType", v17];
    *buf = 138412290;
    v34 = v22;
    _os_log_impl(&dword_22CA55000, v21, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

id UIKeyboardStaticUnigramsFile(void *a1)
{
  v1 = a1;
  v2 = TIInputModeUseMorphemeLevelLexicon();
  v3 = [TIInputMode inputModeWithIdentifier:v1];

  if (v2)
  {
    UIKeyboardMorphemeLexiconPathForInputMode(v3);
  }

  else
  {
    UIKeyboardUnigramLexiconPathForInputMode(v3);
  }
  v4 = ;

  return v4;
}

id UIKeyboardDynamicDictionaryFileWithSiriMode(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 length])
  {
    v7 = TIInputModeGetLanguageWithRegion();
    v8 = [v7 isEqualToString:@"en_US"];

    if (v8)
    {
      v9 = @"dynamic-text.dat";
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = TIInputModeGetLanguageWithRegion();
      v9 = [v11 stringByAppendingString:@"-dynamic-text.dat"];

      if (!a3)
      {
LABEL_8:
        if (v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = UIKeyboardUserDirectory();
        }

        v14 = v13;
        v10 = [v13 stringByAppendingPathComponent:v9];

        goto LABEL_12;
      }
    }

    v12 = [@"siri-" stringByAppendingString:v9];

    v9 = v12;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

__CFString *UIKeyboardLanguageFromDynamicDictionaryPath(void *a1)
{
  v1 = [a1 lastPathComponent];
  if ([v1 isEqualToString:@"dynamic-text.dat"])
  {
    v2 = @"en_US";
  }

  else if ([v1 hasSuffix:@"-dynamic-text.dat"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(@"-dynamic-text.dat", "length")}];
  }

  else
  {
    v2 = @"intl";
  }

  return v2;
}

id UIKeyboardSimulatedImplicitInputModeDetectionForPrimaryInputMode(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(TILanguageSelectionController);
  v3 = objc_opt_new();
  v4 = [TIInputMode inputModeWithIdentifier:v1];
  v5 = [(TILanguageSelectionController *)v2 simulateImplicitInputModeDetectionForPrimaryInputMode:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) normalizedIdentifier];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t *std::unique_ptr<TI::RejectionsDatabase>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = sqlite3_close(*v2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109120;
        v7[1] = v4;
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "RejectionsDatabase: Error closing database: %d", v7, 8u);
      }
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    v5 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x2318BE270);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::unique_ptr<KB::LanguageModelContext>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
    language_modeling::v1::LinguisticContext::~LinguisticContext((v2 + 72));
    language_modeling::v1::LinguisticContext::~LinguisticContext((v2 + 64));
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v2 + 24) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_emplace<KB::TypologyLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDAE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t __Block_byref_object_copy__11451(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __destroy_helper_block_a8_40c46_ZTSNSt3__110shared_ptrIN2KB13LanguageModelEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_a8_40c46_ZTSNSt3__110shared_ptrIN2KB13LanguageModelEEE(uint64_t result, uint64_t a2)
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

id KB::createNSArray<std::unordered_set<unsigned long long> const&>(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 24)];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:i[2]];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  return v2;
}

void populateAutocorrectionAccuracyFields(void *a1, float *a2)
{
  v9 = a1;
  [v9 setGeometryScore:a2[187]];
  [v9 setWordScore:a2[188]];
  v3 = *(a2 + 1) + 240 * *a2;
  v4 = TILocaleIdentifierForLexiconID(*(v3 - 104));
  if (v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    [v9 setLexiconLocale:v6];
  }

  v7 = *a2;
  if (*a2 == 1)
  {
    [v9 setDynamicUsageCount:*(v3 - 116)];
    [v9 setDynamicPenaltyCount:*(v3 - 112)];
    v7 = *a2;
  }

  LODWORD(v5) = *(*(a2 + 1) + 240 * v7 - 184);
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v9 setStaticLinguisticLikelihood:v8];
}

void std::allocator_traits<std::allocator<KB::LanguageModelContext>>::destroy[abi:nn200100]<KB::LanguageModelContext,void,0>(uint64_t a1)
{
  v4 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<std::vector<KB::LanguageModelContext>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDADA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

__n128 __Block_byref_object_copy__334(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__335(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t __Block_byref_object_copy__330(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0x100000;
  v2 = a1 + 48;
  *(v2 + 4) = 0;
  *(v2 + 6) = 0;
  *(v2 + 8) = 0;
  return KB::String::operator=(v2, (a2 + 48));
}

void __Block_byref_object_dispose__331(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (*(a1 + 54) == 1)
    {
      free(v2);
    }
  }
}

__n128 __Block_byref_object_copy__325(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(KB::Candidate &,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

double std::__fs::filesystem::path::filename[abi:nn200100](uint64_t a1, std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a1 = __dst;
  *(a1 + 16) = v6;
  return result;
}

void __destroy_helper_block_a8_72c16_ZTSN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*(a1 + 78) == 1)
    {
      free(v2);
    }
  }
}

std::string *std::optional<std::string>::operator=[abi:nn200100]<char const*,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void ___ZL38TIGetSkipStickersSuggestionGatingValuev_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"SkipStickersSuggestionGating" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

void ___ZL35TIGetKeyboardDisableHitTestingValuev_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardDisableHitTesting" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC28]];
}

__n128 __Block_byref_object_copy__1248(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t std::tuple<KB::CandidateCollection,KB::String>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 && *(a1 + 110) == 1)
  {
    free(v2);
  }

  v4 = (a1 + 72);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 48);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 24);
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = a1;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::optional<KB::String>::operator=[abi:nn200100]<KB::String,void>(uint64_t a1, KB::String *a2)
{
  if (*(a1 + 32) == 1)
  {
    return KB::String::operator=(a1, a2);
  }

  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  result = KB::String::operator=(a1, a2);
  *(result + 32) = 1;
  return result;
}

uint64_t TI::Favonius::KeyboardLayout::KeyboardLayout(uint64_t result, uint64_t a2)
{
  *result = 1;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  v2 = *(MEMORY[0x277CBF398] + 16);
  *(result + 120) = *MEMORY[0x277CBF398];
  *(result + 64) = 1065353216;
  *(result + 104) = 1065353216;
  *(result + 112) = 0;
  *(result + 136) = v2;
  *(result + 160) = 0;
  *(result + 152) = result + 160;
  *(result + 192) = 0;
  *(result + 184) = 0;
  *(result + 168) = 0;
  *(result + 176) = result + 184;
  *(result + 200) = 0;
  *(result + 208) = 0x100000;
  *(result + 212) = 0;
  *(result + 214) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  if (*a2)
  {
    TI::Favonius::KeyboardLayout::add_key(result, *(a2 + 8));
  }

  return result;
}

void TI::Favonius::KeyboardLayout::add_key(uint64_t a1, CGRect **a2)
{
  *(a1 + 120) = CGRectUnion(*(a1 + 120), (*a2)[2]);
  std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100]((a1 + 8), a2);
  v4 = *a2;
  v5 = WORD2((*a2)->origin.y);
  if (!WORD2((*a2)->origin.y))
  {
    KB::String::compute_length(v4 + 4);
    v5 = *(v4 + 6);
    v4 = *a2;
  }

  if (v5 != 1)
  {
LABEL_24:
    operator new();
  }

  v6 = *(v4 + 2);
  if (!v6)
  {
    v6 = (v4 + 6);
  }

  v14 = v6;
  v7 = *(v4 + 4);
  v15 = 0;
  v16 = v7;
  v17 = 0;
  KB::String::iterator::initialize(&v14);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v17;
      if (v8 <= v17)
      {
        v10 = v17 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & v17;
    }

    v11 = *(*(a1 + 32) + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v17)
        {
          if (*(i + 4) == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= v8)
            {
              v13 %= v8;
            }
          }

          else
          {
            v13 &= v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  operator new();
}

void std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100](uint64_t **a1, atomic_uint **a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v11 = 8 * v7;
    v12 = *a2;
    *(8 * v7) = *a2;
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
    }

    v6 = (v11 + 8);
    v13 = *a1;
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = *v16;
        *v16++ = 0;
        *v17++ = v18;
      }

      while (v16 != v14);
      do
      {
        if (*v13)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(*v13);
        }

        ++v13;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *v3 = *a2;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    v6 = (v3 + 1);
  }

  a1[1] = v6;
}

uint64_t *std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::__emplace_unique_key_args<float,std::piecewise_construct_t const&,std::tuple<float &&>,std::tuple<>>(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 7);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

atomic_uint *TI::Favonius::KeyboardLayout::find_nearest_key@<X0>(atomic_uint *this@<X0>, CGPoint a2@<0:D0, 8:D1>, atomic_uint **a3@<X8>)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    y = a2.y;
    x = a2.x;
    this = 0;
    v8 = INFINITY;
    do
    {
      v9 = *v4;
      v10 = sqrt((*(*v4 + 13) - y) * (*(*v4 + 13) - y) + (*(*v4 + 12) - x) * (*(*v4 + 12) - x));
      if (v8 <= v10)
      {
        v9 = this;
        v10 = v8;
      }

      else
      {
        atomic_fetch_add(v9, 1u);
        if (this)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(this);
        }
      }

      ++v4;
      v8 = v10;
      this = v9;
    }

    while (v4 != v5);
  }

  *a3 = v9;
  return this;
}

uint64_t TI::Favonius::KeyboardLayout::find_key_for_touch@<X0>(uint64_t this@<X0>, CGPoint a2@<0:D0, 8:D1>, CGRect **a3@<X8>)
{
  v4 = *(this + 8);
  v5 = *(this + 16);
  if (v4 == v5)
  {
    v10 = 0;
LABEL_11:
    *a3 = v10;
  }

  else
  {
    y = a2.y;
    x = a2.x;
    v8 = 0;
    v9 = INFINITY;
    while (1)
    {
      v13.x = x;
      v13.y = y;
      this = CGRectContainsPoint((*v4)[2], v13);
      v10 = *v4;
      if (this)
      {
        break;
      }

      v11 = sqrt((v10[3].origin.y - y) * (v10[3].origin.y - y) + (v10[3].origin.x - x) * (v10[3].origin.x - x));
      if (v9 <= v11)
      {
        v10 = v8;
        v11 = v9;
      }

      else
      {
        atomic_fetch_add(v10, 1u);
        if (v8)
        {
          this = WTF::RefCounted<TI::Favonius::Key>::deref(v8);
        }
      }

      ++v4;
      v9 = v11;
      v8 = v10;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    *a3 = v10;
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
    }

    if (v8)
    {

      return WTF::RefCounted<TI::Favonius::Key>::deref(v8);
    }
  }

  return this;
}

uint64_t TI::Favonius::KeyboardLayout::enumerate_keys(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; v2 += 8)
  {
    result = (*(a2 + 16))(a2, v2);
  }

  return result;
}

void TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *&v32 = a3;
  *(&v32 + 1) = a4;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    do
    {
      std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::push_back[abi:nn200100](&v29, v4);
      v7 = v29;
      v8 = v30;
      *v28 = v32;
      v33 = v32;
      std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(CGPoint,void({block_pointer})(WTF::RefPtr<TI::Favonius::LayoutKey> const&))::$_0 &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::LayoutKey>*>>(v29, v30, &v33, (v30 - v29) >> 3);
      ++v4;
    }

    while (v4 != v5);
    for (; v7 != v8; v30 = v8)
    {
      (*(a2 + 16))(a2, v7);
      v9 = v28[0];
      v33 = *v28;
      v10 = (v8 - v7) >> 3;
      if (v10 >= 2)
      {
        v11 = 0;
        v12 = *v7;
        *v7 = 0;
        v13 = v7;
        do
        {
          v14 = &v13[v11 + 1];
          v15 = 2 * v11;
          v11 = (2 * v11) | 1;
          v16 = v15 + 2;
          if (v16 < v10)
          {
            v17 = sqrt((*(*v14 + 104) - v28[1]) * (*(*v14 + 104) - v28[1]) + (*(*v14 + 96) - v9) * (*(*v14 + 96) - v9));
            v18 = sqrt((*(v14[1] + 104) - v28[1]) * (*(v14[1] + 104) - v28[1]) + (*(v14[1] + 96) - v9) * (*(v14[1] + 96) - v9));
            if (v17 > v18)
            {
              ++v14;
              v11 = v16;
            }
          }

          v19 = *v14;
          *v14 = 0;
          v20 = *v13;
          *v13 = v19;
          if (v20)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v20);
            v9 = v28[0];
          }

          v13 = v14;
        }

        while (v11 <= ((v10 - 2) >> 1));
        v21 = (v8 - 8);
        if (v14 == (v8 - 8))
        {
          v25 = *v14;
          *v14 = v12;
          if (v25)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v25);
          }
        }

        else
        {
          v22 = *v21;
          *v21 = 0;
          v23 = *v14;
          *v14 = v22;
          if (v23)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v23);
          }

          v24 = *v21;
          *v21 = v12;
          if (v24)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v24);
          }

          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(CGPoint,void({block_pointer})(WTF::RefPtr<TI::Favonius::LayoutKey> const&))::$_0 &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::LayoutKey>*>>(v7, (v14 + 1), &v33, v14 + 1 - v7);
        }
      }

      v27 = *(v8 - 8);
      v8 -= 8;
      v26 = v27;
      if (v27)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v26);
      }
    }
  }

  *&v33 = &v29;
  std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v33);
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,TI::Favonius::KeyboardLayout::enumerate_keys_in_centroid_distance_order(CGPoint,void({block_pointer})(WTF::RefPtr<TI::Favonius::LayoutKey> const&))::$_0 &,std::__wrap_iter<WTF::RefPtr<TI::Favonius::LayoutKey>*>>(uint64_t result, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v11 = *(a2 - 8);
    v9 = (a2 - 8);
    v10 = v11;
    v12 = a3[1];
    v13 = *(*v8 + 96) - *a3;
    *&v13 = sqrt((*(*v8 + 104) - v12) * (*(*v8 + 104) - v12) + v13 * v13);
    v14 = sqrt((*(v11 + 104) - v12) * (*(v11 + 104) - v12) + (*(v11 + 96) - *a3) * (*(v11 + 96) - *a3));
    if (*&v13 > v14)
    {
      *v9 = 0;
      v15 = *v8;
      do
      {
        v16 = v8;
        *v8 = 0;
        v17 = *v9;
        *v9 = v15;
        if (v17)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v17);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        v18 = a3[1];
        v15 = *v8;
        v19 = *(*v8 + 96) - *a3;
        *&v19 = sqrt((*(*v8 + 104) - v18) * (*(*v8 + 104) - v18) + v19 * v19);
        v20 = sqrt((*(v10 + 104) - v18) * (*(v10 + 104) - v18) + (*(v10 + 96) - *a3) * (*(v10 + 96) - *a3));
        v9 = v16;
      }

      while (*&v19 > v20);
      result = *v16;
      *v16 = v10;
      if (result)
      {

        return WTF::RefCounted<TI::Favonius::Key>::deref(result);
      }
    }
  }

  return result;
}

uint64_t TI::Favonius::KeyboardLayout::key_for_char@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = *(this + 40);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*(this + 32) + 8 * v5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *v6;
  if (!v7)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_16;
  }

  this = v7[3];
  if (!this)
  {
LABEL_17:
    *a3 = 0;
    return this;
  }

  atomic_fetch_add(this, 1u);
  *a3 = this;
  atomic_fetch_add(this, 1u);
  return WTF::RefCounted<TI::Favonius::Key>::deref(this);
}

float TI::Favonius::KeyboardLayout::enumerate_keys_with_sort_key(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v6 <= 0xE)
  {
    v8 = (a2 + 1);
  }

  else
  {
    v8 = *(a2 + 1);
  }

  v9 = KB::String::hash(v8, v6);
  v11 = *(a1 + 80);
  if (!v11)
  {
    return *v10.i32;
  }

  v12 = v9;
  v10 = vcnt_s8(v11);
  v10.i16[0] = vaddlv_u8(v10);
  v13 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v11 <= v9)
    {
      v14 = v9 % v11;
    }
  }

  else
  {
    v14 = (v11 - 1) & v9;
  }

  v15 = *(*(a1 + 72) + 8 * v14);
  if (!v15)
  {
    return *v10.i32;
  }

  v16 = *v15;
  if (!*v15)
  {
    return *v10.i32;
  }

  while (1)
  {
    v17 = *(v16 + 1);
    if (v17 == v12)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= v11)
      {
        v17 %= v11;
      }
    }

    else
    {
      v17 &= v11 - 1;
    }

    if (v17 != v14)
    {
      return *v10.i32;
    }

LABEL_19:
    v16 = *v16;
    if (!v16)
    {
      return *v10.i32;
    }
  }

  if (!KB::operator==(v16 + 8, a2))
  {
    goto LABEL_19;
  }

  v18 = v16;
  do
  {
    v18 = *v18;
  }

  while (v18 && KB::operator==(v18 + 8, a2));
  while (v16 != v18)
  {
    v19 = *(a3 + 24);
    if (!v19)
    {
      v20 = std::__throw_bad_function_call[abi:nn200100]();
      *v10.i32 = TI::Favonius::KeyboardLayout::median_key_half_width(v20);
      return *v10.i32;
    }

    (*(*v19 + 48))(v19, v16 + 4);
    v16 = *v16;
  }

  return *v10.i32;
}

float TI::Favonius::KeyboardLayout::median_key_half_width(TI::Favonius::KeyboardLayout *this)
{
  v1 = *(this + 19);
  v2 = this + 160;
  if (v1 != (this + 160))
  {
    v3 = ((*(this + 2) - *(this + 1)) >> 3) >> 1;
    while (1)
    {
      v4 = *(v1 + 8);
      v5 = v3 < v4;
      v3 -= v4;
      if (v5)
      {
        break;
      }

      v6 = *(v1 + 1);
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
          v7 = *(v1 + 2);
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
      if (v7 == v2)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = v1;
LABEL_12:
  if (v7 == v2)
  {
    return 15.0;
  }

  else
  {
    return v7[7];
  }
}

float TI::Favonius::KeyboardLayout::median_key_half_height(TI::Favonius::KeyboardLayout *this)
{
  v1 = *(this + 22);
  v2 = this + 184;
  if (v1 != (this + 184))
  {
    v3 = ((*(this + 2) - *(this + 1)) >> 3) >> 1;
    while (1)
    {
      v4 = *(v1 + 8);
      v5 = v3 < v4;
      v3 -= v4;
      if (v5)
      {
        break;
      }

      v6 = *(v1 + 1);
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
          v7 = *(v1 + 2);
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
      if (v7 == v2)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = v1;
LABEL_12:
  if (v7 == v2)
  {
    return 22.0;
  }

  else
  {
    return v7[7];
  }
}

float TI::Favonius::KeyboardLayout::get_horizontal_center(TI::Favonius::KeyboardLayout *this)
{
  IsNull = CGRectIsNull(*(this + 120));
  result = 0.0;
  if (!IsNull)
  {
    return CGRectGetMidX(*(this + 120));
  }

  return result;
}

BOOL TI::Favonius::KeyboardLayout::is_far_away_point(CGFloat *this, CGPoint a2)
{
  y = a2.y;
  x = a2.x;
  v5 = TI::Favonius::KeyboardLayout::median_key_half_height(this);
  v7 = this[15];
  v6 = this[16];
  v9 = this[17];
  v8 = this[18];
  v14.origin.x = v7;
  v14.origin.y = v6;
  v14.size.width = v9;
  v14.size.height = v8;
  if (x >= CGRectGetMinX(v14))
  {
    v16.origin.x = v7;
    v16.origin.y = v6;
    v16.size.width = v9;
    v16.size.height = v8;
    v10 = 0.0;
    if (CGRectGetMaxX(v16) < x)
    {
      v17.origin.x = v7;
      v17.origin.y = v6;
      v17.size.width = v9;
      v17.size.height = v8;
      v10 = x - CGRectGetMaxX(v17);
    }
  }

  else
  {
    v15.origin.x = v7;
    v15.origin.y = v6;
    v15.size.width = v9;
    v15.size.height = v8;
    v10 = CGRectGetMinX(v15) - x;
  }

  v18.origin.x = v7;
  v18.origin.y = v6;
  v18.size.width = v9;
  v18.size.height = v8;
  if (y >= CGRectGetMinY(v18))
  {
    v20.origin.x = v7;
    v20.origin.y = v6;
    v20.size.width = v9;
    v20.size.height = v8;
    MaxY = CGRectGetMaxY(v20);
    v11 = 0.0;
    if (MaxY < y)
    {
      v21.origin.x = v7;
      v21.origin.y = v6;
      v21.size.width = v9;
      v21.size.height = v8;
      v11 = y - CGRectGetMaxY(v21);
    }
  }

  else
  {
    v19.origin.x = v7;
    v19.origin.y = v6;
    v19.size.width = v9;
    v19.size.height = v8;
    v11 = CGRectGetMinY(v19) - y;
  }

  return hypot(v10, v11) > (v5 * 4.0);
}

void KB::BoostPreferedFormForSortkey::filter_candidates(KB::BoostPreferedFormForSortkey *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if ((0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3)) >= 2)
  {
    v8 = *(a4 + 2);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
    }

    v9 = *(v8 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
    v10 = KB::Candidate::num_words_preserving_input(v4, a3, v9 + 144);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = 240 * v10;
      v14 = 1;
      do
      {
        KB::Word::capitalized_string((*(a3 + 1) + v11), v45);
        if (KB::string_has_uppercase_characters(v45, v15) || KB::string_contains_surface_form_features(v45, v16))
        {
          v12 = v14;
        }

        if (v47 && v46 == 1)
        {
          free(v47);
        }

        v11 += 240;
        ++v14;
      }

      while (v13 != v11);
    }

    else
    {
      v12 = 0;
    }

    v17 = *a2;
    v18 = *(a2 + 1) - *a2;
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v44 = 0x1CAC083126E978D5 * (v18 >> 3);
      do
      {
        v21 = v17 + 1000 * v20;
        if (*v21 == *v4)
        {
          if (!*(v21 + 888))
          {
            KB::Candidate::compute_string(v21);
          }

          if (!*(v4 + 888))
          {
            KB::Candidate::compute_string(v4);
          }

          v22 = *(v9 + 168);
          if (!v22)
          {
            std::__throw_bad_function_call[abi:nn200100]();
          }

          if ((*(*v22 + 48))(v22, v21 + 888, v4 + 888))
          {
            if (*v21)
            {
              v23 = (*(v4 + 8) + 136);
              v24 = (*(v21 + 8) + 136);
              v25 = 240 * *v21;
              while (1)
              {
                v27 = *v24;
                v24 += 60;
                v26 = v27;
                v28 = *v23;
                v23 += 60;
                if (v26 != v28)
                {
                  break;
                }

                v25 -= 240;
                if (!v25)
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {
LABEL_28:
              if (KB::Candidate::num_words_preserving_input(v21, a3, v9 + 144) >= v12)
              {
                if (*v21 == v12)
                {
                  v29 = 0;
                }

                else
                {
                  v29 = 0;
                  v30 = -240 * v12 + 240 * *v21;
                  v31 = (*(v21 + 8) + 240 * v12 + 104);
                  do
                  {
                    v32 = *v31;
                    v31 += 60;
                    v29 += (v32 >> 3) & 1;
                    v30 -= 240;
                  }

                  while (v30);
                }

                v33 = v44;
                if (v19 < v29)
                {
                  v33 = v20;
                }

                v44 = v33;
                if (v19 <= v29)
                {
                  v19 = v29;
                }
              }
            }
          }
        }

        ++v20;
        v17 = *a2;
        v34 = 0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3);
      }

      while (v20 < v34);
      if (v44)
      {
        if (v44 < v34)
        {
          v35 = *(v17 + 744);
          v36 = v35 + logf(*(this + 2) * 1.1);
          std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>(v17, (v17 + 1000 * v44), (v17 + 1000 * v44 + 1000));
          v37 = *a2;
          *(*a2 + 744) = v36;
          v38 = *(a4 + 7);
          if (v38)
          {
            KB::Candidate::capitalized_string(v37, v45);
            v40 = v47;
            if (!v47)
            {
              v40 = v48;
            }

            if (v45[0])
            {
              v41 = v40;
            }

            else
            {
              v41 = "";
            }

            KB::append_format(v38, "[%s] %s\n", v39, v41, "filter_candidates");
            if (v47 && v46 == 1)
            {
              free(v47);
            }
          }
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void KB::BoostMinimumVariation::filter_candidates(KB::BoostMinimumVariation *this, KB::Candidate **a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 != a2[1])
  {
    if (!*(v4 + 444))
    {
      KB::Candidate::compute_string(*a2);
    }

    KB::String::String(v55, (v4 + 222));
    v9 = expf(v4[186]);
    if (!*(v4 + 444))
    {
      KB::Candidate::compute_string(v4);
    }

    v11 = KB::count_word_medial_punctuation((v4 + 222), v8);
    if (!*(v4 + 444))
    {
      KB::Candidate::compute_string(v4);
    }

    v12 = KB::count_precomposed_diacritic_letters((v4 + 222), v10);
    v13 = *(a4 + 2);
    if (v13)
    {
      atomic_fetch_add(v13, 1u);
    }

    v14 = *(v13 + 8);
    WTF::RefCounted<KB::DictionaryContainer>::deref(v13);
    v16 = *a2;
    v15 = a2[1];
    if ((0x1CAC083126E978D5 * ((v15 - *a2) >> 3)) >= 2)
    {
      v44 = a4;
      v45 = 0;
      v17 = v12 + v11;
      v18 = 1;
      do
      {
        v19 = (v16 + 1000 * v18);
        if ((expf(v19[186]) * *(this + 2)) < v9)
        {
          break;
        }

        if (!*(v19 + 444))
        {
          KB::Candidate::compute_string((v16 + 1000 * v18));
        }

        v22 = KB::count_word_medial_punctuation((v19 + 222), v20);
        if (!*(v19 + 444))
        {
          KB::Candidate::compute_string((v16 + 1000 * v18));
        }

        v23 = KB::count_precomposed_diacritic_letters((v19 + 222), v21) + v22;
        if (v23 < v17 && KB::CandidateFilter::is_suggestible_for_input(v16 + 125 * v18, a3, 1, this + 16, v14 + 144, 0))
        {
          if (!*v19)
          {
            goto LABEL_66;
          }

          v24 = 240 * *v19 - 240;
          v25 = (*(v19 + 1) + 120);
          do
          {
            v27 = *v25;
            v25 += 60;
            v26 = v27;
            if (v27)
            {
              v28 = 1;
            }

            else
            {
              v28 = v24 == 0;
            }

            v24 -= 240;
          }

          while (!v28);
          if (!v26)
          {
LABEL_66:
            if (!*(v19 + 444))
            {
              KB::Candidate::compute_string((v16 + 1000 * v18));
            }

            v29 = *(v14 + 168);
            if (!v29)
            {
              v43 = std::__throw_bad_function_call[abi:nn200100]();
              KB::BoostMinimumVariation::filter_description(v43);
              return;
            }

            v30 = (*(*v29 + 48))(v29, v19 + 888, v55);
            if (v30)
            {
              v17 = v23;
            }

            v31 = v45;
            if (v30)
            {
              v31 = v18;
            }

            v45 = v31;
          }
        }

        v18 = (v18 + 1);
        v16 = *a2;
        v15 = a2[1];
      }

      while (0x1CAC083126E978D5 * ((v15 - *a2) >> 3) > v18);
      if (v45)
      {
        v32 = (v16 + 1000 * v45);
        v33 = expf(v32[186]);
        v32[186] = logf(v33 * *(this + 2));
        v34 = *(v44 + 7);
        if (v34)
        {
          KB::Candidate::capitalized_string(v32, v51);
          v35 = v53;
          if (!v53)
          {
            v35 = &v54;
          }

          if (v51[0])
          {
            v36 = v35;
          }

          else
          {
            v36 = "";
          }

          KB::Candidate::capitalized_string(v4, v47);
          v38 = v49;
          if (!v49)
          {
            v38 = &v50;
          }

          if (v47[0])
          {
            v39 = v38;
          }

          else
          {
            v39 = "";
          }

          KB::append_format(v34, "[%s] boosted over [%s] by %s\n", v37, v36, v39, "filter_candidates");
          if (v49 && v48 == 1)
          {
            free(v49);
          }

          if (v53 && v52 == 1)
          {
            free(v53);
          }

          v16 = *a2;
          v15 = a2[1];
        }

        v40 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v15 - v16) >> 3));
        if (v15 == v16)
        {
          v41 = 0;
        }

        else
        {
          v41 = v40;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,KB::Candidate *,false>(v16, v15, v41, 1);
      }
    }

    if (v56)
    {
      if (v55[6] == 1)
      {
        free(v56);
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void KB::BoostCaseVariantsOfTopCandidate::filter_candidates(KB::BoostCaseVariantsOfTopCandidate *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4 && (0x1CAC083126E978D5 * ((v4 - v5) >> 3)) >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v5 + 1000 * v8;
      if (*v5)
      {
        v10 = *v5 == *v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = 0;
        v12 = 0;
        while (++v12 < *v5)
        {
          KB::Word::capitalized_string((*(v5 + 8) + v11), v37);
          KB::Word::capitalized_string((*(v9 + 8) + v11), v34);
          v13 = KB::String::equal(v37, v34, 1);
          if (v36 && v35 == 1)
          {
            free(v36);
          }

          if (v39 && v38 == 1)
          {
            free(v39);
          }

          v11 += 240;
          if (!v13)
          {
            goto LABEL_38;
          }
        }

        KB::Word::capitalized_string((*(v5 + 8) + 240 * *v5 - 240), v37);
        KB::Word::capitalized_string((*(v9 + 8) + 240 * *v9 - 240), v34);
        v14 = KB::String::equal(v37, v34, 0);
        if (v36 && v35 == 1)
        {
          free(v36);
        }

        if (v39 && v38 == 1)
        {
          free(v39);
        }

        if (v14)
        {
          v15 = *(a4 + 7);
          if (v15)
          {
            v16 = 1000 * v8;
            KB::Candidate::capitalized_string((1000 * v8 + *a2), v37);
            v18 = v39;
            if (!v39)
            {
              v18 = v40;
            }

            v19 = "";
            if (v37[0])
            {
              v19 = v18;
            }

            KB::append_format(v15, "[%s] boosted capital case variant to the next spot that isn't a capital case variant\n", v17, v19);
            if (v39 && v38 == 1)
            {
              free(v39);
            }
          }

          else
          {
            v16 = 1000 * v8;
          }

          v20 = 1000 * v7 + 1000;
          if (v20 != v16)
          {
            std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<KB::Candidate *>>((v20 + *a2), (v16 + *a2), (v16 + *a2 + 1000));
          }

          ++v7;
        }
      }

LABEL_38:
      v8 = (v8 + 1);
      v5 = *a2;
      v21 = 0x1CAC083126E978D5 * ((*(a2 + 1) - *a2) >> 3);
    }

    while (v21 > v8);
    if (v7)
    {
      v22 = v7 + 1;
      if (v21 > v22 && v22 >= 2)
      {
        v23 = *(v5 + 744);
        v24 = (*(v5 + 1000 * v22 + 744) - v23) / v22;
        v25 = 1;
        v26 = 1000;
        do
        {
          v27 = (*a2 + v26);
          v27[186] = v23 + (v25 * v24);
          v28 = *(a4 + 7);
          if (v28)
          {
            KB::Candidate::capitalized_string(v27, v37);
            v30 = v39;
            if (!v39)
            {
              v30 = v40;
            }

            v31 = "";
            if (v37[0])
            {
              v31 = v30;
            }

            KB::append_format(v28, "[%s] updated omega after boost so order will be preserved after sort\n", v29, v31);
            if (v39 && v38 == 1)
            {
              free(v39);
            }
          }

          ++v25;
          v26 += 1000;
        }

        while (v22 != v25);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void KB::ExemptHighFrequencyWordsFromNoSuggest::filter_candidates(KB::ExemptHighFrequencyWordsFromNoSuggest *this, KB::CandidateCollection *a2, const KB::CandidateFilterLookupContext *a3, const KB::CandidateFilterResources *a4)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = *(a2 + 1);
  if (*a2 == v5)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v24 = *(a2 + 1);
  do
  {
    if (*v6)
    {
      v8 = v6[1];
      v9 = 240 * *v6;
      while (1)
      {
        v10 = *(v8 + 104);
        if ((v10 & 0x86) == 0)
        {
          goto LABEL_16;
        }

        if (*(v8 + 56) > 0.00001)
        {
          break;
        }

LABEL_17:
        v8 += 240;
        v9 -= 240;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      *(v8 + 104) = v10 & 0xFFFFFF79;
      v11 = *(a4 + 7);
      if (v11)
      {
        KB::Word::capitalized_string(v8, v26);
        v13 = v28;
        if (!v28)
        {
          v13 = v29;
        }

        if (v26[0])
        {
          v14 = v13;
        }

        else
        {
          v14 = "";
        }

        KB::append_format(v11, "[%s] updated no-suggest/no-predict flags for high frequency words\n", v12, v14);
        if (v28 && v27 == 1)
        {
          free(v28);
        }
      }

LABEL_16:
      ++v7;
      goto LABEL_17;
    }

LABEL_18:
    v6 += 125;
  }

  while (v6 != v24);
  if (!v7)
  {
    v6 = *a2;
    v5 = *(a2 + 1);
LABEL_21:
    if (v6 != v5)
    {
      v25 = v5;
      do
      {
        if (*v6)
        {
          v15 = v6[1];
          v16 = 240 * *v6;
          do
          {
            v17 = *(v15 + 26);
            if ((v17 & 0x86) != 0)
            {
              *(v15 + 26) = v17 & 0xFFFFFF79;
              v18 = *(a4 + 7);
              if (v18)
              {
                KB::Word::capitalized_string(v15, v26);
                v20 = v28;
                if (!v28)
                {
                  v20 = v29;
                }

                if (v26[0])
                {
                  v21 = v20;
                }

                else
                {
                  v21 = "";
                }

                KB::append_format(v18, "[%s] updated no-suggest/no-predict flags as there are no other suggestable candidates\n", v19, v21);
                if (v28 && v27 == 1)
                {
                  free(v28);
                }
              }
            }

            v15 = (v15 + 240);
            v16 -= 240;
          }

          while (v16);
        }

        v6 += 125;
      }

      while (v6 != v25);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t KB::RescoreShortWords::update_candidate_probability_if_better(KB::RescoreShortWords *this, KB::Candidate *a2, KB::Candidate *a3, const KB::CandidateFilterLookupContext *a4, const KB::CandidateFilterResources *a5)
{
  v19[125] = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 3);
  v8 = *(a5 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = *(a5 + 3);
    v10 = *(a5 + 4);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 16))(v9) ^ 1;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 1;
    if (v8)
    {
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  if ((v11 & 1) == 0)
  {
    if (*a3)
    {
      v12 = 240 * *a3;
      if ((*(*(a3 + 1) + 135) & 4) == 0)
      {
        v13 = (*(a3 + 1) + 16);
        if (*(*(a3 + 1) + 8))
        {
          v13 = *(*(a3 + 1) + 8);
        }

        v14 = *v13;
        if (v14 == 32)
        {
          v13[1];
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(1);
    }

    v16 = *(a5 + 3);
    v15 = *(a5 + 4);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    KB::Candidate::Candidate(v19, a3);
    std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>();
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL KB::RescoreShortWords::is_word_replaceable(KB::RescoreShortWords *this, const KB::Word *a2)
{
  if (!TIIsLexiconIDEnglish(*(a2 + 34)))
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    v3 = a2 + 16;
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v4);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(__p) != 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&KB::RescoreShortWords::short_word_map + 1);
  if (!*(&KB::RescoreShortWords::short_word_map + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&KB::RescoreShortWords::short_word_map + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&KB::RescoreShortWords::short_word_map + 1))
    {
      v9 = v4 % *(&KB::RescoreShortWords::short_word_map + 1);
    }
  }

  else
  {
    v9 = (*(&KB::RescoreShortWords::short_word_map + 1) - 1) & v4;
  }

  v10 = *(KB::RescoreShortWords::short_word_map + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t KB::RescoreShortWords::update_candidate_probability(KB::RescoreShortWords *this, KB::Candidate *a2, KB::Candidate *a3, const KB::CandidateFilterLookupContext *a4, const KB::CandidateFilterResources *a5)
{
  v5 = *(this + 4);
  if (v5)
  {
    return (*(*v5 + 48))(v5, a2, a3, a4, a5);
  }

  else
  {
    return KB::RescoreShortWords::update_candidate_probability_if_better(0, a2, a3, a4, a5);
  }
}

void KB::RescoreShortWords::filter_candidates(KB::RescoreShortWords *this, unsigned __int16 **a2, const KB::CandidateFilterLookupContext *a3, atomic_uint **a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v29 = a2[1];
  if (*a2 == v29)
  {
    goto LABEL_59;
  }

  v6 = 0;
  v28 = MEMORY[0x277D85DD0];
  do
  {
    v7 = *v4;
    v8 = *(v4 + 1);
    v33[0] = v28;
    v33[1] = 0x40000000;
    v34 = ___ZNK2KB17RescoreShortWords17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke;
    v35 = &__block_descriptor_tmp_11947;
    v36 = this;
    if (v7)
    {
      v9 = 0;
      v10 = 240 * v7;
      do
      {
        v9 += (v34)(v33, v8);
        v8 += 240;
        v10 -= 240;
      }

      while (v10);
      if (v9 && 1 << v9 >= 2)
      {
        v12 = 1;
        v32 = 1 << v9;
        while (1)
        {
          KB::Candidate::Candidate(v44, v4);
          KB::Candidate::clear(v44);
          if (*v4)
          {
            break;
          }

LABEL_44:
          if (!v4[444])
          {
            KB::Candidate::compute_string(v4);
          }

          if (!v45[0])
          {
            KB::Candidate::compute_string(v44);
          }

          if (v4 == v44 || KB::String::equal((v4 + 444), v45, 1))
          {
            updated = 0;
          }

          else
          {
            updated = KB::RescoreShortWords::update_candidate_probability(this, v4, v44, a3, a4);
          }

          KB::Candidate::~Candidate(v44);
          v6 |= updated;
          if (++v12 == v32)
          {
            goto LABEL_53;
          }
        }

        v13 = 0;
        v14 = *(v4 + 1);
        v15 = 240 * *v4;
        while (TIIsLexiconIDEnglish(*(v14 + 136)))
        {
          if (*v14)
          {
            if (*(v14 + 8))
            {
              v16 = *(v14 + 8);
            }

            else
            {
              v16 = (v14 + 16);
            }
          }

          else
          {
            v16 = "";
          }

          std::string::basic_string[abi:nn200100]<0>(__p, v16);
          v18 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(__p);
          if (v18)
          {
            v17 = (v13 + 1);
            if ((v12 >> v13))
            {
              v19 = (v18 + 5);
              if (*(v18 + 63) < 0)
              {
                v19 = *v19;
              }

              KB::String::String(v42, v19);
              v20 = a4[2];
              if (v20)
              {
                atomic_fetch_add(v20, 1u);
              }

              KB::String::String(v39, v42);
              KB::DictionaryContainer::word_with_string(v20, v39, *(v14 + 136), v41);
              if (v40 && v39[6] == 1)
              {
                free(v40);
              }

              if (v20)
              {
                WTF::RefCounted<KB::DictionaryContainer>::deref(v20);
              }

              KB::Candidate::append(v44, v41);
              KB::Word::~Word(v41);
              if (v43 && v42[6] == 1)
              {
                free(v43);
              }

              v21 = 0;
            }

            else
            {
              v21 = 1;
            }
          }

          else
          {
            v21 = 1;
            v17 = v13;
          }

          if (v38 < 0)
          {
            operator delete(__p[0]);
            if (!v21)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          }

          if (v21)
          {
            goto LABEL_39;
          }

LABEL_40:
          v14 += 240;
          v13 = v17;
          v15 -= 240;
          if (!v15)
          {
            goto LABEL_44;
          }
        }

        v17 = v13;
LABEL_39:
        KB::Candidate::append(v44, v14);
        goto LABEL_40;
      }
    }

LABEL_53:
    v4 += 500;
  }

  while (v4 != v29);
  if (v6)
  {
    v23 = a2[1];
    v24 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v23 - *a2) >> 3));
    if (v23 == *a2)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*a2, v23, v25, 1);
  }

LABEL_59:
  v26 = *MEMORY[0x277D85DE8];
}

void KB::RescoreShortWords::~RescoreShortWords(KB::RescoreShortWords *this)
{
  *this = &unk_283FDAF40;
  std::__function::__value_func<BOOL ()(KB::Candidate &,KB::Candidate &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)>::~__value_func[abi:nn200100](this + 8);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDAF40;
  std::__function::__value_func<BOOL ()(KB::Candidate &,KB::Candidate &,KB::CandidateFilterLookupContext const&,KB::CandidateFilterResources const&)>::~__value_func[abi:nn200100](this + 8);
}

uint64_t std::unordered_map<std::string,std::string>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
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

void TI::TIInputRecognizer::update_transcoder(TI::TIInputRecognizer *this)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x4002000000;
  v22[3] = __Block_byref_object_copy__11965;
  v22[4] = __Block_byref_object_dispose__11966;
  memset(v23, 0, sizeof(v23));
  v2 = &v14;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4002000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__2;
  __p = 0;
  v20 = 0;
  v21 = 0;
  v3 = *(this + 1);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v10 = ___ZN2TI17TIInputRecognizer17update_transcoderEv_block_invoke;
  v11 = &unk_278731868;
  v12 = v22;
  v13 = &v14;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 != v5)
  {
    do
    {
      v10(v9, v4);
      v4 += 8;
    }

    while (v4 != v5);
    v2 = v15;
  }

  if (*(this + 8))
  {
    v6 = v2[6] - v2[5];
    ITTouchTranscoderUpdateKeyboardLayout();
  }

  else
  {
    TI::TIInputRecognizer::create_transcoder(this, v2 + 5);
    v7 = *(this + 5);
    if (v7)
    {
      v8 = (*(*v7 + 48))(v7);
      TI::TIInputRecognizer::load_lexicons_if_needed(this, *(*v8 + 24));
    }

    TI::TIInputRecognizer::create_transcoder_session(this);
  }

  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v22, 8);
  v14 = v23;
  std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](&v14);
}

__n128 __Block_byref_object_copy__11965(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2TI17TIInputRecognizer17update_transcoderEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  KB::cf_string_impl<KB::String>(&cf, (*a2 + 8));
  v6 = v4[6];
  v5 = v4[7];
  if (v6 >= v5)
  {
    v7 = v4[5];
    v8 = v6 - v7;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

LABEL_37:
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * v8);
    v13 = cf;
    cf = 0;
    v14 = &v12[-(v6 - v7)];
    *v12 = v13;
    v15 = v12 + 1;
    if (v7 != v6)
    {
      v16 = v7;
      v17 = v14;
      do
      {
        v18 = *v16;
        *v16++ = 0;
        *v17++ = v18;
      }

      while (v16 != v6);
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
        }

        *v7++ = 0;
      }

      while (v7 != v6);
      v7 = v4[5];
    }

    v4[5] = v14;
    v4[6] = v15;
    v4[7] = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v19 = cf;
    v4[6] = v15;
    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    *v6 = cf;
    v4[6] = v6 + 1;
  }

  v20 = *(*a2 + 96);
  v21 = *(*a2 + 64);
  v23 = *(*a2 + 80);
  v22 = *(*a2 + 88);
  v24 = *(*(*(*(a1 + 32) + 8) + 48) - 8);
  v25 = *(*(a1 + 40) + 8);
  v26 = v25[6];
  v27 = v25[7];
  if (v26 < v27)
  {
    *v26 = v20;
    *(v26 + 16) = v21;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    v28 = v26 + 56;
    *(v26 + 48) = v24;
    goto LABEL_36;
  }

  v29 = v25[5];
  v30 = v26 - v29;
  v31 = 0x6DB6DB6DB6DB6DB7 * ((v26 - v29) >> 3);
  v32 = v31 + 1;
  if ((v31 + 1) > 0x492492492492492)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v33 = 0x6DB6DB6DB6DB6DB7 * ((v27 - v29) >> 3);
  if (2 * v33 > v32)
  {
    v32 = 2 * v33;
  }

  if (v33 >= 0x249249249249249)
  {
    v34 = 0x492492492492492;
  }

  else
  {
    v34 = v32;
  }

  if (v34)
  {
    if (v34 <= 0x492492492492492)
    {
      operator new();
    }

    goto LABEL_37;
  }

  v35 = 56 * v31;
  *v35 = v20;
  *(v35 + 16) = v21;
  *(v35 + 32) = v23;
  *(v35 + 40) = v22;
  *(v35 + 48) = v24;
  v28 = 56 * v31 + 56;
  v36 = v35 - v30;
  memcpy((v35 - v30), v29, v30);
  v25[5] = v36;
  v25[6] = v28;
  v25[7] = 0;
  if (v29)
  {
    operator delete(v29);
  }

LABEL_36:
  v25[6] = v28;
}

void TI::TIInputRecognizer::create_transcoder(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v4 = *v4;
  }

  KB::String::String(__p, v4);
  KB::cf_string_impl<KB::String>(&value, __p);
  if (*&__p[8])
  {
    v5 = __p[6] == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(*&__p[8]);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = value;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C130], value);
  if (*(a1 + 240))
  {
    v8 = MEMORY[0x277D1C120];
  }

  else
  {
    v8 = MEMORY[0x277D1C118];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C110], *v8);
  if (*(a1 + 232) == 1)
  {
    v9 = *(a1 + 231);
    if (v9 < 0)
    {
      v9 = *(a1 + 216);
    }

    if (v9)
    {
      v10 = (a1 + 208);
      Default = CFAllocatorGetDefault();
      v12 = (a1 + 208);
      if (*(a1 + 231) < 0)
      {
        v12 = *v10;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v12);
      KB::cf_string(__p, &URLString);
      v13 = URLString;
      v14 = CFURLCreateWithString(Default, URLString, 0);
      if (v13)
      {
        CFRelease(v13);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
        if (v14)
        {
          goto LABEL_22;
        }
      }

      else if (v14)
      {
LABEL_22:
        CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C108], v14);
        CFRelease(v14);
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 231) < 0)
        {
          v10 = *v10;
        }

        *__p = 136315394;
        *&__p[4] = "create_transcoder";
        *&__p[12] = 2080;
        *&__p[14] = v10;
        _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Failed to create CFURL from url string: %s, will be using the default bundle.", __p, 0x16u);
      }
    }
  }

LABEL_25:
  URLString = 0;
  v15 = (a2[1] - *a2) >> 3;
  v16 = ITTouchTranscoderCreateWithKeyboardLayout();
  v17 = *(a1 + 64);
  if (v17)
  {
    CFRelease(v17);
  }

  *(a1 + 64) = v16;
  v18 = URLString;
  if (URLString)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 240);
      *&__p[4] = "create_transcoder";
      *__p = 136315650;
      if (v20 == 1)
      {
        v21 = "TapTyping";
      }

      else
      {
        v21 = "ContinuousPath";
      }

      *&__p[12] = 2080;
      *&__p[14] = v21;
      v25 = 2112;
      v26 = v18;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  failed to create touch transcoder for %s Error: %@", __p, 0x20u);
      v18 = URLString;
    }

    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t TI::TIInputRecognizer::load_lexicons_if_needed(uint64_t this, const KB::DynamicDictionary *a2)
{
  if (*(this + 64))
  {
    v3 = this;
    if (KB::DynamicDictionary::named_entity_lexicon(a2) && (*(v3 + 275) & 1) == 0)
    {
      v4 = *(v3 + 64);
      KB::DynamicDictionary::named_entity_lexicon(a2);
      ITTouchTranscoderAddLexicon();
      *(v3 + 275) = 1;
    }

    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (*v6 && (*(v3 + 272) & 1) == 0)
        {
          v7 = *(v3 + 64);
          ITTouchTranscoderAddLexicon();
          *(v3 + 272) = 1;
        }
      }
    }

    if (*(a2 + 1) && (*(v3 + 273) & 1) == 0)
    {
      v8 = *(v3 + 64);
      ITTouchTranscoderAddLexicon();
      *(v3 + 273) = 1;
    }

    if (*(a2 + 2) && *(v3 + 274) == 1)
    {
      v9 = *(v3 + 64);
      ITTouchTranscoderAddLexicon();
      *(v3 + 274) = 1;
    }

    ActiveSupplementalLexiconWords = TITransientLexiconManagerGetActiveSupplementalLexiconWords();
    v11 = *(v3 + 280);
    if (ActiveSupplementalLexiconWords != v11)
    {
      v12 = ActiveSupplementalLexiconWords;
      if (v11)
      {
        v13 = *(v3 + 64);
        ITTouchTranscoderRemoveLexicon();
      }

      if (v12)
      {
        v14 = *(v3 + 64);
        ITTouchTranscoderAddLexicon();
      }

      *(v3 + 280) = v12;
    }

    this = (*(*a2 + 80))(a2);
    if (this && (*(v3 + 276) & 1) == 0)
    {
      this = (*(*a2 + 88))(a2, 0);
      if (this)
      {
        v15 = *(v3 + 64);
        (*(*a2 + 88))(a2, 0);
        this = ITTouchTranscoderAddLexicon();
        *(v3 + 276) = 1;
      }
    }
  }

  return this;
}

void TI::TIInputRecognizer::create_transcoder_session(TI::TIInputRecognizer *this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 8) && !*(this + 9))
  {
    Session = ITTouchTranscoderCreateSession();
    v3 = *(this + 9);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 9) = Session;
    if (!Session && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = "ContinuousPath";
      if (*(this + 30) == 1)
      {
        v5 = "TapTyping";
      }

      v6 = 136315394;
      v7 = "create_transcoder_session";
      v8 = 2080;
      v9 = v5;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Failed to create touch transcoder session for %s", &v6, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }

        *v4 = 0;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void TI::TIInputRecognizer::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t TI::TIInputRecognizer::text_accepted_from_UI(TI::TIInputRecognizer *this, const KB::String *a2, const KB::String *a3)
{
  result = *(this + 5);
  if (result)
  {
    v5 = *(*(*(*result + 48))(result, a2, a3) + 24);

    return TI::TIInputRecognizer::load_lexicons_if_needed(this, v5);
  }

  return result;
}

void TI::TIInputRecognizer::generate_candidates(uint64_t a1, uint64_t a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  v11 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    v11 = v7;
    TI::TIInputRecognizer::generate_candidates(a1, &v11);
    CFRelease(v7);
  }

  else
  {
    TI::TIInputRecognizer::generate_candidates(a1, &v11);
  }

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  while (v8 != v9)
  {
    v10 = *v8++;
    TI::TIInputRecognizer::addCandidatesForITCandidate(a1, a2, v10, a3);
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t TI::TIInputRecognizer::generate_candidates(uint64_t this, uint64_t *a2)
{
  if (*(this + 64))
  {
    v2 = this;
    if (*(this + 80) == *(this + 88))
    {
      if (*(this + 72))
      {
        this = TI::CP::TIPathRecognizerInterface::should_generate_candidates(this);
        if (this)
        {
          v4 = *(v2 + 72);
          v5 = *a2;
          return ITTouchTranscoderSessionEnumerateCandidatesWithOptions();
        }
      }
    }
  }

  return this;
}

void TI::TIInputRecognizer::addCandidatesForITCandidate(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) && (v4 = a2, ITCandidateIsValidWord()))
  {
    v5 = *(a1 + 40);
    if (!ITCandidateIsMultiWord())
    {
      String = ITCandidateGetString();
      KB::utf8_string(String, v54);
      v30 = v54[1];
      if (!v54[1])
      {
        v30 = &v55;
      }

      if (LOWORD(v54[0]))
      {
        v31 = v30;
      }

      else
      {
        v31 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(v41, v31);
      if (v54[1] && BYTE6(v54[0]) == 1)
      {
        free(v54[1]);
      }

      v32 = *(*(*v5 + 48))(v5);
      if (v32)
      {
        atomic_fetch_add(v32, 1u);
      }

      if ((SBYTE7(v42[0]) & 0x80u) == 0)
      {
        v33 = v41;
      }

      else
      {
        v33 = v41[0];
      }

      KB::String::String(v54, v33);
      TI::Favonius::DictionaryHypothesis::create();
    }

    v6 = *(*(*v5 + 48))(v5);
    v46 = v6;
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    v7 = ITCandidateGetString();
    KB::utf8_string(v7, v50);
    KB::word_ranges(v50, 0, __p);
    v44 = 0;
    *v41 = 0u;
    memset(v42, 0, sizeof(v42));
    memset(v43, 0, sizeof(v43));
    v8 = __p[0];
    if (__p[0] != __p[1])
    {
      v9 = v52;
      if (!v52)
      {
        v9 = &v53;
      }

      v54[0] = v9;
      LODWORD(v54[1]) = 0;
      HIDWORD(v54[1]) = v50[0];
      LODWORD(v55) = 0;
      KB::String::iterator::initialize(v54);
      v10 = *v8;
      v39 = *v54;
      v40 = v55;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v39, v10);
      v11 = v8[1];
      v37 = v39;
      v38 = v40;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v37, v11);
      KB::String::String(v49, &v39, &v37);
      TI::Favonius::DictionaryHypothesis::create();
    }

    v54[0] = &v43[1] + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v54);
    v54[0] = v43;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v54);
    v54[0] = v42 + 8;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v54);
    v54[0] = v41;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v54);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v52 && v51 == 1)
    {
      free(v52);
    }

    if (v46)
    {
      WTF::RefCounted<KB::DictionaryContainer>::deref(v46);
    }
  }

  else
  {
    v12 = ITCandidateGetString();
    KB::utf8_string(v12, &valuePtr);
    KB::Candidate::Candidate(v54, &valuePtr, 0);
    if (v48 && BYTE6(valuePtr) == 1)
    {
      free(v48);
    }

    IsCompletion = ITCandidateIsCompletion();
    v61 = ITCandidateIsValidWord() ^ 1;
    UnshiftMask = ITCandidateGetUnshiftMask();
    ITCandidateGetScore();
    v14 = v13;
    v15 = logf(v13);
    v56 = v15;
    if (a4 >= 1)
    {
      v16 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      valuePtr = v14;
      v18 = CFNumberCreate(v16, kCFNumberDoubleType, &valuePtr);
      CFDictionarySetValue(Mutable, @"lstm_prob", v18);
      if (v18)
      {
        CFRelease(v18);
      }

      CFDictionarySetValue(Mutable, @"source", @"ml");
      CFDictionarySetValue(Mutable, @"sort_key_expanded", @"no");
      StrokedPath = ITCandidateGetStrokedPath();
      CFDictionarySetValue(Mutable, @"stroked_path", StrokedPath);
      KB::Candidate::add_sources_info(v54, @"ml", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v57 = v15;
    v58 = xmmword_22CC88B00;
    v4 = a2;
    std::vector<KB::Candidate>::push_back[abi:nn200100](a2, v54);
    KB::Candidate::~Candidate(v54);
  }

  if (*(a1 + 240))
  {
    v20 = 4;
  }

  else
  {
    v20 = 3;
  }

  v21 = *v4;
  v22 = v4[1];
  if (*v4 != v22)
  {
    v23 = 0;
    v24 = v22 - v21 - 1000;
    v25 = vdupq_n_s64(v24 / 0x3E8);
    do
    {
      v26 = vdupq_n_s64(v23);
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v26, xmmword_22CC88AA0)));
      if (vuzp1_s16(v27, *v25.i8).u8[0])
      {
        v21[248] = v20;
      }

      if (vuzp1_s16(v27, *&v25).i8[2])
      {
        v21[498] = v20;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v26, xmmword_22CC88A90)))).i32[1])
      {
        v21[748] = v20;
        v21[998] = v20;
      }

      v23 += 4;
      v21 += 1000;
    }

    while (((v24 / 0x3E8 + 4) & 0xFFFFFFFFFFFFFCLL) != v23);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void TI::create_kb_candidate(KB::Candidate *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int a6)
{
  v54 = *MEMORY[0x277D85DE8];
  KB::Candidate::Candidate(a1, a2);
  v11 = *a4;
  if (*a4)
  {
    v12 = *(v11 + 100);
    v13 = (v12 * KB::DictionaryCursors::termination_probability((v11 + 16), *(v11 + 8))) * *(a2 + 48);
  }

  else
  {
    v13 = *(a2 + 52);
  }

  v15 = *a1;
  v14 = *(a1 + 1);
  if (*a1)
  {
    v16 = 240 * v15;
    v17 = *(a1 + 1);
    while ((*(v17 + 105) & 1) == 0)
    {
      v17 += 240;
      v16 -= 240;
      if (!v16)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v17 = *(a1 + 1);
  }

  if (v17 != v14 + 240 * v15)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v15)
  {
    v18 = 240 * v15 - 240;
    v19 = (v14 + 224);
    do
    {
      v21 = *v19;
      v19 += 30;
      v20 = v21;
      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = v18 == 0;
      }

      v18 -= 240;
    }

    while (!v22);
    if (v20)
    {
LABEL_19:
      v13 = v13 * 0.8;
    }
  }

  KB::LanguageModelContext::operator=(a1 + 784, a5);
  *(*(a1 + 1) + 240 * *a1 - 188) = v13;
  ITCandidateGetScore();
  v24 = logf(v23);
  *(a1 + 186) = v24;
  *(a1 + 187) = v24;
  *(a1 + 47) = xmmword_22CC88B00;
  *(a1 + 960) = ITCandidateIsCompletion();
  *(a1 + 961) = ITCandidateIsValidWord() ^ 1;
  *(a1 + 195) = ITCandidateGetUnshiftMask();
  v25 = *a1;
  v26 = *(a1 + 1);
  ITCandidateGetScore();
  v28 = v27;
  String = ITCandidateGetString();
  KB::utf8_string(String, &valuePtr);
  v30 = v52;
  if (!v52)
  {
    v30 = &v53;
  }

  if (LOWORD(valuePtr))
  {
    v31 = v30;
  }

  else
  {
    v31 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v31);
  if (v52 && BYTE6(valuePtr) == 1)
  {
    free(v52);
  }

  if (a6 >= 1)
  {
    v32 = v26 + 240 * v25;
    v33 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (*(v32 - 240))
    {
      if (*(v32 - 232))
      {
        v35 = *(v32 - 232);
      }

      else
      {
        v35 = (v32 - 224);
      }
    }

    else
    {
      v35 = "";
    }

    std::string::basic_string[abi:nn200100]<0>(&valuePtr, v35);
    v36 = SHIBYTE(v53);
    v38 = valuePtr;
    v37 = v52;
    v39 = v50;
    if ((v50 & 0x80u) == 0)
    {
      v40 = __p;
    }

    else
    {
      v39 = __p[1];
      v40 = __p[0];
    }

    if (v53 < 0)
    {
      p_valuePtr = *&valuePtr;
    }

    else
    {
      v37 = SHIBYTE(v53);
      p_valuePtr = &valuePtr;
    }

    if (v37 >= v39)
    {
      v42 = v39;
    }

    else
    {
      v42 = v37;
    }

    v43 = v37 == v39;
    if (memcmp(v40, p_valuePtr, v42))
    {
      v43 = 0;
    }

    if (v36 < 0)
    {
      operator delete(*&v38);
    }

    if (v43)
    {
      v44 = @"no";
    }

    else
    {
      v44 = @"yes";
    }

    CFDictionarySetValue(Mutable, @"sort_key_expanded", v44);
    valuePtr = v28;
    v45 = CFNumberCreate(v33, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"lstm_prob", v45);
    if (v45)
    {
      CFRelease(v45);
    }

    valuePtr = v13;
    v46 = CFNumberCreate(v33, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"uni_prob", v46);
    if (v46)
    {
      CFRelease(v46);
    }

    StrokedPath = ITCandidateGetStrokedPath();
    CFDictionarySetValue(Mutable, @"stroked_path", StrokedPath);
    CFDictionarySetValue(Mutable, @"source", @"ml");
    KB::Candidate::add_sources_info(a1, @"ml", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v50 < 0)
  {
    operator delete(__p[0]);
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t WTF::RefCounted<TI::Favonius::DictionaryHypothesis>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    v3 = *(result + 72);
    *(v1 + 72) = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = 32;
    while (1)
    {
      v5 = *(v1 + v4);
      if (v5)
      {
        CFRelease(v5);
      }

      *(v1 + v4) = 0;
      v4 -= 8;
      if (v4 == 8)
      {
        v6 = *(v1 + 8);
        if (v6)
        {
          WTF::RefCounted<KB::DictionaryContainer>::deref(v6);
        }

        JUMPOUT(0x2318BE270);
      }
    }
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

BOOL TI::CP::TIPathRecognizerInterface::should_generate_candidates(TI::CP::TIPathRecognizerInterface *this)
{
  if ((*(*this + 40))(this) == 7)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v4.x = (*(*this + 48))(this);
  return !TI::Favonius::KeyboardLayout::is_far_away_point(v2, v4);
}

void ___ZN2TI17TIInputRecognizer19generate_candidatesEN2KB10retain_ptrIP14__CFDictionaryEEU13block_pointerFbP11__CandidateE_block_invoke(uint64_t a1, const void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  String = ITCandidateGetString();
  KB::utf8_string(String, v19);
  v6 = v21;
  if (!v21)
  {
    v6 = v22;
  }

  if (v19[0])
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v7);
  if (v21 && v20 == 1)
  {
    free(v21);
  }

  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v17;
  }

  if (!v8)
  {
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    v11 = __p;
    goto LABEL_38;
  }

  if ((v18 & 0x80) != 0)
  {
    if (v17 != 3)
    {
      v11 = __p;
      if (v17 == 1)
      {
        v14 = *__p;
        operator delete(__p);
        if (v14 == 95)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

    v11 = __p;
    if ((*__p != 20053 || *(__p + 2) != 75) && (*__p != 28277 || *(__p + 2) != 107))
    {
LABEL_44:
      operator delete(v11);
      goto LABEL_45;
    }

LABEL_38:
    operator delete(v11);
    goto LABEL_47;
  }

  if (v18 == 1)
  {
    if (__p == 95)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (v18 != 3 || (__p == 20053 ? (v9 = BYTE2(__p) == 75) : (v9 = 0), !v9 && (__p == 28277 ? (v10 = BYTE2(__p) == 107) : (v10 = 0), !v10)))
  {
LABEL_45:
    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      TI::TIInputRecognizer::add_candidate_to_cache(v4, a2);
    }
  }

LABEL_47:
  v15 = *MEMORY[0x277D85DE8];
}

void TI::TIInputRecognizer::add_candidate_to_cache(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v5 = a1[11];
  v4 = a1[12];
  if (v5 >= v4)
  {
    v7 = a1[10];
    v8 = v5 - v7;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * v8);
    v13 = &v12[-(v5 - v7)];
    *v12 = cf;
    v6 = v12 + 1;
    if (v7 != v5)
    {
      v14 = v7;
      v15 = v13;
      do
      {
        v16 = *v14;
        *v14++ = 0;
        *v15++ = v16;
      }

      while (v14 != v5);
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
        }

        *v7++ = 0;
      }

      while (v7 != v5);
      v7 = a1[10];
    }

    a1[10] = v13;
    a1[11] = v6;
    a1[12] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = cf;
    v6 = v5 + 1;
  }

  a1[11] = v6;
}

void TI::TIInputRecognizer::reset_session(TI::TIInputRecognizer *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 9) = 0;
  TI::TIInputRecognizer::create_transcoder_session(this);
  *(this + 66) = 7;

  std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
}

double TI::TIInputRecognizer::last_touch(TI::TIInputRecognizer *this)
{
  result = *(this + 31);
  v2 = *(this + 32);
  return result;
}

void TI::TIInputRecognizer::add_touch(uint64_t a1, int a2, double a3, double a4)
{
  std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100]((a1 + 80));
  v8 = *(a1 + 8);
  v9 = *(v8 + 200);
  v10 = ((*(v8 + 16) - *(v8 + 8)) >> 3) >> 1;
  if (v9 > 0xB || v10 < v9)
  {
    *(a1 + 248) = a3;
    *(a1 + 256) = a4;
    *(a1 + 264) = a2;
    if (*(a1 + 240) != 1)
    {
      if (*(a1 + 72))
      {
        v12 = *MEMORY[0x277D1C100];
        v13 = *(MEMORY[0x277D1C100] + 16);
        v14 = *(MEMORY[0x277D1C100] + 32);
        v15 = *(MEMORY[0x277D1C100] + 48);
        ITTouchTranscoderSessionAddEventWithTouchKeyInfo();
      }
    }
  }
}

void TI::TIInputRecognizer::~TIInputRecognizer(void **this)
{
  TI::TIInputRecognizer::~TIInputRecognizer(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDAF88;
  if (*(this + 232) == 1 && *(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v10 = this + 23;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v10);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 22));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 21));
  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (this[10])
  {
    std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
    operator delete(this[10]);
  }

  v4 = this[9];
  if (v4)
  {
    CFRelease(v4);
  }

  this[9] = 0;
  v5 = this[8];
  if (v5)
  {
    CFRelease(v5);
  }

  this[8] = 0;
  v6 = this[7];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = this[5];
  if (v7)
  {
    v8 = atomic_load(v7 + 2);
    if (v8 == 1)
    {
      (*(*v7 + 40))(v7);
    }

    else
    {
      atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
    }
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  *this = &unk_283FDDD68;
  v9 = this[1];
  if (v9)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v9);
  }
}

uint64_t TI::TIInputRecognizer::TIInputRecognizer(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, __int128 *a5)
{
  *a1 = &unk_283FDAF88;
  *(a1 + 8) = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v9;
  }

  v10 = *a3;
  *a3 = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 168));
  language_modeling::v1::LinguisticContext::LinguisticContext((a1 + 176));
  *(a1 + 208) = 0;
  v11 = (a1 + 208);
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  if (*(a5 + 24) == 1)
  {
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v11, *a5, *(a5 + 1));
    }

    else
    {
      v12 = *a5;
      *(a1 + 224) = *(a5 + 2);
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    *(a1 + 232) = 1;
  }

  *(a1 + 240) = a2;
  *(a1 + 264) = 7;
  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  return a1;
}

void TI::TIInputRecognizer::recreate_transcoder(TI::TIInputRecognizer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 8) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 9) = 0;

  TI::TIInputRecognizer::update_transcoder(this);
}

BOOL TI::TIInputRecognizer::is_ready(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRetain(*(a1 + 64));
    CFRelease(v1);
  }

  return v1 != 0;
}

void TI::TIInputRecognizer::process_candidates_from_cache(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  while (v3 != v4)
  {
    v8 = *v3++;
    TI::TIInputRecognizer::addCandidatesForITCandidate(a1, a2, v8, a3);
  }
}

void TI::TIInputRecognizer::generate_mltt_autocorrection_candidates(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a4;
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 240) == 1)
  {
    v7 = a1;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    KB::cf_string_impl<KB::String>(&value, a2);
    v9 = value;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C140], value);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C138], *MEMORY[0x277CBED28]);
    if (*(a3 + 64) == 1)
    {
      KB::cf_string_impl<KB::String>(&v44, a3);
      KB::cf_string_impl<KB::String>(v37, (a3 + 32));
      v10 = v44;
      CFDictionaryAddValue(Mutable, @"previousTypedString", v44);
      v11 = v37[0];
      CFDictionaryAddValue(Mutable, @"previousCandidateString", v37[0]);
      if (v11)
      {
        CFRelease(v11);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    v41 = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
      v41 = Mutable;
      TI::TIInputRecognizer::generate_candidates(v7, &v41);
      CFRelease(Mutable);
    }

    else
    {
      TI::TIInputRecognizer::generate_candidates(v7, &v41);
    }

    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v13 = *(v7 + 80);
    v12 = *(v7 + 88);
    if (v13 != v12)
    {
      v32 = Mutable;
      v33 = v4;
      v14 = 0;
      v34 = *(v7 + 88);
      v35 = v7;
      do
      {
        v40 = 0;
        *v37 = 0u;
        memset(v38, 0, sizeof(v38));
        memset(v39, 0, sizeof(v39));
        TI::TIInputRecognizer::addCandidatesForITCandidate(v7, v37, *v13, 0);
        v15 = *v13;
        v16 = ITCandidateCopyPrefix();
        KB::utf8_string(v16, v50);
        KB::String::String(&v44, v50);
        KB::CandidateCollection::CandidateCollection(v46, v37);
        v17 = v4[2];
        if (v14 >= v17)
        {
          v18 = 0xF0F0F0F0F0F0F0F1 * ((v14 - *v4) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0x1E1E1E1E1E1E1E1)
          {
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v20 = 0xF0F0F0F0F0F0F0F1 * ((v17 - *v4) >> 3);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0xF0F0F0F0F0F0F0)
          {
            v21 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (v21 <= 0x1E1E1E1E1E1E1E1)
            {
              operator new();
            }

            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v14 = 8 * ((v14 - *v4) >> 3);
          KB::String::String((136 * v18), &v44);
          KB::CandidateCollection::CandidateCollection((136 * v18 + 32), v46);
          v22 = *v4;
          v23 = v4[1];
          v36 = &v23[-*v4];
          if (v23 != *v4)
          {
            v24 = 0;
            v25 = -8 * ((v23 - v22) >> 3) + 136 * v18;
            do
            {
              v26 = v25 + v24;
              *v26 = 0x100000;
              v27 = &v22[v24];
              *(v26 + 4) = 0;
              *(v26 + 6) = 0;
              *(v26 + 8) = 0;
              v28 = KB::String::operator=(v25 + v24, &v22[v24]);
              v28[4] = 0;
              v28[5] = 0;
              v28[6] = 0;
              *(v28 + 2) = *&v22[v24 + 32];
              v28[6] = *&v22[v24 + 48];
              *(v27 + 4) = 0;
              *(v27 + 5) = 0;
              *(v27 + 6) = 0;
              v28[7] = 0;
              v28[8] = 0;
              v28[9] = 0;
              *(v28 + 7) = *&v22[v24 + 56];
              v28[9] = *&v22[v24 + 72];
              *(v27 + 7) = 0;
              *(v27 + 8) = 0;
              *(v27 + 9) = 0;
              v28[10] = 0;
              v28[11] = 0;
              v28[12] = 0;
              *(v28 + 5) = *&v22[v24 + 80];
              v28[12] = *&v22[v24 + 96];
              *(v27 + 10) = 0;
              *(v27 + 11) = 0;
              *(v27 + 12) = 0;
              v28[13] = 0;
              v28[14] = 0;
              v28[15] = 0;
              *(v28 + 13) = *&v22[v24 + 104];
              v28[15] = *&v22[v24 + 120];
              *(v27 + 13) = 0;
              *(v27 + 14) = 0;
              *(v27 + 15) = 0;
              v28[16] = *&v22[v24 + 128];
              v24 += 136;
            }

            while (&v22[v24] != v23);
            v4 = v33;
            do
            {
              v43 = (v22 + 104);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
              v43 = (v22 + 80);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
              v43 = (v22 + 56);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
              v43 = (v22 + 32);
              std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
              v29 = *(v22 + 1);
              if (v29 && v22[6] == 1)
              {
                free(v29);
              }

              v22 += 136;
            }

            while (v22 != v23);
          }

          v30 = *v4;
          *v4 = v14 - v36;
          v4[2] = 0;
          if (v30)
          {
            operator delete(v30);
          }

          v12 = v34;
          v7 = v35;
        }

        else
        {
          KB::String::String(v14, &v44);
          KB::CandidateCollection::CandidateCollection((v14 + 32), v46);
        }

        v14 += 136;
        v4[1] = v14;
        v43 = &v49;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
        v43 = &v48;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
        v43 = &v47;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
        v43 = v46;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v43);
        if (v45 && BYTE6(v44) == 1)
        {
          free(v45);
        }

        if (v51 && v50[6] == 1)
        {
          free(v51);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v44 = &v39[1] + 8;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v44);
        v44 = v39;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v44);
        v44 = v38 + 8;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v44);
        v44 = v37;
        std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v44);
        ++v13;
      }

      while (v13 != v12);
      v9 = value;
      Mutable = v32;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZN2TI17TIInputRecognizer39generate_mltt_autocorrection_candidatesERKN2KB6StringERKNSt3__18optionalINS5_4pairIS2_S2_EEEE_block_invoke()
{
  if (!ITCandidateIsValidWord())
  {
    return 1;
  }

  return ITCandidateIsCompletion();
}

uint64_t TI::TIInputRecognizer::is_language_and_layout_supported(uint64_t a1, const KB::String *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  KB::String::String(v13, v3);
  KB::cf_string_impl<KB::String>(&localeIdentifier, v13);
  if (v15)
  {
    v4 = v14 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v15);
  }

  v5 = localeIdentifier;
  if (localeIdentifier)
  {
    v6 = CFLocaleCreate(*MEMORY[0x277CBECE8], localeIdentifier);
    KB::String::String(v13, a2);
    KB::cf_string_impl<KB::String>(&v11, v13);
    v7 = v11;
    v8 = ITTouchTranscoderSupportsLocaleAndLayout();
    if (v7)
    {
      CFRelease(v7);
    }

    if (v15 && v14 == 1)
    {
      free(v15);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t TI::TIInputRecognizer::is_ml_based_typing_mode_supported(const UInt8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277CBECE8];
  KB::cf_string(a1, &localeIdentifier);
  v8 = localeIdentifier;
  v9 = CFLocaleCreate(v7, localeIdentifier);
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v9)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C130], v9);
  if (*(a3 + 24) == 1)
  {
    Default = CFAllocatorGetDefault();
    KB::cf_string(a3, &localeIdentifier);
    v12 = localeIdentifier;
    v13 = CFURLCreateWithString(Default, localeIdentifier, 0);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C108], v13);
      CFRelease(v13);
    }
  }

  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v14)
  {
    v15 = *MEMORY[0x277D1C128];
    KB::cf_string(a2, &localeIdentifier);
    v16 = localeIdentifier;
    CFDictionaryAddValue(Mutable, v15, localeIdentifier);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  v17 = MEMORY[0x277D1C118];
  if (a4)
  {
    v17 = MEMORY[0x277D1C120];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277D1C110], *v17);
  v18 = ITTouchTranscoderSupportsConfiguration();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(v9);
  return v18;
}

uint64_t TI::TIInputRecognizer::ml_based_tap_typing_enabled(unsigned __int16 *a1, uint64_t a2, atomic_uint **a3, uint64_t a4)
{
  v56[19] = *MEMORY[0x277D85DE8];
  {
    TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table = 0u;
    *&qword_280FAC340 = 0u;
    dword_280FAC350 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,BOOL>::~unordered_map[abi:nn200100], &TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table, &dword_22CA55000);
  }

  {
    TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::ml_based_tap_typing_feature_flag = _os_feature_enabled_impl();
  }

  if ((s_ml_based_tap_typing & 1) == 0 && TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::ml_based_tap_typing_feature_flag != 1)
  {
    is_ml_based_typing_mode_supported = 0;
    goto LABEL_107;
  }

  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add(v8, 1u);
  }

  std::ostringstream::basic_ostringstream[abi:nn200100](&__n);
  v9 = *(a1 + 1);
  if (!v9)
  {
    v9 = (a1 + 8);
  }

  v10 = "";
  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, "_", 1);
  v13 = *(a2 + 8);
  if (!v13)
  {
    v13 = (a2 + 16);
  }

  if (*a2)
  {
    v10 = v13;
  }

  v14 = strlen(v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, v10, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, "_", 1);
  MEMORY[0x2318BE080](&__n, v8);
  if (*(a4 + 24) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, "_", 1);
    v15 = *(a4 + 23);
    if (v15 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if (v15 >= 0)
    {
      v17 = *(a4 + 23);
    }

    else
    {
      v17 = *(a4 + 8);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__n, v16, v17);
  }

  if ((v55 & 0x10) != 0)
  {
    v19 = v54;
    if (v54 < v51)
    {
      v54 = v51;
      v19 = v51;
    }

    locale = v50[4].__locale_;
  }

  else
  {
    if ((v55 & 8) == 0)
    {
      v18 = 0;
      v47 = 0;
      goto LABEL_38;
    }

    locale = v50[1].__locale_;
    v19 = v50[3].__locale_;
  }

  v18 = v19 - locale;
  if ((v19 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  v47 = v19 - locale;
  if (v18)
  {
    memmove(__dst, locale, v18);
  }

LABEL_38:
  *(__dst + v18) = 0;
  __n = *MEMORY[0x277D82828];
  *(&__n + *(__n - 24)) = *(MEMORY[0x277D82828] + 24);
  v49 = (MEMORY[0x277D82878] + 16);
  if (v53 < 0)
  {
    operator delete(__p);
  }

  v49 = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v50);
  std::ostream::~ostream();
  MEMORY[0x2318BE200](v56);
  if (v8)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v8);
  }

  if ((v47 & 0x80u) == 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = __dst[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v23 = v47;
  }

  else
  {
    v23 = __dst[1];
  }

  v24 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v22, v23);
  v25 = *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
  if (*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
  {
    v26 = v24;
    v27 = vcnt_s8(*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8));
    v27.i16[0] = vaddlv_u8(v27);
    v28 = v27.u32[0];
    if (v27.u32[0] > 1uLL)
    {
      v29 = v24;
      if (v24 >= *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
      {
        v29 = v24 % *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
      }
    }

    else
    {
      v29 = (*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1) - 1) & v24;
    }

    v30 = *(TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8 * v29);
    if (v30)
    {
      for (i = *v30; i; i = *i)
      {
        v32 = i[1];
        if (v32 == v26)
        {
          if (std::equal_to<std::string>::operator()[abi:nn200100](i + 2, __dst))
          {
            is_ml_based_typing_mode_supported = *(i + 40);
            goto LABEL_105;
          }
        }

        else
        {
          if (v28 > 1)
          {
            if (v32 >= v25)
            {
              v32 %= v25;
            }
          }

          else
          {
            v32 &= v25 - 1;
          }

          if (v32 != v29)
          {
            break;
          }
        }
      }
    }
  }

  v33 = *a3;
  if (v33)
  {
    atomic_fetch_add(v33, 1u);
  }

  KB::String::String(&__n, "en");
  if (__n <= *a1)
  {
    if (*(a1 + 1))
    {
      v36 = *(a1 + 1);
    }

    else
    {
      v36 = (a1 + 8);
    }

    v35 = v49;
    if (v49)
    {
      v37 = v49;
    }

    else
    {
      v37 = v50;
    }

    v34 = strncmp(v36, v37, __n) == 0;
    if (!v35)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v34 = 0;
    v35 = v49;
    if (!v49)
    {
      goto LABEL_78;
    }
  }

  if (BYTE6(__n) == 1)
  {
    free(v35);
  }

LABEL_78:
  if (v34)
  {
    LOBYTE(__n) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableMLTapTyping", @"com.apple.keyboard", &__n);
    if (!__n || !AppBooleanValue)
    {
      if (!v33)
      {
        LOBYTE(v34) = 0;
        goto LABEL_83;
      }

      LOBYTE(v34) = *(v33 + 66) ^ 1;
      goto LABEL_82;
    }
  }

  if (v33)
  {
LABEL_82:
    WTF::RefCounted<KB::DictionaryContainer>::deref(v33);
  }

LABEL_83:
  if (s_ml_based_tap_typing == 1)
  {
    __n = __dst;
    *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__dst) + 40) = v34 & 1;
    is_ml_based_typing_mode_supported = v34;
  }

  else
  {
    is_ml_based_typing_mode_supported = 0;
    if (*a2 && *a1)
    {
      if (v34)
      {
        if (*(a1 + 1))
        {
          v39 = *(a1 + 1);
        }

        else
        {
          v39 = (a1 + 8);
        }

        std::string::basic_string[abi:nn200100]<0>(&__n, v39);
        v40 = *(a2 + 8);
        if (!v40)
        {
          v40 = (a2 + 16);
        }

        if (*a2)
        {
          v41 = v40;
        }

        else
        {
          v41 = "";
        }

        std::string::basic_string[abi:nn200100]<0>(v44, v41);
        is_ml_based_typing_mode_supported = TI::TIInputRecognizer::is_ml_based_typing_mode_supported(&__n, v44, a4, 1);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v50[0].__locale_) < 0)
        {
          operator delete(__n);
        }
      }

      else
      {
        is_ml_based_typing_mode_supported = 0;
      }

      __n = __dst;
      *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(__dst) + 40) = is_ml_based_typing_mode_supported;
    }
  }

LABEL_105:
  if (v47 < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_107:
  v42 = *MEMORY[0x277D85DE8];
  return is_ml_based_typing_mode_supported & 1;
}

void *std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = v4;
  v6 = *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
  if (!*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1))
    {
      v9 = v4 % *(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1);
    }
  }

  else
  {
    v9 = (*(&TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 1) - 1) & v4;
  }

  v10 = *(TI::TIInputRecognizer::ml_based_tap_typing_enabled(KB::String const&,KB::String const&,WTF::RefPtr<KB::DictionaryContainer>,std::optional<std::string> const&)::is_supported_lookup_table + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
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
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
  {
    goto LABEL_20;
  }

  return v11;
}

uint64_t std::unordered_map<std::string,BOOL>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void TI::TIInputRecognizer::sync_with_input_from_UI(TI::TIInputRecognizer *this, const KB::String *a2, const KB::LanguageModelContext *a3)
{
  if (*(this + 30) == 1 && *(this + 9))
  {
    KB::LanguageModelContext::operator=(this + 104, a3);

    std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
  }
}

void TI::TIInputRecognizer::drop_input_prefix(TI::TIInputRecognizer *this, const KB::LanguageModelContext *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  KB::String::String(v7, "");
  TI::TIInputRecognizer::sync_with_input_from_UI(this, v4, a2);
  if (v8)
  {
    v5 = v7[6] == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v8);
  }

  std::vector<KB::retain_ptr<_LXLexicon const*>>::clear[abi:nn200100](this + 10);
  v6 = *MEMORY[0x277D85DE8];
}

void TI::TIInputRecognizer::state_for_typology_logging(uint64_t a1@<X0>, int a2@<W1>, __CFString **a3@<X8>)
{
  v55[2] = *MEMORY[0x277D85DE8];
  Mutable = CFStringCreateMutable(0, 0);
  v8 = Mutable;
  if (*(a1 + 80) != *(a1 + 88))
  {
    KB::append_format(Mutable, "IT Recognizer State\n", v7);
    if (*(a1 + 232) != 1)
    {
      goto LABEL_13;
    }

    v10 = (a1 + 208);
    if (*(a1 + 231) < 0)
    {
      if (!*(a1 + 216))
      {
        goto LABEL_13;
      }

      v10 = *v10;
    }

    else if (!*(a1 + 231))
    {
LABEL_13:
      v47 = a3;
      if (a2 == 1)
      {
        KB::append_format(v8, "\nIT Prefixes:\n", v9);
        v12 = *(a1 + 80);
        for (i = *(a1 + 88); v12 != i; ++v12)
        {
          v14 = *v12;
          if ((ITCandidateIsValidWord() & 1) == 0)
          {
            v15 = *v12;
            String = ITCandidateGetString();
            KB::utf8_string(String, v52);
            v17 = v54;
            if (!v54)
            {
              v17 = v55;
            }

            if (v52[0])
            {
              v18 = v17;
            }

            else
            {
              v18 = "";
            }

            v19 = *v12;
            ITCandidateGetScore();
            v21 = v20;
            v22 = *v12;
            StrokedPath = ITCandidateGetStrokedPath();
            KB::utf8_string(StrokedPath, v48);
            v25 = v50;
            if (!v50)
            {
              v25 = v51;
            }

            if (v48[0])
            {
              v26 = v25;
            }

            else
            {
              v26 = "";
            }

            KB::append_format(v8, "[%s] G %.6f StrokedPath=%s\n", v24, v18, *&v21, v26);
            if (v50 && v49 == 1)
            {
              free(v50);
            }

            if (v54 && v53 == 1)
            {
              free(v54);
            }
          }
        }
      }

      KB::append_format(v8, "\nIT Candidates:\n", v9);
      v27 = *(a1 + 80);
      v28 = *(a1 + 88);
      if (v27 != v28)
      {
        v29 = 0;
        do
        {
          v30 = *v27;
          IsCompletion = ITCandidateIsCompletion();
          if (a2 != 5)
          {
            if (a2)
            {
              if (((a2 == 1) & IsCompletion) != 1)
              {
                goto LABEL_60;
              }
            }

            else if (IsCompletion)
            {
              goto LABEL_60;
            }
          }

          v32 = *v27;
          v33 = ITCandidateGetString();
          KB::utf8_string(v33, v52);
          v34 = v54;
          if (!v54)
          {
            v34 = v55;
          }

          if (v52[0])
          {
            v35 = v34;
          }

          else
          {
            v35 = "";
          }

          v36 = *v27;
          ITCandidateGetScore();
          v38 = v37;
          v39 = *v27;
          if (ITCandidateIsCompletion())
          {
            v40 = "Yes";
          }

          else
          {
            v40 = "No";
          }

          v41 = *v27;
          v42 = ITCandidateGetStrokedPath();
          KB::utf8_string(v42, v48);
          v44 = v50;
          if (!v50)
          {
            v44 = v51;
          }

          if (v48[0])
          {
            v45 = v44;
          }

          else
          {
            v45 = "";
          }

          KB::append_format(v8, "[%s] G %.6f Completion=%s StrokedPath=%s\n", v43, v35, *&v38, v40, v45);
          if (v50 && v49 == 1)
          {
            free(v50);
          }

          if (v54)
          {
            if (v53 == 1)
            {
              free(v54);
            }
          }

          if (++v29 == 10)
          {
            break;
          }

LABEL_60:
          ++v27;
        }

        while (v27 != v28);
      }

      *v47 = v8;
      goto LABEL_62;
    }

    KB::append_format(v8, "BundleURL: %s\n", v9, v10);
    goto LABEL_13;
  }

  *a3 = Mutable;
  if (!Mutable)
  {
LABEL_62:
    v46 = *MEMORY[0x277D85DE8];
    return;
  }

  CFRetain(Mutable);
  *a3 = v8;
  v11 = *MEMORY[0x277D85DE8];

  CFRelease(v8);
}

uint64_t TI::Favonius::Touch::Touch(uint64_t result, int a2, int a3, atomic_uint **a4, int a5, int a6, double a7, double a8, float a9, double a10)
{
  *result = 1;
  *(result + 8) = a7;
  *(result + 16) = a8;
  *(result + 24) = a9;
  *(result + 32) = a10;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = a2;
  *(result + 52) = a3;
  v10 = *a4;
  *(result + 56) = *a4;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  return result;
}

{
  *result = 1;
  *(result + 8) = a7;
  *(result + 16) = a8;
  *(result + 24) = a9;
  *(result + 32) = a10;
  *(result + 40) = a5;
  *(result + 44) = a6;
  *(result + 48) = a2;
  *(result + 52) = a3;
  v10 = *a4;
  *(result + 56) = *a4;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  return result;
}

void std::__shared_ptr_emplace<TIInlineCompletionEventDispatcher>::__on_zero_shared(uint64_t a1)
{
  std::__optional_storage_base<TIInlineCompletionAnalyticsMetadata,false>::~__optional_storage_base(a1 + 168);
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      if (*(a1 + 126) == 1)
      {
        free(v2);
      }
    }
  }

  if (*(a1 + 112) == 1)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      if (*(a1 + 86) == 1)
      {
        free(v3);
      }
    }
  }

  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      if (*(a1 + 46) == 1)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<TIInlineCompletionEventDispatcher>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDB148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::pair<KB::LanguageModelContext,TIInlineCompletion>::~pair(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    language_modeling::v1::InlineCompletion::~InlineCompletion((a1 + 168));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v5 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

uint64_t ___Z15validFirstNamesRKNSt3__16vectorIN2KB6StringENS_9allocatorIS2_EEEEPK4USet_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  v6 = MEMORY[0x2318BF180](a2);
  result = MEMORY[0x2318BF290](v5, v6);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void std::vector<KB::String>::__vdeallocate(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          if (*(v3 - 26) == 1)
          {
            free(v5);
          }
        }

        v3 -= 32;
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

void completionFromCacheElement(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  std::string::basic_string(&v8, &__str, *(a2 + 80), 0xFFFFFFFFFFFFFFFFLL, &v9);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v8;
  }

  if (*(a2 + 72) == 1)
  {
    v4 = language_modeling::v1::InlineCompletion::probability((a2 + 64));
  }

  else
  {
    v4 = *(a2 + 48);
  }

  v5 = *(a2 + 56);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    *a1 = __p;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

uint64_t TIInlineCompletionsNegativeLearning::wordBlockedByNegativeLearning(sqlite3 **a1, int a2, unsigned __int8 *a3, char a4)
{
  if (HIBYTE(adaptation_autocorrection_rejection_v2_override_for_trial) == 1)
  {
    if ((adaptation_autocorrection_rejection_v2_override_for_trial & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (!_os_feature_enabled_impl())
  {
    goto LABEL_48;
  }

  v9 = std::chrono::system_clock::now().__d_.__rep_ / 1000000.0;
  if ((a4 & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "");
    should_block = TI::RejectionsDatabase::soft_should_block(a1, __p, a3, 20, v9);
    v11 = should_block;
    if (SBYTE7(v36) < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else if (should_block)
    {
LABEL_8:
      if ((a3[23] & 0x80u) == 0)
      {
        LODWORD(size) = a3[23];
      }

      else
      {
        size = *(a3 + 1);
      }

      v13 = size & 0xFFFFFF00;
      v14 = 0x100000000;
      return size | v14 | v13;
    }
  }

  if ((a3[23] & 0x80u) != 0)
  {
    a3 = *a3;
  }

  v15 = *a1;
  ppStmt = 0;
  v16 = __p;
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "SELECT typed, performed_count, soft_rejections, hard_rejections, last_soft_rejection, last_hard_rejection ", 106);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "FROM ", 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "inline_completion_rejections", 28);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, " WHERE correction = :correction", 31);
  size = v32;
  std::ostringstream::str[abi:nn200100](v32, __p);
  v17 = MEMORY[0x277D82828];
  __p[0] = *MEMORY[0x277D82828];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82828] + 24);
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (v39 < 0)
  {
    operator delete(v38);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v36);
  std::ostream::~ostream();
  MEMORY[0x2318BE200](&v40);
  if (v33 >= 0)
  {
    v18 = v32;
  }

  else
  {
    v18 = v32[0];
  }

  if (sqlite3_prepare_v2(v15, v18, -1, &ppStmt, 0))
  {
    v19 = 0;
  }

  else
  {
    v20 = ppStmt;
    v21 = sqlite3_bind_parameter_index(ppStmt, ":correction");
    sqlite3_bind_text(v20, v21, a3, -1, 0);
    v22 = sqlite3_step(ppStmt);
    v23 = ppStmt;
    v19 = v22 == 100;
    if (v22 == 100)
    {
      memset(&v31, 0, sizeof(v31));
      v24 = sqlite3_column_text(ppStmt, 0);
      std::string::__assign_external(&v31, v24);
      LODWORD(v29) = sqlite3_column_int(ppStmt, 1);
      DWORD1(v29) = sqlite3_column_int(ppStmt, 2);
      DWORD2(v29) = sqlite3_column_int(ppStmt, 3);
      *&v30 = sqlite3_column_double(ppStmt, 4);
      *(&v30 + 1) = sqlite3_column_double(ppStmt, 5);
      *__p = v29;
      v36 = v30;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
      }

      else
      {
        v37 = v31;
      }

      LODWORD(v16) = __p[1];
      v4 = *(&v36 + 1);
      size = v37.__r_.__value_.__l.__size_;
      a3 = v37.__r_.__value_.__r.__words[0];
      v17 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      memset(&v37, 0, sizeof(v37));
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v23 = ppStmt;
    }

    sqlite3_finalize(v23);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
    if (v19)
    {
      goto LABEL_32;
    }

LABEL_48:
    v14 = 0;
    LOBYTE(size) = 0;
    v13 = 0;
    return size | v14 | v13;
  }

  if (!v19)
  {
    goto LABEL_48;
  }

LABEL_32:
  if ((v17 & 0x80u) == 0)
  {
    size = v17;
  }

  if (size < a2 || ((v25 = (v9 - v4) / 60.0 / 60.0 / 24.0, v25 <= 180.0) ? (v26 = v16 == 0) : (v26 = 1), v26 || log(v25) / 1.38629436 >= (v16 - 1)))
  {
    v14 = 0;
    LOBYTE(size) = 0;
    v13 = 0;
  }

  else
  {
    v13 = size & 0xFFFFFF00;
    v14 = 0x100000000;
  }

  if ((v17 & 0x80u) != 0 && v19)
  {
    operator delete(a3);
  }

  return size | v14 | v13;
}

uint64_t TIInlineCompletionGeneratorImpl::_shouldSuppress(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = a3;
  v34 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    v6 = a3[1];
  }

  if (*(a2 + 72) == 1 && (v7 = *(a2 + 80), language_modeling::v1::InlineCompletion::wordBoundaryAt((a2 + 64))))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
      }

      else
      {
        v27 = *a2;
      }

      v24 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v27.__r_.__value_.__r.__words[0];
      }

      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      LODWORD(v28.__r_.__value_.__l.__data_) = 136315650;
      *(v28.__r_.__value_.__r.__words + 4) = "_shouldSuppress";
      WORD2(v28.__r_.__value_.__r.__words[1]) = 2080;
      *(&v28.__r_.__value_.__r.__words[1] + 6) = v24;
      HIWORD(v28.__r_.__value_.__r.__words[2]) = 2080;
      __p = v3;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  TIInlineCompletionGeneratorImpl: Completion --> %s was found but was suppressed for prefix %s", &v28, 0x20u);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    v8 = 1;
  }

  else
  {
    completionFromCacheElement(&v28, a2);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v28;
    }

    if (v33[8] == 1)
    {
      language_modeling::v1::InlineCompletion::~InlineCompletion(v33);
    }

    if (v32 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 312);
    if (!v9)
    {
      operator new();
    }

    v10 = *(v3 + 23);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = v3[1];
    }

    v11 = 0;
    memset(&v27, 0, sizeof(v27));
    while (1)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      if (size <= v11)
      {
        break;
      }

      v13 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
      v14 = memchr(v13 + v11, 32, size - v11);
      v15 = v14 - v13;
      if (!v14 || v15 == -1)
      {
        break;
      }

      std::string::basic_string(&v28, &v25, v11, v15 - v11, &v26);
      std::vector<std::string>::push_back[abi:nn200100](&v27, &v28);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v11 = v15 + 1;
    }

    std::string::basic_string(&v28, &v25, v11, 0xFFFFFFFFFFFFFFFFLL, &v26);
    std::vector<std::string>::push_back[abi:nn200100](&v27, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v18 = v27.__r_.__value_.__l.__size_;
    v17 = v27.__r_.__value_.__r.__words[0];
    if (v27.__r_.__value_.__r.__words[0] == v27.__r_.__value_.__l.__size_)
    {
LABEL_40:
      v28.__r_.__value_.__r.__words[0] = &v27;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v28);
      v8 = 0;
    }

    else
    {
      v19 = v10;
      while (!(TIInlineCompletionsNegativeLearning::wordBlockedByNegativeLearning(v9, v19, v17, 0) >> 32))
      {
        v19 = 0;
        v17 += 24;
        if (v17 == v18)
        {
          goto LABEL_40;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string(&v26, &v25, 0, v10, &v28);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v26;
        }

        else
        {
          v22 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v25;
        }

        else
        {
          v23 = v25.__r_.__value_.__r.__words[0];
        }

        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        LODWORD(v28.__r_.__value_.__l.__data_) = 136315906;
        *(v28.__r_.__value_.__r.__words + 4) = "phraseBlockedByNegativeLearning";
        WORD2(v28.__r_.__value_.__r.__words[1]) = 2080;
        *(&v28.__r_.__value_.__r.__words[1] + 6) = v22;
        HIWORD(v28.__r_.__value_.__r.__words[2]) = 2080;
        __p = v23;
        v30 = 2080;
        v31 = v17;
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      v28.__r_.__value_.__r.__words[0] = &v27;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v28);
      v8 = 2;
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:nn200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
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

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[1].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void greetingCompletion(_BYTE *a1, uint64_t a2, language_modeling::v1::CompletionStem *this, uint64_t a4, uint64_t a5, const __CFLocale *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a2 + 88) == *(a2 + 80) || (*(a4 + 24) & 1) == 0)
  {
    *a1 = 0;
    a1[24] = 0;
  }

  else
  {
    v10 = *(a2 + 88);
    if (*(v10 - 1) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(v10 - 24), *(v10 - 16));
    }

    else
    {
      v16 = *(v10 - 24);
    }

    language_modeling::v1::CompletionStem::prefix(v14, this);
    if (*(a2 + 88) - *(a2 + 80) == 48)
    {
      v11 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v11 = v14[1];
      }

      if (v11)
      {
        Value = CFLocaleGetValue(a6, *MEMORY[0x277CBEED0]);
        if (Value)
        {
          KB::std_string(Value, &v17);
          std::string::basic_string[abi:nn200100]<0>(&v18, "en");
          std::string::basic_string[abi:nn200100]<0>(&v19, "Hi");
          std::string::basic_string[abi:nn200100]<0>(v20, "Hey");
          std::string::basic_string[abi:nn200100]<0>(v21, "Hello");
          std::string::basic_string[abi:nn200100]<0>(v22, "Dear");
          std::string::basic_string[abi:nn200100]<0>(v23, "hi");
          std::string::basic_string[abi:nn200100]<0>(v24, "hey");
          std::string::basic_string[abi:nn200100]<0>(v25, "hello");
          std::string::basic_string[abi:nn200100]<0>(v26, "dear");
          operator new();
        }
      }
    }

    *a1 = 0;
    a1[24] = 0;
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TIInlineCompletion>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__function::__func<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_1,std::allocator<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_1>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDB1C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0,std::allocator<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0>,BOOL ()(language_modeling::v1::InlineCompletion const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2[1];
  v4 = v2[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *v2) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *v2;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v10 = 8 * v6;
    MEMORY[0x2318BDB20](v10, a2);
    v5 = v10 + 8;
    v11 = *v2;
    v12 = v2[1];
    v13 = v10 + *v2 - v12;
    if (v12 != *v2)
    {
      v14 = *v2;
      do
      {
        language_modeling::v1::InlineCompletion::InlineCompletion();
        v14 = (v14 + 8);
      }

      while (v14 != v12);
      do
      {
        language_modeling::v1::InlineCompletion::~InlineCompletion(v11);
        v11 = (v11 + 8);
      }

      while (v11 != v12);
    }

    v15 = *v2;
    *v2 = v13;
    v2[1] = v5;
    v2[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = MEMORY[0x2318BDB20]() + 8;
  }

  v2[1] = v5;
  return 1;
}

uint64_t std::__function::__func<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0,std::allocator<TIInlineCompletionGeneratorImpl::_inlineCompletionsWithLM(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&)::$_0>,BOOL ()(language_modeling::v1::InlineCompletion const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDB180;
  a2[1] = v2;
  return result;
}

void TIInlineCompletionGeneratorImpl::_computeInlineCompletions(unsigned __int8 *a1, const KB::LanguageModelContext *a2, uint64_t a3, uint64_t a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = *(a1 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = atomic_load(a1 + 16);
  v46 = v5;
  v44 = v6;
  if (v7)
  {
    language_modeling::v1::CompletionStem::prefix(&buf, *a3);
    if ((v72 & 0x8000000000000000) != 0)
    {
      v8 = *(a1 + 11);
      v9 = *(&buf + 1);
      operator delete(buf);
      if (v9 < v8)
      {
        goto LABEL_25;
      }
    }

    else if (*(a1 + 11) > v72)
    {
      goto LABEL_25;
    }

    kdebug_trace();
    v10 = kac_get_log();
    v11 = os_signpost_id_make_with_pointer(v10, (a1 ^ 0xC8));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "kbdManager.languageModel.generateInlineCompletions", &unk_22CCA4FEF, &buf, 2u);
      }
    }

    v13 = *(a1 + 37);
    std::mutex::lock(v13);
    *&buf = &unk_283FDB180;
    *(&buf + 1) = &v51;
    p_buf = &buf;
    v88 = &unk_283FDB1C8;
    v89 = a1;
    v91 = &v88;
    v14 = *(a1 + 4);
    v15 = *(a1 + 6);
    language_modeling::v1::LanguageModelSession::enumerateInlineCompletions();
    kdebug_trace();
    v16 = kac_get_log();
    v17 = os_signpost_id_make_with_pointer(v16, (a1 ^ 0xC8));
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        *v54 = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v16, OS_SIGNPOST_INTERVAL_END, v18, "kbdManager.languageModel.generateInlineCompletions", &unk_22CCA4FEF, v54, 2u);
      }
    }

    if (v91 == &v88)
    {
      (*(*v91 + 4))(v91);
    }

    else if (v91)
    {
      (*(*v91 + 5))(v91);
    }

    if (p_buf == &buf)
    {
      (*(*p_buf + 32))(p_buf);
    }

    else if (p_buf)
    {
      (*(*p_buf + 40))();
    }

    std::mutex::unlock(v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "_inlineCompletionsWithLM";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  TIInlineCompletionGeneratorImpl: langugage model is not loaded, cannot compute inline completions", &buf, 0xCu);
  }

LABEL_25:
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v20 = v51;
  v19 = v52;
  if (v51 == v52)
  {
    v21 = 0;
    v38 = 0;
  }

  else
  {
    v21 = 0;
    v50 = v52;
    do
    {
      if (v21 >= v90)
      {
        v22 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v88) >> 4);
        v23 = v22 + 1;
        if (v22 + 1 > 0x333333333333333)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * ((v90 - v88) >> 4) > v23)
        {
          v23 = 0x999999999999999ALL * ((v90 - v88) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v90 - v88) >> 4) >= 0x199999999999999)
        {
          v24 = 0x333333333333333;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<TIInlineCompletion>>(v24);
        }

        v25 = 16 * ((v21 - v88) >> 4);
        std::construct_at[abi:nn200100]<TIInlineCompletion,language_modeling::v1::InlineCompletion const&,TIInlineCompletion*>(v25);
        v27 = v88;
        v26 = v89;
        v28 = 80 * v22 - (v89 - v88);
        if (v89 != v88)
        {
          v29 = 0;
          v30 = -16 * ((v89 - v88) >> 4) + 80 * v22;
          do
          {
            v31 = (v27 + v29);
            v32 = v28 + v29;
            v33 = *(v27 + v29);
            *(v32 + 16) = *(v27 + v29 + 16);
            *v32 = v33;
            v31[1] = 0;
            v31[2] = 0;
            *v31 = 0;
            v34 = *(v27 + v29 + 24);
            *(v32 + 40) = *(v27 + v29 + 40);
            *(v32 + 24) = v34;
            v31[4] = 0;
            v31[5] = 0;
            v31[3] = 0;
            v35 = *(v27 + v29 + 48);
            *(v32 + 56) = *(v27 + v29 + 56);
            *(v32 + 48) = v35;
            v36 = v30 + v29;
            *(v36 + 64) = 0;
            *(v36 + 72) = 0;
            if (*(v27 + v29 + 72) == 1)
            {
              language_modeling::v1::InlineCompletion::InlineCompletion();
              *(v36 + 72) = 1;
            }

            v29 += 80;
          }

          while (v31 + 10 != v26);
          v19 = v50;
          do
          {
            std::allocator_traits<std::allocator<TIInlineCompletion>>::destroy[abi:nn200100]<TIInlineCompletion,void,0>(v27);
            v27 += 80;
          }

          while (v27 != v26);
        }

        v37 = v88;
        v21 = v25 + 80;
        v88 = v28;
        v89 = (v25 + 80);
        v90 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        std::construct_at[abi:nn200100]<TIInlineCompletion,language_modeling::v1::InlineCompletion const&,TIInlineCompletion*>(v21);
        v21 += 80;
      }

      v89 = v21;
      v20 += 8;
    }

    while (v20 != v19);
    v38 = v88;
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](&buf, a4);
  KB::LanguageModelContext::LanguageModelContext(&v74, a2);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(&v81, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v85 = 0;
  v84 = 0;
  v86 = 0;
  std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(&v84, v38, v21, 0xCCCCCCCCCCCCCCCDLL * ((v21 - v38) >> 4));
  v87 = a1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    TIInlineCompletionGeneratorImpl::_computeInlineCompletions(KB::LanguageModelContext const&,std::vector<language_modeling::v1::CompletionStem> const&,std::function<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>)::$_0::operator()(&buf);
    v39 = v46;
  }

  else
  {
    v55 = MEMORY[0x277D85DD0];
    v56 = 3321888768;
    v57 = ___ZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEE_block_invoke;
    v58 = &__block_descriptor_240_a8_32c56_ZTSNSt3__18weak_ptrI31TIInlineCompletionGeneratorImplEE48c241_ZTSZN31TIInlineCompletionGeneratorImpl25_computeInlineCompletionsERKN2KB20LanguageModelContextERKNSt3__16vectorIN17language_modeling2v114CompletionStemENS4_9allocatorIS8_EEEENS4_8functionIFvRKNS5_I18TIInlineCompletionNS9_ISF_EEEES3_EEEE3__0_e5_v8__0l;
    v39 = v46;
    v59 = v44;
    v60 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](v61, &buf);
    KB::LanguageModelContext::LanguageModelContext(&v62, &v74);
    memset(v69, 0, sizeof(v69));
    std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(v69, v81, v82, (v82 - v81) >> 3);
    memset(v70, 0, 24);
    std::vector<TIInlineCompletion>::__init_with_size[abi:nn200100]<TIInlineCompletion*,TIInlineCompletion*>(v70, v84, v85, 0xCCCCCCCCCCCCCCCDLL * ((v85 - v84) >> 4));
    v70[3] = v87;
    TIDispatchAsync();
    *v54 = v70;
    std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](v54);
    *v54 = v69;
    std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](v54);
    *v54 = &v68;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v54);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v67);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v66);
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v63);
    }

    std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](v61);
    if (v60)
    {
      std::__shared_weak_count::__release_weak(v60);
    }
  }

  *v54 = &v84;
  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](v54);
  *v54 = &v81;
  std::vector<language_modeling::v1::CompletionStem>::__destroy_vector::operator()[abi:nn200100](v54);
  *v54 = &v80;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v54);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v79);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v78);
  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
  }

  std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::~__value_func[abi:nn200100](&buf);
  *&buf = &v88;
  std::vector<TIInlineCompletion>::__destroy_vector::operator()[abi:nn200100](&buf);
  v40 = v51;
  if (v51)
  {
    v41 = v52;
    v42 = v51;
    if (v52 != v51)
    {
      do
      {
        language_modeling::v1::InlineCompletion::~InlineCompletion((v41 - 8));
      }

      while (v41 != v40);
      v42 = v51;
    }

    v52 = v40;
    operator delete(v42);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(std::vector<TIInlineCompletion> const&,KB::LanguageModelContext const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::vector<language_modeling::v1::CompletionStem>::__init_with_size[abi:nn200100]<language_modeling::v1::CompletionStem*,language_modeling::v1::CompletionStem*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::CompletionStem>>(a4);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }
}