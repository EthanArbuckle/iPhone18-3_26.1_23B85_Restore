void sub_2209A60E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TGIE5AdapterConfiguration>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TGIE5AdapterConfiguration>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<TGIE5AdapterConfiguration>>::destroy[abi:ne200100]<TGIE5AdapterConfiguration,void,0>(a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<TGIE5AdapterConfiguration>>::destroy[abi:ne200100]<TGIE5AdapterConfiguration,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      std::allocator_traits<std::allocator<TGIE5AdapterConfiguration>>::destroy[abi:ne200100]<TGIE5AdapterConfiguration,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<TGIE5AdapterConfiguration>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TGIE5AdapterConfiguration>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TGIE5AdapterConfiguration>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<TGIE5AdapterConfiguration>>::destroy[abi:ne200100]<TGIE5AdapterConfiguration,void,0>(v5, v4 - 72);
  }
}

void TGIE5AdapterConfiguration::~TGIE5AdapterConfiguration(TGIE5AdapterConfiguration *this)
{
  if (*(&this[2].var0.var0.var1 + 23) < 0)
  {
    operator delete(this[2].var0.var0.var1.var0);
  }

  if (*(&this[1].var0.var0.var1 + 23) < 0)
  {
    operator delete(this[1].var0.var0.var1.var0);
  }

  if (*(&this->var0.var0.var1 + 23) < 0)
  {
    operator delete(this->var0.var0.var1.var0);
  }
}

uint64_t std::vector<TGIE5Function>::__emplace_back_slow_path<TGIE5Function>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TGIE5Function>>(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *((v2 << 6) + 0x20) = 0;
  *(v8 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v10 = a2[2];
    *((v2 << 6) + 0x30) = *(a2 + 6);
    *((v2 << 6) + 0x20) = v10;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    *((v2 << 6) + 0x38) = 1;
  }

  *&v19 = v8 + 64;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TGIE5Function>,TGIE5Function*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<TGIE5Function>::~__split_buffer(&v17);
  return v16;
}

void sub_2209A655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TGIE5Function>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TGIE5Function>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TGIE5Function>,TGIE5Function*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 - 32);
      *(a4 + 16) = *(v7 - 16);
      *a4 = v8;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *(v7 - 32) = 0;
      v9 = *(v7 - 8);
      *(a4 + 32) = 0;
      *(a4 + 24) = v9;
      *(a4 + 56) = 0;
      if (*(v7 + 24) == 1)
      {
        v10 = *v7;
        *(a4 + 48) = *(v7 + 16);
        *(a4 + 32) = v10;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 56) = 1;
      }

      v11 = v7 - 32;
      a4 += 64;
      v7 += 64;
    }

    while (v11 + 64 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<TGIE5Function>>::destroy[abi:ne200100]<TGIE5Function,void,0>(a1, v5);
      v5 += 64;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5Function>,TGIE5Function*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

void std::allocator_traits<std::allocator<TGIE5Function>>::destroy[abi:ne200100]<TGIE5Function,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5Function>,TGIE5Function*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5Function>,TGIE5Function*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5Function>,TGIE5Function*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 64;
      std::allocator_traits<std::allocator<TGIE5Function>>::destroy[abi:ne200100]<TGIE5Function,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<TGIE5Function>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TGIE5Function>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TGIE5Function>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 64;
    std::allocator_traits<std::allocator<TGIE5Function>>::destroy[abi:ne200100]<TGIE5Function,void,0>(v5, v4 - 64);
  }
}

void TGIE5Function::~TGIE5Function(TGIE5Function *this)
{
  if (this[2].var0.var0.var0.var0[8] == 1 && this[2].var0.var0.var0.var0[7] < 0)
  {
    operator delete(this[1].var0.var0.var1.var1);
  }

  if (*(&this->var0.var0.var1 + 23) < 0)
  {
    operator delete(this->var0.var0.var1.var0);
  }
}

uint64_t std::vector<TGIE5AdapterConfiguration>::__init_with_size[abi:ne200100]<TGIE5AdapterConfiguration*,TGIE5AdapterConfiguration*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TGIE5AdapterConfiguration>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2209A68F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TGIE5AdapterConfiguration>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<TGIE5AdapterConfiguration>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TGIE5AdapterConfiguration>>(a1, a2);
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*,TGIE5AdapterConfiguration*,TGIE5AdapterConfiguration*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      if (*(v6 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 2, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v9 = v6[3];
        v4[2].__r_.__value_.__r.__words[2] = *(v6 + 8);
        *&v4[2].__r_.__value_.__l.__data_ = v9;
      }

      v6 = (v6 + 72);
      v4 = v14 + 3;
      v14 += 3;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_2209A6A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5AdapterConfiguration>,TGIE5AdapterConfiguration*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TGIE5Function>::__init_with_size[abi:ne200100]<TGIE5Function*,TGIE5Function*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TGIE5Function>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2209A6B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<TGIE5Function>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TGIE5Function>>(a1, a2);
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TGIE5Function>,TGIE5Function*,TGIE5Function*,TGIE5Function*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v4[1].__r_.__value_.__r.__words[0] = *(v6 + 3);
      std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v4 + 32), v6 + 2);
      v6 += 4;
      v4 = (v12 + 64);
      v12 = (v12 + 64);
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TGIE5Function>,TGIE5Function*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

std::string *std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(std::string *this, std::string **a2)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005>::result_type std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x138;
  v3 = 0xB5026F5AA96619E9;
  if ((this->__x_[v2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ this->__x_[(i + 156) % 0x138] ^ ((this->__x_[v2] & 0x7FFFFFFE | this->__x_[i] & 0xFFFFFFFF80000000) >> 1);
  this->__x_[i] = v4;
  this->__i_ = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

uint64_t default argument 3 of DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)@<X0>(uint64_t *a1@<X8>)
{
  v6 = &type metadata for SeedableRandomNumberGenerator;
  v7 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *&v5 = 0;
  v2 = type metadata accessor for GreedySampling();
  v3 = swift_allocObject();
  result = outlined init with take of RandomNumberGenerator(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &protocol witness table for GreedySampling;
  *a1 = v3;
  return result;
}

uint64_t default argument 0 of LookupLanguageModel.init(state:minimumMatchRequiredForDrafting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = NodeStorage.init()(a1, *(a2 + 8));

  return LookupLanguageModelState.init(lastNodeAvailableForLookup:nodeStates:)(0, v4, a3);
}

unint64_t lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator()
{
  result = lazy protocol witness table cache variable for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator;
  if (!lazy protocol witness table cache variable for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _EncodedImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _EncodedImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNSTensor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BNNSTensor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 160) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t LockedBNNSContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassifyingDecoder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassifyingDecoder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ClassifyingDecoder.classify(stopTokenID:parameters:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for TokenGenerationError.Context();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for ClassificationParameters.ThresholdConfiguration();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for ContiguousBitSet();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for LogitIndexSet();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](ClassifyingDecoder.classify(stopTokenID:parameters:), 0, 0);
}

uint64_t ClassifyingDecoder.classify(stopTokenID:parameters:)()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[15];
  v5 = v3[6];
  v4 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v5);
  v6 = v3[13];
  v7 = type metadata accessor for SoftmaxLogitPresampler();
  v0[10] = v7;
  v0[11] = &protocol witness table for SoftmaxLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v2 + 56))(boxed_opaque_existential_1, 1, 1, v1);
  *(boxed_opaque_existential_1 + *(v7 + 20)) = COERCE_UNSIGNED_INT(1.0);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = ClassifyingDecoder.classify(stopTokenID:parameters:);

  return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)((v0 + 2), v6, (v0 + 7), 0, v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = ClassifyingDecoder.classify(stopTokenID:parameters:);
  }

  else
  {
    outlined destroy of LogitPresampler?(v2 + 56);
    v3 = ClassifyingDecoder.classify(stopTokenID:parameters:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0;
  v3 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  if (LogitCollection.isEmpty.getter(v3, v2))
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];
    goto LABEL_18;
  }

  v7 = *(v0[15] + 8);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v105 = v0;
  v99 = v7;
  if (v8)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = (v7 + 32);
    v11 = *(v9 + 16);
    do
    {
      v13 = *v10;
      v10 += 2;
      v12 = v13;
      v14 = *(v9 + 24);
      v15 = v11 + 1;
      if (v11 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1);
      }

      *(v9 + 16) = v15;
      *(v9 + 8 * v11++ + 32) = v12;
      --v8;
    }

    while (v8);
    goto LABEL_10;
  }

  v15 = *(MEMORY[0x277D84F90] + 16);
  if (!v15)
  {
LABEL_23:
    v36 = *(v1 + 160);
    v35 = *(v1 + 168);
    v37 = *(v1 + 152);

    ClassificationParameters.thresholdConfiguration.getter();
    v38 = (*(v36 + 88))(v35, v37);
    if (v38 == *MEMORY[0x277D71D18])
    {
      v39 = *(v1 + 168);
      v40 = *(v1 + 120);
      (*(*(v1 + 160) + 96))(v39, *(v1 + 152));
      v41 = *(v40 + 16);
      if (v41)
      {
        if (*(v41 + 16))
        {
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(*v39, v39[1]);
          v44 = v43;

          if (v44)
          {
            v95 = 0;
            v45 = *(*(v41 + 56) + 8 * v42);
LABEL_45:
            while (1)
            {

              v53 = *(v1 + 40);
              v54 = *(v1 + 48);
              __swift_project_boxed_opaque_existential_1((v1 + 16), v53);
              v55 = (*(v54 + 56))(v53, v54);
              v56 = v55;
              v97 = *(v45 + 16);
              if (!v97)
              {
                break;
              }

              v57 = 0;
              v96 = v55 + 32;
              v58 = MEMORY[0x277D84F98];
              v98 = *(v1 + 120);
              v59 = *(v1 + 240);
              v60 = (v45 + 40);
              v99 = v45;
              while (v57 < *(v45 + 16))
              {
                v103 = v57;
                v63 = *(v1 + 104);
                v64 = *(v60 - 1);
                v101 = v60;
                v65 = *v60;
                __swift_project_boxed_opaque_existential_1((v98 + 64), *(v98 + 88));
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
                v66 = swift_allocObject();
                *(v66 + 16) = xmmword_220AE8A20;
                *(v66 + 32) = v64;
                *(v66 + 40) = v63;
                v67 = swift_allocObject();
                *(v67 + 16) = xmmword_220AE8A30;
                *(v67 + 32) = v63;
                v1 = TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)();

                if (v59)
                {

                  v1 = v105;
                  goto LABEL_20;
                }

                if ((v64 & 0x8000000000000000) != 0)
                {
                  goto LABEL_79;
                }

                if (v64 >= *(v56 + 16))
                {
                  goto LABEL_80;
                }

                _H9 = *(v96 + 2 * v64);
                if (one-time initialization token for device != -1)
                {
                  swift_once();
                }

                v69 = type metadata accessor for Logger();
                __swift_project_value_buffer(v69, static Log.device);
                v70 = Logger.logObject.getter();
                v71 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  *v72 = 134218240;
                  *(v72 + 4) = v64;
                  *(v72 + 12) = 2048;
                  __asm { FCVT            D0, H9 }

                  *(v72 + 14) = _D0;
                  _os_log_impl(&dword_220940000, v70, v71, "Classification sampling - Logit probability for token %ld is %f", v72, 0x16u);
                  MEMORY[0x223D90A10](v72, -1, -1);
                }

                v105[12] = v1;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
                lazy protocol witness table accessor for type [String] and conformance [A]();
                v78 = BidirectionalCollection<>.joined(separator:)();
                v80 = v79;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v82 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v80);
                v84 = v58[2];
                v85 = (v83 & 1) == 0;
                _VF = __OFADD__(v84, v85);
                v86 = v84 + v85;
                if (_VF)
                {
                  goto LABEL_81;
                }

                v1 = v83;
                if (v58[3] >= v86)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v92 = v82;
                    specialized _NativeDictionary.copy()();
                    v82 = v92;
                  }
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v86, isUniquelyReferenced_nonNull_native);
                  v82 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v80);
                  if ((v1 & 1) != (v87 & 1))
                  {

                    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  }
                }

                __asm { FCVT            S0, H9 }

                v45 = v99;
                if (v1)
                {
                  v61 = v65 <= _S0;
                  v62 = v82;

                  *(v58[7] + v62) = v61;
                }

                else
                {
                  v58[(v82 >> 6) + 8] |= 1 << v82;
                  v89 = (v58[6] + 16 * v82);
                  *v89 = v78;
                  v89[1] = v80;
                  *(v58[7] + v82) = v65 <= _S0;
                  v90 = v58[2];
                  _VF = __OFADD__(v90, 1);
                  v91 = v90 + 1;
                  if (_VF)
                  {
                    goto LABEL_82;
                  }

                  v58[2] = v91;
                }

                v59 = 0;
                v57 = v103 + 1;
                v60 = v101 + 4;
                v1 = v105;
                if (v97 == v103 + 1)
                {
                  goto LABEL_67;
                }
              }

LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              swift_once();
LABEL_41:
              v52 = type metadata accessor for Logger();
              __swift_project_value_buffer(v52, static Log.device);
              v48 = Logger.logObject.getter();
              v49 = static os_log_type_t.debug.getter();
              v45 = v99;
              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                *v50 = 0;
                v51 = "Classification sampling - Falling back to default thresholds due to non-matching identifier specified";
LABEL_43:
                _os_log_impl(&dword_220940000, v48, v49, v51, v50, 2u);
                MEMORY[0x223D90A10](v50, -1, -1);
              }

LABEL_44:

              v95 = 1;
            }

            v58 = MEMORY[0x277D84F98];
LABEL_67:

            __swift_destroy_boxed_opaque_existential_1(v1 + 16);

            v93 = *(v1 + 8);

            return v93(v58, v95);
          }
        }

        else
        {
        }

        if (ClassificationParameters.shouldFallbackToDefaultThresholds.getter())
        {
          if (one-time initialization token for device != -1)
          {
            goto LABEL_83;
          }

          goto LABEL_41;
        }

        v5 = *(v1 + 136);
        v4 = *(v1 + 144);
        v6 = *(v1 + 128);
      }

      else
      {

        if (ClassificationParameters.shouldFallbackToDefaultThresholds.getter())
        {
          if (one-time initialization token for device != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          __swift_project_value_buffer(v47, static Log.device);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();
          v45 = v99;
          if (!os_log_type_enabled(v48, v49))
          {
            goto LABEL_44;
          }

          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = "Classification sampling - Falling back to default thresholds due to missing per-threshold classes";
          goto LABEL_43;
        }

        v5 = *(v1 + 136);
        v4 = *(v1 + 144);
        v6 = *(v1 + 128);
      }

      TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v29 = type metadata accessor for TokenGenerationError();
      lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
      swift_allocError();
      v31 = v94;
      (*(v5 + 16))(v94, v4, v6);
      v32 = MEMORY[0x277D71AF0];
      goto LABEL_19;
    }

    if (v38 != *MEMORY[0x277D71D10])
    {
      v46 = *(v1 + 152);

      return MEMORY[0x2821FDEB8](v46, v46);
    }

    v95 = 0;
    v45 = v99;
    goto LABEL_45;
  }

LABEL_10:
  v16 = 0;
  v17 = v0[23];
  v104 = (v17 + 32);
  v100 = v0[27];
  v102 = (v17 + 8);
  while (1)
  {
    if (v16 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_78;
    }

    v22 = *(v1 + 216);
    v21 = *(v1 + 224);
    v23 = *(v9 + 8 * v16 + 32);
    v24 = v105[5];
    v25 = v105[6];
    __swift_project_boxed_opaque_existential_1(v105 + 2, v24);
    (*(v25 + 8))(v24, v25);
    outlined init with copy of LogitIndexSet(v21, v22);
    v1 = v105;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v27 = v105[27];
    v28 = v105[28];
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v18 = v105[24];
    v19 = v105[22];
    (*v104)(v18, v105[27], v19);
    v20 = ContiguousBitSet.contains(_:)(v23);
    (*v102)(v18, v19);
    outlined destroy of LogitIndexSet(v28);
    if (!v20)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (v15 == ++v16)
    {
      goto LABEL_23;
    }
  }

  outlined destroy of LogitIndexSet(v105[28]);
  if (v23 >= *v27 && v23 < *(v100 + 8))
  {
    goto LABEL_12;
  }

LABEL_17:
  v5 = v105[17];
  v4 = v105[18];
  v6 = v105[16];

LABEL_18:
  TokenGenerationError.Context.init(debugDescription:underlyingError:)();
  v29 = type metadata accessor for TokenGenerationError();
  lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
  swift_allocError();
  v31 = v30;
  (*(v5 + 16))(v30, v4, v6);
  v32 = MEMORY[0x277D71AA0];
LABEL_19:
  (*(*(v29 - 8) + 104))(v31, *v32, v29);
  swift_willThrow();
  (*(v5 + 8))(v4, v6);
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  v33 = *(v1 + 8);

  return v33();
}

{
  outlined destroy of LogitPresampler?(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of LogitIndexSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LogitIndexSet(uint64_t a1)
{
  v2 = type metadata accessor for LogitIndexSet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError()
{
  result = lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError;
  if (!lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError)
  {
    type metadata accessor for TokenGenerationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t TokenMask.subscript.getter(uint64_t result)
{
  v2 = *v1;
  if (*v1 > result)
  {
    return 0;
  }

  v3 = v1[1];
  if (__OFADD__(v2, v3))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 + v3 > result)
  {
    return 1;
  }

  v4 = __OFSUB__(result, v2);
  v5 = result - v2;
  if (v4)
  {
    goto LABEL_12;
  }

  v4 = __OFSUB__(v5, v3);
  v6 = v5 - v3;
  if (v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v1[2];
  if (v6 < *(v7 + 16))
  {
    return *(v7 + v6 + 32);
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TokenMask.remove(at:)(Swift::Int at)
{
  v2 = *v1;
  if (*v1 > at)
  {
    *v1 = v2 - 1;
    return;
  }

  v3 = v1[1];
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v4 > at)
  {
    if (!__OFSUB__(v3, 1))
    {
      v1[1] = v3 - 1;
      return;
    }

    goto LABEL_29;
  }

  v5 = __OFSUB__(at, v4);
  v6 = at - v4;
  if (v5)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v7 = v1;
  specialized Array.remove(at:)(v6);
  v8 = v1[2];
  v9 = *(v8 + 2);
  if (v9)
  {
    while (v8[32] == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v8);
      }

      v11 = *(v8 + 2) - 1;
      memmove(v8 + 32, v8 + 33, v11);
      *(v8 + 2) = v11;
      v7[2] = v8;
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7[1] = v12;
      v9 = *(v8 + 2);
      ++v3;
      if (!v9)
      {
        v3 = v12;
        break;
      }
    }
  }

  if (!v3)
  {
    v13 = *(v8 + 2);
    if (v13)
    {
      while ((v8[32] & 1) == 0)
      {
        v14 = swift_isUniquelyReferenced_nonNull_native();
        if (!v14 || (v13 - 1) > *(v8 + 3) >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v13, 1, v8);
        }

        v15 = *(v8 + 2) - 1;
        memmove(v8 + 32, v8 + 33, v15);
        *(v8 + 2) = v15;
        v7[2] = v8;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_27;
        }

        *v7 = v2 + 1;
        v13 = *(v8 + 2);
        ++v2;
        if (!v13)
        {
          return;
        }
      }
    }
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t static TokenMask.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration15ToolDescriptionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDescription();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    lazy protocol witness table accessor for type ToolDescription and conformance ToolDescription();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

void TokenMask.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x223D8F420](*v0);
  MEMORY[0x223D8F420](v1);
  MEMORY[0x223D8F420](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }
}

Swift::Int TokenMask.hashValue.getter()
{
  Hasher.init(_seed:)();
  TokenMask.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TokenMask()
{
  Hasher.init(_seed:)();
  TokenMask.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TokenMask()
{
  Hasher.init(_seed:)();
  TokenMask.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TokenMask(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

Swift::Int __swiftcall TokenMask.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t TokenMask.count.getter()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = *(v0[2] + 16);
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void protocol witness for Collection.endIndex.getter in conformance TokenMask(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *v1 + v2;
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1[2] + 16);
    v5 = __OFADD__(v3, v4);
    v6 = v3 + v4;
    if (!v5)
    {
      *a1 = v6;
      return;
    }
  }

  __break(1u);
}

void (*protocol witness for Collection.subscript.read in conformance TokenMask(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = TokenMask.subscript.read(v4, *a2);
  *(v5 + 40) = v7 & 1;
  *(v5 + 32) = v6;
  return protocol witness for Collection.subscript.read in conformance TokenMask;
}

void protocol witness for Collection.subscript.read in conformance TokenMask(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*TokenMask.subscript.read(uint64_t a1, uint64_t a2))()
{
  v3 = *v2;
  if (*v2 > a2)
  {
    return TokenMask.subscript.read;
  }

  v4 = v2[1];
  if (__OFADD__(v3, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 + v4 > a2)
  {
    return TokenMask.subscript.read;
  }

  v5 = __OFSUB__(a2, v3);
  v6 = a2 - v3;
  if (v5)
  {
    goto LABEL_10;
  }

  v5 = __OFSUB__(v6, v4);
  v7 = v6 - v4;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 < *(v2[2] + 16))
  {
    return TokenMask.subscript.read;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance TokenMask@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *v2;
  v5 = v4 + *(&v4 + 1);
  if (__OFADD__(v4, *(&v4 + 1)))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  result = *(v2 + 2);
  v7 = *(result + 16);
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *v6;
  if ((*v6 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(&v10 + 1))
  {
    *(a2 + 32) = result;
    *a2 = v10;
    *(a2 + 16) = v3;
  }

LABEL_11:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance TokenMask(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *v1 + v2;
  if (__OFADD__(*v1, v2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(v1[2] + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    *a1 = 0;
    a1[1] = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance TokenMask()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0[2] + 16);
    v4 = __OFADD__(v2, v3);
    v5 = v2 + v3;
    if (!v4)
    {
      return v5 == 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 + a5;
  if (__OFADD__(a4, a5))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(a6 + 16);
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < a3 || (a3 | result) < 0 || v9 < result)
  {
    goto LABEL_19;
  }

  v10 = a3 - result;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_13:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (result < 0 || v9 < result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance TokenMask(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance TokenMask(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance TokenMask@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance TokenMask(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance TokenMask@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance TokenMask()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance TokenMask@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v2[1];
  v5 = __OFADD__(*v2, v4);
  v6 = *v2 + v4;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v2[2] + 16);
  v5 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v3 & 0x8000000000000000) == 0 && v3 < v8)
  {
    *a2 = v3;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance TokenMask(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v1[1];
  v4 = __OFADD__(*v1, v3);
  v5 = *v1 + v3;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v1[2] + 16);
  v4 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0 && v2 < v7)
  {
    *result = v2;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *protocol witness for Collection.index(_:offsetBy:) in conformance TokenMask@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v3[1];
  v6 = __OFADD__(*v3, v5);
  v7 = *v3 + v5;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v3[2] + 16);
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v4 & 0x8000000000000000) == 0 && v9 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance TokenMask@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for Collection.distance(from:to:) in conformance TokenMask(uint64_t *result, uint64_t *a2)
{
  v3 = v2[1];
  v4 = *v2 + v3;
  if (__OFADD__(*v2, v3))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v2[2] + 16);
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = *a2;
  if (v7 >= *a2)
  {
    v9 = *result;
    if (((v8 | *result) & 0x8000000000000000) == 0 && v7 >= v9)
    {
      return (v8 - v9);
    }
  }

LABEL_9:
  __break(1u);
  return result;
}

TokenGenerationInference::TokenMask __swiftcall TokenMask.prefix(upTo:)(Swift::Int upTo)
{
  v5 = *v3;
  v4 = v3[1];
  v6 = *v3 + v4;
  if (__OFADD__(*v3, v4))
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = v3[2];
  v7 = *(v2 + 16);
  if (__OFADD__(v6, v7))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v6 + v7) >= upTo)
  {
    if (v5 >= upTo)
    {
      v4 = 0;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      if (v6 < upTo)
      {
        v8 = upTo - v4;
        if (!__OFSUB__(upTo, v4))
        {
          v9 = __OFSUB__(v8, v5);
          v10 = v8 - v5;
          if (!v9)
          {
            if ((v10 & 0x8000000000000000) == 0)
            {
              if (v7 >= v10)
              {
                v11 = v1;
                if (v7 == v10)
                {
                }

                else
                {
                  specialized _copyCollectionToContiguousArray<A>(_:)(v2, v2 + 32, 0, (2 * v10) | 1);
                  v2 = v14;
                }

                upTo = v5;
                v1 = v11;
                goto LABEL_17;
              }

              goto LABEL_24;
            }

LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      v4 = upTo - v5;
      if (__OFSUB__(upTo, v5))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v2 = MEMORY[0x277D84F90];
      upTo = *v3;
    }

LABEL_17:
    *v1 = upTo;
    v1[1] = v4;
    v1[2] = v2;
    goto LABEL_29;
  }

LABEL_25:
  _StringGuts.grow(_:)(43);

  if (__OFADD__(v6, *(v2 + 16)))
  {
    __break(1u);
  }

  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v15);

  MEMORY[0x223D8E780](0x206874697720, 0xE600000000000000);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v16);

  upTo = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_29:
  result.trailingMask._rawValue = v13;
  result.middleOneCount = v12;
  result.leadingZeroCount = upTo;
  return result;
}

uint64_t TGITokenMaskObjC.count.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask);
  v2 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask + 8);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*(v0 + OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask + 16) + 16);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id TGITokenMaskObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type TokenMask and conformance TokenMask()
{
  result = lazy protocol witness table cache variable for type TokenMask and conformance TokenMask;
  if (!lazy protocol witness table cache variable for type TokenMask and conformance TokenMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenMask and conformance TokenMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenMask and conformance TokenMask;
  if (!lazy protocol witness table cache variable for type TokenMask and conformance TokenMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenMask and conformance TokenMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenMask and conformance TokenMask;
  if (!lazy protocol witness table cache variable for type TokenMask and conformance TokenMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenMask and conformance TokenMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenMask and conformance TokenMask;
  if (!lazy protocol witness table cache variable for type TokenMask and conformance TokenMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenMask and conformance TokenMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenMask and conformance TokenMask;
  if (!lazy protocol witness table cache variable for type TokenMask and conformance TokenMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenMask and conformance TokenMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<TokenMask> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy24TokenGenerationInference0B4MaskVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenMask(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenMask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = *(a3 + 16);
    v6 = &v3[v5];
    if (!__OFADD__(v3, v5))
    {
      if (v6)
      {
        v8 = result;
        v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1g5(&v3[v5], 0);
        v10 = specialized Sequence._copySequenceContents(initializing:)(&v11, (v9 + 4), v6, v8, a2, a3);

        if (v10 == v6)
        {
          return v9;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }
  }

  __break(1u);
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t lazy protocol witness table accessor for type ToolDescription and conformance ToolDescription()
{
  result = lazy protocol witness table cache variable for type ToolDescription and conformance ToolDescription;
  if (!lazy protocol witness table cache variable for type ToolDescription and conformance ToolDescription)
  {
    type metadata accessor for ToolDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescription and conformance ToolDescription);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t a2)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = *v3;
  v5 = *(*v3 + 2);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v2 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v4;
    }

    else
    {
      v11 = v5;
    }

    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v2);
    v10 = *(v2 + 3) >> 1;
  }

  v12 = *(v2 + 2);
  v13 = v10 - v12;
  result = specialized Sequence._copyContents(initializing:)(&v31, &v2[8 * v12 + 32], v10 - v12, v8, a2);
  if (result < v4)
  {
    goto LABEL_17;
  }

  if (result >= 1)
  {
    v16 = *(v2 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
      goto LABEL_35;
    }

    *(v2 + 2) = v18;
  }

  if (result != v13)
  {
LABEL_14:
    *v3 = v2;
    return result;
  }

LABEL_18:
  v19 = v32;
  v20 = v33;
  if (v33 == v32)
  {
    goto LABEL_14;
  }

  v21 = v31;
  if (v32 < v31)
  {
LABEL_37:
    __break(1u);
  }

  else if (v33 >= v31)
  {
    if (v33 < v32)
    {
      v14 = *(v2 + 2);
      v22 = v33 + 1;
      v23 = -v32;
      while (1)
      {
LABEL_24:
        v24 = *(v2 + 3);
        v25 = v24 >> 1;
        if ((v24 >> 1) < v14 + 1)
        {
          v27 = v2;
          v28 = v22;
          v29 = v23;
          v30 = v14;
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v14 + 1, 1, v27);
          v14 = v30;
          v23 = v29;
          v22 = v28;
          v2 = result;
          v25 = *(result + 24) >> 1;
          v26 = v30 - v25;
          if (v30 < v25)
          {
LABEL_26:
            v15 = 0;
            while (1)
            {
              *&v2[8 * v14 + 32 + 8 * v15] = v20;
              if (!(v23 + v22 + v15))
              {
                break;
              }

              if (v22 < v21 || (v20 = v22 + v15, v22 + v15 >= v19))
              {
                __break(1u);
                goto LABEL_37;
              }

              ++v15;
              if (!(v26 + v15))
              {
                v22 += v15;
                v20 = v22 - 1;
                v14 = v25;
                *(v2 + 2) = v25;
                goto LABEL_24;
              }
            }

LABEL_35:
            *(v2 + 2) = v14 + v15 + 1;
            goto LABEL_14;
          }
        }

        else
        {
          v26 = v14 - v25;
          if (v14 < v25)
          {
            goto LABEL_26;
          }
        }

        *(v2 + 2) = v14;
      }
    }

    goto LABEL_39;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v12 = *(v5 + 24) >> 1, v12 < v9))
  {
    if (v8 <= v9)
    {
      v13 = v8 + v7;
    }

    else
    {
      v13 = v8;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v5);
    v5 = result;
    v12 = *(result + 24) >> 1;
  }

  v14 = v12 - *(v5 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < v7)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_16;
    }

    v15 = *(v5 + 16);
    v16 = __OFADD__(v15, v7);
    v17 = v15 + v7;
    if (!v16)
    {
      *(v5 + 16) = v17;
LABEL_16:
      if (v7 != v14)
      {
LABEL_17:
        result = swift_unknownObjectRelease();
        *v4 = v5;
        return result;
      }

LABEL_21:

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t closure #1 in TGICAPIWrapper.makeSession()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a3 + 200);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 24 * v9;
    v12 = *v11;
    v19 = *(v11 + 8);
    swift_endAccess();
    v13 = type metadata accessor for TGICAPILanguageModel();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference20TGICAPILanguageModelC9NodeStateVGMd);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220AE8A30;
    v16 = MEMORY[0x277D84F90];
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v15 + 32) = result;
    *(v15 + 40) = v16;
    *(v15 + 48) = 0;
    *(v14 + 24) = v15;
    *(v14 + 32) = v12;
    *(v14 + 40) = v19;
    a4[3] = v13;
    a4[4] = &protocol witness table for TGICAPILanguageModel;
    *a4 = v14;
  }

  else
  {
    swift_endAccess();
    lazy protocol witness table accessor for type TokenGenerationConfiguration.TokenGenerationConfigurationError and conformance TokenGenerationConfiguration.TokenGenerationConfigurationError();
    swift_allocError();
    *v18 = a1;
    v18[1] = a2;
    swift_willThrow();
  }

  return result;
}

uint64_t TGICAPIWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 160);
  v7[8] = *(v0 + 144);
  v7[9] = v1;
  v7[10] = *(v0 + 176);
  v8 = *(v0 + 192);
  v2 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v2;
  v3 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v3;
  v4 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v4;
  v5 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v5;
  outlined destroy of TokenGenerationConfiguration(v7);

  return swift_deallocClassInstance();
}

uint64_t TGITokenGeneratorCreate(_:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.init(cString:)();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    lazy protocol witness table accessor for type TokenGenerationConfiguration and conformance TokenGenerationConfiguration();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v4, v6);
    type metadata accessor for TGICAPIWrapper();
    v8 = swift_allocObject();
    v9 = v24;
    *(v8 + 144) = v23;
    *(v8 + 160) = v9;
    *(v8 + 176) = v25;
    *(v8 + 192) = v26;
    v10 = v20;
    *(v8 + 80) = v19;
    *(v8 + 96) = v10;
    v11 = v22;
    *(v8 + 112) = v21;
    *(v8 + 128) = v11;
    v12 = v16;
    *(v8 + 16) = *&v15[24];
    *(v8 + 32) = v12;
    v13 = v18;
    *(v8 + 48) = v17;
    *(v8 + 64) = v13;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Si10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    result = v8;
    *(v8 + 200) = v14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenGenerationConfiguration and conformance TokenGenerationConfiguration()
{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration and conformance TokenGenerationConfiguration;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration and conformance TokenGenerationConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration and conformance TokenGenerationConfiguration);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t TGICAPILanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](TGICAPILanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

uint64_t TGICAPILanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  v1 = v0[6];
  v2 = v0[7];
  result = swift_beginAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v4 = *(v2 + 24);
  v5 = v0[6];
  if (*(v4 + 16) <= v5)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v4 + 24 * v5;
  v7 = *(v6 + 48);
  if (!v7)
  {
    v24 = v0[7];
    v25 = *(v24 + 32);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = *(v6 + 40);

      if (v25)
      {
        v27 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v27 + 16) = v25;
        bzero((v27 + 32), 4 * v25);
        v24 = v0[7];
        v28 = v25;
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
        v28 = *(MEMORY[0x277D84F90] + 16);
      }

      v29 = (v27 + 32);
      v30 = (*(v24 + 40))(*(v24 + 48), v26 + 32, *(v26 + 16), v27 + 32, v28);

      if (v30)
      {
        v31 = v0[8];
        *v31 = 0;
        v31[1] = v25;
        v32 = type metadata accessor for LogitIndexSet();
        swift_storeEnumTagMultiPayload();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        v33 = *(v27 + 16);
        v34 = MEMORY[0x277D84F90];
        if (v33)
        {
          v45 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
          v34 = v45;
          v35 = *(v45 + 16);
          do
          {
            _S8 = *v29;
            v37 = *(v45 + 24);
            if (v35 >= v37 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v35 + 1, 1);
            }

            __asm { FCVT            H0, S8 }

            *(v45 + 16) = v35 + 1;
            *(v45 + 2 * v35 + 32) = _H0;
            ++v29;
            ++v35;
            --v33;
          }

          while (v33);
        }

        v40 = v0[8];
        v41 = v0[5];
        v41[3] = type metadata accessor for WeightedDenseLogitCollection();
        v41[4] = &protocol witness table for WeightedDenseLogitCollection;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
        WeightedDenseLogitCollection.init(indexSet:logits:)(v40, v34, boxed_opaque_existential_1);
      }

      else
      {
        v39 = v0[5];
        *(v39 + 24) = &type metadata for EmptyLogitCollection;
        *(v39 + 32) = &protocol witness table for EmptyLogitCollection;
      }

      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  v8 = v0[9];
  v9 = *(v7 + 16);
  *v8 = 0;
  v8[1] = v9;
  v10 = type metadata accessor for LogitIndexSet();
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = MEMORY[0x277D84F90];
  if (v9)
  {
    v44 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v44;
    v12 = *(v44 + 16);
    v13 = 32;
    do
    {
      _S8 = *(v7 + v13);
      v15 = *(v44 + 24);
      if (v12 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v12 + 1, 1);
      }

      __asm { FCVT            H0, S8 }

      *(v44 + 16) = v12 + 1;
      *(v44 + 2 * v12 + 32) = _H0;
      v13 += 4;
      ++v12;
      --v9;
    }

    while (v9);
  }

  v21 = v0[9];
  v22 = v0[5];
  v22[3] = type metadata accessor for WeightedDenseLogitCollection();
  v22[4] = &protocol witness table for WeightedDenseLogitCollection;
  v23 = __swift_allocate_boxed_opaque_existential_1(v22);
  WeightedDenseLogitCollection.init(indexSet:logits:)(v21, v11, v23);
LABEL_25:

  v43 = v0[1];

  return v43();
}

uint64_t TGICAPILanguageModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return TGICAPILanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2);
}

uint64_t TGITokenGeneratorRegisterExternalLanguageModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = String.init(cString:)();
  v11 = v10;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 200);
  *(a1 + 200) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, a5, v9, v11, isUniquelyReferenced_nonNull_native);

  *(a1 + 200) = v14;
  swift_endAccess();
}

uint64_t TGITokenGeneratorRegisterExternalLanguageModel(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = String.init(cString:)();
  v11 = v10;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 200);
  *(a1 + 200) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, a5, v9, v11, isUniquelyReferenced_nonNull_native);

  *(a1 + 200) = v14;
  swift_endAccess();
}

uint64_t TGITokenGeneratorGenerate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = String.init(cString:)();
  v12 = v11;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);

  v14(v9, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = a3;
  v15[8] = a4;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:), v15);
}

uint64_t TGITokenGeneratorGenerate(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = String.init(cString:)();
  v12 = v11;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(*(v13 - 8) + 56);

  v14(v9, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = a3;
  v15[8] = a4;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)partial apply, v15);
}

uint64_t closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a7;
  v8[54] = a8;
  v8[51] = a5;
  v8[52] = a6;
  v8[50] = a4;
  return MEMORY[0x2822009F8](closure #1 in TGITokenGeneratorGenerate(_:_:_:_:), 0, 0);
}

uint64_t closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)()
{
  v26 = v0;
  v1 = *(v0 + 400);
  v2 = *(v1 + 64);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 64) = v2;
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;
  v5 = *(v1 + 128);
  v7 = *(v1 + 80);
  v6 = *(v1 + 96);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 128) = v5;
  *(v0 + 80) = v7;
  *(v0 + 96) = v6;
  v9 = *(v1 + 160);
  v8 = *(v1 + 176);
  v10 = *(v1 + 144);
  *(v0 + 192) = *(v1 + 192);
  *(v0 + 160) = v9;
  *(v0 + 176) = v8;
  *(v0 + 144) = v10;
  v11 = *(v1 + 160);
  v24[8] = *(v1 + 144);
  v24[9] = v11;
  v24[10] = *(v1 + 176);
  v25 = *(v1 + 192);
  v12 = *(v1 + 96);
  v24[4] = *(v1 + 80);
  v24[5] = v12;
  v13 = *(v1 + 128);
  v24[6] = *(v1 + 112);
  v24[7] = v13;
  v14 = *(v1 + 32);
  v24[0] = *(v1 + 16);
  v24[1] = v14;
  v15 = *(v1 + 64);
  v24[2] = *(v1 + 48);
  v24[3] = v15;
  type metadata accessor for TokenGenerationSession();
  swift_allocObject();
  outlined init with copy of TokenGenerationConfiguration(v0 + 16, v0 + 200);

  *(v0 + 440) = TokenGenerationSession.init(_:externalLanguageMaker:)(v24, partial apply for closure #1 in TGICAPIWrapper.makeSession());
  TokenGenerationSession.addPrompt(_:)(*(v0 + 408));
  if (v16)
  {

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 448) = MEMORY[0x277D84F90];
    v19 = *(v0 + 440);
    v20 = v19[5];
    v21 = v19[6];
    __swift_project_boxed_opaque_existential_1(v19 + 2, v20);
    v23 = (*(v21 + 16) + **(v21 + 16));
    v22 = swift_task_alloc();
    *(v0 + 456) = v22;
    *v22 = v0;
    v22[1] = closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

    return v23(v20, v21);
  }
}

{
  v2 = *(v1 + 464);
  if (!v2)
  {
    v12 = *(v1 + 424);
    v13 = *(v1 + 432);

    v12(v13, 0);
LABEL_29:

    v18 = *(v1 + 8);
    goto LABEL_30;
  }

  v3 = *(v2 + 16);
  v4 = *(*(v1 + 448) + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0 = *(v1 + 448);
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v0 + 3) >> 1)
  {
    if (*(v2 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v4 <= v5)
  {
    v14 = v4 + v3;
  }

  else
  {
    v14 = v4;
  }

  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, *(v1 + 448));
  if (!*(v2 + 16))
  {
LABEL_15:

    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_6:
  v7 = *(v0 + 2);
  if ((*(v0 + 3) >> 1) - v7 < v3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  memcpy(&v0[8 * v7 + 32], (v2 + 32), 8 * v3);

  if (v3)
  {
    v9 = *(v0 + 2);
    v10 = __OFADD__(v9, v3);
    v11 = v9 + v3;
    if (v10)
    {
      __break(1u);
      return result;
    }

    *(v0 + 2) = v11;
  }

LABEL_16:

  v16 = TokenGenerationSession.detokenize(tokens:)(v15);
  if (v17)
  {
    swift_bridgeObjectRelease_n();

    v18 = *(v1 + 8);
LABEL_30:

    return v18();
  }

  v27 = *(v1 + 424);

  *(swift_task_alloc() + 16) = v27;
  if ((v16._object & 0x1000000000000000) == 0)
  {
    if ((v16._object & 0x2000000000000000) != 0)
    {
      v21 = *(v1 + 424);
      v20 = *(v1 + 432);
      *(v1 + 384) = v16._countAndFlagsBits;
      *(v1 + 392) = v16._object & 0xFFFFFFFFFFFFFFLL;
      v19 = v21(v20, v1 + 384);
      goto LABEL_23;
    }

    if ((v16._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v19 = (*(v1 + 424))(*(v1 + 432), (v16._object & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_23:
      *(v1 + 480) = v19;
      goto LABEL_24;
    }
  }

LABEL_36:
  _StringGuts._slowWithCString<A>(_:)();
LABEL_24:

  v22 = *(v1 + 480);

  if ((v22 & 1) == 0)
  {

    goto LABEL_29;
  }

  *(v1 + 448) = v0;
  v23 = *(v1 + 440);
  v24 = v23[5];
  v25 = v23[6];
  __swift_project_boxed_opaque_existential_1(v23 + 2, v24);
  v28 = (*(v25 + 16) + **(v25 + 16));
  v26 = swift_task_alloc();
  *(v1 + 456) = v26;
  *v26 = v1;
  v26[1] = closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return v28(v24, v25);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);
  }

  else
  {
    v4 = closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a3, v22 - v9, &_sScPSgMd);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of [Int](v10, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of [Int](a3, &_sScPSgMd);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of [Int](a3, &_sScPSgMd);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t TGICAPILanguageModelWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TGILanguageModelCreate(_:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.init(cString:)();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v4, v6);
    v8 = v13;
    v9 = v14;
    v10 = v15;
    type metadata accessor for TGICAPILanguageModelWrapper();
    v11 = swift_allocObject();
    LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(0, v8, *(&v8 + 1), v9, v10, &v13);

    outlined consume of LanguageModelReference(v8, *(&v8 + 1), v9, v10);
    outlined init with take of RandomNumberGenerator(&v13, v11 + 16);
    return v11;
  }

  return result;
}

uint64_t closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  return MEMORY[0x2822009F8](closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:), 0, 0);
}

uint64_t closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:)()
{
  v1._rawValue = *(v0 + 144);
  outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 136) + 16, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = DeterministicLanguageModelProtocol.node(forPreviousNode:tokens:isPrompt:)(v4, v1, 1);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:);

  return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 56, v5, v0 + 96, 0, v6, v7);
}

{
  v2 = *v1;
  *(v2 + 176) = v0;

  outlined destroy of [Int](v2 + 96, &_s24TokenGenerationInference15LogitPresampler_pSgMd);
  if (v0)
  {
    v3 = closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:);
  }

  else
  {
    v3 = closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = (*(v4 + 72))(v3, v4);
  v2(v1, v5 + 32, *(v5 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v6 = v0[1];

  return v6();
}

{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void *TGICAPIGuidedGenerationConstraintsWrapper.init(_:)(__int128 *a1)
{
  v41 = *v1;
  v42 = v1;
  v4 = type metadata accessor for GuidedGenerationConstraints();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GuidedGenerationVocabularyManager();
  v36 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Grammar();
  v40 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;

  Grammar.init(backusNaurForm:prependSpaceToRootRule:)();
  if (v2)
  {
    v46 = *a1;
    outlined destroy of String(&v46);

    v47 = *(a1 + 4);
    outlined destroy of [Int](&v47, &_sSaySiGMd);
    v20 = v42;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v15;
    v31 = v9;
    v32 = v6;
    v33 = v11;
    v34 = v12;
    v35 = v17;
    v18 = type metadata accessor for TokenizerRunner();
    swift_allocObject();

    v19 = TokenizerRunner.init(tokenizerPath:)();
    v44 = v18;
    v45 = MEMORY[0x277D71E60];
    v43 = v19;
    v29 = v19;

    v22 = v35;
    Grammar.characterSetsUsedInGrammar.getter();
    v23 = v33;
    GuidedGenerationVocabularyManager.init(tokenizer:stopTokenIDs:characterSetsUsedInGrammar:)();

    v24 = v40;
    v25 = v34;
    (*(v40 + 16))(v30, v22, v34);
    v26 = v36;
    v27 = v32;
    (*(v36 + 16))(v31, v23, v32);
    v28 = v37;
    GuidedGenerationConstraints.init(grammar:vocabularyManager:)();

    (*(v26 + 8))(v23, v27);
    (*(v24 + 8))(v35, v25);
    v20 = v42;
    (*(v38 + 32))(v42 + OBJC_IVAR____TtC24TokenGenerationInference41TGICAPIGuidedGenerationConstraintsWrapper_constraints, v28, v39);
  }

  return v20;
}

uint64_t TGICAPIGuidedGenerationConstraintsWrapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24TokenGenerationInference41TGICAPIGuidedGenerationConstraintsWrapper_constraints;
  v2 = type metadata accessor for GuidedGenerationConstraints();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TGIGuidedGenerationConstraintsCreate(_:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.init(cString:)();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    lazy protocol witness table accessor for type GuidedGenerationConfiguration and conformance GuidedGenerationConfiguration();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v4, v6);
    v12[0] = *&v9[24];
    v12[1] = v10;
    v13 = v11;
    type metadata accessor for TGICAPIGuidedGenerationConstraintsWrapper();
    v8 = swift_allocObject();
    TGICAPIGuidedGenerationConstraintsWrapper.init(_:)(v12);

    return v8;
  }

  return result;
}

uint64_t TGILanguageModelComputeLogits(_:_:_:_:_:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = MEMORY[0x277D84F90];
  if (a3)
  {
    v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5Int32V_Tt1g5(a3, 0);
    memcpy(v16 + 4, a2, 4 * a3);
    v17 = v16[2];
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v16 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_3:
  v27 = a5;
  v28 = a7;
  v31 = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v15 = v31;
  v18 = *(v31 + 16);
  v19 = 32;
  do
  {
    v20 = *(v16 + v19);
    v31 = v15;
    v21 = *(v15 + 24);
    if (v18 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v18 + 1, 1);
      v15 = v31;
    }

    *(v15 + 16) = v18 + 1;
    *(v15 + 8 * v18 + 32) = v20;
    v19 += 4;
    ++v18;
    --v17;
  }

  while (v17);

  a5 = v27;
  a7 = v28;
LABEL_10:
  v22 = type metadata accessor for TaskPriority();
  v23 = *(*(v22 - 8) + 56);

  v23(v14, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a1;
  v24[5] = v15;
  v24[6] = v30;
  v24[7] = a5;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v14, a7, v24);
}

uint64_t closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for TokenIDMask();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = type metadata accessor for TokenIDMaskResponse();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:), 0, 0);
}

uint64_t closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:)()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:);
  v2 = v0[12];
  v3 = v0[3];

  return MEMORY[0x2821DA258](v2, v3);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:);
  }

  else
  {
    v2 = closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

char *closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  (*(v3 + 16))(v1, *(v0 + 96), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 != *MEMORY[0x277D71DF8])
  {
    if (v4 != *MEMORY[0x277D71E00])
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    (*(*(v0 + 80) + 96))(v14, *(v0 + 72));
    (*(v17 + 32))(v15, v14, v16);
    v18 = TokenIDMask.allowedTokenIDs()();
    v19 = *(v18 + 16);
    if (v19)
    {
      v31 = MEMORY[0x277D84F90];
      v20 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      result = v20;
      v21 = 32;
      v22 = v31;
      while (1)
      {
        v23 = *&result[v21];
        if (v23 < 0xFFFFFFFF80000000)
        {
          goto LABEL_29;
        }

        if (v23 > 0x7FFFFFFF)
        {
          goto LABEL_30;
        }

        v25 = *(v31 + 16);
        v24 = *(v31 + 24);
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          result = v20;
        }

        *(v31 + 16) = v25 + 1;
        *(v31 + 4 * v25 + 32) = v23;
        v21 += 8;
        if (!--v19)
        {

          goto LABEL_23;
        }
      }
    }

    v22 = MEMORY[0x277D84F90];
LABEL_23:
    (*(v0 + 32))(*(v0 + 40), 0, v22 + 32, *(v22 + 16));
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    v28 = *(v0 + 48);

    (*(v27 + 8))(v26, v28);
LABEL_24:
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));

    v29 = *(v0 + 8);

    return v29();
  }

  v5 = *(v0 + 88);
  (*(*(v0 + 80) + 96))(v5, *(v0 + 72));
  v6 = *v5;
  v7 = *(*v5 + 16);
  if (!v7)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_21:
    (*(v0 + 32))(*(v0 + 40), 1, v10 + 32, *(v10 + 16));

    goto LABEL_24;
  }

  v30 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v9 = 32;
  v10 = v30;
  while (1)
  {
    v11 = *(v6 + v9);
    if (v11 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v11 > 0x7FFFFFFF)
    {
      goto LABEL_28;
    }

    v13 = *(v30 + 16);
    v12 = *(v30 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    *(v30 + 16) = v13 + 1;
    *(v30 + 4 * v13 + 32) = v11;
    v9 += 8;
    if (!--v7)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7Float16V_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC24TokenGenerationInference0H6RecordV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D6RecordVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 1;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 5);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5Int32V_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 29;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 2);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return v5;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 4);
  return v4;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * result);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a4, a5, a1, a2, a3, v25);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
      return outlined assign with take of AppAssetGarbageCollector.Manifest.Entry(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for NDArray.Buffer();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v34();
      goto LABEL_7;
    }

    v35();
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return v37(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = *(v24 + 56);
  v26 = v36(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;

    return outlined consume of MetadataSpecialToken(v27, v28, v29);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, a4, a5, a1, a2, a3 & 1, v25);
  }
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized FlattenSequence.Iterator.next()()
{
  v1 = v0[2];
  if (v1)
  {
LABEL_2:
    v2 = *(v1 + 16);
    v3 = v0[3];
    if (v3 == v2)
    {
      goto LABEL_3;
    }

    if (v3 < v2)
    {
      result = *(v1 + 8 * v3 + 32);
      v0[3] = v3 + 1;
      return result;
    }
  }

  else
  {
    while (1)
    {
LABEL_3:
      v4 = v0[1];
      v5 = *(*v0 + 16);
      if (v4 == v5)
      {
        return 0;
      }

      if (v4 >= v5)
      {
        break;
      }

      v1 = *(*v0 + 8 * v4 + 32);
      v0[1] = v4 + 1;

      v0[2] = v1;
      v0[3] = 0;
      if (v1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized TGICAPILanguageModel.node(forPreviousNode:token:isPrompt:)(unint64_t a1, uint64_t a2)
{
  v6 = v2;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *(v2 + 24);
  v3 = *(v9 + 16);
  if (v3 <= a1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *(v6 + 24) = result;
    goto LABEL_7;
  }

  v10 = v9 + 24 * a1;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  if (*(v11 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      return *(*(v11 + 56) + 8 * v13);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  *(inited + 32) = a2;

  specialized Array.append<A>(contentsOf:)(inited);
  v5 = v12;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v4 = *(v6 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 24) = v4;
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v18 + 1;
  v19 = v4 + 32;
  v20 = (v4 + 32 + 24 * v18);
  *v20 = v2;
  v20[1] = v5;
  v20[2] = 0;
  *(v6 + 24) = v4;
  if (*(v4 + 16) > a1)
  {
    v21 = 24 * a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v19 + v21);
    *(v19 + v21) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, a2, isUniquelyReferenced_nonNull_native);
    *(v19 + v21) = v23;

    *(v6 + 24) = v4;
    swift_endAccess();
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference15LogitCollection_pGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(i, &v11, &_sSi_24TokenGenerationInference15LogitCollection_ptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of RandomNumberGenerator(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Si10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v7;
      *(v11 + 8) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference()
{
  result = lazy protocol witness table cache variable for type LanguageModelReference and conformance LanguageModelReference;
  if (!lazy protocol witness table cache variable for type LanguageModelReference and conformance LanguageModelReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference and conformance LanguageModelReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference and conformance LanguageModelReference;
  if (!lazy protocol witness table cache variable for type LanguageModelReference and conformance LanguageModelReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference and conformance LanguageModelReference);
  }

  return result;
}

uint64_t outlined consume of LanguageModelReference(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t partial apply for closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return closure #1 in TGILanguageModelComputeLogits(_:_:_:_:_:)(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t lazy protocol witness table accessor for type GuidedGenerationConfiguration and conformance GuidedGenerationConfiguration()
{
  result = lazy protocol witness table cache variable for type GuidedGenerationConfiguration and conformance GuidedGenerationConfiguration;
  if (!lazy protocol witness table cache variable for type GuidedGenerationConfiguration and conformance GuidedGenerationConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedGenerationConfiguration and conformance GuidedGenerationConfiguration);
  }

  return result;
}

uint64_t type metadata accessor for TGICAPIGuidedGenerationConstraintsWrapper()
{
  result = type metadata singleton initialization cache for TGICAPIGuidedGenerationConstraintsWrapper;
  if (!type metadata singleton initialization cache for TGICAPIGuidedGenerationConstraintsWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return closure #1 in TGIGuidedGenerationConstraintsNextMask(_:_:_:_:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata completion function for TGICAPIGuidedGenerationConstraintsWrapper()
{
  result = type metadata accessor for GuidedGenerationConstraints();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TGICAPILanguageModel.NodeState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TGICAPILanguageModel.NodeState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v4, &v11, &_sSo11CFStringRefa_yptMd);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v5, &_sSS_24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
      result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with take of AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      outlined copy of MetadataSpecialToken(v7, v8, v9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined copy of MetadataSpecialToken(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of MetadataSpecialToken(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference10E5FunctionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v12 = i[4];
      v11 = i[5];

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v12;
      v16[5] = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined assign with take of AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GAC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_yptMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VypGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v5, &_s15TokenGeneration6PromptV07SpecialA0V_yptMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Prompt.SpecialToken();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of Any(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v9, v5, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMd);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Prompt.SpecialToken();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type [TokenTreeNode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TokenTreeNode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TokenTreeNode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay24TokenGenerationInference0A8TreeNodeCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TokenTreeNode] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TGITokenGeneratorGenerate(_:_:_:_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*(v2 + 24), a1);
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TokenGenerationConfiguration.TokenGenerationConfigurationError and conformance TokenGenerationConfiguration.TokenGenerationConfigurationError()
{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.TokenGenerationConfigurationError and conformance TokenGenerationConfiguration.TokenGenerationConfigurationError;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.TokenGenerationConfigurationError and conformance TokenGenerationConfiguration.TokenGenerationConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.TokenGenerationConfigurationError and conformance TokenGenerationConfiguration.TokenGenerationConfigurationError);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GuidedGenerationConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidedGenerationConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModelReference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageModelReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenGenerationConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for TokenGenerationConfiguration(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 184) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 4 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_So29TGIE5AdapterConfigurationObjCCs5NeverOTg509_sS2SSo29defg28CCIgggo_SS3key_SS5valuetABs5H173OIegnrzr_TR0129_s24TokenGenerationInference22LanguageModelReferenceO04makedE008externalD5MakerAA013DeterministicdE8Protocol_pAaF_pSSKcSg_tKFSo29abcD13CCSS_SStXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v28 = v1 + 72;
    v29 = v2;
    v30 = v7;
    v31 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v32 = v6;
      v10 = (*(v1 + 48) + 16 * v5);
      v12 = *v10;
      v11 = v10[1];
      v13 = (*(v1 + 56) + 16 * v5);
      v14 = v1;
      v15 = *v13;
      v16 = v13[1];
      v17 = objc_allocWithZone(TGIE5AdapterConfigurationObjC);

      v18 = MEMORY[0x223D8E6B0](0, 0xE000000000000000);
      v19 = MEMORY[0x223D8E6B0](v12, v11);
      v20 = MEMORY[0x223D8E6B0](v15, v16);
      [v17 initWithAdapterType:v18 symbolName:v19 mutableWeightsFilePath:v20];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v14 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v1 = v14;
      v4 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v7 = v30;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of [String : String].Index._Variant(v5, v30, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = outlined consume of [String : String].Index._Variant(v5, v30, 0);
      }

LABEL_4:
      v6 = v32 + 1;
      v5 = v8;
      if (v32 + 1 == v29)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a5 == 1)
    {
      outlined copy of LanguageModelReference(a2, a3, a4, 1);
      v10 = specialized WeightedFiniteStateLanguageModel.init(tokens:vocabSize:ignorePromptTokens:)(a2, 0, 1);
      v12 = v11;
      v14 = v13;
      v16 = v15;
      a6[3] = &type metadata for WeightedFiniteStateLanguageModel;
      a6[4] = &protocol witness table for WeightedFiniteStateLanguageModel;
      v17 = swift_allocObject();
      *a6 = v17;
      *(v17 + 16) = v10;
      *(v17 + 24) = v12;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16 & 1;
    }

    else if (a1)
    {

      a1(v40, a2, a3);
      outlined consume of LanguageModelReference(a2, a3, a4, 2);
      if (!v6)
      {
        outlined init with take of RandomNumberGenerator(v40, v42);
        outlined init with take of RandomNumberGenerator(v42, a6);
      }
    }

    else
    {
      v41 = 0;
      memset(v40, 0, sizeof(v40));

      outlined destroy of [Int](v40, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      lazy protocol witness table accessor for type TokenGenerationConfiguration.TokenGenerationConfigurationError and conformance TokenGenerationConfiguration.TokenGenerationConfigurationError();
      swift_allocError();
      *v38 = a2;
      v38[1] = a3;
      swift_willThrow();
    }
  }

  else
  {
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_So29TGIE5AdapterConfigurationObjCCs5NeverOTg509_sS2SSo29defg28CCIgggo_SS3key_SS5valuetABs5H173OIegnrzr_TR0129_s24TokenGenerationInference22LanguageModelReferenceO04makedE008externalD5MakerAA013DeterministicdE8Protocol_pAaF_pSSKcSg_tKFSo29abcD13CCSS_SStXEfU_Tf3nnnpf_nTf1cn_n(v18);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo29TGIE5AdapterConfigurationObjCC_SayAEGTt0g5Tf4g_n(v21);

    if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v22 = objc_allocWithZone(TGIE5ModelConfigurationObjC);
    v23 = MEMORY[0x223D8E6B0](a2, a3);
    type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
    lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
    isa = Set._bridgeToObjectiveC()().super.isa;

    type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
    lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
    v25 = Set._bridgeToObjectiveC()().super.isa;

    v26 = [v22 initWithModelType:0 modelBundlePath:v23 e5Functions:isa adapterConfigurations:v25];

    v27 = objc_allocWithZone(E5RunnerObjC);
    *&v42[0] = 0;
    v28 = v26;
    v29 = [v27 initWithModelConfiguration:v28 error:v42];
    if (v29)
    {
      v30 = *&v42[0];

      v31 = v29;
      v32 = [v31 maxContextLength];
      type metadata accessor for KVLRUCache();
      v33 = swift_allocObject();
      v34 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
      *(v33 + 16) = v34;
      [v34 setTotalCostLimit_];
      v35 = type metadata accessor for E5TransformerLanguageModel();
      v36 = swift_allocObject();
      v37 = specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:)(v31, v33, 1296840005, 0xE400000000000000, v36);
      a6[3] = v35;
      a6[4] = &protocol witness table for E5TransformerLanguageModel;

      *a6 = v37;
    }

    else
    {
      v39 = *&v42[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_2209B2074(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209B207CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LanguageModelReference.CodingKeys()
{
  v1 = 0x7261656E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 13669;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LanguageModelReference.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LanguageModelReference.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LanguageModelReference.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LanguageModelReference.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LanguageModelReference.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = a2;
  v29 = a5;
  v23 = a4;
  v28 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference22LanguageModelReferenceO18ExternalCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v22 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference22LanguageModelReferenceO16LinearCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference22LanguageModelReferenceO12E5CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference22LanguageModelReferenceO10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29)
  {
    if (v29 == 1)
    {
      LOBYTE(v34) = 1;
      lazy protocol witness table accessor for type LanguageModelReference.LinearCodingKeys and conformance LanguageModelReference.LinearCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
      lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
      v16 = v26;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v24 + 8))(v9, v16);
    }

    else
    {
      LOBYTE(v34) = 2;
      lazy protocol witness table accessor for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v20 = v27;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v25 + 8))(v7, v20);
    }
  }

  else
  {
    v18 = v22;
    v17 = v23;
    LOBYTE(v34) = 0;
    lazy protocol witness table accessor for type LanguageModelReference.E5CodingKeys and conformance LanguageModelReference.E5CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v34) = 0;
    v19 = v31;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v19)
    {
      v34 = v17;
      v33 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    (*(v18 + 8))(v12, v10);
  }

  return (*(v32 + 8))(v15, v13);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LanguageModelReference.E5CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LanguageModelReference.E5CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LanguageModelReference.E5CodingKeys()
{
  if (*v0)
  {
    return 0x7372657470616461;
  }

  else
  {
    return 0x6150656C646E7562;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LanguageModelReference.E5CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7372657470616461 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LanguageModelReference.E5CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.E5CodingKeys and conformance LanguageModelReference.E5CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LanguageModelReference.E5CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.E5CodingKeys and conformance LanguageModelReference.E5CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LanguageModelReference.ExternalCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LanguageModelReference.ExternalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LanguageModelReference.ExternalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LanguageModelReference.LinearCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LanguageModelReference.LinearCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.LinearCodingKeys and conformance LanguageModelReference.LinearCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LanguageModelReference.LinearCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LanguageModelReference.LinearCodingKeys and conformance LanguageModelReference.LinearCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance LanguageModelReference@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized LanguageModelReference.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t TokenGenerationConfiguration.Sampling.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v27 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV8SamplingO14TopKCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV8SamplingO07NucleusH10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV8SamplingO16ArgmaxCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV8SamplingO10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.CodingKeys and conformance TokenGenerationConfiguration.Sampling.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v29 = 1;
    lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys and conformance TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v8, v18);
    return (*(v13 + 8))(v15, v12);
  }

  if (v27 == 1)
  {
    v30 = 2;
    lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.TopKCodingKeys and conformance TokenGenerationConfiguration.Sampling.TopKCodingKeys();
    v16 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v25;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v24 + 8))(v16, v17);
    return (*(v13 + 8))(v15, v12);
  }

  v28 = 0;
  lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys and conformance TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v11, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t TokenGenerationConfiguration.DecoderType.encode(to:)(void *a1)
{
  v2 = v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO027TwoStageSpeculativeWithStopD12IdCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v44 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO29TwoStageSpeculativeCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO15BasicCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v11 = &v44 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.CodingKeys and conformance TokenGenerationConfiguration.DecoderType.CodingKeys();
  v52 = v11;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v2 + 112);
  v58[6] = *(v2 + 96);
  v58[7] = v12;
  v58[8] = *(v2 + 128);
  v59 = *(v2 + 144);
  v13 = *(v2 + 48);
  v58[2] = *(v2 + 32);
  v58[3] = v13;
  v14 = *(v2 + 80);
  v58[4] = *(v2 + 64);
  v58[5] = v14;
  v15 = *(v2 + 16);
  v58[0] = *v2;
  v58[1] = v15;
  v16 = _s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOg(v58);
  v17 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(v58);
  v19 = *v17;
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  if (v16)
  {
    v22 = v17;
    if (v16 == 1)
    {
      LOBYTE(v54) = 1;
      lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys();
      v23 = v6;
      v24 = v53;
      v25 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v54 = v19;
      *(&v54 + 1) = v18;
      *&v55 = v20;
      BYTE8(v55) = v21;
      v60 = 0;
      lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
      v26 = v47;
      v27 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v27)
      {
        (*(v46 + 8))(v23, v26);
        return (*(v51 + 8))(v25, v24);
      }

      else
      {
        v36 = *(v22 + 48);
        v37 = *(v22 + 56);
        v54 = *(v22 + 32);
        *&v55 = v36;
        BYTE8(v55) = v37;
        v60 = 1;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v38 = *(v22 + 112);
        v56 = *(v22 + 96);
        v57[0] = v38;
        *(v57 + 9) = *(v22 + 121);
        v39 = *(v22 + 64);
        v55 = *(v22 + 80);
        v54 = v39;
        v60 = 2;
        lazy protocol witness table accessor for type DraftingBehavior and conformance DraftingBehavior();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v46 + 8))(0, v26);
        return (*(v51 + 8))(v52, v53);
      }
    }

    else
    {
      LOBYTE(v54) = 2;
      lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys();
      v31 = v45;
      v32 = v53;
      v33 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v54 = v19;
      *(&v54 + 1) = v18;
      *&v55 = v20;
      BYTE8(v55) = v21;
      v60 = 0;
      lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
      v34 = v48;
      v35 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v35)
      {
        v40 = *(v22 + 48);
        v41 = *(v22 + 56);
        v54 = *(v22 + 32);
        *&v55 = v40;
        BYTE8(v55) = v41;
        v60 = 1;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v42 = *(v22 + 112);
        v56 = *(v22 + 96);
        v57[0] = v42;
        *(v57 + 9) = *(v22 + 121);
        v43 = *(v22 + 64);
        v55 = *(v22 + 80);
        v54 = v43;
        v60 = 2;
        lazy protocol witness table accessor for type DraftingBehavior and conformance DraftingBehavior();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        LOBYTE(v54) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v49 + 8))(v31, v34);
      return (*(v51 + 8))(v33, v32);
    }
  }

  else
  {
    LOBYTE(v54) = 0;
    lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.BasicCodingKeys and conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys();
    v29 = v53;
    v30 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    *&v54 = v19;
    *(&v54 + 1) = v18;
    *&v55 = v20;
    BYTE8(v55) = v21;
    lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v9, v7);
    return (*(v51 + 8))(v30, v29);
  }
}

uint64_t TokenGenerationConfiguration.DecoderType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO027TwoStageSpeculativeWithStopD12IdCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO29TwoStageSpeculativeCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO15BasicCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference0dE13ConfigurationV11DecoderTypeO10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.CodingKeys and conformance TokenGenerationConfiguration.DecoderType.CodingKeys();
  v15 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v8;
    *&v63[16] = 0;
    v17 = v70;
    v72 = v13;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = v18;
    v20 = *(v18 + 16);
    v21 = v11;
    if (v20)
    {
      v22 = *(v18 + 32);
      if (v20 == 1 && v22 != 3)
      {
        if (*(v18 + 32))
        {
          if (v22 == 1)
          {
            v74.i8[0] = 1;
            lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys();
            v29 = v7;
            v30 = v72;
            v31 = *&v63[16];
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v31)
            {
              (*(v71 + 8))(v30, v11);
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v106);
            }

            v74.i8[0] = 0;
            lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
            v36 = v67;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v40 = v29;
            v69 = *(&v80 + 1);
            v41 = v80;
            v42 = v81;
            LODWORD(v70) = BYTE8(v81);
            v74.i8[0] = 1;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v43 = v66;
            v65 = v41;
            v68 = v42;
            *&v63[8] = v93;
            v51 = v94;
            LOBYTE(v41) = v95;
            LOBYTE(v89) = 2;
            lazy protocol witness table accessor for type DraftingBehavior and conformance DraftingBehavior();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v43 + 8))(v40, v36);
            (*(v71 + 8))(v72, v11);
            swift_unknownObjectRelease();
            v73[4] = *(v88 + 9);
            *(&v73[3] + 7) = v88[0];
            *(v73 + 7) = v85;
            *(&v73[2] + 7) = v87;
            *(&v73[1] + 7) = v86;
            *(&v77[4] + 9) = v73[4];
            *(&v77[1] + 9) = v73[1];
            *(&v77[2] + 9) = v73[2];
            *(v77 + 9) = v73[0];
            v74.i64[0] = v65;
            v74.i64[1] = v69;
            *&v75 = v68;
            BYTE8(v75) = v70;
            v76 = *&v63[8];
            *&v77[0] = v51;
            BYTE8(v77[0]) = v41;
            *(&v77[3] + 9) = v73[3];
            _s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOi0_(&v74);
            v102 = v77[3];
            v103 = v77[4];
            v104 = v77[5];
            v105 = v78;
            v98 = v76;
            v99 = v77[0];
            v100 = v77[1];
            v101 = v77[2];
            v96 = v74;
            v97 = v75;
LABEL_21:
            v44 = v103;
            v45 = v64;
            *(v64 + 96) = v102;
            *(v45 + 112) = v44;
            *(v45 + 128) = v104;
            *(v45 + 144) = v105;
            v46 = v99;
            *(v45 + 32) = v98;
            *(v45 + 48) = v46;
            v47 = v101;
            *(v45 + 64) = v100;
            *(v45 + 80) = v47;
            v48 = v97;
            *v45 = v96;
            *(v45 + 16) = v48;
            return __swift_destroy_boxed_opaque_existential_1(v106);
          }

          v74.i8[0] = 2;
          lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys();
          v33 = v72;
          v35 = *&v63[16];
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v35)
          {
            v74.i8[0] = 0;
            lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
            v39 = v17;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v67 = v19;
            v49 = v93;
            v50 = v94;
            LODWORD(v66) = v95;
            v74.i8[0] = 1;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            *v63 = v49;
            v65 = v50;
            v52 = v89;
            v53 = v90;
            v54 = v91;
            LODWORD(v50) = v92;
            v84 = 2;
            lazy protocol witness table accessor for type DraftingBehavior and conformance DraftingBehavior();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            *&v60 = v52;
            *(&v60 + 1) = v53;
            v61 = v54;
            v62 = v50;
            v82 = v87;
            *v83 = v88[0];
            *&v83[9] = *(v88 + 9);
            v80 = v85;
            v81 = v86;
            v79 = 3;
            v55 = v69;
            v59 = KeyedDecodingContainer.decode(_:forKey:)();
            *&v63[16] = 0;
            v56 = *&v63[8];
            v57 = *v63;
            (*(v68 + 8))(v39, v55);
            (*(v71 + 8))(v72, v21);
            swift_unknownObjectRelease();
            v73[4] = *&v83[9];
            *(&v73[3] + 7) = *v83;
            *(v73 + 7) = v80;
            *(&v73[2] + 7) = v82;
            *(&v73[1] + 7) = v81;
            *(&v77[4] + 9) = v73[4];
            *(&v77[1] + 9) = v73[1];
            *(&v77[2] + 9) = v73[2];
            *(v77 + 9) = v73[0];
            v74.i64[0] = v57;
            v74.i64[1] = v56;
            *&v75 = v65;
            BYTE8(v75) = v66;
            v76 = v60;
            *&v77[0] = v61;
            BYTE8(v77[0]) = v62;
            *(&v77[3] + 9) = v73[3];
            v78 = v59;
            _s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOi1_(&v74);
            v102 = v77[3];
            v103 = v77[4];
            v104 = v77[5];
            v105 = v78;
            v98 = v76;
            v99 = v77[0];
            v100 = v77[1];
            v101 = v77[2];
            v96 = v74;
            v97 = v75;
            goto LABEL_21;
          }
        }

        else
        {
          v74.i8[0] = 0;
          lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.BasicCodingKeys and conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys();
          v32 = v10;
          v33 = v72;
          v34 = *&v63[16];
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            lazy protocol witness table accessor for type LanguageModelReference and conformance LanguageModelReference();
            v37 = v16;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v38 = v71;
            (*(v65 + 8))(v32, v37);
            (*(v38 + 8))(v72, v11);
            swift_unknownObjectRelease();
            v74 = v73[0];
            *&v75 = *&v73[1];
            BYTE8(v75) = BYTE8(v73[1]);
            _s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOi_(&v74);
            v102 = v77[3];
            v103 = v77[4];
            v104 = v77[5];
            v105 = v78;
            v98 = v76;
            v99 = v77[0];
            v100 = v77[1];
            v101 = v77[2];
            v96 = v74;
            v97 = v75;
            goto LABEL_21;
          }
        }

        (*(v71 + 8))(v33, v11);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v106);
      }
    }

    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v26 = &type metadata for TokenGenerationConfiguration.DecoderType;
    v27 = v72;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v71 + 8))(v27, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v106);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys and conformance TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys and conformance TokenGenerationConfiguration.Sampling.ArgmaxCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenGenerationConfiguration.Sampling.CodingKeys()
{
  v1 = 0x537375656C63756ELL;
  if (*v0 != 1)
  {
    v1 = 1265659764;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.Sampling.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TokenGenerationConfiguration.Sampling.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.Sampling.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.CodingKeys and conformance TokenGenerationConfiguration.Sampling.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.Sampling.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.CodingKeys and conformance TokenGenerationConfiguration.Sampling.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys and conformance TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys and conformance TokenGenerationConfiguration.Sampling.NucleusSamplingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.Sampling.TopKCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.Sampling.TopKCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.TopKCodingKeys and conformance TokenGenerationConfiguration.Sampling.TopKCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.Sampling.TopKCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling.TopKCodingKeys and conformance TokenGenerationConfiguration.Sampling.TopKCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TokenGenerationConfiguration.Sampling@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized TokenGenerationConfiguration.Sampling.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TokenGenerationConfiguration.Sampling(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    return !*(a2 + 8) && v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  return v4 == 2 && *&v3 == 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LanguageModelReference.ExternalCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LanguageModelReference.ExternalCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65676175676E616CLL && a2 == 0xED00006C65646F4DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.BasicCodingKeys and conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.BasicCodingKeys and conformance TokenGenerationConfiguration.DecoderType.BasicCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenGenerationConfiguration.DecoderType.CodingKeys()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.DecoderType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TokenGenerationConfiguration.DecoderType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.DecoderType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.CodingKeys and conformance TokenGenerationConfiguration.DecoderType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.DecoderType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.CodingKeys and conformance TokenGenerationConfiguration.DecoderType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys()
{
  v1 = 0x7466617264;
  if (*v0 != 1)
  {
    v1 = 0x726F697661686562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys()
{
  v1 = 0x746567726174;
  v2 = 0x726F697661686562;
  if (*v0 != 2)
  {
    v2 = 0x656B6F54706F7473;
  }

  if (*v0)
  {
    v1 = 0x7466617264;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys and conformance TokenGenerationConfiguration.DecoderType.TwoStageSpeculativeWithStopTokenIdCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenGenerationConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference0dE13ConfigurationV10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = v1[7];
  v48 = v1[6];
  v49 = v7;
  v50 = v1[8];
  v8 = *(v1 + 18);
  v17 = *(v1 + 19);
  v51 = v8;
  v9 = v1[3];
  v44 = v1[2];
  v45 = v9;
  v10 = v1[5];
  v46 = v1[4];
  v47 = v10;
  v11 = v1[1];
  v42 = *v1;
  v43 = v11;
  v16 = *(v1 + 160);
  v12 = *(v1 + 21);
  v15[1] = *(v1 + 22);
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of TokenGenerationConfiguration.DecoderType(&v42, &v32);
  lazy protocol witness table accessor for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v32 = v42;
  v33 = v43;
  v31 = 0;
  lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType();
  v13 = v52;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v21 = v32;
    v22 = v33;
    outlined destroy of TokenGenerationConfiguration.DecoderType(&v21);
  }

  else
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v21 = v32;
    v22 = v33;
    outlined destroy of TokenGenerationConfiguration.DecoderType(&v21);
    v19 = v17;
    v20 = v16;
    v18 = 1;
    lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TokenGenerationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference0dE13ConfigurationV10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v44 = 0;
  lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType();
  v9 = v65;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v55 = v45;
  v56 = v46;
  LOBYTE(v25) = 1;
  lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *&v37[0];
  HIDWORD(v23) = BYTE8(v37[0]);
  v43 = 2;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v8 + 8))(v7, v9);
  v13 = v61;
  v31 = v61;
  v32 = v62;
  v33 = v63;
  v14 = v57;
  v27 = v57;
  v28 = v58;
  v29 = v59;
  v30 = v60;
  v25 = v55;
  v26 = v56;
  v15 = v60;
  v16 = v62;
  v17 = v58;
  *(a2 + 64) = v59;
  *(a2 + 80) = v15;
  v18 = v24;
  *&v34 = v64;
  *(&v34 + 1) = v24;
  v19 = BYTE4(v23);
  LOBYTE(v35) = BYTE4(v23);
  *(&v35 + 1) = v10;
  v36 = v12;
  *(a2 + 176) = v12;
  *(a2 + 96) = v13;
  *(a2 + 112) = v16;
  v20 = v26;
  *a2 = v25;
  *(a2 + 16) = v20;
  *(a2 + 32) = v14;
  *(a2 + 48) = v17;
  v21 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v21;
  *(a2 + 160) = v35;
  outlined init with copy of TokenGenerationConfiguration(&v25, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[6] = v61;
  v37[7] = v62;
  v37[8] = v63;
  v37[2] = v57;
  v37[3] = v58;
  v37[4] = v59;
  v37[5] = v60;
  v37[0] = v55;
  v37[1] = v56;
  v38 = v64;
  v39 = v18;
  v40 = v19;
  v41 = v10;
  v42 = v12;
  return outlined destroy of TokenGenerationConfiguration(v37);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TokenGenerationConfiguration.CodingKeys()
{
  v1 = 0x676E696C706D6173;
  if (*v0 != 1)
  {
    v1 = 0x657A696E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265646F636564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TokenGenerationConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TokenGenerationConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TokenGenerationConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TokenGenerationConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenGenerationConfiguration.makeDecoder(externalLanguageMaker:)@<X0>(void (*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  result = TokenGenerationConfiguration.makeSampling()(v55);
  if (!v3)
  {
    v56 = a2;
    v7 = *(v2 + 112);
    v53[6] = *(v2 + 96);
    v53[7] = v7;
    v53[8] = *(v2 + 128);
    v54 = *(v2 + 144);
    v8 = *(v2 + 48);
    v53[2] = *(v2 + 32);
    v53[3] = v8;
    v9 = *(v2 + 80);
    v53[4] = *(v2 + 64);
    v53[5] = v9;
    v10 = *(v2 + 16);
    v53[0] = *v2;
    v53[1] = v10;
    v11 = _s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOg(v53);
    v12 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(v53);
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v11)
    {
      v17 = *(v12 + 32);
      v18 = *(v12 + 40);
      v19 = *(v12 + 48);
      if (v11 == 1)
      {
        v20 = *(v12 + 56);
        v21 = *(v12 + 112);
        v49 = *(v12 + 96);
        v50[0] = v21;
        *(v50 + 9) = *(v12 + 121);
        v22 = *(v12 + 80);
        v47 = *(v12 + 64);
        v48 = v22;
        LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(0, v17, v18, v19, v20, v46);
        LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(0, v14, v13, v15, v16, v45);
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v23 = 0;
      }

      else
      {
        v33 = *(v12 + 144);
        v34 = *(v12 + 56);
        v35 = *(v12 + 112);
        v49 = *(v12 + 96);
        v50[0] = v35;
        *(v50 + 9) = *(v12 + 121);
        v36 = *(v12 + 80);
        v47 = *(v12 + 64);
        v48 = v36;
        LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(0, v17, v18, v19, v34, v46);
        LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(0, v14, v13, v15, v16, v45);
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        v23 = v33;
      }

      DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v46, v45, &v42, v55, v23, v51);
      outlined destroy of [Int](&v42, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v45);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v41 = v52;
      v37 = v52;
      v38 = __swift_project_boxed_opaque_existential_1(v51, v52);
      v39 = v56;
      *(v56 + 24) = v41;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v38, v37);
      __swift_destroy_boxed_opaque_existential_1(v55);
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    else
    {
      LanguageModelReference.makeLanguageModel(externalLanguageMaker:)(a1, v14, v13, v15, v16, &v47);
      v24 = type metadata accessor for BasicDecoder();
      outlined init with copy of DeterministicLanguageModelProtocol(v55, v51);
      v25 = *(&v48 + 1);
      v26 = v49;
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      MEMORY[0x28223BE20](v27);
      v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v29);
      v31 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v29, v51, v24, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v32 = v56;
      *(v56 + 24) = v24;
      v32[4] = &protocol witness table for BasicDecoder;
      *v32 = v31;
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }
  }

  return result;
}

uint64_t TokenGenerationConfiguration.makeSampling()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 152);
  if (!*(v1 + 160))
  {
    v12 = &type metadata for SeedableRandomNumberGenerator;
    v13 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *&v11 = 0;
    v8 = type metadata accessor for NucleusSampling();
    swift_allocObject();
    result = NucleusSampling.init(p:temperature:generator:)(&v11, *&v4, 1.0);
    if (v2)
    {
      return result;
    }

    v7 = &protocol witness table for NucleusSampling;
    a1[3] = v8;
    goto LABEL_7;
  }

  if (*(v1 + 160) == 1)
  {
    v12 = &type metadata for SeedableRandomNumberGenerator;
    v13 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *&v11 = 0;
    v5 = type metadata accessor for TopK();
    swift_allocObject();
    result = TopK.init(k:temperature:generator:)(v4, &v11, 1.0);
    if (v2)
    {
      return result;
    }

    v7 = &protocol witness table for TopK;
    a1[3] = v5;
LABEL_7:
    a1[4] = v7;
    *a1 = result;
    return result;
  }

  v12 = &type metadata for SeedableRandomNumberGenerator;
  v13 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *&v11 = 0;
  v9 = type metadata accessor for GreedySampling();
  v10 = swift_allocObject();
  result = outlined init with take of RandomNumberGenerator(&v11, v10 + 16);
  a1[3] = v9;
  a1[4] = &protocol witness table for GreedySampling;
  *a1 = v10;
  return result;
}

uint64_t GuidedGenerationConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference06GuidedE13ConfigurationV10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GuidedGenerationConfiguration.CodingKeys and conformance GuidedGenerationConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GuidedGenerationConfiguration.CodingKeys()
{
  v1 = 0x5372616D6D617267;
  if (*v0 != 1)
  {
    v1 = 0x656B6F54706F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A696E656B6F74;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GuidedGenerationConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GuidedGenerationConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GuidedGenerationConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GuidedGenerationConfiguration.CodingKeys and conformance GuidedGenerationConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GuidedGenerationConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GuidedGenerationConfiguration.CodingKeys and conformance GuidedGenerationConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance GuidedGenerationConfiguration@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized GuidedGenerationConfiguration.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GuidedGenerationConfiguration(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, v7);
}

unint64_t lazy protocol witness table accessor for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.CodingKeys and conformance TokenGenerationConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType()
{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.DecoderType and conformance TokenGenerationConfiguration.DecoderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling()
{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling;
  if (!lazy protocol witness table cache variable for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerationConfiguration.Sampling and conformance TokenGenerationConfiguration.Sampling);
  }

  return result;
}

uint64_t specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26E5TransformerLanguageModelC9NodeStateVGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220AE8A30;
  v11 = MEMORY[0x277D84F90];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *(v10 + 56) = v12;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(a5 + 56) = v10;
  *(a5 + 64) = 0;
  *(a5 + 72) = static Duration.zero.getter();
  *(a5 + 80) = v13;
  ContinuousClock.init()();
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) = &outlined read-only object #0 of specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:);
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes) = v11;
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_allPromptModuleNodes) = v11;
  v14 = a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(a5 + 40) = a1;
  *(a5 + 48) = &protocol witness table for E5RunnerObjC;
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_lruKVCache) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return a5;
}

uint64_t specialized static TokenGenerationConfiguration.DecoderType.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 80);
  v114 = *(a1 + 96);
  v115 = v2;
  v4 = *(a1 + 112);
  v116 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v110 = *(a1 + 32);
  v111 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v112 = *(a1 + 64);
  v113 = v8;
  v9 = *(a1 + 16);
  v109[0] = *a1;
  v109[1] = v9;
  v10 = a2[7];
  v11 = a2[5];
  v124 = a2[6];
  v125 = v10;
  v12 = a2[7];
  v126 = a2[8];
  v13 = a2[3];
  v14 = a2[1];
  v120 = a2[2];
  v121 = v13;
  v15 = a2[3];
  v16 = a2[5];
  v122 = a2[4];
  v123 = v16;
  v17 = a2[1];
  v118 = *a2;
  v119 = v17;
  v18 = *(a1 + 112);
  v128[6] = *(a1 + 96);
  v128[7] = v18;
  v128[8] = *(a1 + 128);
  v19 = *(a1 + 48);
  v128[2] = *(a1 + 32);
  v128[3] = v19;
  v20 = *(a1 + 80);
  v128[4] = *(a1 + 64);
  v128[5] = v20;
  v21 = *(a1 + 16);
  v128[0] = *a1;
  v128[1] = v21;
  v22 = a2[8];
  v137 = v12;
  v138 = v22;
  v136 = v124;
  v132 = v120;
  v133 = v15;
  v134 = v122;
  v135 = v11;
  v130 = v118;
  v131 = v14;
  v140[6] = v114;
  v140[7] = v4;
  v140[8] = *(a1 + 128);
  v140[2] = v110;
  v140[3] = v7;
  v140[4] = v112;
  v140[5] = v3;
  v117 = *(a1 + 144);
  v127 = *(a2 + 18);
  v23 = *(a2 + 18);
  v129 = *(a1 + 144);
  v139 = v23;
  v141 = *(a1 + 144);
  v140[0] = v109[0];
  v140[1] = v6;
  v24 = _s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOg(v140);
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(v140);
      v105 = v124;
      v106 = v125;
      v107 = v126;
      v108 = v127;
      v101 = v120;
      v102 = v121;
      v103 = v122;
      v104 = v123;
      v99 = v118;
      v100 = v119;
      if (_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOg(&v99) == 1)
      {
        v26 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(&v99);
        v27 = *v25;
        v28 = *(v25 + 8);
        v29 = *v26;
        v30 = *(v26 + 8);
        v31 = *(v26 + 24);
        if (*(v25 + 24))
        {
          if (*(v25 + 24) == 1)
          {
            if (v31 != 1 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v27, *v26) & 1) == 0)
            {
              goto LABEL_104;
            }
          }

          else if (v31 != 2 || (v27 != v29 || v28 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_68;
        }

        if (*(v26 + 24))
        {
          goto LABEL_104;
        }

        v52 = *(v25 + 16);
        v53 = *(v26 + 16);
        if ((v27 != v29 || v28 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_104;
        }

        if (v52)
        {
          if (v53)
          {
            outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
            outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);

            v54 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v52, v53);

            if ((v54 & 1) == 0)
            {
              goto LABEL_106;
            }

            goto LABEL_69;
          }
        }

        else if (!v53)
        {
LABEL_68:
          outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
          outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);
LABEL_69:
          v62 = *(v25 + 32);
          v63 = *(v25 + 40);
          v64 = *(v26 + 32);
          v65 = *(v26 + 40);
          v66 = *(v26 + 56);
          if (*(v25 + 56))
          {
            if (*(v25 + 56) == 1)
            {
              if (v66 == 1)
              {
                v67 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v62, *(v26 + 32));
LABEL_110:
                v81 = v67;
                outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
                if ((v81 & 1) == 0)
                {
                  goto LABEL_107;
                }

LABEL_111:
                v82 = *(v25 + 112);
                v97 = *(v25 + 96);
                v98[0] = v82;
                *(v98 + 9) = *(v25 + 121);
                v83 = *(v25 + 80);
                v95 = *(v25 + 64);
                v96 = v83;
                v84 = *(v26 + 112);
                v93 = *(v26 + 96);
                v94[0] = v84;
                *(v94 + 9) = *(v26 + 121);
                v85 = *(v26 + 80);
                v91 = *(v26 + 64);
                v92 = v85;
                v60 = specialized static DraftingBehavior.== infix(_:_:)(&v95, &v91);
                return v60 & 1;
              }
            }

            else if (v66 == 2)
            {
              if (v62 == v64 && v63 == v65)
              {
                outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
                goto LABEL_111;
              }

              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
              goto LABEL_110;
            }

LABEL_106:
            outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
            goto LABEL_107;
          }

          if (*(v26 + 56))
          {
            goto LABEL_106;
          }

          v68 = *(v25 + 48);
          v69 = *(v26 + 48);
          if ((v62 != v64 || v63 != v65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_106;
          }

          if (!v68)
          {
            outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
            if (v69)
            {
              goto LABEL_107;
            }

            goto LABEL_111;
          }

          if (!v69)
          {
            goto LABEL_106;
          }

          v70 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v68, v69);
          outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);

          if (v70)
          {
            goto LABEL_111;
          }

LABEL_107:
          v60 = 0;
          return v60 & 1;
        }

LABEL_104:
        outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
        v51 = &v95;
        goto LABEL_105;
      }

LABEL_26:
      outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v99);
      v51 = &v99;
LABEL_105:
      outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, v51);
      goto LABEL_106;
    }

    v44 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(v140);
    v105 = v124;
    v106 = v125;
    v107 = v126;
    v108 = v127;
    v101 = v120;
    v102 = v121;
    v103 = v122;
    v104 = v123;
    v99 = v118;
    v100 = v119;
    if (_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOg(&v99) != 2)
    {
      goto LABEL_26;
    }

    v45 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(&v99);
    v46 = *v44;
    v47 = *(v44 + 8);
    v48 = *v45;
    v49 = *(v45 + 8);
    v50 = *(v45 + 24);
    if (*(v44 + 24))
    {
      if (*(v44 + 24) == 1)
      {
        if (v50 != 1 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v46, *v45) & 1) == 0)
        {
          goto LABEL_104;
        }
      }

      else if (v50 != 2 || (v46 != v48 || v47 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (*(v45 + 24))
      {
        goto LABEL_104;
      }

      v55 = *(v44 + 16);
      v56 = *(v45 + 16);
      if ((v46 != v48 || v47 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_104;
      }

      if (v55)
      {
        if (!v56)
        {
          goto LABEL_104;
        }

        outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
        outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);

        v57 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v55, v56);

        if ((v57 & 1) == 0)
        {
          goto LABEL_106;
        }

LABEL_87:
        v71 = *(v44 + 32);
        v72 = *(v44 + 40);
        v73 = *(v45 + 32);
        v74 = *(v45 + 40);
        v75 = *(v45 + 56);
        if (*(v44 + 56))
        {
          if (*(v44 + 56) == 1)
          {
            if (v75 != 1)
            {
              goto LABEL_106;
            }

            v76 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v71, *(v45 + 32));
          }

          else
          {
            if (v75 != 2)
            {
              goto LABEL_106;
            }

            if (v71 == v73 && v72 == v74)
            {
              outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
              goto LABEL_114;
            }

            v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v86 = v76;
          outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
          if ((v86 & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        else
        {
          if (*(v45 + 56))
          {
            goto LABEL_106;
          }

          v77 = *(v44 + 48);
          v78 = *(v45 + 48);
          if ((v71 != v73 || v72 != v74) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_106;
          }

          if (v77)
          {
            if (!v78)
            {
              goto LABEL_106;
            }

            v79 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v77, v78);
            outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);

            if ((v79 & 1) == 0)
            {
              goto LABEL_107;
            }
          }

          else
          {
            outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
            if (v78)
            {
              goto LABEL_107;
            }
          }
        }

LABEL_114:
        v87 = *(v44 + 112);
        v97 = *(v44 + 96);
        v98[0] = v87;
        *(v98 + 9) = *(v44 + 121);
        v88 = *(v44 + 80);
        v95 = *(v44 + 64);
        v96 = v88;
        v89 = *(v45 + 112);
        v93 = *(v45 + 96);
        v94[0] = v89;
        *(v94 + 9) = *(v45 + 121);
        v90 = *(v45 + 80);
        v91 = *(v45 + 64);
        v92 = v90;
        if (specialized static DraftingBehavior.== infix(_:_:)(&v95, &v91))
        {
          v60 = *(v44 + 144) == *(v45 + 144);
          return v60 & 1;
        }

        goto LABEL_107;
      }

      if (v56)
      {
        goto LABEL_104;
      }
    }

    outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
    outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);
    goto LABEL_87;
  }

  v32 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(v140);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v105 = v124;
  v106 = v125;
  v107 = v126;
  v108 = v127;
  v101 = v120;
  v102 = v121;
  v103 = v122;
  v104 = v123;
  v99 = v118;
  v100 = v119;
  if (_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeOWOg(&v99))
  {
    goto LABEL_26;
  }

  v37 = destructiveProjectEnumData for TokenGenerationConfiguration.DecoderType(&v99);
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = *(v37 + 24);
  if (!v36)
  {
    if (*(v37 + 24))
    {
      goto LABEL_104;
    }

    v58 = *(v37 + 16);
    if ((v33 != v38 || v34 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_104;
    }

    if (!v35)
    {
      if (v58)
      {
        goto LABEL_104;
      }

      goto LABEL_64;
    }

    if (!v58)
    {
      goto LABEL_104;
    }

    outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
    outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);

    v59 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v35, v58);
    outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);

    if ((v59 & 1) == 0)
    {
      goto LABEL_107;
    }

LABEL_66:
    v60 = 1;
    return v60 & 1;
  }

  if (v36 != 1)
  {
    if (v40 != 2)
    {
      goto LABEL_104;
    }

    if (v33 == v38 && v34 == v39)
    {
      goto LABEL_64;
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
    outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);
    outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
    if ((v61 & 1) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_66;
  }

  if (v40 != 1)
  {
    goto LABEL_104;
  }

  v41 = *(v33 + 16);
  if (v41 != *(v38 + 16))
  {
    goto LABEL_104;
  }

  if (v41 && v33 != v38)
  {
    v42 = (v33 + 32);
    v43 = (v38 + 32);
    while (*v42 == *v43)
    {
      ++v42;
      ++v43;
      if (!--v41)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_104;
  }

LABEL_64:
  outlined init with copy of TokenGenerationConfiguration.DecoderType(&v118, &v95);
  outlined init with copy of TokenGenerationConfiguration.DecoderType(v109, &v95);
  outlined destroy of [Int](v128, &_s24TokenGenerationInference0aB13ConfigurationV11DecoderTypeO_AEtMd);
  v60 = 1;
  return v60 & 1;
}

uint64_t specialized static TokenGenerationConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 80);
  v53 = *(a1 + 96);
  v54 = v2;
  v4 = *(a1 + 112);
  v55 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v49 = *(a1 + 32);
  v50 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v51 = *(a1 + 64);
  v52 = v8;
  v9 = *(a1 + 16);
  v48[0] = *a1;
  v48[1] = v9;
  v10 = *(a2 + 112);
  v11 = *(a2 + 80);
  v62 = *(a2 + 96);
  v63 = v10;
  v12 = *(a2 + 112);
  v64 = *(a2 + 128);
  v13 = *(a2 + 48);
  v14 = *(a2 + 16);
  v58 = *(a2 + 32);
  v59 = v13;
  v15 = *(a2 + 48);
  v16 = *(a2 + 80);
  v60 = *(a2 + 64);
  v61 = v16;
  v17 = *(a2 + 16);
  v57[0] = *a2;
  v57[1] = v17;
  v44 = v53;
  v45 = v4;
  v46 = *(a1 + 128);
  v40 = v49;
  v41 = v7;
  v42 = v51;
  v43 = v3;
  v38 = v48[0];
  v39 = v6;
  v34 = v62;
  v35 = v12;
  v36 = *(a2 + 128);
  v30 = v58;
  v31 = v15;
  v32 = v60;
  v33 = v11;
  v18 = *(a1 + 152);
  v56 = *(a1 + 144);
  v19 = *(a1 + 160);
  v20 = *(a1 + 168);
  v21 = *(a1 + 176);
  v22 = *(a2 + 152);
  v65 = *(a2 + 144);
  v23 = *(a2 + 160);
  v25 = *(a2 + 168);
  v24 = *(a2 + 176);
  v47 = *(a1 + 144);
  v37 = *(a2 + 144);
  v28 = v57[0];
  v29 = v14;
  outlined init with copy of TokenGenerationConfiguration.DecoderType(v48, v68);
  outlined init with copy of TokenGenerationConfiguration.DecoderType(v57, v68);
  v26 = specialized static TokenGenerationConfiguration.DecoderType.== infix(_:_:)(&v38, &v28);
  v66[6] = v34;
  v66[7] = v35;
  v66[8] = v36;
  v67 = v37;
  v66[2] = v30;
  v66[3] = v31;
  v66[4] = v32;
  v66[5] = v33;
  v66[0] = v28;
  v66[1] = v29;
  outlined destroy of TokenGenerationConfiguration.DecoderType(v66);
  v68[6] = v44;
  v68[7] = v45;
  v68[8] = v46;
  v69 = v47;
  v68[2] = v40;
  v68[3] = v41;
  v68[4] = v42;
  v68[5] = v43;
  v68[0] = v38;
  v68[1] = v39;
  outlined destroy of TokenGenerationConfiguration.DecoderType(v68);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      result = 0;
      if (v23 != 1 || *&v18 != *&v22)
      {
        return result;
      }

LABEL_12:
      if (v21)
      {
        if (v24 && (v20 == v25 && v21 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v24)
      {
        return 1;
      }

      return 0;
    }

    result = 0;
    if (v23 == 2 && v22 == 0.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if (!v23 && v18 == v22)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t specialized static LanguageModelReference.== infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    if (result != a5 || a2 != a6)
    {
      v15 = a3;
      v16 = a7;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v15;
      a7 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    if (a3)
    {
      if (a7)
      {
        v18 = a7;
        v19 = a3;

        LOBYTE(v19) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v19, v18);

        if (v19)
        {
          return 1;
        }
      }
    }

    else if (!a7)
    {
      return 1;
    }

    return 0;
  }

  if (a4 != 1)
  {
    if (a8 == 2)
    {
      if (result != a5 || a2 != a6)
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  if (a8 != 1)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (!v8 || result == a5)
  {
    return 1;
  }

  v9 = (result + 32);
  v10 = (a5 + 32);
  while (v8)
  {
    v12 = *v9++;
    v11 = v12;
    v13 = *v10++;
    result = v11 == v13;
    if (v11 != v13 || v8-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized LanguageModelReference.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 13669 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized LanguageModelReference.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference22LanguageModelReferenceO18ExternalCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference22LanguageModelReferenceO16LinearCodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference22LanguageModelReferenceO12E5CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference22LanguageModelReferenceO10CodingKeys33_C33385C38A0442D1F34E46F63BD16990LLOGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys();
  v16 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v39;
    v40 = v12;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
    {
      v22 = v14;
      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v25 = &type metadata for LanguageModelReference;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v40 + 8))(v22, v11);
      swift_unknownObjectRelease();
    }

    else if (*(v18 + 32))
    {
      if (v20 == 1)
      {
        LOBYTE(v43) = 1;
        lazy protocol witness table accessor for type LanguageModelReference.LinearCodingKeys and conformance LanguageModelReference.LinearCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v26 = v40;
        v33 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
        lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
        v29 = v37;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v36 + 8))(v7, v29);
        (*(v26 + 8))(v33, v11);
        swift_unknownObjectRelease();
        v11 = v43;
      }

      else
      {
        LOBYTE(v43) = 2;
        lazy protocol witness table accessor for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v40;
        v33 = v14;
        v38 = v11;
        v31 = v34;
        v11 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v35 + 8))(v17, v31);
        (*(v28 + 8))(v33, v38);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v39 = v18;
      LOBYTE(v43) = 0;
      lazy protocol witness table accessor for type LanguageModelReference.E5CodingKeys and conformance LanguageModelReference.E5CodingKeys();
      v27 = v10;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LODWORD(v37) = 0;
      v30 = v11;
      LOBYTE(v43) = 0;
      v11 = KeyedDecodingContainer.decode(_:forKey:)();
      v33 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
      v42 = 1;
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      (*(v38 + 8))(v27, v8);
      (*(v40 + 8))(v33, v30);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return v11;
}

unint64_t lazy protocol witness table accessor for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.CodingKeys and conformance LanguageModelReference.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys()
{
  result = lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys;
  if (!lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelReference.ExternalCodingKeys and conformance LanguageModelReference.ExternalCodingKeys);
  }

  return result;
}