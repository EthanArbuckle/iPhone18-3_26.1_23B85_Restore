void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t TIInputManager::set_input_manager_specialization(TIInputManager *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 73) = v4;
  v5 = *(a1 + 74);
  *(a1 + 74) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  result = *(a1 + 28);
  if (result)
  {
    (*(*result + 168))(&v17);
    result = v17;
    if (v17)
    {
      v7 = atomic_load(v17 + 2);
      if (v7 == 1)
      {
        (*(*v17 + 40))();
      }

      else
      {
        atomic_fetch_add(v17 + 2, 0xFFFFFFFF);
      }

      v8 = *(a1 + 73);
      v9 = *TIInputManager::favonius_layout(a1);
      v16 = v9;
      if (v9)
      {
        atomic_fetch_add(v9, 1u);
      }

      (*(*v8 + 16))(&v17, v8, &v16);
      if (v16)
      {
        WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v16);
      }

      (*(**(a1 + 28) + 168))(&v15);
      v10 = v17;
      v17 = 0;
      v14 = v10;
      (*(*v15 + 24))(v15, &v14);
      if (v14)
      {
        v11 = atomic_load(v14 + 2);
        if (v11 == 1)
        {
          (*(*v14 + 8))();
        }

        else
        {
          atomic_fetch_add(v14 + 2, 0xFFFFFFFF);
        }
      }

      if (v15)
      {
        v12 = atomic_load(v15 + 2);
        if (v12 == 1)
        {
          (*(*v15 + 40))();
        }

        else
        {
          atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
        }
      }

      result = v17;
      if (v17)
      {
        v13 = atomic_load(v17 + 2);
        if (v13 == 1)
        {
          return (*(*v17 + 8))();
        }

        else
        {
          atomic_fetch_add(v17 + 2, 0xFFFFFFFF);
        }
      }
    }
  }

  return result;
}

unsigned int *WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(unsigned int *result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    KB::String::~String((result + 52));
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy((v1 + 44), *(v1 + 23));
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy((v1 + 38), *(v1 + 20));
    std::__hash_table<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<KB::ByteString>,std::equal_to<KB::ByteString>,true>,std::__unordered_map_equal<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<KB::ByteString>,std::hash<KB::ByteString>,true>,std::allocator<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::~__hash_table((v1 + 18));
    std::__hash_table<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::~__hash_table((v1 + 8));
    v3 = (v1 + 2);
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](&v3);
    return MEMORY[0x29EDA31E0](v1, 0x10B0C409EA53459);
  }

  else
  {
    atomic_fetch_add(result, 0xFFFFFFFF);
  }

  return result;
}

void std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<float,int>,std::__map_value_compare<float,std::__value_type<float,int>,std::less<float>,true>,std::allocator<std::__value_type<float,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<KB::ByteString>,std::equal_to<KB::ByteString>,true>,std::__unordered_map_equal<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<KB::ByteString>,std::hash<KB::ByteString>,true>,std::allocator<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<KB::ByteString>,std::equal_to<KB::ByteString>,true>,std::__unordered_map_equal<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<KB::ByteString>,std::hash<KB::ByteString>,true>,std::allocator<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<KB::ByteString>,std::equal_to<KB::ByteString>,true>,std::__unordered_map_equal<KB::ByteString,std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<KB::ByteString>,std::hash<KB::ByteString>,true>,std::allocator<std::__hash_value_type<KB::ByteString,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::__deallocate_node(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<KB::ByteString const,WTF::RefPtr<TI::Favonius::LayoutKey>>::~pair(v2 + 8);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t WTF::RefCounted<TI::Favonius::Key>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    if (*(result + 40) >= 0xFu)
    {
      v3 = *(result + 48);
      if (v3)
      {
        MEMORY[0x29EDA31C0](v3, 0x1000C8077774924);
      }
    }

    KB::String::~String((v1 + 8));

    JUMPOUT(0x29EDA31E0);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::__deallocate_node(__p);
  }
}

void std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<WTF::RefPtr<TI::Favonius::LayoutKey>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 8)
  {
    v4 = *(i - 8);
    result = v4;
    if (v4)
    {
      result = WTF::RefCounted<TI::Favonius::Key>::deref(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<KB::InputManagerSpecialization_fr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2524B70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA31E0);
}

void *std::vector<unsigned int>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void _GLOBAL__sub_I_TIKeyboardFeatureSpecialization_fr_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA1B000);

  objc_autoreleasePoolPop(v0);
}

KB::InputManagerSpecialization_fr *KB::InputManagerSpecialization_fr::InputManagerSpecialization_fr(KB::InputManagerSpecialization_fr *this, const __CFLocale *a2, const KB::String *a3)
{
  v5 = KB::InputManagerSpecialization::InputManagerSpecialization(this, a2);
  *v5 = &unk_2A2524BA8;
  MEMORY[0x29EDA30F0](v5 + 2, a3);
  return this;
}

{
  v5 = KB::InputManagerSpecialization::InputManagerSpecialization(this, a2);
  *v5 = &unk_2A2524BA8;
  MEMORY[0x29EDA30F0](v5 + 2, a3);
  return this;
}

void KB::InputManagerSpecialization_fr::~InputManagerSpecialization_fr(KB::InputManagerSpecialization_fr *this)
{
  *this = &unk_2A2524BA8;
  KB::String::~String((this + 16));

  KB::InputManagerSpecialization::~InputManagerSpecialization(this);
}

{
  *this = &unk_2A2524BA8;
  KB::String::~String((this + 16));
  KB::InputManagerSpecialization::~InputManagerSpecialization(this);

  JUMPOUT(0x29EDA31E0);
}

unsigned int **WTF::RefPtr<KB::InputSegmentFilter>::~RefPtr(unsigned int **a1)
{
  v2 = *a1;
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

  return a1;
}

void std::__shared_ptr_emplace<KB::CandidateFilter_fr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2524C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA31E0);
}

void KB::CandidateFilter_fr::filter_candidates(int a1, uint64_t a2, KB::Candidate *this, uint64_t a4)
{
  v6 = *(this + 792);
  if ((v6 - 3) < 4 || v6 == 1)
  {
    v17 = v4;
    v18 = v5;
    v10 = KB::Candidate::string(this);
    v11 = KB::String::count(v10);
    v13 = *a2;
    v12 = *(a2 + 8);
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 0x40000000;
    v15[2] = ___ZNK2KB18CandidateFilter_fr17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke;
    v15[3] = &__block_descriptor_tmp_0;
    v16 = v11;
    v15[4] = a4;
    v14 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v13, v12, v15);
    std::vector<KB::Candidate>::erase(a2, v14, *(a2 + 8));
  }
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

BOOL ___ZNK2KB18CandidateFilter_fr17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke(uint64_t a1, KB::Candidate *this)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v4 = KB::Candidate::string(this);
  v5 = KB::String::count(v4);
  v6 = *(a1 + 40);
  if (v5 > v6 && KB::CandidateFilterResources::debug_stream(*(a1 + 32)))
  {
    v7 = KB::CandidateFilterResources::debug_stream(*(a1 + 32));
    KB::Candidate::capitalized_string(&v13, this);
    v9 = v14;
    if (!v14)
    {
      v9 = v15;
    }

    if (v13)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    KB::append_format(v7, "[%s] removed by %s\n", v8, v10, "virtual void KB::CandidateFilter_fr::filter_candidates(CandidateCollection &, const CandidateFilterLookupContext &, const CandidateFilterResources &) const_block_invoke");
    KB::String::~String(&v13);
  }

  result = v5 > v6;
  v12 = *MEMORY[0x29EDCA608];
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
      MEMORY[0x29EDA3120](v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
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

unsigned __int16 *std::pair<KB::ByteString const,WTF::RefPtr<TI::Favonius::LayoutKey>>::~pair(unsigned __int16 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::Key>::deref(v2);
  }

  if (*a1 >= 0xFu)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      MEMORY[0x29EDA31C0](v3, 0x1000C8077774924);
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,WTF::RefPtr<TI::Favonius::LayoutKey>>>>::__deallocate_node(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[3];
    if (v3)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v3);
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

unsigned int *KB::InputManagerSpecialization_fr::create_input_segment_filter@<X0>(uint64_t a1@<X0>, TI::Favonius::KeyboardLayout **a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = a1 + 32;
  if (!v7)
  {
    v7 = a1 + 32;
  }

  *&v19 = v7;
  DWORD2(v19) = 0;
  HIDWORD(v19) = v5;
  LODWORD(v20) = 0;
  KB::String::iterator::initialize(&v19);
  v9 = *v6;
  v10 = *(v6 + 1);
  if (!v10)
  {
    v10 = v8;
  }

  v15 = v10;
  v16 = v9;
  v17 = v9;
  v18 = 0;
  KB::String::iterator::initialize(&v15);
  v21 = v19;
  *v22 = v20;
  v11 = v16;
  while (DWORD2(v21) != v11)
  {
    TI::Favonius::KeyboardLayout::key_for_char(*a2);
    if (v23)
    {
      WTF::RefCounted<TI::Favonius::Key>::deref(v23);
      operator new();
    }

    KB::String::iterator::operator++();
  }

  v12 = *a2;
  *a2 = 0;
  v14 = v12;
  KB::InputManagerSpecialization::create_input_segment_filter(a3);
  result = v14;
  if (v14)
  {
    return WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }

  return result;
}

void KB::InputManagerSpecialization::create_input_segment_filter(void *a1@<X8>)
{
  {
    __cxa_atexit(WTF::RefPtr<KB::InputSegmentFilter>::~RefPtr, &KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter, &dword_29EA1B000);
  }

  if (KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once != -1)
  {
    dispatch_once(&KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once, &__block_literal_global_0);
  }

  v2 = KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter;
  *a1 = KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
  }
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

void operator new()
{
    ;
  }
}