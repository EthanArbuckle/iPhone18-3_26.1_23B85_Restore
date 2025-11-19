void sub_25EA7ED74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  ps_ca_arr_args_s::~ps_ca_arr_args_s(&a33);
  _Unwind_Resume(a1);
}

uint64_t PSCoreAnalyticsServer::buildDecodeMap(PSCoreAnalyticsServer *this)
{
  v1 = 0;
  v2 = this + 48;
  do
  {
    v3 = *&v2[16 * ps_ca_decode_buffers[v1]];
    result = pbs_ringbufferlogger_shared_read_decode_data();
    ++v1;
  }

  while (v1 != 3);
  return result;
}

double ___ZN21PSCoreAnalyticsServer14buildDecodeMapEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4 + 16 * ps_ca_decode_buffers[*(a1 + 40)];
  ++*(v5 + 56);
  std::string::basic_string[abi:ne200100]<0>(&v9, (a3 + 8));
  v11 = a3;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v4 + 8), a3);
  v7 = v6;
  if (*(v6 + 47) < 0)
  {
    operator delete(v6[3]);
  }

  result = *&v9;
  *(v7 + 3) = v9;
  v7[5] = v10;
  return result;
}

void sub_25EA7F018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21PSCoreAnalyticsServer20processBufferEntriesE22PSCoreAnalyticsBuffers_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(a1 + 32);
  v7 = v6 + 16 * *(a1 + 40);
  ++*(v7 + 14);
  PSCoreAnalyticsServer::processEntry(v6, a6, a2);
}

void PSCoreAnalyticsServer::sendBucketTotalEvent(void (***a1)(void, void **, xpc_object_t, void), char *a2, unsigned int a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  if (a2)
  {
    v11 = ps_ca_string_for_opaque_id(a3);
    if (v11)
    {
      v12 = v11;
      for (i = 0; a6; --a6)
      {
        v14 = *a5++;
        i += v14;
      }

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "uniqueID", v12);
      xpc_dictionary_set_uint64(empty, "value", a4);
      xpc_dictionary_set_uint64(empty, "numFrames", i);
      std::string::basic_string[abi:ne200100]<0>(__p, a2);
      (**a1)(a1, __p, empty, 0);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_25EA7F17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSCoreAnalyticsServer::getEventKeyForEntryType(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 0:
      v4 = *MEMORY[0x277D85DE8];
      break;
    case 1:
      v15 = *MEMORY[0x277D85DE8];
      break;
    case 2:
      v11 = *MEMORY[0x277D85DE8];
      break;
    case 3:
      v13 = *MEMORY[0x277D85DE8];
      break;
    case 4:
      v8 = *MEMORY[0x277D85DE8];
      break;
    case 5:
      v18 = *MEMORY[0x277D85DE8];
      break;
    case 6:
      v20 = *MEMORY[0x277D85DE8];
      break;
    case 7:
      v14 = *MEMORY[0x277D85DE8];
      break;
    case 8:
      v22 = *MEMORY[0x277D85DE8];
      break;
    case 9:
      v10 = *MEMORY[0x277D85DE8];
      break;
    case 10:
      v21 = *MEMORY[0x277D85DE8];
      break;
    case 11:
      v7 = *MEMORY[0x277D85DE8];
      break;
    case 12:
      v9 = *MEMORY[0x277D85DE8];
      break;
    case 13:
      v19 = *MEMORY[0x277D85DE8];
      break;
    case 14:
      v6 = *MEMORY[0x277D85DE8];
      break;
    case 15:
      v12 = *MEMORY[0x277D85DE8];
      break;
    case 16:
      v5 = *MEMORY[0x277D85DE8];
      break;
    default:
      MEMORY[0x25F8C7A80](a2, "");
      v16 = _polarisdLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23[0] = 67109120;
        v23[1] = a3;
        _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_ERROR, "CoreAnalytics, unknown entry type (%d)", v23, 8u);
      }

      v17 = *MEMORY[0x277D85DE8];
      return;
  }

  JUMPOUT(0x25F8C7A80);
}

uint64_t PSCoreAnalyticsServer::getDecodeData(PSCoreAnalyticsServer *a1, std::string *a2, unint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v7 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1 + 1, &v11);
  if (v7)
  {
    std::string::operator=(a2, v7 + 1);
    result = 0;
  }

  else
  {
    PSCoreAnalyticsServer::buildDecodeMap(a1);
    v9 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v13 = v11;
      v14 = 1024;
      v15 = a4;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "CoreAnalyticsServer, could not find hash (%llu) in decoder for entryType (%d)...", buf, 0x12u);
    }

    result = 0xFFFFFFFFLL;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void PSCoreAnalyticsServer::sendEntry(uint64_t a1, const std::string::value_type **a2, xpc_object_t object, uint64_t a4)
{
  if (a4 && *(a4 + 80) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *a2, a2[1]);
    }

    else
    {
      v19 = *a2;
    }

    v8 = *(a4 + 48);
    if (*(a4 + 48))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = a4 + 24 * v10;
        if (*v11)
        {
          v12 = 0;
          do
          {
            v13 = *(v11 + 8);
            if (v13 && *(v13 + 2 * v12))
            {
              v14 = xpc_copy(object);
              v15 = v14;
              v16 = (a4 + 88);
              if (*(a4 + 111) < 0)
              {
                v16 = *(a4 + 88);
              }

              xpc_dictionary_set_uint64(v14, v16, v12);
              v17 = (a4 + 112);
              if (*(a4 + 135) < 0)
              {
                v17 = *(a4 + 112);
              }

              xpc_dictionary_set_uint64(v15, v17, *(*(v11 + 8) + 2 * v12));
              if (*(a4 + 49) == 1)
              {
                v18 = (a4 + 56);
                if (*(a4 + 79) < 0)
                {
                  v18 = *(a4 + 56);
                }

                xpc_dictionary_set_BOOL(v15, v18, *(v11 + 16));
              }

              v20 = MEMORY[0x277D85DD0];
              v21 = 0x40000000;
              v22 = ___ZL20sendEntriesFromArrayNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvP16ps_ca_arr_args_s_block_invoke;
              v23 = &__block_descriptor_tmp_97;
              v24 = v15;
              if (analytics_send_event_lazy())
              {
                ++v9;
              }

              else
              {
                xpc_release(v15);
              }
            }

            ++v12;
          }

          while (v12 < *v11);
          v8 = *(a4 + 48);
        }

        ++v10;
      }

      while (v10 < v8);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 224) += v9;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      v7 = *a2;
    }

    if (analytics_send_event_lazy())
    {
      ++*(a1 + 224);
      return;
    }
  }

  xpc_release(object);
}

void sub_25EA7F8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ps_ca_create_server()
{
  if (ps_ca_create_server::onceToken != -1)
  {
    ps_ca_create_server_cold_1();
  }

  return ps_ca_create_server::server;
}

PSCoreAnalyticsServer *ps_ca_destroy_server(PSCoreAnalyticsServer *result)
{
  if (result)
  {
    PSCoreAnalyticsServer::~PSCoreAnalyticsServer(result);

    JUMPOUT(0x25F8C7C50);
  }

  return result;
}

void ps_ca_arr_args_s::~ps_ca_arr_args_s(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_25EA83110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&a22, a23);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_25EA8358C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

void sub_25EA8922C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&a24, a25);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cvdataBufferAllocator(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  v5 = *a1 * v3;
  v6 = !is_mul_ok(*a1, v3);
  v7 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    *buf = 136316162;
    v24 = "cvdataBufferAllocator";
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v5;
    v31 = 1024;
    v32 = v10;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in %s width=%llu height=%llu allocSize=%llu pixelFormat=%#x\n", buf, 0x30u);
  }

  if (v6)
  {
    cvdataBufferAllocator_cold_2(a1, v4);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2948], [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], [MEMORY[0x277CCABB0] numberWithUnsignedInt:v2]);
    v12 = IOSurfaceCreate(Mutable);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4B50], *MEMORY[0x277CBED28]);
      v14 = CVDataBufferCreateWithIOSurface();
      if (v14)
      {
        v19 = v14;
        v20 = _polarisdLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v24) = v19;
          v21 = "failed to create CV Data Buffer for resource ret=%d";
LABEL_19:
          _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, v21, buf, 8u);
        }
      }

      else
      {
        v15 = CVDataBufferIncrementUseCountForCategory();
        if (!v15)
        {
          goto LABEL_7;
        }

        v22 = v15;
        v20 = _polarisdLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v24) = v22;
          v21 = "failed to increment category 1 use count for CV Data Buffer ret=%d";
          goto LABEL_19;
        }
      }

LABEL_7:
      CFRelease(v13);
      if (!Mutable)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    cvdataBufferAllocator_cold_1();
    if (Mutable)
    {
LABEL_8:
      CFRelease(Mutable);
    }
  }

LABEL_9:
  v16 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v24 = 0;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in cvdataBufferAllocator dataBufferRef=%p\n", buf, 0xCu);
  }

  result = 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _polarisdLogSharedInstance()
{
  if (_polarisdLogSharedInstance_onceToken != -1)
  {
    _polarisdLogSharedInstance_cold_1();
  }

  return _polarisdLogSharedInstance_instance;
}

os_log_t ___polarisdLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "polarisd");
  _polarisdLogSharedInstance_instance = result;
  return result;
}

void taskWrapperExecutionHandler(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  ps_task_wrapper_execute_sync(a1);

  objc_autoreleasePoolPop(v2);
}

unint64_t ps_task_wrapper_execute_sync(uint64_t *a1)
{
  v1 = a1;
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if ((*(*a1 + 20) & 1) == 0)
  {
    v3 = *(v2 + 16);
    v4 = task_counters_0();
    *(v4 + 144) = v5;
    *(v4 + 136) = v1[2];
  }

  v6 = *(v2 + 48);
  v7 = *(v1 + 8);
  ps_task_context_set_graph_stride();
  v8 = *(v2 + 32);
  if (ps_resource_array_get_count() >= 2)
  {
    ps_task_wrapper_execute_sync_cold_4(v17, v2);
LABEL_14:
    ps_task_wrapper_execute_sync_cold_1(v17, v2);
  }

  v9 = *(v2 + 40);
  if (ps_resource_array_get_count())
  {
    goto LABEL_14;
  }

  v10 = mach_absolute_time();
  if (*(v2 + 20) == 1)
  {
    (*(v2 + 24))(*(v2 + 48), *(v2 + 32), *(v2 + 40));
  }

  else
  {
    if (ps_telemetry_is_enabled())
    {
      ps_task_wrapper_execute_sync_cold_2(v17, &v16);
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    (*(v2 + 24))(*(v2 + 48), *(v2 + 32), *(v2 + 40));
    if (ps_telemetry_is_enabled())
    {
      ps_task_wrapper_execute_sync_cold_3(v11, v17);
    }
  }

  v12 = *(v2 + 64);
  v13 = mach_absolute_time();
  result = ps_ca_notify_task_end(v12, v13 - v10);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_task_wrapper_setup_gpu_resources(uint64_t a1)
{
  v2 = *(a1 + 48);
  ps_task_context_set_mtl_device();
  v3 = *(a1 + 48);

  return ps_task_context_set_mtl_command_queue();
}

void *ps_task_wrapper_create(void *a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, uint64_t a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = malloc_type_calloc(1uLL, 0x148uLL, 0x10B00405EF556FCuLL);
  if (v15)
  {
    v15[3] = [v14 function];
    v15[6] = ps_task_context_create();
    v15[7] = a3;
    v15[1] = a4;
    *(v15 + 8) = a5;
    *(v15 + 9) = a6;
    *(v15 + 20) = 0;
    v15[8] = a7;
    [v14 userdata];
    ps_task_context_set_userdata();
    v16 = [v14 name];
    [v16 UTF8String];
    __strlcpy_chk();

    v33 = v14;
    v17 = v14;
    v34 = v13;
    v32 = v13;
    v18 = [v17 inputs];
    v19 = [v18 count];

    v15[4] = ps_resource_array_create();
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = v15[4];
        resource = ps_resource_array_get_resource();
        v23 = [v17 inputs];
        v24 = [v23 objectAtIndexedSubscript:i];
        v25 = [v24 resolvedResourceKey];
        MEMORY[0x25F8C9510](resource, [v25 UTF8String]);

        MEMORY[0x25F8C93F0](resource, 1);
        MEMORY[0x25F8C94A0](resource, 1);
        v26 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
        if (!v26)
        {
          ps_task_wrapper_create_cold_1(buf);
        }

        v27 = v26;
        MEMORY[0x25F8C94C0](resource, i, 1);
        MEMORY[0x25F8C9460](resource, i, v27, 32);
        MEMORY[0x25F8C9570](resource, i, 0);
        v28 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v36 = 0;
          _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "Finished setting up ps_resource input for key %s", buf, 0xCu);
        }
      }
    }

    v29 = [v17 outputs];
    [v29 count];

    v15[5] = ps_resource_array_create();
    v14 = v33;
    v13 = v34;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

void ps_task_wrapper_destroy(char *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 6))
  {
    ps_task_context_free();
    *(a1 + 6) = 0;
  }

  if (*(a1 + 4))
  {
    count = ps_resource_array_get_count();
    if (count)
    {
      v3 = count;
      for (i = 0; i != v3; ++i)
      {
        v5 = *(a1 + 4);
        resource = ps_resource_array_get_resource();
        if (ps_resource_get_class() == 1)
        {
          v7 = MEMORY[0x25F8C9190](resource);
          if (v7)
          {
            v8 = v7;
            for (j = 0; j != v8; ++j)
            {
              MEMORY[0x25F8C9150](resource, j);
              bytes = ps_resource_data_get_bytes();
              free(bytes);
            }
          }
        }
      }
    }

    v11 = *(a1 + 4);
    ps_resource_array_free();
    *(a1 + 4) = 0;
    v12 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = a1 + 72;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Finished deleting input array for task %s", &v16, 0xCu);
    }
  }

  if (*(a1 + 5))
  {
    ps_resource_array_get_count();
    v13 = *(a1 + 5);
    ps_resource_array_free();
    *(a1 + 5) = 0;
    v14 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = a1 + 72;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEBUG, "Finished deleting output array for task %s", &v16, 0xCu);
    }
  }

  free(a1);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_25EA8CC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ps_ca_map_string(const char *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = 2166136261;
    v3 = *a1;
    if (*a1)
    {
      v4 = (a1 + 1);
      do
      {
        v2 = 16777619 * (v2 ^ v3);
        v5 = *v4++;
        v3 = v5;
      }

      while (v5);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v46 = 0;
    v14 = v2;
    __strlcpy_chk();
    v6 = 0;
    while (1)
    {
      v7 = ps_ca_buffers[ps_ca_decode_buffers[v6]];
      v8 = pbs_ringbufferlogger_shared_write_decode_data();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (++v6 == 3)
      {
        v13 = 0;
        strncpy(v12, a1, 0x100uLL);
        LODWORD(v13) = v9;
        pbs_ringbuffer_get_shared_error_log();
        pbs_ringbufferlogger_shared_write();
        break;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_25EA8F4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void UPDATE_STATE(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 transitionMonitor];
  v5 = [v4 transitionCond];
  [v5 lock];

  v6 = [v3 transitionMonitor];
  [v6 setTransitionState:a2];

  v8 = [v3 transitionMonitor];

  v7 = [v8 transitionCond];
  [v7 unlock];
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return [a2 countByEnumeratingWithState:va objects:v14 - 224 count:16];
}

void sub_25EA93864(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void _handleTimeoutBranching(void *a1, void *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    _handleTimeoutBranching_cold_1(&v10, v6);
  }

  v7 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 localizedDescription];
    v10 = 136315138;
    v11 = [v8 UTF8String];
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s", &v10, 0xCu);
  }

  [v5 callTransitionCallback:7 retainedContext:v6];
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ps_writer_block_acquire(uint64_t a1, uint64_t *a2)
{
  v4 = ps_writer_state_update();
  if (v4)
  {
    return v4;
  }

  if (*a1 == 1)
  {
    v5 = (a1 + 24);
  }

  else
  {
    v6 = **(a1 + 8);
    ps_task_resources_acquire(v6, 0, 0);
    v5 = (v6 + 32);
  }

  v7 = *v5;
  *a2 = ps_resource_array_get_resource();
  v8 = ps_writer_state_update();
  if (!v8)
  {
    return v4;
  }

  v10 = ps_writer_block_acquire_cold_1(&v11, v8);
  return ps_writer_block_relinquish(v10);
}

uint64_t ps_writer_block_relinquish(uint64_t a1)
{
  v2 = ps_writer_state_update();
  if (v2)
  {
    return v2;
  }

  if ((*a1 & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (*(v3 + 32) == 1)
    {
      *(a1 + 32) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    }

    v4 = *v3;
    v5 = *(*v3 + 32);
    resource = ps_resource_array_get_resource();
    v7 = MEMORY[0x25F8C9240](resource, 0);
    v8 = v7;
    if (*(v3 + 32) == 1)
    {
      v8 = ps_util_mct_to_mat(v7);
    }

    if (*(v3 + 33) == 1)
    {
      MEMORY[0x25F8C9480](resource, 0, *(v3 + 40));
      ++*(v3 + 40);
    }

    v9 = MEMORY[0x25F8C9180](resource, 0);
    MEMORY[0x25F8C9200](resource, 0);
    v10 = *(v3 + 8);
    if (v10)
    {
      ps_liveness_node_start_execution(v10, v9);
    }

    if (*(v3 + 32) == 1)
    {
      v19 = 0;
      v18 = 0u;
      v17 = 0u;
      LOWORD(v19) = *(v3 + 24);
      v16 = v8;
      *(&v18 + 1) = v9;
      ps_telemetry_emit_event_internal(0, &v16, 0x30uLL, 8);
      *&v18 = v8;
      v11 = *(a1 + 88);
      v12 = mach_absolute_time();
      ps_ca_camera_delivery(v11, v8, v12);
    }

    ps_task_resources_relinquish(v4, 0);
    if (*(v3 + 8))
    {
      MEMORY[0x25F8C9260](resource, 0);
      ps_liveness_node_end_execution(*(v3 + 8));
    }
  }

  v13 = ps_writer_state_update();
  if (!v13)
  {
    return v2;
  }

  v15 = ps_writer_block_relinquish_cold_1(&v16, v13);
  return ps_writer_block_publish(v15);
}

uint64_t ps_writer_block_publish(uint64_t a1, uint64_t a2)
{
  v4 = ps_writer_state_update();
  if (v4)
  {
    return v4;
  }

  v5 = *(a1 + 8);
  if (*a1 == 1)
  {
    (v5)(*(a1 + 16), *(a1 + 24), a2);
    v5 = 0;
  }

  else
  {
    v6 = *v5;
    if (*(v5 + 33) == 1)
    {
      a2 = v5[5];
    }

    ps_task_resources_publish(*v5);
    v7 = *(v6 + 32);
    resource = ps_resource_array_get_resource();
    v9 = MEMORY[0x25F8C9240](resource, 0);
    if (*(v5 + 32) == 1)
    {
      v10 = ps_util_mct_to_mat(v9);
      if (v5[4])
      {
        v23 = 0;
        v24 = 0;
        v22[3] = 0;
        LOWORD(v24) = v5[3];
        v11 = *(a1 + 32);
        v22[0] = v10;
        v22[2] = v11;
        v23 = a2;
        v22[1] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        ps_telemetry_emit_event_internal(2, v22, 0x30uLL, 8);
      }
    }
  }

  ps_frame_history_buffer_acquire_data_entry(*(a1 + 96));
  *(a1 + 104) = v12;
  if (v5 && *v5 && (v13 = *(*v5 + 32), (v14 = ps_resource_array_get_resource()) != 0))
  {
    v15 = MEMORY[0x25F8C9200](v14, 0);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = mach_absolute_time();
  ps_frame_history_notify_start_frame_data(v16, v17, a2, v18, 0, v15);
  ps_frame_history_buffer_relinquish_data_entry(*(a1 + 96));
  v19 = ps_writer_state_update();
  if (!v19)
  {
    return v4;
  }

  v21 = ps_writer_block_publish_cold_1(v22, v19);
  return ps_writer_block_pause(v21);
}

uint64_t ps_writer_block_pause(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  ps_liveness_node_pause(*(*(a1 + 8) + 8), 1);
  return 0;
}

uint64_t ps_writer_block_resume(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  ps_liveness_node_pause(*(*(a1 + 8) + 8), 0);
  return 0;
}

_DWORD *ps_grouped_source_pool_create(uint64_t a1, _BYTE *a2, unsigned int a3, void *a4, char a5, char a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v31 = 67109120;
    v32 = a3;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "PS Graph Resources being created with %u inputs ", &v31, 8u);
  }

  v13 = malloc_type_calloc(1uLL, 0x458uLL, 0x10B00401B80E8F3uLL);
  if (!v13)
  {
    ps_grouped_source_pool_create_cold_7(&v31);
    goto LABEL_23;
  }

  v14 = v13;
  *v13 = a1;
  v13[2] = a3;
  v15 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v14 + 3) = v15;
  if (!v15)
  {
LABEL_23:
    ps_grouped_source_pool_create_cold_6(&v31);
    goto LABEL_24;
  }

  v16 = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  *(v14 + 4) = v16;
  if (!v16)
  {
LABEL_24:
    ps_grouped_source_pool_create_cold_5(&v31);
    goto LABEL_25;
  }

  v17 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  *(v14 + 5) = v17;
  if (!v17)
  {
LABEL_25:
    ps_grouped_source_pool_create_cold_4(&v31);
    goto LABEL_26;
  }

  v18 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  *(v14 + 6) = v18;
  if (!v18)
  {
LABEL_26:
    ps_grouped_source_pool_create_cold_3(&v31);
    goto LABEL_27;
  }

  v19 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v14 + 7) = v19;
  if (!v19)
  {
LABEL_27:
    ps_grouped_source_pool_create_cold_2(&v31);
LABEL_28:
    ps_grouped_source_pool_create_cold_1(&v31);
  }

  *(v14 + 2) = ps_resource_array_create();
  *(v14 + 1088) = a5;
  *(v14 + 1096) = a6;
  v14[273] = -1;
  __strlcpy_chk();
  v20 = malloc_type_calloc(a3, 0x28uLL, 0x1000040528290BBuLL);
  *(v14 + 138) = v20;
  if (!v20)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    v21 = 0;
    do
    {
      v22 = [v11 unsignedLongLongValue];
      v23 = *(v14 + 138);
      *(v23 + 40 * v21 + 16) = v22;
      if (a2)
      {
        v24 = *a2;
        v25 = -2128831035;
        if (*a2)
        {
          v26 = a2 + 1;
          do
          {
            v25 = 16777619 * (v25 ^ v24);
            v27 = *v26++;
            v24 = v27;
          }

          while (v27);
        }
      }

      else
      {
        v25 = 0;
      }

      *(v23 + 40 * v21++) = v25;
    }

    while (v21 != a3);
  }

  v28 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v31 = 67109120;
    v32 = a3;
    _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "PS Graph Resources created with %u inputs", &v31, 8u);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

void ps_grouped_source_pool_destroy(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 8);
    v6 = 136380931;
    v7 = a1 + 64;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "Deleting reader instances for GSP %{private}s, num inputs %u.", &v6, 0x12u);
  }

  if (*(a1 + 16))
  {
    ps_resource_array_free();
    *(a1 + 16) = 0;
  }

  if (*(a1 + 12))
  {
    v4 = 0;
    do
    {
      ps_prm_delete_reader_instance(*a1, *(*(a1 + 24) + 8 * v4++));
    }

    while (v4 < *(a1 + 12));
  }

  free(*(a1 + 1104));
  free(*(a1 + 24));
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  free(a1);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ps_grouped_source_pool_add_input(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (v3 >= *(a1 + 8))
  {
    ps_grouped_source_pool_add_input_cold_1();
  }

  if (a3 == 3)
  {
    ps_grouped_source_pool_add_input_cold_2(&v23, a2);
  }

  v7 = *(a1 + 16);
  resource = ps_resource_array_get_resource();
  resource_key = ps_prm_opts_get_resource_key(a2);
  MEMORY[0x25F8C9510](resource, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a2);
  MEMORY[0x25F8C93F0](resource, resource_class);
  return_capacity = ps_prm_opts_get_return_capacity(a2);
  MEMORY[0x25F8C94A0](resource, return_capacity);
  resource_metadata_type = ps_prm_opts_get_resource_metadata_type(a2);
  MEMORY[0x25F8C9520](resource, resource_metadata_type);
  key = ps_resource_get_key();
  v14 = MEMORY[0x25F8C9220](resource);
  if (key)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v55 = 0;
    v23 = v14;
    __strlcpy_chk();
    v15 = 0;
    while (1)
    {
      v16 = ps_ca_buffers[ps_ca_decode_buffers_0[v15]];
      v17 = pbs_ringbufferlogger_shared_write_decode_data();
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (++v15 == 3)
      {
        v22 = 0;
        strncpy(v21, key, 0x100uLL);
        LODWORD(v22) = v18;
        pbs_ringbuffer_get_shared_error_log();
        pbs_ringbufferlogger_shared_write();
        break;
      }
    }
  }

  *(*(a1 + 1104) + 40 * v3 + 4) = MEMORY[0x25F8C9220](resource);
  *(*(a1 + 24) + 8 * v3) = ps_prm_create_reader_instance(*a1, a2);
  ps_task_insert_to_psgraph_reader_map(a2, *(*(a1 + 24) + 8 * v3));
  *(*(a1 + 32) + 8 * v3) = a3;
  *(*(a1 + 40) + v3) = MEMORY[0x25F8C9190](resource) > 1;
  if (!a3 && ps_prm_opts_get_resource_class(a2) == 10)
  {
    *(*(a1 + 48) + v3) = 1;
  }

  ++*(a1 + 12);
  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ps_grouped_source_pool_acquire(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!*(a1 + 12))
  {
    v8 = 0;
    goto LABEL_75;
  }

  v33 = v5;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(a1 + 16);
    resource = ps_resource_array_get_resource();
    *(a1 + 1092) = v7;
    v11 = *(*(a1 + 32) + 8 * v7);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        ps_prm_acquire_reader_resources_since_last(*(*(a1 + 24) + 8 * v7), resource, *(a1 + 56) + 8 * v7);
      }

      else if (v11 == 3)
      {
        v31 = ps_grouped_source_pool_acquire_cold_1(&v34);
        return ps_grouped_source_pool_relinquish(v31);
      }
    }

    else if (v11)
    {
      if (v11 == 1)
      {
        if (ps_prm_acquire_reader_resources_latest(*(*(a1 + 24) + 8 * v7), resource, *(a1 + 56) + 8 * v7))
        {
          v12 = 3758097084;
        }

        else
        {
          v12 = v8;
        }

        if (!MEMORY[0x25F8C9190](resource))
        {
          goto LABEL_45;
        }

        v13 = 0;
        do
        {
          v14 = MEMORY[0x25F8C9260](resource, v13);
          if (v14)
          {
            v8 = v12;
          }

          else
          {
            v8 = 3758097084;
          }

          if ((v14 & 1) == 0 && a2 == 0xFFFFFFFFFFFELL)
          {
            MEMORY[0x25F8C94B0](resource, v13, 2);
            v8 = v12;
          }

          ++v13;
          v12 = v8;
        }

        while (MEMORY[0x25F8C9190](resource) > v13);
      }
    }

    else
    {
      if (a2 == 0xFFFFFFFFFFFFLL || (*(a1 + 1088) & 1) == 0 || (*(*(a1 + 40) + v7) & 1) != 0)
      {
        if (*(*(a1 + 48) + v7) != 1 || (v34 = 0xFFFFFFFFFFFFLL, ps_prm_ane_reader_wait_for_new_resource_and_get_frame_id(*(*(a1 + 24) + 8 * v7), &v34, 50), !v15))
        {
          v15 = ps_prm_acquire_reader_resources_latest(*(*(a1 + 24) + 8 * v7), resource, *(a1 + 56) + 8 * v7);
        }
      }

      else if (*(*(a1 + 48) + v7) != 1 || (v15 = ps_prm_ane_reader_wait_for_new_resource_with_frame_id(*(*(a1 + 24) + 8 * v7), a2, 50)) == 0)
      {
        v15 = ps_prm_acquire_reader_resources_with_frame_id(*(*(a1 + 24) + 8 * v7), resource, a2, *(a1 + 56) + 8 * v7);
      }

      if (v15)
      {
        v12 = 3758097084;
      }

      else
      {
        v12 = v8;
      }

      if (!MEMORY[0x25F8C9190](resource))
      {
LABEL_45:
        v8 = v12;
        goto LABEL_46;
      }

      v16 = 0;
      do
      {
        v17 = MEMORY[0x25F8C9260](resource, v16);
        if (v17)
        {
          v8 = v12;
        }

        else
        {
          v8 = 3758097084;
        }

        if ((v17 & 1) == 0 && a2 == 0xFFFFFFFFFFFELL)
        {
          MEMORY[0x25F8C94B0](resource, v16, 2);
          v8 = v12;
        }

        ++v16;
        v12 = v8;
      }

      while (MEMORY[0x25F8C9190](resource) > v16);
    }

LABEL_46:
    v18 = (*(a1 + 1104) + 40 * v7);
    v19 = v18[3];
    if (v19 && a2 - v18[4] >= (v18[2] * v19))
    {
      v20 = *(a1 + 1104) + 40 * v7;
      pbs_ringbufferlogger_shared_write();
      v21 = v18[3];
      switch(v21)
      {
        case 50:
          v22 = 0;
          goto LABEL_54;
        case 25:
          v22 = 50;
          goto LABEL_54;
        case 10:
          v22 = 25;
LABEL_54:
          v18[3] = v22;
          break;
      }
    }

    if (v8 && (*(a1 + 1096) & 1) == 0)
    {
      v23 = MEMORY[0x25F8C9220](resource);
      v6 = v33;
      v33[2](v33, v23);
      v24 = *(a1 + 1104) + 40 * v7;
      if (*(v24 + 24))
      {
        v25 = *(v24 + 8) + 1;
      }

      else
      {
        *(v24 + 24) = 10;
        *(v24 + 32) = a2;
        v25 = 1;
      }

      *(v24 + 8) = v25;
      goto LABEL_65;
    }

    ++v7;
  }

  while (v7 < *(a1 + 12));
  v6 = v33;
  if (!v8)
  {
    goto LABEL_75;
  }

LABEL_65:
  if ((*(a1 + 1092) & 0x80000000) == 0)
  {
    v26 = 0;
    do
    {
      v27 = *(a1 + 16);
      ps_resource_array_get_resource();
      v28 = ps_resource_get_class();
      if (*(*(a1 + 32) + 8 * v26) == 2 && v28 != 12)
      {
        ps_prm_rollback_reader_resource_seq_num(*(*(a1 + 24) + 8 * v26));
      }
    }

    while (v26++ < *(a1 + 1092));
  }

  if ((*(a1 + 1096) & 1) == 0)
  {
    ps_grouped_source_pool_relinquish(a1);
  }

LABEL_75:

  return v8;
}

uint64_t ps_grouped_source_pool_relinquish(uint64_t result)
{
  v1 = result;
  if ((*(result + 1092) & 0x80000000) == 0)
  {
    v2 = 0;
    do
    {
      result = ps_prm_relinquish_reader_resources(*(*(v1 + 24) + 8 * v2));
    }

    while (v2++ < *(v1 + 1092));
  }

  *(v1 + 1092) = -1;
  return result;
}

uint64_t ps_grouped_source_pool_copy_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9150](a3, a4);
  key = ps_resource_get_key();
  bytes = ps_resource_data_get_bytes();
  ps_resource_data_get_length();
  if (bytes)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);

    JUMPOUT(0x25F8C9460);
  }

  result = ps_resource_get_class();
  if (result != 12)
  {
    v13 = ps_grouped_source_pool_copy_data_cold_1(&v14, key);
    return ps_grouped_source_pool_copy_object(v13);
  }

  return result;
}

uint64_t ps_grouped_source_pool_copy_object(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C91D0](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_object_get_object())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);

    JUMPOUT(0x25F8C9530);
  }

  v11 = ps_grouped_source_pool_copy_object_cold_1(&v13, key);
  return ps_grouped_source_pool_copy_opaque(v11);
}

uint64_t ps_grouped_source_pool_copy_opaque(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C91E0](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_opaque_get_opaque_ptr())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);

    JUMPOUT(0x25F8C9530);
  }

  v11 = ps_grouped_source_pool_copy_opaque_cold_1(&v13, key);
  return ps_grouped_source_pool_copy_mtl_texture(v11);
}

uint64_t ps_grouped_source_pool_copy_mtl_texture()
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  asprintf(&v6, "not implemented yet");
  v0 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v8 = "ps_grouped_source_pool_copy_mtl_texture";
    v9 = 1024;
    v10 = 392;
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_FAULT, "%s:%d not implemented yet", buf, 0x12u);
  }

  v1 = OSLogFlushBuffers();
  if (v1)
  {
    v2 = v1;
    v3 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ps_grouped_source_pool_copy_mtl_texture";
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = abort_with_reason();
  return ps_grouped_source_pool_copy_mtl_buffer(v4);
}

uint64_t ps_grouped_source_pool_copy_mtl_buffer()
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  asprintf(&v6, "not implemented yet");
  v0 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v8 = "ps_grouped_source_pool_copy_mtl_buffer";
    v9 = 1024;
    v10 = 401;
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_FAULT, "%s:%d not implemented yet", buf, 0x12u);
  }

  v1 = OSLogFlushBuffers();
  if (v1)
  {
    v2 = v1;
    v3 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ps_grouped_source_pool_copy_mtl_buffer";
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = abort_with_reason();
  return ps_grouped_source_pool_copy_surface(v4);
}

uint64_t ps_grouped_source_pool_copy_surface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9230](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_surface_get_iosurface())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);

    JUMPOUT(0x25F8C9490);
  }

  v11 = ps_grouped_source_pool_copy_surface_cold_1(&v13, key);
  return ps_grouped_source_pool_copy_pixel_buffer(v11);
}

uint64_t ps_grouped_source_pool_copy_pixel_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9210](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_pixelbuffer_get_cvpixelbuffer())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);
    v11 = MEMORY[0x25F8C91C0](a3, a4);
    switch(v11)
    {
      case 2:

        JUMPOUT(0x25F8C9430);
      case 1:
        ps_resource_pixelbuffer_get_iosurface_metadata();

        JUMPOUT(0x25F8C9450);
      case 0:
        ps_resource_pixelbuffer_get_cfdata_metadata();

        JUMPOUT(0x25F8C9440);
    }
  }

  else
  {
    ps_grouped_source_pool_copy_pixel_buffer_cold_2(&v14, key);
  }

  v12 = ps_grouped_source_pool_copy_pixel_buffer_cold_1(&v14, key);
  return ps_grouped_source_pool_copy_data_buffer(v12);
}

uint64_t ps_grouped_source_pool_copy_data_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9160](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_databuffer_get_databuffer())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);
    v11 = MEMORY[0x25F8C91C0](a3, a4);
    switch(v11)
    {
      case 2:

        JUMPOUT(0x25F8C9400);
      case 1:
        ps_resource_databuffer_get_iosurface_metadata();

        JUMPOUT(0x25F8C9420);
      case 0:
        ps_resource_databuffer_get_cfdata_metadata();

        JUMPOUT(0x25F8C9410);
    }
  }

  else
  {
    ps_grouped_source_pool_copy_data_buffer_cold_2(&v14, key);
  }

  v12 = ps_grouped_source_pool_copy_data_buffer_cold_1(&v14, key);
  return ps_grouped_source_pool_copy_jasper_buffer(v12);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x25F8C91A0](a3, a4);
  key = ps_resource_get_key();
  if (v8)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    v12 = MEMORY[0x25F8C9260](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, v12);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);
    v13 = MEMORY[0x25F8C91C0](a3, a4);
    if (!v13)
    {
      databuffer_array = ps_resource_jasperbuffer_get_databuffer_array();
      cfdata_metadata_array = ps_resource_jasperbuffer_get_cfdata_metadata_array();
      MEMORY[0x25F8C94D0](a1, a2, databuffer_array, cfdata_metadata_array);
LABEL_6:
      valid_array = ps_resource_jasperbuffer_get_valid_array();
      MEMORY[0x25F8C9500](a1, a2, valid_array);
      ps_resource_jasperbuffer_get_timestamp_array();

      JUMPOUT(0x25F8C94F0);
    }

    if (v13 == 1)
    {
      v14 = ps_resource_jasperbuffer_get_databuffer_array();
      iosurface_metadata_array = ps_resource_jasperbuffer_get_iosurface_metadata_array();
      MEMORY[0x25F8C94E0](a1, a2, v14, iosurface_metadata_array);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = ps_grouped_source_pool_copy_jasper_buffer_cold_3(&v21, key);
  }

  if (v13 == 2)
  {
    ps_grouped_source_pool_copy_jasper_buffer_cold_1(&v21, key);
  }

  v19 = ps_grouped_source_pool_copy_jasper_buffer_cold_2(&v21, key);
  return ps_grouped_source_pool_copy_ane_buffer(v19);
}

uint64_t ps_grouped_source_pool_copy_ane_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x25F8C9110](a3, a4);
  key = ps_resource_get_key();
  if (v8)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    v12 = MEMORY[0x25F8C9260](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, v12);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);
    ps_resource_anebuffer_get_iosurface_array();
    ps_resource_anebuffer_get_iosurface_count();

    JUMPOUT(0x25F8C93C0);
  }

  v13 = ps_grouped_source_pool_copy_ane_buffer_cold_1(&v15, key);
  return ps_grouped_source_pool_copy_pearl_buffer(v13);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x25F8C91F0](a3, a4);
  key = ps_resource_get_key();
  if (v8)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    v12 = MEMORY[0x25F8C9260](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, v12);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);
    v13 = MEMORY[0x25F8C91C0](a3, a4);
    if (!v13)
    {
      dxbuffer = ps_resource_pearlbuffer_get_dxbuffer();
      dybuffer = ps_resource_pearlbuffer_get_dybuffer();
      scorebuffer = ps_resource_pearlbuffer_get_scorebuffer();
      depthbuffer = ps_resource_pearlbuffer_get_depthbuffer();
      cfdata_metadata = ps_resource_pearlbuffer_get_cfdata_metadata();
      MEMORY[0x25F8C9540](a1, a2, dxbuffer, dybuffer, scorebuffer, depthbuffer, cfdata_metadata);
LABEL_6:
      ps_resource_pearlbuffer_is_dx_valid();
      ps_resource_pearlbuffer_is_dy_valid();
      ps_resource_pearlbuffer_is_score_valid();
      ps_resource_pearlbuffer_is_depth_valid();

      JUMPOUT(0x25F8C9560);
    }

    if (v13 == 1)
    {
      v14 = ps_resource_pearlbuffer_get_dxbuffer();
      v15 = ps_resource_pearlbuffer_get_dybuffer();
      v16 = ps_resource_pearlbuffer_get_scorebuffer();
      v17 = ps_resource_pearlbuffer_get_depthbuffer();
      iosurface_metadata = ps_resource_pearlbuffer_get_iosurface_metadata();
      MEMORY[0x25F8C9550](a1, a2, v14, v15, v16, v17, iosurface_metadata);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = ps_grouped_source_pool_copy_pearl_buffer_cold_3(&v26, key);
  }

  if (v13 == 2)
  {
    ps_grouped_source_pool_copy_pearl_buffer_cold_1(&v26, key);
  }

  v24 = ps_grouped_source_pool_copy_pearl_buffer_cold_2(&v26, key);
  return ps_grouped_source_pool_copy_resource(v24);
}

uint64_t ps_grouped_source_pool_copy_resource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = ps_resource_get_class();
  v8 = *(a1 + 16);
  resource = ps_resource_array_get_resource();
  v10 = MEMORY[0x25F8C9190](a3);
  if (!a3)
  {
LABEL_39:
    ps_grouped_source_pool_copy_resource_cold_4(buf);
    goto LABEL_40;
  }

  if (!resource)
  {
LABEL_40:
    ps_grouped_source_pool_copy_resource_cold_3(buf);
    goto LABEL_41;
  }

  if (v10 > MEMORY[0x25F8C9190](resource))
  {
LABEL_41:
    ps_grouped_source_pool_copy_resource_cold_2(buf);
LABEL_42:
    v23 = 0;
    v14 = ps_resource_get_class();
    asprintf(&v23, "resource class mismatch task res cls %llu gsp res cls %llu", v7, v14);
    v15 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = ps_resource_get_class();
      *buf = 136315906;
      v25 = "ps_grouped_source_pool_copy_resource";
      v26 = 1024;
      v27 = 721;
      v28 = 2048;
      v29 = v7;
      v30 = 2048;
      v31 = v16;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d resource class mismatch task res cls %llu gsp res cls %llu", buf, 0x26u);
    }

    v17 = OSLogFlushBuffers();
    if (v17)
    {
      goto LABEL_47;
    }

    usleep(0x1E8480u);
LABEL_50:
    v20 = abort_with_reason();
    return ps_grouped_source_pool_copy_working_set_dict(v20, v21, v22);
  }

  result = ps_resource_get_class();
  if (v7 != result)
  {
    goto LABEL_42;
  }

  if (a4)
  {
    for (i = 0; a4 != i; ++i)
    {
      if (MEMORY[0x25F8C9260](resource, i))
      {
        if (v7 > 7)
        {
          if (v7 <= 9)
          {
            if (v7 == 8)
            {
              result = ps_grouped_source_pool_copy_data_buffer(a3, i, resource, i);
            }

            else
            {
              result = ps_grouped_source_pool_copy_jasper_buffer(a3, i, resource, i);
            }
          }

          else
          {
            switch(v7)
            {
              case 10:
                result = ps_grouped_source_pool_copy_ane_buffer(a3, i, resource, i);
                break;
              case 11:
                result = ps_grouped_source_pool_copy_pearl_buffer(a3, i, resource, i);
                break;
              case 12:
                ps_grouped_source_pool_copy_data(a3, i, resource, i);
                result = MEMORY[0x25F8C9170](resource);
                if (result)
                {
                  result = MEMORY[0x25F8C9470](a3, result);
                }

                break;
              default:
                goto LABEL_46;
            }
          }
        }

        else if (v7 > 3)
        {
          if (v7 > 5)
          {
            if (v7 != 7)
            {
              ps_grouped_source_pool_copy_mtl_texture();
LABEL_37:
              if (v7 == 5)
              {
                ps_grouped_source_pool_copy_mtl_buffer();
                goto LABEL_39;
              }

LABEL_46:
              v17 = ps_grouped_source_pool_copy_resource_cold_1(buf);
LABEL_47:
              v18 = v17;
              v19 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v25 = "ps_grouped_source_pool_copy_resource";
                v26 = 1024;
                v27 = v18;
                _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
              }

              goto LABEL_50;
            }

            result = ps_grouped_source_pool_copy_pixel_buffer(a3, i, resource, i);
          }

          else
          {
            if (v7 != 4)
            {
              goto LABEL_37;
            }

            result = ps_grouped_source_pool_copy_surface(a3, i, resource, i);
          }
        }

        else
        {
          switch(v7)
          {
            case 1:
              result = ps_grouped_source_pool_copy_data(a3, i, resource, i);
              break;
            case 2:
              result = ps_grouped_source_pool_copy_object(a3, i, resource, i);
              break;
            case 3:
              result = ps_grouped_source_pool_copy_opaque(a3, i, resource, i);
              break;
            default:
              goto LABEL_46;
          }
        }
      }

      else
      {
        result = MEMORY[0x25F8C94C0](a3, i, 0);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_task_insert_to_psgraph_reader_map(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = ps_prm_opts_get_graph(a1);
  v5 = v4;
  if (v4 && [v4 executionContext])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:ps_prm_opts_get_resource_key(a1)];
    v7 = [MEMORY[0x277CCAE60] valueWithPointer:a2];
    [*(objc_msgSend(v5 "executionContext") + 48)];

    v8 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "ps_task_insert_to_psgraph_reader_map";
      v12 = 2048;
      v13 = a2;
      v14 = 2080;
      v15 = [v6 UTF8String];
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "%s: Added reader instance %p for key %s graph %p", &v10, 0x2Au);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void *ps_task_input_resource_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7, char a8, uint64_t a9, uint64_t a10, char a11)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) >= 2 && (a11 & 1) == 0)
  {
    ps_task_input_resource_create_cold_1(buf);
    goto LABEL_35;
  }

  v17 = malloc_type_calloc(1uLL, 0x80uLL, 0x1030040CA0CA3D2uLL);
  if (!v17)
  {
LABEL_35:
    ps_task_input_resource_create_cold_4(buf);
    goto LABEL_36;
  }

  v18 = v17;
  if (a2 == 3 && !a3)
  {
LABEL_36:
    ps_task_input_resource_create_cold_3(buf);
  }

  resource_key = ps_prm_opts_get_resource_key(a4);
  return_capacity = ps_prm_opts_get_return_capacity(a4);
  *v18 = a9;
  v18[1] = 0;
  v18[2] = a1;
  v21 = resource_key;
  *(v18 + 32) = ps_prm_is_producer_local(a9, resource_key);
  v18[3] = return_capacity;
  *(v18 + 33) = return_capacity > 1;
  v18[8] = a2;
  v18[9] = a3;
  v18[10] = 0;
  v18[11] = 0;
  v18[6] = a5;
  *(v18 + 14) = a6;
  *(v18 + 124) = a8;
  if (a7)
  {
    *(v18 + 30) = *a7;
    v22 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v18 + 30);
      *buf = 136315394;
      *&buf[4] = resource_key;
      *&buf[12] = 1024;
      *&buf[14] = v23;
      _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "rdar://85615537 defaults: ps_task_input_resource_create: setting key %s to drop every %d", buf, 0x12u);
    }
  }

  else
  {
    *(v18 + 30) = 0;
  }

  if (a2 == 2)
  {
    v24 = malloc_type_calloc(return_capacity, 1uLL, 0x100004077774924uLL);
    v18[5] = v24;
    if (v24)
    {
      goto LABEL_15;
    }

    ps_task_input_resource_create_cold_2(buf);
  }

  v18[5] = 0;
LABEL_15:
  MEMORY[0x25F8C9510](a1, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a4);
  MEMORY[0x25F8C93F0](a1, resource_class);
  MEMORY[0x25F8C94A0](a1, return_capacity);
  resource_metadata_type = ps_prm_opts_get_resource_metadata_type(a4);
  MEMORY[0x25F8C9520](a1, resource_metadata_type);
  if (a5)
  {
    if (!a11)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v27 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = ps_prm_opts_get_resource_key(a4);
      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_DEBUG, "Creating reader instance for PSTask Input Resource for key %s.", buf, 0xCu);
    }

    reader_instance = ps_prm_create_reader_instance(a9, a4);
    v18[1] = reader_instance;
    ps_task_insert_to_psgraph_reader_map(a4, reader_instance);
    if (!a11)
    {
      goto LABEL_33;
    }
  }

  if (a10)
  {
    if (resource_key)
    {
      v30 = 2166136261;
      v31 = *v21;
      if (*v21)
      {
        v32 = (v21 + 1);
        do
        {
          v30 = 16777619 * (v30 ^ v31);
          v33 = *v32++;
          v31 = v33;
        }

        while (v33);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      *&buf[8] = 0u;
      v75 = 0;
      *buf = v30;
      __strlcpy_chk();
      v34 = 0;
      while (1)
      {
        v35 = ps_ca_buffers[ps_ca_decode_buffers_1[v34]];
        v36 = pbs_ringbufferlogger_shared_write_decode_data();
        if (!v36)
        {
          break;
        }

        v37 = v36;
        if (++v34 == 3)
        {
          v43 = 0;
          strncpy(v42, v21, 0x100uLL);
          LODWORD(v43) = v37;
          pbs_ringbuffer_get_shared_error_log();
          pbs_ringbufferlogger_shared_write();
          break;
        }
      }
    }

    else
    {
      LODWORD(v30) = 0;
    }

    v18[13] = ps_ca_buffer_expiry_init(v30, a10, &__block_literal_global_13);
  }

  pbs_ringbuffer_get_shared_error_log();
LABEL_33:
  v38 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t ps_task_input_resource_set_buffer_expiry_offset(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = ps_task_input_resource_set_buffer_expiry_offset_cold_1(v5);
    return ps_task_input_resource_destroy(v4);
  }

  return result;
}

void ps_task_input_resource_destroy(PSResourceManager **a1)
{
  v2 = a1[13];
  if (v2)
  {
    ps_ca_buffer_expiry_delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    ps_prm_delete_reader_instance(*a1, v4);
  }

  free(a1);
}

unint64_t check_for_new_pull_optional_resource(void *a1)
{
  if (MEMORY[0x25F8C9190](a1[2]))
  {
    v2 = 0;
    do
    {
      *(a1[5] + v2) = 0;
      if (MEMORY[0x25F8C9260](a1[2], v2) && MEMORY[0x25F8C9240](a1[2], v2) <= a1[11])
      {
        MEMORY[0x25F8C94C0](a1[2], v2, 0);
        *(a1[5] + v2) = 1;
      }

      ++v2;
    }

    while (MEMORY[0x25F8C9190](a1[2]) > v2);
  }

  result = MEMORY[0x25F8C9240](a1[2], 0);
  if (result > a1[11])
  {
    a1[11] = result;
  }

  return result;
}

unint64_t ps_task_input_resource_acquire(uint64_t a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  if (v4)
  {
    if (v5 < 2)
    {
      ps_grouped_source_pool_copy_resource(v4, *(a1 + 56), *(a1 + 16), *(a1 + 24));
      ps_grouped_source_pool_copy_working_set_dict(*(a1 + 48), *(a1 + 56), (a1 + 80));
      goto LABEL_33;
    }

    if (v5 == 2)
    {
      ps_grouped_source_pool_copy_resource(v4, *(a1 + 56), *(a1 + 16), *(a1 + 24));
      ps_grouped_source_pool_copy_working_set_dict(*(a1 + 48), *(a1 + 56), (a1 + 80));
      goto LABEL_32;
    }

    if (v5 != 3)
    {
      goto LABEL_33;
    }

    ps_task_input_resource_acquire_cold_1(buf);
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        valuePtr = 0;
        v6 = *(a1 + 16);
        key = ps_resource_get_key();
        v8 = *(a1 + 72);
        v9 = *(v8 + 80);
        v10 = *(v8 + 16);
        v11 = ps_resource_get_key();
        if (*(*(a1 + 72) + 32) != 1)
        {
          v24 = v11;
          v30 = 0;
          asprintf(&v30, "producer for %s is not local. so can't sync %s off of this remote input", v11, key);
          v25 = __PLSLogSharedInstance();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315906;
            *&buf[4] = "ps_task_input_resource_acquire";
            v33 = 1024;
            v34 = 261;
            v35 = 2080;
            v36 = v24;
            v37 = 2080;
            v38 = key;
            _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_FAULT, "%s:%d producer for %s is not local. so can't sync %s off of this remote input", buf, 0x26u);
          }

          v26 = OSLogFlushBuffers();
          if (v26)
          {
            v27 = v26;
            v28 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ps_task_input_resource_acquire";
              v33 = 1024;
              v34 = v27;
              _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
            usleep(0x1E8480u);
          }

          v29 = abort_with_reason();
          return ps_task_input_check_buffer_expiration(v29);
        }

        if (!v9 || (v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], key, 0x8000100u), Value = CFDictionaryGetValue(v9, v12), CFRelease(v12), !Value) || (CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr) ? (v14 = valuePtr == -1) : (v14 = 1), v14 || (*buf = 0, ps_prm_acquire_reader_resources_with_frame_id(*(a1 + 8), *(a1 + 16), valuePtr, buf)) || (MEMORY[0x25F8C9260](*(a1 + 16), 0) & 1) == 0))
        {
          if (MEMORY[0x25F8C9190](*(a1 + 16)))
          {
            v15 = 0;
            do
            {
              MEMORY[0x25F8C94C0](*(a1 + 16), v15++, 0);
            }

            while (MEMORY[0x25F8C9190](*(a1 + 16)) > v15);
          }
        }
      }

      goto LABEL_33;
    }

    ps_prm_acquire_reader_resources_since_last(*(a1 + 8), *(a1 + 16), a1 + 80);
LABEL_32:
    check_for_new_pull_optional_resource(a1);
    goto LABEL_33;
  }

  if (!v5)
  {
    if (a2 != -1 && a3 && (*(a1 + 33) & 1) == 0)
    {
      ps_prm_acquire_reader_resources_with_frame_id(*(a1 + 8), *(a1 + 16), a2, a1 + 80);
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (v5 == 1)
  {
LABEL_9:
    ps_prm_acquire_reader_resources_latest(*(a1 + 8), *(a1 + 16), a1 + 80);
  }

LABEL_33:
  atomic_fetch_add((a1 + 112), 1uLL);
  v16 = (a1 + 16);
  result = MEMORY[0x25F8C9190](*(a1 + 16));
  if (result)
  {
    v18 = 0;
    while (1)
    {
      v19 = MEMORY[0x25F8C9240](*(a1 + 16), v18);
      MEMORY[0x25F8C9180](*(a1 + 16), v18);
      if (*(a1 + 120))
      {
        v20 = atomic_load((a1 + 112));
        if (!(v20 % *(a1 + 120)))
        {
          goto LABEL_43;
        }
      }

      v21 = *(a1 + 96);
      if (v21 != -1 && v19 != 0)
      {
        break;
      }

      v19 = -1;
LABEL_44:
      MEMORY[0x25F8C93D0](*v16, v18, v19);
      MEMORY[0x25F8C9090](*v16, v18++);
      result = MEMORY[0x25F8C9190](*v16);
      if (result <= v18)
      {
        goto LABEL_45;
      }
    }

    v19 += v21;
LABEL_43:
    if (!v19)
    {
      ps_task_input_resource_acquire_cold_2(buf, (a1 + 16));
    }

    goto LABEL_44;
  }

LABEL_45:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t ps_task_input_check_buffer_expiration(uint64_t a1, _BYTE *a2)
{
  v20[130] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  result = MEMORY[0x25F8C9190](v4);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      if (MEMORY[0x25F8C9260](v4, i))
      {
        if ((MEMORY[0x25F8C9250](v4, i) & 1) == 0)
        {
          ps_task_input_check_buffer_expiration_cold_1(v20);
        }

        v7 = MEMORY[0x25F8C9120](v4, i);
        v8 = MEMORY[0x25F8C9130](v4, i);
        v9 = *(a1 + 104);
        if (v9)
        {
          ps_ca_buffer_expiry_time_remaining(v9, v8, v7);
        }

        if (v8 > v7)
        {
          pbs_ringbuffer_get_shared_error_log();
          if (a2)
          {
            v10 = *a2;
            v11 = 2166136261;
            if (*a2)
            {
              v12 = a2 + 1;
              LODWORD(v11) = -2128831035;
              do
              {
                v11 = 16777619 * (v11 ^ v10);
                v13 = *v12++;
                v10 = v13;
              }

              while (v13);
            }
          }

          else
          {
            v11 = 0;
          }

          v20[0] = v11;
          __strlcpy_chk();
          key = ps_resource_get_key();
          if (key)
          {
            v15 = *key;
            v16 = 2166136261;
            if (*key)
            {
              v17 = key + 1;
              LODWORD(v16) = -2128831035;
              do
              {
                v16 = 16777619 * (v16 ^ v15);
                v18 = *v17++;
                v15 = v18;
              }

              while (v18);
            }
          }

          else
          {
            v16 = 0;
          }

          v20[65] = v16;
          ps_resource_get_key();
          __strlcpy_chk();
          pbs_ringbufferlogger_shared_write_decode_data();
          ps_util_mach_time_to_seconds(v8);
          ps_util_mach_time_to_seconds(v7);
          pbs_ringbufferlogger_shared_write();
        }
      }

      result = MEMORY[0x25F8C9190](v4);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_task_input_resource_relinquish(void *a1)
{
  if (a1[8] == 2 && MEMORY[0x25F8C9190](a1[2]))
  {
    v2 = 0;
    do
    {
      v3 = a1[5];
      if (v3 && *(v3 + v2) == 1)
      {
        MEMORY[0x25F8C94C0](a1[2], v2, 1);
        *(a1[5] + v2) = 0;
      }

      ++v2;
    }

    while (MEMORY[0x25F8C9190](a1[2]) > v2);
  }

  result = a1[1];
  if (result)
  {

    return ps_prm_relinquish_reader_resources(result);
  }

  return result;
}

uint64_t ps_task_output_resource_create(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040BBA9AC21uLL);
  if (!v8)
  {
LABEL_15:
    ps_task_output_resource_create_cold_5(&v26);
  }

  v9 = v8;
  *v8 = a4;
  v8[2] = a1;
  v8[3] = ps_prm_opts_get_return_capacity(a2);
  v9[4] = 0;
  resource_key = ps_prm_opts_get_resource_key(a2);
  MEMORY[0x25F8C9510](a1, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a2);
  MEMORY[0x25F8C93F0](a1, resource_class);
  MEMORY[0x25F8C94A0](a1, v9[3]);
  resource_metadata_type = ps_prm_opts_get_resource_metadata_type(a2);
  MEMORY[0x25F8C9520](a1, resource_metadata_type);
  writer_instance = ps_prm_create_writer_instance(a4, a2);
  v9[1] = writer_instance;
  v14 = ps_prm_opts_get_graph(a2);
  v15 = v14;
  if (v14)
  {
    if ([v14 executionContext])
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:ps_prm_opts_get_resource_key(a2)];
      v17 = [MEMORY[0x277CCAE60] valueWithPointer:writer_instance];
      [*(objc_msgSend(v15 "executionContext") + 40)];
    }
  }

  if (!a3)
  {
    return v9;
  }

  v18 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004043506912uLL);
  if (!v18)
  {
    ps_task_output_resource_create_cold_4(&v26);
    goto LABEL_17;
  }

  v19 = v18;
  *v18 = 0;
  v18[1] = a3;
  writer_depth = ps_prm_opts_get_writer_depth(a2);
  v19[2] = ps_prm_opts_get_reader_depth(a2) + writer_depth;
  v21 = malloc_type_calloc(a3, 8uLL, 0x80040B8603338uLL);
  *(v19 + 2) = v21;
  if (!v21)
  {
LABEL_17:
    ps_task_output_resource_create_cold_3(&v26);
    goto LABEL_18;
  }

  v22 = 0;
  do
  {
    *(*(v19 + 2) + v22) = malloc_type_calloc(v19[2], 8uLL, 0x2004093837F09uLL);
    if (!*(*(v19 + 2) + v22))
    {
      ps_task_output_resource_create_cold_2(&v26);
      goto LABEL_15;
    }

    v22 += 8;
  }

  while (8 * a3 != v22);
  v23 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v19 + 3) = v23;
  if (v23)
  {
    *(v19 + 4) = ps_resource_array_create();
    v9[5] = v19;
    return v9;
  }

LABEL_18:
  v25 = ps_task_output_resource_create_cold_1(&v26);
  return ps_task_output_resource_attach_retained_input(v25);
}

uint64_t ps_task_output_resource_attach_retained_input(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = *v4;
  if (v5 >= v4[1])
  {
    ps_task_output_resource_attach_retained_input_cold_1();
  }

  *(*(v4 + 3) + 8 * v5) = *(a2 + 16);
  if (v4[2])
  {
    v8 = 0;
    v9 = *(*(v4 + 2) + 8 * v5);
    do
    {
      reader_instance = ps_prm_create_reader_instance(*a1, a3);
      *(v9 + 8 * v8) = reader_instance;
      ps_task_insert_to_psgraph_reader_map(a3, reader_instance);
      ++v8;
    }

    while (v8 < v4[2]);
    v11 = *v4;
  }

  v12 = *(v4 + 4);
  resource = ps_resource_array_get_resource();
  resource_key = ps_prm_opts_get_resource_key(a3);
  MEMORY[0x25F8C9510](resource, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a3);
  MEMORY[0x25F8C93F0](resource, resource_class);
  return_capacity = ps_prm_opts_get_return_capacity(a3);
  result = MEMORY[0x25F8C94A0](resource, return_capacity);
  ++*v4;
  return result;
}

void ps_task_output_resource_destroy(uint64_t a1)
{
  if (*(a1 + 40))
  {
    ps_task_output_resource_destroy_cold_1(&v2, a1);
  }

  ps_prm_delete_writer_instance(*a1, *(a1 + 8));

  free(a1);
}

void ps_task_output_resource_destroy_retained_inputs(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    if (!*(v1 + 2))
    {
      ps_task_output_resource_destroy_retained_inputs_cold_1();
    }

    v3 = *v1;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(v1 + 2) + 8 * i);
        if (v5)
        {
          if (v1[2])
          {
            v6 = 0;
            do
            {
              v7 = v5[v6];
              ps_prm_relinquish_reader_resources(v7);
              ps_prm_delete_reader_instance(*a1, v7);
              ++v6;
            }

            while (v6 < v1[2]);
          }

          free(v5);
          v3 = *v1;
        }
      }
    }

    v8 = *(v1 + 4);
    ps_resource_array_free();
    free(*(v1 + 2));
    free(*(v1 + 3));
    free(v1);
    *(a1 + 40) = 0;
  }
}

uint64_t ps_task_output_resource_acquire(uint64_t *a1)
{
  v2 = a1[2];
  result = ps_prm_acquire_write_resources(a1[1]);
  if (a1[5])
  {
    result = ps_prm_get_view_idx_for_write_resources(a1[1]);
    v4 = a1[5];
    if (*v4)
    {
      v5 = result;
      v6 = 0;
      do
      {
        v7 = *(*(*(v4 + 2) + 8 * v6) + 8 * v5);
        ps_prm_relinquish_reader_resources(v7);
        v8 = *(*(v4 + 3) + 8 * v6);
        result = MEMORY[0x25F8C9260](v8, 0);
        if (result)
        {
          v9 = MEMORY[0x25F8C9180](v8, 0);
          v10 = *(v4 + 4);
          resource = ps_resource_array_get_resource();
          result = ps_prm_acquire_reader_resources_with_frame_id(v7, resource, v9, 0);
        }

        ++v6;
      }

      while (v6 < *v4);
    }
  }

  return result;
}

void ps_task_output_resource_write_working_set(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  ps_resource_get_key();
  if (a3)
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = a3;
    do
    {
      v9 = *(*a2 + 16);
      key = ps_resource_get_key();
      valuePtr = MEMORY[0x25F8C9180](v9, 0);
      v11 = CFStringCreateWithCString(v7, key, 0x8000100u);
      v12 = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(v5, v11, v12);
      CFRelease(v11);
      CFRelease(v12);
      if (*(*a2 + 32) == 1)
      {
        v13 = *(*a2 + 80);
        if (v13)
        {
          CFDictionaryApplyFunction(v13, mergeDictFunc, v5);
        }
      }

      a2 += 8;
      --v8;
    }

    while (v8);
  }
}

void mergeDictFunc(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (value && key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

uint64_t ps_task_output_resource_relinquish(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x25F8C9190](*(a1 + 16));
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x25F8C94C0](*(a1 + 16), i, 0);
      }
    }
  }

  v6 = *(a1 + 8);

  return ps_prm_relinquish_writer_resources(v6);
}

_DWORD *ps_task_resources_create(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v18) = 67109376;
    HIDWORD(v18) = a1;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEBUG, "PS Task Resources being created with %u inputs and %u outputs", &v18, 0xEu);
  }

  v11 = malloc_type_calloc(1uLL, 0x140uLL, 0x10A004047160CF5uLL);
  if (!v11)
  {
    ps_task_resources_create_cold_4(&v18);
LABEL_14:
    ps_task_resources_create_cold_3(&v18);
LABEL_15:
    ps_task_resources_create_cold_2(&v18);
  }

  v12 = v11;
  *v11 = a4;
  v11[2] = a1;
  v11[6] = a2;
  if (a3)
  {
    __strlcpy_chk();
  }

  v13 = malloc_type_calloc(a1, 8uLL, 0x2004093837F09uLL);
  *(v12 + 5) = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
  *(v12 + 6) = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  *(v12 + 2) = ps_resource_array_create();
  *(v12 + 4) = ps_resource_array_create();
  if (ps_should_treat_synced_inputs_as_wait_inputs_onceToken != -1)
  {
    ps_task_resources_create_cold_1();
  }

  *(v12 + 313) = (ps_should_treat_synced_inputs_as_wait_inputs_answer & 1) == 0;
  *(v12 + 314) = a5;
  v15 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v18) = 67109376;
    HIDWORD(v18) = a1;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEBUG, "PS Task Resources created with %u inputs and %u outputs", &v18, 0xEu);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

void ps_task_resources_destroy_inputs(uint64_t a1)
{
  if (*(a1 + 16))
  {
    ps_resource_array_free();
    *(a1 + 16) = 0;
  }

  if (*(a1 + 12))
  {
    v2 = 0;
    do
    {
      ps_task_input_resource_destroy(*(*(a1 + 40) + 8 * v2++));
    }

    while (v2 < *(a1 + 12));
  }

  if (*(a1 + 28))
  {
    v3 = 0;
    do
    {
      ps_task_output_resource_destroy_retained_inputs(*(*(a1 + 48) + 8 * v3++));
    }

    while (v3 < *(a1 + 28));
  }

  free(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ps_task_resources_destroy_outputs(uint64_t a1)
{
  if (*(a1 + 32))
  {
    ps_resource_array_free();
    *(a1 + 32) = 0;
  }

  if (*(a1 + 28))
  {
    v2 = 0;
    do
    {
      ps_task_output_resource_destroy(*(*(a1 + 48) + 8 * v2++));
    }

    while (v2 < *(a1 + 28));
  }

  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

void ps_task_resources_destroy(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    LODWORD(v6) = 67109376;
    HIDWORD(v6) = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEBUG, "PS Task Resources destroyed with %u inputs and %u outputs", &v6, 0xEu);
  }

  if (*(a1 + 40) || *(a1 + 48))
  {
    ps_task_resources_destroy_cold_1(&v6);
  }

  free(a1);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ps_task_resources_add_input(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 12);
  if (v9 >= *(a1 + 8))
  {
    ps_task_resources_add_input_cold_1();
  }

  v18 = *(a1 + 16);
  resource = ps_resource_array_get_resource();
  if (ps_should_treat_synced_inputs_as_wait_inputs_onceToken != -1)
  {
    ps_task_resources_add_input_cold_2();
  }

  if ((a2 != 3) | ps_should_treat_synced_inputs_as_wait_inputs_answer & 1)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  if (a3 == -1 && v20 == 3)
  {
    ps_task_resources_add_input_cold_3(&v24);
  }

  if (v20 == 3)
  {
    v21 = ps_task_input_resource_create(resource, 3, *(*(a1 + 40) + 8 * a3), a4, a5, a6, a7, *(a1 + 314), *a1, a8, a9);
  }

  else
  {
    v21 = ps_task_input_resource_create(resource, v20, 0, a4, a5, a6, a7, *(a1 + 314), *a1, a8, a9);
  }

  v22 = *(a1 + 12);
  *(*(a1 + 40) + 8 * v22) = v21;
  *(a1 + 12) = v22 + 1;
  return v9;
}

uint64_t ps_task_resources_add_output(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 28);
  if (v3 >= *(a1 + 24))
  {
    ps_task_resources_add_output_cold_1();
  }

  v7 = *(a1 + 32);
  resource = ps_resource_array_get_resource();
  *(*(a1 + 48) + 8 * v3) = ps_task_output_resource_create(resource, a2, a3, *a1);
  ++*(a1 + 28);
  return v3;
}

uint64_t ps_task_resource_attach_retained_input(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(a1 + 12) <= a3)
  {
    ps_task_resource_attach_retained_input_cold_1();
  }

  if (*(a1 + 28) <= a4)
  {
    ps_task_resource_attach_retained_input_cold_2();
  }

  v5 = *(*(a1 + 40) + 8 * a3);
  v6 = *(*(a1 + 48) + 8 * a4);

  return ps_task_output_resource_attach_retained_input(v6, v5, a2);
}

void ps_task_resources_acquire(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 12))
  {
    v6 = 0;
    do
    {
      ps_task_input_resource_acquire(*(*(a1 + 40) + 8 * v6++), a2, a3);
    }

    while (v6 < *(a1 + 12));
  }

  if ((*(a1 + 312) & 1) == 0 && *(a1 + 28))
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 48) + 8 * v7);
      ps_task_output_resource_acquire(v8);
      if ((*(a1 + 313) & 1) == 0)
      {
        ps_task_output_resource_write_working_set(v8, *(a1 + 40), *(a1 + 12));
      }

      ++v7;
    }

    while (v7 < *(a1 + 28));
  }
}

uint64_t ps_task_resources_relinquish(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    v4 = 0;
    do
    {
      ps_task_input_check_buffer_expiration(*(*(a1 + 40) + 8 * v4++), (a1 + 56));
      v5 = *(a1 + 12);
    }

    while (v4 < v5);
    if (v5)
    {
      v6 = 0;
      do
      {
        ps_task_input_resource_relinquish(*(*(a1 + 40) + 8 * v6++));
      }

      while (v6 < *(a1 + 12));
    }
  }

  return ps_task_resources_relinquish_outputs(a1, a2);
}

uint64_t ps_task_resources_relinquish_outputs(uint64_t result, uint64_t a2)
{
  if ((*(result + 312) & 1) == 0)
  {
    v2 = result;
    if (*(result + 28))
    {
      v4 = 0;
      do
      {
        result = ps_task_output_resource_relinquish(*(*(v2 + 48) + 8 * v4++), a2);
      }

      while (v4 < *(v2 + 28));
    }
  }

  return result;
}

uint64_t ps_task_resources_publish(uint64_t result)
{
  if ((*(result + 312) & 1) == 0)
  {
    v1 = result;
    if (*(result + 28))
    {
      v2 = 0;
      do
      {
        result = ps_task_output_resource_signal_available(*(*(v1 + 48) + 8 * v2++));
      }

      while (v2 < *(v1 + 28));
    }
  }

  return result;
}

uint64_t ps_task_resources_annotate_and_check_buffer_expiry(uint64_t a1, int a2)
{
  v4 = mach_absolute_time();
  v5 = *(a1 + 16);
  count = ps_resource_array_get_count();
  if (count)
  {
    v7 = count;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = *(a1 + 16);
      resource = ps_resource_array_get_resource();
      v12 = MEMORY[0x25F8C9190]();
      if (v12)
      {
        v13 = v12;
        for (j = 0; j != v13; ++j)
        {
          if ((MEMORY[0x25F8C9250](resource, j) & 1) == 0)
          {
            MEMORY[0x25F8C93E0](resource, j, v4);
          }

          if (a2)
          {
            v15 = MEMORY[0x25F8C9130](resource, j);
            v16 = MEMORY[0x25F8C9120](resource, j);
            if (v16 != -1 && v16 <= v15)
            {
              v8 |= *(a1 + 314);
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __ps_should_treat_synced_inputs_as_wait_inputs_block_invoke()
{
  v0 = +[PLSSettings currentSettings];
  v1 = [v0 disableWorkingSets];

  if (v1)
  {
    if ((ps_should_treat_synced_inputs_as_wait_inputs_answer & 1) == 0)
    {
      v2 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 0;
        v3 = "Working sets are disabled (synced inputs are treated as wait inputs)";
        v4 = &v6;
LABEL_8:
        _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    ps_should_treat_synced_inputs_as_wait_inputs_answer = 1;
  }

  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    v3 = "Working sets are enabled";
    v4 = &v5;
    goto LABEL_8;
  }

LABEL_9:
}

void PRMANEReaderInstance::PRMANEReaderInstance(PRMANEReaderInstance *this, PRMPBSReader *a2, size_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  PRMPBSReaderInstance::PRMPBSReaderInstance(this, a2, a3);
  *v3 = &unk_2870B9A48;
  v3[11] = 0;
  operator new();
}

void PRMANEReaderInstance::~PRMANEReaderInstance(PRMReaderInstance *this)
{
  *this = &unk_2870B9A48;
  v2 = *(this + 11);
  if (v2)
  {
    PRMIOSurfaceSharedEventWaiter::~PRMIOSurfaceSharedEventWaiter(v2);
    MEMORY[0x25F8C7C50]();
  }

  PRMPBSReaderInstance::~PRMPBSReaderInstance(this);
}

{
  PRMANEReaderInstance::~PRMANEReaderInstance(this);

  JUMPOUT(0x25F8C7C50);
}

void PRMANEReaderInstance::waitForNewResourceWithFrameID(PRMReaderInstance *this, unint64_t a2, uint64_t a3)
{
  v6 = *(this + 11);
  if (v6)
  {

    PRMIOSurfaceSharedEventWaiter::waitForNewResourceWithFrameID(v6, a2, a3);
  }

  else
  {
    v10[1] = v3;
    v10[2] = v4;
    v7 = PRMANEReaderInstance::waitForNewResourceWithFrameID(v10, this);
    PRMANEReaderInstance::waitForNewResourceAndGetFrameID(v7, v8, v9);
  }
}

void PRMANEReaderInstance::waitForNewResourceAndGetFrameID(PRMReaderInstance *this, unint64_t *a2, uint64_t a3)
{
  v6 = *(this + 11);
  if (v6)
  {

    PRMIOSurfaceSharedEventWaiter::waitForNewResourceAndGetFrameID(v6, a2, a3);
  }

  else
  {
    v8[1] = v3;
    v8[2] = v4;
    FrameID = PRMANEReaderInstance::waitForNewResourceAndGetFrameID(v8, this);
    PRMAneWriter::PRMAneWriter(FrameID);
  }
}

void PRMAneWriter::PRMAneWriter(PRMAneWriter *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void PRMAneWriter::~PRMAneWriter(PRMAneWriter *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = this;
    if (*(this + 23) < 0)
    {
      v3 = *this;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_INFO, "PRMAneWriter deleting instance for channel:%s", &v7, 0xCu);
  }

  if (*(this + 13))
  {
    ps_destroy_iosurface_shared_event();
  }

  if (*(this + 4))
  {
    ps_buffer_destroy_serial_data_writer();
  }

  if (*(this + 5))
  {
    ps_buffer_delete_write_buffer();
  }

  v4 = *(this + 6);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25EA9A9C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRMAneWriter::init(void **this, PSResourceManagerOptions *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__str, *(a2 + 7));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = *__str;
  this[2] = *&__str[16];
  v4 = *(a2 + 40);
  *(this + 16) = v4;
  v5 = *(a2 + 39);
  *(this + 15) = v5;
  *(this + 20) = *(a2 + 44);
  this[9] = *(a2 + 21);
  *(this + 14) = *(a2 + 38);
  v6 = malloc_type_calloc((v5 * v4), 8uLL, 0x2004093837F09uLL);
  this[6] = v6;
  if (!v6)
  {
    *buf = 0;
    v45 = this;
    if (*(this + 23) < 0)
    {
      v45 = *this;
    }

    asprintf(buf, "Failed to allocate memory %s", v45);
    v46 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 91;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_FAULT, "%s:%d Failed to allocate memory %s", __str, 0x1Cu);
    }

    v47 = OSLogFlushBuffers();
    if (v47)
    {
      v62 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315394;
        *&__str[4] = "init";
        *&__str[12] = 1024;
        *&__str[14] = v47;
        _os_log_impl(&dword_25EA3A000, v62, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", __str, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_98;
  }

  v7 = *(this + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(this + 15);
    do
    {
      v11 = v10;
      v12 = v8;
      if (v10)
      {
        do
        {
          *(this[6] + v12) = *(*(a2 + 18) + 8 * v12);
          ++v12;
          --v11;
        }

        while (v11);
      }

      ++v9;
      v8 += v10;
    }

    while (v9 != v7);
  }

  std::string::basic_string[abi:ne200100]<0>(&v68, *(a2 + 7));
  std::string::append(&v68, "-config");
  serial_data_writer = ps_buffer_create_serial_data_writer();
  this[4] = serial_data_writer;
  if (!serial_data_writer)
  {
    *buf = 0;
    v48 = this;
    if (*(this + 23) < 0)
    {
      v48 = *this;
    }

    asprintf(buf, "Failed to get serial data writer for %s", v48);
    v49 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 107;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v49, OS_LOG_TYPE_FAULT, "%s:%d Failed to get serial data writer for %s", __str, 0x1Cu);
    }

    if (OSLogFlushBuffers())
    {
      __PSResourceManagerLogSharedInstance();
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
      goto LABEL_93;
    }

LABEL_69:
    usleep(0x1E8480u);
LABEL_93:
    result = abort_with_reason();
LABEL_98:
    __break(1u);
    return result;
  }

  v14 = ps_buffer_get_serial_data_write_buffer();
  this[11] = v14;
  *(v14 + 8) = *(this + 16);
  *v14 = this[7];
  *(v14 + 16) = this[9];
  *(v14 + 24) = *(this + 20);
  v15 = *(a2 + 7);
  group_writer_with_options = ps_buffer_create_group_writer_with_options();
  this[5] = group_writer_with_options;
  if (!group_writer_with_options)
  {
    *buf = 0;
    v50 = this;
    if (*(this + 23) < 0)
    {
      v50 = *this;
    }

    asprintf(buf, "Failed to get grouped writer for %s", v50);
    v51 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 121;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_FAULT, "%s:%d Failed to get grouped writer for %s", __str, 0x1Cu);
    }

    if (OSLogFlushBuffers())
    {
      __PSResourceManagerLogSharedInstance();
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
      goto LABEL_93;
    }

    goto LABEL_69;
  }

  v17 = malloc_type_calloc(*(this + 15), 0x18uLL, 0x108004098BBCF0FuLL);
  v18 = v17;
  if (!v17)
  {
    *buf = 0;
    v52 = this;
    if (*(this + 23) < 0)
    {
      v52 = *this;
    }

    asprintf(buf, "Failed to allocate memory %s", v52);
    v53 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 127;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v53, OS_LOG_TYPE_FAULT, "%s:%d Failed to allocate memory %s", __str, 0x1Cu);
    }

    if (OSLogFlushBuffers())
    {
      __PSResourceManagerLogSharedInstance();
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
      goto LABEL_93;
    }

    goto LABEL_69;
  }

  LODWORD(v19) = *(this + 15);
  if (v19)
  {
    v20 = 0;
    v21 = v17;
    do
    {
      v21[2] = this[6];
      *v21 = v20;
      *(v21 + 1) = 0;
      *(v21 + 2) = v19;
      *(v21 + 3) = *(this + 16);
      MEMORY[0x25F8C8DB0](this[5], _surface_allocator, v21);
      ++v20;
      v19 = *(this + 15);
      v21 += 3;
    }

    while (v20 < v19);
  }

  v65 = v18;
  v22 = *(this + 16);
  if (v22)
  {
    v23 = 0;
    v24 = *MEMORY[0x277CD2A50];
    do
    {
      if (v19)
      {
        v25 = 0;
        do
        {
          v26 = *(this[6] + v25 + v23 * v19);
          if (v25 == *(this + 20))
          {
            getprogname();
            v27 = *(a2 + 7);
            v63 = v25 + v23 * *(this + 15) + 1;
            snprintf(__str, 0xFFuLL, "%s/Polaris ; metadata/%s/ ; %d/%d");
          }

          else
          {
            getprogname();
            v28 = *(a2 + 7);
            v64 = v25 + v23 * *(this + 15) + 1;
            snprintf(__str, 0xFFuLL, "%s/Polaris ; frame/%s/ ; %d/%d");
          }

          v29 = CFStringCreateWithCString(0, __str, 0x8000100u);
          if (v29)
          {
            IOSurfaceSetValue(v26, v24, v29);
            CFRelease(v29);
          }

          ++v25;
          LODWORD(v19) = *(this + 15);
        }

        while (v25 < v19);
        v22 = *(this + 16);
      }

      ++v23;
    }

    while (v23 < v22);
  }

  MEMORY[0x25F8C8C70](this[5]);
  free(v65);
  v30 = [objc_alloc(MEMORY[0x277CD2938]) initWithMachPort:*(this + 14)];
  this[12] = v30;
  if (!v30)
  {
    v67.__r_.__value_.__r.__words[0] = 0;
    v54 = this;
    if (*(this + 23) < 0)
    {
      v54 = *this;
    }

    asprintf(&v67.__r_.__value_.__l.__data_, "Failed to create IOSurfaceSharedEvent for %s mach_port %d", v54, *this[11]);
    v55 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      v56 = this;
      if (*(this + 23) < 0)
      {
        v56 = *this;
      }

      v57 = *this[11];
      *buf = 136315906;
      *&buf[4] = "init";
      v70 = 1024;
      v71 = 166;
      v72 = 2080;
      v73 = v56;
      v74 = 1024;
      v75 = v57;
      _os_log_impl(&dword_25EA3A000, v55, OS_LOG_TYPE_FAULT, "%s:%d Failed to create IOSurfaceSharedEvent for %s mach_port %d", buf, 0x22u);
    }

    if (OSLogFlushBuffers())
    {
      __PSResourceManagerLogSharedInstance();
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_98;
  }

  std::string::basic_string[abi:ne200100]<0>(&v67, *(a2 + 7));
  std::string::append(&v67, "-event");
  v31 = this[11];
  v32 = ps_register_iosurface_shared_event();
  this[13] = v32;
  if (!v32)
  {
    v66 = 0;
    v58 = this;
    if (*(this + 23) < 0)
    {
      v58 = *this;
    }

    asprintf(&v66, "Failed to register iosurface shared event for %s mach_port %d", v58, *this[11]);
    v59 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      v60 = this;
      if (*(this + 23) < 0)
      {
        v60 = *this;
      }

      v61 = *this[11];
      *buf = 136315906;
      *&buf[4] = "init";
      v70 = 1024;
      v71 = 175;
      v72 = 2080;
      v73 = v60;
      v74 = 1024;
      v75 = v61;
      _os_log_impl(&dword_25EA3A000, v59, OS_LOG_TYPE_FAULT, "%s:%d Failed to register iosurface shared event for %s mach_port %d", buf, 0x22u);
    }

    if (OSLogFlushBuffers())
    {
      __PSResourceManagerLogSharedInstance();
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_98;
  }

  this[3] = this[9];
  v33 = this[12];
  v34 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = this;
    if (*(this + 23) < 0)
    {
      v35 = *this;
    }

    v36 = this[11];
    v37 = v36[2];
    v39 = *v36;
    v38 = *(v36 + 1);
    v40 = *(v36 + 2);
    v41 = *(v36 + 6);
    v42 = [v33 signaledValue];
    *buf = 136316674;
    *&buf[4] = v35;
    v70 = 1024;
    v71 = v39;
    v72 = 2048;
    v73 = v37;
    v74 = 1024;
    v75 = v38;
    v76 = 1024;
    v77 = v40;
    v78 = 1024;
    v79 = v41;
    v80 = 2048;
    v81 = v42;
    _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEFAULT, "PRMAneWriter channel:%s, mach_port:%d, start_signal_value:%llu, number_of_surfaces_in_buffer_set:%d, number_of_buffer_set:%d, metadata_surface_index:%d, signaledValue:%llu", buf, 0x38u);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v43 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_25EA9B49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

const void *_surface_allocator(_DWORD *a1)
{
  v1 = a1[1];
  v2 = *(*(a1 + 2) + 8 * (*a1 + a1[2] * v1));
  a1[1] = v1 + 1;
  CFRetain(v2);
  return v2;
}

void PRMAneWriter::publish(PRMAneWriter *this, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = ((*(this + 3) - *(this + 9)) % *(this + 16) + *(this + 16)) % *(this + 16);
  BaseAddress = IOSurfaceGetBaseAddress(*(*(this + 6) + 8 * (*(this + 20) + *(this + 15) * v4)));
  *BaseAddress = 256;
  BaseAddress[1] = v4;
  *(BaseAddress + 4) = a2;
  v6 = *(this + 12);
  v7 = **(this + 6);
  v8 = *(this + 3);
  v17 = v6;
  v9 = IOSurfaceSignalEvent();
  v10 = v9;
  if (v9)
  {
    v18 = 0;
    v12 = this;
    if (*(this + 23) < 0)
    {
      v12 = *this;
    }

    asprintf(&v18, "Failed to signal IOSurfaceSignalEvent for %s, signal_value %llu, mach_port %d, error %d", v12, *(this + 3), **(this + 11), v9);
    v13 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = this;
      if (*(this + 23) < 0)
      {
        v14 = *this;
      }

      v15 = *(this + 3);
      v16 = **(this + 11);
      *buf = 136316418;
      v20 = "publish";
      v21 = 1024;
      v22 = 208;
      v23 = 2080;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      v27 = 1024;
      v28 = v16;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d Failed to signal IOSurfaceSignalEvent for %s, signal_value %llu, mach_port %d, error %d", buf, 0x32u);
    }

    if (OSLogFlushBuffers())
    {
      __PSResourceManagerLogSharedInstance();
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::publish();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  else
  {
    ++*(this + 3);
    v11 = *MEMORY[0x277D85DE8];
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

BOOL OUTLINED_FUNCTION_3_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void *PRM::Camera::SurfaceList::SurfaceList(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2870B9A98;
  a1[1] = 0x100000000;
  if (!a2)
  {
    v8 = 0;
    asprintf(&v8, "%s: Assertion failed for %s", "SurfaceList", "surfaceListBufflet");
    log = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v10 = "SurfaceList";
      v11 = 1024;
      v12 = 18;
      v13 = 2080;
      v14 = "SurfaceList";
      v15 = 2080;
      v16 = "surfaceListBufflet";
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  a1[2] = a2;
  num_iosurfaces = ps_buffer_iosurface_get_num_iosurfaces();
  *(a1 + 2) = num_iosurfaces;
  if (!num_iosurfaces)
  {
    v8 = 0;
    asprintf(&v8, "%s: Assertion failed for %s", "SurfaceList", "m_size > 0");
    loga = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v10 = "SurfaceList";
      v11 = 1024;
      v12 = 21;
      v13 = 2080;
      v14 = "SurfaceList";
      v15 = 2080;
      v16 = "m_size > 0";
      _os_log_impl(&dword_25EA3A000, loga, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_11:
      usleep(0x1E8480u);
      goto LABEL_13;
    }

LABEL_12:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::SurfaceList::SurfaceList();
LABEL_13:
    abort_with_reason();
    __break(1u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void *PRM::Camera::PixelBufferList::PixelBufferList(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2870B9AD0;
  a1[1] = 0x200000000;
  if (!a2)
  {
    v8 = 0;
    asprintf(&v8, "%s: Assertion failed for %s", "PixelBufferList", "pixelbufferListBufflet");
    log = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v10 = "PixelBufferList";
      v11 = 1024;
      v12 = 26;
      v13 = 2080;
      v14 = "PixelBufferList";
      v15 = 2080;
      v16 = "pixelbufferListBufflet";
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  a1[2] = a2;
  num_cvpixelbuffers = ps_buffer_cvpixelbuffer_get_num_cvpixelbuffers();
  *(a1 + 2) = num_cvpixelbuffers;
  if (!num_cvpixelbuffers)
  {
    v8 = 0;
    asprintf(&v8, "%s: Assertion failed for %s", "PixelBufferList", "m_size > 0");
    loga = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v10 = "PixelBufferList";
      v11 = 1024;
      v12 = 29;
      v13 = 2080;
      v14 = "PixelBufferList";
      v15 = 2080;
      v16 = "m_size > 0";
      _os_log_impl(&dword_25EA3A000, loga, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_11:
      usleep(0x1E8480u);
      goto LABEL_13;
    }

LABEL_12:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::PixelBufferList::PixelBufferList();
LABEL_13:
    abort_with_reason();
    __break(1u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void *PRM::Camera::DataBufferList::DataBufferList(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2870B9B08;
  a1[1] = 0x300000000;
  if (!a2)
  {
    v8 = 0;
    asprintf(&v8, "%s: Assertion failed for %s", "DataBufferList", "databufferListBufflet");
    log = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v10 = "DataBufferList";
      v11 = 1024;
      v12 = 34;
      v13 = 2080;
      v14 = "DataBufferList";
      v15 = 2080;
      v16 = "databufferListBufflet";
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  a1[2] = a2;
  num_cvdatabuffers = ps_buffer_cvdatabuffer_get_num_cvdatabuffers();
  *(a1 + 2) = num_cvdatabuffers;
  if (!num_cvdatabuffers)
  {
    v8 = 0;
    asprintf(&v8, "%s: Assertion failed for %s", "DataBufferList", "m_size > 0");
    loga = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v10 = "DataBufferList";
      v11 = 1024;
      v12 = 37;
      v13 = 2080;
      v14 = "DataBufferList";
      v15 = 2080;
      v16 = "m_size > 0";
      _os_log_impl(&dword_25EA3A000, loga, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_11:
      usleep(0x1E8480u);
      goto LABEL_13;
    }

LABEL_12:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::DataBufferList::DataBufferList();
LABEL_13:
    abort_with_reason();
    __break(1u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t PRM::Camera::SurfaceList::getBufferWithIndex@<X0>(PRM::Camera::SurfaceList *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(this + 2))
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  if (v5 <= a2)
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  result = MEMORY[0x25F8C8DD0]();
  if (!result)
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  *a3 = *(this + 3);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = result;
  return result;
}

uint64_t PRM::Camera::PixelBufferList::getBufferWithIndex@<X0>(PRM::Camera::PixelBufferList *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(this + 2))
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  if (v5 <= a2)
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  result = MEMORY[0x25F8C8BB0]();
  if (!result)
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  *a3 = *(this + 3);
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  return result;
}

uint64_t PRM::Camera::DataBufferList::getBufferWithIndex@<X0>(PRM::Camera::DataBufferList *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(this + 2))
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  if (v5 <= a2)
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  result = ps_buffer_cvdatabuffer_get_cvdatabuffer();
  if (!result)
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  *a3 = *(this + 3);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = result;
  return result;
}

uint64_t PRM::Camera::SurfaceList::getIndexWithBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (!*(a1 + 8))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (*a2 != *(a1 + 12))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (!*(a2 + 8))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  result = MEMORY[0x25F8C8DC0]();
  if ((result & 0x80000000) != 0)
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (result >= *(a1 + 8))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  return result;
}

uint64_t PRM::Camera::PixelBufferList::getIndexWithBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a1 + 8))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (*a2 != *(a1 + 12))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a2 + 16))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  result = ps_buffer_cvpixelbuffer_get_index_for_cvpixelbuffer();
  if (result != -1 && result >= *(a1 + 8))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (result <= -2)
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  return result;
}

uint64_t PRM::Camera::DataBufferList::getIndexWithBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a1 + 8))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if (*a2 != *(a1 + 12))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a2 + 24))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  result = ps_buffer_cvdatabuffer_get_index_for_cvdatabuffer();
  if (result >= *(a1 + 8))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if ((result & 0x80000000) != 0)
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  return result;
}

uint64_t PRM::Camera::SurfaceList::getSize(PRM::Camera::SurfaceList *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::SurfaceList::getSize(&v2);
  }

  result = *(this + 2);
  if (!result)
  {
    PRM::Camera::SurfaceList::getSize(&v2);
  }

  return result;
}

uint64_t PRM::Camera::PixelBufferList::getSize(PRM::Camera::PixelBufferList *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::PixelBufferList::getSize(&v2);
  }

  result = *(this + 2);
  if (!result)
  {
    PRM::Camera::PixelBufferList::getSize(&v2);
  }

  return result;
}

uint64_t PRM::Camera::DataBufferList::getSize(PRM::Camera::DataBufferList *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::DataBufferList::getSize(&v2);
  }

  result = *(this + 2);
  if (!result)
  {
    PRM::Camera::DataBufferList::getSize(&v2);
  }

  return result;
}

uint64_t PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2870B9B40;
  if (!a2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(&v5);
  }

  *(a1 + 8) = a2;
  num_buffers = ps_buffer_serial_data_get_num_buffers();
  *(a1 + 16) = num_buffers;
  if (!num_buffers)
  {
    PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(&v5);
  }

  return a1;
}

uint64_t PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(PRM::Camera::ViewIndexBufferIndexMap *this, unsigned int a2)
{
  if (!*(this + 1))
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  v2 = *(this + 4);
  if (!v2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  if (v2 <= a2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  buffer = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  result = *buffer;
  if (result <= -2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  return result;
}

_DWORD *PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(PRM::Camera::ViewIndexBufferIndexMap *this, unsigned int a2, int a3)
{
  if (!*(this + 1))
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  v3 = *(this + 4);
  if (!v3)
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  if (v3 <= a2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  result = ps_buffer_serial_data_get_buffer();
  if (!result)
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  *result = a3;
  return result;
}

void PRM::Camera::BufferPool::BufferPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2870B9B60;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    PRM::Camera::BufferPool::BufferPool(&v3);
  }

  PRM::Camera::BufferPool::BufferPool(&v3);
}

{
  *a1 = &unk_2870B9B60;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    PRM::Camera::BufferPool::BufferPool(&v3);
  }

  PRM::Camera::BufferPool::BufferPool(&v3);
}

{
  *a1 = &unk_2870B9B60;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    PRM::Camera::BufferPool::BufferPool(&v3);
  }

  PRM::Camera::BufferPool::BufferPool(&v3);
}

IOSurfaceRef PRM::Camera::BufferPool::getBufferListSize(PRM::Camera::BufferPool *this, unint64_t *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    *a2 = (*(*v2 + 16))(v2);
    return 0;
  }

  else
  {
    BufferListSize = PRM::Camera::BufferPool::getBufferListSize(&v6);
    return PRM::Camera::BufferPool::getBufferList(BufferListSize, v5);
  }
}

IOSurfaceRef PRM::Camera::BufferPool::getBufferList(PRM::Camera::BufferPool *this, __IOSurface **a2)
{
  v3 = *(this + 2);
  if (!v3)
  {
LABEL_26:
    PRM::Camera::BufferPool::getBufferList(&v12);
    goto LABEL_27;
  }

  if (a2)
  {
    if (!(*(*v3 + 16))(v3))
    {
      goto LABEL_28;
    }

    if (!(*(**(this + 2) + 16))(*(this + 2)))
    {
      return 0;
    }

    v5 = 0;
    while (1)
    {
      (***(this + 2))(&v12);
      v6 = v12;
      if (v12 != *(this + 2))
      {
        break;
      }

      if (v12 <= 1)
      {
        if (v12 != 1)
        {
          goto LABEL_29;
        }

        IOSurface = v13;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else if (v12 == 2)
      {
        if (!pixelBuffer)
        {
          goto LABEL_23;
        }

        IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
        if (!IOSurface)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v12 != 3)
        {
          goto LABEL_31;
        }

        if (!v15)
        {
          goto LABEL_21;
        }

        IOSurface = CVDataBufferGetIOSurface();
        if (!IOSurface)
        {
          goto LABEL_25;
        }
      }

      a2[v5++] = IOSurface;
      if (v5 >= (*(**(this + 2) + 16))(*(this + 2)))
      {
        return 0;
      }
    }

    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_21:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_22:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_23:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_24:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_25:
    PRM::Camera::BufferPool::getBufferList(&v11);
    goto LABEL_26;
  }

LABEL_27:
  PRM::Camera::BufferPool::getBufferList(&v12);
LABEL_28:
  PRM::Camera::BufferPool::getBufferList(&v12);
LABEL_29:
  if (!v6)
  {
    PRM::Camera::BufferPool::getBufferList(&v11);
  }

LABEL_31:
  BufferList = PRM::Camera::BufferPool::getBufferList(&v11);
  return PRM::Camera::BufferPool::getSurface(BufferList, v10);
}

IOSurfaceRef PRM::Camera::BufferPool::getSurface(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    PRM::Camera::BufferPool::getSurface(&v6);
    goto LABEL_19;
  }

  if (*a2 != v2)
  {
LABEL_19:
    PRM::Camera::BufferPool::getSurface(&v6);
LABEL_20:
    PRM::Camera::BufferPool::getSurface(&v6);
    goto LABEL_21;
  }

  if (v2 != 3)
  {
    if (v2 != 2)
    {
      if (v2 != 1)
      {
        return 0;
      }

      result = *(a2 + 8);
      if (result)
      {
        return result;
      }

      PRM::Camera::BufferPool::getSurface(&v6);
    }

    v4 = *(a2 + 16);
    if (v4)
    {

      return CVPixelBufferGetIOSurface(v4);
    }

    goto LABEL_20;
  }

  if (!*(a2 + 24))
  {
LABEL_21:
    Surface = PRM::Camera::BufferPool::getSurface(&v6);
    return PRM::Camera::BufferPool::incrementPolarisUseCount(Surface);
  }

  return CVDataBufferGetIOSurface();
}

uint64_t PRM::Camera::BufferPool::incrementPolarisUseCount(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v5[0] = *a2;
  v5[1] = v2;
  if (PRM::Camera::BufferPool::getSurface(a1, v5))
  {

    return IOSurfaceIncrementUseCountForCategory();
  }

  else
  {
    v4 = PRM::Camera::BufferPool::incrementPolarisUseCount(v5);
    return PRM::Camera::BufferPool::decrementPolarisUseCount(v4);
  }
}

uint64_t PRM::Camera::BufferPool::decrementPolarisUseCount(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v6[0] = *a2;
  v6[1] = v2;
  if (PRM::Camera::BufferPool::getSurface(a1, v6))
  {

    return MEMORY[0x2821225B0]();
  }

  else
  {
    v3 = PRM::Camera::BufferPool::decrementPolarisUseCount(v6);
    return PRM::Camera::BufferPool::getInUse(v3, v4);
  }
}

BOOL PRM::Camera::BufferPool::getInUse(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v5[0] = *a2;
  v5[1] = v2;
  Surface = PRM::Camera::BufferPool::getSurface(a1, v5);
  if (!Surface)
  {
    PRM::Camera::BufferPool::getInUse(v5);
    JUMPOUT(0x25EA9CC70);
  }

  return IOSurfaceIsInUse(Surface) != 0;
}

void PRM::Camera::OpenLoopBufferPool::~OpenLoopBufferPool(PRM::Camera::OpenLoopBufferPool *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F8C7C50](v3, 0x10A1C40DF6760FDLL);
  }

  *(this + 3) = 0;
}

{
  PRM::Camera::OpenLoopBufferPool::~OpenLoopBufferPool(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PRM::Camera::OpenLoopBufferPool::getBufferWithResource@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
LABEL_10:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    goto LABEL_11;
  }

  if (!*(a1 + 8))
  {
LABEL_11:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    goto LABEL_13;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  v6 = *(a1 + 24);
  if (resource_view_index >= *(v6 + 4))
  {
LABEL_13:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    goto LABEL_14;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v6, resource_view_index);
  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_14:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    goto LABEL_15;
  }

  result = (***(a1 + 16))(*(a1 + 16), BufferIndexWithView);
  if (*a3 != *(a1 + 8))
  {
LABEL_15:
    BufferWithResource = PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v10);
    return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(BufferWithResource);
  }

  return result;
}

_DWORD *PRM::Camera::OpenLoopBufferPool::setBufferWithResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
LABEL_11:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_12:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_13:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_14;
  }

  if (*a3 != v4)
  {
LABEL_14:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_15;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  if ((resource_view_index & 0x80000000) != 0)
  {
LABEL_15:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_16;
  }

  v7 = resource_view_index;
  if (resource_view_index >= *(*(a1 + 24) + 16))
  {
LABEL_16:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_17;
  }

  v8 = *(a1 + 16);
  v9 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v9;
  v10 = (*(*v8 + 8))(v8, v13);
  if (v10 < (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
    return PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(a1 + 24), v7, v10);
  }

LABEL_17:
  v12 = PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
  return PRM::Camera::ClosedLoopBufferPool::initialize(v12);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::reserveBuffers(PRM::Camera::ClosedLoopBufferPool *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v9);
    goto LABEL_16;
  }

  if (!*(this + 3))
  {
LABEL_16:
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v9);
    goto LABEL_17;
  }

  if (!*(this + 2))
  {
LABEL_17:
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v9);
    goto LABEL_18;
  }

  if ((*(*v2 + 16))(v2) <= *(*(this + 3) + 16))
  {
LABEL_18:
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v9);
LABEL_19:
    v6 = PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v9);
    return PRM::Camera::ClosedLoopBufferPool::deinitialize(v6);
  }

  result = (*(**(this + 2) + 16))(*(this + 2));
  if (result)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v5 >= *(*(this + 3) + 16))
      {
        break;
      }

      (***(this + 2))(&v9);
      v7 = v9;
      v8 = v10;
      if (!PRM::Camera::BufferPool::getInUse(this, &v7))
      {
        PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(this + 3), v5, v4);
        v7 = v9;
        v8 = v10;
        PRM::Camera::BufferPool::incrementPolarisUseCount(this, &v7);
        ++v5;
      }

      ++v4;
      result = (*(**(this + 2) + 16))(*(this + 2));
    }

    while (v4 < result);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != *(*(this + 3) + 16))
  {
    goto LABEL_19;
  }

  return result;
}

void PRM::Camera::ClosedLoopBufferPool::deinitialize(PRM::Camera::ClosedLoopBufferPool *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    PRM::Camera::ClosedLoopBufferPool::deinitialize(v6);
    goto LABEL_8;
  }

  if (!*(this + 2))
  {
LABEL_8:
    v4 = PRM::Camera::ClosedLoopBufferPool::deinitialize(v6);
    PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(v4);
    return;
  }

  if (*(v2 + 4))
  {
    v3 = 0;
    do
    {
      PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v2, v3);
      (***(this + 2))(v6);
      v5[0] = v6[0];
      v5[1] = v6[1];
      PRM::Camera::BufferPool::decrementPolarisUseCount(this, v5);
      ++v3;
      v2 = *(this + 3);
    }

    while (v3 < *(v2 + 4));
  }
}

void PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(PRM::Camera::ClosedLoopBufferPool *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2)
  {
    v9 = 0;
    asprintf(&v9, "%s: Assertion failed for %s", "~ClosedLoopBufferPool", "m_bufferList");
    v5 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "~ClosedLoopBufferPool";
      v11 = 1024;
      v12 = 435;
      v13 = 2080;
      v14 = "~ClosedLoopBufferPool";
      v15 = 2080;
      v16 = "m_bufferList";
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (OSLogFlushBuffers())
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!*(this + 3))
  {
    v9 = 0;
    asprintf(&v9, "%s: Assertion failed for %s", "~ClosedLoopBufferPool", "m_viewIndexBufferIndexMap");
    v6 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "~ClosedLoopBufferPool";
      v11 = 1024;
      v12 = 436;
      v13 = 2080;
      v14 = "~ClosedLoopBufferPool";
      v15 = 2080;
      v16 = "m_viewIndexBufferIndexMap";
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (OSLogFlushBuffers())
    {
LABEL_13:
      __PSResourceManagerLogSharedInstance();
      PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool();
      v7 = *buf;
      goto LABEL_14;
    }

LABEL_15:
    usleep(0x1E8480u);
    v7 = &v9;
LABEL_14:
    v8 = *v7;
    abort_with_reason();
    __break(1u);
  }

  (*(*v2 + 32))(v2);
  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F8C7C50](v3, 0x10A1C40DF6760FDLL);
  }

  *(this + 3) = 0;
  v4 = *MEMORY[0x277D85DE8];
}

{
  PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EA9D44C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::getBufferWithResource@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
LABEL_11:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_12;
  }

  if (!*(a1 + 8))
  {
LABEL_12:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_13:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_14;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  if ((resource_view_index & 0x80000000) != 0)
  {
LABEL_14:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_15;
  }

  v6 = resource_view_index;
  v7 = *(a1 + 24);
  if (v6 >= *(v7 + 4))
  {
LABEL_15:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_16;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v7, v6);
  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_16:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_17;
  }

  result = (***(a1 + 16))(*(a1 + 16), BufferIndexWithView);
  if (*a3 != *(a1 + 8))
  {
LABEL_17:
    BufferWithResource = PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v11);
    return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(BufferWithResource);
  }

  return result;
}

_DWORD *PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_13;
  }

  if (!*(a1 + 24))
  {
LABEL_13:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_14;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_14:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_15:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_16;
  }

  if (*a3 != v4)
  {
LABEL_16:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_17;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  if ((resource_view_index & 0x80000000) != 0)
  {
LABEL_17:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_18;
  }

  v7 = resource_view_index;
  v8 = *(a1 + 24);
  if (v7 >= *(v8 + 4))
  {
LABEL_18:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_19;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v8, v7);
  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_19:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_20;
  }

  (***(a1 + 16))(v18);
  if (LODWORD(v18[0]) != *(a1 + 8))
  {
LABEL_20:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(&v16);
    goto LABEL_21;
  }

  v16 = v18[0];
  v17 = v18[1];
  PRM::Camera::BufferPool::decrementPolarisUseCount(a1, &v16);
  v10 = a3[1];
  v16 = *a3;
  v17 = v10;
  PRM::Camera::BufferPool::incrementPolarisUseCount(a1, &v16);
  v11 = *(a1 + 16);
  v12 = a3[1];
  v16 = *a3;
  v17 = v12;
  v13 = (*(*v11 + 8))(v11, &v16);
  if (v13 < (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
    return PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(a1 + 24), v7, v13);
  }

LABEL_21:
  v15 = PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(&v16);
  return PRM::Camera::HybridLoopBufferPool::initialize(v15);
}

PRM::Camera::ViewIndexBufferIndexMap *PRM::Camera::HybridLoopBufferPool::initialize(PRM::Camera::HybridLoopBufferPool *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::HybridLoopBufferPool::initialize(&v5);
    goto LABEL_9;
  }

  result = *(this + 3);
  if (!result)
  {
LABEL_9:
    PRM::Camera::HybridLoopBufferPool::initialize(&v5);
    goto LABEL_10;
  }

  if (!*(this + 2))
  {
LABEL_10:
    v4 = PRM::Camera::HybridLoopBufferPool::initialize(&v5);
    return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v4);
  }

  if (*(result + 4))
  {
    v3 = 0;
    do
    {
      PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(result, v3++, -1);
      result = *(this + 3);
    }

    while (v3 < *(result + 4));
  }

  return result;
}

uint64_t PRM::Camera::HybridLoopBufferPool::getBufferWithResource(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v8);
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
LABEL_11:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v8);
    goto LABEL_12;
  }

  if (!*(a1 + 8))
  {
LABEL_12:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v8);
    goto LABEL_13;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  v3 = *(a1 + 24);
  if (resource_view_index >= *(v3 + 4))
  {
LABEL_13:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v8);
    goto LABEL_14;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v3, resource_view_index);
  if ((BufferIndexWithView & 0x80000000) != 0)
  {
LABEL_14:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v8);
    goto LABEL_15;
  }

  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_15:
    BufferWithResource = PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v8);
    return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(BufferWithResource);
  }

  v5 = ***(a1 + 16);

  return v5();
}

_DWORD *PRM::Camera::HybridLoopBufferPool::setBufferWithResource(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
    goto LABEL_18;
  }

  if (!*(a1 + 24))
  {
LABEL_18:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
    goto LABEL_19;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_19:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
    goto LABEL_20;
  }

  if (v4 != *a3)
  {
LABEL_20:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
    goto LABEL_21;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  v7 = *(a1 + 24);
  if (resource_view_index >= *(v7 + 4))
  {
LABEL_21:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
LABEL_22:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
    goto LABEL_23;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v7, resource_view_index);
  v9 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (BufferIndexWithView != -1 && BufferIndexWithView >= v9)
  {
    goto LABEL_22;
  }

  if (BufferIndexWithView == -1)
  {
    goto LABEL_11;
  }

  if ((BufferIndexWithView & 0x80000000) == 0)
  {
    (***(a1 + 16))(&v20);
    v18 = v20;
    v19 = v21;
    PRM::Camera::BufferPool::decrementPolarisUseCount(a1, &v18);
LABEL_11:
    v10 = *(a1 + 16);
    v11 = a3[1];
    v20 = *a3;
    v21 = v11;
    v12 = (*(*v10 + 8))(v10, &v20);
    if (v12 > -2)
    {
      v13 = v12;
      v14 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (v13 == -1 || v13 < v14)
      {
        (***(a1 + 16))(&v20);
        v18 = v20;
        v19 = v21;
        PRM::Camera::BufferPool::incrementPolarisUseCount(a1, &v18);
        return PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(a1 + 24), resource_view_index, v13);
      }

      goto LABEL_24;
    }

LABEL_23:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
LABEL_24:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
  }

  v17 = PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v20);
  return PRM::Camera::HybridLoopBufferPool::deinitialize(v17);
}

void PRM::Camera::HybridLoopBufferPool::deinitialize(PRM::Camera::HybridLoopBufferPool *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    PRM::Camera::HybridLoopBufferPool::deinitialize(v6);
    goto LABEL_10;
  }

  if (!*(this + 2))
  {
LABEL_10:
    v4 = PRM::Camera::HybridLoopBufferPool::deinitialize(v6);
    PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(v4);
    return;
  }

  if (*(v2 + 4))
  {
    v3 = 0;
    do
    {
      if (PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v2, v3) != -1)
      {
        (***(this + 2))(v6);
        v5[0] = v6[0];
        v5[1] = v6[1];
        PRM::Camera::BufferPool::decrementPolarisUseCount(this, v5);
      }

      ++v3;
      v2 = *(this + 3);
    }

    while (v3 < *(v2 + 4));
  }
}

void PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(PRM::Camera::HybridLoopBufferPool *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2)
  {
    v9 = 0;
    asprintf(&v9, "%s: Assertion failed for %s", "~HybridLoopBufferPool", "m_bufferList");
    v5 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "~HybridLoopBufferPool";
      v11 = 1024;
      v12 = 596;
      v13 = 2080;
      v14 = "~HybridLoopBufferPool";
      v15 = 2080;
      v16 = "m_bufferList";
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (OSLogFlushBuffers())
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!*(this + 3))
  {
    v9 = 0;
    asprintf(&v9, "%s: Assertion failed for %s", "~HybridLoopBufferPool", "m_viewIndexBufferIndexMap");
    v6 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "~HybridLoopBufferPool";
      v11 = 1024;
      v12 = 597;
      v13 = 2080;
      v14 = "~HybridLoopBufferPool";
      v15 = 2080;
      v16 = "m_viewIndexBufferIndexMap";
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (OSLogFlushBuffers())
    {
LABEL_13:
      __PSResourceManagerLogSharedInstance();
      PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool();
      v7 = *buf;
      goto LABEL_14;
    }

LABEL_15:
    usleep(0x1E8480u);
    v7 = &v9;
LABEL_14:
    v8 = *v7;
    abort_with_reason();
    __break(1u);
  }

  (*(*v2 + 32))(v2);
  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F8C7C50](v3, 0x10A1C40DF6760FDLL);
  }

  *(this + 3) = 0;
  v4 = *MEMORY[0x277D85DE8];
}

{
  PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EA9DE70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void OUTLINED_FUNCTION_5_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return abort_with_reason();
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

BOOL OUTLINED_FUNCTION_17_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

__CFDictionary *PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(PRM::Camera::ChildSurfaceDescriptor *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2B88], *this);
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2A28], *(this + 1));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2960], *(this + 2));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2968], *(this + 3));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD29F0], *(this + 4));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD29E8], *(this + 5));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2A70], *(this + 6));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2A60], *(this + 7));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2948], *(this + 8));
  return Mutable;
}

void PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(CFMutableDictionaryRef *a1, const void *a2, int a3)
{
  valuePtr = a3;
  if (a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v7);
    PRM::Camera::PixelBufferStream::getConfigMap(v6);
  }
}

uint64_t PRM::Camera::PixelBufferStream::getConfigMap(PRM::Camera::PixelBufferStream *this)
{
  {
    operator new();
  }

  return PRM::Camera::PixelBufferStream::getConfigMap(void)::s_oysStreamNameChildSurfaceDescriptorMap;
}

uint64_t PRM::Camera::PixelBufferStream::PixelBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9D20;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!a2)
  {
    v12 = 0;
    asprintf(&v12, "%s: Assertion failed for %s", "PixelBufferStream", "pbsGroupReader");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v14 = "PixelBufferStream";
      v15 = 1024;
      v16 = 107;
      v17 = 2080;
      v18 = "PixelBufferStream";
      v19 = 2080;
      v20 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v12 = 0;
    asprintf(&v12, "%s: Assertion failed for %s", "PixelBufferStream", "options");
    v10 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v14 = "PixelBufferStream";
      v15 = 1024;
      v16 = 108;
      v17 = 2080;
      v18 = "PixelBufferStream";
      v19 = 2080;
      v20 = "options";
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v12 = 0;
    asprintf(&v12, "%s: Assertion failed for %s", "PixelBufferStream", "m_options");
    v11 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v14 = "PixelBufferStream";
      v15 = 1024;
      v16 = 113;
      v17 = 2080;
      v18 = "PixelBufferStream";
      v19 = 2080;
      v20 = "m_options";
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::PixelBufferStream::PixelBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  v5 = v4;
  ConfigMap = PRM::Camera::PixelBufferStream::getConfigMap(v4);
  PRM::Camera::update_config_map(v5, ConfigMap);
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

void PRM::Camera::update_config_map(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  if (ps_resource_stream_provider_is_superframe())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, *(a1 + 56));
    v5 = std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::find<std::string>(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a2 + 8 == v5)
    {
      std::string::basic_string[abi:ne200100]<0>(&v15, *(a1 + 56));
      v6 = *(a1 + 200);
      v7 = *(a1 + 184);
      v8 = *(a1 + 232);
      v9 = *(a1 + 216);
      v10 = *(a1 + 248);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = v6;
        v14 = v8;
        v11 = v7;
        v12 = v9;
        std::string::__init_copy_ctor_external(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
        v7 = v11;
        v9 = v12;
        v6 = v13;
        v8 = v14;
      }

      else
      {
        __p = v15;
      }

      v17 = vuzp1q_s32(v7, v6);
      v18 = vuzp1q_s32(v9, v8);
      v19 = v10;
      std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PRM::Camera::ChildSurfaceDescriptor>>(a2, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_25EA9E688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

PRM::Camera::PixelBufferStream *PRM::Camera::PixelBufferStream::PixelBufferStream(PRM::Camera::PixelBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9D20;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  if (!a2)
  {
    v12 = 0;
    asprintf(&v12, "%s: Assertion failed for %s", "PixelBufferStream", "pbsGroupWriter");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v14 = "PixelBufferStream";
      v15 = 1024;
      v16 = 119;
      v17 = 2080;
      v18 = "PixelBufferStream";
      v19 = 2080;
      v20 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v12 = 0;
    asprintf(&v12, "%s: Assertion failed for %s", "PixelBufferStream", "options");
    v10 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v14 = "PixelBufferStream";
      v15 = 1024;
      v16 = 120;
      v17 = 2080;
      v18 = "PixelBufferStream";
      v19 = 2080;
      v20 = "options";
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 88) = 0;
  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v12 = 0;
    asprintf(&v12, "%s: Assertion failed for %s", "PixelBufferStream", "m_options");
    v11 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v14 = "PixelBufferStream";
      v15 = 1024;
      v16 = 126;
      v17 = 2080;
      v18 = "PixelBufferStream";
      v19 = 2080;
      v20 = "m_options";
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::PixelBufferStream::PixelBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  v5 = v4;
  ConfigMap = PRM::Camera::PixelBufferStream::getConfigMap(v4);
  PRM::Camera::update_config_map(v5, ConfigMap);
  v7 = *MEMORY[0x277D85DE8];
  return this;
}

void PRM::Camera::PixelBufferStream::~PixelBufferStream(PRM::Camera::PixelBufferStream *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 2) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      if (*(this + 16) != 1)
      {
        goto LABEL_6;
      }

      v3 = *(this + 9);
      if (v3)
      {
        (*(*v3 + 8))(v3);
        goto LABEL_6;
      }

      v11 = 0;
      asprintf(&v11, "%s: Assertion failed for %s", "~PixelBufferStream", "m_iosurfaceMetadata");
      v8 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "~PixelBufferStream";
        v13 = 1024;
        v14 = 137;
        v15 = 2080;
        v16 = "~PixelBufferStream";
        v17 = 2080;
        v18 = "m_iosurfaceMetadata";
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      if (OSLogFlushBuffers())
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 0;
      asprintf(&v11, "%s: Assertion failed for %s", "~PixelBufferStream", "m_imageBufferPool");
      v7 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "~PixelBufferStream";
        v13 = 1024;
        v14 = 133;
        v15 = 2080;
        v16 = "~PixelBufferStream";
        v17 = 2080;
        v18 = "m_imageBufferPool";
        _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      if (OSLogFlushBuffers())
      {
LABEL_18:
        __PSResourceManagerLogSharedInstance();
        PRM::Camera::PixelBufferStream::~PixelBufferStream();
        v9 = *buf;
        goto LABEL_19;
      }
    }

    usleep(0x1E8480u);
    v9 = &v11;
LABEL_19:
    v10 = *v9;
    abort_with_reason();
    __break(1u);
  }

LABEL_6:
  ps_prm_opts_destroy(*(this + 4));
  *(this + 4) = 0;
  v4 = *(this + 7);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  *(this + 7) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  *(this + 9) = 0;
  v6 = *MEMORY[0x277D85DE8];
}

{
  PRM::Camera::PixelBufferStream::~PixelBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EA9ED40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL PRM::Camera::PixelBufferStream::isOid(void *__s)
{
  v1 = __s;
  v2 = *(__s + 23);
  if (v2 < 0)
  {
    v1 = *__s;
    v2 = __s[1];
  }

  v3 = v1 + v2;
  if (v2 >= 4)
  {
    v4 = v1;
    do
    {
      v5 = memchr(v4, 95, v2 - 3);
      if (!v5)
      {
        break;
      }

      if (*v5 == 1684631391)
      {
        return v5 != v3 && v5 - v1 != -1;
      }

      v4 = v5 + 1;
      v2 = v3 - v4;
    }

    while (v3 - v4 > 3);
  }

  v5 = v3;
  return v5 != v3 && v5 - v1 != -1;
}

uint64_t PRM::Camera::PixelBufferStream::initialize(PRM::Camera::PixelBufferStream *this)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  if (*(this + 10))
  {
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  if ((*(this + 2) - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  v3 = *(v1 + 108);
  if (v3)
  {
    if (v3 != 1)
    {
      result = PRM::Camera::PixelBufferStream::initialize(v59);
      goto LABEL_84;
    }
  }

  else
  {
    v3 = 2;
  }

  *(this + 16) = v3;
  v5 = *(v1 + 112);
  v6 = v5 > 8;
  v7 = (1 << v5) & 0x124;
  if (v6 || v7 == 0)
  {
    goto LABEL_18;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(v63, *(v1 + 56));
  ConfigMap = PRM::Camera::PixelBufferStream::getConfigMap(v9);
  v11 = std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::find<std::string>(ConfigMap, v63);
  v12 = PRM::Camera::PixelBufferStream::getConfigMap(v11) + 8;
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v12 == v11)
  {
LABEL_18:
    v14 = 0;
  }

  else
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(&v61, *(*(this + 4) + 56));
    *(this + 88) = PRM::Camera::PixelBufferStream::isOid(v13);
    if (v62 < 0)
    {
      operator delete(v61);
    }

    v14 = 1;
  }

  {
    PRM::Camera::PixelBufferStream::initialize(void)::enableSuperframeIOSurfaceNames = PLSSettingsEnableSuperframeIOSurfaceNames();
  }

  v15 = *(this + 2);
  if (v15 != 1)
  {
    if (v15 != 2)
    {
      if (v15)
      {
        result = PRM::Camera::PixelBufferStream::initialize(v59);
      }

      else
      {
        result = PRM::Camera::PixelBufferStream::initialize(v59);
      }

      goto LABEL_84;
    }

LABEL_59:
    v51 = MEMORY[0x25F8C8E10](*(this + 3));
    goto LABEL_60;
  }

  v16 = *(this + 2);
  if (!v16)
  {
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  v17 = MEMORY[0x25F8C8900](v16, 16);
  v57[1] = v57;
  v18 = 8 * *(*(this + 4) + 152);
  MEMORY[0x28223BE20](v17);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFF0);
  if (v19 >= 0x200)
  {
    v21 = 512;
  }

  else
  {
    v21 = v19;
  }

  bzero(v57 - ((v19 + 15) & 0xFFFFFFFF0), v21);
  v22 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
  v65 = *"child";
  *v66 = *"parent";
  if (v14)
  {
    v26 = PRM::Camera::PixelBufferStream::getConfigMap(v24);
    std::string::basic_string[abi:ne200100]<0>(v59, *(*(this + 4) + 56));
    v27 = std::map<std::string,PRM::Camera::ChildSurfaceDescriptor>::at(v26, v59);
    v58 = PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(v27);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (!v58)
    {
      PRM::Camera::PixelBufferStream::initialize(v59);
    }
  }

  else
  {
    v58 = 0;
  }

  v28 = *(this + 4);
  LODWORD(v29) = *(v28 + 152);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = *(v28 + 160);
      v32 = *(v31 + 8 * v30);
      if (v14)
      {
        v33 = *(v31 + 8 * v30);
        ChildSurface = IOSurfaceCreateChildSurface();
        v36 = v30 + 1;
        if (PRM::Camera::PixelBufferStream::initialize(void)::enableSuperframeIOSurfaceNames)
        {
          PRM::Camera::setIOSurfaceName(v32, *(*(this + 4) + 56), (v30 + 1), *(*(this + 4) + 152), 0, v66, v34);
          PRM::Camera::setIOSurfaceName(ChildSurface, *(*(this + 4) + 56), (v30 + 1), *(*(this + 4) + 152), 0, &v65, v37);
        }

        CVPixelBufferCreateWithIOSurface(v22, ChildSurface, Mutable, &v20[8 * v30]);
        CFRelease(ChildSurface);
      }

      else
      {
        v36 = v30 + 1;
        PRM::Camera::setIOSurfaceName(*(v31 + 8 * v30), *(v28 + 56), (v30 + 1), v29, 0, 0, v25);
        CVPixelBufferCreateWithIOSurface(v22, v32, Mutable, &v20[8 * v30]);
      }

      v28 = *(this + 4);
      v29 = *(v28 + 152);
      v30 = v36;
    }

    while (v36 < v29);
  }

  CFRelease(Mutable);
  if (v14)
  {
    CFRelease(v58);
  }

  v38 = *(this + 2);
  v39 = *(*(this + 4) + 152);
  ps_buffer_add_cvpixelbuffer();
  MEMORY[0x25F8C8900](*(this + 2), 4);
  v40 = *(this + 16);
  if (v40 == 1)
  {
    v42 = *(this + 4);
    if (*(v42 + 152))
    {
      v43 = 0;
      do
      {
        v44 = *(*(v42 + 176) + 8 * v43);
        if (!v44)
        {
          PRM::Camera::PixelBufferStream::initialize(v59);
        }

        CFRetain(v44);
        if (v14 && (PRM::Camera::PixelBufferStream::initialize(void)::enableSuperframeIOSurfaceNames & 1) == 0)
        {
          ++v43;
        }

        else
        {
          v46 = *(this + 4);
          v47 = *(*(v46 + 176) + 8 * v43++);
          PRM::Camera::setIOSurfaceName(v47, *(v46 + 56), v43, *(v46 + 152), 1, 0, v45);
        }

        v42 = *(this + 4);
      }

      while (v43 < *(v42 + 152));
    }

    v48 = *(this + 2);
    v49 = *(v42 + 176);
    ps_buffer_add_iosurface();
    v41 = 4;
  }

  else
  {
    if (v40 != 2)
    {
      if (v40)
      {
        result = PRM::Camera::PixelBufferStream::initialize(v59);
      }

      else
      {
        result = PRM::Camera::PixelBufferStream::initialize(v59);
      }

      goto LABEL_84;
    }

    v41 = 90112;
  }

  MEMORY[0x25F8C8900](*(this + 2), v41);
  MEMORY[0x25F8C8C70](*(this + 2));
  v50 = *(this + 2);
  if (v50 == 2)
  {
    goto LABEL_59;
  }

  if (v50 != 1)
  {
    goto LABEL_82;
  }

  v51 = MEMORY[0x25F8C8E90](*(this + 2));
LABEL_60:
  if (!v51)
  {
LABEL_82:
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  *(this + 6) = *v51;
  if (!v51[1])
  {
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  if (!v51[2])
  {
    PRM::Camera::PixelBufferStream::initialize(v59);
  }

  v52 = *(this + 4);
  v53 = *(v52 + 112);
  if (v53 <= 8)
  {
    v54 = 1 << v53;
    if ((v54 & 0x49) == 0)
    {
      if ((v54 & 0x92) != 0)
      {
        v55.i64[0] = *(v52 + 68);
        v55.i64[1] = *(v52 + 144);
        *(this + 10) = vaddvq_s32(v55);
        operator new();
      }

      v56.i64[0] = *(v52 + 68);
      v56.i64[1] = *(v52 + 144);
      *(this + 10) = vaddvq_s32(v56);
      operator new();
    }

    *(this + 10) = *(v52 + 68) + *(v52 + 72);
    operator new();
  }

  result = PRM::Camera::PixelBufferStream::initialize(v59);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t std::map<std::string,PRM::Camera::ChildSurfaceDescriptor>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void PRM::Camera::setIOSurfaceName(PRM::Camera *this, __IOSurface *a2, const char *a3, int a4, int a5, const char *a6, char *a7)
{
  v10 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v13 = getprogname();
  v14 = "frame";
  if (a5)
  {
    v14 = "metadata";
  }

  v15 = "";
  if (a6)
  {
    v15 = a6;
  }

  snprintf(__str, 0xFFuLL, "%s/Polaris ; %s/%s/%s ; %d/%d", v13, v14, a2, v15, v10, a4);
  v16 = CFStringCreateWithCString(0, __str, 0x8000100u);
  if (v16)
  {
    v17 = v16;
    IOSurfaceSetValue(this, *MEMORY[0x277CD2A50], v16);
    CFRelease(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t PRM::Camera::PixelBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a1 + 48))
  {
    PRM::Camera::PixelBufferStream::read(v21);
    goto LABEL_23;
  }

  if (!*(a1 + 56))
  {
LABEL_23:
    PRM::Camera::PixelBufferStream::read(v21);
    goto LABEL_24;
  }

  v8 = *(a1 + 64);
  if (v8 == 2)
  {
    if (*(a1 + 80))
    {
      goto LABEL_6;
    }

LABEL_17:
    PRM::Camera::PixelBufferStream::read(v21);
LABEL_18:
    (*(**(a1 + 72) + 32))(v20);
    if (LODWORD(v20[0]) == 1)
    {
      if (v20[1])
      {
        return MEMORY[0x25F8C9450](a2, a4, v4);
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v8 != 1 || !*(a1 + 72))
  {
    goto LABEL_17;
  }

LABEL_6:
  if (!a2)
  {
LABEL_24:
    PRM::Camera::PixelBufferStream::read(v21);
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    PRM::Camera::PixelBufferStream::read(v21);
    goto LABEL_26;
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
LABEL_26:
    PRM::Camera::PixelBufferStream::read(v21);
LABEL_27:
    PRM::Camera::PixelBufferStream::read(v20);
    goto LABEL_28;
  }

  ps_buffer_get_resource_view_index();
  v9 = *(a1 + 48);
  buffer = ps_buffer_serial_data_get_buffer();
  v11 = *(buffer + 8);
  MEMORY[0x25F8C9570](a2, a4, *buffer);
  result = MEMORY[0x25F8C94C0](a2, a4, v11);
  if (v11 != 1)
  {
    return result;
  }

  (*(**(a1 + 56) + 32))(v21);
  if (LODWORD(v21[0]) != 2)
  {
    goto LABEL_27;
  }

  v4 = v22;
  if (!v22)
  {
LABEL_28:
    PRM::Camera::PixelBufferStream::read(v20);
LABEL_29:
    PRM::Camera::PixelBufferStream::read(&v19);
LABEL_30:
    PRM::Camera::PixelBufferStream::read(v20);
LABEL_31:
    PRM::Camera::PixelBufferStream::read(&v19);
    goto LABEL_32;
  }

  v13 = *(a1 + 64);
  if (v13 == 1)
  {
    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v14 = *(a1 + 80);
    v15 = ps_buffer_serial_data_get_buffer();
    if (v15)
    {
      v16 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v15 + 8), *v15, *MEMORY[0x277CBED00]);
      return MEMORY[0x25F8C9440](a2, a4, v4, v16);
    }

    goto LABEL_30;
  }

LABEL_32:
  v17 = v20;
  if (!v13)
  {
    v17 = PRM::Camera::PixelBufferStream::read(v20);
  }

  v18 = PRM::Camera::PixelBufferStream::read(v17);
  return PRM::Camera::PixelBufferStream::write(v18);
}

void PRM::Camera::PixelBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40))
  {
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_31;
  }

  if (!*(a1 + 48))
  {
LABEL_31:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_32;
  }

  if (!*(a1 + 56))
  {
LABEL_32:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_33;
  }

  v7 = *(a1 + 64);
  if (v7 == 2)
  {
    if (*(a1 + 80))
    {
      goto LABEL_7;
    }

LABEL_19:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_20;
  }

  if (v7 != 1 || !*(a1 + 72))
  {
    goto LABEL_19;
  }

LABEL_7:
  if (!a2)
  {
LABEL_33:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_34:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_35;
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
LABEL_35:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_36;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_36:
    PRM::Camera::PixelBufferStream::write(&v27);
    goto LABEL_37;
  }

  v8 = *(a1 + 48);
  buffer = ps_buffer_serial_data_get_buffer();
  v9 = MEMORY[0x25F8C9240](a2, 0);
  *buffer = ps_util_mct_to_mat(v9);
  if (!MEMORY[0x25F8C9210](a2, 0))
  {
LABEL_37:
    PRM::Camera::PixelBufferStream::write(&v27);
LABEL_38:
    PRM::Camera::PixelBufferStream::write(&v27);
LABEL_39:
    PRM::Camera::PixelBufferStream::write(&v27);
LABEL_40:
    PRM::Camera::PixelBufferStream::write(&v27);
LABEL_41:
    PRM::Camera::PixelBufferStream::write(&v27);
  }

  cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer();
  if (!cvpixelbuffer)
  {
LABEL_20:
    *(buffer + 8) = 0;
    goto LABEL_26;
  }

  v11 = cvpixelbuffer;
  *(buffer + 8) = MEMORY[0x25F8C9260](a2, 0);
  v12 = *(a1 + 56);
  v27 = 2;
  *&v28[4] = 0;
  *&v28[12] = v11;
  v29 = 0;
  (*(*v12 + 40))(v12, a3, &v27);
  v13 = *(a1 + 64);
  if (v13 == 2)
  {
    if (!MEMORY[0x25F8C91C0](a2, 0))
    {
      cfdata_metadata = ps_resource_pixelbuffer_get_cfdata_metadata();
      v17 = *(a1 + 80);
      v18 = ps_buffer_serial_data_get_buffer();
      if (v18)
      {
        v19 = v18;
        if (cfdata_metadata)
        {
          v31.length = CFDataGetLength(cfdata_metadata);
          *v19 = v31.length;
          v31.location = 0;
          CFDataGetBytes(cfdata_metadata, v31, v19 + 8);
        }

        else
        {
          *v18 = 0;
        }

        goto LABEL_26;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v13 != 1)
  {
    v25 = PRM::Camera::PixelBufferStream::write(&v27);
    PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(v25, v26);
    return;
  }

  if (MEMORY[0x25F8C91C0](a2, 0) != 1)
  {
    goto LABEL_39;
  }

  iosurface_metadata = ps_resource_pixelbuffer_get_iosurface_metadata();
  if (!iosurface_metadata)
  {
    goto LABEL_41;
  }

  v15 = *(a1 + 72);
  v27 = 1;
  *&v28[12] = 0;
  v29 = 0;
  *&v28[4] = iosurface_metadata;
  (*(*v15 + 40))(v15, a3, &v27);
LABEL_26:
  if (*(a1 + 88) == 1)
  {
    v20 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      key = ps_resource_get_key();
      v22 = MEMORY[0x25F8C9180](a2, 0);
      v23 = *buffer;
      v27 = 136315650;
      *v28 = key;
      *&v28[8] = 2048;
      *&v28[10] = v22;
      *&v28[18] = 2048;
      v29 = v23;
      _os_log_unreliable_impl();
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

IOSurfaceRef PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(PRM::Camera::PixelBufferStream *this, __IOSurface **a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(&v6);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    BackingIOSurfaceList = PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(&v6);
    return PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(BackingIOSurfaceList, v5);
  }

  return PRM::Camera::BufferPool::getBufferList(v2, a2);
}

IOSurfaceRef PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(PRM::Camera::PixelBufferStream *this, unint64_t *a2)
{
  v4 = *(this + 7);
  if (v4)
  {

    return PRM::Camera::BufferPool::getBufferListSize(v4, a2);
  }

  else
  {
    v7[1] = v2;
    v7[2] = v3;
    BackingIOSurfaceListSize = PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(v7);
    return PRM::Camera::PixelBufferStream::inUse(BackingIOSurfaceListSize);
  }
}

uint64_t PRM::Camera::PixelBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    PRM::Camera::PixelBufferStream::inUse(v8);
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
LABEL_8:
    PRM::Camera::PixelBufferStream::inUse(v8);
    goto LABEL_9;
  }

  (*(*v2 + 32))(v8);
  if (LODWORD(v8[0]) != 2)
  {
LABEL_9:
    PRM::Camera::PixelBufferStream::inUse(&v7);
    goto LABEL_10;
  }

  if (!pixelBuffer)
  {
LABEL_10:
    PRM::Camera::PixelBufferStream::inUse(&v7);
    goto LABEL_11;
  }

  if (CVPixelBufferGetIOSurface(pixelBuffer))
  {
    return IOSurfaceIsInUseForCategory() != 0;
  }

LABEL_11:
  v4 = PRM::Camera::PixelBufferStream::inUse(&v7);
  return PRM::Camera::DataBufferStream::DataBufferStream(v4, v5, v6);
}

PRM::Camera::DataBufferStream *PRM::Camera::DataBufferStream::DataBufferStream(PRM::Camera::DataBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9D70;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (!a2)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "DataBufferStream", "pbsGroupWriter");
    v7 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "DataBufferStream";
      v13 = 1024;
      v14 = 626;
      v15 = 2080;
      v16 = "DataBufferStream";
      v17 = 2080;
      v18 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "DataBufferStream", "options");
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "DataBufferStream";
      v13 = 1024;
      v14 = 627;
      v15 = 2080;
      v16 = "DataBufferStream";
      v17 = 2080;
      v18 = "options";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "DataBufferStream", "m_options");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "DataBufferStream";
      v13 = 1024;
      v14 = 632;
      v15 = 2080;
      v16 = "DataBufferStream";
      v17 = 2080;
      v18 = "m_options";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::DataBufferStream::DataBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t PRM::Camera::DataBufferStream::DataBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9D70;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (!a2)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "DataBufferStream", "pbsGroupReader");
    v7 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "DataBufferStream";
      v13 = 1024;
      v14 = 637;
      v15 = 2080;
      v16 = "DataBufferStream";
      v17 = 2080;
      v18 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "DataBufferStream", "options");
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "DataBufferStream";
      v13 = 1024;
      v14 = 638;
      v15 = 2080;
      v16 = "DataBufferStream";
      v17 = 2080;
      v18 = "options";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "DataBufferStream", "m_options");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "DataBufferStream";
      v13 = 1024;
      v14 = 643;
      v15 = 2080;
      v16 = "DataBufferStream";
      v17 = 2080;
      v18 = "m_options";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::DataBufferStream::DataBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void PRM::Camera::DataBufferStream::~DataBufferStream(PRM::Camera::DataBufferStream *this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 2) == 1)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      if (*(this + 18) != 1)
      {
        goto LABEL_6;
      }

      v3 = *(this + 10);
      if (v3)
      {
        (*(*v3 + 8))(v3);
        goto LABEL_6;
      }

      v11 = 0;
      asprintf(&v11, "%s: Assertion failed for %s", "~DataBufferStream", "m_iosurfaceMetadata");
      v8 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "~DataBufferStream";
        v13 = 1024;
        v14 = 653;
        v15 = 2080;
        v16 = "~DataBufferStream";
        v17 = 2080;
        v18 = "m_iosurfaceMetadata";
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      if (OSLogFlushBuffers())
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = 0;
      asprintf(&v11, "%s: Assertion failed for %s", "~DataBufferStream", "m_imageBufferPool");
      v7 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "~DataBufferStream";
        v13 = 1024;
        v14 = 649;
        v15 = 2080;
        v16 = "~DataBufferStream";
        v17 = 2080;
        v18 = "m_imageBufferPool";
        _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      if (OSLogFlushBuffers())
      {
LABEL_18:
        __PSResourceManagerLogSharedInstance();
        PRM::Camera::DataBufferStream::~DataBufferStream();
        v9 = *buf;
        goto LABEL_19;
      }
    }

    usleep(0x1E8480u);
    v9 = &v11;
LABEL_19:
    v10 = *v9;
    abort_with_reason();
    __break(1u);
  }

LABEL_6:
  ps_prm_opts_destroy(*(this + 4));
  *(this + 4) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  *(this + 8) = 0;
  v5 = *(this + 10);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  *(this + 10) = 0;
  v6 = *MEMORY[0x277D85DE8];
}

{
  PRM::Camera::DataBufferStream::~DataBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA07A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRM::Camera::DataBufferStream::initialize(PRM::Camera::DataBufferStream *this)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  if (*(this + 10))
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  v3 = *(this + 2);
  if ((v3 - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    if (v4 != 1)
    {
      result = PRM::Camera::DataBufferStream::initialize(v45);
      goto LABEL_56;
    }
  }

  else
  {
    v4 = 2;
  }

  *(this + 18) = v4;
  if (v3 != 1)
  {
    goto LABEL_29;
  }

  v6 = *(this + 2);
  if (!v6)
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  MEMORY[0x25F8C8900](v6, 8);
  v7 = MEMORY[0x25F8C8900](*(this + 2), 1);
  v44[1] = v44;
  v8 = 8 * *(*(this + 4) + 152);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFF0);
  if (v9 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = v9;
  }

  bzero(v44 - ((v9 + 15) & 0xFFFFFFFF0), v11);
  v13 = *(this + 4);
  LODWORD(v14) = *(v13 + 152);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *MEMORY[0x277CBECE8];
    v18 = *MEMORY[0x277CC4B50];
    v19 = *MEMORY[0x277CBED28];
    v20 = MEMORY[0x277CBF138];
    v21 = MEMORY[0x277CBF150];
    do
    {
      v22 = *(*(v13 + 160) + v15);
      if (!v22)
      {
        PRM::Camera::DataBufferStream::initialize(v45);
      }

      PRM::Camera::setIOSurfaceName(v22, *(v13 + 56), ++v16, v14, 0, 0, v12);
      Mutable = CFDictionaryCreateMutable(v17, 0, v20, v21);
      CFDictionarySetValue(Mutable, v18, v19);
      v24 = *(*(*(this + 4) + 160) + v15);
      CVDataBufferCreateWithIOSurface();
      if (!*&v10[v15])
      {
        PRM::Camera::DataBufferStream::initialize(v45);
      }

      CFRelease(Mutable);
      v13 = *(this + 4);
      v14 = *(v13 + 152);
      v15 += 8;
    }

    while (v16 < v14);
  }

  v25 = *(this + 2);
  ps_buffer_add_cvdatabuffer();
  MEMORY[0x25F8C8900](*(this + 2), 4);
  v26 = *(this + 18);
  if (v26 == 1)
  {
    v28 = *(this + 4);
    if (*(v28 + 152))
    {
      v29 = 0;
      do
      {
        v30 = *(*(v28 + 176) + 8 * v29);
        if (!v30)
        {
          PRM::Camera::DataBufferStream::initialize(v45);
        }

        CFRetain(v30);
        v31 = *(this + 4);
        v32 = *(*(v31 + 176) + 8 * v29++);
        PRM::Camera::setIOSurfaceName(v32, *(v31 + 56), v29, *(v31 + 152), 1, 0, v33);
        v28 = *(this + 4);
      }

      while (v29 < *(v28 + 152));
    }

    v34 = *(this + 2);
    v35 = *(v28 + 176);
    ps_buffer_add_iosurface();
    v27 = 4;
  }

  else
  {
    if (v26 != 2)
    {
      if (v26)
      {
        result = PRM::Camera::DataBufferStream::initialize(v45);
      }

      else
      {
        result = PRM::Camera::DataBufferStream::initialize(v45);
      }

      goto LABEL_56;
    }

    v27 = 90112;
  }

  MEMORY[0x25F8C8900](*(this + 2), v27);
  MEMORY[0x25F8C8C70](*(this + 2));
  v36 = *(this + 2);
  if (v36 == 2)
  {
LABEL_29:
    v37 = MEMORY[0x25F8C8E10](*(this + 3));
  }

  else
  {
    if (v36 != 1)
    {
      goto LABEL_54;
    }

    v37 = MEMORY[0x25F8C8E90](*(this + 2));
  }

  if (!v37)
  {
LABEL_54:
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  v38 = *v37;
  *(this + 6) = *v37;
  if (!v38)
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  v39 = v37[1];
  *(this + 7) = v39;
  if (!v39)
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  if (!v37[2])
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  if (!v37[3])
  {
    PRM::Camera::DataBufferStream::initialize(v45);
  }

  v40 = *(this + 4);
  v41 = *(v40 + 112);
  if (v41 <= 7)
  {
    v42 = 1 << v41;
    if ((v42 & 0x49) != 0)
    {
      *(this + 10) = *(v40 + 68) + *(v40 + 72);
      operator new();
    }

    if ((v42 & 0x92) != 0)
    {
      v43.i64[0] = *(v40 + 68);
      v43.i64[1] = *(v40 + 144);
      *(this + 10) = vaddvq_s32(v43);
      operator new();
    }
  }

  result = PRM::Camera::DataBufferStream::initialize(v45);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t PRM::Camera::DataBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a1 + 48))
  {
    PRM::Camera::DataBufferStream::read(v24);
    goto LABEL_25;
  }

  if (!*(a1 + 64))
  {
LABEL_25:
    PRM::Camera::DataBufferStream::read(v24);
    goto LABEL_26;
  }

  v8 = *(a1 + 72);
  if (v8 == 2)
  {
    if (*(a1 + 88))
    {
      goto LABEL_6;
    }

LABEL_19:
    PRM::Camera::DataBufferStream::read(v24);
LABEL_20:
    (*(**(a1 + 80) + 32))(v23);
    if (LODWORD(v23[0]) == 1)
    {
      if (v23[1])
      {
        return MEMORY[0x25F8C9420](a2, a4, v4);
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v8 != 1 || !*(a1 + 80))
  {
    goto LABEL_19;
  }

LABEL_6:
  if (!a2)
  {
LABEL_26:
    PRM::Camera::DataBufferStream::read(v24);
    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_27:
    PRM::Camera::DataBufferStream::read(v24);
    goto LABEL_28;
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
LABEL_28:
    PRM::Camera::DataBufferStream::read(v24);
    goto LABEL_29;
  }

  ps_buffer_get_resource_view_index();
  v9 = *(a1 + 48);
  buffer = ps_buffer_serial_data_get_buffer();
  v11 = *(a1 + 56);
  v12 = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
LABEL_29:
    PRM::Camera::DataBufferStream::read(v24);
    goto LABEL_30;
  }

  if (!v12)
  {
LABEL_30:
    PRM::Camera::DataBufferStream::read(v24);
LABEL_31:
    PRM::Camera::DataBufferStream::read(v23);
    goto LABEL_32;
  }

  v13 = *buffer;
  v14 = *v12;
  MEMORY[0x25F8C9570](a2, a4, v13);
  result = MEMORY[0x25F8C94C0](a2, a4, v14);
  if (v14 != 1)
  {
    return result;
  }

  (*(**(a1 + 64) + 32))(v24);
  if (LODWORD(v24[0]) != 3)
  {
    goto LABEL_31;
  }

  v4 = v25;
  if (!v25)
  {
LABEL_32:
    PRM::Camera::DataBufferStream::read(v23);
LABEL_33:
    PRM::Camera::DataBufferStream::read(&v22);
LABEL_34:
    PRM::Camera::DataBufferStream::read(v23);
LABEL_35:
    PRM::Camera::DataBufferStream::read(&v22);
    goto LABEL_36;
  }

  v16 = *(a1 + 72);
  if (v16 == 1)
  {
    goto LABEL_20;
  }

  if (v16 == 2)
  {
    v17 = *(a1 + 88);
    v18 = ps_buffer_serial_data_get_buffer();
    if (v18)
    {
      v19 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v18 + 8), *v18, *MEMORY[0x277CBED00]);
      return MEMORY[0x25F8C9410](a2, a4, v4, v19);
    }

    goto LABEL_34;
  }

LABEL_36:
  v20 = v23;
  if (!v16)
  {
    v20 = PRM::Camera::DataBufferStream::read(v23);
  }

  v21 = PRM::Camera::DataBufferStream::read(v20);
  return PRM::Camera::DataBufferStream::write(v21);
}

void PRM::Camera::DataBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_29;
  }

  if (!*(a1 + 48))
  {
LABEL_29:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_30;
  }

  if (!*(a1 + 64))
  {
LABEL_30:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_31;
  }

  v7 = *(a1 + 72);
  if (v7 == 2)
  {
    if (*(a1 + 88))
    {
      goto LABEL_7;
    }

LABEL_20:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_21;
  }

  if (v7 != 1 || !*(a1 + 80))
  {
    goto LABEL_20;
  }

LABEL_7:
  if (!a2)
  {
LABEL_31:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_32:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_33;
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
LABEL_33:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_34;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_34:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_35;
  }

  v8 = *(a1 + 48);
  buffer = ps_buffer_serial_data_get_buffer();
  v10 = *(a1 + 56);
  v11 = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
LABEL_35:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_36;
  }

  v3 = v11;
  if (!v11)
  {
LABEL_36:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_37;
  }

  v12 = MEMORY[0x25F8C9240](a2, 0);
  *buffer = ps_util_mct_to_mat(v12);
  if (!MEMORY[0x25F8C9160](a2, 0))
  {
LABEL_37:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_38;
  }

  databuffer = ps_resource_databuffer_get_databuffer();
  if (!databuffer)
  {
LABEL_21:
    *v3 = 0;
    return;
  }

  v14 = databuffer;
  *v3 = MEMORY[0x25F8C9260](a2, 0);
  v15 = *(a1 + 64);
  LODWORD(v25) = 3;
  v26 = 0;
  v27 = 0;
  v28 = v14;
  (*(*v15 + 40))(v15, a3, &v25);
  v16 = *(a1 + 72);
  if (v16 != 2)
  {
    if (v16 != 1)
    {
LABEL_41:
      v23 = PRM::Camera::DataBufferStream::write(&v25);
      PRM::Camera::DataBufferStream::getBackingIOSurfaceList(v23, v24);
      return;
    }

    if (MEMORY[0x25F8C91C0](a2, 0) == 1)
    {
      iosurface_metadata = ps_resource_databuffer_get_iosurface_metadata();
      v18 = *(a1 + 80);
      LODWORD(v25) = 1;
      v27 = 0;
      v28 = 0;
      v26 = iosurface_metadata;
      (*(*v18 + 40))(v18, a3, &v25);
      return;
    }

    goto LABEL_39;
  }

  if (MEMORY[0x25F8C91C0](a2, 0))
  {
LABEL_38:
    PRM::Camera::DataBufferStream::write(&v25);
LABEL_39:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_40;
  }

  cfdata_metadata = ps_resource_databuffer_get_cfdata_metadata();
  v20 = *(a1 + 88);
  v21 = ps_buffer_serial_data_get_buffer();
  if (!v21)
  {
LABEL_40:
    PRM::Camera::DataBufferStream::write(&v25);
    goto LABEL_41;
  }

  v22 = v21;
  if (cfdata_metadata)
  {
    v29.length = CFDataGetLength(cfdata_metadata);
    *v22 = v29.length;
    v29.location = 0;
    CFDataGetBytes(cfdata_metadata, v29, v22 + 8);
  }

  else
  {
    *v21 = 0;
  }
}

IOSurfaceRef PRM::Camera::DataBufferStream::getBackingIOSurfaceList(PRM::Camera::DataBufferStream *this, __IOSurface **a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    PRM::Camera::DataBufferStream::getBackingIOSurfaceList(&v6);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    BackingIOSurfaceList = PRM::Camera::DataBufferStream::getBackingIOSurfaceList(&v6);
    return PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(BackingIOSurfaceList, v5);
  }

  return PRM::Camera::BufferPool::getBufferList(v2, a2);
}

IOSurfaceRef PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(PRM::Camera::DataBufferStream *this, unint64_t *a2)
{
  v4 = *(this + 8);
  if (v4)
  {

    return PRM::Camera::BufferPool::getBufferListSize(v4, a2);
  }

  else
  {
    v7[1] = v2;
    v7[2] = v3;
    BackingIOSurfaceListSize = PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(v7);
    return PRM::Camera::DataBufferStream::inUse(BackingIOSurfaceListSize);
  }
}

uint64_t PRM::Camera::DataBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    PRM::Camera::DataBufferStream::inUse(v6);
    goto LABEL_8;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
LABEL_8:
    PRM::Camera::DataBufferStream::inUse(v6);
    goto LABEL_9;
  }

  (*(*v2 + 32))(v6);
  if (LODWORD(v6[0]) != 3)
  {
LABEL_9:
    PRM::Camera::DataBufferStream::inUse(&v5);
    goto LABEL_10;
  }

  if (!v6[3])
  {
LABEL_10:
    PRM::Camera::DataBufferStream::inUse(&v5);
    goto LABEL_11;
  }

  if (CVDataBufferGetIOSurface())
  {
    return IOSurfaceIsInUseForCategory() != 0;
  }

LABEL_11:
  v4 = PRM::Camera::DataBufferStream::inUse(&v5);
  return PRM::Camera::JasperBufferStream::JasperBufferStream(v4);
}

uint64_t PRM::Camera::JasperBufferStream::JasperBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9DC0;
  *(a1 + 40) = 0;
  *(a1 + 160) = 0;
  if (!a2)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "JasperBufferStream", "pbsGroupReader");
    v7 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "JasperBufferStream";
      v13 = 1024;
      v14 = 1005;
      v15 = 2080;
      v16 = "JasperBufferStream";
      v17 = 2080;
      v18 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "JasperBufferStream", "options");
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "JasperBufferStream";
      v13 = 1024;
      v14 = 1006;
      v15 = 2080;
      v16 = "JasperBufferStream";
      v17 = 2080;
      v18 = "options";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "JasperBufferStream", "m_options");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "JasperBufferStream";
      v13 = 1024;
      v14 = 1011;
      v15 = 2080;
      v16 = "JasperBufferStream";
      v17 = 2080;
      v18 = "m_options";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::JasperBufferStream::JasperBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

PRM::Camera::JasperBufferStream *PRM::Camera::JasperBufferStream::JasperBufferStream(PRM::Camera::JasperBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9DC0;
  *(this + 10) = 0;
  *(this + 40) = 0;
  if (!a2)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "JasperBufferStream", "pbsGroupWriter");
    v7 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "JasperBufferStream";
      v13 = 1024;
      v14 = 1024;
      v15 = 2080;
      v16 = "JasperBufferStream";
      v17 = 2080;
      v18 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "JasperBufferStream", "options");
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "JasperBufferStream";
      v13 = 1024;
      v14 = 1025;
      v15 = 2080;
      v16 = "JasperBufferStream";
      v17 = 2080;
      v18 = "options";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "JasperBufferStream", "m_options");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "JasperBufferStream";
      v13 = 1024;
      v14 = 1030;
      v15 = 2080;
      v16 = "JasperBufferStream";
      v17 = 2080;
      v18 = "m_options";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::JasperBufferStream::JasperBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  v5 = *MEMORY[0x277D85DE8];
  return this;
}

void PRM::Camera::JasperBufferStream::~JasperBufferStream(PRM::Camera::JasperBufferStream *this)
{
  v2 = 0;
  v21 = *MEMORY[0x277D85DE8];
  do
  {
    if (*(this + 2) != 1)
    {
      goto LABEL_7;
    }

    v3 = *(this + v2 + 128);
    if (!v3)
    {
      v13 = 0;
      asprintf(&v13, "%s: Assertion failed for %s", "~JasperBufferStream", "m_imageBufferPool[i]");
      v9 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "~JasperBufferStream";
        v15 = 1024;
        v16 = 1045;
        v17 = 2080;
        v18 = "~JasperBufferStream";
        v19 = 2080;
        v20 = "m_imageBufferPool[i]";
        _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      if (!OSLogFlushBuffers())
      {
        goto LABEL_22;
      }

LABEL_20:
      __PSResourceManagerLogSharedInstance();
      PRM::Camera::JasperBufferStream::~JasperBufferStream();
      v11 = *buf;
LABEL_21:
      v12 = *v11;
      abort_with_reason();
      __break(1u);
    }

    (*(*v3 + 8))(v3);
    if (*(this + 40) != 1)
    {
      goto LABEL_7;
    }

    v4 = *(this + v2 + 168);
    if (!v4)
    {
      v13 = 0;
      asprintf(&v13, "%s: Assertion failed for %s", "~JasperBufferStream", "m_iosurfaceMetadata[i]");
      v10 = __PSResourceManagerLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        *&buf[4] = "~JasperBufferStream";
        v15 = 1024;
        v16 = 1049;
        v17 = 2080;
        v18 = "~JasperBufferStream";
        v19 = 2080;
        v20 = "m_iosurfaceMetadata[i]";
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      if (OSLogFlushBuffers())
      {
        goto LABEL_20;
      }

LABEL_22:
      usleep(0x1E8480u);
      v11 = &v13;
      goto LABEL_21;
    }

    (*(*v4 + 8))(v4);
LABEL_7:
    v5 = this + v2;
    v6 = *(this + v2 + 128);
    if (v6)
    {
      (*(*v6 + 24))(v6);
      *(v5 + 16) = 0;
    }

    v7 = *(v5 + 21);
    if (v7)
    {
      (*(*v7 + 24))(v7);
      *(v5 + 21) = 0;
    }

    v2 += 8;
  }

  while (v2 != 32);
  ps_prm_opts_destroy(*(this + 4));
  *(this + 4) = 0;
  v8 = *MEMORY[0x277D85DE8];
}

{
  PRM::Camera::JasperBufferStream::~JasperBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA1DC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t PRM::Camera::JasperBufferStream::initialize(PRM::Camera::JasperBufferStream *this)
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  if (*(this + 10))
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  v3 = *(this + 2);
  if ((v3 - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    if (v4 != 1)
    {
      result = PRM::Camera::JasperBufferStream::initialize(v53);
      goto LABEL_71;
    }
  }

  else
  {
    v4 = 2;
  }

  *(this + 40) = v4;
  if (v3 != 1)
  {
    goto LABEL_36;
  }

  v6 = *(this + 2);
  if (!v6)
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  MEMORY[0x25F8C8900](v6, 8);
  MEMORY[0x25F8C8900](*(this + 2), 1);
  v7 = 4;
  do
  {
    MEMORY[0x25F8C8900](*(this + 2), 8);
    v8 = MEMORY[0x25F8C8900](*(this + 2), 1);
    --v7;
  }

  while (v7);
  v51 = &v51;
  v9 = 8 * *(*(this + 4) + 152);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFF0);
  if (v10 >= 0x200)
  {
    v12 = 512;
  }

  else
  {
    v12 = v10;
  }

  bzero(&v51 - ((v10 + 15) & 0xFFFFFFFF0), v12);
  v13 = *(this + 4);
  if (*(v13 + 152))
  {
    v14 = 0;
    v15 = 0;
    v16 = *MEMORY[0x277CBECE8];
    v17 = *MEMORY[0x277CC4B50];
    v18 = *MEMORY[0x277CBED28];
    v19 = MEMORY[0x277CBF138];
    v20 = MEMORY[0x277CBF150];
    do
    {
      if (!*(*(v13 + 160) + v14))
      {
        PRM::Camera::JasperBufferStream::initialize(v53);
      }

      Mutable = CFDictionaryCreateMutable(v16, 0, v19, v20);
      CFDictionarySetValue(Mutable, v17, v18);
      v22 = *(*(*(this + 4) + 160) + v14);
      CVDataBufferCreateWithIOSurface();
      if (!*&v11[v14])
      {
        PRM::Camera::JasperBufferStream::initialize(v53);
      }

      CFRelease(Mutable);
      PRM::Camera::setIOSurfaceName(*(*(*(this + 4) + 160) + v14), *(*(this + 4) + 56), ++v15, *(*(this + 4) + 152), 0, 0, v23);
      v13 = *(this + 4);
      v14 += 8;
    }

    while (v15 < *(v13 + 152));
  }

  v24 = *(this + 2);
  ps_buffer_add_cvdatabuffer();
  v25 = 4;
  do
  {
    MEMORY[0x25F8C8900](*(this + 2), 4);
    --v25;
  }

  while (v25);
  v26 = *(this + 40);
  if (v26 == 1)
  {
    v28 = *(this + 4);
    if (*(v28 + 152))
    {
      v29 = 0;
      do
      {
        v30 = *(*(v28 + 176) + 8 * v29);
        if (!v30)
        {
          PRM::Camera::JasperBufferStream::initialize(v53);
        }

        CFRetain(v30);
        v31 = *(this + 4);
        v32 = *(*(v31 + 176) + 8 * v29++);
        PRM::Camera::setIOSurfaceName(v32, *(v31 + 56), v29, *(v31 + 152), 1, 0, v33);
        v28 = *(this + 4);
      }

      while (v29 < *(v28 + 152));
    }

    v34 = *(this + 2);
    v35 = *(v28 + 176);
    ps_buffer_add_iosurface();
    v36 = 4;
    do
    {
      MEMORY[0x25F8C8900](*(this + 2), 4);
      --v36;
    }

    while (v36);
  }

  else
  {
    if (v26 != 2)
    {
      if (v26)
      {
        result = PRM::Camera::JasperBufferStream::initialize(v53);
      }

      else
      {
        result = PRM::Camera::JasperBufferStream::initialize(v53);
      }

      goto LABEL_71;
    }

    v27 = 4;
    do
    {
      MEMORY[0x25F8C8900](*(this + 2), 90112);
      --v27;
    }

    while (v27);
  }

  MEMORY[0x25F8C8C70](*(this + 2));
  v37 = *(this + 2);
  if (v37 == 2)
  {
LABEL_36:
    v38 = MEMORY[0x25F8C8E10](*(this + 3));
  }

  else
  {
    if (v37 != 1)
    {
      goto LABEL_69;
    }

    v38 = MEMORY[0x25F8C8E90](*(this + 2));
  }

  if (!v38)
  {
LABEL_69:
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  v39 = *v38;
  *(this + 6) = *v38;
  if (!v39)
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  v40 = v38[1];
  *(this + 7) = v40;
  if (!v40)
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  v41 = 0;
  v42 = (this + 96);
  do
  {
    v43 = v38[v41 + 2];
    *(v42 - 4) = v43;
    if (!v43)
    {
      PRM::Camera::JasperBufferStream::initialize(v53);
    }

    v44 = v38[v41 + 3];
    *v42 = v44;
    if (!v44)
    {
      PRM::Camera::JasperBufferStream::initialize(v53);
    }

    ++v42;
    v41 += 2;
  }

  while (v41 != 8);
  if (!v38[10])
  {
    PRM::Camera::JasperBufferStream::initialize(v53);
  }

  v45 = 0;
  memset(v53, 0, sizeof(v53));
  do
  {
    v46 = v38[v45 + 11];
    *(v53 + v45 * 8) = v46;
    if (!v46)
    {
      PRM::Camera::JasperBufferStream::initialize(&v52);
    }

    ++v45;
  }

  while (v45 != 4);
  v47 = *(this + 4);
  v48 = *(v47 + 112);
  if (v48 <= 7)
  {
    v49 = 1 << v48;
    if ((v49 & 0x49) != 0)
    {
      *(this + 10) = *(v47 + 68) + *(v47 + 72);
      operator new();
    }

    if ((v49 & 0x92) != 0)
    {
      v50.i64[0] = *(v47 + 68);
      v50.i64[1] = *(v47 + 144);
      *(this + 10) = vaddvq_s32(v50);
      operator new();
    }
  }

  result = PRM::Camera::JasperBufferStream::initialize(&v52);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t PRM::Camera::JasperBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v55[4] = *MEMORY[0x277D85DE8];
  v7 = a1 + 128;
  v8 = a1 + 200;
  v9 = a1 + 168;
  v10 = 4;
  v11 = (a1 + 128);
  do
  {
    if (!*(v11 - 8))
    {
      PRM::Camera::JasperBufferStream::read(v51);
LABEL_51:
      PRM::Camera::JasperBufferStream::read(v51);
LABEL_52:
      PRM::Camera::JasperBufferStream::read(v51);
LABEL_53:
      PRM::Camera::JasperBufferStream::read(v51);
LABEL_54:
      PRM::Camera::JasperBufferStream::read(v51);
LABEL_55:
      PRM::Camera::JasperBufferStream::read(&v48);
LABEL_56:
      PRM::Camera::JasperBufferStream::read(&v48);
LABEL_57:
      PRM::Camera::JasperBufferStream::read(&v45);
LABEL_58:
      PRM::Camera::JasperBufferStream::read(&v45);
LABEL_59:
      PRM::Camera::JasperBufferStream::read(&v45);
LABEL_60:
      PRM::Camera::JasperBufferStream::read(&v45);
LABEL_61:
      PRM::Camera::JasperBufferStream::read(&v45);
      goto LABEL_62;
    }

    if (!*v11)
    {
      goto LABEL_51;
    }

    v12 = *(a1 + 160);
    if (v12 == 2)
    {
      if (!v11[9])
      {
        goto LABEL_54;
      }
    }

    else if (v12 != 1 || !v11[5])
    {
      goto LABEL_54;
    }

    ++v11;
    --v10;
  }

  while (v10);
  if (!a2)
  {
LABEL_62:
    PRM::Camera::JasperBufferStream::read(v51);
    goto LABEL_63;
  }

  if (!a3)
  {
LABEL_63:
    PRM::Camera::JasperBufferStream::read(v51);
LABEL_64:
    PRM::Camera::JasperBufferStream::read(v51);
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
    goto LABEL_64;
  }

  v43 = a4;
  v44 = a2;
  ps_buffer_get_resource_view_index();
  v13 = *(a1 + 48);
  buffer = ps_buffer_serial_data_get_buffer();
  v14 = *(a1 + 56);
  v15 = ps_buffer_serial_data_get_buffer();
  for (i = 0; i != 4; ++i)
  {
    v17 = a1 + 8 * i;
    v18 = *(v17 + 64);
    v19 = ps_buffer_serial_data_get_buffer();
    if (!v19)
    {
      goto LABEL_52;
    }

    v55[i] = *v19;
    v20 = *(v17 + 96);
    v21 = ps_buffer_serial_data_get_buffer();
    if (!v21)
    {
      goto LABEL_53;
    }

    v47[i] = *v21;
  }

  v22 = 0;
  v23 = 0;
  do
  {
    if (v23)
    {
      v23 = 1;
    }

    else
    {
      v23 = v47[v22];
    }

    ++v22;
  }

  while (v22 != 4);
  MEMORY[0x25F8C94C0](a2, v43, *v15);
  result = MEMORY[0x25F8C9570](a2, v43, *buffer);
  if ((v23 & 1) == 0)
  {
    goto LABEL_49;
  }

  MEMORY[0x25F8C9500](a2, v43, v47);
  MEMORY[0x25F8C94F0](a2, v43, v55);
  v25 = 0;
  LODWORD(v51[0]) = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  memset(v50, 0, sizeof(v50));
  v26 = v51;
  do
  {
    if (v47[v25] == 1)
    {
      (*(**(v7 + 8 * v25) + 32))(&v48);
      v27 = v49;
      *v26 = v48;
      *(v26 + 1) = v27;
      if (*v26 != 3)
      {
        goto LABEL_55;
      }

      v28 = v26[3];
      if (!v28)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = 0;
    }

    *(v50 + v25++) = v28;
    v26 += 4;
  }

  while (v25 != 4);
  v29 = *(a1 + 160);
  if (v29 == 1)
  {
    v37 = 0;
    v48 = 0u;
    v49 = 0u;
    do
    {
      if (v47[v37] == 1)
      {
        (*(**(v9 + 8 * v37) + 32))(&v45);
        if (v45 != 1)
        {
          goto LABEL_57;
        }

        v38 = v46;
        if (!v46)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v38 = 0;
      }

      *(&v48 + v37++) = v38;
    }

    while (v37 != 4);
    result = MEMORY[0x25F8C94E0](a2, v43, v50, &v48);
LABEL_49:
    v39 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v29 == 2)
  {
    v30 = 0;
    v48 = 0u;
    v49 = 0u;
    v31 = *MEMORY[0x277CBECE8];
    v32 = *MEMORY[0x277CBED00];
    do
    {
      v33 = v47[v30];
      v34 = *(v8 + 8 * v30);
      v35 = ps_buffer_serial_data_get_buffer();
      if (v33 == 1)
      {
        if (!v35)
        {
          goto LABEL_59;
        }

        v36 = *v35;
        if (!*v35)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (!v35)
        {
          goto LABEL_60;
        }

        v36 = 0;
      }

      *(&v48 + v30++) = CFDataCreateWithBytesNoCopy(v31, (v35 + 8), v36, v32);
    }

    while (v30 != 4);
    result = MEMORY[0x25F8C94D0](v44, v43, v50, &v48);
    goto LABEL_49;
  }

  v40 = &v48;
  if (!v29)
  {
    v40 = PRM::Camera::JasperBufferStream::read(&v48);
  }

  v41 = PRM::Camera::JasperBufferStream::read(v40);
  return PRM::Camera::JasperBufferStream::write(v41);
}

void PRM::Camera::JasperBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 128);
  v6 = 4;
  v7 = (a1 + 128);
  do
  {
    if (!*(v7 - 8))
    {
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_39:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_40:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_41:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_42:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_43:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_44:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_45:
      PRM::Camera::JasperBufferStream::write(&v42);
LABEL_46:
      PRM::Camera::JasperBufferStream::write(&v42);
      goto LABEL_47;
    }

    if (!*v7)
    {
      goto LABEL_39;
    }

    v8 = *(a1 + 160);
    if (v8 == 2)
    {
      if (!v7[9])
      {
        goto LABEL_42;
      }
    }

    else if (v8 != 1 || !v7[5])
    {
      goto LABEL_42;
    }

    ++v7;
    --v6;
  }

  while (v6);
  if (!a2)
  {
LABEL_47:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_48;
  }

  if (!a3)
  {
LABEL_48:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_49;
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
LABEL_49:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_50;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_50:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_51;
  }

  if (!MEMORY[0x25F8C91A0](a2, 0))
  {
LABEL_51:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_52;
  }

  timestamp_array = ps_resource_jasperbuffer_get_timestamp_array();
  if (!timestamp_array)
  {
LABEL_52:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_53;
  }

  v10 = timestamp_array;
  databuffer_array = ps_resource_jasperbuffer_get_databuffer_array();
  if (!databuffer_array)
  {
LABEL_53:
    PRM::Camera::JasperBufferStream::write(&v42);
    goto LABEL_54;
  }

  v12 = databuffer_array;
  v13 = *(a1 + 160);
  if (v13 == 2)
  {
    cfdata_metadata_array = ps_resource_jasperbuffer_get_cfdata_metadata_array();
    if (!cfdata_metadata_array)
    {
      goto LABEL_55;
    }

    v14 = cfdata_metadata_array;
    iosurface_metadata_array = 0;
LABEL_23:
    v16 = *(a1 + 48);
    buffer = ps_buffer_serial_data_get_buffer();
    v18 = MEMORY[0x25F8C9240](a2, 0);
    *buffer = ps_util_mct_to_mat(v18);
    v19 = *(a1 + 56);
    v20 = ps_buffer_serial_data_get_buffer();
    v21 = 0;
    *v20 = MEMORY[0x25F8C9260](a2, 0);
    while (1)
    {
      v22 = *(v5 - 8);
      v23 = ps_buffer_serial_data_get_buffer();
      if (!v23)
      {
        goto LABEL_40;
      }

      v24 = v23;
      v25 = *(v5 - 4);
      v26 = ps_buffer_serial_data_get_buffer();
      if (!v26)
      {
        goto LABEL_41;
      }

      v27 = v26;
      *v24 = ps_util_mct_to_mat(*(v10 + 8 * v21));
      v28 = *(v12 + 8 * v21);
      if (v28)
      {
        *v27 = 1;
        v29 = *v5;
        LODWORD(v42) = 3;
        v43 = 0;
        v44 = 0;
        v45 = v28;
        (*(*v29 + 40))(v29, a3, &v42);
        v30 = *(a1 + 160);
        if (v30 == 2)
        {
          v33 = v5[9];
          v34 = ps_buffer_serial_data_get_buffer();
          if (!v34)
          {
            goto LABEL_44;
          }

          v35 = v34;
          v36 = *(v14 + 8 * v21);
          if (!v36)
          {
            goto LABEL_45;
          }

          Length = CFDataGetLength(v36);
          *v35 = Length;
          if (!Length)
          {
            goto LABEL_46;
          }

          v46.length = Length;
          v46.location = 0;
          CFDataGetBytes(*(v14 + 8 * v21), v46, (v35 + 8));
        }

        else
        {
          if (v30 != 1)
          {
            goto LABEL_56;
          }

          v31 = *(iosurface_metadata_array + 8 * v21);
          if (!v31)
          {
            goto LABEL_43;
          }

          v32 = v5[5];
          LODWORD(v42) = 1;
          v43 = v31;
          v44 = 0;
          v45 = 0;
          (*(*v32 + 40))(v32, a3, &v42);
        }
      }

      else
      {
        *v27 = 0;
      }

      ++v21;
      ++v5;
      if (v21 == 4)
      {
        return;
      }
    }
  }

  if (v13 != 1)
  {
    goto LABEL_57;
  }

  iosurface_metadata_array = ps_resource_jasperbuffer_get_iosurface_metadata_array();
  if (iosurface_metadata_array)
  {
    v14 = 0;
    goto LABEL_23;
  }

LABEL_54:
  PRM::Camera::JasperBufferStream::write(&v42);
LABEL_55:
  PRM::Camera::JasperBufferStream::write(&v42);
LABEL_56:
  PRM::Camera::JasperBufferStream::write(&v42);
LABEL_57:
  v38 = PRM::Camera::JasperBufferStream::write(&v42);
  PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(v38, v39);
}

IOSurfaceRef PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(PRM::Camera::JasperBufferStream *this, __IOSurface **a2)
{
  v4 = 0;
  v5 = (this + 128);
  do
  {
    if (!v5[v4])
    {
      v10[1] = v2;
      v10[2] = v3;
      BackingIOSurfaceList = PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(v10);
      return PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(BackingIOSurfaceList, v9);
    }

    ++v4;
  }

  while (v4 != 4);
  v6 = *v5;

  return PRM::Camera::BufferPool::getBufferList(v6, a2);
}

IOSurfaceRef PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(PRM::Camera::JasperBufferStream *this, unint64_t *a2)
{
  v4 = 0;
  v5 = (this + 128);
  do
  {
    if (!v5[v4])
    {
      v9[1] = v2;
      v9[2] = v3;
      BackingIOSurfaceListSize = PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(v9);
      return PRM::Camera::JasperBufferStream::inUse(BackingIOSurfaceListSize);
    }

    ++v4;
  }

  while (v4 != 4);
  v6 = *v5;

  return PRM::Camera::BufferPool::getBufferListSize(v6, a2);
}

uint64_t PRM::Camera::JasperBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    LOBYTE(v3) = 0;
    v4 = a1 + 128;
    while (1)
    {
      v5 = *(v4 + v2);
      if (!v5)
      {
        break;
      }

      (*(*v5 + 32))(v9);
      if (LODWORD(v9[0]) != 3)
      {
        goto LABEL_13;
      }

      if (!v9[3])
      {
        goto LABEL_14;
      }

      if (!CVDataBufferGetIOSurface())
      {
        goto LABEL_15;
      }

      v3 = v3 || IOSurfaceIsInUseForAnyOtherCategory() != 0;
      v2 += 8;
      if (v2 == 32)
      {
        return v3;
      }
    }

    PRM::Camera::JasperBufferStream::inUse(v9);
LABEL_13:
    PRM::Camera::JasperBufferStream::inUse(&v8);
LABEL_14:
    PRM::Camera::JasperBufferStream::inUse(&v8);
LABEL_15:
    PRM::Camera::JasperBufferStream::inUse(&v8);
  }

  v7 = PRM::Camera::JasperBufferStream::inUse(v9);
  return PRM::Camera::PearlBufferStream::PearlBufferStream(v7);
}

uint64_t PRM::Camera::PearlBufferStream::PearlBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9E10;
  *(a1 + 40) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (!a2)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "PearlBufferStream", "pbsGroupReader");
    v7 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "PearlBufferStream";
      v13 = 1024;
      v14 = 1568;
      v15 = 2080;
      v16 = "PearlBufferStream";
      v17 = 2080;
      v18 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "PearlBufferStream", "options");
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "PearlBufferStream";
      v13 = 1024;
      v14 = 1569;
      v15 = 2080;
      v16 = "PearlBufferStream";
      v17 = 2080;
      v18 = "options";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "PearlBufferStream", "m_options");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "PearlBufferStream";
      v13 = 1024;
      v14 = 1574;
      v15 = 2080;
      v16 = "PearlBufferStream";
      v17 = 2080;
      v18 = "m_options";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::PearlBufferStream::PearlBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

PRM::Camera::PearlBufferStream *PRM::Camera::PearlBufferStream::PearlBufferStream(PRM::Camera::PearlBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9E10;
  *(this + 10) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  if (!a2)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "PearlBufferStream", "pbsGroupWriter");
    v7 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "PearlBufferStream";
      v13 = 1024;
      v14 = 1584;
      v15 = 2080;
      v16 = "PearlBufferStream";
      v17 = 2080;
      v18 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "PearlBufferStream", "options");
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "PearlBufferStream";
      v13 = 1024;
      v14 = 1585;
      v15 = 2080;
      v16 = "PearlBufferStream";
      v17 = 2080;
      v18 = "options";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v10 = 0;
    asprintf(&v10, "%s: Assertion failed for %s", "PearlBufferStream", "m_options");
    v9 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v12 = "PearlBufferStream";
      v13 = 1024;
      v14 = 1590;
      v15 = 2080;
      v16 = "PearlBufferStream";
      v17 = 2080;
      v18 = "m_options";
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    if (!OSLogFlushBuffers())
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance();
    PRM::Camera::PearlBufferStream::PearlBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v5 = *MEMORY[0x277D85DE8];
  return this;
}