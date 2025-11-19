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

void TIInputManager_vi::TIInputManager_vi(uint64_t a1, int a2, uint64_t a3)
{
  v5 = TIInputManager::TIInputManager();
  *v5 = &unk_2A252ED88;
  *(v5 + 756) = a2;
  std::__function::__value_func<KB::String ()(KB::String const&)>::__value_func[abi:nn200100](v5 + 760, a3);
  operator new();
}

uint64_t std::__function::__value_func<KB::String ()(KB::String const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<KB::CandidateFilter_vi>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A252EBA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA5A20);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<KB::InputManagerSpecialization_vi>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A252EBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA5A20);
}

void KB::InputManagerSpecialization_vi::~InputManagerSpecialization_vi(KB::InputManagerSpecialization_vi *this)
{
  KB::InputManagerSpecialization::~InputManagerSpecialization(this);

  JUMPOUT(0x29EDA5A20);
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
    return MEMORY[0x29EDA5A20](v1, 0x10B0C409EA53459);
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
        MEMORY[0x29EDA5A00](v3, 0x1000C8077774924);
      }
    }

    KB::String::~String((v1 + 8));

    JUMPOUT(0x29EDA5A20);
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

uint64_t std::__function::__value_func<KB::String ()(KB::String const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _GLOBAL__sub_I_TIKeyboardInputManager_vi_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA7F000);

  objc_autoreleasePoolPop(v0);
}

void **std::vector<KB::String>::~vector[abi:nn200100](void **a1)
{
  v3 = a1;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v3);
  return a1;
}

uint64_t *KB::CandidateFilter_vi::filter_candidates(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  result = v3;
  if (v3 != v4)
  {
    v6 = std::remove_if[abi:nn200100]<std::__wrap_iter<KB::Candidate *>,BOOL({block_pointer})(KB::Candidate const&)>(v3, v4, &__block_literal_global_1);
    v7 = *(a2 + 8);

    return std::vector<KB::Candidate>::erase(a2, v6, v7);
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

uint64_t ___ZNK2KB18CandidateFilter_vi17filter_candidatesERNS_19CandidateCollectionERKNS_28CandidateFilterLookupContextERKNS_24CandidateFilterResourcesE_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = WORDS_TO_FILTER;
  v3 = *algn_2A1A8C908;
  if (WORDS_TO_FILTER == *algn_2A1A8C908)
  {
    v5 = 0;
  }

  else
  {
    do
    {
      MEMORY[0x29EDA5910](v8, v2);
      v5 = KB::String::equal(*(a2 + 8), v8);
      KB::String::~String(v8);
      if (v5)
      {
        break;
      }

      v2 += 32;
    }

    while (v2 != v3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
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
      MEMORY[0x29EDA5940](v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String const*,KB::String const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<KB::String>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<KB::String>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(a1, a2);
  }

  std::vector<KB::String>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::String>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<KB::String>::__throw_length_error[abi:nn200100]();
}

void std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        KB::String::~String((v4 - 32));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
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

uint64_t _GLOBAL__sub_I_TICandidateFilter_vi_cpp()
{
  v3 = *MEMORY[0x29EDCA608];
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA7F000);
  MEMORY[0x29EDA5900](v2, "ddi");
  WORDS_TO_FILTER = 0;
  *algn_2A1A8C908 = 0;
  qword_2A1A8C910 = 0;
  std::vector<KB::String>::__init_with_size[abi:nn200100]<KB::String const*,KB::String const*>(&WORDS_TO_FILTER, v2, &v3, 1uLL);
  KB::String::~String(v2);
  result = __cxa_atexit(std::vector<KB::String>::~vector[abi:nn200100], &WORDS_TO_FILTER, &dword_29EA7F000);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void TIInputManager_vi::create_quality_filter(uint64_t a1, uint64_t a2, void *a3)
{
  std::vector<KB::FilterFlag>::vector[abi:nn200100](__p, a3);
  TIInputManager::create_quality_filter();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  memset(v4, 0, sizeof(v4));
  std::vector<std::shared_ptr<KB::CandidateFilter>>::push_back[abi:nn200100](v4, &v6);
  std::vector<std::shared_ptr<KB::CandidateFilter>>::push_back[abi:nn200100](v4, (a1 + 792));
  operator new();
}

void **std::vector<std::shared_ptr<KB::CandidateFilter>>::push_back[abi:nn200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<KB::String>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::CandidateFilter>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<KB::CandidateFilter>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void TIInputManager_vi::filter_pre_lookup_input(TIInputManager_vi *this@<X0>, const KB::String *a2@<X1>, const KB::String *a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  MEMORY[0x29EDA5910](a3, a2);
  v5 = *(this + 189);
  if (v5 == 3)
  {
    TIInputManager_vi::viqr_filter_pre_lookup_input(a3, v7);
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    TIInputManager_vi::vni_filter_pre_lookup_input(a3, v7);
LABEL_5:
    KB::String::operator=();
    KB::String::~String(v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void TIInputManager_vi::vni_filter_pre_lookup_input(const KB::String *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  if (!v4)
  {
    v4 = a1 + 16;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_29EA84825;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v5);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v20;
  if ((v20 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (i = (__p + v10); v11 != i; i = (__p[0] + __p[1]))
  {
    v13 = *v11;
    if (v13 > 0x54)
    {
      if (*v11 > 0x64u)
      {
        switch(v13)
        {
          case 'e':
LABEL_26:
            v6 = 101;
            break;
          case 'o':
LABEL_27:
            v6 = 111;
LABEL_28:
            v7 = 119;
            break;
          case 'u':
            goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 'U':
            goto LABEL_28;
          case 'a':
LABEL_25:
            v6 = 97;
            v8 = 119;
            break;
          case 'd':
LABEL_20:
            v9 = 100;
            break;
        }
      }
    }

    else
    {
      v14 = v13 - 49;
      v15 = 0;
      LOBYTE(v13) = 115;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      switch(v14)
      {
        case 0u:
          goto LABEL_36;
        case 1u:
          LOBYTE(v13) = 102;
          goto LABEL_36;
        case 2u:
          LOBYTE(v13) = 114;
          goto LABEL_36;
        case 3u:
          LOBYTE(v13) = 120;
          goto LABEL_36;
        case 4u:
          LOBYTE(v13) = 106;
          goto LABEL_36;
        case 5u:
          goto LABEL_35;
        case 6u:
          v16 = 0;
          v15 = v6;
          v17 = v8;
          v18 = v9;
          LODWORD(v6) = v7;
          goto LABEL_35;
        case 7u:
          v17 = 0;
          v15 = v6;
          v16 = v7;
          v18 = v9;
          LODWORD(v6) = v8;
          goto LABEL_35;
        case 8u:
          v18 = 0;
          v15 = v6;
          v16 = v7;
          v17 = v8;
          LODWORD(v6) = v9;
LABEL_35:
          v13 = v6;
          v9 = v18;
          v8 = v17;
          v7 = v16;
          v6 = v15;
          if (v13)
          {
LABEL_36:
            *v11 = v13;
            v10 = v20;
          }

          break;
        case 0x10u:
          goto LABEL_25;
        case 0x13u:
          goto LABEL_20;
        case 0x14u:
          goto LABEL_26;
        case 0x1Eu:
          goto LABEL_27;
        default:
          break;
      }
    }

    v11 = (v11 + 1);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  MEMORY[0x29EDA5900](a2);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void TIInputManager_vi::viqr_filter_pre_lookup_input(const KB::String *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  if (!v4)
  {
    v4 = a1 + 16;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_29EA84825;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v5);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v18 & 0x80) != 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  for (i = (__p + v9); v10 != i; i = (__p[0] + __p[1]))
  {
    v12 = *v10;
    if (v12 > 0x54)
    {
      if (*v10 <= 0x64u)
      {
        if (*v10 > 0x5Fu)
        {
          if (v12 != 96)
          {
            if (v12 != 97)
            {
              goto LABEL_53;
            }

LABEL_37:
            v6 = 119;
            v7 = 97;
            goto LABEL_53;
          }

          LOBYTE(v16) = 102;
          goto LABEL_52;
        }

        if (v12 == 85)
        {
          goto LABEL_44;
        }

        if (v12 != 94)
        {
          goto LABEL_53;
        }

        v14 = 0;
        v13 = v6;
        v15 = v8;
        LODWORD(v6) = v7;
LABEL_49:
        v16 = v6;
        v8 = v15;
        v7 = v14;
        v6 = v13;
        if (v16)
        {
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      if (*v10 > 0x74u)
      {
        if (v12 == 117)
        {
          goto LABEL_44;
        }

        if (v12 != 126)
        {
          goto LABEL_53;
        }

        LOBYTE(v16) = 120;
        goto LABEL_52;
      }

      if (v12 == 101)
      {
        goto LABEL_45;
      }

      if (v12 == 111)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*v10 <= 0x3Eu)
      {
        if (*v10 > 0x2Au)
        {
          if (v12 != 43)
          {
            if (v12 != 46)
            {
              goto LABEL_53;
            }

            LOBYTE(v16) = 106;
            goto LABEL_52;
          }

          v15 = 0;
          v13 = v6;
          v14 = v7;
          LODWORD(v6) = v8;
        }

        else
        {
          if (v12 == 39)
          {
            LOBYTE(v16) = 115;
LABEL_52:
            *v10 = v16;
            v9 = v18;
            goto LABEL_53;
          }

          if (v12 != 40)
          {
            goto LABEL_53;
          }

          v13 = 0;
          v14 = v7;
          v15 = v8;
        }

        goto LABEL_49;
      }

      if (*v10 > 0x44u)
      {
        if (v12 != 69)
        {
          if (v12 != 79)
          {
            goto LABEL_53;
          }

LABEL_40:
          v7 = 111;
LABEL_44:
          v8 = 119;
          goto LABEL_53;
        }

LABEL_45:
        v7 = 101;
        goto LABEL_53;
      }

      if (v12 == 63)
      {
        LOBYTE(v16) = 114;
        goto LABEL_52;
      }

      if (v12 == 65)
      {
        goto LABEL_37;
      }
    }

LABEL_53:
    v10 = (v10 + 1);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    ;
  }

  MEMORY[0x29EDA5900](a2);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<KB::String>::__throw_length_error[abi:nn200100]();
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

uint64_t TIInputManager_vi::should_accept_candidate_for_mixed_case_input(uint64_t a1, KB::Candidate *this, KB::Word *a3, uint64_t a4)
{
  v12[4] = *MEMORY[0x29EDCA608];
  if (KB::Candidate::has_from_supplemental_lexicon(this))
  {
    v7 = *MEMORY[0x29EDCA608];
    v8 = *(*(a1 + 264) + 8) + 72;

    return MEMORY[0x2A1C69C68](v8, a3, a4);
  }

  else
  {
    KB::Word::capitalized_string(v12, a3);
    v9 = KB::String::starts_with();
    KB::String::~String(v12);
    v10 = *MEMORY[0x29EDCA608];
    return v9;
  }
}

void TIInputManager_vi::~TIInputManager_vi(TIInputManager_vi *this)
{
  TIInputManager_vi::~TIInputManager_vi(this);

  JUMPOUT(0x29EDA5A20);
}

{
  *this = &unk_2A252ED88;
  v2 = *(this + 100);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<KB::String ()(KB::String const&)>::~__value_func[abi:nn200100](this + 760);

  MEMORY[0x2A1C69B10](this);
}

void TIInputManager_vi::internal_string_to_external(TIInputManager_vi *this@<X0>, _BYTE *a2@<X8>)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v4 = *(this + 98);
  if (v4)
  {
    (*(*v4 + 48))(v6);
    KB::String::String();
    a2[32] = 1;
    KB::String::~String(v6);
  }

  else
  {
    *a2 = 0;
    a2[32] = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void *std::vector<KB::FilterFlag>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<KB::FilterFlag>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::FilterFlag>>(a1, a2);
  }

  std::vector<KB::String>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::FilterFlag>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<KB::String>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<KB::CandidateFilter>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<KB::String>::__throw_length_error[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<KB::CandidateFilter>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<KB::CandidateFilter>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<KB::CandidateFilter>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__shared_ptr_emplace<KB::CompositeCandidateFilter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A252EDF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA5A20);
}

void std::vector<std::shared_ptr<KB::CandidateFilter>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<KB::CandidateFilter>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<KB::CandidateFilter>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void KB::InputManagerSpecialization_vi::create_input_segment_filter(void *a1@<X8>)
{
  {
    __cxa_atexit(WTF::RefPtr<KB::InputSegmentFilter>::~RefPtr, &KB::InputManagerSpecialization_vi::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::s_input_segment_filter, &dword_29EA7F000);
  }

  if (KB::InputManagerSpecialization_vi::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once != -1)
  {
    dispatch_once(&KB::InputManagerSpecialization_vi::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once, &__block_literal_global_0);
  }

  v2 = KB::InputManagerSpecialization_vi::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::s_input_segment_filter;
  *a1 = KB::InputManagerSpecialization_vi::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::s_input_segment_filter;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
  }
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
      MEMORY[0x29EDA5A00](v3, 0x1000C8077774924);
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