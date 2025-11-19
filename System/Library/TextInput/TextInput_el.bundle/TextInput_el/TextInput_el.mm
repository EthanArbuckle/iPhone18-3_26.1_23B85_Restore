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

void std::__shared_ptr_emplace<KB::InputManagerSpecialization_el>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A25241E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA2CC0);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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
    return MEMORY[0x29EDA2CC0](v1, 0x10B0C409EA53459);
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
        MEMORY[0x29EDA2CA0](v3, 0x1000C8077774924);
      }
    }

    KB::String::~String((v1 + 8));

    JUMPOUT(0x29EDA2CC0);
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

void _GLOBAL__sub_I_TIKeyboardFeatureSpecialization_el_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA14000);

  objc_autoreleasePoolPop(v0);
}

void *KB::InputManagerSpecialization_el::InputManagerSpecialization_el(KB::InputManagerSpecialization_el *this, const __CFLocale *a2)
{
  result = KB::InputManagerSpecialization::InputManagerSpecialization(this, a2);
  *result = &unk_2A2524218;
  return result;
}

{
  result = KB::InputManagerSpecialization::InputManagerSpecialization(this, a2);
  *result = &unk_2A2524218;
  return result;
}

void KB::InputManagerSpecialization_el::do_apply_custom_conversions(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v24[2] = *MEMORY[0x29EDCA608];
  v20[0] = a2;
  v20[1] = a2 + 24;
  v20[2] = a2 + 48;
  v20[3] = a2 + 72;
  do
  {
    v3 = v20[v2];
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*v4)
      {
        v6 = *(v4 + 1);
        v7 = (v6 + 240 * *v4);
        do
        {
          KB::Word::capitalized_string(&v22, v6);
          if (KB::count_uppercase_letters() >= 2)
          {
            KB::upper_string();
            v8 = KB::String::equal(&v22, v21);
            KB::String::~String(v21);
            if (v8)
            {
              KB::String::String(v21);
              v9 = v23;
              if (!v23)
              {
                v9 = v24;
              }

              v16 = v9;
              v17 = 0;
              v18 = v22;
              v19 = 0;
              KB::String::iterator::initialize(&v16);
              while (1)
              {
                v10 = v23;
                if (!v23)
                {
                  v10 = v24;
                }

                v12 = v10;
                v13 = v22;
                v14 = v22;
                v15 = 0;
                KB::String::iterator::initialize(&v12);
                if (v17 == v13)
                {
                  break;
                }

                LODWORD(v12) = 0;
                strip_greek_accent();
                KB::String::append(v21);
                KB::String::iterator::operator++();
              }

              KB::String::operator=();
              KB::String::~String(v21);
            }
          }

          KB::String::~String(&v22);
          v6 = (v6 + 240);
        }

        while (v6 != v7);
      }

      KB::Candidate::compute_string(v4);
      v4 = (v4 + 1000);
    }

    ++v2;
  }

  while (v2 != 4);
  v11 = *MEMORY[0x29EDCA608];
}

void KB::InputManagerSpecialization_el::~InputManagerSpecialization_el(KB::InputManagerSpecialization_el *this)
{
  KB::InputManagerSpecialization::~InputManagerSpecialization(this);

  JUMPOUT(0x29EDA2CC0);
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
      MEMORY[0x29EDA2CA0](v3, 0x1000C8077774924);
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

void KB::InputManagerSpecialization::create_input_segment_filter(void *a1@<X8>)
{
  {
    __cxa_atexit(WTF::RefPtr<KB::InputSegmentFilter>::~RefPtr, &KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::filter, &dword_29EA14000);
  }

  if (KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once != -1)
  {
    dispatch_once(&KB::InputManagerSpecialization::create_input_segment_filter(WTF::PassRefPtr<TI::Favonius::KeyboardLayout>)const::once, &__block_literal_global);
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