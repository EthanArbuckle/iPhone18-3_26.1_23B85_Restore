void sub_25EC171E4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t pdn_resource_factory_callback(unsigned int a1, int a2, const char *__source, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v9 = a2;
  strlcpy(v8, __source, 0x200uLL);
  result = PSResourceFactoryNotifier::notify(a4, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void PSResourceFactory::~PSResourceFactory(dispatch_object_t *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = (this + 18);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEFAULT, "Resource Factory:(%s) deallocating", &v8, 0xCu);
  }

  dispatch_release(this[39]);
  v3 = this[17];
  if (v3)
  {
    PSFrameHistoryBufferServiceServer::~PSFrameHistoryBufferServiceServer(v3);
    MEMORY[0x25F8CA500]();
  }

  v4 = this[16];
  if (v4)
  {
    (*(v4->isa + 1))(v4);
  }

  PSResourceFactory::_eraseResources(this);
  PSResourceFactory::_eraseReaderMap(this);
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::clear((this + 10));
  v5 = this[15];
  if (v5)
  {
    PSProcessIDTracker::~PSProcessIDTracker(v5);
    MEMORY[0x25F8CA500]();
  }

  if ((this[34] & 1) == 0)
  {
    if (this[40])
    {
      ps_death_notifier_unregister_callback_for_death_notification(pdn_resource_factory_callback);
      v6 = this[40];
      if (v6)
      {
        PSResourceFactoryNotifier::~PSResourceFactoryNotifier(v6);
        MEMORY[0x25F8CA500]();
      }
    }
  }

  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::~__hash_table((this + 10));
  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::~__hash_table((this + 5));
  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::~__hash_table(this);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_25EC1749C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void PSResourceFactoryNotifier::PSResourceFactoryNotifier(PSResourceFactoryNotifier *this, const char *a2)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  operator new();
}

void sub_25EC17534(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10A1C40C6999F44);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void PSResourceFactoryNotifier::~PSResourceFactoryNotifier(std::mutex *this)
{
  sig = this[1].__m_.__sig;
  if (sig)
  {
    (*(*sig + 8))(sig);
  }

  std::mutex::~mutex(this);
}

uint64_t PSResourceFactoryNotifier::notify(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  std::mutex::lock(a1);
  if (!*a2)
  {
    bzero(v6, 0x888uLL);
    v9 = 3;
    v8 = *(a2 + 1028);
    strlcpy(v7, (a2 + 4), 0x200uLL);
    PSCommsClient::send(*(a1 + 64), v6, 0x888u, 0, 1);
  }

  std::mutex::unlock(a1);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(a1);
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

uint64_t std::unordered_map<int,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned int> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::pair<int const,unsigned int> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<int,unsigned int>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        *(v8 + 5) = *(a2 + 5);
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_multi<std::pair<int const,unsigned int> const&>();
  }
}

void sub_25EC17ADC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

const void **std::__hash_table<std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,shbufflet_reader_ports_t *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,shbufflet_reader_ports_t *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,shbufflet_reader_ports_t *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EC1834C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EC18414(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__shared_ptr_emplace<PSClientProxy>::__shared_ptr_emplace[abi:ne200100]<int &,int &,std::allocator<PSClientProxy>,0>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CE840;
  PSClientProxy::PSClientProxy((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<PSClientProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CE840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A4D3D0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
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
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::vector<std::pair<std::string,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,unsigned int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EC18EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EC18FA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t _create_string_id_nop()
{
  v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v0)
  {
    _create_string_id_nop_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 0;
}

void ps_telemetry_hook_register(uint64_t (*a1)(void, void, void, void), uint64_t (*a2)())
{
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    ps_telemetry_hook_register_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  _emit_event = a1;
  _create_string_id = a2;
}

uint64_t ps_telemetry_hook_create_string_id()
{
  v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v0)
  {
    ps_telemetry_hook_create_string_id_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return _create_string_id();
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t ps_buffer_resource_get_index_cold_1(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid view index\n", "ps_buffer_resource_get_index");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Invalid view index\n", v3, v4, v5, v6, v15, v16, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_get_resource_view_index_cold_1(v13);
}

void ps_buffer_get_resource_view_index_cold_1(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid view index\n", "ps_buffer_get_resource_view_index");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Invalid view index\n", v3, v4, v5, v6, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  PSShbufferGroup::~PSShbufferGroup(v13);
}

void PSShbufferGroup::addResinfo()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s: %s (OOM)", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroup::updateResourceFactoryStatus(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v1, v2, "%s: updateResourceFactoryStatus error\n", v3, v4, v5, v6, 2u);
  }

  abort();
}

void PSShbufferGroup::updateResourceFactoryStatus()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315138;
    v2 = "SHBUFFER";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_DEBUG, "%s: updateResourceFactoryStatus error\n", &v1, 0xCu);
  }

  abort();
}

void PSShbufferGroup::setupSerialDataLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupSerialData error\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroup::setupIOSurfaceLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupIOSurface error\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroup::setupCVPixelBufferLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupCVPixelBuffer error\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroup::setupCVDataBufferLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupCVDataBuffer error\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroup::finalizeSetup(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "SHBUFFER";
    v7 = 2080;
    v8 = "finalizeSetup";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s- %s: sanity check failed id: %d sanity: %d\n", &v5, 0x22u);
  }

  abort();
}

void PSShbufferGroup::finalizeSetup(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v1, v2, "%s- %s: unknown client resource type\n", v3, v4, v5, v6, 2u);
  }

  abort();
}

void PSShbufferGroup::finalizeSetup()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s- finalizeSetup lines: OOM\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s- finalizeSetup: invalid number of resources\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSShbufferGroup::getBufflets(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Not enough memory :(");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "getBufflets";
    v10 = 1024;
    v11 = 506;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Not enough memory :(", &v8, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "getBufflets";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v5 = OUTLINED_FUNCTION_1();
  return PSShbufferGroupReader::requestShbufferGroupList(v5, v6);
}

void PSShbufferGroupReader::addLockLessSelector()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroupReader::getAllReadBuffers()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s: ~%s Called get without setting up.\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroupReader::releaseReadResources()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s: ~%s Trying to relinquish a non held view.\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroupReader::PSShbufferGroupReader()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSShbufferGroupWriter::addNonSharedSerialData()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s: Hmmm. More than a %d shbufflets? Are you unfolding protein structures?\n", v2, v3, v4, v5, v6);
  }

  abort();
}

void PSShbufferGroupWriter::installCVPixelBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Buffer creator did not create a buffer\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_14(&dword_25EBC5000, v0, v1, "%s: Invalid number of CVPixelBuffers to install. Expected (%d), provided (%d)\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroupWriter::installCVDataBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Buffer creator did not create a CVDataBuffer\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_14(&dword_25EBC5000, v0, v1, "%s: Invalid number of CVDataBuffers to install. Expected (%d), provided (%d)\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSShbufferGroupWriter::addSharedLocklessSelector()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSShbufferGroupWriter::getWriteBuffersIndex(char **a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Negative index : %d", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    v16 = 491;
    v17 = v4;
    v18 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d Negative index : %d", buf, 0x18u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v13, v14, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v11 = OUTLINED_FUNCTION_1();
  return PSShbufferGroupWriter::getWriteBuffers(v11);
}

void PSShbufferGroupWriter::PSShbufferGroupWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSBufferService::PSLocklessBufferSelector::getReaderResource(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "**** Asked to not increment read acquire in progress for memory descriptor with read_acquire = 0 *** ");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d **** Asked to not increment read acquire in progress for memory descriptor with read_acquire = 0 *** ", v3, v4, v5, v6, v15);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSBufferService::PSLocklessBufferSelector::getReaderResource(v13);
}

{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "***** WE HAVE A ROLLOVER IN OUR READER REFCOUNT *****");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d ***** WE HAVE A ROLLOVER IN OUR READER REFCOUNT *****", v3, v4, v5, v6, v16);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(v13, v14);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(char **a1, PSSharedResource *this)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s line=%d [key=%s] Failed to get a new memDesc from pool", "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)", 971, Key);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v12 = "getResourceInternal";
    v13 = 1024;
    v14 = 971;
    v15 = 2080;
    v16 = "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)";
    v17 = 1024;
    v18 = 971;
    v19 = 2080;
    v20 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s line=%d [key=%s] Failed to get a new memDesc from pool", buf, 0x2Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "getResourceInternal";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  return PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(v9);
}

void PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "*** Reader mask unset and state ACQUIRE_COMMIT not possible. Aborting! ***");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d *** Reader mask unset and state ACQUIRE_COMMIT not possible. Aborting! ***", v3, v4, v5, v6, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSBufferService::LocklessViewReaper::addReader(v13);
}

void PSBufferService::LocklessViewReaper::addReader(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Tried to add more than 64 readers to the lockless selector.");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "addReader";
    v10 = 1024;
    v11 = 88;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d Tried to add more than 64 readers to the lockless selector.", &v8, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "addReader";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  PSRingSwappableView::getMemdescForOwner(v7);
}

void PSRingSwappableView::getMemdescForOwner()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "OUT OF VIEWS + view current count error!\n", v1, 2u);
  }

  abort();
}

void PSRingSwappableViewReader::_release_view()
{
  v0 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v1 = 136315138;
    v2 = "PSRingSwappableViewReader";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Relased view count greater than total number of views.!\n", &v1, 0xCu);
  }

  abort();
}

void PSRingSwappableViewReader::_getResourcewithViewIndex()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s: %s:%d main_memdesc_id is empty. Please file a radar!", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSRingSwappableViewReader::getResourcewithBufferID(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unexpectedly reached end of function");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "getResourcewithBufferID";
    v10 = 1024;
    v11 = 287;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Unexpectedly reached end of function", &v8, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "getResourcewithBufferID";
      v10 = 1024;
      v11 = v3;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", &v8);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = OUTLINED_FUNCTION_1();
  return PSRingSwappableViewReader::getResourcewithBufferID(v6);
}

void PSRingSwappableViewReader::getResourcewithBufferID(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewReader", "getResourcewithBufferID", 245);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v10, v11, v12, v13, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v14 = 136315394;
      v15 = "getResourcewithBufferID";
      v16 = 1024;
      v17 = 245;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", &v14);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = OUTLINED_FUNCTION_1();
  PSRingSwappableViewReader::relinquishResource(v9);
}

void PSRingSwappableViewReader::relinquishResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s: %s:%d Owner buffer node ID invalid\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s: %s:%dview refcount error\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSRingSwappableViewReader::relinquishResource(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewReader", "relinquishResource", 344);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v10, v11, v12, v13, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v14 = 136315394;
      v15 = "relinquishResource";
      v16 = 1024;
      v17 = 344;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", &v14);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = OUTLINED_FUNCTION_1();
  PSRingSwappableViewWriter::initialize(v9);
}

void PSRingSwappableViewWriter::initialize()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: failed", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSRingSwappableViewWriter::getResource(uint64_t a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "PSRingSwappableViewWriter";
    v5 = 2080;
    v6 = a1 + 16;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid ref count for view for %s\n", &v3, 0x16u);
  }

  abort();
}

void PSRingSwappableViewWriter::getResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Unable to get output resource: main_memdesc_id == EMPTY\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSRingSwappableViewWriter::relinquishResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s:buffer id is not EMPTY!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s:Owner buffer node != next_write_idx : This is not possible. Please file a radar.\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSRingSwappableViewWriter::relinquishResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewWriter", "relinquishResource", 122);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v15, v16, v17, v18, buf);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17, v18, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(v13);
}

uint64_t PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewWriter", "relinquishResourceWithoutWriteIndexIncrement", 159);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v15, v16, v17, v18, buf);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17, v18, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSRingSwappableViewWriter::PSRingSwappableViewWriter(v13);
}

void PSRingSwappableViewWriter::PSRingSwappableViewWriter(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v4 = 136315394;
    v5 = "PSRingSwappableViewWriter";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSRingSwappableViewWriter::PSRingSwappableViewWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid arguments\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSAtomicWnRnArray::getMemorySize(PSAtomicWnRnArray *this)
{
  if (this)
  {
    v1 = ((this - 1) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = 8 * (v1 + this) + 16;
  if (this <= 0x7FF)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t PSAtomicWnRnArray::createInBuffer(PSAtomicWnRnArray *this, unsigned int a2, char *a3)
{
  result = 3758097084;
  if (a2 <= 0x7FF && a3)
  {
    if (a2)
    {
      v5 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v5 = 0;
    }

    *(this + 67) = v5;
    *(this + 68) = a2;
    *(this + 66) = -1;
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *a3 = -2121058947;
    v6 = *(this + 68);
    *(a3 + 1) = *(this + 67);
    *(a3 + 2) = v6;
    v7 = a3 + 16;
    **this = a3 + 16;
    ps_reservation_init_mask(a3 + 2, v6);
    v8 = &v7[8 * *(this + 67)];
    *(*this + 8) = v8;
    bzero(v8, 8 * *(this + 68));
    bzero(this + 8, 0x100uLL);
    result = 0;
    *(this + 280) = 1;
  }

  return result;
}

uint64_t PSAtomicWnRnArray::initFromBuffer(PSAtomicWnRnArray *this, _DWORD *a2)
{
  result = 3758097084;
  if (a2 && *a2 == -2121058947)
  {
    v4 = a2[2];
    if (v4 <= 0x7FF)
    {
      v5 = a2[1];
      *(this + 67) = v5;
      *(this + 68) = v4;
      *(this + 66) = -1;
      v6 = *this;
      *v6 = a2 + 4;
      v6[1] = &a2[2 * v5 + 4];
      bzero(this + 8, 0x100uLL);
      result = 0;
      *(this + 280) = 1;
    }
  }

  return result;
}

unint64_t *PSAtomicWnRnArray::handleDeath(unint64_t *this, int a2, BOOL *a3, unint64_t *a4)
{
  if (*(this + 280) == 1)
  {
    v6 = this;
    v7 = *(this + 68);
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      LOBYTE(v7) = 0;
      do
      {
        v12 = atomic_load((*(*v6 + 8) + v9));
        if (v12 == a2 && (BYTE4(v12) == 4 || BYTE4(v12) == 1))
        {
          this = ps_reservation_clear_get_updated_mask(**v6, *(v6 + 272), v10, (*(*v6 + 8) + v9), a4);
          LOBYTE(v7) = 1;
        }

        ++v11;
        ++v10;
        v9 += 8;
      }

      while (v11 < *(v6 + 272));
    }

    if (a3)
    {
      v14 = ((a4 != 0) & v7) == 1 && *(v6 + 268) == 1;
      *a3 = v14;
    }
  }

  return this;
}

uint64_t PSAtomicWnRnArray::readReservationID(PSAtomicWnRnArray *this, unint64_t a2, unsigned int *a3)
{
  result = 3758097084;
  if (*(this + 280) == 1 && *(this + 68) > a2)
  {
    v5 = atomic_load((*(*this + 8) + 8 * a2));
    if ((v5 & 0xFF00000000) != 0)
    {
      result = 0;
      *a3 = v5;
    }

    else
    {
      return 3758097136;
    }
  }

  return result;
}

uint64_t PSAtomicWnRnArray::getReservationMask(PSAtomicWnRnArray *this, unint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 3758097084;
  if (a2 && (*(this + 280) & 1) != 0)
  {
    v3 = a2;
    if (*(this + 67))
    {
      while (1)
      {
        do
        {
          this = OUTLINED_FUNCTION_9_1(this);
          *(v4 + 8 * v5) = v6;
          v7 = *(this + 67);
        }

        while (v5 + 1 < v7);
        if (!v7)
        {
          break;
        }

        while (1)
        {
          this = OUTLINED_FUNCTION_9_1(this);
          if (v10 != *(v9 + 8 * v8))
          {
            break;
          }

          v11 = *(this + 67);
          if (v8 + 1 >= v11)
          {
            v12 = 8 * v11;
            goto LABEL_12;
          }
        }

        v12 = 0;
        if (!*(this + 67))
        {
          goto LABEL_12;
        }
      }
    }

    v12 = 0;
LABEL_12:
    memcpy(v3, __src, v12);
    v2 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t PSAtomicWnRnArray::acquireWriteIdx(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireWriteIdx", "index < _arr_size");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::relinquishWriteIdx(v15);
}

uint64_t PSAtomicWnRnArray::relinquishWriteIdx(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "relinquishWriteIdx", "prev_token.value == _reservation_token_write_start");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::_clearIdx(v15);
}

uint64_t PSAtomicWnRnArray::_clearIdx(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "_clearIdx", "token.reservation_id == _reservation_id");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::_clearIdx(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "_clearIdx", "token.rw_state == rw_state");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::_clearIdx(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "_clearIdx", "((_patomic->_reservation_mask[res_mask_idx] >> bit_idx) & 1) == 0");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::acquireReadIdx(v15);
}

uint64_t PSAtomicWnRnArray::acquireReadIdx(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireReadIdx", "index < _arr_size");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return ps_reservation_start_cold_1(v15);
}

uint64_t ps_reservation_start_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_start", "stride % sizeof(atomic_uint_fast64_t) == 0");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return ps_reservation_complete_get_updated_mask_cold_1(v15);
}

uint64_t ps_reservation_complete_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_complete_get_updated_mask", "index < count");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v15 = OUTLINED_FUNCTION_1();
  return ps_reservation_clear_get_updated_mask_cold_1(v15);
}

void ps_reservation_clear_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_clear_get_updated_mask", "index < count");
  v1 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v1))
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v15, v16, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v8))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v15, v16, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  __PSUtilitiesLogSharedInstance_cold_1();
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::PSStreamingCodecFrameSelectorWriter()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(int *a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    v8 = *a1;
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v2, v3, "%s Failed to Enqueue the nodeId %d", v4, v5, v6, v7, 2u);
  }

  abort();
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s:%d Negative buff_id passed. Aborting!\n", "relinquishResource", 246);
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "relinquishResource";
    v12 = 1024;
    v13 = 246;
    v14 = 2080;
    v15 = "relinquishResource";
    v16 = 1024;
    v17 = 246;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s:%d Negative buff_id passed. Aborting!\n", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v11 = "relinquishResource";
      v12 = 1024;
      v13 = 246;
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8, v9, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  PSBufferService::PSStreamingCodecFrameSelectorReader::PSStreamingCodecFrameSelectorReader();
}

void PSBufferService::PSStreamingCodecFrameSelectorReader::PSStreamingCodecFrameSelectorReader()
{
  v0 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v1 = 136315138;
    v2 = "PSBufferService::PSStreamingCodecFrameSelectorReader::PSStreamingCodecFrameSelectorReader(PSSharedSerialDataReader *, const char *, const uint32_t)";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s Failed to initialize AtomicDeque structure", &v1, 0xCu);
  }

  abort();
}

uint64_t PSBufferService::PSFifoSelectorWriter::relinquishResource(char **a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s Failed to read lastN from tail. retVal=%d", "virtual int PSBufferService::PSFifoSelectorWriter::relinquishResource(int, uint16_t *)", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v15 = "relinquishResource";
    v16 = 1024;
    v17 = 413;
    v18 = 2080;
    v19 = "virtual int PSBufferService::PSFifoSelectorWriter::relinquishResource(int, uint16_t *)";
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Failed to read lastN from tail. retVal=%d", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v15 = "relinquishResource";
      v16 = 1024;
      v17 = v3;
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", v6, v7, v8, v9, v12, v13, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v10 = OUTLINED_FUNCTION_1();
  return _polarisdLogSharedInstance_cold_1(v10);
}

void PSSharedCVDataBufferReader::PSSharedCVDataBufferReader(int a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315650;
    v4 = "PSSharedCVDataBufferReader";
    v5 = 2080;
    v6 = "PSSharedCVDataBufferReader";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s-%s:failed to create CV Data Buffer for resource ret=%d", &v3, 0x1Cu);
  }

  abort();
}

{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v4 = 136315394;
    v5 = "PSSharedCVDataBufferReader";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSSharedCVDataBufferReader::PSSharedCVDataBufferReader()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Did not get valid iosurface.", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCVDataBufferReader::getBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Invalid index requested!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCVDataBufferReader::getBuffer(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid method!\n", "PSSharedCVDataBufferReader", "getBuffer");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v8 = "getBuffer";
    v9 = 1024;
    v10 = 65;
    v11 = 2080;
    v12 = "PSSharedCVDataBufferReader";
    v13 = 2080;
    v14 = "getBuffer";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s-%s: Invalid method!\n", buf, 0x26u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "getBuffer";
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  abort_with_reason();
  PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter();
}

void PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVDataBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVDataBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Did not get valid iosurface.", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", v2, v3, v4, v5, v6, v7, v8);
  }

  printf("%s-%s: Could not share surfaces\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVDataBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVDataBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not get backing iosurface\n", v2, v3, v4, v5, v6, v7, v8);
  }

  printf("%s-%s: Could not get backing iosurface\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Invalid arguments\n", v2, v3, v4, v5, v6, v7, v8);
  }

  printf("%s-%s: Invalid arguments\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter");
  abort();
}

void PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter(int a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v4 = "PSSharedCVDataBufferWriter";
    v5 = 2080;
    v6 = "PSSharedCVDataBufferWriter";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s-%s: Invalid data buffer at index=%d\n", buf, 0x1Cu);
  }

  printf("%s-%s: Invalid data buffer @index (%d)\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter", a1);
  abort();
}

void PSSharedCVDataBufferWriter::getBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVDataBufferWriter";
    v4 = 2080;
    v5 = "getBuffer";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Invalid index requested!\n", &v2);
  }

  abort();
}

void PSSharedCVDataBufferWriter::getBuffer(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid method!\n", "PSSharedCVDataBufferWriter", "getBuffer");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v9 = "getBuffer";
    v10 = 1024;
    v11 = 180;
    v12 = 2080;
    v13 = "PSSharedCVDataBufferWriter";
    v14 = 2080;
    v15 = "getBuffer";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s-%s: Invalid method!\n", buf, 0x26u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "getBuffer";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  PSSharedCVPixelBuffer::getBuffer(v7);
}

void PSSharedCVPixelBuffer::getBuffer(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "buffer is not allocated");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "getBuffer";
    v10 = 1024;
    v11 = 33;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d buffer is not allocated", &v8, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "getBuffer";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader(v7);
}

void PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315906;
    v6 = "PSSharedCVPixelBufferReader";
    v7 = 2080;
    v8 = "PSSharedCVPixelBufferReader";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s-%s:failed to create CV Pixel Buffer for resource IOSurfaceID:%d err:%d", &v5, 0x22u);
  }

  abort();
}

void PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "PSSharedCVPixelBufferReader";
    v3 = 2080;
    v4 = "PSSharedCVPixelBufferReader";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s-%s: Did not get valid iosurface.", &v1, 0x16u);
  }

  abort();
}

void PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PSSharedCVPixelBufferReader";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "PSSharedCVPixelBufferWriter";
    v7 = 2080;
    v8 = "PSSharedCVPixelBufferWriter";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s-%s:failed to create CV Pixel Buffer for resource IOSurfaceID:%d err:%d", &v5, 0x22u);
  }

  abort();
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVPixelBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVPixelBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Did not get valid iosurface.", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", v2, v3, v4, v5, v6, v7, v8);
  }

  printf("%s-%s: Could not share surfaces\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVPixelBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVPixelBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not get backing iosurface\n", v2, v3, v4, v5, v6, v7, v8);
  }

  printf("%s-%s: Could not get backing iosurface\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Invalid arguments\n", v2, v3, v4, v5, v6, v7, v8);
  }

  printf("%s-%s: Invalid arguments\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter");
  abort();
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v4 = 136315394;
    v5 = "PSSharedCVPixelBufferWriter";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v4 = "PSSharedCVPixelBufferWriter";
    v5 = 2080;
    v6 = "PSSharedCVPixelBufferWriter";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s-%s: Invalid pixel buffer\n", buf, 0x16u);
  }

  printf("%s-%s: Invalid pixel buffer @index (%d)\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter", a1);
  abort();
}

void PSSharedIOSurface::getBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s:%s could not find surface with index (%d)\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurface::~PSSharedIOSurface(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v4 = 136315394;
    v5 = "~PSSharedIOSurface";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSSharedIOSurface::decSurfaceUseCount()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s:%s could not find surface with index (%d)\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurface::incSurfaceUseCount()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s:%s could not find surface with index (%d)\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurface::getPBSSurfaceUseCount()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s:%s could not find surface with index (%d)\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurfaceAllocator::PSSharedIOSurfaceAllocator()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedIOSurfaceAllocator::allocate(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Unable to create IOSurface from mach_port. Aborting()", "PSSharedIOSurfaceAllocator");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Unable to create IOSurface from mach_port. Aborting()", v3, v4, v5, v6, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedIOSurfaceAllocator::allocate(v13);
}

{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid Key len\n", "PSSharedIOSurfaceAllocator");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Invalid Key len\n", v3, v4, v5, v6, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedIOSurfaceAllocator::mapSharedResource(v13);
}

uint64_t PSSharedIOSurfaceAllocator::mapSharedResource(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Could not create iosurface from mach port. Aborting()", "PSSharedIOSurfaceAllocator");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Could not create iosurface from mach port. Aborting()", v3, v4, v5, v6, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(v13);
}

void PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "~PSSharedIOSurfaceEvent";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSSharedIOSurfaceEvent::mapSharedResource(char **a1, PSSharedResource *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s [%s] mach ports NULL\n", "PSSharedIOSurfaceEvent", Key);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v12 = "mapSharedResource";
    v13 = 1024;
    v14 = 131;
    v15 = 2080;
    v16 = "PSSharedIOSurfaceEvent";
    v17 = 2080;
    v18 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s [%s] mach ports NULL\n", buf, 0x26u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "mapSharedResource";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  v10 = abort_with_reason();
  PSSharedIOSurfaceReader::PSSharedIOSurfaceReader(v10);
}

void PSSharedIOSurfaceReader::PSSharedIOSurfaceReader()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid Key len\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurfaceReader::PSSharedIOSurfaceReader(int a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315650;
    v4 = "PSSharedIOSurfaceReader";
    v5 = 1024;
    v6 = a1;
    v7 = 1024;
    v8 = 9999;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: id(%d) > %d\n", &v3, 0x18u);
  }

  abort();
}

void PSSharedIOSurfaceReader::mapSharedResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: The number of ports received is not equal to the number of elements. Aborting()", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Could not allocate memory for ports", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315394;
    v2 = "PSSharedIOSurfaceReader";
    v3 = 2080;
    v4 = "mapSharedResource";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_DEBUG, "%s: %s invalid type_desc \n", &v1, 0x16u);
  }

  abort();
}

void PSSharedIOSurfaceWriter::shareSurfacesIDs(char **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, " shareSurfacesByID encountered a NULL IOSurfaceRef supplied as an argument\n");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = "shareSurfacesIDs";
    v8 = 1024;
    v9 = 270;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d  shareSurfacesByID encountered a NULL IOSurfaceRef supplied as an argument\n", &v6, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "shareSurfacesIDs";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v6, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v5 = OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::shareSurfacesIDs(v5);
}

{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Could not allocate memory for surfaces", "PSSharedIOSurfaceWriter");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Could not allocate memory for surfaces", v3, v4, v5, v6, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::shareSurfacesIDs(v13);
}

void PSSharedIOSurfaceWriter::shareSurfacesIDs()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Could not allocate memory for surfaces or surface IDs.", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  v0 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v1 = __error();
    v2 = strerror(*v1);
    v3 = 136315394;
    v4 = "PSSharedIOSurfaceWriter";
    v5 = 2080;
    v6 = v2;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Could not allocate memory for surface IDs! error(%s)", &v3, 0x16u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid surfaces array. Aborting!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: invalid number of elements. Aborting!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurfaceWriter::shareSurfaces(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Could not allocate memory for ports.", "PSSharedIOSurfaceWriter");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Could not allocate memory for ports.", v3, v4, v5, v6, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::mapSharedResource(v13);
}

void PSSharedIOSurfaceWriter::mapSharedResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Could not get surface from mach port. Aborting()", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSSharedIOSurfaceWriter::getResource(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid index requested!\n", "PSSharedIOSurfaceWriter", "getResource");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v1, v2, "%s:%d %s-%s: Invalid index requested!\n", v3, v4, v5, v6, v15, v16, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedIOSurfaceWriter::getResource(v13);
}

void PSSharedIOSurfaceWriter::getResource(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid method!\n", "PSSharedIOSurfaceWriter", "getResource");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v1, v2, "%s:%d %s-%s: Invalid method!\n", v3, v4, v5, v6, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::allocateResource(v13);
}

void PSSharedIOSurfaceWriter::allocateResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: The number of ports received is not equal to the number of elements. Aborting()", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedIOSurfaceWriter::finalizeResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s Invalid finalizeResource type\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedResource::PSSharedResource(int a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "PSSharedResource";
    v5 = 1024;
    v6 = a1;
    v7 = 1024;
    v8 = 9999;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: id(%d) > %d\n", &v3, 0x18u);
  }

  abort();
}

void PSSharedResource::PSSharedResource()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1[0] = 67109120;
    v1[1] = 512;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "PSSharedResource:key >= %u\n", v1, 8u);
  }

  abort();
}

{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "PSSharedResource: Invalid Key\n", v1, 2u);
  }

  abort();
}

void PSSharedResource::updateTypeStatus(char **a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid message received for key %s. Received a complex message when expecting a simple message", a2);
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v11 = "updateTypeStatus";
    v12 = 1024;
    v13 = 88;
    v14 = 2080;
    v15 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received for key %s. Received a complex message when expecting a simple message", buf, 0x1Cu);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "updateTypeStatus";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = *a1;
  v9 = abort_with_reason();
  PSSharedResource::updateTypeStatus(v9);
}

void PSSharedResource::updateTypeStatus(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "PSSharedResource";
    _os_log_impl(&dword_25EBC5000, a1, OS_LOG_TYPE_ERROR, "%s: updateTypeStatus error\n", &v2, 0xCu);
  }

  abort();
}

void PSSharedSemaphore::PSSharedSemaphore()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSSharedSemaphoreAllocator::PSSharedSemaphoreAllocator()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "PSSharedSemaphoreAllocator";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to create mach semaphore\n", &v1, 0xCu);
  }

  abort();
}

uint64_t PSSharedSemaphoreArray::_createLocal(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Failed to create mach semaphore\n", "_createLocal");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v15 = 43;
    v16 = 2080;
    v17 = "_createLocal";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d %s: Failed to create mach semaphore\n", v4, v5, v6, v7, v12, v13, v14[0]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v15 = v1;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v10 = OUTLINED_FUNCTION_1();
  return PSSharedSemaphoreArray::_createLocal(v10);
}

uint64_t PSSharedSemaphoreArray::_createLocal(char **a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = a2 + 16;
  asprintf(a1, "%s (key=%s) %s:line %d: cannot allocate memory", "PSSharedSemaphoreArray", (a2 + 16), "_createLocal", 37);
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136316418;
    v9 = "_createLocal";
    v10 = 1024;
    v11 = 37;
    v12 = 2080;
    v13 = "PSSharedSemaphoreArray";
    v14 = 2080;
    v15 = v3;
    v16 = 2080;
    v17 = "_createLocal";
    v18 = 1024;
    v19 = 37;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s (key=%s) %s:line %d: cannot allocate memory", buf, 0x36u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v9 = "_createLocal";
      v10 = 1024;
      v11 = 37;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v6 = OUTLINED_FUNCTION_1();
  return PSSharedSemaphoreArray::_createRemote(v6);
}

uint64_t PSSharedSemaphoreArray::_createRemote(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s mach semaphores NULL\n", "PSSharedSemaphoreArray");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v14 = 78;
    v15 = 2080;
    v16 = "PSSharedSemaphoreArray";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s mach semaphores NULL\n", v3, v4, v5, v6, v11, v12, v13[0]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v14 = "PSSharedSemaphoreArray";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  return PSSharedSemaphoreArray::_deallocateSemaphores(v9);
}

uint64_t PSSharedSemaphoreArray::_deallocateSemaphores(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to unmap shared semaphore array from the client's address space.");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "_deallocateSemaphores";
    v10 = 1024;
    v11 = 107;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Failed to unmap shared semaphore array from the client's address space.", &v8, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "_deallocateSemaphores";
      v10 = 1024;
      v11 = v3;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", &v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v6 = OUTLINED_FUNCTION_1();
  return PSSharedSemaphoreArray::PSSharedSemaphoreArray(v6);
}

void PSSharedSemaphoreArray::PSSharedSemaphoreArray(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PSSharedSemaphoreArray";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedSemaphoreArray::mapSharedResource(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s mach semaphores NULL\n", "PSSharedSemaphoreArray");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v15 = 257;
    v16 = 2080;
    v17 = "PSSharedSemaphoreArray";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s mach semaphores NULL\n", v3, v4, v5, v6, v12, v13, v14[0]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v15 = "PSSharedSemaphoreArray";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  return PSSharedSerialData::mapShmem(v9, v10);
}

uint64_t PSSharedSerialData::mapShmem(char **a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, " invalid local allocation flag (%#x)", a2);
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v12 = "mapShmem";
    v13 = 1024;
    v14 = 242;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d  invalid local allocation flag (%#x)", buf, 0x18u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "mapShmem";
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = *a1;
  v9 = abort_with_reason();
  return PSSharedSerialDataAllocator::PSSharedSerialDataAllocator(v9);
}

void PSSharedSerialDataAllocator::PSSharedSerialDataAllocator()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSSharedSerialDataAllocator::allocateLocal()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "PSSharedSerialDataAllocator";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Invalid Key len\n", &v1, 0xCu);
  }

  abort();
}

uint64_t PSSharedSerialDataAllocator::allocate(char **a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: id(%d) > %d\n", "PSSharedSerialDataAllocator", a2, 9999);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v7 = "allocate";
    v8 = 1024;
    v9 = 277;
    v10 = 2080;
    v11 = "PSSharedSerialDataAllocator";
    v12 = 1024;
    v13 = a2;
    v14 = 1024;
    v15 = 9999;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: id(%d) > %d\n", buf, 0x28u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v7 = "allocate";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_25EBC5000, a2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = OUTLINED_FUNCTION_1();
  return PSSharedSerialDataAllocator::getBuffer(v4);
}

uint64_t PSSharedSerialDataAllocator::getBuffer(char **a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: getBuffer - index (%d) out of range \n", "PSSharedSerialDataAllocator", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v8 = "getBuffer";
    v9 = 1024;
    v10 = 327;
    v11 = 2080;
    v12 = "PSSharedSerialDataAllocator";
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: getBuffer - index (%d) out of range \n", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v8 = "getBuffer";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EBC5000, a2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = OUTLINED_FUNCTION_1();
  return PSSharedSerialDataReader::mapSharedResource(v4, v5);
}

void PSSharedSerialDataReader::mapSharedResource(char **a1, mach_error_t error_value)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = mach_error_string(error_value);
  asprintf(a1, "FAILED %s", v4);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v12 = "mapSharedResource";
    v13 = 1024;
    v14 = 100;
    v15 = 2080;
    v16 = mach_error_string(error_value);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d FAILED %s", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "mapSharedResource";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  v10 = abort_with_reason();
  PSSharedSerialDataReader::mapSharedResource(v10);
}

void PSSharedSerialDataReader::mapSharedResource()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "PSSharedSerialDataReader";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Invalid Key len\n", &v1, 0xCu);
  }

  abort();
}

void PSSharedSerialDataReader::getBuffer(int a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSharedSerialDataReader";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: getBuffer - index (%d) out of range \n", &v3, 0x12u);
  }

  abort();
}

void PSSharedSerialDataWriter::PSSharedSerialDataWriter()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: invalid element size or number of elements\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedSerialDataWriter::_mapFrom()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: DEADBEEF not found, failed to allocate the correct buffer\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedSerialDataWriter::~PSSharedSerialDataWriter()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSSharedSerialDataWriter::mapSharedResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid Key len\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSSharedSyncObject::lock(char **a1, PSSharedResource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "Failed to unlock mutex for (%s) after timing out. Something is definitely wrong. Aborting!", Key);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v5, v6, "%s:%d Failed to unlock mutex for (%s) after timing out. Something is definitely wrong. Aborting!", v7, v8, v9, v10, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v17 = OUTLINED_FUNCTION_1();
  return PSSharedSyncObject::lock(v17, v18);
}

void PSSharedSyncObject::lock(char **a1, PSSharedResource *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "Failed to relock mutex for (%s) after timing out. Aborting!", Key);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v5, v6, "%s:%d Failed to relock mutex for (%s) after timing out. Aborting!", v7, v8, v9, v10, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v17, v18, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  pthread_mutex_timedlock();
}

void pthread_mutex_timedlock()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315650;
    v2 = "pthread_mutex_timedlock";
    v3 = 1024;
    v4 = 59;
    v5 = 2080;
    v6 = "PSSharedSyncObject";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s %d %s: seconds must be 0", &v1, 0x1Cu);
  }

  abort();
}

void PSSharedSyncObject::unlock()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_2(&dword_25EBC5000, v0, v1, "%s %d %s failed ret_val=%#x", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedSyncObject::signal()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_2(&dword_25EBC5000, v0, v1, "%s %d %s failed ret_val=%#x", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedSyncWriter::PSSharedSyncWriter()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedCameraFifoStreamWriter::Create(char **a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s:%s Unexpected selector option passed for Camera FIFO Stream Writer. options=%#x \n", "PSSHAREDCAMERASTREAMWRITER", "Create", a2);
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v10 = "Create";
    v11 = 1024;
    v12 = 42;
    v13 = 2080;
    v14 = "PSSHAREDCAMERASTREAMWRITER";
    v15 = 2080;
    v16 = "Create";
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s:%s Unexpected selector option passed for Camera FIFO Stream Writer. options=%#x \n", buf, 0x2Cu);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "Create";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = *a1;
  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSSharedCameraISPStreamWriter::populateInfo(uint64_t a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSHAREDCAMERASTREAMWRITER";
    v5 = 2080;
    v6 = "populateInfo";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s:%s - Use count. This shouldn't be possible\n", &v3, 0x16u);
  }

  PSShbufferGroupReader::releaseSharedLock(*(a1 + 736), 1);
  abort();
}

void PSSharedCameraISPStreamWriter::populateInfo()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "PSSHAREDCAMERASTREAMWRITER";
    v3 = 2080;
    v4 = "populateInfo";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s:%s - Could not find a surface to release\n", &v1, 0x16u);
  }

  abort();
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_1(char **a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", "ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces", a2);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_12_0(&dword_25EBC5000, v2, v3, "%s:%d In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", v4, v5, v6, v7, v16, v17, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_2(v14);
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_2(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff->parentSurfaces\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff->parentSurfaces\n", v3, v4, v5, v6, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_3(v13);
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_3(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff\n", v3, v4, v5, v6, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_1(v13);
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_1(char **a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", "ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces", a2);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_12_0(&dword_25EBC5000, v2, v3, "%s:%d In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", v4, v5, v6, v7, v16, v17, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_2(v14);
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_2(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff->parentSurfaces\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff->parentSurfaces\n", v3, v4, v5, v6, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_3(v13);
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_3(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff\n", v3, v4, v5, v6, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return cameraStreamWriterGetStreamIndex(v13, v14);
}

uint64_t PSSharedCameraStreamReader::initialize(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v14 = "initialize";
    v15 = 1024;
    v16 = 137;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v2, v3, "%s:%d OOM!", v4, v5, v6, v7, 2u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "initialize";
      v15 = 1024;
      v16 = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", &v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v11 = *a1;
  result = OUTLINED_FUNCTION_5_0();
  __break(1u);
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v14 = "initialize";
    v15 = 1024;
    v16 = 123;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v2, v3, "%s:%d OOM!", v4, v5, v6, v7, 2u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "initialize";
      v15 = 1024;
      v16 = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", &v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v11 = *a1;
  result = OUTLINED_FUNCTION_5_0();
  __break(1u);
  return result;
}

uint64_t PSSharedCameraStreamReader::initialize(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = a2 + 16;
  asprintf(a1, "%s:%s - (Camera Stream: %s) Could not create IOSurfaceReader for metadata\n", "PSSHAREDCAMERASTREAMREADER", "initialize", (a2 + 16));
  if (OUTLINED_FUNCTION_8())
  {
    v19 = "initialize";
    v20 = 1024;
    OUTLINED_FUNCTION_11_1();
    v21 = v3;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v4, v5, "%s:%d %s:%s - (Camera Stream: %s) Could not create IOSurfaceReader for metadata\n", v6, v7, v8, v9, v14, v15, v16, v17, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v10, v11, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v12 = *a1;
  result = OUTLINED_FUNCTION_5_0();
  __break(1u);
  return result;
}

uint64_t PSSharedCameraStreamReader::countToCapacity(char **a1, PSSharedResource *a2)
{
  v4 = OUTLINED_FUNCTION_15_0(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "%s:%s - (Camera Stream: %s) Invalid metadata type found", "PSSHAREDCAMERASTREAMREADER", "countToCapacity", v4);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(a2);
    v21 = "countToCapacity";
    v22 = 1024;
    OUTLINED_FUNCTION_11_1();
    v23 = v5;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v6, v7, "%s:%d %s:%s - (Camera Stream: %s) Invalid metadata type found", v8, v9, v10, v11, v16, v17, v18, v19, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamReader::PSSharedCameraStreamReader(v14);
}

void PSSharedCameraStreamReader::PSSharedCameraStreamReader()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedCameraStreamReader::populateCVBuffer(char **a1, PSSharedResource *a2)
{
  v4 = OUTLINED_FUNCTION_15_0(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "%s:%s - (Camera Stream: %s) Somehow we have gotten a serialized data backed metadata for something that the context thought was metadata backed by io surface", "PSSHAREDCAMERASTREAMREADER", "populateCVBuffer", v4);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(a2);
    v21 = "populateCVBuffer";
    v22 = 1024;
    OUTLINED_FUNCTION_11_1();
    v23 = v5;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v6, v7, "%s:%d %s:%s - (Camera Stream: %s) Somehow we have gotten a serialized data backed metadata for something that the context thought was metadata backed by io surface", v8, v9, v10, v11, v16, v17, v18, v19, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamReader::populateCVBuffer(v14);
}

{
  v4 = OUTLINED_FUNCTION_15_0(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "%s:%s - (Camera Stream: %s) Somehow we have gotten a metadata backed by io surface for something that the context thought was backed by a serialized metadata", "PSSHAREDCAMERASTREAMREADER", "populateCVBuffer", v4);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(a2);
    v21 = "populateCVBuffer";
    v22 = 1024;
    OUTLINED_FUNCTION_11_1();
    v23 = v5;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v6, v7, "%s:%d %s:%s - (Camera Stream: %s) Somehow we have gotten a metadata backed by io surface for something that the context thought was backed by a serialized metadata", v8, v9, v10, v11, v16, v17, v18, v19, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamReader::populateCVBuffer(v14);
}

void PSSharedCameraStreamWriter::PSSharedCameraStreamWriter(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PSSharedCameraStreamWriter";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Failed to lock. Aborting.\n", "PSSHAREDCAMERASTREAMWRITER");
  if (OUTLINED_FUNCTION_8())
  {
    v14 = "writeMultipleBuffers";
    v15 = 1024;
    v16 = 434;
    v17 = 2080;
    v18 = "PSSHAREDCAMERASTREAMWRITER";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Failed to lock. Aborting.\n", v3, v4, v5, v6, v11, v12, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v14 = "writeMultipleBuffers";
      v15 = 1024;
      v16 = "PSSHAREDCAMERASTREAMWRITER";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamWriter::writeMultipleBuffers(v9);
}

void PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Failed to unlock. Aborting.\n", "PSSHAREDCAMERASTREAMWRITER");
  if (OUTLINED_FUNCTION_8())
  {
    v13 = "writeMultipleBuffers";
    v14 = 1024;
    v15 = 573;
    v16 = 2080;
    v17 = "PSSHAREDCAMERASTREAMWRITER";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Failed to unlock. Aborting.\n", v3, v4, v5, v6, v10, v11, 2u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v13 = "writeMultipleBuffers";
      v14 = 1024;
      v15 = "PSSHAREDCAMERASTREAMWRITER";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  PSSharedCameraStreamWriter::writeMultipleBuffers(v9);
}

void PSSharedCameraStreamWriter::writeMultipleBuffers()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without incrementing the write index?\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without releasing?\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1, PSSharedResource *this)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s:%s:%s:%d - (Camera Stream: %s) Write was called without any metadata IOSurface writer being created", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp", "writeMultipleBuffers", 449, Key);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_15_1(&dword_25EBC5000, v5, v6, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Write was called without any metadata IOSurface writer being created", v7, v8, v9, v10, v16, v17, v18, v19, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v22 = 136315394;
      v23 = "writeMultipleBuffers";
      v24 = 1024;
      v25 = this;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", &v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamWriter::writeMultipleBuffers(v13, v14);
}

void PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1, PSSharedResource *this)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s:%s:%s:%d - (Camera Stream: %s) Write was called without any CVBuffer writer being created", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp", "writeMultipleBuffers", 443, Key);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_15_1(&dword_25EBC5000, v5, v6, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Write was called without any CVBuffer writer being created", v7, v8, v9, v10, v14, v15, v16, v17, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v20 = 136315394;
      v21 = "writeMultipleBuffers";
      v22 = 1024;
      v23 = this;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", &v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedCameraSuperframeStreamWriter::PSSharedCameraSuperframeStreamWriter(v13);
}

void PSSharedCameraSuperframeStreamWriter::PSSharedCameraSuperframeStreamWriter(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PSSharedCameraSuperframeStreamWriter";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v4 = 136315394;
    v5 = "PSSharedCameraSurfaceStreamWriter";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "PSSHAREDCAMERASTREAMWRITER";
    v7 = 2080;
    v8 = "PSSharedCameraSurfaceStreamWriter";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s:%s - Aperatures do not match. %d and %d\n", &v5, 0x22u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_13_1(&dword_25EBC5000, v0, v1, "%s:%s - Camera %s already enabled!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - No such camera\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - SFL not initialized!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::initCameraSurfaces(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Something very odd happened where the total surfaces aren't divisible by the capacity");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v13 = "initCameraSurfaces";
    v14 = 1024;
    v15 = 159;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Something very odd happened where the total surfaces aren't divisible by the capacity", v3, v4, v5, v6, 2u);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    if (OUTLINED_FUNCTION_8_2())
    {
      v12 = 136315394;
      v13 = "initCameraSurfaces";
      v14 = 1024;
      v15 = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", &v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v11 = OUTLINED_FUNCTION_1();
  PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(v11);
}

void PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(uint64_t a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    v8 = &cam_sp[67 * *(a1 + 832) + 3];
    OUTLINED_FUNCTION_13_1(&dword_25EBC5000, v2, v3, "%s:%s - surfaces not installed for %s\n", v4, v5, v6, v7, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- Could not find a surface to release\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without incrementing the write index?\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without releasing?\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Child surfaces NULL\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "You've somehow tried to write without creating the writer.");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v13 = "writeMultipleBuffers";
    v14 = 1024;
    v15 = 270;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d You've somehow tried to write without creating the writer.", v3, v4, v5, v6, 2u);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    if (OUTLINED_FUNCTION_8_2())
    {
      v12 = 136315394;
      v13 = "writeMultipleBuffers";
      v14 = 1024;
      v15 = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", &v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v11 = OUTLINED_FUNCTION_1();
  PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(v11);
}

void PSSharedCameraSurfaceStreamWriter::~PSSharedCameraSurfaceStreamWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s sfl->surfaces_installed should be 0\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::writeMetadata(char **a1, PSSharedResource *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s:%s - (Camera Stream: %s) The metadata is too large for us too handle", "PSSHAREDCAMERASTREAMWRITER", "writeMetadata", Key);
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136316162;
    v10 = "writeMetadata";
    v11 = 1024;
    v12 = 556;
    v13 = 2080;
    v14 = "PSSHAREDCAMERASTREAMWRITER";
    v15 = 2080;
    v16 = "writeMetadata";
    v17 = 2080;
    v18 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - (Camera Stream: %s) The metadata is too large for us too handle", buf, 0x30u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v10 = "writeMetadata";
      v11 = 1024;
      v12 = this;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v6, v7, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v8 = OUTLINED_FUNCTION_1();
  PSSharedCameraSurfaceStreamWriter::start(v8);
}

void PSSharedCameraSurfaceStreamWriter::start(NSObject *a1, uint64_t a2, int a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v6 = &cam_sp[67 * *(a2 + 832)];
    v7 = 136315906;
    v8 = "PSSHAREDCAMERASTREAMWRITER";
    v9 = 2080;
    v10 = "start";
    v11 = 2080;
    v12 = v6 + 3;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_25EBC5000, a1, OS_LOG_TYPE_ERROR, "%s:%s - polarisd did not serialze calls to start for cam(%s). start called (%d) without an installCVPixelBufferBackingSurfaces\n", &v7, 0x26u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::start()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Child surfaces NULL\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::init_aperature()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Total surface count error\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::createChildSurfacesFromParentSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Child surfaces NULL\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVPixelBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVDataBuffers. can't install CVPixelBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVDataBuffers. can't install CVPixelBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVPixelBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::_installCVPixelBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVDataBuffers. can't install CVPixelBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVDataBuffers. can't install CVPixelBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "_installCVPixelBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVPixelBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVDataBuffers. can't install CVPixelBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVDataBuffers. can't install CVPixelBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVPixelBuffer");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVPixelBuffers. can't install CVDataBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVPixelBuffers. can't install CVDataBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVDataBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::_installCVDataBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVPixelBuffers. can't install CVDataBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVPixelBuffers. can't install CVDataBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "_installCVDataBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBuffer(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v6 = "PSSHAREDCAMERASTREAMWRITER";
    v7 = 2080;
    v8 = "installCVDataBuffer";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s:%s - Invalid number of CVDataBuffers, got %d, must be %d\n", buf, 0x22u);
  }

  printf("%s:%s - Invalid number of CVDataBuffers, got %d, must be %d\n", "PSSHAREDCAMERASTREAMWRITER", "installCVDataBuffer", a1, a2);
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVPixelBuffers. can't install CVDataBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVPixelBuffers. can't install CVDataBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVDataBuffer");
  abort();
}

uint64_t PSCommsBase::PSCommsBase(char **a1, mach_error_t error_value)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = mach_error_string(error_value);
  asprintf(a1, "%s mach_port_construct failed. ret=%#x (%s)", "PSCommsBase", error_value, v4);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v13 = "PSCommsBase";
    v14 = 1024;
    v15 = 45;
    v16 = 2080;
    v17 = "PSCommsBase";
    v18 = 1024;
    v19 = error_value;
    v20 = 2080;
    v21 = mach_error_string(error_value);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s mach_port_construct failed. ret=%#x (%s)", buf, 0x2Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "PSCommsBase";
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  v10 = abort_with_reason();
  return ps_comms_client_send_with_reply_port_cold_1(v10);
}

uint64_t ps_comms_client_send_with_reply_port_cold_1(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "CommsClient: sending reply port away\n");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "ps_comms_client_send_with_reply_port";
    v11 = 1024;
    v12 = 45;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d CommsClient: sending reply port away\n", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ps_comms_client_send_with_reply_port";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return PSCommsClient::disconnectServer(v7);
}

void PSCommsClient::disconnectServer()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSCommsClient::isAck(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid Error response subtype\n", "isAck");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v15 = 153;
    v16 = 2080;
    v17 = "isAck";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d %s: Invalid Error response subtype\n", v4, v5, v6, v7, v12, v13, v14[0]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v15 = v1;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v10 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send(v10);
}

uint64_t _getreply(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Client %s failed to receive on port\n", "_getreply");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v15 = 293;
    v16 = 2080;
    v17 = "_getreply";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d Client %s failed to receive on port\n", v4, v5, v6, v7, v12, v13, v14[0]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v15 = v1;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v10 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send_wait_ool(v10);
}

void PSCommsClient::PSCommsClient()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSCommsClient::~PSCommsClient()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSCommsServer::port_listener(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "port_listener";
  *(buf + 6) = 1024;
  *(buf + 14) = 99;
  *(buf + 9) = 2080;
  *(buf + 20) = "port_listener";
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_impl(&dword_25EBC5000, log, OS_LOG_TYPE_FAULT, "%s:%d %s failed to receive on port with error: (%s)\n", buf, 0x26u);
}

void PSCommsServer::port_listener(void *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_8_2())
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = *a2;
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void PSCommsServer::add_cli_info(void *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_8_2())
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = *a2;
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

{
  v10 = *MEMORY[0x277D85DE8];

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_8_2())
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = *a2;
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

{
  v10 = *MEMORY[0x277D85DE8];

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_8_2())
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = *a2;
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void PSCommsServer::add_cli_info(uint64_t a1, uint64_t a2, int a3)
{
  *a2 = 136316162;
  *(a2 + 4) = "add_cli_info";
  *(a2 + 12) = 1024;
  OUTLINED_FUNCTION_1_2(a1, a2, a3);
  _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s: Mach port limit increase to LARGE failed with code 0x%x %s.", v3, 0x2Cu);
}

{
  *a2 = 136316162;
  *(a2 + 4) = "add_cli_info";
  *(a2 + 12) = 1024;
  OUTLINED_FUNCTION_1_2(a1, a2, a3);
  _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s: mach_port_construct failed. ret=%#x (%s)", v3, 0x2Cu);
}

void PSCommsServer::~PSCommsServer(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_6_4(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, 2u);
  }

  *a3 = a2;
  v11 = *MEMORY[0x277D85DE8];
}

void PSCommsServer::handleClientSend(void *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_8_2())
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = *a2;
  OUTLINED_FUNCTION_5_0();
  __break(1u);
}

void PSBufferService::PSDeathNotifier::PSDeathNotifier(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PSDeathNotifier";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSBufferService::PSDeathNotifier::PSDeathNotifier()
{
  OUTLINED_FUNCTION_1_3();
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_4_2())
  {
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_6_4(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  OUTLINED_FUNCTION_3_6();
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSFrameHistoryBufferServiceServer::reserveBuffer(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSFrameHistoryBufferService: Server vending out corrupted buffer !!!");
  v3 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    v19 = *a1;
    OUTLINED_FUNCTION_12_3(&dword_25EBC5000, v4, v5, "%s:%d %s", v6, v7, v8, v9, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v10))
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v17 = OUTLINED_FUNCTION_1();
  return _getBufferHeader(v17);
}

uint64_t _getBufferHeader(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_desc.freq_idx < PS_FRAME_HISTORY_BUFFER_POOL_MAP_LENGTH && buffer_desc.buffer_idx < _frameHistoryBufferPoolDesc.bufferPoolDesc[buffer_desc.freq_idx].buffer_count");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v9))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v16 = OUTLINED_FUNCTION_1();
  return _getBufferHeader(v16);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_header->buffer_header_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_BUFFER_HDR_MAGIC");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v9))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v16 = OUTLINED_FUNCTION_1();
  return PSFrameHistoryBufferServiceServer::deleteBuffer(v16);
}

uint64_t PSFrameHistoryBufferServiceServer::deleteBuffer(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "deleteBuffer", "freq_idx < PS_FRAME_HISTORY_BUFFER_POOL_MAP_LENGTH && buffer_idx < _frameHistoryBufferPoolDesc.bufferPoolDesc[freq_idx].buffer_count");
  v2 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v3, v4, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v9))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v16 = OUTLINED_FUNCTION_1();
  return PSFrameHistoryBufferServiceServer::deleteBuffer(v16);
}

void PSFrameHistoryBufferServiceServer::deleteBuffer(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSFrameHistoryBufferService: Buffer overflow has been discovered!!! State is corrupted");
  v3 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    v18 = *a1;
    OUTLINED_FUNCTION_12_3(&dword_25EBC5000, v4, v5, "%s:%d %s", v6, v7, v8, v9, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v10))
    {
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v17 = OUTLINED_FUNCTION_1();
  PSFrameHistoryBufferServiceServer::dumpFrameHistory(v17);
}

void PSFrameHistoryBufferServiceServer::dumpFrameHistory(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "dumpFrameHistory", "post_counter.exec_counter >= pre_counter.exec_counter");
  v3 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v6, v7, v8, v9, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v10))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v17 = *a1;
  abort_with_reason();
  __break(1u);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "dumpFrameHistory", "dump_type < PS_FRAME_HISTORY_DUMP_MAX");
  v3 = __PSUtilitiesLogSharedInstance();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v6, v7, v8, v9, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_5_1(v10))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v17 = *a1;
  abort_with_reason();
  __break(1u);
}

uint64_t ps_atomic_ringbuffer_init(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = 3758097084;
  if (a1)
  {
    if ((a1 & 0xF) != 0)
    {
      v5 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v20[0] = 67109376;
        v20[1] = 16;
        v21 = 2048;
        v22 = a1;
        _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "ring buffer base needs to be aligned to %u, actual=0x%p", v20, 0x12u);
      }
    }

    else if (a3 <= 0x2000)
    {
      v6 = 16 * a2 * ((a3 + 15) >> 4);
      if (a2 <= 0x800 && v6 <= 0x1000000)
      {
        *(a1 + 8) = 32;
        *(a1 + 12) = 16 * a2 + 32;
        *(a1 + 20) = a2;
        *(a1 + 24) = (a3 + 15) & 0x7FF0;
        *(a1 + 16) = v6;
        atomic_store(0, a1);
        if (a2)
        {
          v8 = 0;
          _X0 = 1;
          do
          {
            v10 = (a1 + 32 + 16 * v8);
            v11 = *v10;
            do
            {
              _X5 = v10[1];
              __asm { CASPAL          X4, X5, X0, X1, [X11] }

              _ZF = _X4 == v11;
              v11 = _X4;
            }

            while (!_ZF);
            ++v8;
          }

          while (v8 < a2);
        }

        v3 = 0;
        *(a1 + 28) = 1282145770;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

void ps_atomic_ringbuffer_create_writer(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_9_3();
    if (v4)
    {
      v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *v5 = 0;
      v5[1] = 0;
      *(v5 + 1) = getpid();
      v5[1] = a2;
      *a1 = v5;
    }
  }
}

void ps_atomic_ringbuffer_create_reader(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_9_3();
    if (v4)
    {
      v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      *(v5 + 2) = getpid();
      v5[2] = a2;
      *a1 = v5;
    }
  }
}

uint64_t ps_atomic_ringbuffer_writer_acquire_entry(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 3758097084;
  if (a1 && a2 && a3)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 8);
    *(a2 + 16) = -1;
    if (*(v4 + 20))
    {
      _X4 = 0;
      v7 = 0;
      while (2)
      {
        add = atomic_fetch_add(v4, 1uLL);
        v9 = add % *(v4 + 20);
        _X7 = 0;
        __asm { CASPAL          X6, X7, X4, X5, [X13] }

        v15 = (_X6 >> 40) & 0xFFFFFFFFFFFFFFLL;
        v16 = add & 0xFFFFFFFFFFFFFFLL;
        v17 = (add >> 24);
        v18 = add << 40;
        v19 = _X6;
        v20 = _X6 >> 8;
        v21 = 0;
        while (1)
        {
          _ZF = v19 == 4 || v19 == 1;
          if (!_ZF || v15 > v16)
          {
            break;
          }

          v24 = v19 | (v20 << 8) | (v15 << 40);
          v25 = (v15 >> 24) | (v21 << 32);
          v26 = *(a1 + 4);
          _X22 = v18 | (v26 << 8) | 2;
          _X21 = v25;
          __asm { CASPAL          X20, X21, X22, X23, [X13] }

          if (_X20 == v24)
          {
            v3 = 0;
            *a2 = (v26 << 8) | v18 | 2;
            *(a2 + 8) = (v21 << 32) | v17;
            *(a2 + 16) = v9;
            *a3 = v4 + *(v4 + 12) + (*(v4 + 24) * v9);
            return v3;
          }

          v20 = _X20 >> 8;
          *(&v30 + 1) = v25;
          *&v30 = _X20;
          v15 = (v30 >> 40) & 0xFFFFFFFFFFFFFFLL;
          v21 = HIDWORD(v25);
          v19 = _X20;
        }

        if (++v7 < *(v4 + 20))
        {
          continue;
        }

        break;
      }
    }

    return 3758097136;
  }

  return v3;
}

uint64_t ps_atomic_ringbuffer_reader_acquire_entry(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 3758097136;
  v4 = 3758097084;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 16);
    v6 = v5[2];
    *(a2 + 16) = -1;
    v7 = *(a1 + 4);
    if (v7 < v5[5])
    {
      _X4 = 0;
      do
      {
        _X7 = 0;
        __asm { CASPAL          X6, X7, X4, X5, [X14] }

        v15 = _X6;
        v16 = _X6 >> 8;
        v17 = 0;
        while (v15 == 4)
        {
          v18 = (v16 << 8) | 4;
          *(&v20 + 1) = v17;
          *&v20 = v16;
          v19 = v20 >> 56;
          _X16 = ((v16 & 0xFFFFFF00000000 | *(a1 + 8)) << 8) | 8;
          _X21 = v19;
          __asm { CASPAL          X20, X21, X16, X17, [X14] }

          v15 = _X20;
          *(&v20 + 1) = v19;
          *&v20 = _X20;
          v16 = v20 >> 8;
          v17 = v19 >> 8;
          if (_X20 == v18)
          {
            v3 = 0;
            *a2 = _X16;
            *(a2 + 8) = v19;
            *(a2 + 16) = v7;
            *a3 = v5 + v5[3] + v5[6] * v7;
            v24 = v7 + 1;
            goto LABEL_12;
          }
        }

        ++v7;
      }

      while (v7 < v5[5]);
    }

    v24 = 0;
LABEL_12:
    *(a1 + 4) = v24;
    return v3;
  }

  return v4;
}

void PSSharedRingBufferWriter::PSSharedRingBufferWriter()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSRingBufferLoggerClient::_allocate()
{
  v0 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5_4(&dword_25EBC5000, v1, v2, "%s: Unknown reply received for msg allocate", v3, v4, v5, v6, 2u);
  }

  abort();
}

{
  v0 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5_4(&dword_25EBC5000, v1, v2, "%s: Reply msg id does not match the resoource id", v3, v4, v5, v6, 2u);
  }

  abort();
}

{
  __assert_rtn("_allocate", "PSRingBufferLoggerClient.cpp", 112, "info_in_msg->key_hash == key_hash");
}

uint64_t PSRingBufferLoggerClient::_deallocate(char **a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid message received for key %s. Received a complex message when expecting a simple message", (a2 + 16));
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d Invalid message received for key %s. Received a complex message when expecting a simple message", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17, v18);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSRingBufferLoggerClient::_deallocate(v14);
}

uint64_t PSRingBufferLoggerClient::_deallocate(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: error\n", "_deallocate");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: error\n", v3, v4, v5, v6, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSRingBufferLoggerClient::_registerWithServer(v13);
}

void PSRingBufferLoggerClient::_registerWithServer(char **a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid message received for key %s. Received a complex message when expecting a simple message", (a2 + 16));
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d Invalid message received for key %s. Received a complex message when expecting a simple message", v4, v5, v6, v7, v14, v15, v16);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  PSRingBufferLoggerClient::requestDumpAllBuffers();
}

void PSRingBufferLoggerClient::requestDumpAllBuffers()
{
  v0 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_DEFAULT, "Invalid message received. Received a complex message when expecting a simple message", v1, 2u);
  }

  abort();
}

uint64_t PSRingBufferLoggerClientWnR1::initFromBuffer(PSRingBufferLoggerClientWnR1 *this, unsigned __int8 *a2)
{
  *(this + 121) = a2;
  *(this + 78) = a2;
  if (*a2 != -774979923)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 984) = *(a2 + 4);
  v3 = *(a2 + 20);
  *(this + 1000) = v3;
  *(this + 254) = *(a2 + 9);
  if (PSAtomicWnRnArray::initFromBuffer((this + 656), &a2[DWORD1(v3)]))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 78);
  v5 = v4[7];
  v6 = *(this + 121) + v4[6];
  *(this + 79) = v6 + v4[2];
  *(this + 122) = v6 + v5;
  v7 = *(this + 81);
  if (v7)
  {
    ps_atomic_ringbuffer_delete_writer(v7);
  }

  v8 = *(this + 80);
  if (v8)
  {
    ps_atomic_ringbuffer_delete_reader(v8);
  }

  ps_atomic_ringbuffer_create_writer(this + 81, *(this + 122));
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  ps_atomic_ringbuffer_create_reader(this + 80, *(this + 122));
  if (v11)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t PSRingBufferLoggerClientWnR1::write(PSRingBufferLoggerClientWnR1 *this, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 249) && a4 + 32 <= *(this + 250))
  {
    v10 = a2;
    v7 = *(this + 136);
    v11 = a4;
    v12 = v7;
    pthread_threadid_np(0, v13);
    v13[1] = mach_continuous_time();
    v14[0] = &v10;
    v14[1] = 32;
    v14[2] = a3;
    v15 = a4;
    v16 = 32;
    ps_atomic_ringbuffer_write_entries(*(this + 81), v14, 2u);
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void PSRingBufferLoggerClientWnR1::create(char **a1, _DWORD *a2, const char *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to create ringbuffer writer, memory is corrupted, name (%s) id (%d)", a3, *a2);
  v4 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v14 = *a1;
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v5, v6, "%s:%d %s", v7, v8, v9, v10, v12, v13, 2u);
  }

  v11 = *a1;
  abort_with_reason();
  __break(1u);
}

{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to create ringbuffer reader, memory is corrupted, name (%s) id (%d)", a3, *a2);
  v4 = pbs_ringbufferlogger_shared_instance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v14 = *a1;
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v5, v6, "%s:%d %s", v7, v8, v9, v10, v12, v13, 2u);
  }

  v11 = *a1;
  abort_with_reason();
  __break(1u);
}

void PSRingBufferLoggerServer::dump_delete_async(char **a1, unsigned __int8 a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "logInfo[idx].state is not valid for dumping, state %u, type %u, key %s, id %u", a2, *(a3 + 528), (a3 + 1), *(a3 + 516));
  v4 = pbs_ringbufferlogger_shared_instance();
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    v7 = *a1;
    v9 = 136315650;
    v10 = "dump_delete_async";
    v11 = 1024;
    v12 = 209;
    v13 = 2080;
    v14 = v7;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v5, v6, "%s:%d %s", &v9);
  }

  v8 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::enqueueLogDelete(v8);
}

void PSRingBufferLoggerServer::enqueueLogDelete(NSObject *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v4 = *a2;
    v6 = 136315650;
    v7 = "enqueueLogDelete";
    v8 = 1024;
    v9 = 368;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_25EBC5000, a1, OS_LOG_TYPE_FAULT, "%s:%d %s", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void PSRingBufferLoggerServer::allocateLoggingBuffer(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid management of logResHashToEntryIdx, size >= PBS_RINGBUFFER_LOG_MAX");
  v2 = pbs_ringbufferlogger_shared_instance();
  if (OUTLINED_FUNCTION_6_3(v2))
  {
    v5 = *a1;
    v7 = 136315650;
    v8 = "allocateLoggingBuffer";
    v9 = 1024;
    v10 = 471;
    v11 = 2080;
    v12 = v5;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v3, v4, "%s:%d %s", &v7);
  }

  v6 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::finalizeLoggingBuffer(v6);
}

void PSRingBufferLoggerServer::finalizeLoggingBuffer(char **a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Logging buffer created with incorrect flags, type: %u, key: %s, id: %u", *(a2 + 528), a3, *(a3 + 1028));
  v4 = pbs_ringbufferlogger_shared_instance();
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    v7 = *a1;
    v9 = 136315650;
    v10 = "finalizeLoggingBuffer";
    v11 = 1024;
    v12 = 551;
    v13 = 2080;
    v14 = v7;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v5, v6, "%s:%d %s", &v9);
  }

  v8 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::finalizeLoggingBuffer(v8);
}

void PSRingBufferLoggerServer::finalizeLoggingBuffer(char **a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to find log buffer, key: %s id: %u", a2, *(a2 + 1028));
  v3 = pbs_ringbufferlogger_shared_instance();
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    v6 = *a1;
    v9 = 136315650;
    v10 = "finalizeLoggingBuffer";
    v11 = 1024;
    v12 = 537;
    v13 = 2080;
    v14 = v6;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v4, v5, "%s:%d %s", &v9);
  }

  v7 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::finalizeLoggingBuffer(v7, v8);
}

void PSRingBufferLoggerServer::finalizeLoggingBuffer(char **a1, PSSharedResource *this)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  ID = PSSharedResource::getID(this);
  asprintf(a1, "Log not found, key %s, id %u", Key, ID);
  v6 = pbs_ringbufferlogger_shared_instance();
  if (OUTLINED_FUNCTION_6_3(v6))
  {
    v9 = *a1;
    v10 = 136315650;
    v11 = "finalizeLoggingBuffer";
    v12 = 1024;
    v13 = 532;
    v14 = 2080;
    v15 = v9;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v7, v8, "%s:%d %s", &v10);
  }

  OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::registerWithLoggingBuffer();
}

void PSRingBufferW1R1Writer::PSRingBufferW1R1Writer(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "PSRingBufferW1R1Writer";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PSResourcePIDTracker::stopTracking(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s:%s: We have detected a buffer overflow", "PIDTracker", "stopTracking");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v9 = "stopTracking";
    v10 = 1024;
    v11 = 40;
    v12 = 2080;
    v13 = "PIDTracker";
    v14 = 2080;
    v15 = "stopTracking";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s:%s: We have detected a buffer overflow", buf, 0x26u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "stopTracking";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  PSResourceFactory::getShbuffletInfo(v7);
}

void PSResourceFactory::getShbuffletInfo()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s id > MAX_RESOURCES\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSResourceFactory::handle_resource_deallocate()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "+ %s:%s resource is NULL - That should not be the case\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

uint64_t PSResourceFactory::handle_dealloc_shbufflet(char **a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s(line=%d): Did not find id for resource %s id=%d.\n", "PSResourceFactory", 373, a2, *(a2 + 1028));
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v5 = *(a2 + 1028);
    *buf = 136316418;
    v13 = "handle_dealloc_shbufflet";
    v14 = 1024;
    v15 = 373;
    v16 = 2080;
    v17 = "PSResourceFactory";
    v18 = 1024;
    v19 = 373;
    v20 = 2080;
    v21 = a2;
    v22 = 1024;
    v23 = v5;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s(line=%d): Did not find id for resource %s id=%d.\n", buf, 0x32u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "handle_dealloc_shbufflet";
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  v10 = abort_with_reason();
  return PSResourceFactory::saveReaderPorts(v10);
}

void PSResourceFactory::saveReaderPorts()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSResourceFactory::replyWithShbuffletList(int a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315650;
    v4 = "PSResourceFactory";
    v5 = 2080;
    v6 = "replyWithShbuffletList";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: %s - resource at %d not INITIALIZED\n", &v3, 0x1Cu);
  }

  abort();
}

void PSResourceFactory::replyWithShbuffletList(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "PSResourceFactory";
    v7 = 2080;
    v8 = "replyWithShbuffletList";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s: %s - I counted %d resources but num_resources = %d. Why? Why? Why?\n", &v5, 0x22u);
  }

  abort();
}

void PSResourceFactory::replyWithShbuffletList()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: OOM\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSResourceFactory::handle_client_died()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSResourceFactory::handle_shbufflet_info()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSResourceFactory::handle_shbufflet_info(int *a1, uint64_t a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = *a1;
    v6 = 136315906;
    v7 = "PSResourceFactory";
    v8 = 2080;
    v9 = "handle_shbufflet_info";
    v10 = 1024;
    v11 = v5;
    v12 = 2080;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s: %s - PSSharedSemaphoreAllocator bufflet with id (%d) key(%s) not found! \n", &v6, 0x26u);
  }

  abort();
}

void PSResourceFactory::handle_resource_status()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: No such resource to initialize\n", v2, v3, v4, v5, 2u);
  }

  abort();
}

void PSResourceFactory::handle_resource_status(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v1, v2, "%s: Invalid Resource Factory Status message status\n", v3, v4, v5, v6, 2u);
  }

  abort();
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v1, v2, "%s: Invalid Resource Factory Status subtype message\n", v3, v4, v5, v6, 2u);
  }

  abort();
}

void PSResourceFactory::saveResource()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t handle_install_resource(char **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to unmap shared semaphore from the Resource Factory's address space.");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "handle_install_resource";
    v9 = 1024;
    v10 = 1470;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d Failed to unmap shared semaphore from the Resource Factory's address space.", &v7, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "handle_install_resource";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v7, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = *a1;
  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSResourceFactory::shareResource()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void PSResourceFactory::PSResourceFactory()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}