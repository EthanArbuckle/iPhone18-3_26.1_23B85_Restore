void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

KB::InputManagerSpecialization_de *KB::InputManagerSpecialization_de::InputManagerSpecialization_de(KB::InputManagerSpecialization_de *this, const __CFLocale *a2)
{
  v3 = KB::InputManagerSpecialization::InputManagerSpecialization(this, a2);
  *v3 = &unk_2A2523EC0;
  *(v3 + 16) = 0;
  if (*(v3 + 8))
  {
    v4 = MEMORY[0x29EDA28E0]();
    if (v4)
    {
      if (CFStringCompare(v4, @"de_CH", 0) == kCFCompareEqualTo)
      {
        *(this + 16) = 1;
      }
    }
  }

  return this;
}

uint64_t KB::InputManagerSpecialization_de::has_umlaut(KB::InputManagerSpecialization_de *this, const KB::String *a2)
{
  v3 = *(a2 + 1);
  v4 = a2 + 16;
  if (!v3)
  {
    v3 = a2 + 16;
  }

  *&v14 = v3;
  v5 = *a2;
  DWORD2(v14) = 0;
  HIDWORD(v14) = v5;
  LODWORD(v15) = 0;
  KB::String::iterator::initialize(&v14);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = v4;
  }

  v10 = v7;
  v11 = v6;
  v12 = v6;
  v13 = 0;
  KB::String::iterator::initialize(&v10);
  v16 = v14;
  v17 = v15;
  v8 = v11;
  if (DWORD2(v14) == v11)
  {
    return 0;
  }

  while ((v17 - 196) >= 0x39 || ((0x104000101040001uLL >> (v17 + 60)) & 1) == 0)
  {
    KB::String::iterator::operator++();
    if (DWORD2(v16) == v8)
    {
      return 0;
    }
  }

  return 1;
}

BOOL KB::InputManagerSpecialization_de::get_period_ends_sentence_after_word(KB::InputManagerSpecialization_de *this, const KB::String *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  MEMORY[0x29EDA2980](v14, 0, "0123456789.", 0, 0);
  KB::String::find_first_not_of(&v12, a2, v14);
  v3 = *a2;
  v4 = *(a2 + 1);
  if (!v4)
  {
    v4 = a2 + 16;
  }

  v8 = v4;
  v9 = v3;
  v10 = v3;
  v11 = 0;
  KB::String::iterator::initialize(&v8);
  v5 = v13 != v9;
  KB::String::~String(v14);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t KB::String::find_first_not_of(KB::String *this, const KB::String *a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    v4 = this + 16;
  }

  v7 = v4;
  v5 = *this;
  v8 = 0;
  v9 = v5;
  v10 = 0;
  KB::String::iterator::initialize(&v7);
  return KB::String::find_first_not_of(this, a2, &v7);
}

uint64_t KB::InputManagerSpecialization_de::do_filter_spellcheck_candidates(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  result = *(a2 + 8);
  if (*a2 != result)
  {
    if (*v3)
    {
      result = KB::InputManagerSpecialization_de::has_umlaut(result, (v3[1] + 240 * *v3 - 240));
      if (result)
      {
        return result;
      }

      v3 = *a2;
      result = *(a2 + 8);
    }

    while (result != v3)
    {
      result = MEMORY[0x29EDA29B0](result - 1000);
    }

    *(a2 + 8) = v3;
  }

  return result;
}

uint64_t KB::InputManagerSpecialization_de::do_apply_custom_conversions(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(result + 16) == 1)
  {
    v2 = 0;
    v9[0] = a2;
    v9[1] = a2 + 24;
    v9[2] = a2 + 48;
    v9[3] = a2 + 72;
    do
    {
      v3 = v9[v2];
      v4 = *v3;
      v5 = v3[1];
      while (v4 != v5)
      {
        if (*v4)
        {
          v6 = *(v4 + 1);
          v7 = 240 * *v4;
          do
          {
            MEMORY[0x29EDA2980](v10, 0, "ss", 0, 0);
            KB::String::replace_char(v6, 223, v10);
            KB::String::operator=();
            KB::String::~String(v11);
            KB::String::~String(v10);
            v6 = (v6 + 240);
            v7 -= 240;
          }

          while (v7);
        }

        result = KB::Candidate::compute_string(v4);
        v4 = (v4 + 1000);
      }

      ++v2;
    }

    while (v2 != 4);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void KB::InputManagerSpecialization_de::create_input_segment_filter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  operator new();
}

void KB::InputManagerSpecialization_de::~InputManagerSpecialization_de(KB::InputManagerSpecialization_de *this)
{
  KB::InputManagerSpecialization::~InputManagerSpecialization(this);

  JUMPOUT(0x29EDA2A60);
}

uint64_t InputSegmentFilter_de::character_is_digraph(InputSegmentFilter_de *this, int a2)
{
  if (a2 - 196) < 0x39 && ((0x104000101040001uLL >> (a2 + 60)))
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2A1C69C70](this);
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
    return MEMORY[0x29EDA2A60](v1, 0x10B0C409EA53459);
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
        MEMORY[0x29EDA2A40](v3, 0x1000C8077774924);
      }
    }

    KB::String::~String((v1 + 8));

    JUMPOUT(0x29EDA2A60);
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

void std::__shared_ptr_emplace<KB::InputManagerSpecialization_de>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2523F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29EDA2A60);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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

void _GLOBAL__sub_I_TIKeyboardFeatureSpecialization_de_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA11000);

  objc_autoreleasePoolPop(v0);
}

void InputSegmentFilter_de::~InputSegmentFilter_de(InputSegmentFilter_de *this)
{
  *this = MEMORY[0x29EDC72C8] + 16;
  v1 = *(this + 2);
  if (v1)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v1);
  }
}

{
  *this = MEMORY[0x29EDC72C8] + 16;
  v1 = *(this + 2);
  if (v1)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v1);
  }

  JUMPOUT(0x29EDA2A60);
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
      MEMORY[0x29EDA2A40](v3, 0x1000C8077774924);
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