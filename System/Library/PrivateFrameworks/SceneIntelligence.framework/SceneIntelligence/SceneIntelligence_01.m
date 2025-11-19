unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_21DE29664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_21DE299AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,SIE5RTPort * {__strong}>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,SIE5RTPort * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        std::pair<std::string &,SIE5RTPort * {__strong}&>::operator=[abi:nn200100]<std::string const,SIE5RTPort * {__strong},0>(v12, (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_multi<std::pair<std::string const,SIE5RTPort * {__strong}> const&>();
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = *(a2 + 39);
  v5 = (a2 + 16);
  v6 = *(a2 + 24);
  if ((v4 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v12, v7, v8);
  *(a2 + 8) = v9;
  inserted = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__node_insert_multi_prepare(a1, v9, v5);
  std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,SIE5RTPort * {__strong}>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::pair<std::string &,SIE5RTPort * {__strong}&>::operator=[abi:nn200100]<std::string const,SIE5RTPort * {__strong},0>(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  objc_storeStrong(*(a1 + 8), a2[1].__r_.__value_.__l.__data_);
  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
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
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
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

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:nn200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
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

void std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_21DE2A4A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,SIE5RTPort * {__strong}>::pair[abi:nn200100](std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  return this;
}

const void **std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v8 == v14)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PrewiredFunctionInfo>,void *>>>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 104);
    std::vector<SIE5RTPort * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::~__hash_table(a2 + 64);
    v3 = *(a2 + 40);
    if (v3)
    {
      *(a2 + 48) = v3;
      operator delete(v3);
    }

    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::vector<SIE5RTPort * {__strong}>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unordered_set<unsigned long long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unordered_set<unsigned long long>>,0>(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_21DE2AE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unordered_set<unsigned long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
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

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 104);
      std::vector<SIE5RTPort * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v5);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::~__hash_table((v2 + 64));
      v4 = *(v2 + 5);
      if (v4)
      {
        *(v2 + 6) = v4;
        operator delete(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__deallocate_node(int a1, void **__p)
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id yuv444_camera_resource_buffer_allocator(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:2];
  [v3 setCount:a2];
  if (a2)
  {
    v4 = 0;
    do
    {
      v5 = SICreateCVPixelBufferWithCustomStride(0x140uLL, 0x100uLL, 0x34343466u, 384, 1);
      if (v5)
      {
        [v3 replacePointerAtIndex:v4 withPointer:v5];
      }

      else
      {
        v6 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 136380931;
          v10 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTesterParameters.m";
          v11 = 1025;
          v12 = 34;
          _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [SIPolarisGraphTesterPixelBufferParameters] Failed to create cv pixel buffer! ***", buf, 0x12u);
        }
      }

      ++v4;
    }

    while (a2 != v4);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

id thm_camera_resource_buffer_allocator(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:2];
  [v3 setCount:a2];
  if (a2)
  {
    v4 = 0;
    do
    {
      v5 = SICreateCVPixelBufferWithCustomStride(0x140uLL, 0x100uLL, 0x34343466u, 1024, 1);
      if (v5)
      {
        [v3 replacePointerAtIndex:v4 withPointer:v5];
      }

      else
      {
        v6 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 136380931;
          v10 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTesterParameters.m";
          v11 = 1025;
          v12 = 54;
          _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [SIPolarisGraphTesterPixelBufferParameters] Failed to create cv pixel buffer! ***", buf, 0x12u);
        }
      }

      ++v4;
    }

    while (a2 != v4);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_21DE2C9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void (*)(uint64_t *));
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v4 = v3;

  v9(va);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_21DE2D388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SIE5RTSurfacePortDescriptor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *SIGetSemanticLabelStringGlobal(unint64_t a1)
{
  if (a1 > 0x29)
  {
    if (a1 == 255)
    {
      v3 = @"Invalid";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [&unk_282F35198 objectAtIndexedSubscript:{a1, v1}];
  }

  return v3;
}

__CFString *SIGetSemanticLabelStringV3(unint64_t a1)
{
  if (a1 > 0x1D)
  {
    if (a1 == 255)
    {
      v3 = @"Invalid";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [&unk_282F351B0 objectAtIndexedSubscript:{a1, v1}];
  }

  return v3;
}

double SICreateSceneSegmentationV3ToGlobalLabelMapping()
{
  v0 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  *v0 = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  *(v0 + 10) = 0u;
  *(v0 + 11) = 0u;
  *(v0 + 12) = 0u;
  *(v0 + 13) = 0u;
  *(v0 + 14) = 0u;
  *(v0 + 239) = 0u;
  v0[29] = 33;
  *(v0 + 1) = xmmword_21DECC1E0;
  *(v0 + 17) = 0x1F29152813121110;
  *&result = 639902240;
  *(v0 + 25) = 639902240;
  v0[255] = -1;
  return result;
}

uint64_t SISceneSegmentationGetLegacyToV2LabelMapping(unint64_t a1)
{
  if ([&unk_282F351C8 count] <= a1)
  {
    return 0;
  }

  v2 = [&unk_282F351C8 objectAtIndexedSubscript:a1];
  v3 = [v2 intValue];

  return v3;
}

uint64_t SISceneSegmentationGetV2ToLegacyLabelMapping(unint64_t a1)
{
  if ([&unk_282F351E0 count] <= a1)
  {
    return 0;
  }

  v2 = [&unk_282F351E0 objectAtIndexedSubscript:a1];
  v3 = [v2 intValue];

  return v3;
}

double SISceneSegmentationGetSupportedResolution(uint64_t a1)
{
  v1 = 256.0;
  if (a1 == 2)
  {
    v1 = 192.0;
  }

  if (a1 == 3)
  {
    v1 = 320.0;
  }

  if (a1 == 4)
  {
    return 256.0;
  }

  else
  {
    return v1;
  }
}

float32x2_t kannalaforw(float32x4_t a1, __n128 a2)
{
  v2 = *a1.f32;
  v3 = sqrtf(COERCE_FLOAT(vmulq_f32(a1, a1).i32[1]) + (v2.f32[0] * v2.f32[0]));
  v4 = 1.0;
  if (v3 != 0.0)
  {
    v19 = v2;
    v20 = a1.f32[2];
    v5 = atan2f(v3, a1.f32[2]);
    _S3 = (v5 * v5) * (v5 * (v5 * v5));
    _S4 = (v5 * v5) * _S3;
    _S5 = (v5 * v5) * _S4;
    _Q6 = a2;
    __asm
    {
      FMLA            S0, S3, V6.S[1]
      FMLA            S0, S4, V6.S[2]
      FMLA            S0, S5, V6.S[3]
    }

    v2 = v19;
    v4 = (fabsf(v20) * _S0) / v3;
  }

  return vmul_n_f32(v2, v4);
}

float32x2_t kannalarev(float32x4_t a1, float32x4_t a2)
{
  v20 = *a1.f32;
  v2 = a2.f32[1];
  v3 = a2.f32[2];
  v4 = a2.f32[3];
  v5 = sqrtf(COERCE_FLOAT(vmulq_f32(a1, a1).i32[1]) + (a1.f32[0] * a1.f32[0])) / a1.f32[2];
  v6 = atanf(v5);
  v7 = vmuls_lane_f32(5.0, *a2.f32, 1);
  v8 = vmuls_lane_f32(7.0, a2, 2);
  v9 = vmuls_lane_f32(9.0, a2, 3);
  v10 = 0.0;
  v11 = 9;
  do
  {
    v12 = v6;
    v13 = v6 * v6;
    v6 = v12 - ((((((v12 + (a2.f32[0] * (v12 * v13))) + (v2 * (v12 * (v13 * v13)))) + (v3 * (v12 * (v13 * (v13 * v13))))) + (v4 * (v12 * ((v13 * v13) * (v13 * v13))))) - v5) / ((((((3.0 * a2.f32[0]) * v13) + 1.0) + (v7 * (v13 * v13))) + (v8 * (v13 * (v13 * v13)))) + (v9 * ((v13 * v13) * (v13 * v13)))));
    v14 = vabds_f32(v12, v6);
    v10 = v10 + v14;
  }

  while (v14 >= 0.0001 && v11-- != 0);
  v16 = tanf(v6);
  v17 = 1.0;
  if (v5 != 0.0 && v10 <= 1.0)
  {
    v17 = fabsf(v16) / v5;
  }

  return vmul_n_f32(v20, v17);
}

id SISurfaceGetPropertiesDictionary(void *a1)
{
  v35[7] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = 0x277CCA000uLL;
  v3 = @"elementWidth";
  if ([v1 planes] < 2)
  {
    v4 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "planes")}];
    if ([v1 planes])
    {
      v26 = v4;
      v5 = 0;
      do
      {
        v34[0] = @"width";
        v30 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "widthOfPlane:", v5)}];
        v35[0] = v30;
        v34[1] = @"height";
        v28 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "heightOfPlane:", v5)}];
        v35[1] = v28;
        v34[2] = @"bytesPerRow";
        v6 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "bytesPerRowOfPlane:", v5)}];
        v35[2] = v6;
        v34[3] = @"offset";
        v7 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "offsetOfPlane:", v5)}];
        v35[3] = v7;
        v34[4] = @"bytesPerElement";
        v8 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "bytesPerElementOfPlane:", v5)}];
        v35[4] = v8;
        v34[5] = v3;
        v9 = v3;
        v10 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "elementWidthOfPlane:", v5)}];
        v35[5] = v10;
        v34[6] = @"elementHeight";
        v11 = v2;
        v12 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "elementHeightOfPlane:", v5)}];
        v35[6] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:7];
        [v26 setObject:v13 atIndexedSubscript:v5];

        v2 = v11;
        v3 = v9;

        ++v5;
      }

      while (v5 < [v1 planes]);
      v4 = v26;
    }
  }

  v32[0] = @"width";
  v31 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "width")}];
  v33[0] = v31;
  v32[1] = @"height";
  v29 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "height")}];
  v33[1] = v29;
  v32[2] = @"bytesPerRow";
  v27 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "bytesPerRow")}];
  v33[2] = v27;
  v32[3] = @"offset";
  v14 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "offset")}];
  v33[3] = v14;
  v32[4] = @"bytesPerElement";
  v15 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "bytesPerElement")}];
  v33[4] = v15;
  v32[5] = v3;
  v16 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "elementWidth")}];
  v33[5] = v16;
  v32[6] = @"elementHeight";
  v17 = [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "elementHeight")}];
  v33[6] = v17;
  v32[7] = @"planeCount";
  [*(v2 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "planes")}];
  v19 = v18 = v2;
  v33[7] = v19;
  v32[8] = @"pixelFormat";
  v20 = [*(v18 + 2992) numberWithUnsignedInt:{objc_msgSend(v1, "pixelFormat")}];
  v33[8] = v20;
  v33[9] = v4;
  v32[9] = @"planes";
  v32[10] = @"allocationSize";
  v21 = v4;
  v22 = [*(v18 + 2992) numberWithUnsignedLong:{objc_msgSend(v1, "allocationSize")}];
  v33[10] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:11];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id SISurfaceCopyData(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 planes] < 2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v10 = __Block_byref_object_copy__0;
    v11 = __Block_byref_object_dispose__0;
    v12 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __SISurfaceCopyData_block_invoke;
    v6[3] = &unk_27833C348;
    v8 = buf;
    v7 = v1;
    [v7 getMutableBytesWithHandler:v6];
    v3 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v2 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SISurfaceProtocol.m";
      *&buf[12] = 1025;
      *&buf[14] = 61;
      _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** copyData for multiplanar surfaces not yet supported. ***", buf, 0x12u);
    }

    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_21DE310C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __SISurfaceCopyData_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB28] dataWithBytes:a2 length:{objc_msgSend(*(a1 + 32), "height") * objc_msgSend(*(a1 + 32), "bytesPerRow")}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

id SISurfaceGetDebugQuickLookObject(void *a1, int a2)
{
  v3 = a1;
  if ([v3 width] == 1 || objc_msgSend(v3, "height") == 1)
  {
    v4 = [v3 width];
    v5 = [v3 height];
    if (v4 <= v5)
    {
      v4 = v5;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __SISurfaceGetDebugQuickLookObject_block_invoke;
    v12[3] = &unk_27833C390;
    v13 = v3;
    v14 = &v16;
    v15 = v4;
    [v13 getMutableBytesWithHandler:v12];
    v6 = [v17[5] description];
    v7 = v13;
    goto LABEL_6;
  }

  if (a2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = [MEMORY[0x277CBEB18] array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_6;
    v9[3] = &unk_27833C3B8;
    v10 = v3;
    v11 = &v16;
    [v10 getMutableBytesWithHandler:v9];
    v6 = [v17[5] description];
    v7 = v10;
LABEL_6:

    _Block_object_dispose(&v16, 8);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

void __SISurfaceGetDebugQuickLookObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) pixelFormat];
  if (v4 > 1278226535)
  {
    if (v4 == 1278226536)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_4;
      v9[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
      v9[4] = *(a1 + 48);
      v9[5] = a2;
      v5 = __SISurfaceGetDebugQuickLookObject_block_invoke_4(v9);
    }

    else
    {
      if (v4 != 1278226742)
      {
        return;
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_3;
      v10[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
      v10[4] = *(a1 + 48);
      v10[5] = a2;
      v5 = __SISurfaceGetDebugQuickLookObject_block_invoke_3(v10);
    }
  }

  else if (v4 == 1278226488)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_2;
    v11[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
    v11[4] = *(a1 + 48);
    v11[5] = a2;
    v5 = __SISurfaceGetDebugQuickLookObject_block_invoke_2(v11);
  }

  else
  {
    if (v4 != 1278226534)
    {
      return;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_5;
    v8[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
    v8[4] = *(a1 + 48);
    v8[5] = a2;
    v5 = __SISurfaceGetDebugQuickLookObject_block_invoke_5(v8);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LOBYTE(v3) = *(v5 + v4);
      *&v3 = LODWORD(v3);
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LOWORD(v3) = *(v5 + 2 * v4);
      *&v3 = LODWORD(v3);
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LOWORD(_D0) = *(v5 + 2 * v4);
      __asm { FCVT            S0, H0 }

      v10 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
      [v2 addObject:v10];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LODWORD(v3) = *(v5 + 4 * v4);
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

unint64_t __SISurfaceGetDebugQuickLookObject_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) width];
  result = [*(a1 + 32) height];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v7 = [*(a1 + 32) pixelFormat];
      if (v7 > 1278226535)
      {
        if (v7 == 1278226536)
        {
          v8 = *(*(*(a1 + 40) + 8) + 40);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_9;
          v12[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
          v12[4] = v4;
          v12[5] = a2;
          v9 = __SISurfaceGetDebugQuickLookObject_block_invoke_9(v12);
          goto LABEL_12;
        }

        if (v7 == 1278226742)
        {
          v8 = *(*(*(a1 + 40) + 8) + 40);
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_8;
          v13[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
          v13[4] = v4;
          v13[5] = a2;
          v9 = __SISurfaceGetDebugQuickLookObject_block_invoke_8(v13);
          goto LABEL_12;
        }
      }

      else
      {
        if (v7 == 1278226488)
        {
          v8 = *(*(*(a1 + 40) + 8) + 40);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_7;
          v14[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
          v14[4] = v4;
          v14[5] = a2;
          v9 = __SISurfaceGetDebugQuickLookObject_block_invoke_7(v14);
          goto LABEL_12;
        }

        if (v7 == 1278226534)
        {
          v8 = *(*(*(a1 + 40) + 8) + 40);
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __SISurfaceGetDebugQuickLookObject_block_invoke_10;
          v11[3] = &__block_descriptor_48_e21___NSMutableArray_8__0l;
          v11[4] = v4;
          v11[5] = a2;
          v9 = __SISurfaceGetDebugQuickLookObject_block_invoke_10(v11);
LABEL_12:
          v10 = v9;
          [v8 addObjectsFromArray:v9];
        }
      }

      a2 += [*(a1 + 32) bytesPerRow];
      result = [*(a1 + 32) height];
    }
  }

  return result;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LOBYTE(v3) = *(v5 + v4);
      *&v3 = LODWORD(v3);
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LOWORD(v3) = *(v5 + 2 * v4);
      *&v3 = LODWORD(v3);
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_9(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LOWORD(_D0) = *(v5 + 2 * v4);
      __asm { FCVT            S0, H0 }

      v10 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
      [v2 addObject:v10];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

id __SISurfaceGetDebugQuickLookObject_block_invoke_10(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 32)];
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = *(a1 + 40);
    do
    {
      LODWORD(v3) = *(v5 + 4 * v4);
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  return v2;
}

void SISurfaceFillWith(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SISurfaceFillWith_block_invoke;
  v7[3] = &unk_27833C408;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  [v6 getMutableBytesWithHandler:v7];
}

void __SISurfaceFillWith_block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) pixelFormat];
  if (v4 > 1278226535)
  {
    if (v4 == 1278226536)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __SISurfaceFillWith_block_invoke_4;
      v12[3] = &unk_27833C3E0;
      v15 = a2;
      v13 = *(a1 + 40);
      v14 = *(a1 + 32);
      __SISurfaceFillWith_block_invoke_4(v12);

      v5 = v13;
      goto LABEL_12;
    }

    if (v4 == 1278226742)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __SISurfaceFillWith_block_invoke_3;
      v16[3] = &unk_27833C3E0;
      v19 = a2;
      v17 = *(a1 + 40);
      v18 = *(a1 + 32);
      __SISurfaceFillWith_block_invoke_3(v16);

      v5 = v17;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 1278226488)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __SISurfaceFillWith_block_invoke_2;
      v20[3] = &unk_27833C3E0;
      v23 = a2;
      v21 = *(a1 + 40);
      v22 = *(a1 + 32);
      __SISurfaceFillWith_block_invoke_2(v20);

      v5 = v21;
      goto LABEL_12;
    }

    if (v4 == 1278226534)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __SISurfaceFillWith_block_invoke_5;
      v8[3] = &unk_27833C3E0;
      v11 = a2;
      v9 = *(a1 + 40);
      v10 = *(a1 + 32);
      __SISurfaceFillWith_block_invoke_5(v8);

      v5 = v9;
      goto LABEL_12;
    }
  }

  v5 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = SIPixelFormatToStr([*(a1 + 32) pixelFormat]);
    *buf = 136381187;
    v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SISurfaceProtocol.m";
    v26 = 1025;
    v27 = 153;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Type not supported: %@ ***", buf, 0x1Cu);
  }

LABEL_12:

  v7 = *MEMORY[0x277D85DE8];
}

unint64_t __SISurfaceFillWith_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) doubleValue];
  v4 = v3;
  result = [*(a1 + 40) height];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      if ([*(a1 + 40) width])
      {
        v7 = 0;
        do
        {
          *(v2 + v7++) = v4;
        }

        while (v7 < [*(a1 + 40) width]);
      }

      v2 += [*(a1 + 40) bytesPerRow];
      result = [*(a1 + 40) height];
    }
  }

  return result;
}

unint64_t __SISurfaceFillWith_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) doubleValue];
  v4 = v3;
  result = [*(a1 + 40) height];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      if ([*(a1 + 40) width])
      {
        v7 = 0;
        do
        {
          *(v2 + 2 * v7++) = v4;
        }

        while (v7 < [*(a1 + 40) width]);
      }

      v2 += [*(a1 + 40) bytesPerRow];
      result = [*(a1 + 40) height];
    }
  }

  return result;
}

unint64_t __SISurfaceFillWith_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) doubleValue];
  _D8 = v3;
  result = [*(a1 + 40) height];
  if (result)
  {
    v6 = 0;
    __asm { FCVT            H8, D8 }

    do
    {
      if ([*(a1 + 40) width])
      {
        v12 = 0;
        do
        {
          *(v2 + 2 * v12++) = _H8;
        }

        while (v12 < [*(a1 + 40) width]);
      }

      v2 += [*(a1 + 40) bytesPerRow];
      ++v6;
      result = [*(a1 + 40) height];
    }

    while (v6 < result);
  }

  return result;
}

unint64_t __SISurfaceFillWith_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) doubleValue];
  v4 = v3;
  result = [*(a1 + 40) height];
  if (result)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      if ([*(a1 + 40) width])
      {
        v8 = 0;
        do
        {
          *(v2 + 4 * v8++) = v7;
        }

        while (v8 < [*(a1 + 40) width]);
      }

      v2 += [*(a1 + 40) bytesPerRow];
      ++v6;
      result = [*(a1 + 40) height];
    }

    while (v6 < result);
  }

  return result;
}

uint64_t si_is_ps_resource_items_valid()
{
  v14 = *MEMORY[0x277D85DE8];
  count = ps_resource_array_get_count();
  if (count)
  {
    v1 = count;
    v2 = 0;
    v3 = 1;
    do
    {
      ps_resource_array_get_resource();
      if ((MEMORY[0x223D4CF20]() & 1) == 0)
      {
        v4 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          key = ps_resource_get_key();
          *buf = 136381187;
          v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisUtility.m";
          v10 = 1025;
          v11 = 49;
          v12 = 2081;
          v13 = key;
          _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Invalid resource received for key %{private}s. ***", buf, 0x1Cu);
        }

        v3 = 0;
      }

      ++v2;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

BOOL SICopyMetadataFromExistingPolarisPixelBufferResource(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  MEMORY[0x223D4CF00]();
  MEMORY[0x223D4CF00](a2, 0);
  iosurface_metadata = ps_resource_pixelbuffer_get_iosurface_metadata();
  v4 = ps_resource_pixelbuffer_get_iosurface_metadata();
  AllocSize = IOSurfaceGetAllocSize(iosurface_metadata);
  v6 = IOSurfaceGetAllocSize(v4);
  if (AllocSize == v6)
  {
    IOSurfaceLock(iosurface_metadata, 0, 0);
    IOSurfaceLock(v4, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(iosurface_metadata);
    v8 = IOSurfaceGetBaseAddress(v4);
    memcpy(v8, BaseAddress, AllocSize);
    IOSurfaceUnlock(iosurface_metadata, 0, 0);
    IOSurfaceUnlock(v4, 0, 0);
  }

  else
  {
    v9 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136381955;
      v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisUtility.m";
      v14 = 1025;
      v15 = 71;
      v16 = 2081;
      key = ps_resource_get_key();
      v18 = 2081;
      v19 = ps_resource_get_key();
      v20 = 2048;
      v21 = AllocSize;
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to copy metadata from resource (%{private}s) to resource (%{private}s): Size does not match (%zu <-> %zu) ***", &v12, 0x3Au);
    }
  }

  result = AllocSize == v6;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

id SIEnsureNonExpiredPixelBufferStreamTask(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc(MEMORY[0x277D3E6D0]);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"expiry-timestamp-setting-%@-%@", v5, v6];
  v10 = [v8 initWithName:v9];

  v11 = [objc_alloc(MEMORY[0x277D3E6D8]) initWithResourceKey:v5 type:0 capacity:1];
  v12 = [objc_alloc(MEMORY[0x277D3E6E0]) initWithResourceKey:v6];
  [v10 addInput:v11];
  [v10 addOutput:v12];
  v19 = vdupq_n_s64(1uLL);
  v13 = [v7 resourceStreamForKey:v5];
  v14 = v13;
  if (v13)
  {
    v15 = [MEMORY[0x277D3E680] cvPixelStreamWithResourceKey:v6 options:&v19 width:objc_msgSend(v13 height:"width") pixelFormat:objc_msgSend(v13, "height"), objc_msgSend(v13, "pixelFormat")];
    [v7 addResourceStream:v15];
    [v10 setFunction:create_expiry_timestamp_pixelbuffer userdata:0];
    v16 = v10;
  }

  else
  {
    v15 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisUtility.m";
      v22 = 1025;
      v23 = 177;
      v24 = 2113;
      v25 = v5;
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** input stream %{private}@ does not exist. ***", buf, 0x1Cu);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t create_expiry_timestamp_pixelbuffer()
{
  v20 = *MEMORY[0x277D85DE8];
  ps_resource_array_get_resource();
  pixelbuffer = ps_resource_get_pixelbuffer();
  resource = ps_resource_array_get_resource();
  v2 = ps_resource_get_pixelbuffer();
  ps_resource_get_timestamp_seconds();
  MEMORY[0x223D4CF50](resource, 0, v3);
  Width = CVPixelBufferGetWidth(pixelbuffer);
  Height = CVPixelBufferGetHeight(pixelbuffer);
  v6 = CVPixelBufferGetWidth(v2);
  v7 = CVPixelBufferGetHeight(v2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelbuffer);
  v9 = CVPixelBufferGetPixelFormatType(v2);
  if (Width != v6 || Height != v7)
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136380931;
      v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisUtility.m";
      v18 = 1025;
      v19 = 217;
      v12 = " %{private}s:%{private}d *** Failed to copy the pixelbuffer with expiry timestamp: buffer size needs to match ***";
LABEL_11:
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, v12, &v16, 0x12u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (PixelFormatType != v9)
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 136380931;
      v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/Common/SIPolarisUtility.m";
      v18 = 1025;
      v19 = 221;
      v12 = " %{private}s:%{private}d *** Failed to copy the pixelbuffer with expiry timestamp: buffer format needs to match ***";
      goto LABEL_11;
    }

LABEL_12:

    result = 1;
    goto LABEL_13;
  }

  v13 = [(SIBaseScaler *)[SIVideoToolboxScaler alloc] initForOutputResolution:PixelFormatType outputPixelFormat:0 mode:v6, v7];
  [v13 scaleImage:pixelbuffer outputBuffer:v2];
  MEMORY[0x223D4CF40](resource, 0, -1);

  result = 0;
LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

id iosurface_to_si_portable_surface(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [SIIOSurface alloc];
        v10 = [(SIIOSurface *)v9 initFromSurface:v8, v13];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_21DE33724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SIPeopleSegmentation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21DE356D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SIE5RTTensorPortDescriptor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id __SceneIntelligenceLogSharedInstance()
{
  if (__SceneIntelligenceLogSharedInstance_onceToken != -1)
  {
    __SceneIntelligenceLogSharedInstance_cold_1();
  }

  v1 = sharedInstance;

  return v1;
}

void sub_21DE36D54(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21DE37358(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_21DE3760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  _Unwind_Resume(a1);
}

void sub_21DE3790C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21DE379A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21DE37A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21DE38330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21DE383E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21DE38498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21DE385A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21DE38CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21DE38E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_21DE39214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SIBaseNetworkEspresso;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__deallocate_node(a1, *(a1 + 16));
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

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::string,espresso_buffer_t>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_21DE39BC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<unsigned long>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<unsigned long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<unsigned long>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

const void **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v13 + 2, v2))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_21DE3A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,void *>>>::operator()[abi:nn200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21DE3A2A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<unsigned long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

__CFString *SIResultStatusToString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = off_27833C468[a1];
  }

  return v2;
}

__CFString *SIDeviceOrientationToString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = off_27833C498[a1];
  }

  return v2;
}

__CFString *SIComputeEngineTypeToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = off_27833C4B8[a1];
  }

  return v2;
}

__CFString *SIEarlyExitToString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = off_27833C4D0[a1];
  }

  return v2;
}

__CFString *SIComputeEnginePriorityToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"SIComputeEnginePriorityLow";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
    }
  }

  else
  {
    v2 = @"SIComputeEnginePriorityDefault";
  }

  return v2;
}

void make_crc_table()
{
  for (i = 0; i != 256; ++i)
  {
    v1 = 8;
    v2 = i;
    do
    {
      if (v2)
      {
        v2 = (v2 >> 1) ^ 0xEDB88320;
      }

      else
      {
        v2 >>= 1;
      }

      --v1;
    }

    while (v1);
    crc_table[i] = v2;
  }

  crc_table_computed = 1;
}

uint64_t update_crc(uint64_t result, char *a2, uint64_t a3)
{
  if ((crc_table_computed & 1) == 0)
  {
    for (i = 0; i != 256; ++i)
    {
      v4 = 8;
      v5 = i;
      do
      {
        if (v5)
        {
          v5 = (v5 >> 1) ^ 0xEDB88320;
        }

        else
        {
          v5 >>= 1;
        }

        --v4;
      }

      while (v4);
      crc_table[i] = v5;
    }

    crc_table_computed = 1;
  }

  for (; a3; --a3)
  {
    v6 = *a2++;
    result = crc_table[(v6 ^ result)] ^ (result >> 8);
  }

  return result;
}

NSObject *si_surface_load_from_data_internal(uint64_t a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 100;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:a1 options:0 format:&v31 error:&v30];
  v4 = v30;
  v5 = v4;
  if (v3)
  {
    v6 = [v3 objectForKeyedSubscript:@"properties"];
    if (!v6)
    {
      if (a2)
      {
        v13 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277CCA450];
        v41 = @"No properties in payload";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        *a2 = [v13 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v14];
      }

      v7 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v43 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
        v44 = 1025;
        v45 = 91;
        _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** No properties in payload ***", buf, 0x12u);
      }

      v12 = 0;
      goto LABEL_44;
    }

    v7 = [v3 objectForKeyedSubscript:@"data_size"];
    v8 = [v7 unsignedIntegerValue];
    if (!v8)
    {
      if (a2)
      {
        v15 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39 = @"No data size in payload";
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *a2 = [v15 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v16];
      }

      v10 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v43 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
        v44 = 1025;
        v45 = 101;
        _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** No data size in payload ***", buf, 0x12u);
      }

      v12 = 0;
      goto LABEL_43;
    }

    v9 = v8;
    v10 = [v3 objectForKeyedSubscript:@"compressed_data"];
    if (v10)
    {
      v29 = [MEMORY[0x277CBEB28] dataWithLength:v9];
      if (compression_decode_buffer([v29 bytes], objc_msgSend(v29, "length"), -[NSObject bytes](v10, "bytes"), -[NSObject length](v10, "length"), 0, COMPRESSION_LZ4) != v9)
      {
        if (a2)
        {
          v19 = MEMORY[0x277CCA9B8];
          v36 = *MEMORY[0x277CCA450];
          v37 = @"Uncompressing data failed.";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          *a2 = [v19 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v20];
        }

        v17 = __SceneIntelligenceLogSharedInstance();
        v11 = v29;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v43 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
          v44 = 1025;
          v45 = 113;
          _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Uncompressing data failed. ***", buf, 0x12u);
        }

        goto LABEL_41;
      }

      v11 = v29;
    }

    else
    {
      v11 = 0;
    }

    v17 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v6];
    if (v17)
    {
      v18 = [v11 length];
      if (v18 == [v17 allocationSize])
      {
        memcpy(-[NSObject baseAddress](v17, "baseAddress"), [v11 bytes], -[NSObject allocationSize](v17, "allocationSize"));
        v17 = v17;
        v12 = v17;
LABEL_42:

LABEL_43:
LABEL_44:

        goto LABEL_45;
      }

      if (a2)
      {
        v25 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA450];
        v33 = @"Mismatching data sizes for surface.";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        *a2 = [v25 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v26];
      }

      v23 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136380931;
      v43 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
      v44 = 1025;
      v45 = 132;
      v24 = " %{private}s:%{private}d *** Mismatching data sizes for surface. ***";
    }

    else
    {
      if (a2)
      {
        v21 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35 = @"Failed to create surface.";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *a2 = [v21 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v22];
      }

      v23 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136380931;
      v43 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
      v44 = 1025;
      v45 = 125;
      v24 = " %{private}s:%{private}d *** Failed to create surface. ***";
    }

    _os_log_impl(&dword_21DE0D000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
LABEL_40:

LABEL_41:
    v12 = 0;
    goto LABEL_42;
  }

  if (a2 && v4)
  {
    *a2 = v4;
  }

  v6 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v43 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
    v44 = 1025;
    v45 = 82;
    _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to deserialize plist data ***", buf, 0x12u);
  }

  v12 = 0;
LABEL_45:

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

void *si_surface_load_from_data(void *a1, uint64_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 length];
  v5 = [v3 bytes];
  v6 = v5;
  if (*v5 != 0xA1A0A0D474E5089)
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *v6;
      *buf = 136381443;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
      v30 = 1025;
      v31 = 157;
      v32 = 2048;
      v33 = v11;
      v34 = 2048;
      v35 = 0xA1A0A0D474E5089;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Wrong png header %llu %llu ***", buf, 0x26u);
    }

    goto LABEL_17;
  }

  if (v4 < 9)
  {
    goto LABEL_10;
  }

  v7 = (v5 + 1);
  while (1)
  {
    v8 = bswap32(*v7);
    v9 = v7 + 2;
    if (bswap32(v7[1]) == *SIPngChunkType)
    {
      break;
    }

    v7 = (v9 + v8 + 4);
    if (v7 >= (v5 + v4))
    {
      goto LABEL_10;
    }
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:v8 freeWhenDone:0];
  v13 = si_surface_load_from_data_internal(v12, a2);

  if (!v13)
  {
LABEL_10:
    v10 = [MEMORY[0x277CBF758] imageWithData:v3];
    [v10 extent];
    v15 = v14;
    [v10 extent];
    v17 = SICreateCVPixelBuffer(v15, v16, 0x42475241u, 1);
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x277CBF740] context];
      [v19 render:v10 toCVPixelBuffer:v18];
      IOSurface = CVPixelBufferGetIOSurface(v18);
      v13 = CFRetain(IOSurface);
      CVPixelBufferRelease(v18);

LABEL_18:
      goto LABEL_19;
    }

    if (a2)
    {
      v21 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"Failed to load fallback png data";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *a2 = [v21 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v22];
    }

    v23 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
      v30 = 1025;
      v31 = 198;
      _os_log_impl(&dword_21DE0D000, v23, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to load fallback png data ***", buf, 0x12u);
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

void *si_surface_load_from_url(uint64_t a1, uint64_t *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1];
  v4 = v3;
  if (v3)
  {
    v5 = si_surface_load_from_data(v3, a2);
  }

  else
  {
    if (a2)
    {
      v6 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16[0] = @"Failed to load file";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *a2 = [v6 errorWithDomain:@"com.apple.sceneintelligence" code:1 userInfo:v7];
    }

    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136380931;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
      v13 = 1025;
      v14 = 212;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to load file ***", &v11, 0x12u);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t si_surface_save_to_data_internal(__IOSurface *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = IOSurfaceCopyAllValues(a1);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:@"CreationProperties"];

  v4 = MEMORY[0x277CBEA90];
  BaseAddress = IOSurfaceGetBaseAddress(a1);
  v6 = [v4 dataWithBytes:BaseAddress length:IOSurfaceGetAllocSize(a1)];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v6, "length")}];
  v8 = compression_encode_buffer([v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), 0, COMPRESSION_LZ4);
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v7 length:"bytes") freeWhenDone:{v8, 0}];
  v10 = v9;
  if (v8)
  {
    v19[0] = v9;
    v18[0] = @"compressed_data";
    v18[1] = @"data_size";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
    v19[1] = v11;
    v18[2] = @"compressed_data_size";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
    v18[3] = @"properties";
    v19[2] = v12;
    v19[3] = v3;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

    v17 = 0;
    v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v13 format:100 options:0 error:&v17];
  }

  else
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381443;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
      v22 = 1025;
      v23 = 227;
      v24 = 2048;
      v25 = [v7 length];
      v26 = 2048;
      v27 = [v6 length];
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to compress data! dest length %zu src length %zu ***", buf, 0x26u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

id si_surface_png_representation(__IOSurface *a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  pixelTransferSessionOut = 0;
  if (!VTPixelTransferSessionCreate(0, &pixelTransferSessionOut))
  {
    pixelBufferOut = 0;
    v38 = *MEMORY[0x277CC4D90];
    v39[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v5 = *MEMORY[0x277CBECE8];
    if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], a1, v4, &pixelBufferOut))
    {
      v6 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
        v34 = 1025;
        v35 = 253;
        _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create input pixel buffer ***", buf, 0x12u);
      }

      v3 = 0;
      goto LABEL_18;
    }

    destinationBuffer = 0;
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    if (CVPixelBufferCreate(v5, Width, Height, 0x42475241u, 0, &destinationBuffer))
    {
      v9 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
        v34 = 1025;
        v35 = 259;
        v10 = " %{private}s:%{private}d *** Failed to create output pixel buffer ***";
        v11 = v9;
        v12 = 18;
LABEL_15:
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }

    else
    {
      v13 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, destinationBuffer);
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      CFRelease(pixelTransferSessionOut);
      CVPixelBufferRelease(pixelBufferOut);
      if (!v13)
      {
        v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF460]);
        v17 = MEMORY[0x277CBF758];
        v18 = destinationBuffer;
        v30 = *MEMORY[0x277CBFA40];
        v31 = v16;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v9 = [v17 imageWithCVPixelBuffer:v18 options:v19];

        if (v9)
        {
          v20 = MEMORY[0x277CBF740];
          v28 = *MEMORY[0x277CBF948];
          v29 = v16;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v22 = [v20 contextWithOptions:v21];

          v23 = *MEMORY[0x277CBF970];
          v24 = [v22 workingColorSpace];
          v3 = [v22 PNGRepresentationOfImage:v9 format:v23 colorSpace:v24 options:MEMORY[0x277CBEC10]];
          CGColorSpaceRelease(v16);
          CVPixelBufferRelease(destinationBuffer);
        }

        else
        {
          v22 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136380931;
            v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
            v34 = 1025;
            v35 = 279;
            _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create CIImage ***", buf, 0x12u);
          }

          v3 = 0;
        }

        goto LABEL_17;
      }

      v9 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
        v34 = 1025;
        v35 = 270;
        v36 = 1024;
        v37 = v13;
        v10 = " %{private}s:%{private}d *** Failed to transfer pixel buffer: %d ***";
        v11 = v9;
        v12 = 24;
        goto LABEL_15;
      }
    }

    v3 = 0;
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SISurface.m";
    v34 = 1025;
    v35 = 244;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create pixel transfer session ***", buf, 0x12u);
  }

  v3 = 0;
LABEL_19:
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

void *si_surface_save_to_data(__IOSurface *a1)
{
  v2 = si_surface_png_representation(a1);
  if (v2)
  {
    v3 = si_surface_save_to_data_internal(a1);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 length];
      v6 = [v2 length];
      v7 = [MEMORY[0x277CBEB28] dataWithLength:v5 + v6 + 12];
      memcpy([v7 mutableBytes], objc_msgSend(v2, "bytes"), objc_msgSend(v2, "length") - 12);
      v8 = ~update_crc(0xFFFFFFFFLL, [v4 bytes], objc_msgSend(v4, "length"));
      v9 = [v7 mutableBytes];
      v10 = v9 + [v2 length];
      *(v10 - 12) = bswap32([v4 length]);
      *(v10 - 8) = bswap32(*SIPngChunkType);
      memcpy((v10 - 4), [v4 bytes], objc_msgSend(v4, "length"));
      v11 = v10 + v5;
      *(v10 + v5 - 4) = bswap32(v8);
      v12 = [v2 bytes];
      v13 = [v2 length];
      v14 = *(v12 + v13 - 4);
      *v11 = *(v12 + v13 - 12);
      *(v11 + 8) = v14;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t si_surface_save_to_url(__IOSurface *a1, uint64_t a2)
{
  v3 = si_surface_save_to_data(a1);

  return [v3 writeToURL:a2 atomically:0];
}

uint64_t si_surface_print_data_to_iterm(void *a1)
{
  v1 = a1;
  printf("\x1B]1337;File=[size=%lld;inline=1;preserveAspectRatio=1]:", [v1 length]);
  v2 = [v1 base64EncodedStringWithOptions:0];

  puts([v2 UTF8String]);

  return puts("\a");
}

BOOL si_surface_print_url_to_iterm(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1];
  v2 = v1;
  if (v1)
  {
    si_surface_print_data_to_iterm(v1);
  }

  return v2 != 0;
}

BOOL si_surface_print_surface_to_iterm(__IOSurface *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = si_surface_png_representation(a1);
  v2 = v1;
  v3 = v1 != 0;
  if (v1)
  {
    si_surface_print_data_to_iterm(v1);
  }

  return v3;
}

uint64_t si_surface_save_raw_png_to_url(__IOSurface *a1, uint64_t a2)
{
  v3 = si_surface_png_representation(a1);
  v4 = [v3 writeToURL:a2 atomically:0];

  return v4;
}

void sub_21DE3CB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SIVisualLogger;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21DE3D47C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v4);

  _Unwind_Resume(a1);
}

void sub_21DE3D9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void sub_21DE3DBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_21DE3DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_21DE3E018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_21DE3E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

void sub_21DE3E6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_21DE3E8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<char const*,VZSubLogger *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,VZSubLogger *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,VZSubLogger *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const*&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__shared_ptr_pointer<VZFileExportOptions *,anonymous namespace::Ref<VZFileExportOptions *>::Ref(VZFileExportOptions *,anonymous namespace::FromCreateTag)::{lambda(VZFileExportOptions *)#1},std::allocator<VZFileExportOptions>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D4C450);
}

uint64_t std::__shared_ptr_pointer<VZFileExportOptions *,anonymous namespace::Ref<VZFileExportOptions *>::Ref(VZFileExportOptions *,anonymous namespace::FromCreateTag)::{lambda(VZFileExportOptions *)#1},std::allocator<VZFileExportOptions>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_ptr_pointer<VZLogMessageFilter *,anonymous namespace::Ref<VZLogMessageFilter *>::Ref(VZLogMessageFilter *,anonymous namespace::FromCreateTag)::{lambda(VZLogMessageFilter *)#1},std::allocator<VZLogMessageFilter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D4C450);
}

uint64_t std::__shared_ptr_pointer<VZLogMessageFilter *,anonymous namespace::Ref<VZLogMessageFilter *>::Ref(VZLogMessageFilter *,anonymous namespace::FromCreateTag)::{lambda(VZLogMessageFilter *)#1},std::allocator<VZLogMessageFilter>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<VZClientOptions *,anonymous namespace::Ref<VZClientOptions *>::Ref(VZClientOptions *,anonymous namespace::FromCreateTag)::{lambda(VZClientOptions *)#1},std::allocator<VZClientOptions>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D4C450);
}

uint64_t std::__shared_ptr_pointer<VZClientOptions *,anonymous namespace::Ref<VZClientOptions *>::Ref(VZClientOptions *,anonymous namespace::FromCreateTag)::{lambda(VZClientOptions *)#1},std::allocator<VZClientOptions>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<VZDataInfo *,anonymous namespace::Ref<VZDataInfo *>::Ref(VZDataInfo *,anonymous namespace::FromCreateTag)::{lambda(VZDataInfo *)#1},std::allocator<VZDataInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D4C450);
}

uint64_t std::__shared_ptr_pointer<VZDataInfo *,anonymous namespace::Ref<VZDataInfo *>::Ref(VZDataInfo *,anonymous namespace::FromCreateTag)::{lambda(VZDataInfo *)#1},std::allocator<VZDataInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<VZDataInfo const*,anonymous namespace::Ref<VZDataInfo const*>::Ref(VZDataInfo const*,anonymous namespace::FromCreateTag)::{lambda(VZDataInfo const*)#1},std::allocator<VZDataInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D4C450);
}

uint64_t std::__shared_ptr_pointer<VZDataInfo const*,anonymous namespace::Ref<VZDataInfo const*>::Ref(VZDataInfo const*,anonymous namespace::FromCreateTag)::{lambda(VZDataInfo const*)#1},std::allocator<VZDataInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<VZData const*,anonymous namespace::Ref<VZData const*>::Ref(VZData const*,anonymous namespace::FromCreateTag)::{lambda(VZData const*)#1},std::allocator<VZData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223D4C450);
}

uint64_t std::__shared_ptr_pointer<VZData const*,anonymous namespace::Ref<VZData const*>::Ref(VZData const*,anonymous namespace::FromCreateTag)::{lambda(VZData const*)#1},std::allocator<VZData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id SISimdFloat3ToArray(__n128 a1)
{
  v1 = objc_alloc(MEMORY[0x277CBEA60]);
  v2 = [MEMORY[0x277CCABB0] numberWithFloat:a1.n128_f64[0]];
  HIDWORD(v3) = a1.n128_u32[1];
  LODWORD(v3) = a1.n128_u32[1];
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v6 = [v1 initWithObjects:{v2, v4, v5, 0}];

  return v6;
}

id SISimdFloat4ToArray(__n128 a1)
{
  v1 = objc_alloc(MEMORY[0x277CBEA60]);
  v2 = [MEMORY[0x277CCABB0] numberWithFloat:a1.n128_f64[0]];
  HIDWORD(v3) = a1.n128_u32[1];
  LODWORD(v3) = a1.n128_u32[1];
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  v7 = [v1 initWithObjects:{v2, v4, v5, v6, 0}];

  return v7;
}

id SISimdFloat3x3ToArray(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:a1.n128_f64[0]];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  HIDWORD(v7) = a1.n128_u32[1];
  LODWORD(v7) = a1.n128_u32[1];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  HIDWORD(v9) = a2.n128_u32[1];
  LODWORD(v9) = a2.n128_u32[1];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  HIDWORD(v11) = a3.n128_u32[1];
  LODWORD(v11) = a3.n128_u32[1];
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v16 = [v3 initWithObjects:{v4, v5, v6, v8, v10, v12, v13, v14, v15, 0}];

  return v16;
}

id SISimdFloat4x4ToArray(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:a1.n128_f64[0]];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  HIDWORD(v8) = a1.n128_u32[1];
  LODWORD(v8) = a1.n128_u32[1];
  v29 = v7;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  HIDWORD(v10) = a2.n128_u32[1];
  LODWORD(v10) = a2.n128_u32[1];
  v28 = v9;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  HIDWORD(v12) = a3.n128_u32[1];
  LODWORD(v12) = a3.n128_u32[1];
  v27 = v11;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  HIDWORD(v14) = a4.n128_u32[1];
  LODWORD(v14) = a4.n128_u32[1];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v20 = v4;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[3]))}];
  a1.n128_u64[0] = v15 = v13;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  v33 = [v20 initWithObjects:{v25, v5, v6, v29, v28, v27, v15, v24, v23, v26, v22, v21, a1.n128_u64[0], v16, v17, v18, 0}];

  return v33;
}

void sub_21DE3F91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33)
{
  *(v37 - 128) = v33;

  _Unwind_Resume(a1);
}

uint64_t SISimdFloat4x4Hash(double a1, double a2, __n128 a3, __n128 a4)
{
  v4 = 0;
  v7[2] = a3;
  v7[3] = a4;
  result = 2166136261;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      result = 16777619 * (result ^ *(&v7[i] + (v4 & 3)));
    }

    ++v4;
  }

  while (v4 != 4);
  return result;
}

uint64_t SIMatrix4x4ContainsNANValues(double a1, double a2, __n128 a3, __n128 a4)
{
  v4 = 0;
  v8[2] = a3;
  v8[3] = a4;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v6 = *(&v8[i] + (v4 & 3));
    }

    ++v4;
  }

  while (v4 != 4);
  return 0;
}

uint64_t SIMatrix3x3ContainsNANValues(double a1, double a2, __n128 a3)
{
  v3 = 0;
  v7[2] = a3;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v5 = *(&v7[i] + (v3 & 3));
    }

    ++v3;
  }

  while (v3 != 3);
  return 0;
}

uint64_t SIMatrix4x4IsZero(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4.i64[0] = 0x3400000034000000;
  v4.i64[1] = 0x3400000034000000;
  return vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v4, vabsq_f32(a1)), vcgeq_f32(v4, vabsq_f32(a2))), vandq_s8(vcgeq_f32(v4, vabsq_f32(a3)), vcgeq_f32(v4, vabsq_f32(a4))))) >> 31;
}

uint64_t SIMatrix3x3IsZero(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3.i64[0] = 0x3400000034000000;
  v3.i64[1] = 0x3400000034000000;
  v4 = vandq_s8(vandq_s8(vcgeq_f32(v3, vabsq_f32(a1)), vcgeq_f32(v3, vabsq_f32(a2))), vcgeq_f32(v3, vabsq_f32(a3)));
  v4.i32[3] = v4.i32[2];
  return vminvq_u32(v4) >> 31;
}

id SISimdFloat3x3ToFixedPoint16Array(char a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (1 << a1);
  v5.i64[0] = vtrn1q_s32(a2, a3).u64[0];
  v6 = vuzp1q_s32(vuzp2q_s32(a3, a4), a3);
  v5.i64[1] = __PAIR64__(a2.u32[1], a4.u32[0]);
  v6.i32[2] = a2.i32[2];
  v10 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v5, v4)), vcvtq_s32_f32(vmulq_n_f32(v6, v4)));
  v11 = vmuls_lane_f32(v4, a4, 2);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:18];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

__n64 SISimdFloat3x3FromFixedPoint16Array(void *a1, char a2)
{
  v3 = [a1 bytes];
  v4 = (1 << a2);
  result.n64_f32[0] = *v3 / v4;
  v5 = v3[1] / v4;
  v6 = v3[2] / v4;
  v7 = v3[4] / v4;
  v8 = v3[5] / v4;
  v9 = v3[6] / v4;
  v10 = v3[7] / v4;
  result.n64_f32[1] = v3[3] / v4;
  v12 = v3[8] / v4;
  return result;
}

__n128 SISimdFloat3FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v11 = v3;
  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v10 = v5;
  v6 = [v1 objectAtIndexedSubscript:2];
  [v6 floatValue];
  v9 = v7;

  result.n128_u32[0] = v11;
  result.n128_u32[1] = v10;
  result.n128_u32[2] = v9;
  return result;
}

void sub_21DE3FE28(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__n128 SISimdFloat4FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v14 = v3;
  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v13 = v5;
  v6 = [v1 objectAtIndexedSubscript:2];
  [v6 floatValue];
  v12 = v7;
  v8 = [v1 objectAtIndexedSubscript:3];
  [v8 floatValue];
  *&v9 = __PAIR64__(v13, v14);
  *(&v9 + 1) = __PAIR64__(v10, v12);
  v15 = v9;

  return v15;
}

void sub_21DE3FF34(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

__n128 SISimdFloat3x3FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 3}];
  v8 = SISimdFloat3FromArray(v2);
  v3 = [v1 subarrayWithRange:{3, 3}];
  v7 = SISimdFloat3FromArray(v3);
  v4 = [v1 subarrayWithRange:{6, 3}];
  v6 = SISimdFloat3FromArray(v4).n128_u32[0];

  result.n128_u64[0] = vzip1q_s32(v8, v7).u64[0];
  result.n128_u32[2] = v6;
  return result;
}

void sub_21DE40040(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__n128 SISimdFloat4x4FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 subarrayWithRange:{0, 4}];
  v9 = SISimdFloat4FromArray(v2);
  v3 = [v1 subarrayWithRange:{4, 4}];
  v8 = SISimdFloat4FromArray(v3);
  v4 = [v1 subarrayWithRange:{8, 4}];
  v7 = SISimdFloat4FromArray(v4);
  v5 = [v1 subarrayWithRange:{12, 4}];
  v10 = vzip1q_s32(vzip1q_s32(v9, v7), vzip1q_s32(v8, SISimdFloat4FromArray(v5)));

  return v10;
}

void sub_21DE40178(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

__n128 SISimdFloat4x4Translation()
{
  __asm { FMOV            V3.4S, #1.0 }

  result = *MEMORY[0x277D860B8];
  v6 = *(MEMORY[0x277D860B8] + 16);
  v7 = *(MEMORY[0x277D860B8] + 32);
  return result;
}

__CVBuffer *SICreateProbabilityFP16ColorizedResult(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v4 = SICreateCVPixelBuffer(Width, Height, 0x18u, 1);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(v4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v6 = CVPixelBufferGetBaseAddress(v4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBytesPerRow(v4);
  if (Height >= 1)
  {
    v9 = 0;
    do
    {
      if (Width >= 1)
      {
        v10 = &v6[v8 * v9];
        v11 = Width & 0x7FFFFFFF;
        v12 = BaseAddress;
        do
        {
          v13 = *v12++;
          _H0 = v13;
          __asm { FCVT            S0, H0 }

          v20 = (_S0 * 255.0);
          *v10 = v20;
          v10[1] = v20;
          v10[2] = v20;
          v10 += 3;
          --v11;
        }

        while (v11);
      }

      ++v9;
      BaseAddress += 2 * (BytesPerRow >> 1);
    }

    while (v9 != (Height & 0x7FFFFFFF));
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(v4, 0);
  return v4;
}

__CVBuffer *SICreateProbabilityColorizedResult(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v4 = SICreateCVPixelBuffer(Width, Height, 0x18u, 1);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(v4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v6 = CVPixelBufferGetBaseAddress(v4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBytesPerRow(v4);
  if (Height >= 1)
  {
    v9 = 0;
    do
    {
      if (Width >= 1)
      {
        v10 = &v6[v8 * v9];
        v11 = Width & 0x7FFFFFFF;
        v12 = BaseAddress;
        do
        {
          v13 = *v12++;
          v14 = (v13 * 255.0);
          *v10 = v14;
          v10[1] = v14;
          v10[2] = v14;
          v10 += 3;
          --v11;
        }

        while (v11);
      }

      ++v9;
      BaseAddress += BytesPerRow >> 2;
    }

    while (v9 != (Height & 0x7FFFFFFF));
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(v4, 0);
  return v4;
}

__CVBuffer *SICreateMaterialSegmentationColorizedResult(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v4 = SICreateCVPixelBuffer(Width, Height, 0x18u, 1);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(v4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v21 = CVPixelBufferGetBaseAddress(v4);
  pixelBuffer = a1;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v18 = v4;
  v20 = CVPixelBufferGetBytesPerRow(v4);
  if (Height >= 1)
  {
    v7 = 0;
    v8 = Height & 0x7FFFFFFF;
    do
    {
      if (Width >= 1)
      {
        v9 = &v21[v20 * v7];
        v10 = Width & 0x7FFFFFFF;
        v11 = BaseAddress;
        do
        {
          v12 = *v11++;
          v13 = SIGetMaterialColorByLabel(v12);
          v14 = [v13 objectAtIndexedSubscript:2];
          *v9 = [v14 charValue];

          v15 = [v13 objectAtIndexedSubscript:1];
          v9[1] = [v15 charValue];

          v16 = [v13 objectAtIndexedSubscript:0];
          v9[2] = [v16 charValue];

          v9 += 3;
          --v10;
        }

        while (v10);
      }

      ++v7;
      BaseAddress += BytesPerRow;
    }

    while (v7 != v8);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(v18, 0);
  return v18;
}

__CVBuffer *SICreateSemanticColorizedResult(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v4 = SICreateCVPixelBuffer(Width, Height, 0x18u, 1);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(v4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v21 = CVPixelBufferGetBaseAddress(v4);
  pixelBuffer = a1;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v18 = v4;
  v20 = CVPixelBufferGetBytesPerRow(v4);
  if (Height >= 1)
  {
    v7 = 0;
    v8 = Height & 0x7FFFFFFF;
    do
    {
      if (Width >= 1)
      {
        v9 = &v21[v20 * v7];
        v10 = Width & 0x7FFFFFFF;
        v11 = BaseAddress;
        do
        {
          v12 = *v11++;
          v13 = SIGetSemanticColorByLabel(v12);
          v14 = [v13 objectAtIndexedSubscript:0];
          *v9 = [v14 charValue];

          v15 = [v13 objectAtIndexedSubscript:1];
          v9[1] = [v15 charValue];

          v16 = [v13 objectAtIndexedSubscript:2];
          v9[2] = [v16 charValue];

          v9 += 3;
          --v10;
        }

        while (v10);
      }

      ++v7;
      BaseAddress += BytesPerRow;
    }

    while (v7 != v8);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(v18, 0);
  return v18;
}

uint64_t SIGetCameraOrientationFromExtrinsic(uint64_t a1)
{
  v2 = *(a1 + 32);
  LODWORD(v3) = HIDWORD(*(a1 + 32));
  if (v3 >= 1.0)
  {
    v4 = atan2f(-*(a1 + 8), -*(a1 + 24));
  }

  else if (v3 <= -1.0)
  {
    v4 = atan2f(*(a1 + 8), *(a1 + 24));
  }

  else
  {
    v10 = *(a1 + 32);
    asinf(-v3);
    atan2f(*&v10, *(&v10 + 2));
    v4 = atan2f(*(a1 + 4), *(a1 + 20));
  }

  v5 = v4 * 57.2957795;
  if (v5 > -45.0 && v5 <= 45.0)
  {
    return 0;
  }

  if (v5 > -135.0 && v5 <= -45.0)
  {
    return 1;
  }

  if (v5 > 135.0 || v5 <= 45.0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

vImage_Error SIFloat32ToFloat16(void *a1, void *a2, vImagePixelCount a3)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v4.data = a2;
  v4.height = 1;
  v4.width = a3;
  v4.rowBytes = 2 * (a3 & 0x3FFFFFFFFFFFFFFFLL);
  return vImageConvert_PlanarFtoPlanar16F(&src, &v4, 0);
}

vImage_Error SIFloat16ToFloat32(void *a1, void *a2, vImagePixelCount a3)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 2 * (a3 & 0x3FFFFFFFFFFFFFFFLL);
  v4.data = a2;
  v4.height = 1;
  v4.width = a3;
  v4.rowBytes = 4 * a3;
  return vImageConvert_Planar16FtoPlanarF(&src, &v4, 0);
}

id createE5RTException(uint64_t a1, uint64_t a2)
{
  v2 = createE5RTExceptionMessage(a1, a2);
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"E5RTRegressorFailure" reason:v2 userInfo:0];

  return v3;
}

id createE5RTExceptionMessage(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s:%d - %s", a1, a2, e5rt_get_last_error_message()];

  return v2;
}

id SIGetSemanticColorByLabel(unsigned int a1)
{
  if (a1 == 255)
  {
    v2 = &unk_282F35E10;
  }

  else
  {
    if ([&unk_282F35B70 count] <= a1)
    {
      v2 = &unk_282F35E10;
    }

    else
    {
      v2 = [&unk_282F35B70 objectAtIndexedSubscript:a1];
    }
  }

  return v2;
}

id SIGetMaterialColorByLabel(unsigned int a1)
{
  if (a1 == 255)
  {
    v2 = &unk_282F35E28;
  }

  else
  {
    if ([&unk_282F35DF8 count] <= a1)
    {
      v2 = &unk_282F35E28;
    }

    else
    {
      v2 = [&unk_282F35DF8 objectAtIndexedSubscript:a1];
    }
  }

  return v2;
}

uint64_t SIVLIsSubloggerEnabled(void *a1)
{
  v1 = a1;
  v2 = +[SIVisualLogger sharedLogger];
  v3 = [v2 isLoggerEnabled:v1];

  return v3;
}

uint64_t SIVLLogPixelBuffer(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[SIVisualLogger sharedLogger];
  v10 = [v9 isLoggerEnabled:v7];

  if (v10)
  {
    v11 = +[SIVisualLogger sharedLogger];
    v12 = [v11 logPixelBuffer:a1 at:v7 sublogger:v8 name:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t SIVLLogSurface(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = +[SIVisualLogger sharedLogger];
  v11 = [v10 isLoggerEnabled:v8];

  if (v11)
  {
    v12 = +[SIVisualLogger sharedLogger];
    v13 = [v12 logIOSurface:objc_msgSend(v7 at:"ioSurface") sublogger:v8 name:{v9, a4}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t SIVLLogDictionary(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = +[SIVisualLogger sharedLogger];
  v11 = [v10 isLoggerEnabled:v8];

  if (v11)
  {
    v12 = +[SIVisualLogger sharedLogger];
    v13 = [v12 logDictionary:v7 at:v8 sublogger:v9 name:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t SIVLLogNumber(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = +[SIVisualLogger sharedLogger];
  v11 = [v10 isLoggerEnabled:v8];

  if (v11)
  {
    v12 = +[SIVisualLogger sharedLogger];
    v13 = [v12 logNumber:v7 at:v8 sublogger:v9 name:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void SIVLRegisterSubloggers(void *a1)
{
  v1 = a1;
  v2 = +[SIVisualLogger sharedLogger];
  [v2 registerSubloggers:v1];
}

void sub_21DE447E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void (*a12)(char *))
{
  a12(&a10);

  _Unwind_Resume(a1);
}

id SIPixelFormatToStr(int a1)
{
  v3[0] = HIBYTE(a1);
  v3[1] = BYTE2(a1);
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v3[4] = 0;
  v1 = [MEMORY[0x277CCACA8] stringWithCString:v3 encoding:1];

  return v1;
}

void sub_21DE44904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SIPixelBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t SIBytesPerElementForPlanarPixelFormat(int a1, uint64_t a2)
{
  if (a1 <= 875704949)
  {
    if (a1 == 875704422 || a1 == 875704438)
    {
      goto LABEL_12;
    }

    v3 = 875704934;
  }

  else
  {
    if (a1 > 875836533)
    {
      if (a1 == 1919365992)
      {
        return 2;
      }

      v2 = 13430;
    }

    else
    {
      if (a1 == 875704950)
      {
        goto LABEL_12;
      }

      v2 = 13414;
    }

    v3 = v2 | 0x34340000;
  }

  if (a1 != v3)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (a2)
  {
    if (a2 == 1)
    {
      return 2;
    }

LABEL_16:
    SIBytesPerElementForPlanarPixelFormat_cold_1();
  }

  return 1;
}

uint64_t SIBytesPerElementForPixelFormat(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 <= 1278226535)
  {
    if (a1 <= 1094862673)
    {
      if (a1 <= 842285638)
      {
        if (a1 != 24)
        {
          if (a1 != 32)
          {
            goto LABEL_32;
          }

          goto LABEL_25;
        }

LABEL_30:
        result = 3;
        goto LABEL_36;
      }

      if (a1 == 842285639)
      {
        goto LABEL_30;
      }

      v1 = 843264056;
LABEL_28:
      if (a1 == v1)
      {
        goto LABEL_29;
      }

LABEL_32:
      v4 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = 136380931;
        v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v8 = 1025;
        v9 = 199;
        _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Unsupported pixel format. Set byte per element as 1 as default ***", &v6, 0x12u);
      }

      goto LABEL_35;
    }

    if (a1 > 1278226487)
    {
      if (a1 == 1278226488)
      {
LABEL_35:
        result = 1;
        goto LABEL_36;
      }

      v2 = 1278226534;
    }

    else
    {
      if (a1 == 1094862674)
      {
        goto LABEL_25;
      }

      v2 = 1111970369;
    }

LABEL_24:
    if (a1 != v2)
    {
      goto LABEL_32;
    }

LABEL_25:
    result = 4;
    goto LABEL_36;
  }

  if (a1 > 1380411456)
  {
    if (a1 <= 1751410031)
    {
      if (a1 == 1380411457)
      {
        result = 8;
        goto LABEL_36;
      }

      v2 = 1717855600;
      goto LABEL_24;
    }

    if (a1 != 1751410032)
    {
      v1 = 1919365992;
      goto LABEL_28;
    }

LABEL_29:
    result = 2;
    goto LABEL_36;
  }

  if (a1 <= 1380401728)
  {
    if (a1 != 1278226536)
    {
      v1 = 1278226742;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (a1 == 1380401729)
  {
    goto LABEL_25;
  }

  if (a1 != 1380410945)
  {
    goto LABEL_32;
  }

  result = 16;
LABEL_36:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIHorizontalSubsamplingForPlanarPixelFormat(int a1, uint64_t a2)
{
  if (a1 <= 875704949)
  {
    if (a1 != 875704422 && a1 != 875704438 && a1 != 875704934)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  result = 1;
  if (a1 <= 875836533)
  {
    if (a1 != 875704950)
    {
      v4 = 875836518;
      goto LABEL_13;
    }

LABEL_8:
    if (!a2)
    {
      return 1;
    }

    if (a2 == 1)
    {
      return 2;
    }

LABEL_16:
    SIHorizontalSubsamplingForPlanarPixelFormat_cold_1();
  }

  if (a1 == 875836534)
  {
    return result;
  }

  v4 = 1919365992;
LABEL_13:
  if (a1 != v4)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t SIVerticalSubsamplingForPlanarPixelFormat(int a1, uint64_t a2)
{
  result = 1;
  if (a1 <= 875704949)
  {
    if (a1 == 875704422 || a1 == 875704438)
    {
      if (!a2)
      {
        return 1;
      }

      if (a2 == 1)
      {
        return 2;
      }

LABEL_16:
      SIVerticalSubsamplingForPlanarPixelFormat_cold_1();
    }

    v4 = 875704934;
  }

  else if (a1 > 875836533)
  {
    if (a1 == 875836534)
    {
      return result;
    }

    v4 = 1919365992;
  }

  else
  {
    if (a1 == 875704950)
    {
      return result;
    }

    v4 = 875836518;
  }

  if (a1 != v4)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t SIPlaneCountForPixelFormat(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 <= 875836533)
  {
    if (a1 <= 875704421)
    {
      if (a1 <= 842285638)
      {
        if (a1 == 24 || a1 == 32)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (a1 == 842285639)
      {
        goto LABEL_33;
      }

      v3 = 843264056;
      goto LABEL_24;
    }

    if (a1 <= 875704933)
    {
      if (a1 == 875704422)
      {
        goto LABEL_32;
      }

      v4 = 875704438;
    }

    else
    {
      if (a1 == 875704934 || a1 == 875704950)
      {
        goto LABEL_32;
      }

      v4 = 875836518;
    }

    if (a1 == v4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a1 <= 1278226741)
    {
      if (a1 > 1278226487)
      {
        if ((a1 - 1278226488) <= 0x30 && ((1 << (a1 - 56)) & 0x1400000000001) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (a1 != 875836534)
      {
        if (a1 == 1094862674)
        {
          goto LABEL_33;
        }

        v3 = 1111970369;
        goto LABEL_24;
      }

LABEL_32:
      result = 2;
      goto LABEL_33;
    }

    if (a1 <= 1380411456)
    {
      if (a1 == 1278226742)
      {
        goto LABEL_33;
      }

      v3 = 1380401729;
LABEL_24:
      if (a1 == v3)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (a1 == 1380411457)
    {
      goto LABEL_33;
    }

    if (a1 == 1919365992)
    {
      result = 3;
      goto LABEL_33;
    }
  }

LABEL_34:
  v6 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = SIPixelFormatToStr(a1);
    v8 = 136381187;
    v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
    v10 = 1025;
    v11 = 292;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Cannot determine numPlanes for PixelFormat: %@ ***", &v8, 0x1Cu);
  }

  result = 0;
LABEL_33:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIChannelCountForPixelFormat(int a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 <= 1094862673)
  {
    if (a1 <= 843264309)
    {
      if (a1 <= 843264055)
      {
        if (a1 == 24)
        {
          goto LABEL_46;
        }

        if (a1 == 32)
        {
          goto LABEL_36;
        }

        v5 = 842285639;
LABEL_45:
        if (a1 != v5)
        {
          goto LABEL_48;
        }

LABEL_46:
        result = 3;
        goto LABEL_47;
      }

      if ((a1 - 843264056) > 0x30 || ((1 << (a1 - 56)) & 0x1400000000001) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (a1 > 875704933)
      {
        if (a1 > 875836517)
        {
          if (a1 == 875836518)
          {
            goto LABEL_40;
          }

          v6 = 875836534;
LABEL_39:
          if (a1 != v6)
          {
            goto LABEL_48;
          }

LABEL_40:
          v7 = __SceneIntelligenceLogSharedInstance();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v8 = SIPixelFormatToStr(a1);
            v11 = 136381187;
            v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
            v13 = 1025;
            v14 = 331;
            v15 = 2112;
            v16 = v8;
            _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Channels is not well defined for YUV format: %@ ***", &v11, 0x1Cu);
          }

          goto LABEL_42;
        }

        if (a1 == 875704934)
        {
          goto LABEL_40;
        }

        v4 = 12918;
LABEL_28:
        v6 = v4 | 0x34320000;
        goto LABEL_39;
      }

      if (a1 != 843264310)
      {
        if (a1 == 875704422)
        {
          goto LABEL_40;
        }

        v4 = 12406;
        goto LABEL_28;
      }
    }

    result = 2;
    goto LABEL_47;
  }

  result = 1;
  if (a1 > 1380410944)
  {
    if (a1 <= 1647719520)
    {
      if (a1 == 1380410945 || a1 == 1380411457)
      {
        goto LABEL_36;
      }

      v5 = 1647589490;
    }

    else
    {
      if (a1 <= 1751410031)
      {
        if (a1 == 1647719521)
        {
          goto LABEL_36;
        }

        if (a1 == 1717855600)
        {
          goto LABEL_47;
        }

LABEL_48:
        v7 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = SIPixelFormatToStr(a1);
          v11 = 136381187;
          v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
          v13 = 1025;
          v14 = 336;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Cannot determine numChannels for PixelFormat: %@ ***", &v11, 0x1Cu);
        }

LABEL_42:

        result = 0;
        goto LABEL_47;
      }

      if (a1 == 1751410032)
      {
        goto LABEL_47;
      }

      v5 = 1919365992;
    }

    goto LABEL_45;
  }

  if (a1 <= 1278226487)
  {
    if (a1 != 1094862674)
    {
      v3 = 1111970369;
LABEL_35:
      if (a1 == v3)
      {
        goto LABEL_36;
      }

      goto LABEL_48;
    }

LABEL_36:
    result = 4;
    goto LABEL_47;
  }

  if (((a1 - 1278226488) > 0x30 || ((1 << (a1 - 56)) & 0x1400000000001) == 0) && a1 != 1278226742)
  {
    v3 = 1380401729;
    goto LABEL_35;
  }

LABEL_47:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIPixelBufferHasSameAttr(__CVBuffer *a1, __CVBuffer *a2)
{
  v4 = CVPixelBufferGetIOSurface(a1) != 0;
  v5 = CVPixelBufferGetIOSurface(a2) == 0;
  Width = CVPixelBufferGetWidth(a1);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(a1);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    return 0;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    return 0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  return (BytesPerRow == CVPixelBufferGetBytesPerRow(a2)) & (v4 ^ v5);
}

void SIAddCVPixelBufferAttributesForCustomStride(int a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
    if (a1 == 875836518)
      v6 = {;
      v11[0] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2 * a2];
      v11[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
      [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC4D98]];
    }

    else
      v9 = {;
      [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CC4D60]];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_21DE45694(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

CVPixelBufferRef SICreateCVPixelBufferWithCustomStride(size_t a1, size_t a2, OSType a3, uint64_t a4, int a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = v10;
  if (a5)
  {
    [v10 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
  }

  SIAddCVPixelBufferAttributesForCustomStride(a3, a4, v11);
  pixelBufferOut = 0;
  v12 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], a1, a2, a3, v11, &pixelBufferOut);
  if (v12)
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = SIPixelFormatToStr(a3);
      *buf = 136381955;
      v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v21 = 1025;
      v22 = 399;
      v23 = 2048;
      v24 = a1;
      v25 = 2048;
      v26 = a2;
      v27 = 2112;
      v28 = v14;
      v29 = 1024;
      v30 = v12;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not create pixel buffer (%zu x %zu) with format %@.  Error: %d ***", buf, 0x36u);
    }

    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t SIPixelBufferPoolCreate(uint64_t a1, uint64_t a2, uint64_t a3, CVPixelBufferPoolRef *a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v16[0] = MEMORY[0x277CBEC10];
  v7 = *MEMORY[0x277CC4EC8];
  v15[0] = *MEMORY[0x277CC4DE8];
  v15[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v16[1] = v8;
  v15[2] = *MEMORY[0x277CC4DD8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v16[2] = v9;
  v15[3] = *MEMORY[0x277CC4E30];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  v16[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  *a4 = 0;
  v12 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, a4);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t SIPixelBufferPoolCreateWithBytePerRowAlignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CVPixelBufferPoolRef *a5)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v19[0] = MEMORY[0x277CBEC10];
  v9 = *MEMORY[0x277CC4EC8];
  v18[0] = *MEMORY[0x277CC4DE8];
  v18[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v19[1] = v10;
  v18[2] = *MEMORY[0x277CC4DD8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v19[2] = v11;
  v18[3] = *MEMORY[0x277CC4E30];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  v19[3] = v12;
  v18[4] = *MEMORY[0x277CC4D60];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  v19[4] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

  *a5 = 0;
  v15 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v14, a5);

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t SITransferPixelBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  pixelTransferSessionOut = 0;
  if (VTPixelTransferSessionCreate(0, &pixelTransferSessionOut))
  {
    v4 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v12 = 1025;
      v13 = 460;
      v5 = " %{private}s:%{private}d *** Failed to create VTPixelTransferSession ***";
LABEL_7:
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
    }
  }

  else
  {
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]);
    v6 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    if (!v6)
    {
      result = 0;
      goto LABEL_9;
    }

    v4 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v12 = 1025;
      v13 = 469;
      v5 = " %{private}s:%{private}d *** Failed to perform copy via pixel transfer ***";
      goto LABEL_7;
    }
  }

  result = 4294960636;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__CVBuffer *SICreateRGBFromBGRAPixelBuffer(__CVBuffer *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v18 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v25 = 1025;
      v26 = 479;
      _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** unexpected nil input  ***", &v23, 0x12u);
    }

    goto LABEL_15;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1111970369)
  {
    v19 = PixelFormatType;
    v18 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = SIPixelFormatToStr(v19);
      v23 = 136381187;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v25 = 1025;
      v26 = 484;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unexpected pixelFormat: %@ ***", &v23, 0x1Cu);
    }

LABEL_15:

    v5 = 0;
    goto LABEL_16;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v5 = SICreateCVPixelBufferWithCustomStride(Width, Height, 0x18u, 0, 1);
  if (v5)
  {
    v6 = CVPixelBufferGetHeight(a1);
    v7 = CVPixelBufferGetWidth(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v9 = CVPixelBufferGetBytesPerRow(v5);
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(v5, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v11 = CVPixelBufferGetBaseAddress(v5);
    if (v6)
    {
      v12 = 0;
      v13 = v11 + 2;
      v14 = BaseAddress + 1;
      do
      {
        v15 = v14;
        v16 = v13;
        for (i = v7; i; --i)
        {
          *(v16 - 2) = v15[1];
          *(v16 - 1) = *v15;
          *v16 = *(v15 - 1);
          v16 += 3;
          v15 += 4;
        }

        ++v12;
        v13 += v9;
        v14 += BytesPerRow;
      }

      while (v12 != v6);
    }

    CVPixelBufferUnlockBaseAddress(v5, 0);
    CVPixelBufferUnlockBaseAddress(a1, 0);
  }

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

size_t SIWrapCVPixelBufferAsVImage@<X0>(__CVBuffer *a1@<X0>, void **a2@<X8>)
{
  *a2 = CVPixelBufferGetBaseAddress(a1);
  a2[1] = CVPixelBufferGetHeight(a1);
  a2[2] = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetBytesPerRow(a1);
  a2[3] = result;
  return result;
}

size_t SIWrapCVPixelBufferPlaneAsVImage@<X0>(__CVBuffer *a1@<X0>, size_t a2@<X1>, void **a3@<X8>)
{
  *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  a3[1] = CVPixelBufferGetHeightOfPlane(a1, a2);
  a3[2] = CVPixelBufferGetWidthOfPlane(a1, a2);
  result = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  a3[3] = result;
  return result;
}

__CVBuffer *SICreate420vImageFromBuffers(size_t a1, size_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, int a7)
{
  v13 = SICreateCVPixelBufferWithCustomStride(a1, a2, 0x34323076u, 0, a7);
  v14 = v13;
  if (v13)
  {
    CVPixelBufferLockBaseAddress(v13, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v14, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v14, 0);
    if (a2)
    {
      v17 = BytesPerRowOfPlane;
      v18 = a2;
      do
      {
        memcpy(BaseAddressOfPlane, a3, a1);
        a3 += a4;
        BaseAddressOfPlane += v17;
        --v18;
      }

      while (v18);
    }

    v19 = CVPixelBufferGetBaseAddressOfPlane(v14, 1uLL);
    v20 = CVPixelBufferGetBytesPerRowOfPlane(v14, 1uLL);
    if (a2 >= 2)
    {
      v21 = v20;
      v22 = a2 >> 1;
      do
      {
        memcpy(v19, a5, a1);
        a5 += a6;
        v19 += v21;
        --v22;
      }

      while (v22);
    }

    CVPixelBufferUnlockBaseAddress(v14, 0);
  }

  return v14;
}

__CVBuffer *SICreatePackedFloat32ImageFromBuffer(size_t a1, size_t a2, char *a3, uint64_t a4, signed int a5, int a6)
{
  v9 = a2;
  if (a5 <= 1380410944)
  {
    if (a5 == 843264102)
    {
      goto LABEL_8;
    }

    v11 = 1278226534;
  }

  else
  {
    if (a5 == 1380410945 || a5 == 1717855600)
    {
      goto LABEL_8;
    }

    v11 = 1717856627;
  }

  if (a5 != v11)
  {
    SICreatePackedFloat32ImageFromBuffer_cold_1();
  }

LABEL_8:
  v12 = SICreateCVPixelBufferWithCustomStride(a1, a2, a5, 0, a6);
  v13 = v12;
  if (v12)
  {
    v14 = 4;
    if (a5 == 843264102)
    {
      v14 = 2;
    }

    if (a5 == 1717856627)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    if (a5 == 1717855600)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    if (a5 == 1278226534)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    CVPixelBufferLockBaseAddress(v12, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v13);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v13);
    if (v9)
    {
      v20 = BytesPerRow;
      v21 = 4 * v17 * a1;
      do
      {
        memcpy(BaseAddress, a3, v21);
        a3 += a4;
        BaseAddress += v20;
        --v9;
      }

      while (v9);
    }

    CVPixelBufferUnlockBaseAddress(v13, 0);
  }

  return v13;
}

__CVBuffer *SICreatePackedFloat16ImageFromBuffer(size_t a1, size_t a2, char *a3, uint64_t a4, signed int a5, int a6)
{
  v9 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if (a5 <= 1380411456)
  {
    if (a5 == 843264104)
    {
      goto LABEL_8;
    }

    v11 = 1278226536;
  }

  else
  {
    if (a5 == 1380411457 || a5 == 1751410032)
    {
      goto LABEL_8;
    }

    v11 = 1751411059;
  }

  if (a5 != v11)
  {
    SICreatePackedFloat16ImageFromBuffer_cold_1();
  }

LABEL_8:
  v12 = SICreateCVPixelBufferWithCustomStride(a1, a2, a5, 0, a6);
  v13 = v12;
  if (v12)
  {
    v14 = 1;
    if (a5 != 1278226536 && a5 != 1751410032 && a5 != 1751411059)
    {
      if (a5 == 843264104)
      {
        v14 = 2;
      }

      else
      {
        v14 = 4;
      }
    }

    CVPixelBufferLockBaseAddress(v12, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v13);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v13);
    if (v9)
    {
      v17 = BytesPerRow;
      v18 = 2 * v14 * a1;
      do
      {
        memcpy(BaseAddress, a3, v18);
        a3 += a4;
        BaseAddress += v17;
        --v9;
      }

      while (v9);
    }

    CVPixelBufferUnlockBaseAddress(v13, 0);
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 136380931;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v24 = 1025;
      v25 = 691;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create IOSurfaceBackedPackedFloat16Image ***", &v22, 0x12u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

__CVBuffer *SICreate420vTestImage(size_t a1, size_t a2, uint64_t a3, int a4)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v7 = (MEMORY[0x28223BE20])();
  v10 = v54 - v9;
  if (v11)
  {
    v12 = 0;
    v13 = vdupq_n_s64(a1 - 1);
    v14 = v54 - v9;
    do
    {
      if (a1)
      {
        v15 = 15;
        v16 = xmmword_21DECC9D0;
        v17 = xmmword_21DECC9C0;
        v18 = xmmword_21DECC9B0;
        v19 = xmmword_21DECC9A0;
        v20 = xmmword_21DECC990;
        v21 = xmmword_21DECC980;
        v22 = xmmword_21DECC970;
        v23 = xmmword_21DECC960;
        v24 = v12 / v8;
        do
        {
          v25 = vmovn_s64(vcgeq_u64(v13, v16));
          if (vuzp1_s8(vuzp1_s16(v25, *v13.i8), *v13.i8).u8[0])
          {
            if ((((v15 - 15) / v8) + v24))
            {
              v26 = -21;
            }

            else
            {
              v26 = 16;
            }

            v14[v15 - 15] = v26;
          }

          if (vuzp1_s8(vuzp1_s16(v25, *&v13), *&v13).i8[1])
          {
            if ((((v15 - 14) / v8) + v24))
            {
              v27 = -21;
            }

            else
            {
              v27 = 16;
            }

            v14[v15 - 14] = v27;
          }

          v28 = vmovn_s64(vcgeq_u64(v13, v17));
          if (vuzp1_s8(vuzp1_s16(*&v13, v28), *&v13).i8[2])
          {
            if ((((v15 - 13) / v8) + v24))
            {
              v29 = -21;
            }

            else
            {
              v29 = 16;
            }

            v14[v15 - 13] = v29;
          }

          if (vuzp1_s8(vuzp1_s16(*&v13, v28), *&v13).i8[3])
          {
            if ((((v15 - 12) / v8) + v24))
            {
              v30 = -21;
            }

            else
            {
              v30 = 16;
            }

            v14[v15 - 12] = v30;
          }

          v31 = vmovn_s64(vcgeq_u64(v13, v18));
          if (vuzp1_s8(*&v13, vuzp1_s16(v31, *&v13)).i32[1])
          {
            if ((((v15 - 11) / v8) + v24))
            {
              v32 = -21;
            }

            else
            {
              v32 = 16;
            }

            v14[v15 - 11] = v32;
          }

          if (vuzp1_s8(*&v13, vuzp1_s16(v31, *&v13)).i8[5])
          {
            if ((((v15 - 10) / v8) + v24))
            {
              v33 = -21;
            }

            else
            {
              v33 = 16;
            }

            v14[v15 - 10] = v33;
          }

          v34 = vmovn_s64(vcgeq_u64(v13, v19));
          if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, v34)).i8[6])
          {
            if ((((v15 - 9) / v8) + v24))
            {
              v35 = -21;
            }

            else
            {
              v35 = 16;
            }

            v14[v15 - 9] = v35;
          }

          if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, v34)).i8[7])
          {
            if ((((v15 - 8) / v8) + v24))
            {
              v36 = -21;
            }

            else
            {
              v36 = 16;
            }

            v14[v15 - 8] = v36;
          }

          v37 = vmovn_s64(vcgeq_u64(v13, v20));
          if (vuzp1_s8(vuzp1_s16(v37, *v13.i8), *v13.i8).u8[0])
          {
            if ((((v15 - 7) / v8) + v24))
            {
              v38 = -21;
            }

            else
            {
              v38 = 16;
            }

            v14[v15 - 7] = v38;
          }

          if (vuzp1_s8(vuzp1_s16(v37, *&v13), *&v13).i8[1])
          {
            if ((((v15 - 6) / v8) + v24))
            {
              v39 = -21;
            }

            else
            {
              v39 = 16;
            }

            v14[v15 - 6] = v39;
          }

          v40 = vmovn_s64(vcgeq_u64(v13, v21));
          if (vuzp1_s8(vuzp1_s16(*&v13, v40), *&v13).i8[2])
          {
            if ((((v15 - 5) / v8) + v24))
            {
              v41 = -21;
            }

            else
            {
              v41 = 16;
            }

            v14[v15 - 5] = v41;
          }

          if (vuzp1_s8(vuzp1_s16(*&v13, v40), *&v13).i8[3])
          {
            if ((((v15 - 4) / v8) + v24))
            {
              v42 = -21;
            }

            else
            {
              v42 = 16;
            }

            v14[v15 - 4] = v42;
          }

          v43 = vmovn_s64(vcgeq_u64(v13, v22));
          if (vuzp1_s8(*&v13, vuzp1_s16(v43, *&v13)).i32[1])
          {
            if ((((v15 - 3) / v8) + v24))
            {
              v44 = -21;
            }

            else
            {
              v44 = 16;
            }

            v14[v15 - 3] = v44;
          }

          if (vuzp1_s8(*&v13, vuzp1_s16(v43, *&v13)).i8[5])
          {
            if ((((v15 - 2) / v8) + v24))
            {
              v45 = -21;
            }

            else
            {
              v45 = 16;
            }

            v14[v15 - 2] = v45;
          }

          v46 = vmovn_s64(vcgeq_u64(v13, v23));
          if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, v46)).i8[6])
          {
            if ((((v15 - 1) / v8) + v24))
            {
              v47 = -21;
            }

            else
            {
              v47 = 16;
            }

            v14[v15 - 1] = v47;
          }

          if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, v46)).i8[7])
          {
            if (((v15 / v8) + v24))
            {
              v48 = -21;
            }

            else
            {
              v48 = 16;
            }

            v14[v15] = v48;
          }

          v49 = vdupq_n_s64(0x10uLL);
          v18 = vaddq_s64(v18, v49);
          v17 = vaddq_s64(v17, v49);
          v16 = vaddq_s64(v16, v49);
          v19 = vaddq_s64(v19, v49);
          v20 = vaddq_s64(v20, v49);
          v21 = vaddq_s64(v21, v49);
          v22 = vaddq_s64(v22, v49);
          v23 = vaddq_s64(v23, v49);
          v15 += 16;
        }

        while (v15 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0) != 15);
      }

      ++v12;
      v14 += a1;
    }

    while (v12 != a2);
  }

  MEMORY[0x28223BE20](v7);
  v51 = v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v51, 128, v50);
  result = SICreate420vImageFromBuffers(a1, a2, v10, a1, v51, a1, a4);
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

__CVBuffer *SICreateRGBAF32TestImage(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x28223BE20](a1);
  v6 = &v21[-2 * v5];
  v7 = 16 * v1;
  if (v2)
  {
    v8 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v14 = v6;
    do
    {
      if (v1)
      {
        v15 = 0;
        v16 = v8 / v3;
        do
        {
          v17 = _Q0;
          *v17.i32 = (((v15 / v3) + v16) & 1);
          v18 = vzip1q_s32(v17, v17);
          *&v18.i32[2] = (((v15 / v3) + v16) & 1);
          *&v14[16 * v15++] = v18;
        }

        while (v1 != v15);
      }

      ++v8;
      v14 += v7;
    }

    while (v8 != v2);
  }

  result = SICreatePackedFloat32ImageFromBuffer(v1, v2, v6, v7, 1380410945, v4);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIPixelBufferFillBiPlanar(__CVBuffer *a1, int a2, uint8_t a3, uint8_t a4)
{
  if (!a1)
  {
    return 1;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if ((PixelFormatType & 0xFFFFFDEF) != 0x34323066 && (PixelFormatType & 0xFFFFFFEF) != 0x34343466)
  {
    return 2;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  memset(BaseAddressOfPlane, a2, BytesPerRowOfPlane * HeightOfPlane);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  color[0] = a3;
  color[1] = a4;
  dest.data = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  dest.height = v14;
  dest.width = WidthOfPlane;
  dest.rowBytes = v15;
  v16 = vImageBufferFill_CbCr8(&dest, color, 0x10u) != 0;
  CVPixelBufferUnlockBaseAddress(a1, 0);
  return 4 * v16;
}

id mcams3CVPixelBufferProperties()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC4D60];
  v4[0] = *MEMORY[0x277CC4DE8];
  v4[1] = v0;
  v5[0] = MEMORY[0x277CBEC10];
  v5[1] = &unk_282F35150;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id mcams4wCVPixelBufferHandMattingProperties()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC4D98];
  v4[0] = *MEMORY[0x277CC4DE8];
  v4[1] = v0;
  v5[0] = MEMORY[0x277CBEC10];
  v5[1] = &unk_282F35E40;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

__CVBuffer *SICreatePixelBufferWithNewFormatFromExistingBuffer(__CVBuffer *a1, OSType a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = CVPixelBufferGetIOSurface(a1) != 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v7 = SICreateCVPixelBufferWithCustomStride(Width, Height, a2, 0, v4);
  if (SITransferPixelBuffer(a1, v7) == -6660)
  {
    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      v10 = SIPixelFormatToStr(PixelFormatType);
      v11 = CVPixelBufferGetPixelFormatType(v7);
      v12 = SIPixelFormatToStr(v11);
      v15 = 136381443;
      v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v17 = 1025;
      v18 = 839;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create new pixelbuffer from %@ to %@ by VideoToolbox transferSession ***", &v15, 0x26u);
    }

    CVPixelBufferRelease(v7);
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t SIPixelBufferCopy(__CVBuffer *a1, __CVBuffer *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!(a1 | a2))
  {
    v12 = 0;
    goto LABEL_17;
  }

  Width = CVPixelBufferGetWidth(a1);
  v5 = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a1);
  v7 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CVPixelBufferGetPixelFormatType(a1);
      v15 = SIPixelFormatToStr(v14);
      v16 = CVPixelBufferGetPixelFormatType(a2);
      v17 = SIPixelFormatToStr(v16);
      *buf = 136381443;
      v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v64 = 1025;
      v65 = 865;
      v66 = 2113;
      v67 = v15;
      v68 = 2113;
      v69 = v17;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Source and destination buffers must have matching pixelbuffer format (src:%{private}@, dst:%{private}@) ***", buf, 0x26u);
    }

    goto LABEL_16;
  }

  if (Width != v5 || Height != v7)
  {
    v18 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v64 = 1025;
      v65 = 870;
      _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Source and destination buffers must have matching dimensions ***", buf, 0x12u);
    }

LABEL_16:
    v12 = 2;
    goto LABEL_17;
  }

  v9 = CVPixelBufferLockBaseAddress(a1, 0);
  if (v9)
  {
    v10 = v9;
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v64 = 1025;
      v65 = 876;
      v66 = 1024;
      LODWORD(v67) = v10;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Error locking source buffer: %d ***", buf, 0x18u);
    }

    v12 = 4;
    goto LABEL_17;
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v59 = __SIPixelBufferCopy_block_invoke;
  v60 = &__block_descriptor_40_e5_v8__0l;
  v61 = a1;
  v21 = CVPixelBufferLockBaseAddress(a2, 0);
  if (v21)
  {
    v22 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381187;
      v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v64 = 1025;
      v65 = 889;
      v66 = 1024;
      LODWORD(v67) = v21;
      _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Error locking destination buffer: %d ***", buf, 0x18u);
    }

    v12 = 4;
    goto LABEL_53;
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v55 = __SIPixelBufferCopy_block_invoke_43;
  v56 = &__block_descriptor_40_e5_v8__0l;
  v57 = a2;
  IsPlanar = CVPixelBufferIsPlanar(a1);
  v24 = CVPixelBufferIsPlanar(a2);
  if ((IsPlanar != 0) != (v24 != 0))
  {
    v25 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v64 = 1025;
      v65 = 904;
      _os_log_impl(&dword_21DE0D000, v25, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Cannot have planar mismatch between source (planar) and destination (non-planar) ***", buf, 0x12u);
    }

    goto LABEL_26;
  }

  if (!IsPlanar || !v24)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v39 = CVPixelBufferGetBytesPerRow(a2);
    v40 = v39;
    if (BytesPerRow >= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = BytesPerRow;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v43 = CVPixelBufferGetBaseAddress(a2);
    v44 = v43;
    if (BytesPerRow == v40)
    {
      memcpy(v43, BaseAddress, v41 * Height);
    }

    else
    {
      for (; Height; --Height)
      {
        memcpy(v44, BaseAddress, v41);
        v44 += v40;
        BaseAddress += BytesPerRow;
      }
    }

    goto LABEL_51;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount != CVPixelBufferGetPlaneCount(a2))
  {
    v45 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v64 = 1025;
      v65 = 910;
      _os_log_impl(&dword_21DE0D000, v45, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Source and destination buffers must have the same number of planes ***", buf, 0x12u);
    }

LABEL_48:
    v12 = 2;
    goto LABEL_52;
  }

  if (!PlaneCount)
  {
LABEL_51:
    CVBufferPropagateAttachments(a1, a2);
    v12 = 0;
    goto LABEL_52;
  }

  v27 = 0;
  while (1)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, v27);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v27);
    v30 = CVPixelBufferGetWidthOfPlane(a2, v27);
    v31 = CVPixelBufferGetHeightOfPlane(a2, v27);
    if (WidthOfPlane != v30 || HeightOfPlane != v31)
    {
      v46 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v64 = 1025;
        v65 = 923;
        v66 = 2048;
        v67 = v27;
        _os_log_impl(&dword_21DE0D000, v46, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Source and destination buffers match resolution and number of planes but plane %lu within each pixel buffer are different resolutions ***", buf, 0x1Cu);
      }

      goto LABEL_56;
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v27);
    v33 = CVPixelBufferGetBytesPerRowOfPlane(a2, v27);
    v34 = v33 * HeightOfPlane;
    if (BytesPerRowOfPlane * HeightOfPlane != v33 * HeightOfPlane)
    {
      v46 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381699;
        v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v64 = 1025;
        v65 = 934;
        v66 = 2048;
        v67 = v27;
        v68 = 2048;
        v69 = BytesPerRowOfPlane * HeightOfPlane;
        v70 = 2048;
        v71 = v34;
        _os_log_impl(&dword_21DE0D000, v46, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Source and destination buffers match resolution and number of planes but plane %lu within each pixel buffer has a different number of bytes per row (src: %zu, dst: %zu) ***", buf, 0x30u);
      }

LABEL_56:

      goto LABEL_48;
    }

    if (!(BytesPerRowOfPlane % WidthOfPlane))
    {
      break;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, v27);
    v36 = CVPixelBufferGetBaseAddressOfPlane(a1, v27);
    memcpy(BaseAddressOfPlane, v36, BytesPerRowOfPlane * HeightOfPlane);
LABEL_38:
    if (PlaneCount == ++v27)
    {
      goto LABEL_51;
    }
  }

  memset(&src, 0, sizeof(src));
  SIWrapCVPixelBufferPlaneAsVImage(a1, v27, &src.data);
  memset(&dest, 0, sizeof(dest));
  SIWrapCVPixelBufferPlaneAsVImage(a2, v27, &dest.data);
  v37 = vImageCopyBuffer(&src, &dest, BytesPerRowOfPlane / WidthOfPlane, 0x10u);
  if (!v37)
  {
    goto LABEL_38;
  }

  v47 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = CVPixelBufferGetPixelFormatType(a1);
    v49 = SIPixelFormatToStr(v48);
    v50 = CVPixelBufferGetPixelFormatType(a2);
    v51 = SIPixelFormatToStr(v50);
    *buf = 136382979;
    v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
    v64 = 1025;
    v65 = 956;
    v66 = 2048;
    v67 = v37;
    v68 = 2048;
    v69 = v27;
    v70 = 2113;
    v71 = v49;
    v72 = 2049;
    v73 = WidthOfPlane;
    v74 = 2049;
    v75 = HeightOfPlane;
    v76 = 2113;
    v77 = v51;
    v78 = 2049;
    v79 = WidthOfPlane;
    v80 = 2049;
    v81 = HeightOfPlane;
    _os_log_impl(&dword_21DE0D000, v47, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: vImageCopyBuffer error (%zu) for plane %zu copying pixel buffer (format:%{private}@, plane size:%{private}zux%{private}zu) to pixel buffer (format:%{private}@, plane size:%{private}zux%{private}zu) ***", buf, 0x62u);
  }

LABEL_26:
  v12 = 4;
LABEL_52:
  v55(v54);
LABEL_53:
  v59(v58);
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_21DE47824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void (*a21)(char *), uint64_t a22, uint64_t a23, char a24, uint64_t a25, void (*a26)(char *))
{
  a21(&a19);
  a26(&a24);
  _Unwind_Resume(a1);
}

void __SIPixelBufferCopy_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  if (v1)
  {
    v2 = v1;
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136381187;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v7 = 1025;
      v8 = 883;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Error unlocking source buffer: %d ***", &v5, 0x18u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __SIPixelBufferCopy_block_invoke_43(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  if (v1)
  {
    v2 = v1;
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136381187;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v7 = 1025;
      v8 = 896;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopy: Error unlocking destination buffer: %d ***", &v5, 0x18u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t SIPixelBufferCopyRegion(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!(pixelBuffer | a2))
  {
    v28 = 0;
    goto LABEL_32;
  }

  if (!pixelBuffer || !a2)
  {
    if (!pixelBuffer)
    {
      v29 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v68 = 1025;
        v69 = 1003;
        _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: sourceBuffer is NULL ***", buf, 0x12u);
      }
    }

    if (a2)
    {
      goto LABEL_31;
    }

    v27 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v68 = 1025;
      v69 = 1006;
      _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: destinationBuffer is NULL ***", buf, 0x12u);
    }

LABEL_30:

LABEL_31:
    v28 = 1;
    goto LABEL_32;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  v21 = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v23 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v25 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType == v25)
  {
    if (a5 != a9 || a6 != a10)
    {
      v27 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381955;
        v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v68 = 1025;
        v69 = 1026;
        v70 = 2049;
        v71 = a5;
        v72 = 2049;
        v73 = a6;
        v74 = 2049;
        v75 = a9;
        v76 = 2049;
        v77 = a10;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: Source region size (%{private}f x %{private}f) doesn't match destination region size (%{private}f x %{private}f) ***", buf, 0x3Au);
      }

      goto LABEL_30;
    }

    if (a3 < 0.0 || a4 < 0.0 || (a3 + a5 <= Width ? (v26 = a4 + a6 <= Height) : (v26 = 0), !v26))
    {
      v27 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136382467;
        v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v68 = 1025;
        v69 = 1035;
        v70 = 2049;
        v71 = a3;
        v72 = 2049;
        v73 = a4;
        v74 = 2049;
        v75 = a5;
        v76 = 2049;
        v77 = a6;
        v78 = 2049;
        v79 = Width;
        v80 = 2049;
        v81 = Height;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: sourceRegion region (%{private}f, %{private}f, %{private}f, %{private}f) is outside of source image dimensions (%{private}ld x %{private}ld) ***", buf, 0x4Eu);
      }

      goto LABEL_30;
    }

    if (a7 < 0.0 || a8 < 0.0 || a7 + a9 > v21 || a8 + a10 > v23)
    {
      v27 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136382467;
        v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v68 = 1025;
        v69 = 1044;
        v70 = 2049;
        v71 = a7;
        v72 = 2049;
        v73 = a8;
        v74 = 2049;
        v75 = a9;
        v76 = 2049;
        v77 = a10;
        v78 = 2049;
        v79 = v21;
        v80 = 2049;
        v81 = v23;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: destinationRegion region (%{private}f, %{private}f, %{private}f, %{private}f) is outside of destination image dimensions (%{private}ld x %{private}ld) ***", buf, 0x4Eu);
      }

      goto LABEL_30;
    }

    v36 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    if (v36)
    {
      v37 = v36;
      v38 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v68 = 1025;
        v69 = 1050;
        v70 = 1024;
        LODWORD(v71) = v37;
        _os_log_impl(&dword_21DE0D000, v38, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: Error locking source buffer: %d ***", buf, 0x18u);
      }

      v28 = 4;
      goto LABEL_32;
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v63 = __SIPixelBufferCopyRegion_block_invoke;
    v64 = &__block_descriptor_40_e5_v8__0l;
    v65 = pixelBuffer;
    v39 = CVPixelBufferLockBaseAddress(a2, 0);
    if (v39)
    {
      v40 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        v68 = 1025;
        v69 = 1062;
        v70 = 1024;
        LODWORD(v71) = v39;
        _os_log_impl(&dword_21DE0D000, v40, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: Error locking destination buffer: %d ***", buf, 0x18u);
      }

      v28 = 4;
      goto LABEL_63;
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v59 = __SIPixelBufferCopyRegion_block_invoke_44;
    v60 = &__block_descriptor_40_e5_v8__0l;
    v61 = a2;
    if (CVPixelBufferIsPlanar(pixelBuffer))
    {
      PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
      if (PlaneCount)
      {
        v41 = 0;
        while (1)
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v41);
          v43 = CVPixelBufferGetBytesPerRowOfPlane(a2, v41);
          v44 = SIBytesPerElementForPlanarPixelFormat(PixelFormatType, v41);
          v45 = SIHorizontalSubsamplingForPlanarPixelFormat(PixelFormatType, v41);
          v46 = SIVerticalSubsamplingForPlanarPixelFormat(PixelFormatType, v41);
          memset(&src, 0, sizeof(src));
          src.data = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v41) + a4 / v46 * BytesPerRowOfPlane + a3 / v45 * v44;
          src.height = a6 / v46;
          src.width = a5 / v45;
          src.rowBytes = BytesPerRowOfPlane;
          memset(&dest, 0, sizeof(dest));
          dest.data = CVPixelBufferGetBaseAddressOfPlane(a2, v41) + a8 / v46 * v43 + a7 / v45 * v44;
          dest.height = a10 / v46;
          dest.width = a9 / v45;
          dest.rowBytes = v43;
          v47 = vImageCopyBuffer(&src, &dest, v44, 0x10u);
          if (v47)
          {
            break;
          }

          if (PlaneCount == ++v41)
          {
            goto LABEL_58;
          }
        }

        v52 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v54 = SIPixelFormatToStr(PixelFormatType);
          *buf = 136382723;
          v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
          v68 = 1025;
          v69 = 1105;
          v70 = 2048;
          v71 = *&v47;
          v72 = 2048;
          v73 = *&v41;
          v74 = 2113;
          v75 = *&v54;
          v76 = 2049;
          v77 = *&src.width;
          v78 = 2049;
          v79 = src.height;
          v80 = 2049;
          v81 = dest.width;
          v82 = 2049;
          v83 = dest.height;
          _os_log_impl(&dword_21DE0D000, v52, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: vImageCopyBuffer error (%zu) for plane %zu copying pixel buffer (format:%{private}@, plane size:%{private}zux%{private}zu) to pixel buffer (plane size:%{private}zux%{private}zu) ***", buf, 0x58u);
        }

        goto LABEL_61;
      }
    }

    else
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
      v49 = CVPixelBufferGetBytesPerRow(a2);
      v50 = SIBytesPerElementForPixelFormat(PixelFormatType);
      src.data = CVPixelBufferGetBaseAddress(pixelBuffer) + BytesPerRow * a4 + v50 * a3;
      src.height = a6;
      src.width = a5;
      src.rowBytes = BytesPerRow;
      dest.data = CVPixelBufferGetBaseAddress(a2) + v49 * a8 + v50 * a7;
      dest.height = a10;
      dest.width = a9;
      dest.rowBytes = v49;
      v51 = vImageCopyBuffer(&src, &dest, v50, 0x10u);
      if (v51)
      {
        v52 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = SIPixelFormatToStr(PixelFormatType);
          *buf = 136382467;
          v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
          v68 = 1025;
          v69 = 1133;
          v70 = 2048;
          v71 = *&v51;
          v72 = 2113;
          v73 = *&v53;
          v74 = 2049;
          v75 = *&src.width;
          v76 = 2049;
          v77 = *&src.height;
          v78 = 2049;
          v79 = dest.width;
          v80 = 2049;
          v81 = dest.height;
          _os_log_impl(&dword_21DE0D000, v52, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: vImageCopyBuffer error (%zu) copying pixel buffer (format:%{private}@, plane size:%{private}zux%{private}zu) to pixel buffer (size:%{private}zux%{private}zu) ***", buf, 0x4Eu);
        }

LABEL_61:

        v28 = 4;
        goto LABEL_62;
      }
    }

LABEL_58:
    v28 = 0;
LABEL_62:
    v59(v58);
LABEL_63:
    v63(v62);
    goto LABEL_32;
  }

  v30 = v25;
  v31 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = SIPixelFormatToStr(PixelFormatType);
    v33 = SIPixelFormatToStr(v30);
    *buf = 136381443;
    v67 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
    v68 = 1025;
    v69 = 1020;
    v70 = 2113;
    v71 = *&v32;
    v72 = 2113;
    v73 = *&v33;
    _os_log_impl(&dword_21DE0D000, v31, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: Source and destination buffers must have matching pixelbuffer format (src:%{private}@, dst:%{private}@) ***", buf, 0x26u);
  }

  v28 = 2;
LABEL_32:
  v34 = *MEMORY[0x277D85DE8];
  return v28;
}

void sub_21DE48500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void (*a31)(char *), uint64_t a32, uint64_t a33, char a34, uint64_t a35, void (*a36)(char *))
{
  a31(&a29);
  a36(&a34);
  _Unwind_Resume(a1);
}

void __SIPixelBufferCopyRegion_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = CVPixelBufferUnlockBaseAddress(*(a1 + 32), 1uLL);
  if (v1)
  {
    v2 = v1;
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136381187;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v7 = 1025;
      v8 = 1056;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: Error unlocking source buffer: %d ***", &v5, 0x18u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __SIPixelBufferCopyRegion_block_invoke_44(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0);
  if (v1)
  {
    v2 = v1;
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136381187;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v7 = 1025;
      v8 = 1068;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIPixelBufferCopyRegion: Error unlocking destination buffer: %d ***", &v5, 0x18u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t SIGetInputRotateAngleAttrFromLandscapeForOrientation(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_21DECC9E0[a1];
  }
}

uint64_t SIGetOutputRotateAngleAttrToLandscapeForOrientation(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_21DECC9F0[a1];
  }
}

uint64_t SIRotateAndCopyBuffer(__CVBuffer *a1, __CVBuffer *a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType(a2))
  {
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (CVPixelBufferGetPixelFormatType(a1) == 875836518)
    {
      src.data = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
      src.height = CVPixelBufferGetHeightOfPlane(a1, 0);
      src.width = CVPixelBufferGetWidthOfPlane(a1, 0);
      src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      dest.data = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
      dest.height = CVPixelBufferGetHeightOfPlane(a2, 0);
      dest.width = CVPixelBufferGetWidthOfPlane(a2, 0);
      dest.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
      v22.data = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
      v22.height = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
      v22.width = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
      v22.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      v14.data = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
      v14.height = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
      v14.width = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
      v14.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
      if (vImageRotate90_Planar8(&src, &dest, a3, 0, 0x10u))
      {
        v7 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136381187;
          v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
          v18 = 1025;
          v19 = 1200;
          v20 = 1024;
          v21 = a3;
          _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIRotateAndCopyBuffer: Failed to rotate 90*%d degree for YUV planar8 ***", buf, 0x18u);
        }
      }

      if (vImageRotate90_Planar16U(&v22, &v14, a3, 0, 0x10u))
      {
        v8 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136381187;
          v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
          v18 = 1025;
          v19 = 1206;
          v20 = 1024;
          v21 = a3;
          _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIRotateAndCopyBuffer: Failed to rotate 90*%d degree for YUV planar16U ***", buf, 0x18u);
        }
      }

      goto LABEL_24;
    }

    src.data = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    src.height = CVPixelBufferGetHeightOfPlane(a1, 0);
    src.width = CVPixelBufferGetWidthOfPlane(a1, 0);
    src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    dest.data = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
    dest.height = CVPixelBufferGetHeightOfPlane(a2, 0);
    dest.width = CVPixelBufferGetWidthOfPlane(a2, 0);
    dest.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
    if (CVPixelBufferGetPixelFormatType(a1) == 1278226488)
    {
      if (!vImageRotate90_Planar8(&src, &dest, a3, 0, 0x10u))
      {
        goto LABEL_24;
      }

LABEL_19:
      v9 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v22.data) = 136380931;
        *(&v22.data + 4) = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
        WORD2(v22.height) = 1025;
        *(&v22.height + 6) = 1247;
        v10 = " %{private}s:%{private}d *** Failed to rotate buffer. ***";
        p_src = &v22;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (CVPixelBufferGetPixelFormatType(a1) == 1278226536 || CVPixelBufferGetPixelFormatType(a1) == 1751410032)
    {
      if (vImageRotate90_Planar16F(&src, &dest, a3, 0, 0x10u))
      {
        goto LABEL_19;
      }
    }

    else if (vImageRotate90_PlanarF(&src, &dest, a3, 0.0, 0x10u))
    {
      goto LABEL_19;
    }

LABEL_24:
    CVPixelBufferUnlockBaseAddress(a1, 0);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    result = 1;
    goto LABEL_25;
  }

  v9 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(src.data) = 136380931;
    *(&src.data + 4) = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
    WORD2(src.height) = 1025;
    *(&src.height + 6) = 1169;
    v10 = " %{private}s:%{private}d *** [SIRotateAndCopyBuffer] Failed to rotate and copy the buffer: pixelformat mismatch ***";
    p_src = &src;
LABEL_21:
    _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, v10, p_src, 0x12u);
  }

LABEL_22:

  result = 0;
LABEL_25:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

__CVBuffer *SICreateCVPixelBufferFromBinUrlResource(void *a1, void *a2, size_t a3, size_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = [v7 URLForResource:v8 withExtension:@"bin"];
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
  v11 = [v10 bytes];
  v12 = SICreateCVPixelBufferWithCustomStride(a3, a4, 0x4C303066u, 0, 1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v12);
  if (!v11)
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v24 = 136381187;
      v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v26 = 1025;
      v27 = 1272;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** resource %@.bin not found. Make sure this is expected ***", &v24, 0x1Cu);
    }

    goto LABEL_8;
  }

  if ([v10 length] > a4 * a3 * BytesPerRow)
  {
    v14 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = 136381187;
      v25 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v26 = 1025;
      v27 = 1274;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** resource %@.bin cannot be loaded: insufficient pixel buffer size is provided ***", &v24, 0x1Cu);
    }

    v12 = 0;
LABEL_8:

    goto LABEL_16;
  }

  CVPixelBufferLockBaseAddress(v12, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v12);
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (a3)
      {
        v18 = (v11 + 4 * v17);
        v17 += a3;
        v19 = a3;
        v20 = BaseAddress;
        do
        {
          v21 = *v18++;
          *v20++ = v21;
          --v19;
        }

        while (v19);
      }

      ++v16;
      BaseAddress += 4 * a3;
    }

    while (v16 != a4);
  }

  CVPixelBufferUnlockBaseAddress(v12, 0);
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

id SIConvertBGRAUint8ToRGBFloat16(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 pixelFormat] != 1111970369)
  {
    __assert_rtn("SIConvertBGRAUint8ToRGBFloat16", "SIPixelBuffer.mm", 1298, "bgra8uImage.pixelFormat == kCVPixelFormatType_32BGRA");
  }

  v5 = [v3 width];
  v6 = [v3 height];
  v7 = [v3 bytesPerRow];
  v8 = [v4 allocateWithWidth:objc_msgSend(objc_opt_class() height:"alignAllocation:" pixelFormat:6 * v5 * v6), 1, 1278226488];
  v9 = v8;
  if (!v8)
  {
    v12 = "rgb16fImage && Float16 surface allocation failed";
    v13 = 1310;
    goto LABEL_10;
  }

  if (![v8 allocationSize])
  {
    v12 = "rgb16fImage.allocationSize && Float16 surface had zero size";
    v13 = 1311;
LABEL_10:
    __assert_rtn("SIConvertBGRAUint8ToRGBFloat16", "SIPixelBuffer.mm", v13, v12);
  }

  [v9 getMutableBytesWithHandler:&__block_literal_global_4];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __SIConvertBGRAUint8ToRGBFloat16_block_invoke_2;
  v14[3] = &unk_27833C568;
  v10 = v3;
  v15 = v10;
  v16 = v6;
  v17 = v7;
  v18 = 2 * v5;
  v19 = v6 * 2 * v5;
  v20 = v5;
  [v9 getMutableBytesWithHandler:v14];

  return v9;
}

void __SIConvertBGRAUint8ToRGBFloat16_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __SIConvertBGRAUint8ToRGBFloat16_block_invoke_cold_1();
  }
}

uint64_t __SIConvertBGRAUint8ToRGBFloat16_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SIConvertBGRAUint8ToRGBFloat16_block_invoke_3;
  v4[3] = &__block_descriptor_80_e9_v16__0_v8l;
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  return [v2 getMutableBytesWithHandler:v4];
}

void *__SIConvertBGRAUint8ToRGBFloat16_block_invoke_3(void *result, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = result[4];
  v4 = 2;
  do
  {
    if (v3)
    {
      v5 = 0;
      v6 = result[5];
      v7 = result[7];
      v8 = result[9];
      v9 = (result[6] + result[8] * v4);
      v10 = a2;
      do
      {
        v11 = v10;
        v12 = v9;
        for (i = v8; i; --i)
        {
          v14 = *v11;
          v11 += 4;
          _D1 = v14 / 255.0;
          __asm { FCVT            H1, D1 }

          *v12++ = LOWORD(_D1);
        }

        ++v5;
        v9 = (v9 + v7);
        v10 += v6;
      }

      while (v5 != v3);
    }

    ++v2;
    --v4;
    ++a2;
  }

  while (v2 != 3);
  return result;
}

vImage_Error SICGenerateConversion420YpCbCr8BiPlanarFullRangeTo32BGRA(vImage_YpCbCrToARGB *outInfo)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *ymmword_21DECCA00;
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86F0], &v4, outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
  if (result)
  {
    v2 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v7 = 1025;
      v8 = 1350;
      _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SICGenerateConversion420YpCbCr8BiPlanarFullRangeTo32BGRA: Failed to create vImage_YpCbCrToARGB. ***", buf, 0x12u);
    }

    result = 4;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

vImage_Error SICGenerateConversion32BGRATo420YpCbCr8BiPlanarFullRange(vImage_ARGBToYpCbCr *outInfo)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *ymmword_21DECCA00;
  result = vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86D8], &v4, outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
  if (result)
  {
    v2 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v7 = 1025;
      v8 = 1367;
      _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SICGenerateConversion420YpCbCr8BiPlanarFullRangeTo32BGRA: Failed to create vImage_ARGBToYpCbCr. ***", buf, 0x12u);
    }

    result = 4;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIConvertCVPixelBuffer32BGRATo420YpCbCr8BiPlanarFullRange(__CVBuffer *a1, __CVBuffer *a2, const vImage_ARGBToYpCbCr *a3)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v8 = CVPixelBufferGetWidth(a2);
  v9 = CVPixelBufferGetHeight(a2);

  return SIConvertCVPixelBufferRegion32BGRATo420YpCbCr8BiPlanarFullRange(a1, a2, a3, 0.0, 0.0, Width, Height, 0.0, 0.0, v8, v9);
}

uint64_t SIConvertCVPixelBufferRegion32BGRATo420YpCbCr8BiPlanarFullRange(__CVBuffer *a1, __CVBuffer *a2, const vImage_ARGBToYpCbCr *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v63 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1111970369)
  {
    v29 = PixelFormatType;
    v30 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = SIPixelFormatToStr(v29);
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1492;
      *&buf[18] = 2112;
      *&buf[20] = v31;
      _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBuffer32BGRATo420YpCbCr8BiPlanarFullRange: Unsupported input format %@ ***", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

  v23 = CVPixelBufferGetPixelFormatType(a2);
  if (v23 != 875704422)
  {
    v32 = v23;
    v30 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = SIPixelFormatToStr(v32);
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1497;
      *&buf[18] = 2112;
      *&buf[20] = v33;
      _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBuffer32BGRATo420YpCbCr8BiPlanarFullRange: Unsupported output format %@ ***", buf, 0x1Cu);
    }

LABEL_19:

    result = 2;
    goto LABEL_23;
  }

  if (a6 != a10 || a7 != a11)
  {
    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1503;
      *&buf[18] = 2049;
      *&buf[20] = a6;
      *&buf[28] = 2049;
      *&buf[30] = a7;
      v55 = 2049;
      v56 = a10;
      v57 = 2049;
      v58 = a11;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: Source region size (%{private}f x %{private}f) doesn't match destination region size (%{private}f x %{private}f) ***", buf, 0x3Au);
    }

    goto LABEL_22;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v26 = Height;
  if (a4 < 0.0 || a5 < 0.0 || (a4 + a6 <= Width ? (v27 = a5 + a7 <= Height) : (v27 = 0), !v27))
  {
    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136382467;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1514;
      *&buf[18] = 2049;
      *&buf[20] = a4;
      *&buf[28] = 2049;
      *&buf[30] = a5;
      v55 = 2049;
      v56 = a6;
      v57 = 2049;
      v58 = a7;
      v59 = 2049;
      v60 = Width;
      v61 = 2049;
      v62 = v26;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: sourceRegion region (%{private}f, %{private}f, %{private}f, %{private}f) is outside of source image dimensions (%{private}ld x %{private}ld) ***", buf, 0x4Eu);
    }

LABEL_22:

    result = 1;
    goto LABEL_23;
  }

  v36 = CVPixelBufferGetWidth(a2);
  v37 = CVPixelBufferGetHeight(a2);
  v38 = v37;
  if (a8 < 0.0 || a9 < 0.0 || (a8 + a10 <= v36 ? (v39 = a9 + a11 <= v37) : (v39 = 0), !v39))
  {
    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136382467;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1525;
      *&buf[18] = 2049;
      *&buf[20] = a8;
      *&buf[28] = 2049;
      *&buf[30] = a9;
      v55 = 2049;
      v56 = a10;
      v57 = 2049;
      v58 = a11;
      v59 = 2049;
      v60 = v36;
      v61 = 2049;
      v62 = v38;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: dstRegion region (%{private}f, %{private}f, %{private}f, %{private}f) is outside of destination image dimensions (%{private}ld x %{private}ld) ***", buf, 0x4Eu);
    }

    goto LABEL_22;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  v42 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  *buf = CVPixelBufferGetBaseAddress(a1) + BytesPerRow * a5 + a4;
  *&buf[8] = a7;
  *&buf[16] = a6;
  *&buf[24] = BytesPerRow;
  destYp.data = CVPixelBufferGetBaseAddressOfPlane(a2, 0) + BytesPerRowOfPlane * a9 + a8;
  destYp.height = a11;
  destYp.width = a10;
  destYp.rowBytes = BytesPerRowOfPlane;
  destCbCr.data = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL) + 2 * a8 + v42 * a9;
  destCbCr.height = a11 >> 1;
  destCbCr.width = a10 >> 1;
  destCbCr.rowBytes = v42;
  *permuteMap = 66051;
  v43 = vImageConvert_ARGB8888To420Yp8_CbCr8(buf, &destYp, &destCbCr, a3, permuteMap, 0x10u);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (v43)
  {
    v44 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v48 = 136381187;
      v49 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v50 = 1025;
      v51 = 1565;
      v52 = 2048;
      v53 = v43;
      _os_log_impl(&dword_21DE0D000, v44, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBuffer32BGRATo420YpCbCr8BiPlanarFullRange: Conversion error %ld ***", v48, 0x1Cu);
    }

    result = 4;
  }

  else
  {
    result = 0;
  }

LABEL_23:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIConvertCVPixelBuffer420YpCbCr8BiPlanarFullRangeTo32BGRA(__CVBuffer *a1, __CVBuffer *a2, const vImage_YpCbCrToARGB *a3)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v8 = CVPixelBufferGetWidth(a2);
  v9 = CVPixelBufferGetHeight(a2);

  return SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA(a1, a2, a3, 0.0, 0.0, Width, Height, 0.0, 0.0, v8, v9);
}

uint64_t SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA(__CVBuffer *a1, __CVBuffer *a2, const vImage_YpCbCrToARGB *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v63 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 875704422)
  {
    v29 = PixelFormatType;
    v30 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = SIPixelFormatToStr(v29);
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1404;
      *&buf[18] = 2112;
      *&buf[20] = v31;
      _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: Unsupported input format %@ ***", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

  v23 = CVPixelBufferGetPixelFormatType(a2);
  if (v23 != 1111970369)
  {
    v32 = v23;
    v30 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = SIPixelFormatToStr(v32);
      *buf = 136381187;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1409;
      *&buf[18] = 2112;
      *&buf[20] = v33;
      _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: Unsupported output format %@ ***", buf, 0x1Cu);
    }

LABEL_19:

    result = 2;
    goto LABEL_23;
  }

  if (a6 != a10 || a7 != a11)
  {
    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381955;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1415;
      *&buf[18] = 2049;
      *&buf[20] = a6;
      *&buf[28] = 2049;
      *&buf[30] = a7;
      v55 = 2049;
      v56 = a10;
      v57 = 2049;
      v58 = a11;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: Source region size (%{private}f x %{private}f) doesn't match destination region size (%{private}f x %{private}f) ***", buf, 0x3Au);
    }

    goto LABEL_22;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v26 = Height;
  if (a4 < 0.0 || a5 < 0.0 || (a4 + a6 <= Width ? (v27 = a5 + a7 <= Height) : (v27 = 0), !v27))
  {
    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136382467;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1426;
      *&buf[18] = 2049;
      *&buf[20] = a4;
      *&buf[28] = 2049;
      *&buf[30] = a5;
      v55 = 2049;
      v56 = a6;
      v57 = 2049;
      v58 = a7;
      v59 = 2049;
      v60 = Width;
      v61 = 2049;
      v62 = v26;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: sourceRegion region (%{private}f, %{private}f, %{private}f, %{private}f) is outside of source image dimensions (%{private}ld x %{private}ld) ***", buf, 0x4Eu);
    }

LABEL_22:

    result = 1;
    goto LABEL_23;
  }

  v36 = CVPixelBufferGetWidth(a2);
  v37 = CVPixelBufferGetHeight(a2);
  v38 = v37;
  if (a8 < 0.0 || a9 < 0.0 || (a8 + a10 <= v36 ? (v39 = a9 + a11 <= v37) : (v39 = 0), !v39))
  {
    v28 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136382467;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      *&buf[12] = 1025;
      *&buf[14] = 1437;
      *&buf[18] = 2049;
      *&buf[20] = a8;
      *&buf[28] = 2049;
      *&buf[30] = a9;
      v55 = 2049;
      v56 = a10;
      v57 = 2049;
      v58 = a11;
      v59 = 2049;
      v60 = v36;
      v61 = 2049;
      v62 = v38;
      _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBufferRegion420YpCbCr8BiPlanarFullRangeTo32BGRA: dstRegion region (%{private}f, %{private}f, %{private}f, %{private}f) is outside of destination image dimensions (%{private}ld x %{private}ld) ***", buf, 0x4Eu);
    }

    goto LABEL_22;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v41 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  *buf = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + BytesPerRowOfPlane * a5 + a4;
  *&buf[8] = a7;
  *&buf[16] = a6;
  *&buf[24] = BytesPerRowOfPlane;
  srcCbCr.data = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + 2 * a4 + v41 * a5;
  srcCbCr.height = a7 >> 1;
  srcCbCr.width = a6 >> 1;
  srcCbCr.rowBytes = v41;
  dest.data = CVPixelBufferGetBaseAddress(a2) + BytesPerRow * a9 + a8;
  dest.height = a11;
  dest.width = a10;
  dest.rowBytes = BytesPerRow;
  *permuteMap = 66051;
  v43 = vImageConvert_420Yp8_CbCr8ToARGB8888(buf, &srcCbCr, &dest, a3, permuteMap, 0xFFu, 0x10u);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (v43)
  {
    v44 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *v48 = 136381187;
      v49 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBuffer.mm";
      v50 = 1025;
      v51 = 1477;
      v52 = 2048;
      v53 = v43;
      _os_log_impl(&dword_21DE0D000, v44, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** SIConvertCVPixelBuffer420YpCbCr8BiPlanarFullRangeTo32BGRA: Conversion error %ld ***", v48, 0x1Cu);
    }

    result = 4;
  }

  else
  {
    result = 0;
  }

LABEL_23:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

id SIMLE5RTBundlePath(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (SISupportANE_onceToken[0] != -1)
  {
    SIMLE5RTBundlePath_cold_1();
  }

  if (s_deviceSupportsANE == 1)
  {
    v5 = [MEMORY[0x277CEE958] aneSubType];
    v6 = [@"_" stringByAppendingString:v5];
    v7 = [v4 stringByAppendingString:v6];

    v8 = [v3 pathForResource:v7 ofType:@"bundle" inDirectory:v5];
    v9 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 136381443;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIANETools.m";
      v15 = 1025;
      v16 = 141;
      v17 = 2113;
      v18 = v4;
      v19 = 2113;
      v20 = v8;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Loading the model %{private}@. Path: %{private}@ ***", &v13, 0x26u);
    }
  }

  else
  {
    v10 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136381187;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIANETools.m";
      v15 = 1025;
      v16 = 144;
      v17 = 2113;
      v18 = v4;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Trying to load model %{private}@ on device with no ANE ***", &v13, 0x1Cu);
    }

    v8 = v4;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t SISupportANE()
{
  if (SISupportANE_onceToken[0] != -1)
  {
    SIMLE5RTBundlePath_cold_1();
  }

  return s_deviceSupportsANE;
}

id SIGetDeviceANEType()
{
  if (SISupportANE_onceToken[0] != -1)
  {
    SIMLE5RTBundlePath_cold_1();
  }

  if (s_deviceSupportsANE == 1)
  {
    v0 = [MEMORY[0x277CEE958] aneSubType];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id SIGetDeviceANEArchitectureType()
{
  if (SISupportANE_onceToken[0] != -1)
  {
    SIMLE5RTBundlePath_cold_1();
  }

  if (s_deviceSupportsANE == 1)
  {
    v0 = [MEMORY[0x277CEE958] aneArchitectureType];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id SIMLEIRModelPath(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 pathForResource:v3 ofType:@"mlmodelc"];
  v5 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136381443;
    v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIANETools.m";
    v10 = 1025;
    v11 = 166;
    v12 = 2113;
    v13 = v3;
    v14 = 2113;
    v15 = v4;
    _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Loading the model %{private}@. Path: %{private}@ ***", &v8, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __SISupportANE_block_invoke()
{
  result = MGGetBoolAnswer();
  s_deviceSupportsANE = result;
  return result;
}

BOOL SIPerformPreCompilation(void *a1, void *a2)
{
  v26[9] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEE958];
  v4 = a2;
  v5 = a1;
  v6 = [v3 aneSubType];
  v7 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v7 setLaunchPath:@"/usr/local/bin/espressoc"];
  v26[0] = @"--e5-require-ane-resident=strict";
  v26[1] = @"-i";
  v26[2] = v5;
  v26[3] = @"-p";
  v26[4] = v6;
  v26[5] = @"-o";
  v26[6] = v4;
  v26[7] = @"--mil-entry-points=*";
  v26[8] = @"> /dev/null 2>&1";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:9];

  [v7 setArguments:v8];
  v9 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 launchPath];
    v11 = [v7 arguments];
    v18 = 136381443;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIANETools.m";
    v20 = 1025;
    v21 = 199;
    v22 = 2113;
    v23 = v10;
    v24 = 2113;
    v25 = v11;
    _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** running %{private}@ with arguments: %{private}@ ***", &v18, 0x26u);
  }

  [v7 launch];
  [v7 waitUntilExit];
  v12 = [v7 terminationStatus];
  if (v12)
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v7 launchPath];
      v15 = [v7 arguments];
      v18 = 136381443;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIANETools.m";
      v20 = 1025;
      v21 = 203;
      v22 = 2113;
      v23 = v14;
      v24 = 2113;
      v25 = v15;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** failed to run %{private}@ with arguments: %{private}@ ***", &v18, 0x26u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

uint64_t tester_probe_task()
{
  v0 = ps_task_context_get_userdata();
  if (ps_resource_array_get_count())
  {
    v1 = 0;
    do
    {
      resource = ps_resource_array_get_resource();
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:ps_resource_get_key()];
      v4 = objc_alloc_init(SIPolarisGraphTesterProbeResource);
      [(SIPolarisGraphTesterProbeResource *)v4 setResource:resource];
      v5 = [v0 resourceData];
      [v5 setObject:v4 forKeyedSubscript:v3];

      ++v1;
    }

    while (ps_resource_array_get_count() > v1);
  }

  v6 = [v0 probeGraphSem];
  dispatch_semaphore_signal(v6);

  return 0;
}

void sub_21DE4EDC0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21DE4EE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SIMovReader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21DE4EFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__gcd<unsigned char>(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  if (v2)
  {
    v4 = v3 % v2;
    if (v3 % v2)
    {
      v5 = v4 | v2;
      v6 = v4 >> __clz(__rbit32(v4));
      do
      {
        v7 = v2 >> __clz(__rbit32(v2));
        v2 = v6 - v7;
        if (v7 < v6)
        {
          v6 = v7;
        }

        else
        {
          v2 = v7 - v6;
        }
      }

      while (v2);
      return (v6 << __clz(__rbit32(v5)));
    }
  }

  else
  {
    LOBYTE(v2) = v3;
  }

  return v2;
}

uint64_t SICopyRawDataToOneComponentIOSurface(__IOSurface *a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  switch(a6)
  {
    case 4:
      v11 = *MEMORY[0x277D85DE8];

      return SICopyDataToOneComponentIOSurface<float>(a1, a2, a3, a4, a5, a7);
    case 2:
      v10 = *MEMORY[0x277D85DE8];

      return SICopyDataToOneComponentIOSurface<half>(a1, a2, a3, a4, a5, a7);
    case 1:
      v8 = *MEMORY[0x277D85DE8];

      return SICopyDataToOneComponentIOSurface<unsigned char>(a1, a2, a3, a4, a5, a7);
    default:
      v12 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 136381187;
        v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.mm";
        v16 = 1025;
        v17 = 33;
        v18 = 2048;
        v19 = a6;
        _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported bytePerElement in src: %zu ***", &v14, 0x1Cu);
      }

      v13 = *MEMORY[0x277D85DE8];
      return 4;
  }
}

uint64_t SICopyDataToOneComponentIOSurface<unsigned char>(__IOSurface *a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat == 1278226488)
  {
    v17 = *MEMORY[0x277D85DE8];

    return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<unsigned char,unsigned char>(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v13 = PixelFormat;
    if (PixelFormat == 1278226536)
    {
      v16 = *MEMORY[0x277D85DE8];

      return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<half,unsigned char>(a1, a2, a3, a4, a5, a6);
    }

    else if (PixelFormat == 1278226534)
    {
      v14 = *MEMORY[0x277D85DE8];

      return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<float,unsigned char>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      v18 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = SIPixelFormatToStr(v13);
        v21 = 136381187;
        v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
        v23 = 1025;
        v24 = 96;
        v25 = 2113;
        v26 = v19;
        _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported surface format: %{private}@ ***", &v21, 0x1Cu);
      }

      v20 = *MEMORY[0x277D85DE8];
      return 4;
    }
  }
}

uint64_t SICopyDataToOneComponentIOSurface<float>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat == 1278226488)
  {
    v17 = *MEMORY[0x277D85DE8];

    return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<unsigned char,float>(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v13 = PixelFormat;
    if (PixelFormat == 1278226536)
    {
      v16 = *MEMORY[0x277D85DE8];

      return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<half,float>(a1, a2, a3, a4, a5, a6);
    }

    else if (PixelFormat == 1278226534)
    {
      v14 = *MEMORY[0x277D85DE8];

      return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<float,float>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      v18 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = SIPixelFormatToStr(v13);
        v21 = 136381187;
        v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
        v23 = 1025;
        v24 = 96;
        v25 = 2113;
        v26 = v19;
        _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported surface format: %{private}@ ***", &v21, 0x1Cu);
      }

      v20 = *MEMORY[0x277D85DE8];
      return 4;
    }
  }
}

uint64_t SICopyDataToOneComponentIOSurface<half>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat == 1278226488)
  {
    v17 = *MEMORY[0x277D85DE8];

    return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<unsigned char,half>(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v13 = PixelFormat;
    if (PixelFormat == 1278226536)
    {
      v16 = *MEMORY[0x277D85DE8];

      return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<half,half>(a1, a2, a3, a4, a5, a6);
    }

    else if (PixelFormat == 1278226534)
    {
      v14 = *MEMORY[0x277D85DE8];

      return SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<float,half>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      v18 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = SIPixelFormatToStr(v13);
        v21 = 136381187;
        v22 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
        v23 = 1025;
        v24 = 96;
        v25 = 2113;
        v26 = v19;
        _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported surface format: %{private}@ ***", &v21, 0x1Cu);
      }

      v20 = *MEMORY[0x277D85DE8];
      return 4;
    }
  }
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<float,unsigned char>(__IOSurface *a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v19 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 1)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 1)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              v26 = v23;
              if (a6)
              {
                v26 = (a6 + *v23);
              }

              ++v23;
              LOBYTE(v18) = *v26;
              v18 = LODWORD(v18);
              *v25++ = v18;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else
    {
      for (; a4; --a4)
      {
        memcpy(v19, a2, a3);
        a2 += a5;
        v19 += BytesPerRow;
      }
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v20 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 136381955;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v30 = 1025;
      v31 = 35;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = Height;
      _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v28, 0x3Au);
    }

    result = 4;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<unsigned char,unsigned char>(__IOSurface *a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v18 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 1)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 1)
    {
      if (a4)
      {
        v21 = 0;
        do
        {
          if (a3)
          {
            v22 = &a2[v21 * a5];
            v23 = a3;
            v24 = &BaseAddress[v21 * BytesPerRow];
            do
            {
              v25 = v22;
              if (a6)
              {
                v25 = (a6 + *v22);
              }

              ++v22;
              *v24++ = *v25;
              --v23;
            }

            while (v23);
          }

          ++v21;
        }

        while (v21 != a4);
      }
    }

    else
    {
      for (; a4; --a4)
      {
        memcpy(v18, a2, a3);
        a2 += a5;
        v18 += BytesPerRow;
      }
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v27 = 136381955;
      v28 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v29 = 1025;
      v30 = 35;
      v31 = 2048;
      v32 = a3;
      v33 = 2048;
      v34 = a4;
      v35 = 2048;
      v36 = Width;
      v37 = 2048;
      v38 = Height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v27, 0x3Au);
    }

    result = 4;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<half,unsigned char>(__IOSurface *a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v19 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 1)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 1)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              v26 = v23;
              if (a6)
              {
                v26 = (a6 + *v23);
              }

              ++v23;
              LOBYTE(v18) = *v26;
              v18 = LOWORD(v18);
              *v25++ = v18;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else
    {
      for (; a4; --a4)
      {
        memcpy(v19, a2, a3);
        a2 += a5;
        v19 += BytesPerRow;
      }
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v20 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = 136381955;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v30 = 1025;
      v31 = 35;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = Height;
      _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v28, 0x3Au);
    }

    result = 4;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<float,float>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v18 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 4)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 4)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              v26 = *v23;
              if (a6)
              {
                LOBYTE(v26) = *(a6 + v26);
                v26 = LODWORD(v26);
              }

              ++v23;
              *v25++ = v26;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else if (a4)
    {
      v21 = 4 * a3;
      do
      {
        memcpy(v18, a2, v21);
        a2 += a5;
        v18 += BytesPerRow;
        --a4;
      }

      while (a4);
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = 136381955;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v30 = 1025;
      v31 = 35;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = Height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v28, 0x3Au);
    }

    result = 4;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<unsigned char,float>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v18 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 4)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 4)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              v26 = *v23;
              if (a6)
              {
                LOBYTE(v26) = *(a6 + v26);
              }

              ++v23;
              *v25++ = v26;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else if (a4)
    {
      v21 = 4 * a3;
      do
      {
        memcpy(v18, a2, v21);
        a2 += a5;
        v18 += BytesPerRow;
        --a4;
      }

      while (a4);
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v28 = 136381955;
      v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v30 = 1025;
      v31 = 35;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = Width;
      v38 = 2048;
      v39 = Height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v28, 0x3Au);
    }

    result = 4;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<half,float>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v18 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 4)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 4)
    {
      if (a4)
      {
        v22 = 0;
        do
        {
          if (a3)
          {
            v23 = &a2[v22 * a5];
            v24 = a3;
            v25 = &BaseAddress[v22 * BytesPerRow];
            do
            {
              _S0 = *v23;
              if (a6)
              {
                LOBYTE(_S0) = *(a6 + _S0);
                _S0 = LODWORD(_S0);
              }

              ++v23;
              __asm { FCVT            H0, S0 }

              *v25 = _H0;
              v25 += 2;
              --v24;
            }

            while (v24);
          }

          ++v22;
        }

        while (v22 != a4);
      }
    }

    else if (a4)
    {
      v21 = 4 * a3;
      do
      {
        memcpy(v18, a2, v21);
        a2 += a5;
        v18 += BytesPerRow;
        --a4;
      }

      while (a4);
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v19 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v33 = 136381955;
      v34 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v35 = 1025;
      v36 = 35;
      v37 = 2048;
      v38 = a3;
      v39 = 2048;
      v40 = a4;
      v41 = 2048;
      v42 = Width;
      v43 = 2048;
      v44 = Height;
      _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v33, 0x3Au);
    }

    result = 4;
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SICopyRawDataToOneComponentIOSurfaceWithPrimitiveType<float,half>(__IOSurface *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = *MEMORY[0x277D85DE8];
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BytesPerElement = IOSurfaceGetBytesPerElement(a1);
  if (Width == a3 && Height == a4)
  {
    v16 = BytesPerElement;
    IOSurfaceLock(a1, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    v19 = BaseAddress;
    if (BytesPerRow == a5 && !a6 && v16 == 2)
    {
      memcpy(BaseAddress, a2, a5 * a4);
    }

    else if (a6 || v16 != 2)
    {
      if (a4)
      {
        v23 = 0;
        do
        {
          if (a3)
          {
            v24 = &a2[v23 * a5];
            v25 = a3;
            v26 = &BaseAddress[v23 * BytesPerRow];
            do
            {
              LOWORD(_S0) = *v24;
              if (a6)
              {
                LOBYTE(_S0) = *(a6 + *&_S0);
                _S0 = LODWORD(_S0);
              }

              else
              {
                __asm { FCVT            S0, H0 }
              }

              v24 += 2;
              *v26++ = _S0;
              --v25;
            }

            while (v25);
          }

          ++v23;
        }

        while (v23 != a4);
      }
    }

    else if (a4)
    {
      v22 = 2 * a3;
      do
      {
        memcpy(v19, a2, v22);
        a2 += a5;
        v19 += BytesPerRow;
        --a4;
      }

      while (a4);
    }

    IOSurfaceUnlock(a1, 0, 0);
    result = 0;
  }

  else
  {
    v20 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v32 = 136381955;
      v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Pixelbuffer/SIPixelBufferCopyTemplate.h";
      v34 = 1025;
      v35 = 35;
      v36 = 2048;
      v37 = a3;
      v38 = 2048;
      v39 = a4;
      v40 = 2048;
      v41 = Width;
      v42 = 2048;
      v43 = Height;
      _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** CopyElement failed: size is not identical: (%zu, %zu) <-> (%zu, %zu) ***", &v32, 0x3Au);
    }

    result = 4;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}