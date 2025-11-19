__n128 __Block_byref_object_copy__15581(void *a1, uint64_t a2)
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

void ___ZNK2TI8Favonius20DictionaryHypothesis6_wordsERNSt3__16vectorIN2KB4WordENS2_9allocatorIS5_EEEEbbb_block_invoke(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = *a2;
  v12 = v9;
  if (v9)
  {
    CFRetain(v9);
    v12 = v9;
    v10 = *(a1 + 49);
    TI::Favonius::DictionaryHypothesis::merge_dynamic_words(v7, v8 + 40, &v12, a3, a4, *(a1 + 48));

    CFRelease(v9);
  }

  else
  {
    v11 = *(a1 + 49);
    TI::Favonius::DictionaryHypothesis::merge_dynamic_words(v7, v8 + 40, &v12, a3, a4, *(a1 + 48));
  }
}

__n128 __Block_byref_object_copy__4(void *a1, uint64_t a2)
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

void ___ZNK2TI8Favonius20DictionaryHypothesis19merge_dynamic_wordsERNSt3__16vectorIN2KB4WordENS2_9allocatorIS5_EEEENS4_10retain_ptrIPK9_LXCursorEENS4_16DynamicEntryTypeEmbb_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 48) == 5 || (v5 = *(v4 + 8), KB::Word::Word(v23, cf, *(a1 + 52)), LOBYTE(v5) = KB::DynamicDictionary::is_word_in_supplemental_lexicon(*(v5 + 24), v23), KB::Word::~Word(v23), (v5 & 1) == 0))
  {
    v6 = *(*(a1 + 32) + 8);
    v8 = v6[6];
    v7 = v6[7];
    if (v8 >= v7)
    {
      v10 = v6[5];
      v11 = (v8 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v12 = v7 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v15 = (8 * v11);
      *(8 * v11) = cf;
      if (cf)
      {
        CFRetain(cf);
        *v15 = cf;
      }

      v9 = v15 + 1;
      v16 = v6[5];
      v17 = v6[6];
      v18 = (v15 + v16 - v17);
      if (v17 != v16)
      {
        v19 = v6[5];
        v20 = v18;
        do
        {
          v21 = *v19;
          *v19++ = 0;
          *v20++ = v21;
        }

        while (v19 != v17);
        do
        {
          if (*v16)
          {
            CFRelease(*v16);
          }

          *v16++ = 0;
        }

        while (v16 != v17);
        v16 = v6[5];
      }

      v6[5] = v18;
      v6[6] = v9;
      v6[7] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v8 = cf;
      if (cf)
      {
        CFRetain(cf);
        *v8 = cf;
      }

      v9 = v8 + 1;
    }

    v6[6] = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v22 = *MEMORY[0x277D85DE8];
}

float TI::Favonius::DictionaryHypothesis::partial_probability_per_dynamic_usage(TI::Favonius::DictionaryHypothesis *this)
{
  v2 = (*(**(this + 9) + 88))(*(this + 9), *(*(this + 1) + 24));
  if (v2)
  {
    v3 = 1.0 / v2;
  }

  else
  {
    v3 = 0.0;
  }

  KB::DictionaryCursors::probability_of_static_trie_given_termination((this + 16), *(this + 1));
  return v3 * (1.0 - v4);
}

void TI::Favonius::DictionaryHypothesis::word_from_dynamic_entry(uint64_t a1, uint64_t a2, int a3, int a4, int a5, float a6)
{
  v11 = KB::Word::Word(a1, a2, a4);
  *(v11 + 104) &= 0xFFFFFF79;
  if ((a4 + 1) >= 2 && a4 != a5)
  {
    *(a1 + 192) = 1;
  }

  KB::Word::move_capitalization_to_bits(a1);
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v12 = *(a1 + 104) | 0x10000;
        goto LABEL_22;
      case 4:
        v12 = *(a1 + 104) | 0x100;
        goto LABEL_22;
      case 5:
        TILXEntryGetSupplementalItemIdentifiers(v14);
        if ((a1 + 200) != v14)
        {
          *(a1 + 232) = v16;
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>((a1 + 200), v15);
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v14);
        if (TILXEntryIsPartOfHyphenatedWord())
        {
          v13 = 16;
        }

        else
        {
          v13 = 0;
        }

        v12 = *(a1 + 104) & 0xFFFFFFEF | v13;
        goto LABEL_22;
    }
  }

  else
  {
    switch(a3)
    {
      case 0:
        v12 = *(a1 + 104) & 0xFFFFDFFF | ((*(a1 + 124) > 1u) << 13) | 0x2000000;
        goto LABEL_22;
      case 1:
        v12 = *(a1 + 104) | 0x20000;
        goto LABEL_22;
      case 2:
        v12 = *(a1 + 104) | 0x80000000;
LABEL_22:
        *(a1 + 104) = v12;
        break;
    }
  }

  *(a1 + 48) = a6;
  *(a1 + 140) = 0;
}

void KB::DictionaryContainer::DictionaryContainer(KB::StaticDictionary *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = 1;
  KB::StaticDictionary::create(a1);
}

void KB::DictionaryContainer::~DictionaryContainer(KB::DictionaryContainer *this)
{
  if (*(this + 4))
  {
    LMLexiconIDConverterDestroy();
    *(this + 4) = 0;
  }

  v3 = (this + 40);
  std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<KB::StaticDictionary>::~unique_ptr[abi:nn200100](this + 2);
  std::unique_ptr<KB::StaticDictionary>::~unique_ptr[abi:nn200100](this + 1);
}

void KB::DictionaryContainer::suspend_dynamic_dict(KB::DictionaryContainer *this)
{
  v1 = *(this + 3);
  v2 = *(v1 + 32);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t KB::DictionaryContainer::lookup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (**(this + 8) != *(*(this + 8) + 8))
  {
    atomic_fetch_add(this, 1u);
    TI::Favonius::DictionaryHypothesis::create();
  }

  return this;
}

void KB::DictionaryContainer::_probability_of_word_with_string_and_id(atomic_uint *this, const KB::String *a2, const TITokenID *a3)
{
  v3 = this;
  if (this)
  {
    atomic_fetch_add(this, 1u);
    TI::Favonius::DictionaryHypothesis::create();
  }

  TI::Favonius::DictionaryHypothesis::create();
}

void KB::DictionaryContainer::word_with_string(KB::StaticDictionary **this@<X0>, const KB::String *a2@<X1>, int a3@<W2>, KB::Word *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  KB::StaticDictionary::word_with_string(this[1], a2, a3, v9);
  KB::DynamicDictionary::word_with_string(v8, this[3], a2);
  combine_words(a4, v9, v8);
  KB::Word::~Word(v8);
  KB::Word::~Word(v9);
  v7 = *MEMORY[0x277D85DE8];
}

double combine_words(KB::Word *this, _WORD *a2, KB::Word *a3)
{
  v5 = *a3;
  if (*a2)
  {
    KB::Word::Word(this, a2);
    if (!v5)
    {
      return result;
    }

    result = *(a3 + 124);
    *(this + 124) = result;
    *(this + 26) = *(this + 26) & 0x7DFCFEFF | *(a3 + 26) & 0x82030100;
    if (this != a3)
    {
      *(this + 58) = *(a3 + 58);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(this + 25, *(a3 + 27));
    }

    if (*(a3 + 28))
    {
      return result;
    }

    v8 = *(a3 + 31);
    v7 = *(a3 + 32);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (!v9 || v10 < 3)
    {
      return result;
    }

LABEL_15:
    *(this + 26) |= 0x2000u;
    return result;
  }

  if (*a3)
  {
    KB::Word::Word(this, a3);
    if (*(this + 28))
    {
      return result;
    }

    v12 = *(this + 31);
    v11 = *(this + 32);
    v9 = v12 >= v11;
    v13 = v12 - v11;
    if (!v9 || v13 < 2)
    {
      return result;
    }

    goto LABEL_15;
  }

  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;

  return KB::Word::Word(this);
}

void KB::DictionaryContainer::word_with_string_exhaustive(KB::StaticDictionary **this@<X0>, const KB::String *a2@<X1>, int a3@<W2>, KB::Word *a4@<X8>)
{
  v21[5] = *MEMORY[0x277D85DE8];
  KB::StaticDictionary::word_with_string(this[1], a2, a3, v15);
  if (!v15[0])
  {
    KB::DictionaryContainer::closest_static_match(this, a2, v8);
    KB::String::operator=(v15, v8);
    if (v16 >= 0xFu && *(&v16 + 1))
    {
      MEMORY[0x2318BE250](*(&v16 + 1), 0x1000C8077774924);
    }

    v16 = v9;
    if (v9 >= 0xFu)
    {
      LOWORD(v9) = 0;
    }

    v17 = v10;
    v18 = v11;
    KB::String::operator=(v19, v12);
    v19[2] = v12[2];
    v19[3] = v12[3];
    v19[4] = v12[4];
    v19[5] = v12[5];
    KB::String::operator=(v20, v13);
    v20[32] = v13[32];
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__move_assign(v21, v14);
    KB::Word::~Word(v8);
  }

  KB::DynamicDictionary::word_with_string(v8, this[3], a2);
  combine_words(a4, v15, v8);
  KB::Word::~Word(v8);
  KB::Word::~Word(v15);
  v7 = *MEMORY[0x277D85DE8];
}

void KB::DictionaryContainer::closest_static_match(KB::DictionaryContainer *this@<X0>, const KB::String *a2@<X1>, KB::Word *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  KB::DictionaryContainer::derive_static_words(this, &v12, a2);
  v5 = v12;
  v6 = v13;
  if (v12 == v13)
  {
LABEL_7:
    *(a3 + 13) = 0u;
    *(a3 + 14) = 0u;
    *(a3 + 11) = 0u;
    *(a3 + 12) = 0u;
    *(a3 + 9) = 0u;
    *(a3 + 10) = 0u;
    *(a3 + 7) = 0u;
    *(a3 + 8) = 0u;
    *(a3 + 5) = 0u;
    *(a3 + 6) = 0u;
    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
    KB::Word::Word(a3);
  }

  else
  {
    while (!KB::String::equal(v5, a2, 0))
    {
      v5 += 240;
      if (v5 == v6)
      {
        v5 = v12;
        v7 = v13;
        if (v12 == v13)
        {
          goto LABEL_7;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v9 = a2 + 16;
          if (*(a2 + 1))
          {
            v9 = *(a2 + 1);
          }

          v10 = "";
          if (*a2)
          {
            v11 = v9;
          }

          else
          {
            v11 = "";
          }

          if (*v5)
          {
            v10 = *(v5 + 1);
            if (!v10)
            {
              v10 = v5 + 16;
            }
          }

          *&buf[4] = "closest_static_match";
          *buf = 136315906;
          v16 = 2080;
          v17 = v11;
          v18 = 2080;
          v19 = v10;
          v20 = 2048;
          v21 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v5) >> 4);
          _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  DictionaryContainer::closest_static_match: %s has only diacritic-insensitive matches, returning the first one (%s) out of %zu", buf, 0x2Au);
          v5 = v12;
        }

        break;
      }
    }

    KB::Word::Word(a3, v5);
  }

  *buf = &v12;
  std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](buf);
  v8 = *MEMORY[0x277D85DE8];
}

void KB::DictionaryContainer::derive_static_words(uint64_t a1, uint64_t *a2, unsigned __int16 *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (*v4 != *(v4 + 1) && *a3 != 0)
  {
    KB::StaticDictionaryCursor::StaticDictionaryCursor(v46, v4);
    memset(v45, 0, sizeof(v45));
    if (*(a3 + 1))
    {
      v8 = *(a3 + 1);
    }

    else
    {
      v8 = (a3 + 8);
    }

    v40 = v8;
    v9 = *a3;
    v41 = 0;
    v42 = v9;
    v43 = 0;
    KB::String::iterator::initialize(&v40);
    v44 = 0;
    v36 = v8;
    v37 = v9;
    v38 = v9;
    v39 = 0;
    KB::String::iterator::initialize(&v36);
    v10 = v37;
    if (v41 != v37)
    {
      v11 = 1.0;
      do
      {
        if (!KB::StaticDictionaryCursor::valid(v46))
        {
          break;
        }

        v12 = v43;
        ++v44;
        KB::String::iterator::operator++(&v40);
        v11 = v11 * KB::StaticDictionaryCursor::advance(v46, v12);
        if (*(a1 + 32))
        {
          v13 = v44;
          v14 = a3[2];
          if (!a3[2])
          {
            KB::String::compute_length(a3);
            v14 = a3[2];
          }

          if (v13 < v14 && v47)
          {
            v15 = 0;
            v16 = 8 * v47 - 8;
            do
            {
              v17 = *&v46[v15];
              v18 = LXCursorTerminatesWordStem();
              if (v18)
              {
                v19 = 1;
              }

              else
              {
                v19 = v16 == v15;
              }

              v15 += 8;
            }

            while (!v19);
            if (v18)
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              KB::StaticDictionaryCursor::derive_words(v46, &v33, *(a1 + 8));
              v20 = *a3;
              v21 = *(a3 + 1);
              if (!v21)
              {
                v21 = (a3 + 8);
              }

              v29 = v21;
              v30 = v20;
              v31 = v20;
              v32 = 0;
              KB::String::iterator::initialize(&v29);
              KB::String::String(&v48, &v40, &v29);
              v22 = v33;
              v23 = v34;
              while (v22 != v23)
              {
                *(v22 + 52) = v11;
                KB::DictionaryContainer::derive_combined_words(a1, v45, v22, &v48);
                v22 += 240;
              }

              if (v49)
              {
                v24 = BYTE6(v48) == 1;
              }

              else
              {
                v24 = 0;
              }

              if (v24)
              {
                free(v49);
              }

              v48 = &v33;
              std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v48);
            }
          }
        }
      }

      while (v41 != v10);
    }

    KB::StaticDictionaryCursor::derive_words(v46, a2, *(a1 + 8));
    if (*(a1 + 32))
    {
      v25 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Word *>,BOOL({block_pointer})(KB::Word const&)>(*a2, a2[1], &__block_literal_global_15621);
      std::vector<KB::Word>::erase(a2, v25, a2[1]);
      KB::StaticDictionary::merge_words(a2, v45);
    }

    v48 = v45;
    std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](&v48);
    for (i = 16; i != -8; i -= 8)
    {
      v27 = *&v46[i];
      if (v27)
      {
        CFRelease(v27);
      }

      *&v46[i] = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void KB::DictionaryContainer::derive_combined_words(uint64_t a1, uint64_t a2, uint64_t a3, const KB::String *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *v24 = 0;
  v25 = 0;
  if (*(a1 + 32))
  {
    v8 = *(a3 + 140);
    if (LMLexiconIDConverterGetStemData())
    {
      KB::String::String(v27, v25, v24[0]);
      KB::StaticDictionaryCursor::StaticDictionaryCursor(v23, *(a1 + 8));
      KB::StaticDictionaryCursor::advance(v23, v27);
      KB::StaticDictionaryCursor::advance(v23, a4);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      KB::StaticDictionaryCursor::derive_words(v23, &v20, *(a1 + 8));
      v9 = v20;
      v10 = v21;
      while (v9 != v10)
      {
        v11 = *(a3 + 136);
        v12 = v9[17];
        v13 = KB::DictionaryContainer::combined_word_id(a1, v11, v12);
        if (HIDWORD(v13) && (v9[16].word_id & (*(a3 + 132) >> 12) & 0xFFF) != 0 && *v24 <= LOWORD(v9->lexicon_id))
        {
          v14 = v13;
          KB::Word::Word(v26, a3);
          v15 = v14;
          KB::Word::append_suffix(v26, v9, v24[0], v15);
          std::vector<KB::Word>::push_back[abi:nn200100](a2, v26);
          KB::Word::~Word(v26);
        }

        v9 += 30;
      }

      v26[0] = &v20;
      std::vector<KB::Word>::__destroy_vector::operator()[abi:nn200100](v26);
      for (i = 16; i != -8; i -= 8)
      {
        v17 = *&v23[i];
        if (v17)
        {
          CFRelease(v17);
        }

        *&v23[i] = 0;
      }

      if (v28)
      {
        v18 = v27[6] == 1;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        free(v28);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t KB::DictionaryContainer::combined_word_id(KB::DictionaryContainer *this, TITokenID a2, TITokenID a3)
{
  v3 = *(this + 1);
  if (*v3 == *(v3 + 8))
  {
    v4 = -1;
  }

  else
  {
    v4 = **(v3 + 48);
  }

  if (*(this + 4))
  {
    v5 = v4 == a2.lexicon_id;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && v4 == a3.lexicon_id)
  {
    LMLexiconIDConverterGetStemSuffixTokenID();
  }

  return v4;
}

uint64_t KB::DictionaryContainer::affix_sentinel@<X0>(KB::DictionaryContainer *this@<X0>, TITokenID a2@<0:X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(this + 1);
  if (*v5 == *(v5 + 8))
  {
    v6 = -1;
  }

  else
  {
    v6 = **(v5 + 48);
  }

  result = *(this + 4);
  if (result)
  {
    v8 = v6 == a2.lexicon_id;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    result = LMLexiconIDConverterGetSuffixData();
    if (result)
    {
      return KB::String::String(a4, 0, 0);
    }

LABEL_8:
    *a4 = 0x100000;
    *(a4 + 4) = 0;
    *(a4 + 6) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  result = LMLexiconIDConverterGetStemData();
  if (!result)
  {
    goto LABEL_8;
  }

  return KB::String::String(a4, 0, 0);
}

void options_with_word_locale(char *a1, char *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  *a1 = Mutable;
  if (a2)
  {
    v6 = Mutable;
    std::string::basic_string[abi:nn200100]<0>(__p, a2);
    KB::cf_string(__p, &localeIdentifier);
    v7 = localeIdentifier;
    v8 = CFLocaleCreate(v4, localeIdentifier);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v6, *MEMORY[0x277D23188], v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void TI::VulgarWordUsageDatabaseWrapper::attach_to_dynamic_resource_directory(CFTypeRef *a1, std::string *a2)
{
  memset(&v11, 0, sizeof(v11));
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:nn200100]<char const*,0>(&v11, a2, (a2 + v3));
  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:nn200100]<char const*,0>(&__p, "VulgarWordUsage.db", "");
  std::__fs::filesystem::operator/[abi:nn200100](&v10, &v11, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  KB::cf_string(&__p, &v8);
  v5 = v8;
  v6 = LXVulgarWordUsageDatabaseCreate();
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = v6;
  if (v5)
  {
    CFRelease(v5);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *a1;
  LXVulgarWordUsageDatabasePerformMaintenance();
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void KB::LanguageModelImplStub::do_store(KB::LanguageModelImplStub *this)
{
  std::mutex::lock((this + 224));
  if (KB::LanguageModelImplStub::is_dynamic_valid(this))
  {
    if (*(this + 169) & 1) != 0 && (v2 = *(this + 19)) != 0 && *v2 && (atomic_load_explicit((v2 + 120), memory_order_acquire))
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    KB::MutableLexiconWrapper::store(v3);
  }

  std::mutex::unlock((this + 224));
}

uint64_t KB::LanguageModelImplStub::is_dynamic_valid(KB::LanguageModelImplStub *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    if ((*(this + 169) & 1) != 0 && (v3 = *(this + 19)) != 0 && *v3 && (atomic_load_explicit((v3 + 120), memory_order_acquire) & 1) != 0 && *v3)
    {
      if (*(this + 169) & 1) != 0 && (v4 = *(this + 19)) != 0 && *v4 && (atomic_load_explicit(v4 + 120, memory_order_acquire))
      {
        v5 = *v4;
      }

      else
      {
        v5 = 0;
      }

      return (*(*v5 + 16))(v5) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void KB::LanguageModelImplStub::background_load(atomic_uchar *this)
{
  v2 = (this + 224);
  std::mutex::lock((this + 224));
  KB::LanguageModelImplStub::_load_if_necessary(this);
  if (atomic_load_explicit(this + 169, memory_order_acquire))
  {

    std::mutex::unlock(v2);
  }

  else
  {
    v3.__m_ = v2;
    v3.__owns_ = 1;
    KB::LanguageModelImplStub::_wait_for_load(this, &v3);
    if (v3.__owns_)
    {
      std::mutex::unlock(v3.__m_);
    }
  }
}

atomic_uchar *KB::LanguageModelImplStub::_load_if_necessary(atomic_uchar *this)
{
  if ((atomic_exchange(this + 168, 1u) & 1) == 0)
  {
    v1 = this;
    KB::LanguageModelImplStub::_load_dynamic(this);
    atomic_store(1u, v1 + 169);
    std::condition_variable::notify_all((v1 + 176));
    this = KB::LanguageModelImplStub::is_dynamic_valid(v1);
    if (this)
    {

      return TILanguageModelScheduleMaintenance();
    }
  }

  return this;
}

void KB::LanguageModelImplStub::_wait_for_load(uint64_t a1, std::unique_lock<std::mutex> *a2)
{
  if (pthread_main_np())
  {
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, -1, &__block_literal_global_5);
    v5 = KB::LanguageModel::background_loading_queue(v4);
    TIDispatchAsync();
  }

  while ((*(a1 + 169) & 1) == 0)
  {
    std::condition_variable::wait((a1 + 176), a2);
  }
}

void KB::LanguageModelImplStub::_load_dynamic(KB::LanguageModelImplStub *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(this + 5))
  {
    _ZNSt3__115allocate_sharedB8nn200100IN2KB21LanguageModelImplStub13WrapperHandleENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(this + 2), 0);
  v3 = MEMORY[0x2318BC170](ValueAtIndex);
  KB::utf8_string(v3, v14);
  v4 = CFArrayGetValueAtIndex(*(this + 2), 0);
  v5 = MEMORY[0x2318BC170](v4);
  v6 = UIKeyboardDynamicDictionaryFileWithSiriMode(v5, *(this + 5), 0);
  KB::utf8_string(v6, v12);
  KB::LanguageModelImplStub::get_or_create_shared_handle(v14, &v11);
  v7 = *(this + 20);
  v8 = v11;
  *(this + 152) = v11;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    v9 = *(this + 19);
  }

  else
  {
    v9 = v8;
  }

  KB::LanguageModelImplStub::WrapperHandle::wait_until_ready(v9);
  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  if (v14[1] && BYTE6(v14[0]) == 1)
  {
    free(v14[1]);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void KB::LanguageModelImplStub::get_or_create_shared_handle(KB::LanguageModelImplStub *this@<X0>, void *a2@<X8>)
{
  KB::LanguageModelImplStub::wrapper_cache_mutex(this);
  std::mutex::lock(&KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex);
  *a2 = 0;
  a2[1] = 0;
  v6 = *(this + 1);
  if (!v6)
  {
    v6 = this + 16;
  }

  if (*this)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  v8 = std::string::basic_string[abi:nn200100]<0>(__p, v7);
  KB::LanguageModelImplStub::wrapper_cache(v8);
  if ((v24 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v10 = v24;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v9, v10);
  v12 = *(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 1);
  if (!*(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 1))
  {
    goto LABEL_28;
  }

  v13 = v11;
  v14 = vcnt_s8(*(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 8));
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v11;
    if (v11 >= *(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 1))
    {
      v16 = v11 % *(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 1);
    }
  }

  else
  {
    v16 = (*(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 1) - 1) & v11;
  }

  v17 = *(KB::LanguageModelImplStub::wrapper_cache(void)::cache + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_28:
    KB::LanguageModelImplStub::wrapper_cache(v11);
    goto LABEL_29;
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v13)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= v12)
      {
        v19 %= v12;
      }
    }

    else
    {
      v19 &= v12 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_28;
    }

LABEL_27:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  v11 = std::equal_to<std::string>::operator()[abi:nn200100](v18 + 2, __p);
  if ((v11 & 1) == 0)
  {
    goto LABEL_27;
  }

  KB::LanguageModelImplStub::wrapper_cache(v11);
  v20 = v18[6];
  if (!v20 || (v21 = std::__shared_weak_count::lock(v20)) == 0 || (v22 = v18[5], *a2 = v22, a2[1] = v21, !v22))
  {
LABEL_29:
    _ZNSt3__115allocate_sharedB8nn200100IN2KB21LanguageModelImplStub13WrapperHandleENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  std::mutex::unlock(&KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex);
}

void KB::LanguageModelImplStub::WrapperHandle::wait_until_ready(KB::LanguageModelImplStub::WrapperHandle *this)
{
  v3.__m_ = (this + 8);
  v3.__owns_ = 1;
  std::mutex::lock((this + 8));
  while (1)
  {
    v2 = atomic_load(this + 120);
    if (v2)
    {
      break;
    }

    std::condition_variable::wait((this + 72), &v3);
  }

  if (v3.__owns_)
  {
    std::mutex::unlock(v3.__m_);
  }
}

void KB::LanguageModelImplStub::WrapperHandle::set(uint64_t *a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 1));
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  atomic_store(1u, a1 + 120);
  std::condition_variable::notify_all((a1 + 9));

  std::mutex::unlock((a1 + 1));
}

uint64_t std::__shared_ptr_emplace<KB::LanguageModelImplStub::WrapperHandle>::__on_zero_shared(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 96));
  std::mutex::~mutex((a1 + 32));
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void std::__shared_ptr_emplace<KB::LanguageModelImplStub::WrapperHandle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDCC88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void *KB::LanguageModelImplStub::wrapper_cache_mutex(KB::LanguageModelImplStub *this)
{
  {
    __cxa_atexit(MEMORY[0x277D82690], &KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex, &dword_22CA55000);
  }

  return &KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex;
}

__int128 *KB::LanguageModelImplStub::wrapper_cache(KB::LanguageModelImplStub *this)
{
  {
    KB::LanguageModelImplStub::wrapper_cache(void)::cache = 0u;
    *&qword_280FAC918 = 0u;
    dword_280FAC928 = 1065353216;
    __cxa_atexit(std::unordered_map<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>::~unordered_map[abi:nn200100], &KB::LanguageModelImplStub::wrapper_cache(void)::cache, &dword_22CA55000);
  }

  return &KB::LanguageModelImplStub::wrapper_cache(void)::cache;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,0>(uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,0>((v2 + 2));
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

uint64_t KB::LanguageModelImplStub::completions(uint64_t a1, const KB::Candidate **a2)
{
  v7[125] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      KB::Candidate::Candidate(v7, v2);
      KB::Candidate::pop_last_word(v7);
      if (v7[0])
      {
        KB::Candidate::Candidate(v6, v7);
        std::vector<KB::Candidate>::__init_with_size[abi:nn200100]<KB::Candidate const*,KB::Candidate const*>();
      }

      KB::Candidate::~Candidate(v7);
      v2 = (v2 + 1000);
    }

    while (v2 != v3);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t KB::LanguageModelImplStub::predictions(uint64_t a1, uint64_t a2, KB::LanguageModelContext *a3)
{
  v23[125] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v3 = *a2;
  if (*a2 != *(a2 + 8))
  {
    KB::LanguageModelContext::LanguageModelContext(v15, a3);
    v6 = KB::Candidate::Candidate(v23, v3);
    if (v23[0])
    {
      v7 = v23[1];
      v8 = 240 * v23[0];
      do
      {
        if ((*(v7 + 135) & 4) == 0)
        {
          goto LABEL_10;
        }

        v19 = 0;
        v20 = 0;
        v21 = " ";
        v18 = 1048577;
        v22 = 0;
        if (v7 != &v18)
        {
          v9 = KB::String::equal(v7, &v18, 1);
          v6 = v21;
          if (v21 && v20 == 1)
          {
            free(v21);
          }

          if (!v9)
          {
LABEL_10:
            *(v7 + 96) = (*(*a1 + 456))(a1, *(v7 + 136), a3);
            v10 = *(v7 + 136);
            KB::Word::capitalized_string(v7, &v18);
            v11 = v10;
            KB::LanguageModelContext::append(v15, v11, &v18, 0);
            v6 = v21;
            if (v21)
            {
              v12 = v20 == 1;
            }

            else
            {
              v12 = 0;
            }

            if (v12)
            {
              free(v21);
            }
          }
        }

        v7 += 240;
        v8 -= 240;
      }

      while (v8);
    }

    KB::LanguageModel::get_prediction_count(v6);
    v17 = 0;
    operator new();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

void std::__function::__func<KB::LanguageModelImplStub::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelImplStub::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,void ()(KB::LanguageModel::PredictionInfo const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 24);
  if (v3)
  {
    **(a1 + 8) |= (*(*v3 + 48))(v3, a2, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<KB::LanguageModelImplStub::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelImplStub::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,void ()(KB::LanguageModel::PredictionInfo const&)>::destroy_deallocate(v4);
  }
}

__n128 std::__function::__func<KB::LanguageModelImplStub::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0,std::allocator<KB::LanguageModelImplStub::predictions(std::vector<KB::Candidate> const&,KB::LanguageModelContext const&,std::function<BOOL ()(KB::LanguageModel::PredictionInfo const&,KB::Candidate const&,KB::LanguageModelContext const&)>,BOOL)::$_0>,void ()(KB::LanguageModel::PredictionInfo const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283FDCCC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double KB::LanguageModelImplStub::PredictionEnumeratorStub::get_prediction@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 152) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

void std::__shared_ptr_emplace<KB::LanguageModelImplStub::PredictionEnumeratorStub>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDCC20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void KB::LanguageModelImplStub::predictions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (a1 ^ 0xCD));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      LOWORD(v16[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.languageModel.stubGenerateCompletionsAndPredictions", &unk_22CCA4FEF, v16, 2u);
    }
  }

  (*(*a1 + 480))(&v22, a1, a2, a3);
  if ((*(*v22 + 24))(v22))
  {
    while (1)
    {
      (*(*v22 + 16))(v16);
      v11 = *(a4 + 24);
      if (!v11)
      {
        break;
      }

      (*(*v11 + 48))(v11, v16);
      v24 = &v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v24);
      v24 = &v20;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v24);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      if (v17 < 0)
      {
        operator delete(v16[6]);
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }

      if (((*(*v22 + 24))(v22) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v15 = std::__throw_bad_function_call[abi:nn200100]();
    KB::LanguageModelImplStub::conditional_likelihood_batched(v15);
  }

  else
  {
LABEL_13:
    kdebug_trace();
    v12 = kac_get_log();
    v13 = os_signpost_id_make_with_pointer(v12, (a1 ^ 0xCD));
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        LOWORD(v16[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v12, OS_SIGNPOST_INTERVAL_END, v14, "kbdManager.languageModel.stubGenerateCompletionsAndPredictions", &unk_22CCA4FEF, v16, 2u);
      }
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void KB::LanguageModelImplStub::conditional_likelihood_batched(unsigned int **a1@<X1>, void *a2@<X2>, int a3@<W5>, unint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v4 = *a1;
    v5 = a1[1];
    if (*a1 != v5)
    {
      v6 = a4;
      do
      {
        std::vector<KB::LikelihoodInfo>::vector[abi:nn200100](&v66, *v4);
        v7 = v6[1];
        v8 = v6[2];
        if (v7 >= v8)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_67;
          }

          v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v6) >> 3);
          if (2 * v12 > v11)
          {
            v11 = 2 * v12;
          }

          if (v12 >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v11;
          }

          v76 = v6;
          if (v13)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v13);
          }

          v14 = 24 * v10;
          *v14 = 0;
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
          *v14 = v66;
          *(v14 + 16) = __p;
          v66 = 0uLL;
          *&__p = 0;
          v9 = 24 * v10 + 24;
          v6 = a4;
          v15 = a4[1] - *a4;
          v16 = 24 * v10 - v15;
          memcpy((v14 - v15), *a4, v15);
          v17 = *a4;
          *a4 = v16;
          a4[1] = v9;
          v18 = a4[2];
          a4[2] = 0;
          v74 = v17;
          v75 = v18;
          v72 = v17;
          v73 = v17;
          std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(&v72);
        }

        else
        {
          *v7 = 0;
          *(v7 + 1) = 0;
          *(v7 + 2) = 0;
          *v7 = v66;
          *(v7 + 2) = __p;
          v66 = 0uLL;
          *&__p = 0;
          v9 = (v7 + 24);
        }

        v6[1] = v9;
        v72 = &v66;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](&v72);
        v4 += 250;
      }

      while (v4 != v5);
    }
  }

  else
  {
    v19 = *a1;
    if (a1[1] != *a1)
    {
      v20 = a2;
      v21 = 0;
      do
      {
        v22 = &v19[250 * v21];
        v69 = 0;
        v70 = 0;
        v71 = 0;
        if (*v22)
        {
          v23 = 0;
          v24 = 0;
          v25 = 52;
          do
          {
            if (*(*(*v20 + 24 * v21) + v23) == 1)
            {
              LODWORD(v66) = *(*(v22 + 1) + v25);
              *(&v66 + 4) = v66;
              std::string::basic_string[abi:nn200100]<0>(&__p, "");
              v26 = v70;
              if (v70 >= v71)
              {
                v32 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3);
                v33 = v32 + 1;
                if (v32 + 1 > 0x666666666666666)
                {
                  goto LABEL_66;
                }

                if (0x999999999999999ALL * ((v71 - v69) >> 3) > v33)
                {
                  v33 = 0x999999999999999ALL * ((v71 - v69) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v71 - v69) >> 3) >= 0x333333333333333)
                {
                  v34 = 0x666666666666666;
                }

                else
                {
                  v34 = v33;
                }

                v76 = &v69;
                if (v34)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LikelihoodInfo>>(v34);
                }

                v38 = 8 * ((v70 - v69) >> 3);
                v39 = v66;
                *(v38 + 8) = DWORD2(v66);
                *v38 = v39;
                v40 = __p;
                *(v38 + 32) = v68;
                *(v38 + 16) = v40;
                v68 = 0;
                __p = 0uLL;
                v41 = (40 * v32 + 40);
                v42 = (40 * v32 + v69 - v70);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LikelihoodInfo>,KB::LikelihoodInfo*>(v69, v70, v38 + v69 - v70);
                v43 = v69;
                v44 = v71;
                v69 = v42;
                v70 = v41;
                v71 = 0;
                v72 = v43;
                v74 = v43;
                v75 = v44;
                v73 = v43;
                std::__split_buffer<KB::LikelihoodInfo>::~__split_buffer(&v72);
                v70 = v41;
                if (SHIBYTE(v68) < 0)
                {
                  operator delete(__p);
                }
              }

              else
              {
                v27 = v66;
                *(v70 + 2) = DWORD2(v66);
                *v26 = v27;
                v28 = __p;
                *(v26 + 4) = v68;
                *(v26 + 1) = v28;
                v70 = v26 + 40;
              }
            }

            else
            {
              v29 = v70;
              if (v70 >= v71)
              {
                v35 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3) + 1;
                if (v35 > 0x666666666666666)
                {
LABEL_66:
                  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                }

                if (0x999999999999999ALL * ((v71 - v69) >> 3) > v35)
                {
                  v35 = 0x999999999999999ALL * ((v71 - v69) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v71 - v69) >> 3) >= 0x333333333333333)
                {
                  v36 = 0x666666666666666;
                }

                else
                {
                  v36 = v35;
                }

                v76 = &v69;
                if (v36)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LikelihoodInfo>>(v36);
                }

                v45 = 8 * ((v70 - v69) >> 3);
                v46 = KB::k_invalid_likelihood_value;
                *(v45 + 8) = dword_27D9EB580;
                *v45 = v46;
                if (byte_27D9EB59F < 0)
                {
                  std::string::__init_copy_ctor_external((v45 + 16), *aInvalidLikelih_1, *&aInvalidLikelih_1[8]);
                }

                else
                {
                  v47 = *aInvalidLikelih_1;
                  *(v45 + 32) = *&aInvalidLikelih_1[16];
                  *(v45 + 16) = v47;
                }

                v37 = (v45 + 40);
                v48 = (v45 + v69 - v70);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LikelihoodInfo>,KB::LikelihoodInfo*>(v69, v70, v48);
                v49 = v69;
                v50 = v71;
                v69 = v48;
                v70 = (v45 + 40);
                v71 = 0;
                v72 = v49;
                v74 = v49;
                v75 = v50;
                v73 = v49;
                std::__split_buffer<KB::LikelihoodInfo>::~__split_buffer(&v72);
                v20 = a2;
              }

              else
              {
                v30 = KB::k_invalid_likelihood_value;
                *(v70 + 2) = dword_27D9EB580;
                *v29 = v30;
                if (byte_27D9EB59F < 0)
                {
                  std::string::__init_copy_ctor_external((v29 + 16), *aInvalidLikelih_1, *&aInvalidLikelih_1[8]);
                }

                else
                {
                  v31 = *aInvalidLikelih_1;
                  *(v29 + 4) = *&aInvalidLikelih_1[16];
                  *(v29 + 1) = v31;
                }

                v37 = (v29 + 40);
              }

              v70 = v37;
            }

            ++v24;
            v25 += 240;
            v23 += 2;
          }

          while (v24 < *v22);
        }

        v52 = a4[1];
        v51 = a4[2];
        if (v52 >= v51)
        {
          v54 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *a4) >> 3);
          v55 = v54 + 1;
          if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_67:
            std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
          }

          v56 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *a4) >> 3);
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x555555555555555)
          {
            v57 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v57 = v55;
          }

          v76 = a4;
          if (v57)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v57);
          }

          v58 = 24 * v54;
          *v58 = 0;
          *(v58 + 8) = 0;
          *(v58 + 16) = 0;
          std::vector<KB::LikelihoodInfo>::__init_with_size[abi:nn200100]<KB::LikelihoodInfo*,KB::LikelihoodInfo*>(24 * v54, v69, v70, 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3));
          v53 = 24 * v54 + 24;
          v59 = a4[1] - *a4;
          v60 = (v58 - v59);
          memcpy(v60, *a4, v59);
          v61 = *a4;
          *a4 = v60;
          a4[1] = v53;
          v62 = a4[2];
          a4[2] = 0;
          v74 = v61;
          v75 = v62;
          v72 = v61;
          v73 = v61;
          std::__split_buffer<std::vector<KB::LikelihoodInfo>>::~__split_buffer(&v72);
        }

        else
        {
          *v52 = 0;
          v52[1] = 0;
          v52[2] = 0;
          std::vector<KB::LikelihoodInfo>::__init_with_size[abi:nn200100]<KB::LikelihoodInfo*,KB::LikelihoodInfo*>(v52, v69, v70, 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3));
          v53 = (v52 + 3);
        }

        a4[1] = v53;
        v72 = &v69;
        std::vector<KB::LikelihoodInfo>::__destroy_vector::operator()[abi:nn200100](&v72);
        ++v21;
        v19 = *a1;
        v20 = a2;
      }

      while (v21 < 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 3));
    }
  }
}

void KB::LanguageModelImplStub::conditional_likelihood(KB::LanguageModelImplStub *this@<X0>, const TITokenID *a2@<X2>, float a3@<S0>, __CFString *a4@<X4>, uint64_t a5@<X8>)
{
  v11 = KB::LanguageModel::lexicon_id_active(this, a2->lexicon_id);
  if (*a2 >> 34 < 0x7D || v11)
  {
    if (a4)
    {
      KB::append_format(a4, "LMMock - LM_score %f", v12, a3);
    }

    *a5 = a3;
    *(a5 + 4) = a3;
    *(a5 + 8) = 0;

    std::string::basic_string[abi:nn200100]<0>((a5 + 16), "");
  }

  else
  {
    *a5 = KB::k_invalid_likelihood_value;
    *(a5 + 8) = dword_27D9EB580;
    if (byte_27D9EB59F < 0)
    {
      v13 = *aInvalidLikelih_1;
      v14 = *&aInvalidLikelih_1[8];

      std::string::__init_copy_ctor_external((a5 + 16), v13, v14);
    }

    else
    {
      *(a5 + 16) = *aInvalidLikelih_1;
      *(a5 + 32) = *&aInvalidLikelih_1[16];
    }
  }
}

uint64_t KB::LanguageModelImplStub::register_negative_evidence(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == 1)
  {
    return (*(*result + 352))();
  }

  return result;
}

void KB::LanguageModelImplStub::decrement_usage_count(KB::LanguageModelImplStub *this, const KB::String *a2, const TITokenID *a3, const KB::LanguageModelContext *a4)
{
  std::mutex::lock((this + 224));
  if (KB::LanguageModelImplStub::is_dynamic_valid(this))
  {
    if (*a3 >> 34 >= 0x7D && *a2 != 0)
    {
      if (*(this + 169) & 1) != 0 && (v8 = *(this + 19)) != 0 && *v8 && (atomic_load_explicit(v8 + 120, memory_order_acquire))
      {
        v9 = *v8;
      }

      else
      {
        v9 = 0;
      }

      if (*(v9 + 8))
      {
        if (*(v9 + 16))
        {
          v10 = *(v9 + 16);
        }

        else
        {
          v10 = (v9 + 24);
        }
      }

      else
      {
        v10 = "";
      }

      TILexiconIDForLocaleIdentifier(v10);
      v16 = 0;
      v17 = &v16;
      v18 = 0x3002000000;
      v19 = __Block_byref_object_copy__24466;
      v20 = __Block_byref_object_dispose__24467;
      cf = 0;
      (*(*v9 + 16))(v9);
      KB::cf_string_impl<KB::String>(&v15, a2);
      v11 = v15;
      LXLexiconEnumerateEntriesForString();
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v17[5];
      if (v12)
      {
        CFRetain(v17[5]);
      }

      _Block_object_dispose(&v16, 8);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v12)
      {
        if (*(this + 169) & 1) != 0 && (v13 = *(this + 19)) != 0 && *v13 && (atomic_load_explicit((v13 + 120), memory_order_acquire))
        {
          v14 = *v13;
        }

        else
        {
          v14 = 0;
        }

        KB::MutableLexiconWrapper::increment_usage_count(v14, a2);
        CFRelease(v12);
      }
    }
  }

  std::mutex::unlock((this + 224));
}

void KB::LanguageModelImplStub::increment_usage_count(KB::LanguageModelImplStub *this, const KB::String *a2, const TITokenID *a3, const KB::LanguageModelContext *a4)
{
  std::mutex::lock((this + 224));
  if (KB::LanguageModelImplStub::is_dynamic_valid(this))
  {
    if (*a3 >> 34 >= 0x7D && *a2 != 0)
    {
      if (*(this + 169) & 1) != 0 && (v8 = *(this + 19)) != 0 && *v8 && (atomic_load_explicit((v8 + 120), memory_order_acquire))
      {
        v9 = *v8;
      }

      else
      {
        v9 = 0;
      }

      KB::MutableLexiconWrapper::increment_usage_count(v9, a2);
    }
  }

  std::mutex::unlock((this + 224));
}

uint64_t KB::LanguageModelImplStub::add_dynamic_word(KB::LanguageModelImplStub *this, const __CFString *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 224));
  v4 = (*(*this + 40))(this);
  if (KB::LanguageModelImplStub::is_dynamic_valid(this))
  {
    KB::utf8_string(a2, v11);
    if (*(this + 169) & 1) != 0 && (v5 = *(this + 19)) != 0 && *v5 && (atomic_load_explicit((v5 + 120), memory_order_acquire))
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = KB::MutableLexiconWrapper::add_entry(v6, v11);
    if (v12 && v11[6] == 1)
    {
      free(v12);
    }

    v7 = v8 << 32;
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((this + 224));
  v9 = *MEMORY[0x277D85DE8];
  return v7 | v4;
}

void KB::LanguageModelImplStub::attach_to_dynamic_resource_directory(uint64_t a1, const UInt8 *a2)
{
  std::mutex::lock((a1 + 224));
  if (KB::LanguageModelImplStub::is_dynamic_valid(a1))
  {
    if (*(a1 + 169) & 1) != 0 && (v4 = *(a1 + 152)) != 0 && *v4 && (atomic_load_explicit((v4 + 120), memory_order_acquire))
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    KB::MutableLexiconWrapper::store(v5);
  }

  v6 = *(a1 + 160);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  KB::cf_string(a2, &cf);
  v7 = cf;
  KB::retain_ptr<__CFDictionary const*>::operator=((a1 + 40), cf);
  if (v7)
  {
    CFRelease(v7);
  }

  atomic_store(0, (a1 + 168));
  *(a1 + 169) = 0;
  KB::LanguageModelImplStub::_load_if_necessary(a1);

  std::mutex::unlock((a1 + 224));
}

void KB::LanguageModelImplStub::detach_from_dynamic_resource_directory(KB::LanguageModelImplStub *this)
{
  std::mutex::lock((this + 224));
  if (KB::LanguageModelImplStub::is_dynamic_valid(this))
  {
    if (*(this + 169) & 1) != 0 && (v2 = *(this + 19)) != 0 && *v2 && (atomic_load_explicit((v2 + 120), memory_order_acquire))
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    KB::MutableLexiconWrapper::store(v3);
  }

  v4 = *(this + 20);
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::mutex::unlock((this + 224));
}

void KB::LanguageModelImplStub::load(KB::LanguageModelImplStub *this)
{
  v2 = pthread_main_np();
  if (v2)
  {
    std::mutex::lock((this + 224));
    KB::LanguageModelImplStub::_load_if_necessary(this);
    if (atomic_load_explicit(this + 169, memory_order_acquire))
    {

      std::mutex::unlock((this + 224));
    }

    else
    {
      v4.__m_ = (this + 224);
      v4.__owns_ = 1;
      KB::LanguageModelImplStub::_wait_for_load(this, &v4);
      if (v4.__owns_)
      {
        std::mutex::unlock(v4.__m_);
      }
    }
  }

  else
  {
    v3 = KB::LanguageModel::background_loading_queue(v2);
    TIDispatchSync();
  }
}

void KB::LanguageModelImplStub::active_locale_identifiers_vector(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void KB::LanguageModelImplStub::~LanguageModelImplStub(KB::LanguageModelImplStub *this)
{
  KB::LanguageModelImplStub::~LanguageModelImplStub(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDC6F0;
  KB::LanguageModelImplStub::wrapper_cache_mutex(this);
  std::mutex::lock(&KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex);
  v2 = *(this + 20);
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::mutex::unlock(&KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex);
  std::mutex::~mutex((this + 224));
  std::condition_variable::~condition_variable((this + 176));
  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *this = &unk_283FDC9A8;
  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    _Block_release(v5);
    v6 = *(this + 16);
  }

  else
  {
    v6 = 0;
  }

  *(this + 16) = 0;

  v7 = *(this + 13);
  if (v7)
  {
    *(this + 14) = v7;
    operator delete(v7);
  }

  KB::LanguageModelConfig::~LanguageModelConfig((this + 8));
}

void KB::LanguageModelImplStub::LanguageModelImplStub(KB::LanguageModelImplBase *a1, const KB::LanguageModelConfig *a2)
{
  KB::LanguageModelImplBase::LanguageModelImplBase(a1, a2);
}

{
  KB::LanguageModelImplBase::LanguageModelImplBase(a1, a2);
}

uint64_t KB::LanguageModelImplStub::lexicon_wrapper(KB::LanguageModelImplStub *this)
{
  if (*(this + 169) & 1) != 0 && (v1 = *(this + 19)) != 0 && *v1 && (atomic_load_explicit(v1 + 120, memory_order_acquire))
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t KB::LanguageModelImplStub::WrapperHandle::get(atomic_uchar *this)
{
  if (*this && (atomic_load_explicit(this + 120, memory_order_acquire) & 1) != 0)
  {
    return *this;
  }

  else
  {
    return 0;
  }
}

void KB::LanguageModelImplStub::enumerate_cached_wrappers(void *a1)
{
  v1 = a1;
  KB::LanguageModelImplStub::copy_wrapper_cache(v1, v9);
  for (i = v10; i; i = *i)
  {
    std::pair<std::string const,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>::pair[abi:nn200100](&__p, i + 1);
    if (v8)
    {
      v3 = std::__shared_weak_count::lock(v8);
      if (v3)
      {
        v4 = v3;
        v5 = v7;
        if (v7 && *v7 && (atomic_load_explicit((v7 + 120), memory_order_acquire) & 1) != 0 && *v5 && (atomic_load_explicit((v5 + 120), memory_order_acquire) & 1) != 0 && *v5)
        {
          v1[2](v1);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>>>::~__hash_table(v9);
}

void KB::LanguageModelImplStub::copy_wrapper_cache(KB::LanguageModelImplStub *this@<X0>, uint64_t a2@<X8>)
{
  KB::LanguageModelImplStub::wrapper_cache_mutex(this);
  std::mutex::lock(&KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex);
  KB::LanguageModelImplStub::wrapper_cache(v3);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = dword_280FAC928;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a2, *(&KB::LanguageModelImplStub::wrapper_cache(void)::cache + 1));
  for (i = qword_280FAC918; i; i = *i)
  {
    v5 = *(i + 16);
    v6 = *(i + 39);
    if (v6 >= 0)
    {
      v7 = (i + 16);
    }

    else
    {
      v7 = *(i + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(i + 39);
    }

    else
    {
      v8 = *(i + 24);
    }

    v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
    v10 = v9;
    v11 = *(a2 + 8);
    if (!*&v11)
    {
      goto LABEL_24;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v11)
      {
        v14 = v9 % *&v11;
      }
    }

    else
    {
      v14 = (*&v11 - 1) & v9;
    }

    v15 = *(*a2 + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v17 = v16[1];
      if (v17 == v10)
      {
        break;
      }

      if (v13 > 1)
      {
        if (v17 >= *&v11)
        {
          v17 %= *&v11;
        }
      }

      else
      {
        v17 &= *&v11 - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_24;
      }

LABEL_23:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, (i + 16)))
    {
      goto LABEL_23;
    }
  }

  std::mutex::unlock(&KB::LanguageModelImplStub::wrapper_cache_mutex(void)::mutex);
}

std::string *std::pair<std::string const,std::weak_ptr<KB::LanguageModelImplStub::WrapperHandle>>::pair[abi:nn200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t ___ZN2KB21LanguageModelImplStub19perform_maintenanceEv_block_invoke(int a1, KB::MutableLexiconWrapper *this)
{
  if (this)
  {
    return KB::MutableLexiconWrapper::store(this);
  }

  return result;
}

KB::LanguageModelImplStub::WrapperHandle *KB::LanguageModelImplStub::WrapperHandle::WrapperHandle(KB::LanguageModelImplStub::WrapperHandle *this)
{
  *this = 0;
  *(this + 1) = 850045863;
  v2 = (this + 8);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 105) = 0u;
  std::mutex::lock((this + 8));
  *(this + 120) = 0;
  std::mutex::unlock(v2);
  return this;
}

{
  *this = 0;
  *(this + 1) = 850045863;
  v2 = (this + 8);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 105) = 0u;
  std::mutex::lock((this + 8));
  *(this + 120) = 0;
  std::mutex::unlock(v2);
  return this;
}

uint64_t *TI::Favonius::Key::append_debug_data(TI::Favonius::Key *this, KB::String *a2)
{
  v3 = *(this + 2);
  if (!v3)
  {
    v3 = this + 24;
  }

  v9 = v3;
  v4 = *(this + 4);
  v10 = 0;
  v11 = v4;
  v12 = 0;
  result = KB::String::iterator::initialize(&v9);
  for (i = v12; v12; i = v12)
  {
    if (i <= 13)
    {
      switch(i)
      {
        case 4:
          v7 = a2;
          v8 = "<DISMISS>";
          goto LABEL_20;
        case 8:
          v7 = a2;
          v8 = "^H";
          goto LABEL_20;
        case 10:
          v7 = a2;
          v8 = "<RETURN>";
LABEL_20:
          KB::String::append(v7, v8, 0xFFFFuLL);
          goto LABEL_21;
      }
    }

    else
    {
      if (i <= 15)
      {
        v7 = a2;
        if (i == 14)
        {
          v8 = "<SHIFT>";
        }

        else
        {
          v8 = "<GLOBE>";
        }

        goto LABEL_20;
      }

      if (i == 16)
      {
        v7 = a2;
        v8 = "<MORE>";
        goto LABEL_20;
      }

      if (i == 9100)
      {
        v7 = a2;
        v8 = "<UNDO>";
        goto LABEL_20;
      }
    }

    KB::String::append(a2, i);
LABEL_21:
    result = KB::String::iterator::operator++(&v9);
  }

  return result;
}

atomic_uint **TI::Favonius::KeyFactory::create_key(atomic_uint **this, void *a2, unsigned int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a3;
    if (v4 <= a3)
    {
      v6 = a3 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a3;
  }

  v7 = *(a2[4] + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != a3)
  {
    goto LABEL_17;
  }

  v10 = v8[3];
  if (!v10)
  {
    KB::String::String(v14, a3);
    v11 = a2[3];
    if (v11)
    {
      (*(*v11 + 48))(&v13);
      operator new();
    }

    std::__throw_bad_function_call[abi:nn200100]();
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  *this = v10;
  atomic_fetch_add(v10, 1u);
  v12 = *MEMORY[0x277D85DE8];
  return this;
}

void *__getSBApplicationStateDisplayIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2787322B8;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
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

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBApplicationStateDisplayIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBApplicationStateDisplayIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<TITokenID>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<float>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
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
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
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

id _TILSCLanguageForInputMode(TIInputMode *a1)
{
  v1 = [(TIInputMode *)a1 normalizedIdentifier];
  v2 = TIInputModeGetLanguage();

  return v2;
}

__n128 __Block_byref_object_copy__16311(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__16312(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t KB::CandidateFilterResources::CandidateFilterResources(uint64_t a1, CFTypeRef cf, int a3, uint64_t *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8)
{
  if (cf)
  {
    v15 = CFRetain(cf);
  }

  else
  {
    v15 = 0;
  }

  *a1 = v15;
  *(a1 + 8) = a3;
  v16 = *a4;
  *a4 = 0;
  *(a1 + 16) = v16;
  *(a1 + 24) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 40) = _Block_copy(a6);
  *(a1 + 48) = a7;
  if (a8)
  {
    v17 = CFRetain(a8);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 56) = v17;
  return a1;
}

void KB::CandidateFilterResources::~CandidateFilterResources(KB::CandidateFilterResources *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v6);
  }
}

uint64_t KB::CandidateFilterResources::dictionary@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  return this;
}

uint64_t KB::CandidateFilterResources::language_model@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::debug_context_string(uint64_t a1@<X8>)
{
  *a1 = 0x100000;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::debug_hypothesis_string(TI::Favonius::ZephyrTypingModel::Hypothesis *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  TI::Favonius::ZephyrTypingModel::Hypothesis::append_debug_string(this, a2);
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::append_debug_string(TI::Favonius::ZephyrTypingModel::Hypothesis *this, KB::String *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    TI::Favonius::ZephyrTypingModel::Hypothesis::append_debug_string(v3, a2);
    if (((*(*this + 72))(this) & 1) == 0)
    {
      KB::String::append(a2, 0x7Cu);
    }

    TI::Favonius::Key::append_debug_data(*(this + 3), a2);
    if ((*(*this + 144))(this))
    {

      KB::String::append(a2, 0x23u);
    }
  }
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::append_typed_string(void *a1, KB::String *a2, void *a3, std::vector<unsigned int> *a4, std::vector<unsigned int>::value_type *a5)
{
  if (a1 == a3)
  {
    goto LABEL_5;
  }

  v7 = a2;
  if (!a3)
  {
    if (((*(*a1 + 144))(a1) & 1) == 0)
    {
      v9 = a1[4];
      a2 = v7;
      a3 = 0;
      goto LABEL_8;
    }

LABEL_5:
    if (!a5)
    {
      return;
    }

    v10 = 0;
    goto LABEL_46;
  }

  v9 = a1[4];
LABEL_8:
  TI::Favonius::ZephyrTypingModel::Hypothesis::append_typed_string(v9, a2, a3, a4, a5);
  v11 = a1[3];
  if ((*(v11 + 60) & 0x80) != 0 && (v12 = *v7, *v7))
  {
    if (*(v7 + 1))
    {
      v13 = *(v7 + 1);
    }

    else
    {
      v13 = v7 + 16;
    }

    v30 = v13;
    v31 = 0;
    v32 = v12;
    v33 = 0;
    KB::String::iterator::initialize(&v30);
    *&v26 = v13;
    DWORD2(v26) = v12;
    HIDWORD(v26) = v12;
    LODWORD(v27) = 0;
    KB::String::iterator::initialize(&v26);
    v28 = v26;
    *c = v27;
    KB::String::iterator::operator--(&v28);
    v14 = v31;
    v15 = 1;
    if (DWORD2(v28) == v31)
    {
      v14 = DWORD2(v28);
    }

    else
    {
      while (1)
      {
        TI::Favonius::KeyClassification::KeyClassification(&v26, c[0]);
        if ((v26 & 0x40) == 0)
        {
          break;
        }

        KB::String::iterator::operator--(&v28);
        ++v15;
        if (DWORD2(v28) == v14)
        {
          goto LABEL_24;
        }
      }

      v14 = DWORD2(v28);
    }

LABEL_24:
    v20 = WORD6(v28);
    if (v14 <= SHIDWORD(v28))
    {
      if (c[0] >= 0x10000u)
      {
        v21 = -4;
      }

      else
      {
        v21 = -3;
      }

      if ((c[0] - 1114112) >= 0xFFEFE000)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (c[0] >> 11 >= 0x1B)
      {
        v23 = v22;
      }

      else
      {
        v23 = -3;
      }

      if (c[0] >= 0x800u)
      {
        v24 = v23;
      }

      else
      {
        v24 = -2;
      }

      if (c[0] >= 0x80u)
      {
        v25 = v24;
      }

      else
      {
        v25 = -1;
      }

      v20 = v25 + v14;
    }

    KB::String::resize(v7, v20, 0);
    if (a4)
    {
      if (v15)
      {
        a4->__end_ -= v15;
      }
    }
  }

  else if ((*(v11 + 60) & 0xB81) == 0)
  {
    KB::String::append(v7, (v11 + 8));
    if (a4)
    {
      end = a4->__end_;
      v17 = a1[3];
      v18 = *(v17 + 12);
      if (!*(v17 + 12))
      {
        KB::String::compute_length((v17 + 8));
        v18 = *(v17 + 12);
      }

      v19.__i_ = end;
      std::vector<unsigned int>::insert(a4, v19, v18, a5);
    }
  }

  if (a5)
  {
    v10 = *a5 + 1;
LABEL_46:
    *a5 = v10;
  }
}

unint64_t TI::Favonius::ZephyrTypingModel::Hypothesis::isomorphism_hash(TI::Favonius::ZephyrTypingModel::Hypothesis *this)
{
  result = *(this + 9);
  if (!result)
  {
    v3 = 2654435769;
    v4 = (*(*this + 32))(this);
    *(this + 9) = 1;
    v5 = (*(*v4 + 16))(v4);
    v6 = *v5;
    if (*(*v5 + 16))
    {
      v7 = *(*v5 + 16);
    }

    else
    {
      v7 = (*v5 + 24);
    }

    *(this + 9) ^= (*(this + 9) << 6) + KB::String::hash(v7, *(v6 + 8)) + (*(this + 9) >> 2) + 2654435769;
    if ((*(*v4 + 72))(v4))
    {
      v8 = 2654435770;
    }

    else
    {
      v8 = 2654435769;
    }

    v9 = (v8 + (*(this + 9) << 6) + (*(this + 9) >> 2)) ^ *(this + 9);
    *(this + 9) = v9;
    v10 = v4[4];
    if (v10)
    {
      v3 = (*(*v10 + 192))(v10) + 2654435769;
      v9 = *(this + 9);
    }

    result = (v3 + (v9 << 6) + (v9 >> 2)) ^ v9;
    *(this + 9) = result;
  }

  return result;
}

BOOL TI::Favonius::ZephyrTypingModel::Hypothesis::is_isomorphic(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 32))(a1);
  for (i = (*(*a2 + 32))(a2); ; i = (*(*v12 + 32))(v12))
  {
    v5 = i;
    if (v3)
    {
      v6 = i == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return v3 == i;
    }

    result = v3 == i;
    if (v3 == v5)
    {
      return result;
    }

    v8 = *(*(*v3 + 16))(v3);
    v9 = *(*(*v5 + 16))(v5);
    if (v8 != v9)
    {
      result = KB::String::equal((v8 + 8), (v9 + 8), 1);
      if (!result)
      {
        return result;
      }
    }

    v10 = (*(*v3 + 72))(v3);
    if (v10 != (*(*v5 + 72))(v5))
    {
      break;
    }

    v11 = (**v3)(v3);
    v3 = (*(*v11 + 32))(v11);
    v12 = (**v5)(v5);
  }

  return 0;
}

BOOL TI::Favonius::ZephyrTypingModel::Hypothesis::input_segment_includes_backspace(TI::Favonius::ZephyrTypingModel::Hypothesis *this)
{
  v1 = this;
  do
  {
    v2 = this;
    v3 = (*(*v1 + 136))(v1);
    if (v2 == v3)
    {
      break;
    }

    v4 = *(*(*(*v2 + 16))(v2) + 60);
    this = (**v2)(v2);
  }

  while ((v4 & 0x80) == 0);
  return v2 != v3;
}

uint64_t TI::Favonius::ZephyrTypingModel::Hypothesis::input_segment_count(TI::Favonius::ZephyrTypingModel::Hypothesis *this)
{
  v1 = this;
  for (i = 0; (*(*v1 + 136))(v1); i = (i + 1))
  {
    if ((*(*v1 + 144))(v1))
    {
      break;
    }

    v1 = (*(*v1 + 136))(v1);
  }

  return i;
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::last_typed_input_segment(TI::Favonius::ZephyrTypingModel::Hypothesis *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  TI::Favonius::ZephyrTypingModel::Hypothesis::append_typed_string(this, a2, *(this + 6), 0, 0);
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::for_each_input_segment(uint64_t a1)
{
  if (a1)
  {
    if (((*(*a1 + 144))(a1) & 1) == 0)
    {
      operator new();
    }
  }
}

void TI::Favonius::ZephyrTypingModel::Hypothesis::typing_score(TI::Favonius::ZephyrTypingModel::Hypothesis *this)
{
  if ((*(this + 17) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v2 = *(this + 4);
    if (v2)
    {
      v3 = (*(*v2 + 96))(v2);
      v4 = v3 + logf(*(this + 16));
    }

    else
    {
      v4 = 0.0;
    }

    *(this + 17) = v4;
  }
}

uint64_t *WTF::RefPtr<TI::Favonius::Key>::~RefPtr(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v2);
  }

  return a1;
}

float TI::Favonius::ZephyrTypingModel::Hypothesis::typing_probability_of_terminator_key(TI::Favonius::ZephyrTypingModel::Hypothesis *this)
{
  v1 = *(this + 4);
  v2 = *(*(*(v1 + 40) + 24) + 60);
  result = 1.0;
  if ((v2 & 0xE) == 0)
  {
    if ((*(*(*(this + 5) + 24) + 60) & 0x20) != 0)
    {
      if ((v2 & 0x20) != 0)
      {
        v4 = *(v1 + 32);
        if (v4)
        {
          if ((*(*(*(v4 + 40) + 24) + 60) & 0xE) != 0)
          {
            result = 0.05;
          }
        }
      }
    }

    else
    {
      result = 0.0025;
    }
  }

  if ((s_interface_idiom_is_pad & 1) == 0 && *(*(this + 3) + 56) == 10)
  {
    return result * 0.005;
  }

  return result;
}

uint64_t TI::Favonius::ZephyrTypingModel::Hypothesis::input_segment_is_extended_by_key(void *a1, uint64_t a2)
{
  v2 = *(a2 + 60);
  if ((v2 & 0xE) == 0)
  {
    return (v2 & 0xBC1) != 0;
  }

  v4 = *(a1[5] + 24);
  if (*(v4 + 60) & 0xE) == 0 || ((*(*a1 + 144))(a1))
  {
    return 0;
  }

  v7 = *(a2 + 60);
  result = (*(v4 + 60) & 8) == 0 || (v7 & 8) == 0;
  if ((v7 & 8) == 0 && (*(v4 + 60) & 8) != 0)
  {
    if ((*(*a1 + 168))(a1))
    {
      v8 = *(*(*(*a1 + 136))(a1) + 168);

      return v8();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ___ZNK2TI8Favonius17ZephyrTypingModel10Hypothesis30filter_words_for_input_segmentERNSt3__16vectorIN2KB4WordENS3_9allocatorIS6_EEEE_block_invoke(uint64_t a1, KB::Word *a2)
{
  v4 = *((*(**(a1 + 32) + 8))(*(a1 + 32)) + 16);
  if (v4)
  {
    is_acceptable_for_input = (*(*v4 + 16))(v4, a2, a1 + 40);
  }

  else
  {
    v7[1] = 1;
    v7[0] = &unk_283FDCF10;
    is_acceptable_for_input = KB::InputSegmentFilter::word_is_acceptable_for_input(v7, a2, (a1 + 40));
  }

  return is_acceptable_for_input ^ 1u;
}

void __destroy_helper_block_8_40c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 46) == 1)
    {
      free(v2);
    }
  }
}

void __TIGetEnableUserWordSyncingValue_block_invoke()
{
  v0 = [MEMORY[0x277D6F470] sharedPreferencesController];
  [v0 _configureKey:@"EnableUserWordSyncing" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x277CBEC38]];
}

uint64_t TI::Favonius::CMTouchHistory::CMTouchHistory(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  *(a1 + 8) = 1;
  *a1 = &unk_283FDD1A8;
  *(a1 + 16) = *a3;
  v9 = (a1 + 16);
  *a3 = 0;
  TI::Favonius::CMTouchHistory::initialize_history_correlation((a1 + 16), a2, (a1 + 24));
  *(a1 + 48) = 0;
  TI::Favonius::CMTouchHistory::initialize_touch_interval(v9, a2);
  v11 = v10;
  *(a1 + 56) = v10;
  if ((*(*a2 + 56))(a2))
  {
    v12 = *(a2 + 64) + (v11 - *(a2 + 64)) * 0.200000003;
  }

  else
  {
    v12 = 0.35;
  }

  *(a1 + 64) = v12;
  if (a5)
  {
    v13 = *a5;
    *(a1 + 80) = *(a5 + 2);
    *(a1 + 72) = v13;
  }

  else
  {
    TI::Favonius::CMGeometryParametersForTouch::CMGeometryParametersForTouch((a1 + 72), a4, *(*v9 + 24), v12);
  }

  TI::Favonius::CMTouchHistory::initialize_key_matches(v9, a4, a1 + 72, (a1 + 88));
  TI::Favonius::CMTouchHistory::initialize_indexed_key_matches((a1 + 88), (a1 + 112));
  v14 = *(a1 + 80) * *(a1 + 80);
  v15 = v14 * 0.5 * *(a1 + 76);
  v16 = *(a1 + 64);
  v17 = *(a1 + 56) * -8.16326523 * *(a1 + 56) + -2.0;
  *(a1 + 136) = (v14 * *(a1 + 72)) + v15;
  *(a1 + 140) = v17;
  v18 = 0.15;
  v19 = 0.15;
  if (v16 >= 0.15)
  {
    v19 = v16;
    if (v16 > 0.5)
    {
      v19 = 0.5;
    }
  }

  v20 = v19 * -8.16326523 * v19 + -2.0;
  *(a1 + 144) = v20;
  is_repeated_tap_on_same_key = TI::Favonius::CMTouchHistory::is_repeated_tap_on_same_key(a1 + 88, a2);
  v22 = v16 * -8.16326523 * v16 + -3.20000005 + -1.10524082;
  if (is_repeated_tap_on_same_key)
  {
    v22 = v16 * -8.16326523 * v16 + -2.24000001;
  }

  v23 = v22;
  *(a1 + 148) = v23;
  v24 = *(a1 + 64);
  if (v24 >= 0.15)
  {
    if (v24 > 0.5)
    {
      v18 = 0.5;
    }

    else
    {
      v18 = *(a1 + 64);
    }
  }

  v25 = v18 * -8.16326523 * v18 + -3.20000005;
  *(a1 + 152) = v25;
  return a1;
}

void TI::Favonius::CMTouchHistory::initialize_history_correlation(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (a2[4] - a2[3]) >> 5;
  v7 = v6 + 1;
  if (v6 != -1)
  {
    if (!(v7 >> 59))
    {
      v81 = a3;
      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::Favonius::CMTouchHistory::TouchCorrelation>>(v7);
    }

LABEL_91:
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  if (a2[2])
  {
    v8 = a3[1];
    v9 = a3[2];
    if (v8 >= v9)
    {
      v11 = (v8 - *a3) >> 5;
      v12 = v11 + 1;
      if ((v11 + 1) >> 59)
      {
        goto LABEL_91;
      }

      v13 = v9 - *a3;
      if (v13 >> 4 > v12)
      {
        v12 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v81 = a3;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<TI::Favonius::CMTouchHistory::TouchCorrelation>>(v14);
      }

      v15 = (32 * v11);
      v10 = 32 * v11 + 32;
      *v15 = 0u;
      v15[1] = 0u;
      v16 = *a3;
      v17 = a3[1];
      v18 = (v15 + *a3 - v17);
      if (*a3 != v17)
      {
        v19 = *a3;
        v20 = v18;
        do
        {
          v21 = *v19;
          *v19 = 0;
          v19[1] = 0;
          *v20 = v21;
          v20[1] = *(v19 + 1);
          v19 += 4;
          v20 += 2;
        }

        while (v19 != v17);
        do
        {
          std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(v16);
          v16 += 4;
        }

        while (v16 != v17);
      }

      v22 = *a3;
      *a3 = v18;
      a3[1] = v10;
      v23 = a3[2];
      a3[2] = 0;
      *&v80 = v22;
      *(&v80 + 1) = v23;
      v78 = v22;
      v79 = v22;
      std::__split_buffer<TI::Favonius::CMTouchHistory::TouchCorrelation>::~__split_buffer(&v78);
    }

    else
    {
      v10 = (v8 + 2);
      *v8 = 0u;
      v8[1] = 0u;
    }

    a3[1] = v10;
    v24 = a2[2];
    if (v24)
    {
      atomic_fetch_add(v24, 1u);
    }

    v25 = *(v10 - 32);
    *(v10 - 32) = v24;
    if (v25)
    {
      WTF::RefCounted<TI::Favonius::Touch>::deref(v25);
    }

    v26 = a3[1];
    v27 = a2[6];
    if (v27)
    {
      atomic_fetch_add(v27, 1u);
    }

    v28 = *(v26 - 24);
    *(v26 - 24) = v27;
    if (v28)
    {
      WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v28);
    }
  }

  v29 = a3[1];
  v31 = a2[3];
  v30 = a2[4];
  v32 = v30 - v31;
  v33 = (v30 - v31) >> 5;
  if (v33 >= 1)
  {
    v34 = a3[2];
    if (v34 - v29 >= v32)
    {
      for (; v31 != v30; v29 += 4)
      {
        v40 = *v31;
        *v29 = *v31;
        if (v40)
        {
          atomic_fetch_add(v40, 1u);
        }

        v41 = *(v31 + 8);
        v29[1] = v41;
        if (v41)
        {
          atomic_fetch_add(v41, 1u);
        }

        *(v29 + 1) = *(v31 + 16);
        v31 += 32;
      }

      a3[1] = v29;
    }

    else
    {
      v35 = v29 - *a3;
      v36 = v33 + (v35 >> 5);
      if (v36 >> 59)
      {
        goto LABEL_91;
      }

      v37 = v35 >> 5;
      v38 = v34 - *a3;
      if (v38 >> 4 > v36)
      {
        v36 = v38 >> 4;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFE0)
      {
        v39 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v36;
      }

      v81 = a3;
      if (v39)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<TI::Favonius::CMTouchHistory::TouchCorrelation>>(v39);
      }

      v42 = 32 * v37;
      v78 = 0;
      v79 = 32 * v37;
      v80 = (32 * v37);
      v43 = (32 * v37 + v32);
      do
      {
        v44 = *v31;
        *v42 = *v31;
        if (v44)
        {
          atomic_fetch_add(v44, 1u);
        }

        v45 = *(v31 + 8);
        *(v42 + 8) = v45;
        if (v45)
        {
          atomic_fetch_add(v45, 1u);
        }

        *(v42 + 16) = *(v31 + 16);
        v42 += 32;
        v31 += 32;
      }

      while (v42 != v43);
      *&v80 = 32 * v37 + v32;
      v46 = a3[1];
      if (v29 != v46)
      {
        v47 = v29;
        do
        {
          v48 = *v47;
          *v47 = 0;
          v47[1] = 0;
          *v43 = v48;
          v43[1] = *(v47 + 1);
          v47 += 4;
          v43 += 2;
        }

        while (v47 != v46);
        v49 = v29;
        do
        {
          std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(v49);
          v49 += 4;
        }

        while (v49 != v46);
      }

      v50 = *a3;
      v51 = v79;
      *&v80 = v80 + a3[1] - v29;
      a3[1] = v29;
      v52 = (v51 + v50 - v29);
      if (v50 != v29)
      {
        v53 = v50;
        v54 = (v51 + v50 - v29);
        do
        {
          v55 = *v53;
          *v53 = 0;
          v53[1] = 0;
          *v54 = v55;
          v54[1] = *(v53 + 1);
          v53 += 4;
          v54 += 2;
        }

        while (v53 != v29);
        do
        {
          std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(v50);
          v50 += 4;
        }

        while (v50 != v29);
      }

      v56 = *a3;
      *a3 = v52;
      v57 = a3[2];
      *(a3 + 1) = v80;
      *&v80 = v56;
      *(&v80 + 1) = v57;
      v78 = v56;
      v79 = v56;
      std::__split_buffer<TI::Favonius::CMTouchHistory::TouchCorrelation>::~__split_buffer(&v78);
      v29 = a3[1];
    }
  }

  v58 = *a3;
  v59 = v29 - *a3;
  if (v59 >= 0x401)
  {
    if ((v59 >> 5) > 0x1F)
    {
      v65 = v58 + 128;
      while (v29 != v65)
      {
        v29 -= 4;
        std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(v29);
      }
    }

    else
    {
      v60 = 32 - (v59 >> 5);
      v61 = a3[2];
      if (v60 > (v61 - v29) >> 5)
      {
        v81 = a3;
        v62 = v61 - v58;
        v63 = v62 >> 4;
        if ((v62 >> 4) <= 0x20)
        {
          v63 = 32;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFE0)
        {
          v64 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v63;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<TI::Favonius::CMTouchHistory::TouchCorrelation>>(v64);
      }

      bzero(v29, 32 * v60);
      v65 = &v29[4 * v60];
    }

    a3[1] = v65;
    v58 = *a3;
    v29 = v65;
  }

  if (v58 != v29)
  {
    for (i = v29 - 4; *(*a1 + 32) - *(*(v29 - 4) + 32) > 40.0; i = v29 - 4)
    {
      v29 = i;
      std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(i);
      a3[1] = v29;
      v58 = *a3;
      if (v29 == *a3)
      {
        break;
      }
    }
  }

  if (v58 != v29)
  {
    do
    {
      v67 = *v58;
      v68 = *a1;
      v69 = *(*a1 + 32) - *(*v58 + 32);
      v70 = 0.0;
      if (v69 <= 40.0)
      {
        v70 = (40.0 - v69) / 40.0;
      }

      v71 = *(v68 + 24);
      v72 = *(v67 + 24);
      if (v71 >= v72)
      {
        v73 = *(v68 + 24);
      }

      else
      {
        v73 = *(v67 + 24);
      }

      v74 = 0.0;
      if (v73 > 0.0)
      {
        if (v71 >= v72)
        {
          v71 = *(v67 + 24);
        }

        v74 = ((v73 - v71) / v73);
      }

      v75 = 1.0 - v74;
      v76 = (v70 * v75);
      v58[2] = TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(v67, v68) * v76;
      v58[3] = v77 * v76;
      v58 += 4;
    }

    while (v58 != a3[1]);
  }
}

uint64_t TI::Favonius::CMTouchHistory::initialize_touch_interval(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 56))(a2);
  if (result)
  {
    v5 = *(*a1 + 32);
    result = (*(*a2 + 56))(a2);
    *(result + 32);
  }

  return result;
}

void *TI::Favonius::CMTouchHistory::initialize_key_matches@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = __Block_byref_object_copy__17698;
  v35 = __Block_byref_object_dispose__17699;
  memset(v36, 0, sizeof(v36));
  v8 = *a1;
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(v36, ((*(*(*a1 + 56) + 16) - *(*(*a1 + 56) + 8)) >> 3));
  v9 = *(v8 + 56);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v25 = ___ZN2TI8Favonius14CMTouchHistory22initialize_key_matchesERKN3WTF6RefPtrINS0_5TouchEEERKNS0_20CMGeometryParametersERKNS0_28CMGeometryParametersForTouchE_block_invoke;
  v26 = &unk_278732898;
  v29 = a2;
  v30 = a3;
  v27 = &v31;
  v28 = a1;
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  while (v10 != v11)
  {
    v25(v24, v10++);
  }

  v13 = v32[5];
  v12 = v32[6];
  v37 = &__block_literal_global_17701;
  v14 = 126 - 2 * __clz(v13);
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(WTF::RefPtr<TI::Favonius::KeyMatch> const&,WTF::RefPtr<TI::Favonius::KeyMatch> const&),WTF::RefPtr<TI::Favonius::KeyMatch>*,false>(v12, (v12 + 8 * v13), &v37, v15, 1);
  v16 = v32;
  v17 = v32[5];
  if (v17 >= 0xE)
  {
    v18 = v32[6];
    v19 = (v18 + 104);
    v20 = (v18 + 8 * v17);
    v21 = 8 * v17 - 104;
    v22 = (v18 + 104);
    do
    {
      if (*v22)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(*v22);
      }

      ++v22;
      v21 -= 8;
    }

    while (v21);
    memmove(v19, v20, v16[6] + 8 * v16[5] - v20);
    v16[5] = v16[5] - v17 + 13;
    v16 = v32;
  }

  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::Vector(a4, v16 + 5);
  _Block_object_dispose(&v31, 8);
  return WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(v36);
}

void *TI::Favonius::CMTouchHistory::initialize_indexed_key_matches@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*result)
  {
    v3 = result;
    v4 = 0;
    for (i = result[1]; i != (v3[1] + 8 * *v3); ++i)
    {
      v6 = *i;
      v7 = *(*(*i + 1) + 62);
      if (v4 <= v7)
      {
        v9 = v7 + 1;
        if (v4 >= v7 + 1)
        {
          v13 = a2[1];
          if (v4 != v7 + 1)
          {
            v14 = 8 * v4;
            v15 = 8 * v7 + 8;
            do
            {
              v16 = *(v13 + v15);
              if (v16)
              {
                WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v16);
              }

              v15 += 8;
            }

            while (v14 != v15);
          }
        }

        else
        {
          v10 = a2[2];
          if (v10 < v9)
          {
            if (v10 >= 0x100)
            {
              v11 = v10 + (v10 >> 1);
            }

            else
            {
              v11 = 2 * v10;
            }

            if (v11 <= v9)
            {
              v12 = v7 + 1;
            }

            else
            {
              v12 = v11;
            }

            WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::reserveCapacity(a2, v12);
          }

          v13 = a2[1];
          if (v13)
          {
            bzero((v13 + 8 * *a2), 8 * (v9 - *a2));
          }
        }

        *a2 = v9;
        v6 = *i;
        v8 = (v13 + 8 * v7);
        if (!*i)
        {
          v4 = v7 + 1;
          goto LABEL_23;
        }
      }

      else
      {
        v8 = (a2[1] + 8 * v7);
      }

      atomic_fetch_add(v6, 1u);
      v4 = *a2;
LABEL_23:
      result = *v8;
      *v8 = v6;
      if (result)
      {
        result = WTF::RefCounted<TI::Favonius::KeyMatch>::deref(result);
      }
    }
  }

  return result;
}

BOOL TI::Favonius::CMTouchHistory::is_repeated_tap_on_same_key(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(*(*a2 + 64))(a2) || *a1 == 0)
  {
    return 0;
  }

  v6 = *(**((*(*a2 + 64))(a2) + 8) + 8);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  v7 = *(**(a1 + 8) + 8);
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  if (*(v7 + 62) == *(v6 + 62))
  {
    v5 = v7 == v6 || KB::String::equal((v7 + 8), (v6 + 8), 1);
  }

  else
  {
    v5 = 0;
  }

  WTF::RefCounted<TI::Favonius::Key>::deref(v7);
  WTF::RefCounted<TI::Favonius::Key>::deref(v6);
  return v5;
}

__n128 __Block_byref_object_copy__17698(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[1] = 0;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = 0;
  result = a1[3];
  a1[3] = a2[3];
  a2[3] = result;
  return result;
}

void ___ZN2TI8Favonius14CMTouchHistory22initialize_key_matchesERKN3WTF6RefPtrINS0_5TouchEEERKNS0_20CMGeometryParametersERKNS0_28CMGeometryParametersForTouchE_block_invoke(uint64_t a1, CGRect **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = **(a1 + 40);
  v4 = *(v3 + 8) - (*a2)[3].origin.x;
  v5 = *(v3 + 16) - (*a2)[3].origin.y;
  Width = CGRectGetWidth((*a2)[2]);
  v7 = Width * 0.5;
  v8 = *(*(a1 + 48) + 4);
  if (v7 <= v8)
  {
    v11 = v4;
  }

  else
  {
    v9 = v7 - v8;
    v10 = v9;
    if (v4 <= v9)
    {
      v11 = 0.0;
      if (v4 < -v9)
      {
        v11 = v4 + v10;
      }
    }

    else
    {
      v11 = v4 - v10;
    }
  }

  v12 = v5 * v5 + v11 * v11;
  v13 = **(a1 + 56) * v12;
  v14 = *(*(a1 + 32) + 8);
  operator new();
}

uint64_t std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v2);
  }

  result = *a1;
  if (*a1)
  {

    return WTF::RefCounted<TI::Favonius::Touch>::deref(result);
  }

  return result;
}

double TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16) - *(a1 + 16);
  v3 = fabsf(v2);
  v4 = vabdd_f64(*(a2 + 8), *(a1 + 8)) + v3 * 0.6;
  {
    v29 = a2;
    v31 = a1;
    a2 = v29;
    a1 = v31;
    if (v15)
    {
      v16 = 31.5;
      if (s_interface_idiom_is_pad)
      {
        v16 = 26.5;
      }

      TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::min_sep_x = LODWORD(v16);
      a2 = v29;
      a1 = v31;
    }
  }

  v5 = v4;
  {
    v30 = a2;
    v32 = a1;
    v17 = v4;
    v5 = v17;
    v19 = v18;
    a2 = v30;
    a1 = v32;
    if (v19)
    {
      v20 = 220.5;
      if (s_interface_idiom_is_pad)
      {
        v20 = 185.5;
      }

      TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_sep_x = LODWORD(v20);
      v5 = v17;
      a2 = v30;
      a1 = v32;
    }
  }

  v6 = 1.0;
  if (*&TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::min_sep_x <= v5)
  {
    v6 = 0.0;
    if (*&TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_sep_x > v5)
    {
      v6 = ((*&TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_sep_x - v5) / (*&TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_sep_x - *&TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::min_sep_x));
    }
  }

  if (*(*(a2 + 56) + 112) == 1)
  {
    v7 = *(a2 + 52);
    if (v7 && (v8 = *(a1 + 52)) != 0)
    {
      if (v7 != v8)
      {
        v6 = v6 * 0.5;
      }
    }

    else
    {
      v9 = (*(a1 + 8) + *(a2 + 8)) * -0.5;
      v10 = TI::Favonius::KeyboardLayout::get_horizontal_center(*(a2 + 56)) + v9;
      v11 = &unk_27D9ED000;
      {
        v33 = v10;
        v10 = v33;
        v11 = &unk_27D9ED000;
        if (v25)
        {
          v26 = 63.0;
          if (s_interface_idiom_is_pad)
          {
            v26 = 53.0;
          }

          TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::min_center_distance = LODWORD(v26);
          v10 = v33;
          v11 = &unk_27D9ED000;
        }
      }

      v12 = fabsf(v10);
      {
        v34 = v12;
        v12 = v34;
        v11 = &unk_27D9ED000;
        if (v27)
        {
          v28 = 126.0;
          if (s_interface_idiom_is_pad)
          {
            v28 = 106.0;
          }

          TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_center_distance = LODWORD(v28);
          v12 = v34;
          v11 = &unk_27D9ED000;
        }
      }

      if (v12 < v11[500])
      {
        v6 = v6 * ((v12 / *&TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_center_distance) + 0.5);
      }
    }
  }

  p_cache = TICoreAnalyticsEventDispatcher.cache;
  {
    p_cache = TICoreAnalyticsEventDispatcher.cache;
    if (v21)
    {
      v22 = 31.5;
      if (s_interface_idiom_is_pad)
      {
        v22 = 26.5;
      }

      TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::min_sep_y = LODWORD(v22);
      p_cache = (TICoreAnalyticsEventDispatcher + 16);
    }
  }

  {
    p_cache = (TICoreAnalyticsEventDispatcher + 16);
    if (v23)
    {
      v24 = 157.5;
      if (s_interface_idiom_is_pad)
      {
        v24 = 132.5;
      }

      TI::Favonius::CMTouchHistory::estimate_inter_finger_zone_correlation(TI::Favonius::Touch const*,TI::Favonius::Touch const*)::max_sep_y = LODWORD(v24);
      p_cache = (TICoreAnalyticsEventDispatcher + 16);
    }
  }

  *(p_cache + 528);
  return v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TI::Favonius::CMTouchHistory::TouchCorrelation>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<TI::Favonius::CMTouchHistory::TouchCorrelation>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int16 *TI::Favonius::CMTouchHistory::append_debug_data(TI::Favonius::CMTouchHistory *this, KB::String *a2)
{
  KB::String::append(a2, "TOUCH INTERVAL: ", 0xFFFFuLL);
  v4 = *(this + 7);
  KB::String::append_format(a2, "%.2f", v4);
  KB::String::append(a2, " (average: ", 0xFFFFuLL);
  v5 = *(this + 8);
  KB::String::append_format(a2, "%.2f", v5);
  KB::String::append(a2, ")\n", 0xFFFFuLL);
  KB::String::append(a2, "TOUCH at (", 0xFFFFuLL);
  v6 = *(*(this + 2) + 8);
  KB::String::append_format(a2, "%.2f", v6);
  KB::String::append(a2, ",", 0xFFFFuLL);
  v7 = *(*(this + 2) + 16);
  KB::String::append_format(a2, "%.2f", v7);
  KB::String::append(a2, ") at time ", 0xFFFFuLL);
  v8 = *(*(this + 2) + 32);
  KB::String::append_format(a2, "%.2f", v8);
  KB::String::append(a2, " with radius ", 0xFFFFuLL);
  KB::String::append_format(a2, "%.2f", *(*(this + 2) + 24));
  KB::String::append(a2, "\n", 0xFFFFuLL);
  KB::String::append(a2, "\tPRUNING THRESHOLD: ", 0xFFFFuLL);
  v9 = (*(*this + 16))(this);
  KB::String::append_format(a2, "%.2f", v9);
  KB::String::append(a2, "\n\tTRANSPOSITION COST: ", 0xFFFFuLL);
  v10 = (*(*this + 24))(this);
  KB::String::append_format(a2, "%.2f", v10);
  KB::String::append(a2, "\n\tINSERTION COST: ", 0xFFFFuLL);
  v11 = (*(*this + 32))(this);
  KB::String::append_format(a2, "%.2f", v11);
  KB::String::append(a2, "\n\tDELETION COST: ", 0xFFFFuLL);
  v12 = (*(*this + 40))(this);
  KB::String::append_format(a2, "%.2f", v12);
  KB::String::append(a2, "\n", 0xFFFFuLL);
  result = KB::String::append(a2, "KEYS NEAR TOUCH:\n", 0xFFFFuLL);
  if (*(this + 11))
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *(this + 12);
      TI::Favonius::Key::append_debug_data(*(*(v16 + 8 * v14) + 8), a2);
      result = KB::String::append_format(a2, ": %7.3f (%6.1f,%6.1f)\n", *(*(v16 + 8 * v14) + 32), *(*(v16 + 8 * v14) + 16), *(*(v16 + 8 * v14) + 24));
      v14 = v15;
    }

    while (*(this + 11) > v15++);
  }

  return result;
}

void TI::Favonius::CMTouchHistory::root_hypothesis(atomic_uint *this)
{
  if (this)
  {
    atomic_fetch_add(this + 2, 1u);
  }

  operator new();
}

uint64_t TI::Favonius::CMTouchHistory::CMTouchHistory(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 8) = 1;
  *a1 = &unk_283FDD1A8;
  v6 = *(a2 + 16);
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = v8 - v7;
  if (v8 != v7)
  {
    if (!((v9 >> 5) >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::Favonius::CMTouchHistory::TouchCorrelation>>(v9 >> 5);
    }

    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v10 = *(a2 + 48);
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add(v10, 1u);
  }

  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v11;
  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::Vector((a1 + 88), (a2 + 88));
  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::Vector((a1 + 112), (a2 + 112));
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  v12 = *a3;
  if (v12)
  {
    v13 = (*(*v12 + 24))(v12);
    if (*(a1 + 16) == (*(*v13 + 56))(v13))
    {
      v14 = (*(*v12 + 32))(v12);
      if (v14)
      {
        atomic_fetch_add(v14, 1u);
      }

      v15 = *(a1 + 48);
      *(a1 + 48) = v14;
      if (v15)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v15);
      }

      v16 = (*(*v12 + 40))(v12);
      if (!v16)
      {
        return a1;
      }

      v12 = v16;
    }

    v17 = *(a1 + 24);
    v18 = MEMORY[0x277D85DD0];
    do
    {
      v19 = *(a1 + 32);
      v23[0] = v18;
      v23[1] = 0x40000000;
      v24 = ___ZN2TI8Favonius14CMTouchHistoryC2EPKS1_N3WTF10PassRefPtrINS0_18GeometryHypothesisEEE_block_invoke;
      v25 = &__block_descriptor_tmp_17722;
      v26 = v12;
      if (v17 != v19)
      {
        while (((v24)(v23, v17) & 1) == 0)
        {
          v17 += 32;
          if (v17 == v19)
          {
            v17 = v19;
            break;
          }
        }

        v19 = *(a1 + 32);
      }

      if (v17 == v19)
      {
        break;
      }

      v20 = (*(*v12 + 32))(v12);
      if (v20)
      {
        atomic_fetch_add(v20, 1u);
      }

      v21 = *(v17 + 8);
      *(v17 + 8) = v20;
      if (v21)
      {
        WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v21);
      }

      v12 = (*(*v12 + 40))(v12);
    }

    while (v12);
  }

  return a1;
}

uint64_t TI::Favonius::CMTouchHistory::history_by_appending_touch@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  (*(*a1 + 112))(&v8);
  result = v7;
  v6 = v8;
  v8 = 0;
  *a3 = v6;
  if (result)
  {
    return WTF::RefCounted<TI::Favonius::Touch>::deref(result);
  }

  return result;
}

uint64_t TI::Favonius::CMTouchHistory::nearby_key_with_key_code(TI::Favonius::CMTouchHistory *this, int a2)
{
  if (*(this + 14) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 15) + 8 * a2);
  }
}

void TI::Favonius::CMTouchHistory::~CMTouchHistory(TI::Favonius::CMTouchHistory *this)
{
  TI::Favonius::CMTouchHistory::~CMTouchHistory(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDD1A8;
  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(this + 14);
  WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(this + 11);
  v2 = *(this + 6);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 4);
    v5 = *(this + 3);
    if (v4 != v3)
    {
      do
      {
        v4 -= 4;
        std::__destroy_at[abi:nn200100]<TI::Favonius::CMTouchHistory::TouchCorrelation,0>(v4);
      }

      while (v4 != v3);
      v5 = *(this + 3);
    }

    *(this + 4) = v3;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    WTF::RefCounted<TI::Favonius::Touch>::deref(v6);
  }
}

double TI::Favonius::CMTouchHistory::CMTouchHistory(TI::Favonius::CMTouchHistory *this)
{
  *(this + 2) = 1;
  *this = &unk_283FDD1A8;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 56) = xmmword_22CC88BB0;
  *(this + 9) = 0x7F0000007FLL;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 140) = 0x7F0000007FLL;
  *(this + 37) = -8388608;
  return result;
}

{
  *(this + 2) = 1;
  *this = &unk_283FDD1A8;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 56) = xmmword_22CC88BB0;
  *(this + 9) = 0x7F0000007FLL;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 140) = 0x7F0000007FLL;
  *(this + 37) = -8388608;
  return result;
}

uint64_t TI::Favonius::CMTouchHistory::initialize_average_touch_interval(TI::Favonius::CMTouchHistory *this, double a2, const TI::Favonius::CMTouchHistory *a3)
{
  result = (*(*this + 56))(this, a3);
  if (result)
  {
    v6 = *(this + 8) + (a2 - *(this + 8)) * 0.200000003;
  }

  return result;
}

float TI::Favonius::CMTouchHistory::initialize_pruning_threshold(float *a1)
{
  v1 = a1[2] * a1[2];
  v2 = v1 * *a1;
  v3 = v1 * 0.5 * a1[1];
  return v2 + v3;
}

float TI::Favonius::CMTouchHistory::initialize_insertion_cost(TI::Favonius::CMTouchHistory *this, double a2)
{
  v2 = 0.15;
  if (a2 >= 0.15)
  {
    v2 = 0.5;
    if (a2 <= 0.5)
    {
      v2 = a2;
    }
  }

  return v2 * -8.16326523 * v2 + -2.0;
}

float TI::Favonius::CMTouchHistory::initialize_deletion_cost(uint64_t a1, uint64_t a2, double a3, double a4)
{
  is_repeated_tap_on_same_key = TI::Favonius::CMTouchHistory::is_repeated_tap_on_same_key(a1, a2);
  v6 = a4 * -8.16326523 * a4 + -3.20000005 + -1.10524082;
  if (is_repeated_tap_on_same_key)
  {
    return a4 * -8.16326523 * a4 + -2.24000001;
  }

  return v6;
}

float TI::Favonius::CMTouchHistory::initialize_substitution_cost(TI::Favonius::CMTouchHistory *this, double a2)
{
  v2 = 0.15;
  if (a2 >= 0.15)
  {
    v2 = 0.5;
    if (a2 <= 0.5)
    {
      v2 = a2;
    }
  }

  return v2 * -8.16326523 * v2 + -3.20000005;
}

float TI::Favonius::CMTouchHistory::initialize_geometry_parameters_for_touch(uint64_t a1, double *a2, uint64_t a3)
{
  TI::Favonius::CMTouchHistory::initialize_touch_interval(a1, a2);
  v7 = v6;
  if ((*(*a2 + 56))(a2))
  {
    v8 = a2[8] + (v7 - a2[8]) * 0.200000003;
  }

  else
  {
    v8 = 0.35;
  }

  TI::Favonius::CMGeometryParametersForTouch::CMGeometryParametersForTouch(&v10, a3, *(*a1 + 24), v8);
  return v10;
}

uint64_t AppTrieLoaderImpl::handle@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AppTrieLoaderImpl::~AppTrieLoaderImpl(AppTrieLoaderImpl *this)
{
  AppTrieLoaderImpl::~AppTrieLoaderImpl(this);

  JUMPOUT(0x2318BE270);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = TIPersonalizationAppNamesOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Removing contact observer for app names", "~AppTrieLoaderImpl"];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v4 = +[TITransientLexiconManager sharedInstance];
  [v4 removeContactObserver:*(this + 6)];

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 5) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void std::__shared_ptr_emplace<KB::LexiconHandle>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
}

void std::__shared_ptr_emplace<KB::LexiconHandle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283FDE458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

void ___ZN17AppTrieLoaderImpl22app_name_loading_queueEv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.appNameLoading", v2);
  v1 = AppTrieLoaderImpl::app_name_loading_queue(void)::queue;
  AppTrieLoaderImpl::app_name_loading_queue(void)::queue = v0;
}

void ___ZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v9 = *MEMORY[0x277D23168];
        KB::cf_string_impl<KB::String>(&value, (a1 + 48));
        v10 = value;
        CFDictionaryAddValue(Mutable, v9, value);
        if (v10)
        {
          CFRelease(v10);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], @"TextInput-AppNames");
        Transient = LXLexiconCreateTransient();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (Transient)
        {
          v12 = TIPersonalizationAppNamesOSLogFacility();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Installing app lexicon on main thread", "register_as_contact_observer_block_invoke"];
            LODWORD(value) = 138412290;
            *(&value + 4) = v13;
            _os_log_impl(&dword_22CA55000, v12, OS_LOG_TYPE_INFO, "%@", &value, 0xCu);
          }

          v24 = MEMORY[0x277D85DD0];
          v25 = 3321888768;
          v26 = ___ZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke_19;
          v27 = &__block_descriptor_152_a8_32c85_ZTSKZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0_e5_v8__0l;
          *&value = v7;
          *(&value + 1) = v6;
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          CFRetain(Transient);
          v17 = Transient;
          KB::String::String(v18, (a1 + 48));
          KB::String::String(v20, (a1 + 80));
          KB::String::String(v22, (a1 + 112));
          v28 = value;
          if (*(&value + 1))
          {
            atomic_fetch_add_explicit((*(&value + 1) + 16), 1uLL, memory_order_relaxed);
          }

          v14 = v17;
          v29 = v17;
          if (v17)
          {
            CFRetain(v17);
            v29 = v14;
          }

          KB::String::String(v30, v18);
          KB::String::String(v32, v20);
          KB::String::String(v34, v22);
          TIDispatchAsync();
          if (v23 && v22[6] == 1)
          {
            free(v23);
          }

          if (v21 && v20[6] == 1)
          {
            free(v21);
          }

          if (v19 && v18[6] == 1)
          {
            free(v19);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          v17 = 0;
          if (*(&value + 1))
          {
            std::__shared_weak_count::__release_weak(*(&value + 1));
          }

          if (v35 && v34[6] == 1)
          {
            free(v35);
          }

          if (v33 && v32[6] == 1)
          {
            free(v33);
          }

          if (v31 && v30[6] == 1)
          {
            free(v31);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          v29 = 0;
          if (*(&v28 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v28 + 1));
          }

          CFRelease(Transient);
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c42_ZTSNSt3__18weak_ptrI17AppTrieLoaderImplEE48c17_ZTSKN2KB6StringE80c17_ZTSKN2KB6StringE112c17_ZTSKN2KB6StringE(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 && *(a1 + 118) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 88);
  if (v3 && *(a1 + 86) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 54) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

KB::String *__copy_helper_block_a8_32c42_ZTSNSt3__18weak_ptrI17AppTrieLoaderImplEE48c17_ZTSKN2KB6StringE80c17_ZTSKN2KB6StringE112c17_ZTSKN2KB6StringE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  KB::String::String((a1 + 6), (a2 + 6));
  KB::String::String((a1 + 10), (a2 + 10));

  return KB::String::String((a1 + 14), (a2 + 14));
}

void ___ZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1__block_invoke_19(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *(a1 + 48);
        if (v6)
        {
          CFRetain(*(a1 + 48));
          LXLexiconRepositoryAddOrUpdate();
          KB::retain_ptr<_LXLexicon *>::operator=((v5 + 40), v6);
          CFRelease(v6);
        }

        else
        {
          LXLexiconRepositoryAddOrUpdate();
          v7 = *(v5 + 40);
          if (v7)
          {
            CFRelease(v7);
            *(v5 + 40) = 0;
          }
        }

        if (AppTrieLoaderImpl::app_name_loading_queue(void)::once_token != -1)
        {
          dispatch_once(&AppTrieLoaderImpl::app_name_loading_queue(void)::once_token, &__block_literal_global_17761);
        }

        v8 = AppTrieLoaderImpl::app_name_loading_queue(void)::queue;
        v19 = MEMORY[0x277D85DD0];
        v20 = 3321888768;
        v21 = ___ZZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_ENK3__0clEv_block_invoke;
        v22 = &__block_descriptor_152_a8_32c98_ZTSKZZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_ENK3__0clEvEUlvE__e5_v8__0l;
        v11 = v5;
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 48);
        cf = v9;
        if (v9)
        {
          CFRetain(v9);
          cf = v9;
        }

        KB::String::String(v13, (a1 + 56));
        KB::String::String(v15, (a1 + 88));
        KB::String::String(v17, (a1 + 120));
        v23 = v11;
        v24 = v4;
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v25 = cf;
        if (cf)
        {
          CFRetain(cf);
          v25 = cf;
        }

        KB::String::String(v26, v13);
        KB::String::String(v28, v15);
        KB::String::String(v30, v17);
        TIDispatchAsync();
        if (v18 && v17[6] == 1)
        {
          free(v18);
        }

        if (v16 && v15[6] == 1)
        {
          free(v16);
        }

        if (v14 && v13[6] == 1)
        {
          free(v14);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        std::__shared_weak_count::__release_weak(v4);

        if (v31 && v30[6] == 1)
        {
          free(v31);
        }

        if (v29 && v28[6] == 1)
        {
          free(v29);
        }

        if (v27 && v26[6] == 1)
        {
          free(v27);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        v25 = 0;
        if (v24)
        {
          std::__shared_weak_count::__release_weak(v24);
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c85_ZTSKZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 && *(a1 + 126) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 96);
  if (v3 && *(a1 + 94) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 64);
  if (v4 && *(a1 + 62) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 48) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

KB::String *__copy_helper_block_a8_32c85_ZTSKZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_E3__0(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    CFRetain(v5);
    a1[6] = v5;
  }

  KB::String::String((a1 + 7), (a2 + 7));
  KB::String::String((a1 + 11), (a2 + 11));

  return KB::String::String((a1 + 15), (a2 + 15));
}

CFTypeRef *KB::retain_ptr<_LXLexicon *>::operator=(CFTypeRef *a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);
    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = cf;
  }

  return a1;
}

void ___ZZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_ENK3__0clEv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        v4 = TIPersonalizationAppNamesOSLogFacility();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Adding app names to app lexicon", "operator()"];
          buf = 138412290;
          *buf_4 = v5;
          _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
        }

        KB::StaticDictionary::create(v6);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c98_ZTSKZZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_ENK3__0clEvEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 && *(a1 + 126) == 1)
  {
    free(v2);
  }

  v3 = *(a1 + 96);
  if (v3 && *(a1 + 94) == 1)
  {
    free(v3);
  }

  v4 = *(a1 + 64);
  if (v4 && *(a1 + 62) == 1)
  {
    free(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 48) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

KB::String *__copy_helper_block_a8_32c98_ZTSKZZZN17AppTrieLoaderImpl28register_as_contact_observerEN2KB6StringES1_S1_EUb_ENK3__0clEvEUlvE_(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  a1[6] = v5;
  if (v5)
  {
    CFRetain(v5);
    a1[6] = v5;
  }

  KB::String::String((a1 + 7), (a2 + 7));
  KB::String::String((a1 + 11), (a2 + 11));

  return KB::String::String((a1 + 15), (a2 + 15));
}

void ___ZL27background_append_app_namesN2KB10retain_ptrIP10_LXLexiconEERKNS_16StaticDictionaryE_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIPersonalizationAppNamesOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s AppName=%@", "background_append_app_names_block_invoke", v3];
    *buf = 138412290;
    *v19 = v13;
    _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v3;
  if ([(__CFString *)v7 length])
  {
    *v19 = 0;
    v19[2] = 0;
    *&v19[4] = " ,:;";
    *buf = 1048580;
    v20 = 0;
    KB::utf8_string(v7, &v16);
    KB::sbs_string_tokenize(&v16, buf, v14);
    v8 = v14[0];
    v9 = v14[1];
    while (v8 != v9)
    {
      v10 = v8[2];
      if (!v8[2])
      {
        KB::String::compute_length(v8);
        v10 = v8[2];
      }

      if (v10 >= 3 && !KB::StaticDictionary::contains(v6, v8, 2, 0.0))
      {
        KB::cf_string_impl<KB::String>(&v15, v8);
        v11 = v15;
        if (LXLexiconAdd())
        {
          LXLexiconIncrementUsageCount();
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }

      v8 += 16;
    }

    v15 = v14;
    std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v15);
    if (v17 && BYTE6(v16) == 1)
    {
      free(v17);
    }

    if (*&v19[4] && v19[2] == 1)
    {
      free(*&v19[4]);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __destroy_helper_block_a8_32c36_ZTSN2KB10retain_ptrIP10_LXLexiconEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
}

void *__copy_helper_block_a8_32c36_ZTSN2KB10retain_ptrIP10_LXLexiconEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    v3 = result;
    result = CFRetain(v2);
    v3[4] = v2;
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AppTrieLoaderStub *,std::shared_ptr<AppTrieLoaderStub>::__shared_ptr_default_delete<AppTrieLoaderStub,AppTrieLoaderStub>,std::allocator<AppTrieLoaderStub>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<AppTrieLoaderStub *,std::shared_ptr<AppTrieLoaderStub>::__shared_ptr_default_delete<AppTrieLoaderStub,AppTrieLoaderStub>,std::allocator<AppTrieLoaderStub>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t AppTrieLoaderStub::handle@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AppTrieLoaderStub::~AppTrieLoaderStub(AppTrieLoaderStub *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

AppTrieLoaderImpl *std::__shared_ptr_pointer<AppTrieLoaderImpl *,std::shared_ptr<AppTrieLoaderImpl>::__shared_ptr_default_delete<AppTrieLoaderImpl,AppTrieLoaderImpl>,std::allocator<AppTrieLoaderImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AppTrieLoaderImpl::~AppTrieLoaderImpl(result);

    JUMPOUT(0x2318BE270);
  }

  return result;
}

void std::__shared_ptr_pointer<AppTrieLoaderImpl *,std::shared_ptr<AppTrieLoaderImpl>::__shared_ptr_default_delete<AppTrieLoaderImpl,AppTrieLoaderImpl>,std::allocator<AppTrieLoaderImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t __Block_byref_object_copy__17805(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__17806(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

void ___ZN2KB19TIAssetPathRegistry25createPathForMatchingFileEPK10__CFLocaleRKNSt3__18functionIFbPK7__CFURLPK10__CFStringEEE_block_invoke(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = *(a1 + 40);
  v15 = a5;
  v16 = a2;
  v8 = *(v7 + 24);
  if (v8)
  {
    if ((*(*v8 + 48))(v8, &v16, &v15))
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
      v13 = *(v11 + 40);
      if (v13)
      {
        CFRelease(v13);
      }

      *(v11 + 40) = v12;
      *a6 = 1;
    }
  }

  else
  {
    v14 = std::__throw_bad_function_call[abi:nn200100]();
    ___ZN2KB19TIAssetPathRegistry29createPathsForMatchingBundlesEPK10__CFLocaleRKNSt3__18functionIFbPK7__CFURLPK10__CFString17LDAssetBundleTypeEEEb_block_invoke(v14);
  }
}

void ___ZN2KB19TIAssetPathRegistry29createPathsForMatchingBundlesEPK10__CFLocaleRKNSt3__18functionIFbPK7__CFURLPK10__CFString17LDAssetBundleTypeEEEb_block_invoke(uint64_t a1, const __CFURL *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v12 = a5;
  v13 = a2;
  v11 = a3;
  v7 = *(v6 + 24);
  if (v7)
  {
    if ((*(*v7 + 48))(v7, &v13, &v12, &v11))
    {
      v9 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
      CFArrayAppendValue(*(a1 + 40), v9);
      if (v9)
      {

        CFRelease(v9);
      }
    }
  }

  else
  {
    v10 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<KB::TIAssetPathRegistry::unigramLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::unigramLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(v10);
  }
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::unigramLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::unigramLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, KB **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D23690], 0))
  {
    return 0;
  }

  return KB::fileNameMatches(v3, @"Unigrams", v4, v5);
}

BOOL KB::fileNameMatches(KB *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  PathComponent = CFURLCopyLastPathComponent(this);
  if (CFStringFind(PathComponent, a2, 0).location)
  {
    v7 = 0;
  }

  else
  {
    v8 = CFURLCopyPathExtension(this);
    v7 = CFStringCompare(@"dat", v8, 0) == kCFCompareEqualTo;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v7;
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::siriUnigramLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::siriUnigramLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, KB **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D236B8], 0))
  {
    return 0;
  }

  return KB::fileNameMatches(v3, @"Siri-Unigrams", v4, v5);
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::phraseLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::phraseLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, KB **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D23690], 0))
  {
    return 0;
  }

  return KB::fileNameMatches(v3, @"Phrases", v4, v5);
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::siriPhraseLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::siriPhraseLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, KB **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D236B8], 0))
  {
    return 0;
  }

  return KB::fileNameMatches(v3, @"Siri-Phrases", v4, v5);
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::deltaLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::deltaLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, KB **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D23670], 0))
  {
    return 0;
  }

  return KB::fileNameMatches(v3, @"Delta", v4, v5);
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::siriDeltaLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::siriDeltaLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, KB **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D236C0], 0))
  {
    return 0;
  }

  return KB::fileNameMatches(v3, @"Siri-Delta", v4, v5);
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::morphemeLexiconPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::morphemeLexiconPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*)>::operator()(uint64_t a1, const __CFURL **a2, CFStringRef *a3)
{
  v3 = *a2;
  if (CFStringCompare(*a3, *MEMORY[0x277D23698], 0))
  {
    return 0;
  }

  v5 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], v3, @"morpheme.dat", 0);
  error = 0;
  IsReachable = CFURLResourceIsReachable(v5, &error);
  if (error)
  {
    CFRelease(error);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return IsReachable != 0;
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::requiredAssetLanguageModelPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::requiredAssetLanguageModelPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::operator()(uint64_t a1, uint64_t a2, CFStringRef *a3, int *a4)
{
  v4 = *a3;
  v5 = *a4;
  return (CFStringCompare(*a3, *MEMORY[0x277D23688], 0) == kCFCompareEqualTo || CFStringCompare(v4, *MEMORY[0x277D236A0], 0) == kCFCompareEqualTo) && v5 == 0;
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::siriRequiredAssetLanguageModelPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::siriRequiredAssetLanguageModelPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::operator()(uint64_t a1, uint64_t a2, CFStringRef *a3, int *a4)
{
  v4 = *a3;
  v5 = *a4;
  return (CFStringCompare(*a3, *MEMORY[0x277D236B0], 0) == kCFCompareEqualTo || CFStringCompare(v4, *MEMORY[0x277D236C8], 0) == kCFCompareEqualTo) && v5 == 0;
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::mobileAssetLanguageModelPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::mobileAssetLanguageModelPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::operator()(uint64_t a1, uint64_t a2, CFStringRef *a3, int *a4)
{
  v4 = *a3;
  v5 = *a4;
  return (CFStringCompare(*a3, *MEMORY[0x277D23688], 0) == kCFCompareEqualTo || CFStringCompare(v4, *MEMORY[0x277D236A0], 0) == kCFCompareEqualTo) && v5 != 0;
}

BOOL std::__function::__func<KB::TIAssetPathRegistry::siriMobileAssetLanguageModelPredicate(void)::$_0,std::allocator<KB::TIAssetPathRegistry::siriMobileAssetLanguageModelPredicate(void)::$_0>,BOOL ()(__CFURL const*,__CFString const*,LDAssetBundleType)>::operator()(uint64_t a1, uint64_t a2, CFStringRef *a3, int *a4)
{
  v4 = *a4;
  v5 = CFStringCompare(*a3, *MEMORY[0x277D236B0], 0);
  return v4 && v5 == kCFCompareEqualTo;
}

__n128 __Block_byref_object_copy__17991(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__17992(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __Block_byref_object_copy__116(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void TI::Favonius::CMGeometryHypothesis::get_key_touch_alignment(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    (*(*v5 + 88))(v5, a2, a3);
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v7 >= v6)
    {
      v10 = *a2;
      v11 = v7 - *a2;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v14 = v6 - v10;
      if (v14 >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v15);
      }

      *(4 * v12) = *a3;
      v8 = 4 * v12 + 4;
      memcpy(0, v10, v11);
      v16 = *a2;
      *a2 = 0;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = *a3;
      v8 = (v7 + 1);
    }

    *(a2 + 8) = v8;
    v9 = *a3 + 1;
  }

  else
  {
    v9 = 0;
    *(a2 + 8) = *a2;
  }

  *a3 = v9;
}

uint64_t TI::Favonius::CMGeometryHypothesis::CMGeometryHypothesis(uint64_t a1, atomic_uint *a2, uint64_t *a3)
{
  v3 = a2;
  *(a1 + 8) = 1;
  *a1 = &unk_283FDD7D0;
  *(a1 + 16) = a2;
  if (a2)
  {
    atomic_fetch_add(a2 + 2, 1u);
  }

  v5 = *a3;
  *a3 = 0;
  *(a1 + 24) = v5;
  if (((*(*a2 + 104))(a2) & 1) == 0)
  {
    v3 = *(v3 + 4);
  }

  *(a1 + 32) = v3;
  return a1;
}

uint64_t TI::Favonius::CMUnmatchedTouchHypothesis::get_key_touch_alignment(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = (*(*a1 + 40))(a1);
  result = (*(*v5 + 88))(v5, a2, a3);
  ++*a3;
  return result;
}

void TI::Favonius::CMUnmatchedKeyHypothesis::get_key_touch_alignment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 40))(a1);
  (*(*v5 + 88))(v5, a2, a3);
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v7 >= v6)
  {
    v9 = *a2;
    v10 = v7 - *a2;
    v11 = v10 >> 2;
    v12 = (v10 >> 2) + 1;
    if (v12 >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v14);
    }

    *(4 * v11) = -1;
    v8 = 4 * v11 + 4;
    memcpy(0, v9, v10);
    v15 = *a2;
    *a2 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = -1;
    v8 = (v7 + 1);
  }

  *(a2 + 8) = v8;
}

uint64_t TI::Favonius::CMMatchedKeyHypothesis::CMMatchedKeyHypothesis(uint64_t a1, atomic_uint *a2, unsigned int **a3, uint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *a3;
  *a3 = 0;
  v62 = v7;
  TI::Favonius::CMGeometryHypothesis::CMGeometryHypothesis(a1, a2, &v62);
  if (v62)
  {
    v8 = atomic_load(v62 + 2);
    if (v8 == 1)
    {
      (*(*v62 + 8))();
    }

    else
    {
      atomic_fetch_add(v62 + 2, 0xFFFFFFFF);
    }
  }

  *v6 = &unk_283FDD850;
  v9 = *a4;
  *a4 = 0;
  *(v6 + 40) = v9;
  v10 = (*(*v5 + 16))(v5);
  v11 = *(v6 + 24);
  v59 = *(v6 + 40);
  v12 = v5;
  if (((*(*v5 + 104))(v5) & 1) == 0)
  {
    v12 = *(v5 + 4);
  }

  v13 = *(v11 + 24);
  if (v13 == *(v11 + 32))
  {
    v60 = 0u;
    v61 = 0u;
    v24 = -0.0;
    goto LABEL_27;
  }

  v57 = v6;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v60 = 0u;
  v61 = 0u;
  do
  {
    v18 = *(v13 + 8);
    if (v12 && (v19 = (*(*v12 + 24))(v12), *v13 == (*(*v19 + 56))(v19)))
    {
      v18 = (*(*v12 + 32))(v12);
      v12 = *(v12 + 4);
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    else if (!v18)
    {
      goto LABEL_24;
    }

    v20 = *(v18 + 8);
    v21 = *(v20 + 60);
    if (v17 & 1 | ((v21 & 0xB81) != 0))
    {
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      if (++v14 > 3)
      {
        break;
      }

      ++v15;
    }

    else
    {
      if (!v15)
      {
        v17 = 1;
LABEL_23:
        v22 = vsubq_f64(*(v18 + 16), *(v59 + 16));
        v23 = *(v13 + 16);
        v60 = vaddq_f64(v60, v23);
        v61 = vmlaq_f64(v61, v22, vmulq_f64(v22, v23));
        goto LABEL_24;
      }

      v17 = 0;
      --v15;
      if (*(v20 + 62) == *(*(v59 + 8) + 62))
      {
        ++v16;
      }
    }

LABEL_24:
    v13 += 32;
  }

  while (v13 != *(v11 + 32));
  v24 = v16 * -0.1625;
  v6 = v57;
LABEL_27:
  v25 = *(v11 + 76);
  v26 = *(v59 + 32);
  if (((*(*v5 + 104))(v5) & 1) != 0 || (v5 = *(v5 + 4)) != 0)
  {
    v27 = 0.0;
    if ((*(*v5 + 32))(v5))
    {
      v55 = v25;
      v56 = v24;
      v58 = v10;
      v28 = (*(*v5 + 24))(v5);
      v29 = (*(*v28 + 56))(v28);
      v30 = (*(*v11 + 56))(v11);
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[4];
      v35 = v30[1];
      v34 = v30[2];
      v36 = v30[4];
      v37 = (*(*v5 + 32))(v5);
      v38 = v36 - v33;
      v39 = *(v37 + 8);
      v40 = *(v39 + 60);
      v41 = 4.0;
      if ((v40 & 0x80) != 0)
      {
        v41 = 8.0;
      }

      v42 = 6.3;
      if (s_interface_idiom_is_pad)
      {
        v42 = 5.3;
      }

      if (v38 == 0.0 || v38 > 0.5)
      {
        v10 = v58;
        v24 = v56;
        v25 = v55;
      }

      else
      {
        v44 = v42 * v41;
        v45 = sqrt((v32 - v34) * (v32 - v34) + (v31 - v35) * (v31 - v35));
        v10 = v58;
        v24 = v56;
        v25 = v55;
        if (v44 >= v45)
        {
          v46 = *(v39 + 62);
          v47 = -3.5;
          if ((v40 & 0x20) != 0)
          {
            v48 = -3.5;
          }

          else
          {
            v48 = 0.0;
          }

          if (*(*(v59 + 8) + 62) == v46)
          {
            v47 = 0.0;
            _ZF = 0;
          }

          else
          {
            _ZF = (v40 & 0x80) == 0;
          }

          if (_ZF)
          {
            v27 = v48;
          }

          else
          {
            v27 = v47;
          }
        }
      }
    }
  }

  else
  {
    v27 = 0.0;
  }

  __asm { FMOV            V0.2D, #2.0 }

  *_Q0.f64 = vaddvq_f64(vdivq_f64(v61, vbslq_s8(vcgtq_f64(_Q0, v60), _Q0, v60)));
  *(v6 + 48) = v10 + ((((v25 * *_Q0.f64) + v26) + v27) + v24);
  return v6;
}

void TI::Favonius::CMTranspositionHypothesis::get_key_touch_alignment(uint64_t a1, uint64_t a2, int *a3)
{
  TI::Favonius::CMGeometryHypothesis::get_key_touch_alignment(a1, a2, a3);
  v4 = *(a2 + 8);
  v5 = *(v4 - 8);
  *(v4 - 8) = *(v4 - 4);
  *(v4 - 4) = v5;
}

void TI::Favonius::CMTranspositionHypothesis::~CMTranspositionHypothesis(TI::Favonius::CMTranspositionHypothesis *this)
{
  TI::Favonius::CMMatchedKeyHypothesis::~CMMatchedKeyHypothesis(this);

  JUMPOUT(0x2318BE270);
}

void TI::Favonius::CMMatchedKeyHypothesis::~CMMatchedKeyHypothesis(TI::Favonius::CMMatchedKeyHypothesis *this)
{
  *this = &unk_283FDD850;
  v2 = *(this + 5);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v2);
  }

  TI::Favonius::CMGeometryHypothesis::~CMGeometryHypothesis(this);
}

{
  TI::Favonius::CMMatchedKeyHypothesis::~CMMatchedKeyHypothesis(this);

  JUMPOUT(0x2318BE270);
}

void TI::Favonius::CMGeometryHypothesis::~CMGeometryHypothesis(TI::Favonius::CMGeometryHypothesis *this)
{
  *this = &unk_283FDD7D0;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = atomic_load(v2 + 2);
    if (v3 == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
    }
  }

  v4 = *(this + 2);
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

{
  TI::Favonius::CMGeometryHypothesis::~CMGeometryHypothesis(this);

  JUMPOUT(0x2318BE270);
}

uint64_t TI::Favonius::CMMatchedKeyHypothesis::instance_error_correction_type(TI::Favonius::CMMatchedKeyHypothesis *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
  }

  v3 = **((*(*v2 + 64))(v2) + 8);
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *(*(v3 + 8) + 62);
  v5 = *(*((*(*this + 32))(this) + 8) + 62);
  WTF::RefCounted<TI::Favonius::KeyMatch>::deref(v3);
  v6 = atomic_load(v2 + 2);
  if (v6 == 1)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  }

  return 16 * (v4 != v5);
}

float TI::Favonius::CMSubstitutionHypothesis::log_likelihood(TI::Favonius::CMSubstitutionHypothesis *this)
{
  v2 = (*(*this + 24))(this);
  v3 = (*(*v2 + 48))(v2);
  v4 = (*(*this + 40))(this);
  return v3 + (*(*v4 + 16))(v4);
}

void TI::Favonius::CMSubstitutionHypothesis::~CMSubstitutionHypothesis(TI::Favonius::CMSubstitutionHypothesis *this)
{
  TI::Favonius::CMGeometryHypothesis::~CMGeometryHypothesis(this);

  JUMPOUT(0x2318BE270);
}

void TI::Favonius::CMUnmatchedKeyHypothesis::~CMUnmatchedKeyHypothesis(TI::Favonius::CMUnmatchedKeyHypothesis *this)
{
  TI::Favonius::CMGeometryHypothesis::~CMGeometryHypothesis(this);

  JUMPOUT(0x2318BE270);
}

void TI::Favonius::CMUnmatchedTouchHypothesis::~CMUnmatchedTouchHypothesis(TI::Favonius::CMUnmatchedTouchHypothesis *this)
{
  TI::Favonius::CMGeometryHypothesis::~CMGeometryHypothesis(this);

  JUMPOUT(0x2318BE270);
}

float KB::DynamicDictionaryCursor::do_advance(KB::DynamicDictionaryCursor *this, const KB::DynamicDictionary *a2, const KB::String *a3, unsigned int a4)
{
  v7 = 0.0;
  v8 = 0.0;
  if (*(this + 5))
  {
    v9 = *a3;
    *(a3 + 1);
    *a3;
    v10 = LXCursorCreateByAdvancingWithUTF8();
    v11 = *(this + 5);
    if (v11)
    {
      CFRelease(v11);
    }

    *(this + 5) = v10;
    if (v10)
    {
      v12 = LXCursorUsageCountRecursive();
      if (a4)
      {
        v8 = (v12 / a4) + 0.0;
      }
    }
  }

  if (*(this + 1))
  {
    *(a3 + 1);
    *a3;
    v13 = LXCursorCreateByAdvancingWithUTF8();
    v14 = *(this + 1);
    if (v14)
    {
      CFRelease(v14);
    }

    *(this + 1) = v13;
    if (v13)
    {
      v15 = LXCursorUsageCountRecursive();
      if (a4)
      {
        v7 = v15 / a4;
      }
    }
  }

  v16 = 0.0;
  v17 = 0.0;
  if (*(this + 2))
  {
    *(a3 + 1);
    *a3;
    v18 = LXCursorCreateByAdvancingWithUTF8();
    v19 = *(this + 2);
    if (v19)
    {
      CFRelease(v19);
    }

    *(this + 2) = v18;
    if (v18)
    {
      v20 = LXCursorUsageCountRecursive();
      if (a4)
      {
        v17 = v20 / a4;
      }
    }
  }

  if (*(this + 3))
  {
    *(a3 + 1);
    *a3;
    v21 = LXCursorCreateByAdvancingWithUTF8();
    v22 = *(this + 3);
    if (v22)
    {
      CFRelease(v22);
    }

    *(this + 3) = v21;
    if (v21)
    {
      v23 = LXCursorUsageCountRecursive();
      if (a4)
      {
        v16 = v23 / a4;
      }
    }
  }

  v24 = 0.0;
  if (*(this + 4))
  {
    *(a3 + 1);
    *a3;
    v25 = LXCursorCreateByAdvancingWithUTF8();
    v26 = *(this + 4);
    if (v26)
    {
      CFRelease(v26);
    }

    *(this + 4) = v25;
    if (v25)
    {
      v27 = LXCursorUsageCountRecursive();
      if (a4)
      {
        v24 = v27 / a4;
      }
    }
  }

  return (((v8 + v7) + v17) + v16) + v24;
}

uint64_t KB::DynamicDictionarySingleCursor::get_entry_count(KB::DynamicDictionarySingleCursor *this, const KB::DynamicDictionary *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2KB29DynamicDictionarySingleCursor15get_entry_countERKNS_17DynamicDictionaryE_block_invoke;
  v4[3] = &unk_278732B70;
  v4[4] = &v5;
  (*(*this + 40))(this, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2KB29DynamicDictionarySingleCursor15get_entry_countERKNS_17DynamicDictionaryE_block_invoke(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = LXCursorUsageCount();
    *(*(*(a1 + 32) + 8) + 24) += result;
  }

  return result;
}

uint64_t KB::DynamicDictionarySingleCursor::get_subtree_usage_count(KB::DynamicDictionarySingleCursor *this, const KB::DynamicDictionary *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2KB29DynamicDictionarySingleCursor23get_subtree_usage_countERKNS_17DynamicDictionaryE_block_invoke;
  v4[3] = &unk_278732B48;
  v4[4] = &v5;
  (*(*this + 40))(this, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2KB29DynamicDictionarySingleCursor23get_subtree_usage_countERKNS_17DynamicDictionaryE_block_invoke(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = LXCursorUsageCountRecursive();
    *(*(*(a1 + 32) + 8) + 24) += result;
  }

  return result;
}

float KB::DynamicDictionarySingleCursor::get_termination_probability(KB::DynamicDictionarySingleCursor *this, const KB::DynamicDictionary *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK2KB29DynamicDictionarySingleCursor27get_termination_probabilityERKNS_17DynamicDictionaryE_block_invoke;
  v5[3] = &unk_278732B20;
  v5[4] = &v10;
  v5[5] = &v6;
  (*(*this + 40))(this, v5);
  v2 = *(v11 + 6);
  if (v2)
  {
    v3 = v7[6] / v2;
  }

  else
  {
    v3 = 0.0;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t ___ZNK2KB29DynamicDictionarySingleCursor27get_termination_probabilityERKNS_17DynamicDictionaryE_block_invoke(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    *(*(*(a1 + 32) + 8) + 24) += LXCursorUsageCountRecursive();
    v5 = *a2;
    result = LXCursorUsageCount();
    *(*(*(a1 + 40) + 8) + 24) += result;
  }

  return result;
}

KB::DynamicDictionaryCursor *KB::DynamicDictionaryCursor::DynamicDictionaryCursor(KB::DynamicDictionaryCursor *this, const KB::DynamicDictionaryCursor *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_283FDDAD0;
  *(this + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
    *(this + 1) = v4;
  }

  v5 = *(a2 + 2);
  *(this + 2) = v5;
  if (v5)
  {
    CFRetain(v5);
    *(this + 2) = v5;
  }

  v6 = *(a2 + 3);
  *(this + 3) = v6;
  if (v6)
  {
    CFRetain(v6);
    *(this + 3) = v6;
  }

  v7 = *(a2 + 4);
  *(this + 4) = v7;
  if (v7)
  {
    CFRetain(v7);
    *(this + 4) = v7;
  }

  v8 = *(a2 + 5);
  *(this + 5) = v8;
  if (v8)
  {
    CFRetain(v8);
    *(this + 5) = v8;
  }

  return this;
}

float KB::DynamicDictionarySingleCursor::do_advance(KB::DynamicDictionarySingleCursor *this, const KB::DynamicDictionary *a2, const KB::String *a3, unsigned int a4)
{
  v7 = KB::DynamicDictionaryCursor::do_advance(this, a2, a3, a4) + 0.0;
  if (*(this + 6))
  {
    *(a3 + 1);
    *a3;
    v8 = LXCursorCreateByAdvancingWithUTF8();
    v9 = *(this + 6);
    if (v9)
    {
      CFRelease(v9);
    }

    *(this + 6) = v8;
    if (v8)
    {
      v10 = LXCursorUsageCountRecursive();
      if (a4)
      {
        v11 = v10 / a4;
      }

      else
      {
        v11 = 0.0;
      }

      return v7 + v11;
    }
  }

  return v7;
}

uint64_t KB::DynamicDictionarySingleCursor::do_for_each_mutable_dynamic_trie_node(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 48))
  {
    result = (*(a2 + 16))(a2, result + 48, 0, 0);
  }

  if (v3[1])
  {
    result = (*(a2 + 16))(a2, v3 + 1, 1, 0);
  }

  if (v3[2])
  {
    result = (*(a2 + 16))(a2, v3 + 2, 2, 0);
  }

  if (v3[3])
  {
    result = (*(a2 + 16))(a2, v3 + 3, 3, 0);
  }

  if (v3[4])
  {
    result = (*(a2 + 16))(a2, v3 + 4, 4, 0);
  }

  v5 = v3[5];
  v4 = v3 + 5;
  if (v5)
  {
    v6 = *(a2 + 16);

    return v6(a2, v4, 5, 0);
  }

  return result;
}

uint64_t KB::DynamicDictionarySingleCursor::do_for_each_dynamic_trie_node(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 48))
  {
    result = (*(a2 + 16))(a2, result + 48, 0, 0);
  }

  if (v3[1])
  {
    result = (*(a2 + 16))(a2, v3 + 1, 1, 0);
  }

  if (v3[2])
  {
    result = (*(a2 + 16))(a2, v3 + 2, 2, 0);
  }

  if (v3[3])
  {
    result = (*(a2 + 16))(a2, v3 + 3, 3, 0);
  }

  if (v3[4])
  {
    result = (*(a2 + 16))(a2, v3 + 4, 4, 0);
  }

  v5 = v3[5];
  v4 = v3 + 5;
  if (v5)
  {
    v6 = *(a2 + 16);

    return v6(a2, v4, 5, 0);
  }

  return result;
}

void KB::DynamicDictionarySingleCursor::~DynamicDictionarySingleCursor(KB::DynamicDictionarySingleCursor *this)
{
  KB::DynamicDictionarySingleCursor::~DynamicDictionarySingleCursor(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDDB60;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 6) = 0;

  KB::DynamicDictionaryCursor::~DynamicDictionaryCursor(this);
}

void KB::DynamicDictionaryCursor::~DynamicDictionaryCursor(KB::DynamicDictionaryCursor *this)
{
  *this = &unk_283FDDAD0;
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 5) = 0;
  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 4) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 3) = 0;
  v5 = *(this + 2);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 2) = 0;
  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 1) = 0;
}

unint64_t KB::DynamicDictionaryContainerCursor::get_entry_count(KB::DynamicDictionaryContainerCursor *this, const KB::DynamicDictionary *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2KB32DynamicDictionaryContainerCursor15get_entry_countERKNS_17DynamicDictionaryE_block_invoke;
  v4[3] = &unk_278732BE8;
  v4[4] = &v5;
  v4[5] = a2;
  (*(*this + 40))(this, v4);
  v2 = llroundf(ceilf(v6[6]));
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2KB32DynamicDictionaryContainerCursor15get_entry_countERKNS_17DynamicDictionaryE_block_invoke(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *a2;
    result = LXCursorUsageCount();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24) + result;
  }

  else
  {
    v9 = *(*(*(a1 + 40) + 168) + 4 * a4);
    v10 = *a2;
    result = LXCursorUsageCount();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24) + (v9 * result);
  }

  *(v7 + 24) = v8;
  return result;
}

unint64_t KB::DynamicDictionaryContainerCursor::get_subtree_usage_count(KB::DynamicDictionaryContainerCursor *this, const KB::DynamicDictionary *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2KB32DynamicDictionaryContainerCursor23get_subtree_usage_countERKNS_17DynamicDictionaryE_block_invoke;
  v4[3] = &unk_278732BC0;
  v4[4] = &v5;
  v4[5] = a2;
  (*(*this + 40))(this, v4);
  v2 = llroundf(ceilf(v6[6]));
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2KB32DynamicDictionaryContainerCursor23get_subtree_usage_countERKNS_17DynamicDictionaryE_block_invoke(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v5 = *a2;
    result = LXCursorUsageCountRecursive();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24) + result;
  }

  else
  {
    v9 = *(*(*(a1 + 40) + 168) + 4 * a4);
    v10 = *a2;
    result = LXCursorUsageCountRecursive();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24) + (v9 * result);
  }

  *(v7 + 24) = v8;
  return result;
}

float KB::DynamicDictionaryContainerCursor::get_termination_probability(KB::DynamicDictionaryContainerCursor *this, const KB::DynamicDictionary *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK2KB32DynamicDictionaryContainerCursor27get_termination_probabilityERKNS_17DynamicDictionaryE_block_invoke;
  v5[3] = &unk_278732B98;
  v5[5] = &v6;
  v5[6] = a2;
  v5[4] = &v10;
  (*(*this + 40))(this, v5);
  v2 = v11[6];
  v3 = 0.0;
  if (v2 > 0.0)
  {
    v3 = v7[6] / v2;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t ___ZNK2KB32DynamicDictionaryContainerCursor27get_termination_probabilityERKNS_17DynamicDictionaryE_block_invoke(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  result = *a2;
  if (a3)
  {
    if (!result)
    {
      return result;
    }

    *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) + LXCursorUsageCountRecursive();
    v7 = *a2;
    result = LXCursorUsageCount();
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 24) + result;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v10 = *(*(a1[6] + 168) + 4 * a4);
    *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) + (v10 * LXCursorUsageCountRecursive());
    v11 = *a2;
    result = LXCursorUsageCount();
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 24) + (v10 * result);
  }

  *(v8 + 24) = v9;
  return result;
}

void std::vector<KB::retain_ptr<_LXCursor const*>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
}

float KB::DynamicDictionaryContainerCursor::do_advance(KB::DynamicDictionaryContainerCursor *this, const KB::DynamicDictionary *a2, const KB::String *a3, unsigned int a4)
{
  v8 = KB::DynamicDictionaryCursor::do_advance(this, a2, a3, a4) + 0.0;
  v9 = *(a2 + 15) - *(a2 + 14);
  v10 = *(this + 6);
  if ((*(this + 7) - v10) >> 3 >= (v9 >> 3))
  {
    v11 = v9 >> 3;
  }

  else
  {
    v11 = (*(this + 7) - v10) >> 3;
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = *(this + 6);
      if (*(v13 + 8 * i))
      {
        v14 = *(*(a2 + 21) + 4 * i);
        *(a3 + 1);
        *a3;
        v15 = LXCursorCreateByAdvancingWithUTF8();
        v16 = *(v13 + 8 * i);
        if (v16)
        {
          CFRelease(v16);
        }

        *(v13 + 8 * i) = v15;
        if (v15)
        {
          v17 = LXCursorUsageCountRecursive();
          if (a4)
          {
            v18 = v17 / a4;
          }

          else
          {
            v18 = 0.0;
          }

          v8 = v8 + (v14 * v18);
        }
      }
    }
  }

  return v8;
}

uint64_t KB::DynamicDictionaryContainerCursor::do_for_each_mutable_dynamic_trie_node(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 56) - *(result + 48);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = 1;
    do
    {
      if (*(v3[6] + 8 * v5))
      {
        result = (*(a2 + 16))(a2);
      }

      v5 = v7;
    }

    while (v6 > v7++);
  }

  if (v3[1])
  {
    result = (*(a2 + 16))(a2, v3 + 1, 1, 0);
  }

  if (v3[2])
  {
    result = (*(a2 + 16))(a2, v3 + 2, 2, 0);
  }

  if (v3[3])
  {
    result = (*(a2 + 16))(a2, v3 + 3, 3, 0);
  }

  if (v3[4])
  {
    result = (*(a2 + 16))(a2, v3 + 4, 4, 0);
  }

  v10 = v3[5];
  v9 = v3 + 5;
  if (v10)
  {
    v11 = *(a2 + 16);

    return v11(a2, v9, 5, 0);
  }

  return result;
}

uint64_t KB::DynamicDictionaryContainerCursor::do_for_each_dynamic_trie_node(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 56) - *(result + 48);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = 1;
    do
    {
      if (*(v3[6] + 8 * v5))
      {
        result = (*(a2 + 16))(a2);
      }

      v5 = v7;
    }

    while (v6 > v7++);
  }

  if (v3[1])
  {
    result = (*(a2 + 16))(a2, v3 + 1, 1, 0);
  }

  if (v3[2])
  {
    result = (*(a2 + 16))(a2, v3 + 2, 2, 0);
  }

  if (v3[3])
  {
    result = (*(a2 + 16))(a2, v3 + 3, 3, 0);
  }

  if (v3[4])
  {
    result = (*(a2 + 16))(a2, v3 + 4, 4, 0);
  }

  v10 = v3[5];
  v9 = v3 + 5;
  if (v10)
  {
    v11 = *(a2 + 16);

    return v11(a2, v9, 5, 0);
  }

  return result;
}

void KB::DynamicDictionaryContainerCursor::~DynamicDictionaryContainerCursor(KB::DynamicDictionaryContainerCursor *this)
{
  *this = &unk_283FDDBD0;
  v2 = (this + 48);
  std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](&v2);
  KB::DynamicDictionaryCursor::~DynamicDictionaryCursor(this);

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDDBD0;
  v2 = (this + 48);
  std::vector<KB::retain_ptr<__CFString const*>>::__destroy_vector::operator()[abi:nn200100](&v2);

  KB::DynamicDictionaryCursor::~DynamicDictionaryCursor(this);
}

void KB::DynamicDictionaryCursor::set_to_root(KB::DynamicDictionaryCursor *this, const KB::DynamicDictionary *a2)
{
  if (*(a2 + 1))
  {
    RootCursor = LXLexiconCreateRootCursor();
  }

  else
  {
    RootCursor = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 1) = RootCursor;
  if (*(a2 + 2))
  {
    v6 = LXLexiconCreateRootCursor();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 2);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 2) = v6;
  v8 = *(a2 + 3);
  if (v8 && (v9 = *v8) != 0 && *v9)
  {
    v10 = LXLexiconCreateRootCursor();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 3);
  if (v11)
  {
    CFRelease(v11);
  }

  *(this + 3) = v10;
  if (KB::DynamicDictionary::named_entity_lexicon(a2))
  {
    v12 = LXLexiconCreateRootCursor();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 4);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 4) = v12;
  if (TITransientLexiconManagerGetActiveSupplementalLexiconWords())
  {
    v14 = LXLexiconCreateRootCursor();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 5);
  if (v15)
  {
    CFRelease(v15);
  }

  *(this + 5) = v14;
}

void ___ZN2KB23DynamicDictionaryCursor10invalidateEv_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = 0;
}

uint64_t ___ZNK2KB23DynamicDictionaryCursor11has_entriesEv_block_invoke(uint64_t result, uint64_t *a2)
{
  v2 = result;
  if (*(*(*(result + 32) + 8) + 24))
  {
    v3 = 1;
  }

  else
  {
    v5 = *a2;
    result = LXCursorHasEntries();
    if (result)
    {
      v6 = *a2;
      result = LXCursorUsageCount();
      v3 = result > 0;
    }

    else
    {
      v3 = 0;
    }
  }

  *(*(*(v2 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t ___ZNK2KB23DynamicDictionaryCursor12has_childrenEv_block_invoke(uint64_t result, uint64_t *a2)
{
  v2 = *(*(result + 32) + 8);
  if (*(v2 + 24))
  {
    v3 = 1;
  }

  else
  {
    v4 = result;
    v5 = *a2;
    result = LXCursorHasChildren();
    v3 = result != 0;
    v2 = *(*(v4 + 32) + 8);
  }

  *(v2 + 24) = v3;
  return result;
}

uint64_t ___ZNK2KB23DynamicDictionaryCursor35merge_children_with_static_siblingsERNSt3__16vectorINS_17DictionaryCursorsENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryERKNS_17DynamicDictionaryE_block_invoke(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  result = *a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK2KB23DynamicDictionaryCursor35merge_children_with_static_siblingsERNSt3__16vectorINS_17DictionaryCursorsENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryERKNS_17DynamicDictionaryE_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_8_18158;
  v8 = *(a1 + 32);
  v6 = *(a1 + 48);
  v11 = a3;
  v9 = v6;
  v10 = a4;
  if (result)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = ___ZL34enumerate_whole_character_childrenPK9_LXCursorU13block_pointerFvS1_jE_block_invoke;
    v15 = &unk_278732C10;
    v16 = v7;
    return LXCursorEnumerateChildren();
  }

  return result;
}

void ___ZNK2KB23DynamicDictionaryCursor35merge_children_with_static_siblingsERNSt3__16vectorINS_17DictionaryCursorsENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryERKNS_17DynamicDictionaryE_block_invoke_2(uint64_t a1, CFTypeRef cf, int a3)
{
  if (a3 != 65533)
  {
    v6 = *(a1 + 32);
    v8 = *v6;
    v7 = v6[1];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 0x40000000;
    v48 = ___ZNK2KB23DynamicDictionaryCursor35merge_children_with_static_siblingsERNSt3__16vectorINS_17DictionaryCursorsENS1_9allocatorIS3_EEEERKNS_16StaticDictionaryERKNS_17DynamicDictionaryE_block_invoke_3;
    v49 = &__block_descriptor_tmp_6_18161;
    v50 = a3;
    if (v7 != v8)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4);
      do
      {
        v10 = v8 + 80 * (v9 >> 1);
        v11 = (v48)(v47, v10);
        if (v11)
        {
          v9 += ~(v9 >> 1);
        }

        else
        {
          v9 >>= 1;
        }

        if (v11)
        {
          v8 = v10 + 80;
        }
      }

      while (v9);
      v6 = *(a1 + 32);
      v7 = v6[1];
    }

    if (v7 == v8 || (v12 = v8, *(v8 + 72) != a3))
    {
      v13 = *(a1 + 48);
      v14 = ((*(*(a1 + 40) + 8) - **(a1 + 40)) >> 3);
      memset(v43, 0, sizeof(v43));
      v44 = 0;
      v45 = v14;
      v46 = 0;
      (*(*v13 + 24))(&v42);
      v15 = v6[1];
      v16 = v6[2];
      if (v15 >= v16)
      {
        v22 = *v6;
        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v6) >> 4) + 1;
        if (v23 > 0x333333333333333)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v24 = v8 - v22;
        v25 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v22) >> 4);
        if (2 * v25 > v23)
        {
          v23 = 2 * v25;
        }

        if (v25 >= 0x199999999999999)
        {
          v26 = 0x333333333333333;
        }

        else
        {
          v26 = v23;
        }

        v55 = v6;
        if (v26)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<KB::DictionaryCursors>>(v26);
        }

        v27 = 16 * (v24 >> 4);
        v51 = 0;
        v52 = v27;
        v53 = v27;
        v54 = 0;
        if (!(0xCCCCCCCCCCCCCCCDLL * (v24 >> 4)))
        {
          if (v24 < 1)
          {
            if (v8 == v22)
            {
              v30 = 1;
            }

            else
            {
              v30 = 0x999999999999999ALL * (v24 >> 4);
            }

            v56[4] = v6;
            std::__allocate_at_least[abi:nn200100]<std::allocator<KB::DictionaryCursors>>(v30);
          }

          v27 -= 80 * ((1 - 0x3333333333333333 * (v24 >> 4)) >> 1);
          v52 = v27;
          v53 = v27;
        }

        KB::DictionaryCursors::DictionaryCursors(v27, v43, &v42);
        v12 = v52;
        v31 = v53 + 80;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::DictionaryCursors>,KB::DictionaryCursors*>(v8, v6[1], v53 + 80);
        v32 = *v6;
        v33 = v31 + v6[1] - v8;
        v6[1] = v8;
        v34 = v12 + v32 - v8;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::DictionaryCursors>,KB::DictionaryCursors*>(v32, v8, v34);
        v35 = *v6;
        *v6 = v34;
        v51 = v35;
        v52 = v35;
        v6[1] = v33;
        v53 = v35;
        v36 = v6[2];
        v6[2] = v54;
        v54 = v36;
        std::__split_buffer<KB::DictionaryCursors>::~__split_buffer(&v51);
      }

      else
      {
        if (v8 == v15)
        {
          v6[1] = KB::DictionaryCursors::DictionaryCursors(v15, v43, &v42) + 80;
        }

        else
        {
          v56[10] = v6;
          KB::DictionaryCursors::DictionaryCursors(v56, v43, &v42);
          v17 = v6[1];
          v18 = (v17 - 80);
          if (v17 < 0x50)
          {
            v20 = v6[1];
          }

          else
          {
            v19 = v17 - 80;
            v20 = v6[1];
            do
            {
              v21 = KB::DictionaryCursors::DictionaryCursors(v20, v19);
              v19 += 80;
              v20 = v21 + 80;
            }

            while (v19 < v17);
          }

          v6[1] = v20;
          if (v17 != v8 + 80)
          {
            v28 = v8 - v17 + 80;
            v29 = v17 - 160;
            do
            {
              KB::DictionaryCursors::operator=(v18, v29);
              v18 -= 10;
              v29 -= 80;
              v28 += 80;
            }

            while (v28);
          }

          KB::DictionaryCursors::operator=(v8, v56);
          std::allocator_traits<std::allocator<KB::DictionaryCursors>>::destroy[abi:nn200100]<KB::DictionaryCursors,void,0>(v56);
        }

        v12 = v8;
      }

      v37 = v42;
      v42 = 0;
      if (v37)
      {
        (*(*v37 + 16))(v37);
      }

      for (i = 16; i != -8; i -= 8)
      {
        v39 = *(v43 + i);
        if (v39)
        {
          CFRelease(v39);
        }

        *(v43 + i) = 0;
      }

      *(v12 + 72) = a3;
    }

    v40 = *(a1 + 64);
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = (*(v12 + 56) + 24);
          break;
        case 4:
          v41 = (*(v12 + 56) + 32);
          break;
        case 5:
          v41 = (*(v12 + 56) + 40);
          break;
        default:
          return;
      }
    }

    else if (v40)
    {
      if (v40 == 1)
      {
        v41 = (*(v12 + 56) + 8);
      }

      else
      {
        if (v40 != 2)
        {
          return;
        }

        v41 = (*(v12 + 56) + 16);
      }
    }

    else
    {
      v41 = (*(**(v12 + 56) + 24))(*(v12 + 56), *(a1 + 56));
    }

    KB::retain_ptr<__CFDictionary const*>::operator=(v41, cf);
  }
}

uint64_t ___ZL34enumerate_whole_character_childrenPK9_LXCursorU13block_pointerFvS1_jE_block_invoke(uint64_t a1)
{
  LXCursorLastTraversedCharacter();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

KB::DynamicDictionaryContainerCursor *KB::DynamicDictionaryContainerCursor::DynamicDictionaryContainerCursor(KB::DynamicDictionaryContainerCursor *this, const KB::DynamicDictionaryContainer *a2)
{
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_283FDDBD0;
  v4 = *(a2 + 14);
  v3 = *(a2 + 15);
  *(this + 6) = 0;
  v5 = this + 48;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v3 != v4)
  {
    std::vector<KB::retain_ptr<_LXCursor const*>>::__vallocate[abi:nn200100](v5, (v3 - v4) >> 3);
  }

  return this;
}

__int128 *lmContextOrEmpty(TIContextTokens *a1)
{
  v1 = a1;
  {
    if (v4)
    {
      KB::LanguageModelContext::LanguageModelContext(v4);
      __cxa_atexit(KB::LanguageModelContext::~LanguageModelContext, &lmContextOrEmpty(TIContextTokens const*)::emptyContext, &dword_22CA55000);
    }
  }

  if (v1)
  {
    v2 = [(TIContextTokens *)v1 lmContext];
  }

  else
  {
    v2 = &lmContextOrEmpty(TIContextTokens const*)::emptyContext;
  }

  return v2;
}

uint64_t KB::LanguageModelContext::LanguageModelContext(KB::LanguageModelContext *this)
{
  xmmword_280FAC430 = 0u;
  unk_280FAC440 = 0u;
  lmContextOrEmpty(TIContextTokens const*)::emptyContext = 0u;
  unk_280FAC420 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&unk_280FAC450);
  result = language_modeling::v1::LinguisticContext::LinguisticContext(&unk_280FAC458);
  qword_280FAC460 = 0;
  unk_280FAC468 = 0;
  qword_280FAC470 = 0;
  return result;
}

void KB::LanguageModelContext::~LanguageModelContext(KB::LanguageModelContext *this)
{
  v4 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 64));
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::allocator_traits<std::allocator<RecentMessage>>::destroy[abi:nn200100]<RecentMessage,void,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    v6 = (v2 + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
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

    MEMORY[0x2318BE270](v2, 0x1020C40C12D0AD1);
  }

  v5 = *(a1 + 8);
  if (v5 && *(a1 + 6) == 1)
  {

    free(v5);
  }
}

uint64_t __Block_byref_object_copy__18463(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

unsigned int *__Block_byref_object_dispose__18464(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return WTF::RefCounted<KB::DictionaryContainer>::deref(result);
  }

  return result;
}

void __destroy_helper_block_a8_80c43_ZTSNSt3__18weak_ptrIN2KB13LanguageModelEEE(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_a8_80c43_ZTSNSt3__18weak_ptrIN2KB13LanguageModelEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *__getSRKeyboardMetricScalarTotalWordsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalWordsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalWordsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SensorKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SensorKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SensorKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278732C98;
    v6 = 0;
    SensorKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = SensorKitLibraryCore_frameworkLibrary;
    if (SensorKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = SensorKitLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getSRKeyboardMetricScalarTotalAlteredWordsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalAlteredWordsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalAlteredWordsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalTapsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalTapsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalTapsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalDragsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalDragsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalDragsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalDeletesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalDeletesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalDeletesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalEmojiKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalEmojiKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalEmojiKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalPathsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalPathsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalPathsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalPathTimeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalPathTimeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalPathTimeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalPathLengthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalPathLengthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalPathLengthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalSessionTypingDurationKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalSessionTypingDurationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalSessionTypingDurationKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTypingPausesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTypingPausesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTypingPausesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEpisodeCountKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEpisodeCountKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEpisodeCountKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTapTypingSpeedKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTapTypingSpeedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTapTypingSpeedKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarPathTypingSpeedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarPathTypingSpeed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarPathTypingSpeedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalAutoCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalAutoCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalAutoCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalSpaceCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalSpaceCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalSpaceCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalRetroCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalRetroCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalRetroCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalTranspositionCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalTranspositionCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalTranspositionCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalInsertKeyCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalInsertKeyCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalInsertKeyCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalSkipTouchCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalSkipTouchCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalSkipTouchCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalNearKeyCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalNearKeyCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalNearKeyCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalSubstitutionCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalSubstitutionCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalSubstitutionCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarTotalHitTestCorrectionsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarTotalHitTestCorrectionsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarTotalHitTestCorrectionsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricPositionalWordDownErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricPositionalWordDownErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricPositionalWordDownErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricPositionalWordUpErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricPositionalWordUpErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricPositionalWordUpErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricPositionalWordTouchDownUpKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricPositionalWordTouchDownUpKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricPositionalWordTouchDownUpKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricPositionalWordTouchDownDownKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricPositionalWordTouchDownDownKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricPositionalWordTouchDownDownKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityUpErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityUpErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityUpErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDownErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDownErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDownErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceUpErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceUpErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceUpErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceDownErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceDownErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceDownErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteUpErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteUpErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteUpErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteDownErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteDownErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteDownErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityShortWordCharKeyUpErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityShortWordCharKeyDownErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityShortWordCharKeyToCharKeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityShortWordCharKeyTouchDownUpKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityTouchDownUpKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityTouchDownUpKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityTouchDownUpKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceTouchDownUpKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceTouchDownUpKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceTouchDownUpKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteTouchDownUpKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteTouchDownUpKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteTouchDownUpKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityTouchDownDownKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityTouchDownDownKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityTouchDownDownKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityTouchUpDownKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityTouchUpDownKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityTouchUpDownKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricPositionalWordTouchUpDownKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricPositionalWordTouchUpDownKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricPositionalWordTouchUpDownKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityCharKeyToPredictionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityCharKeyToPredictionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityCharKeyToPredictionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityCharKeyToAnyTapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityCharKeyToAnyTapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityCharKeyToAnyTapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityAnyTapToCharKeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityAnyTapToCharKeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityAnyTapToCharKeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceToCharKeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceToCharKeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceToCharKeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityCharKeyToSpaceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityCharKeyToSpaceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityCharKeyToSpaceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceToDeleteKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceToDeleteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceToDeleteKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteToSpaceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteToSpaceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteToSpaceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceToSpaceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceToSpaceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceToSpaceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceToShiftKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceToShiftKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceToShiftKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceTo123KeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceTo123KeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceTo123KeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceToPredictionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceToPredictionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceToPredictionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteToCharKeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteToCharKeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteToCharKeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityCharKeyToDeleteKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityCharKeyToDeleteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityCharKeyToDeleteKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteToDeleteKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteToDeleteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteToDeleteKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteToShiftKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteToShiftKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteToShiftKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteTo123KeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteTo123KeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteTo123KeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityPathErrorDistanceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityPathErrorDistanceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityPathErrorDistanceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityDeleteToPathKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityDeleteToPathKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityDeleteToPathKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityPathToDeleteKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityPathToDeleteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityPathToDeleteKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilitySpaceToPathKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilitySpaceToPathKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilitySpaceToPathKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityPathToSpaceKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityPathToSpaceKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityPathToSpaceKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityPathToPathKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityPathToPathKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityPathToPathKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarMidPathPauseKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarMidPathPauseKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarMidPathPauseKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricPositionalDeleteToDeleteKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricPositionalDeleteToDeleteKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricPositionalDeleteToDeleteKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityAnyTapTo123KeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityAnyTapTo123KeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityAnyTapTo123KeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbabilityCharKeyTo123KeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbabilityCharKeyTo123KeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbabilityCharKeyTo123KeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbability123KeyToAnyTapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbability123KeyToAnyTapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbability123KeyToAnyTapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricProbability123KeyToCharKeyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricProbability123KeyToCharKeyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricProbability123KeyToCharKeyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarlWordBucketAbsolutistKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarlWordBucketAbsolutistKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarlWordBucketAbsolutistKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarlWordBucketDownKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarlWordBucketDownKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarlWordBucketDownKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarlWordBucketDeathKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarlWordBucketDeathKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarlWordBucketDeathKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarlWordBucketAnxietyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarlWordBucketAnxietyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarlWordBucketAnxietyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarlWordBucketAngerKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarlWordBucketAngerKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarlWordBucketAngerKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarlWordBucketFeelKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarlWordBucketFeelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarlWordBucketFeelKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarWordBucketPositiveKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarWordBucketPositiveKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarWordBucketPositiveKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketPositiveKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketPositiveKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketPositiveKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketSadKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketSadKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketSadKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketAnxietyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketAnxietyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketAnxietyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketAngerKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketAngerKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketAngerKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketFeelKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketFeelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketFeelKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketLowEnergyKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketLowEnergyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketLowEnergyKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSRKeyboardMetricScalarEmojiBucketConfusedKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRKeyboardMetricScalarEmojiBucketConfusedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRKeyboardMetricScalarEmojiBucketConfusedKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SensorKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SensorKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VnConvert(uint64_t result, _DWORD *a2, uint64_t a3, int *a4, int *a5)
{
  v5 = *a4;
  if (*a4 >= -1)
  {
    v10 = result;
    v11 = *a5;
    VnCharset = CVnCharsetLib::getVnCharset(VnCharsetLibObj, 7);
    v13 = CVnCharsetLib::getVnCharset(VnCharsetLibObj, v10);
    v14 = (*(*VnCharset + 32))(VnCharset);
    v26 = a2;
    v27 = a2;
    v24 = &unk_283FDA968;
    v28 = v5;
    v29 = v5;
    if (v5 == -1)
    {
      if (v14 == 4)
      {
        v17 = *a2 == 4;
      }

      else
      {
        if (v14 == 2)
        {
          v16 = *a2;
        }

        else
        {
          v16 = *a2;
        }

        v17 = v16 == 0;
      }

      v15 = v17;
    }

    else
    {
      v15 = v5 < 1;
    }

    v25 = v15;
    v30 = 0;
    v20[0] = &unk_283FDA9D8;
    v20[1] = a3;
    v20[2] = a3;
    v21 = 0;
    v22 = v11;
    v23 = 0;
    v31 = 0;
    (**VnCharset)(VnCharset);
    (*(*v13 + 8))(v13);
    result = v24[10](&v24);
    if (!result)
    {
      while (1)
      {
        v32 = 0;
        result = (*(*VnCharset + 16))(VnCharset, &v24, &v32, &v31 + 4);
        if (!result)
        {
          goto LABEL_32;
        }

        v18 = v32;
        if (v32 != -1)
        {
          break;
        }

LABEL_31:
        result = v24[10](&v24);
        if (result)
        {
          goto LABEL_32;
        }
      }

      if (*(VnCharsetLibObj + 100))
      {
        if ((v32 & 1) == 0 && (v32 - 0x10000) < 0xBA)
        {
          v18 = v32 + 1;
        }
      }

      else
      {
        if (!*(VnCharsetLibObj + 96))
        {
LABEL_26:
          if (*(VnCharsetLibObj + 104))
          {
            if ((v18 - 0x10000) <= 0xD4)
            {
              v18 = StdVnRootChar[v18 - 0x10000] + 0x10000;
            }

            v32 = v18;
          }

          (*(*v13 + 24))(v13, v20);
          goto LABEL_31;
        }

        v18 = v32 & ~((v32 - 0x10000) < 0xBA);
      }

      v32 = v18;
      goto LABEL_26;
    }

LABEL_32:
    *a5 = v21;
    *a4 = v29;
  }

  return result;
}

void TI::CP::SearchParameters::set_values_from_dictionary(__CFDictionary const*)::$_0::__invoke(const __CFString *a1, const void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (CFStringCompare(a1, @"GeometryWeight", 0))
  {
    if (CFStringCompare(a1, @"LanguageWeight", 0))
    {
      if (CFStringCompare(a1, @"PathDeviationPower", 0))
      {
        if (CFStringCompare(a1, @"PathDeviationWeight", 0))
        {
          if (CFStringCompare(a1, @"KeyDeviationPower", 0))
          {
            if (CFStringCompare(a1, @"KeyDeviationWeight", 0))
            {
              if (CFStringCompare(a1, @"FirstKeyDeviationWeight", 0))
              {
                if (CFStringCompare(a1, @"InflectionPointKeyDeviationWeight", 0))
                {
                  if (CFStringCompare(a1, @"FarKeyDistance", 0))
                  {
                    if (CFStringCompare(a1, @"SkippedKeyCost", 0))
                    {
                      if (CFStringCompare(a1, @"SkippedInflectionPointCost", 0))
                      {
                        if (CFStringCompare(a1, @"OvershootPower", 0))
                        {
                          if (CFStringCompare(a1, @"OvershootWeight", 0))
                          {
                            if (CFStringCompare(a1, @"TranspositionCost", 0))
                            {
                              if (CFStringCompare(a1, @"FirstKeyPredictionCost", 0))
                              {
                                if (CFStringCompare(a1, @"NonFirstKeyPredictionCost", 0))
                                {
                                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                                  {
                                    v25 = 136315394;
                                    v26 = "operator()";
                                    v27 = 2112;
                                    v28 = a1;
                                    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  SearchParameters initializer: unhandled search parameter %@", &v25, 0x16u);
                                  }

                                  v6 = *MEMORY[0x277D85DE8];
                                  return;
                                }

                                CFGetTypeID(a2);
                                CFBooleanGetTypeID();
                                v24 = *MEMORY[0x277D85DE8];
                                v9 = (a3 + 152);
                              }

                              else
                              {
                                CFGetTypeID(a2);
                                CFBooleanGetTypeID();
                                v23 = *MEMORY[0x277D85DE8];
                                v9 = (a3 + 144);
                              }
                            }

                            else
                            {
                              CFGetTypeID(a2);
                              CFBooleanGetTypeID();
                              v22 = *MEMORY[0x277D85DE8];
                              v9 = (a3 + 128);
                            }
                          }

                          else
                          {
                            CFGetTypeID(a2);
                            CFBooleanGetTypeID();
                            v21 = *MEMORY[0x277D85DE8];
                            v9 = (a3 + 88);
                          }
                        }

                        else
                        {
                          CFGetTypeID(a2);
                          CFBooleanGetTypeID();
                          v20 = *MEMORY[0x277D85DE8];
                          v9 = (a3 + 80);
                        }
                      }

                      else
                      {
                        CFGetTypeID(a2);
                        CFBooleanGetTypeID();
                        v19 = *MEMORY[0x277D85DE8];
                        v9 = (a3 + 96);
                      }
                    }

                    else
                    {
                      CFGetTypeID(a2);
                      CFBooleanGetTypeID();
                      v18 = *MEMORY[0x277D85DE8];
                      v9 = (a3 + 72);
                    }
                  }

                  else
                  {
                    CFGetTypeID(a2);
                    CFBooleanGetTypeID();
                    v17 = *MEMORY[0x277D85DE8];
                    v9 = (a3 + 64);
                  }
                }

                else
                {
                  CFGetTypeID(a2);
                  CFBooleanGetTypeID();
                  v16 = *MEMORY[0x277D85DE8];
                  v9 = (a3 + 56);
                }
              }

              else
              {
                CFGetTypeID(a2);
                CFBooleanGetTypeID();
                v15 = *MEMORY[0x277D85DE8];
                v9 = (a3 + 48);
              }
            }

            else
            {
              CFGetTypeID(a2);
              CFBooleanGetTypeID();
              v14 = *MEMORY[0x277D85DE8];
              v9 = (a3 + 40);
            }
          }

          else
          {
            CFGetTypeID(a2);
            CFBooleanGetTypeID();
            v13 = *MEMORY[0x277D85DE8];
            v9 = (a3 + 32);
          }
        }

        else
        {
          CFGetTypeID(a2);
          CFBooleanGetTypeID();
          v12 = *MEMORY[0x277D85DE8];
          v9 = (a3 + 24);
        }
      }

      else
      {
        CFGetTypeID(a2);
        CFBooleanGetTypeID();
        v11 = *MEMORY[0x277D85DE8];
        v9 = (a3 + 16);
      }
    }

    else
    {
      CFGetTypeID(a2);
      CFBooleanGetTypeID();
      v10 = *MEMORY[0x277D85DE8];
      v9 = (a3 + 8);
    }

    v8 = a2;
  }

  else
  {
    CFGetTypeID(a2);
    CFBooleanGetTypeID();
    v7 = *MEMORY[0x277D85DE8];
    v8 = a2;
    v9 = a3;
  }

  CFNumberGetValue(v8, kCFNumberDoubleType, v9);
}

double TI::CP::Search::key_layout_did_update(TI::Favonius::KeyboardLayout **this)
{
  result = TI::Favonius::KeyboardLayout::median_key_half_width(this[1]);
  *(this + 39) = result;
  *(this + 40) = 1.0 / result;
  return result;
}

void TI::CP::Search::set_candidate_refinery(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 200);
  *(a1 + 192) = v3;
  *(a1 + 200) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void TI::CP::Search::generate_candidates(uint64_t a1, uint64_t *a2, int a3)
{
  v183[2] = *MEMORY[0x277D85DE8];
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 4) >= 2)
  {
    v3 = a1;
    v168 = *(a1 + 16);
    v169 = *(a1 + 32);
    v170 = *(a1 + 48);
    v156 = a1 + 56;
    std::vector<TI::CP::PathSample>::vector[abi:nn200100](v171, (a1 + 56));
    std::vector<unsigned int>::vector[abi:nn200100](v172, (v3 + 80));
    std::vector<TI::CP::PathSample>::vector[abi:nn200100](v173, (v3 + 104));
    std::vector<unsigned int>::vector[abi:nn200100](__p, (v3 + 128));
    v175 = *(v3 + 152);
    v176 = *(v3 + 160);
    v4 = TI::CP::PathResampler::finalize((v3 + 16));
    v158 = (v3 + 328);
    v155 = v3 + 152;
    v5 = -1431655765 * ((*(v3 + 336) - *(v3 + 328)) >> 3) - 1;
    if (v4 < v5)
    {
      v6 = v4;
      std::vector<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::resize(v158, v4 + 1);
      std::vector<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::resize((v3 + 376), v6);
      v5 = v6;
    }

    v154 = v5;
    while (1)
    {
      v8 = *(v3 + 328);
      v7 = *(v3 + 336);
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
      v10 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 64) - *(v3 + 56)) >> 4);
      if (v9 - 1 >= v10 - 1)
      {
        break;
      }

      v11 = *(v3 + 344);
      if (v7 >= v11)
      {
        v13 = v9 + 1;
        if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v181 = v3 + 328;
        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v15);
        }

        v16 = 24 * v9;
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        v12 = 24 * v9 + 24;
        v17 = *(v3 + 328);
        v18 = *(v3 + 336) - v17;
        v19 = (24 * v9 - v18);
        memcpy(v19, v17, v18);
        v20 = *(v3 + 328);
        *(v3 + 328) = v19;
        *(v3 + 336) = v12;
        v21 = *(v3 + 344);
        *(v3 + 344) = 0;
        v179 = v20;
        v180 = v21;
        valuePtr = *&v20;
        v178 = *&v20;
        std::__split_buffer<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::~__split_buffer(&valuePtr);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        v12 = (v7 + 3);
        v7[2] = 0;
      }

      *(v3 + 336) = v12;
      TI::CP::Search::step_search(v3, v9 - 1, 0, (v12 - 24));
    }

    v22 = v10 - 1;
    std::vector<std::shared_ptr<TI::CP::SearchNode const>>::clear[abi:nn200100]((v3 + 352));
    TI::CP::Search::step_search(v3, v22, 1, (v3 + 352));
    v23 = *(v3 + 352);
    v24 = *(v3 + 360);
    v25 = a3;
    v26 = a2;
    if (v23 != v24)
    {
      v27 = 0x1CAC083126E978D5;
      v28 = *MEMORY[0x277CBECE8];
      v161 = v3;
      v157 = *(v3 + 360);
      do
      {
        if ((*(**(*v23 + 8) + 64))(*(*v23 + 8)))
        {
          v29 = v3;
          v159 = v23;
          v30 = *v23;
          v31 = *(v29 + 184);
          if (v31)
          {
            atomic_fetch_add(v31 + 2, 1u);
          }

          v32 = ((v26[1] - *v26) >> 3) * v27;
          v160 = v31;
          (*(*v31 + 16))(v31, *(v30 + 8), v161 + 208, v26);
          if ((*(*v30 + 144))(v30))
          {
            v33 = 2;
          }

          else
          {
            v33 = 0;
          }

          v34 = (*(*v30 + 88))(v30);
          v35 = v33 | 4;
          if (!v34)
          {
            v35 = v33;
          }

          v166 = v35;
          v36 = *v26;
          if (((v26[1] - *v26) >> 3) * v27 > v32)
          {
            v37 = v32;
            do
            {
              v38 = (v36 + 1000 * v37);
              v38[121] |= v166;
              if ((*(*v30 + 152))(v30))
              {
                *(v38 + 960) = 1;
                v39 = v38[1] + 240 * *v38;
                *(v39 - 96) = (*(*v30 + 152))(v30);
              }

              v40 = (*(**(v30 + 8) + 88))(*(v30 + 8));
              v41 = (*(**(v30 + 8) + 80))(*(v30 + 8));
              v42 = v40 + logf(v41);
              if ((LODWORD(v42) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                v43 = *(v30 + 3);
                v44 = *(v43 + 440);
                v45 = v30[9];
                v46 = (*(**(v30 + 8) + 80))(*(v30 + 8));
                v47 = logf(v46);
                v48 = *v38;
                v49 = 1.0;
                v50 = 1.0;
                if (*v38)
                {
                  v51 = v38[1];
                  v52 = (v51 + 48);
                  v53 = 240 * v48;
                  do
                  {
                    v54 = *v52;
                    v52 += 60;
                    v50 = v50 * v54;
                    v53 -= 240;
                  }

                  while (v53);
                  v55 = 240 * v48;
                  v56 = v38[1];
                  while ((*(v56 + 105) & 1) == 0)
                  {
                    v56 += 240;
                    v55 -= 240;
                    if (!v55)
                    {
                      goto LABEL_41;
                    }
                  }

                  if (v56 != v51 + 240 * v48)
                  {
LABEL_49:
                    v50 = v50 * 0.8;
                    goto LABEL_50;
                  }

LABEL_41:
                  if (v48)
                  {
                    v57 = 240 * v48 - 240;
                    v58 = (v51 + 224);
                    do
                    {
                      v60 = *v58;
                      v58 += 30;
                      v59 = v60;
                      if (v60)
                      {
                        v61 = 1;
                      }

                      else
                      {
                        v61 = v57 == 0;
                      }

                      v57 -= 240;
                    }

                    while (!v61);
                    if (v59)
                    {
                      goto LABEL_49;
                    }
                  }
                }

LABEL_50:
                v62 = v44;
                v63 = v45 + *(v43 + 440) * v47 - (v42 * v62);
                v64 = v42 + logf(v50);
                *(v38 + 187) = v63;
                *(v38 + 188) = v64;
                *(v38 + 189) = 0;
                *(v38 + 190) = v62;
                *(v38 + 191) = -8388608;
                v65 = v63 + (v62 * (v64 + 0.0));
                *(v38 + 186) = v65;
                v67 = v30[14];
                v66 = v30[15];
                v68 = v30[16];
                v69 = *(*(v30 + 3) + 440);
                (*(**(v30 + 8) + 80))(*(v30 + 8));
                if (*v38)
                {
                  v71 = 240 * *v38;
                  v72 = (v38[1] + 48);
                  v49 = 1.0;
                  do
                  {
                    v73 = *v72;
                    v72 += 60;
                    v49 = v49 * v73;
                    v71 -= 240;
                  }

                  while (v71);
                }

                v74 = logf(v70 * v49);
                v75 = *(v30 + 3);
                v77 = *(v75 + 56);
                v76 = *(v75 + 64);
                v78 = v77 == v76 ? 0.0 : *(v76 - 16);
                v79 = v67 + v66;
                v80 = v68 / v69 + v74;
                v81 = (*(*v30 + 160))(v30);
                *(v38 + 187) = v79;
                *(v38 + 188) = v80;
                *(v38 + 189) = 0;
                *(v38 + 190) = v62;
                *(v38 + 191) = -8388608;
                *(v38 + 192) = v78;
                *(v38 + 193) = v81;
                if (v25 >= 1)
                {
                  v165 = v32;
                  Mutable = CFDictionaryCreateMutable(v28, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  valuePtr = v79;
                  v83 = CFNumberCreate(v28, kCFNumberDoubleType, &valuePtr);
                  CFDictionarySetValue(Mutable, @"geometry_score", v83);
                  if (v83)
                  {
                    CFRelease(v83);
                  }

                  valuePtr = v80;
                  v84 = CFNumberCreate(v28, kCFNumberDoubleType, &valuePtr);
                  CFDictionarySetValue(Mutable, @"word_score", v84);
                  if (v84)
                  {
                    CFRelease(v84);
                  }

                  valuePtr = v62;
                  v85 = CFNumberCreate(v28, kCFNumberDoubleType, &valuePtr);
                  CFDictionarySetValue(Mutable, @"language_power", v85);
                  if (v85)
                  {
                    CFRelease(v85);
                  }

                  valuePtr = v65;
                  v86 = CFNumberCreate(v28, kCFNumberDoubleType, &valuePtr);
                  CFDictionarySetValue(Mutable, @"final_log_score", v86);
                  if (v86)
                  {
                    CFRelease(v86);
                  }

                  valuePtr = expf(*(v38 + 186));
                  v87 = CFNumberCreate(v28, kCFNumberDoubleType, &valuePtr);
                  CFDictionarySetValue(Mutable, @"final_score", v87);
                  if (v87)
                  {
                    CFRelease(v87);
                  }

                  CFDictionarySetValue(Mutable, @"source", @"favonius");
                  LODWORD(v32) = v165;
                  if (v25 != 1)
                  {
                    theDict = Mutable;
                    valuePtr = 0.0;
                    v178 = 0.0;
                    v179 = 0;
                    TI::CP::SearchNode::explain_score(v30, &valuePtr);
                    v88 = *(v30 + 3);
                    v89 = (*(**(v30 + 8) + 80))(*(v30 + 8));
                    v90 = *(v88 + 440) * logf(v89);
                    v91 = v178;
                    if (*&v178 < v179)
                    {
                      **&v178 = 9;
                      *(*&v91 + 8) = 0;
                      v92 = *MEMORY[0x277CBF348];
                      *(*&v91 + 16) = *MEMORY[0x277CBF348];
                      *(*&v91 + 32) = v92;
                      *(*&v91 + 48) = v90;
                      v93 = *&v91 + 56;
                      v94 = 0x277CBE000;
                      goto LABEL_80;
                    }

                    v95 = valuePtr;
                    v96 = *&v178 - *&valuePtr;
                    v97 = 0x6DB6DB6DB6DB6DB7 * ((*&v178 - *&valuePtr) >> 3);
                    v98 = v97 + 1;
                    v94 = 0x277CBE000uLL;
                    if ((v97 + 1) > 0x492492492492492)
                    {
                      goto LABEL_157;
                    }

                    if (0xDB6DB6DB6DB6DB6ELL * ((v179 - *&valuePtr) >> 3) > v98)
                    {
                      v98 = 0xDB6DB6DB6DB6DB6ELL * ((v179 - *&valuePtr) >> 3);
                    }

                    if ((0x6DB6DB6DB6DB6DB7 * ((v179 - *&valuePtr) >> 3)) >= 0x249249249249249)
                    {
                      v99 = 0x492492492492492;
                    }

                    else
                    {
                      v99 = v98;
                    }

                    if (v99)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::ScoreComponent>>(v99);
                    }

                    v100 = 8 * ((*&v178 - *&valuePtr) >> 3);
                    *v100 = 9;
                    *(v100 + 8) = 0;
                    v101 = *MEMORY[0x277CBF348];
                    *(v100 + 16) = *MEMORY[0x277CBF348];
                    *(v100 + 32) = v101;
                    *(v100 + 48) = v90;
                    v93 = 56 * v97 + 56;
                    *&v102 = v100 - v96;
                    memcpy((v100 - v96), *&v95, v96);
                    v103 = valuePtr;
                    valuePtr = v102;
                    v178 = *&v93;
                    v179 = 0;
                    if (v103 != 0.0)
                    {
                      operator delete(*&v103);
                    }

LABEL_80:
                    v178 = *&v93;
                    if (*v38)
                    {
                      v104 = 240 * *v38;
                      v105 = (v38[1] + 48);
                      v106 = 1.0;
                      do
                      {
                        v107 = *v105;
                        v105 += 60;
                        v106 = v106 * v107;
                        v104 -= 240;
                      }

                      while (v104);
                    }

                    else
                    {
                      v106 = 1.0;
                    }

                    v108 = *(*(v30 + 3) + 440) * logf(v106);
                    if (v93 < v179)
                    {
                      *v93 = 10;
                      *(v93 + 8) = 0;
                      v109 = *MEMORY[0x277CBF348];
                      *(v93 + 16) = *MEMORY[0x277CBF348];
                      *(v93 + 32) = v109;
                      *(v93 + 48) = v108;
                      v110 = v93 + 56;
                      goto LABEL_97;
                    }

                    v111 = valuePtr;
                    v112 = v93 - *&valuePtr;
                    v113 = 0x6DB6DB6DB6DB6DB7 * ((v93 - *&valuePtr) >> 3);
                    v114 = v113 + 1;
                    if ((v113 + 1) > 0x492492492492492)
                    {
LABEL_157:
                      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
                    }

                    if (0xDB6DB6DB6DB6DB6ELL * ((v179 - *&valuePtr) >> 3) > v114)
                    {
                      v114 = 0xDB6DB6DB6DB6DB6ELL * ((v179 - *&valuePtr) >> 3);
                    }

                    if ((0x6DB6DB6DB6DB6DB7 * ((v179 - *&valuePtr) >> 3)) >= 0x249249249249249)
                    {
                      v115 = 0x492492492492492;
                    }

                    else
                    {
                      v115 = v114;
                    }

                    if (v115)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<TI::CP::ScoreComponent>>(v115);
                    }

                    v116 = 56 * v113;
                    *v116 = 10;
                    *(v116 + 8) = 0;
                    v117 = *MEMORY[0x277CBF348];
                    *(v116 + 16) = *MEMORY[0x277CBF348];
                    *(v116 + 32) = v117;
                    *(v116 + 48) = v108;
                    v110 = 56 * v113 + 56;
                    *&v118 = v116 - v112;
                    memcpy((v116 - v112), *&v111, v112);
                    v119 = valuePtr;
                    valuePtr = v118;
                    v178 = *&v110;
                    v179 = 0;
                    if (v119 != 0.0)
                    {
                      operator delete(*&v119);
                    }

LABEL_97:
                    v178 = *&v110;
                    v120 = [MEMORY[0x277CBEB18] array];
                    v122 = valuePtr;
                    v121 = v178;
                    v167 = v178;
                    while (2)
                    {
                      if (*&v122 == *&v121)
                      {
                        Mutable = theDict;
                        CFDictionarySetValue(theDict, @"components", v120);
                        if (v120)
                        {
                          CFRelease(v120);
                        }

                        v25 = a3;
                        v26 = a2;
                        LODWORD(v32) = v165;
                        if (valuePtr != 0.0)
                        {
                          v178 = valuePtr;
                          operator delete(*&valuePtr);
                        }

                        goto LABEL_140;
                      }

                      v123 = [*(v94 + 2872) dictionary];
                      v124 = [MEMORY[0x277CCABB0] numberWithDouble:*(*&v122 + 48)];
                      [v123 setObject:v124 forKeyedSubscript:@"score"];

                      v125 = **&v122;
                      if (**&v122 > 4)
                      {
                        if (v125 > 7)
                        {
                          if (v125 == 10)
                          {
                            v144 = v123;
                            v145 = @"LanguagePartialProb";
                          }

                          else
                          {
                            if (v125 != 9)
                            {
                              if (v125 == 8)
                              {
                                [v123 setObject:@"LanguageCharacter" forKeyedSubscript:@"type"];
                                v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*&v122 + 4)];
                                [v123 setObject:v130 forKeyedSubscript:@"sample"];

                                v182[0] = @"x";
                                v131 = [MEMORY[0x277CCABB0] numberWithDouble:*(*&v122 + 16)];
                                v182[1] = @"y";
                                v183[0] = v131;
                                [MEMORY[0x277CCABB0] numberWithDouble:*(*&v122 + 24)];
                                v132 = v28;
                                v134 = v133 = v27;
                                v183[1] = v134;
                                v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:2];
                                [v123 setObject:v135 forKeyedSubscript:@"point"];

                                v27 = v133;
                                v28 = v132;
                                v94 = 0x277CBE000;

                                v136 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", *(*&v122 + 8)];
                                [v123 setObject:v136 forKeyedSubscript:@"character"];
                              }

                              goto LABEL_133;
                            }

                            v144 = v123;
                            v145 = @"LanguageTermination";
                          }

                          [v144 setObject:v145 forKeyedSubscript:@"type"];
                        }

                        else
                        {
                          if (v125 == 5)
                          {
                            v128 = v123;
                            v129 = @"KeySubstitution";
                          }

                          else
                          {
                            if (v125 != 6)
                            {
                              v126 = v123;
                              v127 = @"Transposition";
                              goto LABEL_124;
                            }

                            v128 = v123;
                            v129 = @"KeyPrediction";
                          }

LABEL_128:
                          [v128 setObject:v129 forKeyedSubscript:@"type"];
                          v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*&v122 + 4)];
                          [v123 setObject:v149 forKeyedSubscript:@"sample"];

                          TI::CP::ScoreComponentSerializer::serialize_point(v183, *(*&v122 + 16));
                          v140 = v183[0];
                          v141 = v123;
                          v142 = v183[0];
                          v143 = @"point";
LABEL_129:
                          [v141 setObject:v142 forKeyedSubscript:v143];
                          if (v140)
                          {
                            CFRelease(v140);
                          }
                        }

LABEL_133:
                        v150 = v123;
                        v151 = v150;
                        if (v150)
                        {
                          CFRelease(v150);
                        }

                        [v120 addObject:v151];

                        *&v122 += 56;
                        v121 = v167;
                        continue;
                      }

                      break;
                    }

                    if (v125 <= 1)
                    {
                      if (!v125)
                      {
                        [v123 setObject:@"KeyDeviation" forKeyedSubscript:@"type"];
                        v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*&v122 + 4)];
                        [v123 setObject:v137 forKeyedSubscript:@"sample"];

                        TI::CP::ScoreComponentSerializer::serialize_point(v183, *(*&v122 + 16));
                        v138 = v183[0];
                        [v123 setObject:v183[0] forKeyedSubscript:@"point"];
                        if (v138)
                        {
                          CFRelease(v138);
                        }

                        TI::CP::ScoreComponentSerializer::serialize_point(v183, *(*&v122 + 32));
                        v139 = v183[0];
                        [v123 setObject:v183[0] forKeyedSubscript:@"keyPoint"];
                        if (v139)
                        {
                          CFRelease(v139);
                        }

                        TI::CP::ScoreComponentSerializer::serialize_point(v183, *(*&v122 + 32));
                        v140 = v183[0];
                        v141 = v123;
                        v142 = v183[0];
                        v143 = @"keyPoint";
                        goto LABEL_129;
                      }

                      if (v125 != 1)
                      {
                        goto LABEL_133;
                      }

                      v126 = v123;
                      v127 = @"PathDeviation";
                    }

                    else if (v125 == 2)
                    {
                      v126 = v123;
                      v127 = @"Loop";
                    }

                    else
                    {
                      if (v125 != 3)
                      {
                        v128 = v123;
                        v129 = @"SkippedKey";
                        goto LABEL_128;
                      }

                      v126 = v123;
                      v127 = @"Overshoot";
                    }

LABEL_124:
                    [v126 setObject:v127 forKeyedSubscript:@"type"];
                    v146 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*&v122 + 4)];
                    [v123 setObject:v146 forKeyedSubscript:@"sample1"];

                    TI::CP::ScoreComponentSerializer::serialize_point(v183, *(*&v122 + 16));
                    v147 = v183[0];
                    [v123 setObject:v183[0] forKeyedSubscript:@"point1"];
                    if (v147)
                    {
                      CFRelease(v147);
                    }

                    v148 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*&v122 + 8)];
                    [v123 setObject:v148 forKeyedSubscript:@"sample2"];

                    TI::CP::ScoreComponentSerializer::serialize_point(v183, *(*&v122 + 32));
                    v140 = v183[0];
                    v141 = v123;
                    v142 = v183[0];
                    v143 = @"point2";
                    goto LABEL_129;
                  }

LABEL_140:
                  KB::Candidate::add_sources_info(v38, @"favonius", Mutable);
                  *(v38 + 248) = 2;
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }
                }
              }

              v36 = *v26;
              LODWORD(v32) = v32 + 1;
              v37 = v32;
            }

            while (((v26[1] - *v26) >> 3) * v27 > v32);
          }

          v152 = atomic_load(v160 + 2);
          v24 = v157;
          if (v152 == 1)
          {
            (*(*v160 + 8))();
          }

          else
          {
            atomic_fetch_add(v160 + 2, 0xFFFFFFFF);
          }

          v3 = v161;
          v23 = v159;
        }

        v23 += 2;
      }

      while (v23 != v24);
    }

    std::vector<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::resize(v158, v154 + 1);
    std::vector<std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>>::resize((v3 + 376), v154);
    *(v3 + 16) = v168;
    *(v3 + 32) = v169;
    *(v3 + 48) = v170;
    TI::CP::Path::operator=(v156, v171);
    TI::CP::Path::operator=(v3 + 104, v173);
    *v155 = v175;
    *(v155 + 8) = v176;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v173[0])
    {
      v173[1] = v173[0];
      operator delete(v173[0]);
    }

    if (v172[0])
    {
      v172[1] = v172[0];
      operator delete(v172[0]);
    }

    if (v171[0])
    {
      v171[1] = v171[0];
      operator delete(v171[0]);
    }
  }

  v153 = *MEMORY[0x277D85DE8];
}

void std::vector<std::vector<std::shared_ptr<TI::CP::SearchNode const>>>::resize(void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = &v3[24 * a2];
      while (v4 != v11)
      {
        v4 -= 3;
        v13[0] = v4;
        std::vector<std::shared_ptr<TI::CP::SearchNode const>>::__destroy_vector::operator()[abi:nn200100](v13);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13[4] = a1;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<language_modeling::v1::TokenMetadata>>>(v10);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v12);
    a1[1] = v4 + v12;
  }
}