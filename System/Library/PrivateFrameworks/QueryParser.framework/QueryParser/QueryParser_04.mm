void ___ZN2QPL19normalizeTimeStringEP8NSString_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(\\d+)(st|nd|rd|th)" options:1 error:0];
  v1 = QP::normalizeTimeString(NSString *)::regex;
  QP::normalizeTimeString(NSString *)::regex = v0;
}

void ___ZN2QPL19normalizeQueryTokenEP8NSString_block_invoke()
{
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[’']s\\b" options:0 error:&v4];
  v1 = v4;
  v2 = QP::normalizeQueryToken(NSString *)::apostropheSRegex;
  QP::normalizeQueryToken(NSString *)::apostropheSRegex = v0;

  if (v1)
  {
    if (llmParserLogger(void)::token != -1)
    {
      QP::LLMParser::parse();
    }

    v3 = llmParserLogger(void)::log;
    if (os_log_type_enabled(llmParserLogger(void)::log, OS_LOG_TYPE_ERROR))
    {
      __normalizeRelationLabelString_block_invoke_cold_2(v1, v3);
    }
  }
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1C65CA558(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1C695B7D0](v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::find<long>(void *a1, unint64_t *a2)
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
      if (v3 == v8)
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

void *std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::__emplace_unique_key_args<long,long &,std::unordered_map<long,std::vector<std::string>>>(void *a1, unint64_t *a2)
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

void sub_1C65CA894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::__hash_table(uint64_t result, uint64_t *a2)
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

uint64_t std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::__emplace_unique_key_args<long,long &,std::vector<std::string>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::vector<std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
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
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
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

void sub_1C65CAF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
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

void sub_1C65CB0F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
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

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
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

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
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

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C695B780](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C65CB7F4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0;
  v13[1] = 0;
  MEMORY[0x1C695B6E0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1C695B6F0](v13);
  return a1;
}

void sub_1C65CBB1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1C695B6F0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1C65CBAFCLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      __b[0] = 0;
      __b[1] = 0;
      v18 = 0;
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v18) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (v18 >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1C65CBD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::stringbuf::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[0] = std::stringbuf::view[abi:ne200100](a1);
  v5[1] = v3;
  return std::string::basic_string<std::string_view,0>(a2, v5);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<long,std::vector<std::string>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<long,std::vector<std::string>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<std::string>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<std::string>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<std::string>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,int,int,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, 0);
  return a1;
}

std::string *std::__shared_ptr_emplace<QP::LexemeValue>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string,CFRange &,std::allocator<QP::LexemeValue>,0>(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E86C8;
  std::construct_at[abi:ne200100]<QP::LexemeValue,std::string &,std::string,CFRange &,QP::LexemeValue*>(a1 + 1, a2, a3, a4);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeValue,std::string &,std::string,CFRange &,QP::LexemeValue*>(std::string *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  *__p = *a3;
  v9 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  QP::LexemeValue::LexemeValue(this, &v10, __p, *a4, *(a4 + 8));
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1C65CC2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string,std::string,CFRange &,QP::LexemeStatus*>(&a16);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeGroundedPerson>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::vector<std::string> &,std::vector<std::pair<double,double>> &,CFRange &,std::allocator<QP::LexemeGroundedPerson>,0>(std::string *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8A38;
  std::construct_at[abi:ne200100]<QP::LexemeGroundedPerson,std::string &,std::vector<std::string> &,std::vector<std::pair<double,double>> &,CFRange &,QP::LexemeGroundedPerson*>(a1 + 1, a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<QP::LexemeGroundedPerson>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

void std::__shared_ptr_emplace<QP::LexemeGroundedPerson>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  QP::Lexeme::~Lexeme((a1 + 24));
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeGroundedPerson,std::string &,std::vector<std::string> &,std::vector<std::pair<double,double>> &,CFRange &,QP::LexemeGroundedPerson*>(std::string *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  memset(v13, 0, sizeof(v13));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v13, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(&__p, *a4, a4[1], (a4[1] - *a4) >> 4);
  QP::LexemeGroundedPerson::LexemeGroundedPerson(a1, &v14, v13, &__p, *a5, *(a5 + 8));
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  v15 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C65CC5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v20 - 40) = &a12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

std::string *QP::LexemeGroundedPerson::LexemeGroundedPerson(std::string *this, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, std::string::size_type a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  QP::Lexeme::Lexeme(this, &__p, a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[5], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<double,double>>::__init_with_size[abi:ne200100]<std::pair<double,double>*,std::pair<double,double>*>(&this[6], *a4, a4[1], (a4[1] - *a4) >> 4);
  return this;
}

void sub_1C65CC6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  QP::Lexeme::~Lexeme(v15);
  _Unwind_Resume(a1);
}

std::string *std::__shared_ptr_emplace<QP::LexemeValue>::__shared_ptr_emplace[abi:ne200100]<std::string &,char const*,CFRange &,std::allocator<QP::LexemeValue>,0>(std::string *a1, uint64_t a2, char **a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E86C8;
  std::construct_at[abi:ne200100]<QP::LexemeValue,std::string &,char const*,CFRange &,QP::LexemeValue*>(a1 + 1, a2, a3, a4);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeValue,std::string &,char const*,CFRange &,QP::LexemeValue*>(std::string *a1, uint64_t a2, char **a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  QP::LexemeValue::LexemeValue(a1, &v10, __p, *a4, *(a4 + 8));
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C65CC8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<QP::LexemeStatus>::__shared_ptr_emplace[abi:ne200100]<std::string &,char const*&,CFRange &,std::allocator<QP::LexemeStatus>,0>(std::string *a1, uint64_t a2, char **a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F45E8678;
  std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string &,char const*&,CFRange &,QP::LexemeStatus*>(a1 + 1, a2, a3, a4);
  return a1;
}

std::string *std::construct_at[abi:ne200100]<QP::LexemeStatus,std::string &,char const*&,CFRange &,QP::LexemeStatus*>(std::string *a1, uint64_t a2, char **a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  QP::LexemeStatus::LexemeStatus(a1, &v10, __p, *a4, *(a4 + 8));
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1C65CCA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::map<std::string,std::set<std::string>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::map<std::string,std::set<std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::map<std::string,std::set<std::string>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__tree_node<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::set<std::string>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::map<std::string,std::set<std::string>>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__construct_node<std::pair<std::string const,std::map<std::string,std::set<std::string>>> const&>();
  }

  return v3;
}

void **std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::string>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::set<std::string>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::map<std::string,std::set<std::string>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::map<std::string,std::set<std::string>>::map[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1C65CCED4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::set<std::string>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::set<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::set<std::string>>,std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::set<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::set<std::string>>,std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::set<std::string>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::set<std::string>> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__construct_node<std::pair<std::string const,std::set<std::string>> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::set<std::string>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 24);
  return this;
}

void sub_1C65CD190(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<std::string>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>(uint64_t a1)
{
  std::__tree<std::string>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::set<std::string>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::set<std::string>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::set<std::string>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::set<std::string>>>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1C65CD738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void *std::__shared_ptr_emplace<QP::Parse>::__shared_ptr_emplace[abi:ne200100]<__CFString *&,unsigned long,long &,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,std::allocator<QP::Parse>,0>(void *a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8A88;
  std::construct_at[abi:ne200100]<QP::Parse,__CFString *&,unsigned long,long &,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,QP::Parse*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<QP::Parse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F45E8A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::construct_at[abi:ne200100]<QP::Parse,__CFString *&,unsigned long,long &,std::vector<std::shared_ptr<QP::ParseAttribute>> &,__CFDictionary const*&,QP::Parse*>(uint64_t a1, const void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  memset(v12, 0, sizeof(v12));
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v12, *a5, a5[1], (a5[1] - *a5) >> 4);
  QP::Parse::Parse(a1, v8, v9, v10, v12, *a6, 0);
  v13 = v12;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v13);
  return a1;
}

void sub_1C65CDA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65CDA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t QP::Parse::Parse(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(a1 + 8, *a5, a5[1], (a5[1] - *a5) >> 4);
  *(a1 + 88) = a6;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = a4;
  *(a1 + 56) = xmmword_1C6631E00;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 81) = a7;
  if (a2)
  {
    v14 = CFRetain(a2);
    nlp::CFScopedPtr<__CFString const*>::reset(a1, v14);
    v16 = *(a1 + 64);
    v15 = *(a1 + 72);
  }

  else
  {
    v15 = 0;
    v16 = -1;
  }

  v18 = *a5;
  v17 = a5[1];
  if (v18 != v17)
  {
    do
    {
      v19 = v16;
      v20 = *v18;
      *(a1 + 40) += *(*v18 + 8) + 1;
      *(a1 + 56) += *(v20 + 40);
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v16 == -1)
      {
        v16 = *(v20 + 16);
      }

      if (*(v20 + 73) == 1)
      {
        *(a1 + 80) = 1;
      }

      if (QP::ParseAttribute::flag(v20) == 4)
      {
        *(a1 + 82) = 1;
      }

      v18 += 16;
    }

    while (v18 != v17);
    v23 = v22 - v19;
    if (v19 == -1)
    {
      v23 = 0;
    }

    v15 = v21 + v23;
  }

  *(a1 + 64) = v16;
  *(a1 + 72) = v15;
  return a1;
}

void sub_1C65CDC14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v3, 0);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);
  _Unwind_Resume(a1);
}

void QP::Parse::~Parse(const void **this)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(this + 11, 0);
  v2 = (this + 1);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v2);
  nlp::CFScopedPtr<__CFString const*>::reset(this, 0);
}

const __CFString *copyLocalizedStringForDomain(unint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v9 = *MEMORY[0x1E695E480];
  v10 = CFURLCreateWithString(*MEMORY[0x1E695E480], @"/System/Library/PrivateFrameworks/QueryParser.framework", 0);
  if (v10)
  {
    v11 = v10;
    v12 = CFBundleCreate(v9, v10);
    if (a1 | v12)
    {
      v13 = v12;
      if (CFBundleGetLocalizationInfoForLocalization())
      {
        v14 = a2 ? CFStringCreateWithFormat(v9, 0, @"%@%@", a2, a3, 0, 0) : CFRetain(a3);
        v16 = v14;
        if (v14)
        {
          v17 = CFBundleCopyLocalizationForLocalizationInfo();
          if (v17)
          {
            v18 = v17;
            if (a1)
            {
              v19 = CFBundleCopyLocalizedStringForLocalization();
              if (v19)
              {
                v15 = v19;
                if (!CFStringsAreEqual(v19, a4))
                {
                  goto LABEL_30;
                }

                CFRelease(v15);
              }
            }

            if (v13)
            {
              v20 = CFBundleCopyLocalizedStringForLocalization();
              if (v20)
              {
                v15 = v20;
                if (!CFStringsAreEqual(v20, a4))
                {
                  goto LABEL_30;
                }

                CFRelease(v15);
              }
            }

            CFRelease(v18);
          }

          v18 = CFBundleCopyLocalizationForLocalizationInfo();
          if (v18)
          {
            if (a1)
            {
              v21 = CFBundleCopyLocalizedStringForLocalization();
              if (v21)
              {
                v15 = v21;
                if (!CFStringsAreEqual(v21, a4))
                {
                  goto LABEL_30;
                }

                CFRelease(v15);
              }
            }

            if (v13)
            {
              v22 = CFBundleCopyLocalizedStringForLocalization();
              v15 = v22;
              if (!v22 || !CFStringsAreEqual(v22, a4))
              {
LABEL_30:
                CFRelease(v18);
                CFRelease(v16);
                if (!v13)
                {
                  goto LABEL_34;
                }

                goto LABEL_33;
              }

              CFRelease(v15);
            }
          }

          v15 = 0;
          goto LABEL_30;
        }
      }

      v15 = 0;
      if (v13)
      {
LABEL_33:
        CFRelease(v13);
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_34:
    CFRelease(v11);
    return v15;
  }

  return 0;
}

const __CFLocale *QP::NumericConverter::localeIdentifier@<X0>(const __CFLocale **this@<X0>, char *a2@<X8>)
{
  result = *this;
  if (result)
  {
    Value = CFLocaleGetValue(result, *MEMORY[0x1E695E6F0]);

    return QP::getUTF8StringFromCFString(Value, a2);
  }

  else
  {
    a2[23] = 2;
    strcpy(a2, "en");
  }

  return result;
}

void QP::NumericConverter::numericValueForTypeWithValues(QP::NumericConverter *this@<X0>, const __CFString *a2@<X1>, CFDictionaryRef theDict@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2 || !theDict || !*this)
  {
    *a4 = 0;
    goto LABEL_18;
  }

  v25 = 0;
  if (CFDictionaryContainsKey(theDict, @"DIGITS"))
  {
    v8 = @"DIGITS";
  }

  else if (CFDictionaryContainsKey(theDict, @"NUMBERS"))
  {
    if (!CFLocaleIsCJ(*this))
    {
      Value = CFDictionaryGetValue(theDict, @"SPELLED");
      v10 = copyTranslatedRomanNumberFromChineseNumberString(Value);
      v25 = v10;
      if (v10)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v8 = @"NUMBERS";
  }

  else
  {
    if (!CFDictionaryContainsKey(theDict, @"DECIMAL"))
    {
      v10 = 0;
      goto LABEL_9;
    }

    v8 = @"DECIMAL";
  }

  Value = CFDictionaryGetValue(theDict, v8);
  v10 = 0;
LABEL_7:
  if (Value)
  {
    v10 = CFRetain(Value);
    v25 = v10;
  }

LABEL_9:
  Count = CFDictionaryGetCount(theDict);
  v12 = Count;
  if (!Count)
  {
    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](Count);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, v13);
  CFDictionaryGetKeysAndValues(theDict, v14, 0);
  if (v12 < 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = CFGetTypeID(*v14);
    if (v15 == CFStringGetTypeID())
    {
      v16 = *v14;
      if (CFStringHasSuffix(*v14, @"Unit"))
      {
        break;
      }
    }

    ++v14;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  if (v16)
  {
    for (i = 0; i != 5; ++i)
    {
      if (CFStringHasPrefix(a2, QP::NumericConverter::numericValueForTypeWithValues(__CFString const*,__CFDictionary const*)const::intTypes[i]))
      {
        QP::getUTF8StringFromCFString(v16, v23);
        UTF8StringFromCFString = QP::getUTF8StringFromCFString(v25, v21);
        QP::NumericConverter::numericIntForType(UTF8StringFromCFString, v20, v21);
      }
    }

    QP::getUTF8StringFromCFString(v16, v23);
    v10 = v25;
    QP::getUTF8StringFromCFString(v25, v21);
    QP::NumericConverter::numericDoubleForType(this, v23, v21, a4);
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  else
  {
LABEL_14:
    *a4 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1C65CE22C(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v1 - 96), 0);
  _Unwind_Resume(a1);
}

void QP::NumericConverter::numericIntForType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v11 = ", ";
  v5 = std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,QP::ValidNumChars>(p_str, p_str + size, &v11);
  v6 = &__str + HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__str;
  }

  else
  {
    v6 = (__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_);
    v7 = __str.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&__str, v5 - v7, v6 - v5);
  v8 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v8 = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_)
    {
      v9 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_17;
    }
  }

  else if (*(&__str.__r_.__value_.__s + 23))
  {
    v9 = &__str;
    do
    {
LABEL_17:
      v10 = v9->__r_.__value_.__s.__data_[0];
      if (v10 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) == 0)
      {
        goto LABEL_21;
      }

      v9 = (v9 + 1);
      --v8;
    }

    while (v8);
    std::stoi(&__str, 0, 10);
  }

LABEL_21:
  operator new();
}

void QP::NumericConverter::numericDoubleForType(const __CFLocale **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *pErrorCode = 0;
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  v9 = v8 + 1;
  MEMORY[0x1EEE9AC00](a1);
  v11 = (&v27 - v10);
  bzero(&v27 - v10, v12);
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  u_strFromUTF8(v11, v9, pErrorCode, v14, v15, &pErrorCode[1]);
  v11[pErrorCode[0]] = 0;
  QP::NumericConverter::localeIdentifier(a1, &v28);
  v16 = unum_open();
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (pErrorCode[1] < U_ILLEGAL_ARGUMENT_ERROR)
  {
    unum_parseDouble();
    unum_close();
    if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      goto LABEL_15;
    }

    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v18 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    if (v20 < 4)
    {
      goto LABEL_37;
    }

    v21 = (v19 + v20);
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = memchr(v23, 102, v22 - 3);
      if (!v24)
      {
        goto LABEL_30;
      }

      if (*v24 == 1952802150)
      {
        break;
      }

      v23 = v24 + 1;
      v22 = v21 - v23;
      if (v21 - v23 < 4)
      {
        goto LABEL_30;
      }
    }

    if (v24 == v21 || &v24[-v19] == -1)
    {
LABEL_30:
      v25 = v19;
      while (1)
      {
        v26 = memchr(v25, 105, v20 - 3);
        if (!v26)
        {
          goto LABEL_37;
        }

        if (*v26 == 1751346793)
        {
          break;
        }

        v25 = v26 + 1;
        v20 = v21 - v25;
        if (v21 - v25 < 4)
        {
          goto LABEL_37;
        }
      }

      if (v26 == v21 || &v26[-v19] == -1)
      {
LABEL_37:
        if (std::string::find[abi:ne200100](a2, "meter", 0) == -1 && std::string::find[abi:ne200100](a2, "centimeter", 0) == -1 && std::string::find[abi:ne200100](a2, "Second", 0) == -1 && std::string::find[abi:ne200100](a2, "Minute", 0) == -1 && std::string::find[abi:ne200100](a2, "Hour", 0) == -1 && std::string::find[abi:ne200100](a2, "Day", 0) == -1 && std::string::find[abi:ne200100](a2, "Week", 0) == -1 && std::string::find[abi:ne200100](a2, "Byte", 0) == -1 && std::string::find[abi:ne200100](a2, "Kilobyte", 0) == -1 && std::string::find[abi:ne200100](a2, "Megabyte", 0) == -1)
        {
          std::string::find[abi:ne200100](a2, "Gigabyte", 0);
        }
      }
    }

    operator new();
  }

  if (v16)
  {
    unum_close();
  }

LABEL_15:
  *a4 = 0;
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1C65CE9F0(_Unwind_Exception *a1)
{
  v5 = *(v3 - 128);
  *(v3 - 128) = 0;
  if (v5)
  {
    MEMORY[0x1C695B850](v5, v1);
  }

  MEMORY[0x1C695B850](v2, 0x20C40DC1BFBCFLL);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,QP::ValidNumChars>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3)
{
  result = a2;
  if (a2 != a1)
  {
    result = a1;
    while (1)
    {
      v5 = *a3;
      do
      {
        v7 = *v5++;
        v6 = v7;
      }

      while (v7 != *result && v6 != 0);
      if (v6)
      {
        break;
      }

      if (++result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 1; i != a2; ++i)
      {
        v10 = *i;
        v11 = *a3;
        do
        {
          v13 = *v11++;
          v12 = v13;
        }

        while (v13 != v10 && v12 != 0);
        if (!v12)
        {
          *result++ = v10;
        }
      }
    }
  }

  return result;
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

void std::__shared_ptr_pointer<QP::NumericInterval<int> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::__shared_ptr_pointer<QP::NumericInterval<int> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<QP::NumericInterval<int> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *QP::NumericValue::NumericValue(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  std::shared_ptr<QP::NumericInterval<double>>::shared_ptr[abi:ne200100]<QP::NumericInterval<double>,std::default_delete<QP::NumericInterval<double>>,0>(a1 + 2, a2);
  return a1;
}

void sub_1C65CEC70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<QP::NumericInterval<double>>::shared_ptr[abi:ne200100]<QP::NumericInterval<double>,std::default_delete<QP::NumericInterval<double>>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<QP::NumericInterval<double> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

uint64_t std::__shared_ptr_pointer<QP::NumericInterval<double> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<QP::NumericInterval<double> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL QP::parse_attr_less_than_range(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (v5 == v7 && v4 == v6)
  {
    return v2 > v3;
  }

  if (v5 == v7)
  {
    return v4 > v6;
  }

  return v5 < v7;
}

uint64_t QP::best_parse(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  result = *(*a1 + 88) != 0;
  v4 = *a2;
  if (((result ^ (*(*a2 + 88) != 0)) & 1) == 0)
  {
    v5 = *(v2 + 32) - *(v2 + 40);
    v6 = *(v4 + 32) - *(v4 + 40);
    if (v5 == v6)
    {
      result = *(v2 + 82);
      if (result == *(v4 + 82))
      {
        v7 = *(v2 + 56);
        v8 = *(v4 + 56);
        if (v7 == v8)
        {
          result = *(v2 + 80);
          if (result == 1 && (*(v4 + 80) & 1) != 0)
          {
            return 0;
          }
        }

        else
        {
          return v7 > v8;
        }
      }
    }

    else
    {
      return v5 < v6;
    }
  }

  return result;
}

void QP::Parse::enumerateParseAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v6 = v2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = 0;
    }

    v7 = v5;
    (*(a2 + 16))(a2, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1C65CEF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::Parser::mergeActions(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if ((v2 - *a2) < 0x11 || v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v7;
    v9 = QP::ParseAttribute::flag(*v3);
    v10 = *v3;
    if (v9 == 10)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (QP::ParseAttribute::flag(*v3) != 1)
      {
        goto LABEL_15;
      }

      v11 = *v3;
      if (*(*v3 + 74))
      {
        goto LABEL_15;
      }

      if (v6)
      {
        v12 = *(v6 + 16);
        v13 = *(a1 + 16);
        v14 = std::__shared_weak_count::lock(*(v6 + 23));
        v15 = QP::ParserGrammar::symbolID(v13, *(v6 + 22));
        QP::ParseAttribute::addAction(v11, v12, v15);
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_15:
        v7 = 0;
        v10 = 0;
        if (!v8)
        {
          goto LABEL_17;
        }

LABEL_16:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_17;
      }

      v10 = 0;
    }

LABEL_17:
    v3 += 16;
    v6 = v10;
  }

  while (v3 != v2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return 1;
}

void sub_1C65CF078(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

BOOL QP::Parser::mergeDates(uint64_t a1, QP::ParseAttribute ***a2, void **a3, int a4)
{
  v235[0] = 1;
  v7 = *a2;
  v6 = a2[1];
  if ((v6 - *a2) <= 0x10)
  {
    if (v7 == v6)
    {
      return 1;
    }

    while (1)
    {
      v8 = *v7;
      v9 = std::__shared_weak_count::lock(*(*v7 + 23));
      if (*(*(v8 + 22) + 88) - 1 > 3)
      {
        goto LABEL_31;
      }

      v10 = *v7;
      v11 = *(*v7 + 23);
      if (!v11)
      {
        goto LABEL_31;
      }

      v12 = std::__shared_weak_count::lock(v11);
      if (!v12)
      {
        goto LABEL_31;
      }

      v13 = *(v10 + 22);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (v13)
      {
        break;
      }

LABEL_32:
      v7 += 2;
      if (v7 == v6)
      {
        return 1;
      }
    }

    v14 = *v7;
    v9 = std::__shared_weak_count::lock(*(*v7 + 23));
    v15 = *(v14 + 22);
    v16 = *(v15 + 120);
    v17 = *(v15 + 128);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v16)
    {
      if ((*(v16 + 16) - 1) > 7u)
      {
        v18 = 0;
      }

      else
      {
        v18 = dword_1C6632074[(*(v16 + 16) - 1)];
      }

      *(v16 + 20) = v18;
      v234 = 0uLL;
      v19 = *(a1 + 32);
      v20 = *v7;
      v232 = 0;
      v233 = 0;
      v21 = *(v20 + 23);
      if (v21)
      {
        v233 = std::__shared_weak_count::lock(v21);
        if (v233)
        {
          v232 = *(v20 + 22);
        }
      }

      QP::Lexer::resolve(v19, &v232, *(*v7 + 18), v235, a4, &v234);
      if (v233)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v233);
      }

      v22 = v234;
      if (v234)
      {
        if ((a4 & 1) == 0)
        {
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
          v22 = v234;
        }

        v23 = *v7;
        v24 = *(&v234 + 1);
        if (*(&v234 + 1))
        {
          atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = *(v23 + 23);
        *(v23 + 22) = v22;
        *(v23 + 23) = v24;
        if (v25)
        {
          std::__shared_weak_count::__release_weak(v25);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }

      if (*(&v234 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_32;
  }

  if (v7 == v6)
  {
    v123 = 0;
    v193 = 0;
    v183 = 0;
    v184 = 0;
    v124 = 0;
    v119 = 0;
    v116 = 0;
    v115 = 0;
    v182 = 0;
    v27 = 0;
    v28 = 0;
    v185 = 0;
    goto LABEL_457;
  }

  v189 = 0;
  v167 = 0;
  v168 = 0;
  v180 = 0;
  v182 = 0;
  v171 = 0;
  v172 = 0;
  v184 = 0;
  v185 = 0;
  v174 = 0;
  v176 = 0;
  v178 = 0;
  v169 = 0;
  v170 = 0;
  v27 = 0;
  v186 = 0;
  v187 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v183 = 0;
  do
  {
    v31 = *v7;
    v32 = std::__shared_weak_count::lock(*(*v7 + 23));
    if (*(*(v31 + 22) + 88) - 1 <= 3)
    {
      v33 = *v7;
      v34 = *(*v7 + 23);
      if (v34)
      {
        v35 = std::__shared_weak_count::lock(v34);
        if (v35)
        {
          v36 = *(v33 + 22);
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          if (!v36)
          {
            goto LABEL_76;
          }

          v192 = v30;
          v37 = QP::ParseAttribute::flag(*v7);
          v38 = QP::ParseAttribute::flag(*v7);
          v39 = *v7;
          v32 = std::__shared_weak_count::lock(*(*v7 + 23));
          v40 = *(v39 + 22);
          v41 = *(v40 + 120);
          v42 = *(v40 + 128);
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v41)
          {
            goto LABEL_69;
          }

          v43 = v189 + 1;
          if (v38 == 3)
          {
            if (v29)
            {
              v234 = 0uLL;
              v44 = *(a1 + 32);
              v45 = *v7;
              v230 = 0;
              v231 = 0;
              v46 = *(v45 + 23);
              if (v46)
              {
                v231 = std::__shared_weak_count::lock(v46);
                if (v231)
                {
                  v230 = *(v45 + 22);
                }
              }

              v228 = 0;
              v229 = 0;
              v47 = *(v29 + 23);
              if (v47)
              {
                v229 = std::__shared_weak_count::lock(v47);
                if (v229)
                {
                  v228 = *(v29 + 22);
                }
              }

              v48 = *(*v7 + 18);
              QP::Lexer::merge(v44, &v230, &v228, a4, &v234);
              if (v229)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v229);
              }

              if (v231)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v231);
              }

              v49 = v234;
              if (v234)
              {
                if ((a4 & 1) == 0)
                {
                  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                  v49 = v234;
                }

                v50 = *(&v234 + 1);
                if (*(&v234 + 1))
                {
                  atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v51 = *(v29 + 23);
                *(v29 + 22) = v49;
                *(v29 + 23) = v50;
                if (v51)
                {
                  std::__shared_weak_count::__release_weak(v51);
                }

                if (v50)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                }

                QP::ParseAttribute::setShouldIgnore(*v7, 1);
                if (!v27)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v235[0] = 0;
                ++v189;
                if (!v27)
                {
                  goto LABEL_66;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
LABEL_66:
              if (*(&v234 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
              }

              v187 = 0;
              v27 = 0;
LABEL_69:
              v52 = v29;
LABEL_70:
              v53 = v28;
LABEL_71:
              if (v42)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v42);
              }

              v30 = v192;
              goto LABEL_75;
            }

            v74 = v7[1];
            v187 = *v7;
            if (v74)
            {
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              v52 = 0;
              v53 = v28;
              v27 = v74;
              ++v189;
              goto LABEL_71;
            }

            v52 = 0;
            v53 = v28;
            v27 = v74;
LABEL_188:
            v189 = v43;
            goto LABEL_71;
          }

          if (v37 == 2)
          {
            if (!v187)
            {
              if (v186)
              {
                if (v29)
                {
                  v234 = 0uLL;
                  v75 = *(a1 + 32);
                  v222 = 0;
                  v223 = 0;
                  v76 = *(v186 + 23);
                  if (v76)
                  {
                    v223 = std::__shared_weak_count::lock(v76);
                    if (v223)
                    {
                      v222 = *(v186 + 22);
                    }
                  }

                  v220 = 0;
                  v221 = 0;
                  v77 = *(v29 + 23);
                  if (v77)
                  {
                    v221 = std::__shared_weak_count::lock(v77);
                    if (v221)
                    {
                      v220 = *(v29 + 22);
                    }
                  }

                  v78 = *(v186 + 18);
                  QP::Lexer::merge(v75, &v222, &v220, a4, &v234);
                  if (v221)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v221);
                  }

                  if (v223)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v223);
                  }

                  v79 = v234;
                  if (v234)
                  {
                    if ((a4 & 1) == 0)
                    {
                      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                      v79 = v234;
                    }

                    v80 = *(&v234 + 1);
                    if (*(&v234 + 1))
                    {
                      atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                      atomic_fetch_add_explicit(&v80->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    }

                    v81 = *(v186 + 23);
                    *(v186 + 22) = v79;
                    *(v186 + 23) = v80;
                    if (v81)
                    {
                      std::__shared_weak_count::__release_weak(v81);
                    }

                    if (v80)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
                    }

                    QP::ParseAttribute::setShouldIgnore(v29, 1);
                  }

                  else
                  {
                    v235[0] = 0;
                    ++v189;
                  }

                  if (v185)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v185);
                  }

                  v52 = *v7;
                  v53 = v7[1];
                  if (v53)
                  {
                    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v28)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                  }

                  if (*(&v234 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
                  }

                  v185 = 0;
                  v186 = 0;
                  v187 = 0;
                  goto LABEL_71;
                }

                v52 = *v7;
                if (*(*v7 + 18) > 3u)
                {
                  v109 = v7[1];
                  if (v109)
                  {
                    atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v28)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                    v43 = v189 + 1;
                  }

                  v110 = v7[1];
                  v172 = *v7;
                  if (v110)
                  {
                    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v184)
                  {
                    v111 = v43;
                    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                    v28 = v109;
                    v184 = v110;
                    v189 = v111;
                  }

                  else
                  {
                    v28 = v109;
                    v184 = v110;
                    v189 = v43;
                  }
                }

                else
                {
                  v234 = 0uLL;
                  v90 = *(a1 + 32);
                  v218 = 0;
                  v219 = 0;
                  v91 = *(v186 + 23);
                  if (v91)
                  {
                    v219 = std::__shared_weak_count::lock(v91);
                    if (v219)
                    {
                      v218 = *(v186 + 22);
                    }
                  }

                  v92 = *v7;
                  v216 = 0;
                  v217 = 0;
                  v93 = *(v92 + 23);
                  if (v93)
                  {
                    v217 = std::__shared_weak_count::lock(v93);
                    if (v217)
                    {
                      v216 = *(v92 + 22);
                    }
                  }

                  v94 = *(v186 + 18);
                  QP::Lexer::merge(v90, &v218, &v216, a4, &v234);
                  if (v217)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v217);
                  }

                  if (v219)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v219);
                  }

                  v95 = v234;
                  if (v234)
                  {
                    if ((a4 & 1) == 0)
                    {
                      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                      v95 = v234;
                    }

                    v96 = *(&v234 + 1);
                    if (*(&v234 + 1))
                    {
                      atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                      atomic_fetch_add_explicit(&v96->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    }

                    v97 = *(v186 + 23);
                    *(v186 + 22) = v95;
                    *(v186 + 23) = v96;
                    if (v97)
                    {
                      std::__shared_weak_count::__release_weak(v97);
                    }

                    if (v96)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
                    }

                    QP::ParseAttribute::setShouldIgnore(*v7, 1);
                  }

                  else
                  {
                    v235[0] = 0;
                    ++v189;
                  }

                  if (*(&v234 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
                  }

                  v52 = 0;
                }

                if (v185)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v185);
                }

                v185 = 0;
                v186 = 0;
                v187 = 0;
                goto LABEL_70;
              }

              if (v29)
              {
                if (v28)
                {
                  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v184)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                  v43 = v189 + 1;
                }

                v52 = *v7;
                v53 = v7[1];
                if (v53)
                {
                  atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v28)
                {
                  v89 = v43;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                  v186 = 0;
                  v187 = 0;
                  v184 = v28;
                  v172 = v29;
                  v189 = v89;
                  goto LABEL_71;
                }

                v186 = 0;
                v187 = 0;
                v184 = 0;
                v172 = v29;
              }

              else
              {
                v52 = *v7;
                v53 = v7[1];
                if (v53)
                {
                  atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v28)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                  v43 = v189 + 1;
                }

                v107 = v7[1];
                v172 = *v7;
                if (v107)
                {
                  atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v184)
                {
                  v108 = v43;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                  v186 = 0;
                  v187 = 0;
                  v184 = v107;
                  v189 = v108;
                  goto LABEL_71;
                }

                v186 = 0;
                v187 = 0;
                v184 = v107;
              }

              goto LABEL_188;
            }

            v234 = 0uLL;
            v54 = *(a1 + 32);
            v55 = *v7;
            v226 = 0;
            v227 = 0;
            v56 = *(v55 + 23);
            if (v56)
            {
              v227 = std::__shared_weak_count::lock(v56);
              if (v227)
              {
                v226 = *(v55 + 22);
              }
            }

            v224 = 0;
            v225 = 0;
            v57 = v187;
            v58 = *(v187 + 23);
            if (v58)
            {
              v59 = std::__shared_weak_count::lock(v58);
              v57 = v187;
              v225 = v59;
              if (v59)
              {
                v224 = *(v187 + 22);
                v57 = v187;
              }
            }

            v60 = *(v57 + 18);
            QP::Lexer::merge(v54, &v226, &v224, a4, &v234);
            if (v225)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v225);
            }

            if (v227)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v227);
            }

            v61 = v234;
            if (v234)
            {
              if ((a4 & 1) == 0)
              {
                std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                v61 = v234;
              }

              v62 = *v7;
              v63 = *(&v234 + 1);
              if (*(&v234 + 1))
              {
                atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v63->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v64 = *(v62 + 23);
              *(v62 + 22) = v61;
              *(v62 + 23) = v63;
              if (v64)
              {
                std::__shared_weak_count::__release_weak(v64);
              }

              if (v63)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              }

              QP::ParseAttribute::setShouldIgnore(v187, 1);
              if (!v27)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v235[0] = 0;
              ++v189;
              if (!v27)
              {
                goto LABEL_101;
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
LABEL_101:
            v52 = *v7;
            v53 = v7[1];
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            if (*(&v234 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
            }

            v187 = 0;
            v27 = 0;
            goto LABEL_71;
          }

          if (v29)
          {
            v65 = *v7;
            if (*(*v7 + 18) > 3u)
            {
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v184)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v184);
              }

              v184 = v28;
              v172 = v29;
              ++v189;
            }

            else
            {
              v234 = 0uLL;
              v66 = *(a1 + 32);
              v214 = 0;
              v215 = 0;
              v67 = *(v65 + 23);
              if (v67)
              {
                v215 = std::__shared_weak_count::lock(v67);
                if (v215)
                {
                  v214 = *(v65 + 22);
                }
              }

              v212 = 0;
              v213 = 0;
              v68 = *(v29 + 23);
              if (v68)
              {
                v213 = std::__shared_weak_count::lock(v68);
                if (v213)
                {
                  v212 = *(v29 + 22);
                }
              }

              v69 = *(v29 + 18);
              QP::Lexer::merge(v66, &v214, &v212, a4, &v234);
              if (v213)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v213);
              }

              if (v215)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v215);
              }

              v70 = v234;
              if (v234)
              {
                if ((a4 & 1) == 0)
                {
                  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                  v70 = v234;
                }

                v71 = *v7;
                v72 = *(&v234 + 1);
                if (*(&v234 + 1))
                {
                  atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v72->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v73 = *(v71 + 23);
                *(v71 + 22) = v70;
                *(v71 + 23) = v72;
                if (v73)
                {
                  std::__shared_weak_count::__release_weak(v73);
                }

                if (v72)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v72);
                }

                QP::ParseAttribute::setModifier(*v7, *(v29 + 18));
                QP::ParseAttribute::setShouldIgnore(v29, 1);
                if (v184)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v184);
                }

                v184 = 0;
                v172 = 0;
              }

              else
              {
                v235[0] = 0;
                ++v189;
              }

              if (*(&v234 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
              }
            }

            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
              v28 = 0;
            }
          }

          else
          {
            if (v186)
            {
              if (v187)
              {
                v234 = 0uLL;
                v82 = *(a1 + 32);
                v210 = 0;
                v211 = 0;
                v83 = *(v186 + 23);
                if (v83)
                {
                  v211 = std::__shared_weak_count::lock(v83);
                  if (v211)
                  {
                    v210 = *(v186 + 22);
                  }
                }

                v208 = 0;
                v209 = 0;
                v84 = *(v187 + 23);
                if (v84)
                {
                  v209 = std::__shared_weak_count::lock(v84);
                  if (v209)
                  {
                    v208 = *(v187 + 22);
                  }
                }

                v85 = *(v186 + 18);
                QP::Lexer::merge(v82, &v210, &v208, a4, &v234);
                if (v209)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v209);
                }

                if (v211)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v211);
                }

                v86 = v234;
                if (v234)
                {
                  if ((a4 & 1) == 0)
                  {
                    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                    v86 = v234;
                  }

                  v87 = *(&v234 + 1);
                  if (*(&v234 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v87->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  v88 = *(v186 + 23);
                  *(v186 + 22) = v86;
                  *(v186 + 23) = v87;
                  if (v88)
                  {
                    std::__shared_weak_count::__release_weak(v88);
                  }

                  if (v87)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
                  }

                  QP::ParseAttribute::setShouldIgnore(v187, 1);
                }

                else
                {
                  v235[0] = 0;
                  ++v189;
                }

                if (v27)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
                }

                if (*(&v234 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
                }

                v187 = 0;
                v27 = 0;
                goto LABEL_245;
              }

              v187 = 0;
            }

            ++v189;
          }

LABEL_245:
          v98 = v7[1];
          v186 = *v7;
          if (v98)
          {
            atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v185)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v185);
          }

          v52 = 0;
          v99 = *v7;
          v100 = *(*v7 + 18);
          if (v100 > 5)
          {
            switch(v100)
            {
              case 6u:
                v104 = v7[1];
                if (v104)
                {
                  atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v180)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v180);
                }

                v52 = 0;
                v185 = v98;
                v53 = v28;
                v180 = v104;
                v167 = v99;
                goto LABEL_71;
              case 7u:
                v106 = v7[1];
                if (v106)
                {
                  atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v183)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v183);
                }

                v52 = 0;
                v183 = v106;
                v185 = v98;
                v53 = v28;
                v169 = v99;
                goto LABEL_71;
              case 8u:
                v102 = v7[1];
                if (v102)
                {
                  atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v192)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v192);
                }

                v52 = 0;
                v171 = v99;
                v192 = v102;
                break;
            }
          }

          else
          {
            if (v100 - 2 < 2)
            {
              v103 = v7[1];
              if (v103)
              {
                atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v178)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v178);
              }

              v52 = 0;
              v185 = v98;
              v53 = v28;
              v178 = v103;
              v174 = v99;
              goto LABEL_71;
            }

            if (v100 == 1)
            {
              v105 = v7[1];
              if (v105)
              {
                atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v182)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v182);
              }

              v52 = 0;
              v185 = v98;
              v53 = v28;
              v182 = v105;
              v168 = v99;
              goto LABEL_71;
            }

            if (v100 == 5)
            {
              v101 = v7[1];
              if (v101)
              {
                atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v176)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v176);
              }

              v52 = 0;
              v185 = v98;
              v53 = v28;
              v176 = v101;
              v170 = v99;
              goto LABEL_71;
            }
          }

          v185 = v98;
          goto LABEL_70;
        }
      }
    }

    v52 = v29;
    v53 = v28;
LABEL_75:
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v29 = v52;
    v28 = v53;
LABEL_76:
    v7 += 2;
  }

  while (v7 != v6);
  if (v186)
  {
    v193 = v30;
    if (v29)
    {
      v234 = 0uLL;
      v112 = *(a1 + 32);
      v206 = 0;
      v207 = 0;
      v113 = *(v186 + 23);
      if (v113)
      {
        v207 = std::__shared_weak_count::lock(v113);
        if (v207)
        {
          v206 = *(v186 + 22);
        }
      }

      v204 = 0;
      v205 = 0;
      v114 = *(v29 + 23);
      v116 = v176;
      v115 = v178;
      v117 = v171;
      if (v114)
      {
        v205 = std::__shared_weak_count::lock(v114);
        if (v205)
        {
          v204 = *(v29 + 22);
        }
      }

      v118 = *(v186 + 18);
      QP::Lexer::merge(v112, &v206, &v204, a4, &v234);
      v119 = v180;
      if (v205)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v205);
      }

      if (v207)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v207);
      }

      v120 = v234;
      if (v234)
      {
        if ((a4 & 1) == 0)
        {
          std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
          v120 = v234;
        }

        v121 = *(&v234 + 1);
        if (*(&v234 + 1))
        {
          atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v121->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v122 = *(v186 + 23);
        *(v186 + 22) = v120;
        *(v186 + 23) = v121;
        if (v122)
        {
          std::__shared_weak_count::__release_weak(v122);
        }

        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v121);
        }

        v119 = v180;
        QP::ParseAttribute::setShouldIgnore(v29, 1);
        goto LABEL_358;
      }

LABEL_359:
      v235[0] = 0;
      goto LABEL_360;
    }

    v116 = v176;
    v115 = v178;
    v117 = v171;
    if (v187)
    {
      v234 = 0uLL;
      v125 = *(a1 + 32);
      v202 = 0;
      v203 = 0;
      v126 = *(v186 + 23);
      if (v126)
      {
        v203 = std::__shared_weak_count::lock(v126);
        if (v203)
        {
          v202 = *(v186 + 22);
        }
      }

      v200 = 0;
      v201 = 0;
      v127 = *(v187 + 23);
      if (v127)
      {
        v201 = std::__shared_weak_count::lock(v127);
        if (v201)
        {
          v200 = *(v187 + 22);
        }
      }

      v128 = *(v186 + 18);
      QP::Lexer::merge(v125, &v202, &v200, a4, &v234);
      v119 = v180;
      if (v201)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v201);
      }

      if (v203)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v203);
      }

      v129 = v234;
      if (!v234)
      {
        goto LABEL_359;
      }

      if ((a4 & 1) == 0)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
        v129 = v234;
      }

      v130 = *(&v234 + 1);
      if (*(&v234 + 1))
      {
        atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v130->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v131 = *(v186 + 23);
      *(v186 + 22) = v129;
      *(v186 + 23) = v130;
      if (v131)
      {
        std::__shared_weak_count::__release_weak(v131);
      }

      if (v130)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v130);
      }

      v119 = v180;
      QP::ParseAttribute::setShouldIgnore(v187, 1);
LABEL_358:
      --v189;
LABEL_360:
      if (*(&v234 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
      }
    }

    else
    {
      v119 = v180;
    }
  }

  else
  {
    v193 = v30;
    v116 = v176;
    v115 = v178;
    v119 = v180;
    v117 = v171;
  }

  v132 = v174;
  if (!v174)
  {
    v134 = v117 != 0;
    if (v117)
    {
      if (v172)
      {
        if (v184)
        {
          atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v124 = v193;
        if (!v193)
        {
          v193 = 0;
          v123 = v184;
          v135 = v172;
          goto LABEL_432;
        }

        v133 = v193;
        v123 = v184;
        v132 = v172;
        goto LABEL_430;
      }

      if (v169)
      {
        if (v183)
        {
          atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v124 = v193;
        if (!v193)
        {
          v193 = 0;
          v123 = v183;
          v135 = v169;
          goto LABEL_432;
        }

        v133 = v193;
        v123 = v183;
        v132 = v169;
        goto LABEL_430;
      }

      v172 = 0;
      goto LABEL_410;
    }

    if (!v169)
    {
      v117 = 0;
LABEL_410:
      if (!v170)
      {
        goto LABEL_416;
      }

      if (v167)
      {
        if (v119)
        {
          atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v117 = v170;
        if (!v116)
        {
          v124 = v193;
          v123 = v119;
          v135 = v167;
          goto LABEL_536;
        }

        v133 = v116;
        v123 = v119;
        v132 = v167;
        goto LABEL_429;
      }

      if (!v172)
      {
        goto LABEL_408;
      }

      if (v119)
      {
        atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v184)
      {
        atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
        v124 = v193;
        v193 = v184;
        v123 = v119;
        goto LABEL_455;
      }

      v184 = 0;
      v124 = v193;
      v123 = v119;
LABEL_523:
      v193 = 0;
      goto LABEL_455;
    }

    v117 = v170;
    if (v170)
    {
      if (v183)
      {
        atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v116)
      {
        v133 = v116;
LABEL_406:
        v123 = v183;
        v132 = v169;
LABEL_429:
        v124 = v193;
        goto LABEL_430;
      }

      v124 = v193;
    }

    else
    {
      v134 = v172;
      if (!v172)
      {
        goto LABEL_407;
      }

      if (v183)
      {
        atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v133 = v184;
      if (v184)
      {
        v117 = v172;
        goto LABEL_406;
      }

      v184 = 0;
      v124 = v193;
      v117 = v172;
    }

    v123 = v183;
    v135 = v169;
    goto LABEL_536;
  }

  if (v117)
  {
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      v132 = v174;
    }

    v124 = v193;
    if (v193)
    {
      v133 = v193;
      v123 = v115;
      goto LABEL_430;
    }

    v193 = 0;
    v123 = v115;
LABEL_431:
    v135 = v132;
LABEL_432:
    v234 = 0uLL;
    v136 = *(a1 + 32);
    v198 = 0;
    v199 = 0;
    v137 = v135;
    v138 = *(v135 + 23);
    if (v138)
    {
      v199 = std::__shared_weak_count::lock(v138);
      if (v199)
      {
        v198 = *(v137 + 22);
      }
    }

    size = 0;
    v197 = 0;
    v139 = v117[7].__r_.__value_.__r.__words[2];
    if (v139)
    {
      v197 = std::__shared_weak_count::lock(v139);
      if (v197)
      {
        size = v117[7].__r_.__value_.__l.__size_;
      }
    }

    v140 = *(v137 + 18);
    QP::Lexer::merge(v136, &v198, &size, a4, &v234);
    if (v197)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v197);
    }

    if (v199)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v199);
    }

    v141 = v234;
    if (v234)
    {
      if ((a4 & 1) == 0)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
        v141 = v234;
      }

      v142 = *(&v234 + 1);
      if (*(&v234 + 1))
      {
        atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v142->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v143 = *(v137 + 23);
      *(v137 + 22) = v141;
      *(v137 + 23) = v142;
      if (v143)
      {
        std::__shared_weak_count::__release_weak(v143);
      }

      if (v142)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v142);
      }

      QP::ParseAttribute::setShouldIgnore(v117, 1);
      --v189;
    }

    else
    {
      v235[0] = 0;
    }

    if (*(&v234 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
    }

    goto LABEL_455;
  }

  v117 = v170;
  if (v170)
  {
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v116)
    {
      v133 = v116;
      goto LABEL_397;
    }

    v124 = v193;
LABEL_527:
    v123 = v115;
    v135 = v174;
LABEL_536:
    v193 = 0;
    goto LABEL_432;
  }

  v134 = v172;
  if (v172)
  {
    if (v115)
    {
      atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v133 = v184;
    if (!v184)
    {
      v184 = 0;
      v124 = v193;
      v117 = v172;
      goto LABEL_527;
    }

    v117 = v172;
LABEL_397:
    v123 = v115;
    v124 = v193;
    v132 = v174;
LABEL_430:
    atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
    v193 = v133;
    goto LABEL_431;
  }

LABEL_407:
  v117 = 0;
LABEL_408:
  v172 = 0;
LABEL_416:
  if (!v168)
  {
LABEL_522:
    v123 = 0;
    v124 = v193;
    goto LABEL_523;
  }

  if (!v134)
  {
    if (v172)
    {
      if (v182)
      {
        atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v133 = v184;
      if (!v184)
      {
        v184 = 0;
        v124 = v193;
        v117 = v172;
        v123 = v182;
        v193 = 0;
        v135 = v168;
        goto LABEL_432;
      }

      v117 = v172;
      v123 = v182;
      v132 = v168;
      goto LABEL_429;
    }

    goto LABEL_522;
  }

  if (v182)
  {
    atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v124 = v193;
  if (v193)
  {
    atomic_fetch_add_explicit(&v193->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v123 = v182;
  v135 = v168;
  if (v117)
  {
    goto LABEL_432;
  }

  v123 = v182;
LABEL_455:
  if (v189 >= 2)
  {
    v26 = 0;
    v235[0] = 0;
    goto LABEL_497;
  }

LABEL_457:
  if (v235[0])
  {
    v190 = v124;
    v145 = *a2;
    v144 = a2[1];
    if (v144 != *a2)
    {
      v179 = v115;
      v181 = v119;
      v177 = v116;
      v146 = 0;
      while (1)
      {
        v147 = *v145;
        if (!v146)
        {
          v146 = *(v147 + 36);
        }

        if ((*(v147 + 74) & 1) == 0)
        {
          v148 = std::__shared_weak_count::lock(*(v147 + 184));
          if (*(*(v147 + 176) + 88) - 1 <= 3 && (v149 = *v145, (v150 = *(*v145 + 184)) != 0) && (v151 = std::__shared_weak_count::lock(v150)) != 0)
          {
            v152 = *(v149 + 176);
            std::__shared_weak_count::__release_shared[abi:ne200100](v151);
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
            if (v152)
            {
              v153 = *v145;
              v154 = std::__shared_weak_count::lock(*(*v145 + 184));
              v155 = *(v153 + 176);
              v156 = *(v155 + 120);
              v157 = *(v155 + 128);
              if (v157)
              {
                atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v156)
              {
                v234 = 0uLL;
                v158 = *(a1 + 32);
                v159 = *v145;
                v194 = 0;
                v195 = 0;
                v160 = *(v159 + 184);
                if (v160)
                {
                  v195 = std::__shared_weak_count::lock(v160);
                  if (v195)
                  {
                    v194 = *(v159 + 176);
                  }
                }

                QP::Lexer::resolve(v158, &v194, v146, v235, a4, &v234);
                if (v195)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v195);
                }

                v161 = v234;
                if (v234)
                {
                  if ((a4 & 1) == 0)
                  {
                    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, &v234);
                    v161 = v234;
                  }

                  v162 = *v145;
                  v163 = *(&v234 + 1);
                  if (*(&v234 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v234 + 1) + 8), 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v163->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  v164 = *(v162 + 184);
                  *(v162 + 176) = v161;
                  *(v162 + 184) = v163;
                  if (v164)
                  {
                    std::__shared_weak_count::__release_weak(v164);
                  }

                  if (v163)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v163);
                  }
                }

                if (*(&v234 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
                }

                v146 = 0;
              }

              v165 = v235[0];
              if (v157)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v157);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v154);
              if (!v165)
              {
LABEL_493:
                v26 = v235[0];
                v116 = v177;
                v115 = v179;
                v119 = v181;
                goto LABEL_496;
              }
            }
          }

          else
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
          }
        }

        v145 += 2;
        if (v145 == v144)
        {
          goto LABEL_493;
        }
      }
    }

    v26 = 1;
LABEL_496:
    v124 = v190;
  }

  else
  {
    v26 = 0;
  }

LABEL_497:
  if (v193)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v193);
  }

  if (v123)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v123);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v185)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v185);
  }

  if (v124)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v124);
  }

  if (v183)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v183);
  }

  if (v119)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v119);
  }

  if (v116)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (v184)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v184);
  }

  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }

  return v26;
}

void sub_1C65D0880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::__shared_weak_count *a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21, std::__shared_weak_count *a22, std::__shared_weak_count *a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v36 = *(v34 - 104);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

void QP::ParseAttribute::setShouldIgnore(std::string *this, int a2)
{
  this[3].__r_.__value_.__s.__data_[2] = a2;
  if (a2)
  {
    v3 = this[7].__r_.__value_.__r.__words[2];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        size = this[7].__r_.__value_.__l.__size_;
        if (size)
        {
          v6 = *(size + 88);
          if ((v6 - 1) <= 3)
          {
            QP::getUTF8StringFromCFString(kQPParseAttributeDateExtensionKey, &__str);
            std::string::operator=(this + 2, &__str);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              p_str = &__str;
LABEL_17:
              operator delete(p_str->__r_.__value_.__l.__data_);
              goto LABEL_12;
            }

            goto LABEL_12;
          }

          if (v6 == 7)
          {
            QP::getUTF8StringFromCFString(kQPParseAttributeNumberExtensionKey, &v9);
            std::string::operator=(this + 2, &v9);
            if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
            {
              p_str = &v9;
              goto LABEL_17;
            }

LABEL_12:
            std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            return;
          }
        }
      }
    }

    else
    {
      v4 = 0;
    }

    QP::getUTF8StringFromCFString(kQPParseAttributeExtensionKey, &v8);
    std::string::operator=(this + 2, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v4)
    {
      goto LABEL_12;
    }
  }
}

void sub_1C65D0C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  _Unwind_Resume(a1);
}

void QP::ParseAttribute::setModifier(uint64_t a1, __int16 a2)
{
  *(a1 + 36) = a2;
  v3 = *(a1 + 184);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 176);
      if (v7 && *(v7 + 88) - 1 <= 3)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(v7 + 120);
        v8 = *(v7 + 128);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          *(v9 + 16) = a2;
          if ((a2 - 1) > 7u)
          {
            v10 = 0;
          }

          else
          {
            v10 = dword_1C6632074[(a2 - 1)];
          }

          *(v9 + 20) = v10;
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t QP::Parser::mergeNumbers(uint64_t a1, QP::ParseAttribute ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if ((v3 - *a2) < 0x11 || v2 == v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v6;
    if (QP::ParseAttribute::flag(*v2) == 7)
    {
      v8 = *v2;
      v9 = *(*v2 + 23);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = *(v8 + 22);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          if (v11)
          {
            if (v5)
            {
              v12 = *(v5 + 23);
              if (v12)
              {
                v13 = std::__shared_weak_count::lock(v12);
                if (v13)
                {
                  v14 = v13;
                  v15 = *(v5 + 22);
                  if (v15)
                  {
                    v17 = *(v15 + 120);
                    v16 = *(v15 + 128);
                    if (v16)
                    {
                      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v18 = *v2;
                    v19 = *(*v2 + 23);
                    if (v19)
                    {
                      v20 = std::__shared_weak_count::lock(v19);
                      if (v20)
                      {
                        v21 = *(v18 + 22);
                        if (v21)
                        {
                          v23 = *(v21 + 120);
                          v22 = *(v21 + 128);
                          if (v22)
                          {
                            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
                          }

                          operator new();
                        }

                        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                      }
                    }

                    if (v16)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
                    }

                    v6 = v7;
                  }

LABEL_33:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                }
              }
            }

            else
            {
              v5 = *v2;
              v6 = v2[1];
              if (v6)
              {
                atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v14 = v7;
              if (v7)
              {
                goto LABEL_33;
              }
            }
          }
        }
      }
    }

    v2 += 2;
  }

  while (v2 != v3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 1;
}

void sub_1C65D10E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x1C695B850](a11, 0x1000C40504FFAC1);
  }

  MEMORY[0x1C695B850](v14, 0x20C40DC1BFBCFLL);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

BOOL QP::Parser::merge(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  QP::Parser::mergeActions(a1, a2);
  v8 = QP::Parser::mergeDates(a1, a2, a3, a4);
  v9 = v8;
  if (v8)
  {
    QP::Parser::mergeNumbers(v8, a2);
  }

  return v9;
}

BOOL QP::Parser::validate(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  result = QP::Parser::merge(a1, a2, a3, a4);
  if (result)
  {
    v7 = *a2;
    v8 = a2[1];
    if (*a2 != v8)
    {
      while (1)
      {
        v9 = *v7;
        v10 = *(*v7 + 184);
        if (!v10)
        {
          goto LABEL_27;
        }

        v11 = std::__shared_weak_count::lock(v10);
        if (!v11)
        {
          goto LABEL_27;
        }

        v12 = v11;
        v13 = *(v9 + 176);
        if (v13)
        {
          if ((*(*v7 + 74) & 1) == 0 && *(v13 + 88) - 1 <= 3)
          {
            break;
          }
        }

LABEL_26:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_27:
        v7 += 16;
        if (v7 == v8)
        {
          return 1;
        }
      }

      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(*a1 + 96);
      v15 = *(*a1 + 80);
      v17 = *(v13 + 120);
      v16 = *(v13 + 128);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        v18 = *a1;
        if (*(*a1 + 27) == 1 && *(v17 + 12) == 2 && *(v18 + 29) == 1)
        {
          AbsoluteTime = QP::DateComponents::getAbsoluteTime((v17 + 24), v14, v15);
          if (AbsoluteTime > getCurrentTime(v14, v15))
          {
LABEL_21:
            v23 = 0;
            goto LABEL_23;
          }

          v18 = *a1;
        }

        if (*(v18 + 26) == 1 && *(v17 + 12) == 2 && (*(v17 + 20) - 1) >= 2)
        {
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v20 = *(v17 + 24);
          v21 = *(v17 + 56);
          v25 = *(v17 + 40);
          v26 = v21;
          v27 = *(v17 + 72);
          v24 = v20;
          if (QP::DateComponents::isConcrete(&v24))
          {
            v22 = QP::DateComponents::getAbsoluteTime(&v24, v14, v15);
            if (v22 < getCurrentTime(v14, v15))
            {
              goto LABEL_21;
            }
          }
        }
      }

      v23 = 1;
LABEL_23:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      if (!v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        return 0;
      }

      goto LABEL_26;
    }

    return 1;
  }

  return result;
}

void sub_1C65D13E8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t QP::DateComponents::isConcrete(QP::DateComponents *this)
{
  if ((*(this + 11) & 0x80000000) != 0)
  {
    if ((*(this + 10) & 0x80000000) != 0 && (*(this + 9) & 0x80000000) != 0 && (*(this + 12) & 0x80000000) != 0 && (*(this + 3) & 0x80000000) == 0 && (*(this + 4) & 0x80000000) == 0 && (*(this + 5) & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else if ((*(this + 12) & 0x80000000) == 0)
  {
    return 1;
  }

  return 0;
}

void QP::Parser::retainCurrentString(const void **this)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this + 9, 0);
  v2 = *(this[4] + 55);
  if (v2)
  {
    v3 = CFRetain(v2);

    nlp::CFScopedPtr<__CFString const*>::reset(this + 9, v3);
  }
}

void QP::Parser::parseLLMLexer(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a1 + 32);
  v7 = *(v6 + 560);
  v8 = *(v6 + 552);
  v9 = v7 - v8;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
  v75 = 0;
  v74 = 0u;
  std::vector<std::vector<CFRange>>::__init_with_size[abi:ne200100]<std::vector<CFRange>*,std::vector<CFRange>*>(&v74, v8, v7, v10);
  v11 = 0uLL;
  v73 = 0;
  v72 = 0u;
  if (v9 >= 1)
  {
    v44 = a3;
    v12 = 0;
    v13 = 0;
    if (v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    v45 = v14;
    v15 = -1;
    v50 = v4;
    while (1)
    {
      v71[0] = 0;
      v71[1] = v71;
      v71[2] = 0x2000000000;
      v71[3] = 0;
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x2000000000;
      v70[3] = -1;
      QP::GraphStructureStack::clear(*(v4 + 64));
      v16 = *(v4 + 32);
      memset(v69, 0, sizeof(v69));
      std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v69, *a2, a2[1], (a2[1] - *a2) >> 4);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 0x40000000;
      v68[2] = ___ZN2QP6Parser13parseLLMLexerERNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke;
      v68[3] = &unk_1E8266FD0;
      v68[4] = v70;
      v68[5] = v71;
      v68[6] = v4;
      QP::Lexer::enumerateLexemesAtParseIndex(v16, v13, v69, v68);
      v62 = v69;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v62);
      QP::GraphStructureStack::close(*(v4 + 64));
      v46 = v13;
      v48 = (*(*(v4 + 64) + 24) - *(*(v4 + 64) + 16)) >> 4;
      if (v48 < 1)
      {
        goto LABEL_47;
      }

      v17 = 0;
      v47 = MEMORY[0x1E69E9820];
      do
      {
        v62 = 0;
        v63 = &v62;
        v64 = 0x4002000000;
        v65 = __Block_byref_object_copy__9;
        v66 = __Block_byref_object_dispose__9;
        memset(v67, 0, sizeof(v67));
        __p.__r_.__value_.__r.__words[0] = 0;
        __p.__r_.__value_.__l.__size_ = &__p;
        __p.__r_.__value_.__r.__words[2] = 0x4002000000;
        v58 = __Block_byref_object_copy__1;
        v59 = __Block_byref_object_dispose__2;
        v61[0] = 0;
        v61[1] = 0;
        v60 = v61;
        v18 = *(v4 + 64);
        v56[0] = v47;
        v56[1] = 0x40000000;
        v56[2] = ___ZN2QP6Parser13parseLLMLexerERNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke_3;
        v56[3] = &unk_1E8266FF8;
        v56[6] = v4;
        v56[7] = a2;
        v56[4] = &__p;
        v56[5] = &v62;
        QP::GraphStructureStack::enumerateBranchesAtStateIndex(v18, v17, v56);
        v19 = v63[5];
        v20 = v63[6];
        v21 = 126 - 2 * __clz((v20 - v19) >> 4);
        v55[0] = QP::parse_attr_less_than_range;
        if (v20 == v19)
        {
          v22 = 0;
        }

        else
        {
          v22 = v21;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*,false>(v19, v20, v55, v22, 1);
        memset(v55, 0, sizeof(v55));
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v24 = v63[5];
        v23 = v63[6];
        if (v24 != v23)
        {
          v25 = 0;
          v26 = -1;
          do
          {
            v27 = *(*v24 + 16);
            v28 = *(*v24 + 24);
            if (v27 == -1 || v26 != -1 && v28 + v27 <= v26 + v25)
            {
              if (v26 != v27 || v25 != v28)
              {
                goto LABEL_23;
              }
            }

            else
            {
              QP::updateParseAttributes(&v52, v55);
            }

            std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](v55, v24);
            v26 = *(*v24 + 16);
            v25 = *(*v24 + 24);
LABEL_23:
            ++v24;
          }

          while (v24 != v23);
        }

        QP::updateParseAttributes(&v52, v55);
        v31 = v52;
        v30 = v53;
        if (v52 == v53)
        {
          goto LABEL_46;
        }

        v49 = v17;
        v51 = v53;
        while (1)
        {
          v32 = v12;
          v33 = v15;
          if (QP::Parser::validate(v4, v31, a2, 0))
          {
            v34 = *v31;
            v35 = v31[1];
            if (*v31 == v35)
            {
              v12 = 0;
              v15 = -1;
            }

            else
            {
              v36 = a2;
              v15 = -1;
              do
              {
                v37 = v15;
                v39 = *(*v34 + 16);
                v38 = *(*v34 + 24);
                if (v15 == -1)
                {
                  v15 = *(*v34 + 16);
                }

                if ((*(*v34 + 74) & 1) == 0)
                {
                  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](&v72, v34);
                }

                ++v34;
              }

              while (v34 != v35);
              v40 = v39 - v37;
              if (v37 == -1)
              {
                v40 = 0;
              }

              v12 = v38 + v40;
              a2 = v36;
              v4 = v50;
              v30 = v51;
            }

            if (v33 == -1)
            {
              goto LABEL_42;
            }

            if (v33 != v15 || v32 != v12)
            {
              break;
            }
          }

          v12 = v32;
          v15 = v33;
LABEL_42:
          v31 += 3;
          if (v31 == v30)
          {
            v17 = v49;
            goto LABEL_46;
          }
        }

        if (v33 + v32 <= v15 + v12)
        {
          goto LABEL_42;
        }

        v12 = v32;
        v15 = v33;
        v17 = v48;
LABEL_46:
        v76 = &v52;
        std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__destroy_vector::operator()[abi:ne200100](&v76);
        v52 = v55;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v52);
        _Block_object_dispose(&__p, 8);
        std::__tree<std::string>::destroy(&v60, v61[0]);
        _Block_object_dispose(&v62, 8);
        __p.__r_.__value_.__r.__words[0] = v67;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&__p);
        ++v17;
      }

      while (v17 < v48);
LABEL_47:
      _Block_object_dispose(v70, 8);
      _Block_object_dispose(v71, 8);
      v13 = v46 + 1;
      if (v46 + 1 == v45)
      {
        v11 = v72;
        a3 = v44;
        break;
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v63 = 0;
  v64 = 0;
  v62 = &v63;
  v42 = *(&v11 + 1);
  v41 = v11;
  if (v11 == *(&v11 + 1))
  {
    v43 = 0;
  }

  else
  {
    do
    {
      memset(&__p, 0, sizeof(__p));
      QP::ParseAttribute::description(*v41, &__p);
      if (&v63 == std::__tree<std::string>::find<std::string>(&v62, &__p.__r_.__value_.__l.__data_) && (*(*v41 + 74) & 1) == 0)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](a3, v41);
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v62, &__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v41 += 2;
    }

    while (v41 != v42);
    v43 = v63;
  }

  std::__tree<std::string>::destroy(&v62, v43);
  v62 = &v72;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v62);
  v62 = &v74;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&v62);
}

void sub_1C65D1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(&a56, a57);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a56);
  a56 = v57 - 176;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a56);
  a56 = v57 - 152;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a56);
  _Unwind_Resume(a1);
}

void *___ZN2QP6Parser13parseLLMLexerERNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, CFIndex a5, CFIndex a6)
{
  v11 = a1[6];
  v12 = QP::ParserGrammar::symbolID(*(v11 + 16), *a2);
  v13 = *(*v11 + 31);
  v16.location = a5;
  v16.length = a6;
  result = QP::GraphStructureStack::add(*(v11 + 64), v12, a3, a4, v16);
  v15 = *(a1[4] + 8);
  if (*(v15 + 24) < a3)
  {
    ++*(*(a1[5] + 8) + 24);
    v15 = *(a1[4] + 8);
  }

  *(v15 + 24) = a3;
  return result;
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
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

void *__Block_byref_object_copy__1(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void ___ZN2QP6Parser13parseLLMLexerERNSt3__16vectorINS1_10shared_ptrINS_6LexemeEEENS1_9allocatorIS5_EEEE_block_invoke_3(uint64_t a1, _WORD **a2)
{
  v4 = *(a1 + 48);
  v5 = *a2;
  v21 = *(*a2 + 12);
  v20 = *(v5 + 8);
  v18 = 0;
  v19 = 0uLL;
  v6 = *(v4 + 32);
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(__p, *(v5 + 40), *(v5 + 48), (*(v5 + 48) - *(v5 + 40)) >> 3);
  v7 = *(a1 + 56);
  memset(v15, 0, sizeof(v15));
  std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v15, *v7, v7[1], (v7[1] - *v7) >> 4);
  QP::Lexer::lexemeFromLocationsAndLexemes(__p, v15, &v18);
  v11 = v15;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v8 = v18;
  v9 = v19;
  v14 = v19;
  if (*(&v19 + 1))
  {
    atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v8 && v9)
  {
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](*(a1 + 56), &v14);
    v9 = v14;
  }

  if (v9)
  {
    v12 = 0;
    v13 = 0;
    v10 = *a2;
    LOWORD(__p[0]) = **a2;
    LOWORD(v11) = *(v10 + 2);
    std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,unsigned short,unsigned short,0>();
  }

  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }
}

void sub_1C65D2038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void QP::ParseAttribute::description(QP::ParseAttribute *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 12);
  v4 = *(this + 25);
  v5 = *(this + 24);
  if (v4 != v5)
  {
    v6 = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    while (1)
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6)
      {
        std::string::append(a2, "|", 1uLL);
      }

      QP::ParseAttribute::description(&v43, v8);
      v9 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
      v10 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v43.__r_.__value_.__r.__words[2]) : v43.__r_.__value_.__l.__size_;
      std::string::append(a2, v9, v10);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_15;
      }

LABEL_16:
      v5 += 16;
      v6 = 1;
      if (v5 == v4)
      {
        return;
      }
    }

    operator delete(v43.__r_.__value_.__l.__data_);
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_16;
  }

  std::to_string(&v39, *(this + 16));
  std::to_string(&v38, *(this + 17));
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v38;
  }

  else
  {
    v12 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v39, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v37, *(this + 2));
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v37;
  }

  else
  {
    v16 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v37.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v40, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(this + 3));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v41, p_p, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v42, "_", 1uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::__shared_weak_count::lock(*(this + 23));
  v27 = *(this + 22);
  v30 = *(v27 + 48);
  v28 = v27 + 48;
  v29 = v30;
  v31 = *(v28 + 23);
  if (v31 >= 0)
  {
    v32 = v28;
  }

  else
  {
    v32 = v29;
  }

  if (v31 >= 0)
  {
    v33 = *(v28 + 23);
  }

  else
  {
    v33 = *(v28 + 8);
  }

  v34 = std::string::append(&v43, v32, v33);
  v35 = *&v34->__r_.__value_.__l.__data_;
  a2->__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&a2->__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_1C65D23D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  if (*(v46 - 121) < 0)
  {
    operator delete(*(v46 - 144));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void QP::updateParseAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v11 = *(a2 + 8);
  if (v11 != *a2)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    do
    {
      QP::ParseAttribute::description(*v2, &__p);
      v3 = std::__tree<std::string>::__count_unique<std::string>(&v13, &__p.__r_.__value_.__l.__data_);
      v4 = v3;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v4)
        {
LABEL_7:
          QP::ParseAttribute::description(*v2, &__p);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v13, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v5 = *a1;
          if (*(a1 + 8) != *a1)
          {
            memset(&__p, 0, sizeof(__p));
            if (*v5 != v5[1])
            {
              v6 = **v5;
              std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,unsigned short &,unsigned short &,0>();
            }

            v7 = *v2;
            std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,unsigned short &,unsigned short &,0>();
          }

          v8 = *v2;
          std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,unsigned short &,unsigned short &,0>();
        }
      }

      else if (!v3)
      {
        goto LABEL_7;
      }

      v2 += 2;
    }

    while (v2 != v11);
    std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::erase(a1, *a1, *(a1 + 8));
    std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<std::shared_ptr<QP::ParseAttribute>>*>,std::__wrap_iter<std::vector<std::shared_ptr<QP::ParseAttribute>>*>>(a1, *(a1 + 8), v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(a2, *a2, *(a2 + 8));
    std::__tree<std::string>::destroy(&v13, v14[0]);
    v13 = &v15;
    std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__destroy_vector::operator()[abi:ne200100](&v13);
  }
}

void sub_1C65D29D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::__tree<std::string>::destroy(v40 - 144, *(v40 - 136));
  *(v40 - 144) = v40 - 120;
  std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__destroy_vector::operator()[abi:ne200100]((v40 - 144));
  _Unwind_Resume(a1);
}

void QP::Parser::parseLexer(QP::Parser *this)
{
  v1 = *(*(this + 4) + 560) - *(*(this + 4) + 552);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = 0xAAAAAAAAAAAAAAABLL * (v1 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v23 = v4;
    while (1)
    {
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x2000000000;
      v47[3] = 0;
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x2000000000;
      v46[3] = -1;
      QP::GraphStructureStack::clear(*(this + 8));
      v5 = *(this + 4);
      memset(v45, 0, sizeof(v45));
      std::vector<std::shared_ptr<QP::Lexeme>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::Lexeme>*,std::shared_ptr<QP::Lexeme>*>(v45, v5[63], v5[64], (v5[64] - v5[63]) >> 4);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 0x40000000;
      v44[2] = ___ZN2QP6Parser10parseLexerEv_block_invoke;
      v44[3] = &unk_1E8267020;
      v44[4] = v46;
      v44[5] = v47;
      v44[6] = this;
      QP::Lexer::enumerateLexemesAtParseIndex(v5, v3, v45, v44);
      v38 = v45;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v38);
      QP::GraphStructureStack::close(*(this + 8));
      v24 = v3;
      v26 = (*(*(this + 8) + 24) - *(*(this + 8) + 16)) >> 4;
      if (v26 >= 1)
      {
        break;
      }

LABEL_30:
      _Block_object_dispose(v46, 8);
      _Block_object_dispose(v47, 8);
      v3 = v24 + 1;
      if (v24 + 1 == v23)
      {
        return;
      }
    }

    v6 = 0;
    v25 = MEMORY[0x1E69E9820];
    while (1)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x4002000000;
      v41 = __Block_byref_object_copy__9;
      v42 = __Block_byref_object_dispose__9;
      memset(v43, 0, sizeof(v43));
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x4002000000;
      v35[3] = __Block_byref_object_copy__1;
      v35[4] = __Block_byref_object_dispose__2;
      v37[0] = 0;
      v37[1] = 0;
      v36 = v37;
      v7 = *(this + 8);
      v34[0] = v25;
      v34[1] = 0x40000000;
      v34[2] = ___ZN2QP6Parser10parseLexerEv_block_invoke_2;
      v34[3] = &unk_1E8267048;
      v34[4] = v35;
      v34[5] = &v38;
      v34[6] = this;
      QP::GraphStructureStack::enumerateBranchesAtStateIndex(v7, v6, v34);
      v8 = v39[5];
      v9 = v39[6];
      v10 = 126 - 2 * __clz((v9 - v8) >> 4);
      v33[0] = QP::parse_attr_less_than_range;
      v11 = v9 == v8 ? 0 : v10;
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*,false>(v8, v9, v33, v11, 1);
      memset(v33, 0, sizeof(v33));
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v13 = v39[5];
      v12 = v39[6];
      if (v13 != v12)
      {
        break;
      }

LABEL_23:
      QP::updateParseAttributes(&v30, v33);
      v20 = v30;
      v19 = v31;
      while (v20 != v19)
      {
        memset(v29, 0, sizeof(v29));
        if (QP::Parser::validate(this, v20, v29, 1))
        {
          v28[0] = 0;
          v28[1] = 0;
          v21 = *(*(this + 8) + 96);
          v27 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 4) + 464) - *(*(this + 4) + 456)) >> 3);
          std::allocate_shared[abi:ne200100]<QP::Parse,std::allocator<QP::Parse>,nlp::CFScopedPtr<__CFString const*> &,long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),0>();
        }

        v28[0] = v29;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v28);
        v20 += 3;
      }

      v22 = *(this + 12) - *(this + 11);
      v29[0] = &v30;
      std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__destroy_vector::operator()[abi:ne200100](v29);
      v30 = v33;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v30);
      _Block_object_dispose(v35, 8);
      std::__tree<std::string>::destroy(&v36, v37[0]);
      _Block_object_dispose(&v38, 8);
      v35[0] = v43;
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v35);
      if (v22 <= 0x40 && ++v6 < v26)
      {
        continue;
      }

      goto LABEL_30;
    }

    v14 = 0;
    v15 = -1;
    while (1)
    {
      v16 = *(*v13 + 16);
      v17 = *(*v13 + 24);
      if (v16 == -1 || v15 != -1 && v17 + v16 <= v15 + v14)
      {
        if (v15 != v16 || v14 != v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        QP::updateParseAttributes(&v30, v33);
      }

      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](v33, v13);
      v15 = *(*v13 + 16);
      v14 = *(*v13 + 24);
LABEL_22:
      if (++v13 == v12)
      {
        goto LABEL_23;
      }
    }
  }
}

void sub_1C65D3008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void **a55)
{
  a55 = (v55 - 216);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a55);
  _Block_object_dispose((v55 - 192), 8);
  _Block_object_dispose((v55 - 160), 8);
  _Unwind_Resume(a1);
}

void *___ZN2QP6Parser10parseLexerEv_block_invoke(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, CFIndex a5, CFIndex a6)
{
  v11 = a1[6];
  v12 = QP::ParserGrammar::symbolID(*(v11 + 16), *a2);
  v13 = *(*v11 + 31);
  v16.location = a5;
  v16.length = a6;
  result = QP::GraphStructureStack::add(*(v11 + 64), v12, a3, a4, v16);
  v15 = *(a1[4] + 8);
  if (*(v15 + 24) < a3)
  {
    ++*(*(a1[5] + 8) + 24);
    v15 = *(a1[4] + 8);
  }

  *(v15 + 24) = a3;
  return result;
}

void ___ZN2QP6Parser10parseLexerEv_block_invoke_2(uint64_t a1, _WORD **a2)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v13 = *(*a2 + 12);
  v12 = *(v4 + 8);
  v10 = 0;
  v11 = 0;
  v5 = *(v3 + 32);
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(__p, *(v4 + 40), *(v4 + 48), (*(v4 + 48) - *(v4 + 40)) >> 3);
  QP::Lexer::lexemeFromLocations(v5, __p, &v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10)
  {
    v6 = *a2;
    LOWORD(__p[0]) = **a2;
    v7 = *(v6 + 2);
    std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange &,CFRange &,unsigned short,unsigned short,0>();
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1C65D3400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

void QP::Parser::addAndSortParse(QP::Parser *this)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  v4 = (this + 88);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v3 == v2)
  {
    memset(v13, 0, sizeof(v13));
    v12[0] = 0;
    v12[1] = 0;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 4) + 464) - *(*(this + 4) + 456)) >> 3);
    std::allocate_shared[abi:ne200100]<QP::Parse,std::allocator<QP::Parse>,nlp::CFScopedPtr<__CFString const*> &,int,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),0>();
  }

  std::vector<std::shared_ptr<QP::Parse>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Parse>*>,std::__wrap_iter<std::shared_ptr<QP::Parse>*>>(&v14, 0, v2, v3, (v3 - v2) >> 4);
  v5 = 126 - 2 * __clz(v15 - v14);
  v12[0] = QP::best_parse;
  if (v15 == v14)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*,false>(v14, v15, v12, v6, 1);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::erase(v4, *(this + 11), *(this + 12));
  v7 = v14;
  v8 = v15;
  if (v14 != v15)
  {
    v9 = 0;
    do
    {
      if ((v9 & 1) != 0 && (*(*v7 + 82) & 1) == 0)
      {
        break;
      }

      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::push_back[abi:ne200100](v4, v7);
      v10 = *v7++;
      v9 = *(v10 + 82);
    }

    while (v7 != v8);
  }

  v13[0] = &v14;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v13);
}

void sub_1C65D35F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void ***a12, std::__shared_weak_count *a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a12 = &a14;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a14 = &a17;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void QP::Parser::addU2Parse(QP::Parser *this, const __CFDictionary *a2)
{
  QP::U2Parser::parse(*(this + 6), this + 88, a2);
  v3 = *(this + 6);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2QP6Parser10addU2ParseEPK14__CFDictionary_block_invoke;
  v4[3] = &__block_descriptor_tmp_11;
  v4[4] = this;
  QP::U2Parser::enumerateParses(v3, v4);
}

void QP::Parser::addEntitiyParse(QP::Parser *this)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  memset(v13, 0, 24);
  v2 = *(this + 4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN2QP6Parser15addEntitiyParseEv_block_invoke;
  v7[3] = &unk_1E82670B0;
  v7[4] = &v8;
  QP::Lexer::enumerateEntityLexemes(v2, v7);
  memset(v6, 0, sizeof(v6));
  if (v9[6] != v9[5] && QP::Parser::validate(this, v9 + 5, v6, 1))
  {
    v5[0] = 0;
    v5[1] = 0;
    v3 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 4) + 464) - *(*(this + 4) + 456)) >> 3);
    v4 = (v9[6] - v9[5]) >> 4;
    std::allocate_shared[abi:ne200100]<QP::Parse,std::allocator<QP::Parse>,nlp::CFScopedPtr<__CFString const*> &,unsigned long,long,std::vector<std::shared_ptr<QP::ParseAttribute>> &,decltype(nullptr),BOOL,0>();
  }

  v5[0] = v6;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v5);
  _Block_object_dispose(&v8, 8);
  v6[0] = v13;
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](v6);
}

void sub_1C65D387C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, std::__shared_weak_count *);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  va_copy(v8, va1);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va);
  _Block_object_dispose((v6 - 88), 8);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void ___ZN2QP6Parser15addEntitiyParseEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  v3 = *(*a2 + 72);
  v4 = 0;
  v2 = 0;
  std::allocate_shared[abi:ne200100]<QP::ParseAttribute,std::allocator<QP::ParseAttribute>,CFRange,CFRange&,int,int,0>();
}

void sub_1C65D39D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void QP::Parser::addEmptyParse(QP::Parser *this)
{
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  v1 = 0;
  v2 = 0;
  v7 = 0;
  std::allocate_shared[abi:ne200100]<QP::Parse,std::allocator<QP::Parse>,nlp::CFScopedPtr<__CFString const*> &,int,int,std::vector<std::shared_ptr<QP::ParseAttribute>>,decltype(nullptr),0>();
}

void sub_1C65D3A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void QP::Parser::addTokenCompletions(QP::Parser *this)
{
  v2 = *(this + 9);
  if (v2 && CFStringGetLength(v2))
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(this + 9));
    v7[5] = MutableCopy;
    v4 = *(this + 2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZN2QP6Parser19addTokenCompletionsEv_block_invoke;
    v7[3] = &__block_descriptor_tmp_16;
    v7[4] = this;
    QP::ParserGrammar::tokenCompletions(v4, MutableCopy, v7);
    v5 = *(this + 2);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2QP6Parser19addTokenCompletionsEv_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_18;
    v6[4] = this;
    QP::ParserGrammar::fallbackDateCompletions(v5, MutableCopy, v6);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

void sub_1C65D3C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C65D3D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void QP::Parser::parse(QP::Parser *this, int a2, BOOL a3, int a4, int a5, const __CFDictionary *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  QP::Parser::clear(this);
  QP::Parser::retainCurrentString(this);
  if (*(*this + 56) != 1)
  {
    if (qpparserLogger(void)::token != -1)
    {
      QP::Parser::parse();
    }

    v15 = qpparserLogger(void)::log;
    if (os_log_type_enabled(qpparserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*this + 48);
      v17 = *(*this + 112);
      *v19 = 134218242;
      *&v19[4] = v16;
      *&v19[12] = 2112;
      *&v19[14] = v17;
      _os_log_impl(&dword_1C6584000, v15, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] nlp parsing disabled for locale=%@", v19, 0x16u);
    }

    QP::Parser::addEmptyParse(this);
  }

  QP::Parser::parseLexer(this);
  if (a2)
  {
    if (qpparserLogger(void)::token != -1)
    {
      QP::Parser::parse();
    }

    v11 = qpparserLogger(void)::log;
    if (os_log_type_enabled(qpparserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*this + 48);
      *v19 = 134217984;
      *&v19[4] = v12;
      _os_log_impl(&dword_1C6584000, v11, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] Using u2parser", v19, 0xCu);
    }

    QP::Parser::addU2Parse(this, a6);
  }

  QP::Parser::addAndSortParse(this);
  if (a5)
  {
    v13 = *(this + 2);
    v14 = *(this + 9);
    *v19 = MEMORY[0x1E69E9820];
    *&v19[8] = 0x40000000;
    *&v19[16] = ___ZN2QP6Parser14addCompletionsEv_block_invoke;
    v20 = &__block_descriptor_tmp_9_0;
    v21 = this;
    QP::ParserGrammar::completions(v13, v14, v19);
  }

  if (a4)
  {
    QP::Parser::addEntitiyParse(this);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void QP::Parser::clear(QP::Parser *this)
{
  QP::GraphStructureStack::clear(*(this + 8));
  nlp::CFScopedPtr<__CFString const*>::reset(this + 9, 0);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  nlp::CFScopedPtr<__CFArray *>::reset(this + 10, Mutable);
  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 11);

  std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::clear[abi:ne200100](this + 14);
}

void QP::Parser::enumerateParses(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v2 = *(a1 + 88);
  for (i = *(a1 + 96); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    v6 = *v2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(a2 + 16))(a2, &v6, &v8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      break;
    }
  }
}

void sub_1C65D4074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

CFIndex QP::Parser::enumerateCompletions(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  result = CFArrayGetCount(*(a1 + 80));
  v5 = result - 1;
  if (result >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v6);
      result = (*(a2 + 16))(a2, ValueAtIndex, &v9);
      if (v9)
      {
        break;
      }
    }

    while (v5 != v6++);
  }

  return result;
}

void QP::Parser::enumerateTokenCompletions(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v2 = *(a1 + 112);
  for (i = *(a1 + 120); v2 != i; v2 += 2)
  {
    v5 = v2[1];
    v6 = *v2;
    v7 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(a2 + 16))(a2, &v6, &v8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v8)
    {
      break;
    }
  }
}

void sub_1C65D41B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void QP::Parser::preheat(QP::Parser *this)
{
  if (*(*this + 63) == 1)
  {
    v1 = *(this + 6);
    if (v1)
    {
      QP::U2Parser::preheat(v1);
    }
  }
}

void QP::Parser::cooldown(QP::Parser *this)
{
  if (*(*this + 63) == 1)
  {
    v1 = *(this + 6);
    if (v1)
    {
      QP::U2Parser::cooldown(v1);
    }
  }
}

uint64_t QP::Parser::hasResourcesLoaded(QP::Parser *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2) && *(this + 4) && (v2 = *(this + 8)) != 0 && *v2 != 0;
  if (qpparserLogger(void)::token != -1)
  {
    QP::Parser::parse();
  }

  v4 = qpparserLogger(void)::log;
  if (os_log_type_enabled(qpparserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*this + 48);
    v6 = *(this + 2);
    if (v6)
    {
      v6 = *(this + 4);
      if (v6)
      {
        v6 = *(this + 8);
        if (v6)
        {
          LODWORD(v6) = *v6 != 0;
        }
      }
    }

    v12 = 134218240;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_1C6584000, v4, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] hasResourcesLoaded hasResources=%d", &v12, 0x12u);
  }

  if (*(*this + 63) == 1 && *(this + 6))
  {
    if (qpparserLogger(void)::token != -1)
    {
      QP::Parser::hasResourcesLoaded();
    }

    v7 = qpparserLogger(void)::log;
    if (os_log_type_enabled(qpparserLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*this + 48);
      v9 = QP::U2Parser::resourcesLoaded(*(this + 6));
      v12 = 134218240;
      v13 = v8;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1C6584000, v7, OS_LOG_TYPE_DEFAULT, "[QPNLU][qid=%ld] hasResourcesLoaded u2ResourcesLoaded=%d", &v12, 0x12u);
    }

    if (v3)
    {
      v3 = QP::U2Parser::resourcesLoaded(*(this + 6));
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t std::vector<std::vector<CFRange>>::__init_with_size[abi:ne200100]<std::vector<CFRange>*,std::vector<CFRange>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<CFRange>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65D4444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<CFRange>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<CFRange>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, a2);
  }

  std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<CFRange>>,std::vector<CFRange>*,std::vector<CFRange>*,std::vector<CFRange>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<CFRange>::__init_with_size[abi:ne200100]<CFRange*,CFRange*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<CFRange>>,std::vector<CFRange>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<CFRange>>,std::vector<CFRange>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<CFRange>>,std::vector<CFRange>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<CFRange>>,std::vector<CFRange>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C65D4648(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*,false>(uint64_t *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 1);
  v95 = a2 - 1;
  v97 = (a2 - 3);
  v98 = (a2 - 2);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*a3)(v8, v9))
        {
          v88 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v88;
          v89 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v89;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v78 = (*a3)(v9 + 2, v9);
      v79 = (*a3)(v8, v9 + 2);
      if (v78)
      {
        v81 = v9 + 1;
        v80 = *v9;
        if (v79)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v93 = *(v9 + 1);
          v9[3] = v9[1];
          v81 = v9 + 3;
          v9[2] = v80;
          *v9 = v93;
          if (!(*a3)(v8, v9 + 2))
          {
            return;
          }

          v80 = v9[2];
          v9[2] = *(a2 - 2);
        }

        *(a2 - 2) = v80;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v90 = v9[2];
        v9[2] = *(a2 - 2);
        *(a2 - 2) = v90;
        v91 = v9[3];
        v95 = v9 + 3;
        v9[3] = *(a2 - 1);
        *(a2 - 1) = v91;
        if (!(*a3)(v9 + 2, v9))
        {
          return;
        }

        v92 = *v9;
        *v9 = v9[2];
        v9[2] = v92;
        v81 = v9 + 1;
      }

      v94 = *v81;
      *v81 = *v95;
      *v95 = v94;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a3);
      if ((*a3)(v8, v9 + 6))
      {
        v82 = v9[6];
        v9[6] = *(a2 - 2);
        *(a2 - 2) = v82;
        v83 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v83;
        if ((*a3)(v9 + 6, v9 + 4))
        {
          v84 = *(v9 + 2);
          *(v9 + 2) = *(v9 + 3);
          *(v9 + 3) = v84;
          if ((*a3)(v9 + 4, v9 + 2))
          {
            v85 = *(v9 + 1);
            *(v9 + 1) = *(v9 + 2);
            *(v9 + 2) = v85;
            if ((*a3)(v9 + 2, v9))
            {
              v86 = *v9;
              *v9 = *(v9 + 1);
              *(v9 + 1) = v86;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    v15 = *a3;
    v100 = v11;
    if (v12 >= 0x81)
    {
      v16 = v15(&v9[2 * (v12 >> 1)], v9);
      v17 = (*a3)(v8, v14);
      v96 = v13;
      if (v16)
      {
        v19 = a1 + 1;
        v18 = *a1;
        if (v17)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        v32 = a1[1];
        *a1 = *v14;
        v14[1] = v32;
        v19 = v14 + 1;
        *v14 = v18;
        if ((*a3)(v8, v14))
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
          v26 = a2 - 1;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = v14 + 1;
        v25 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, a1))
        {
          v27 = *a1;
          *a1 = *v14;
          v19 = a1 + 1;
          *v14 = v27;
          goto LABEL_28;
        }
      }

      v34 = v14 - 2;
      v35 = (*a3)(v14 - 2, a1 + 2);
      v36 = (*a3)(v98, v14 - 2);
      if (v35)
      {
        v37 = a1[2];
        v38 = a1 + 3;
        if (v36)
        {
          a1[2] = *v98;
          *v98 = v37;
          v39 = a2 - 3;
          v40 = v96;
          goto LABEL_40;
        }

        v45 = *v38;
        *(a1 + 1) = *v34;
        *(v14 - 1) = v45;
        v38 = v14 - 1;
        *v34 = v37;
        v40 = v96;
        if ((*a3)(v98, v14 - 2))
        {
          v46 = *v34;
          *v34 = *v98;
          *v98 = v46;
          v39 = a2 - 3;
LABEL_40:
          v47 = *v38;
          *v38 = *v39;
          *v39 = v47;
        }
      }

      else
      {
        v40 = v96;
        if (v36)
        {
          v41 = *v34;
          *v34 = *(a2 - 4);
          *(a2 - 4) = v41;
          v39 = v14 - 1;
          v42 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v42;
          if ((*a3)(v14 - 2, a1 + 2))
          {
            v43 = a1[2];
            a1[2] = *v34;
            *v34 = v43;
            v38 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      v48 = v40 + 1;
      v49 = &a1[2 * v40 + 2];
      v50 = (*a3)(v49, a1 + 4);
      v51 = (*a3)(v97, v49);
      v52 = v8;
      if (v50)
      {
        v53 = a1[4];
        v54 = a1 + 5;
        if (v51)
        {
          v55 = a2 - 3;
          a1[4] = *v97;
          goto LABEL_49;
        }

        v60 = *v54;
        *(a1 + 2) = *v49;
        v49[1] = v60;
        v54 = v49 + 1;
        *v49 = v53;
        if ((*a3)(v97, v49))
        {
          v53 = *v49;
          v55 = a2 - 3;
          *v49 = *v97;
LABEL_49:
          *v55 = v53;
          v58 = a2 - 5;
LABEL_50:
          v61 = *v54;
          *v54 = *v58;
          *v58 = v61;
        }
      }

      else if (v51)
      {
        v56 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v56;
        v58 = v49 + 1;
        v57 = v49[1];
        v49[1] = *(a2 - 5);
        *(a2 - 5) = v57;
        if ((*a3)(v49, a1 + 4))
        {
          v59 = a1[4];
          a1[4] = *v49;
          *v49 = v59;
          v54 = a1 + 5;
          goto LABEL_50;
        }
      }

      v62 = (*a3)(v14, v14 - 2);
      v63 = (*a3)(v49, v14);
      if (v62)
      {
        v64 = *v34;
        v8 = v52;
        if (v63)
        {
          *v34 = *v49;
          *v49 = v64;
          v65 = v14 - 1;
          goto LABEL_59;
        }

        v68 = *v14;
        v14[1] = *(v14 - 1);
        *v14 = v64;
        *v34 = v68;
        if ((*a3)(v49, v14))
        {
          v69 = *v14;
          *v14 = *v49;
          *v49 = v69;
          v65 = v14 + 1;
LABEL_59:
          v70 = &a1[2 * v48];
          v71 = *v65;
          *v65 = v70[1];
          v70[1] = v71;
        }
      }

      else
      {
        v8 = v52;
        if (v63)
        {
          v66 = *v14;
          *v14 = *v49;
          *v49 = v66;
          if ((*a3)(v14, v14 - 2))
          {
            v67 = *v34;
            *v34 = *v14;
            v65 = v14 - 1;
            *v14 = v67;
            v48 = v96;
            goto LABEL_59;
          }
        }
      }

      v72 = *a1;
      *a1 = *v14;
      v23 = a1 + 1;
      *v14 = v72;
      v31 = v14 + 1;
LABEL_61:
      v73 = *v23;
      *v23 = *v31;
      *v31 = v73;
      goto LABEL_62;
    }

    v20 = v15(v9, &v9[2 * (v12 >> 1)]);
    v21 = (*a3)(v8, v9);
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v8;
LABEL_37:
        *v8 = v22;
        v31 = a2 - 1;
        goto LABEL_61;
      }

      v44 = v14[1];
      *v14 = *v9;
      v9[1] = v44;
      v23 = v9 + 1;
      *v9 = v22;
      if ((*a3)(v8, v9))
      {
        v22 = *v9;
        *v9 = *v8;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v28 = *v9;
      *v9 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v9, v14))
      {
        v30 = *v14;
        *v14 = *v9;
        *v9 = v30;
        v23 = v14 + 1;
        v31 = v9 + 1;
        goto LABEL_61;
      }
    }

LABEL_62:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 2, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::ParseAttribute> *,BOOL (*&)(std::shared_ptr<QP::ParseAttribute>&,std::shared_ptr<QP::ParseAttribute>&)>(a1, a2, a3);
      v75 = v100;
      goto LABEL_69;
    }

    v74 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::ParseAttribute> *,BOOL (*&)(std::shared_ptr<QP::ParseAttribute>&,std::shared_ptr<QP::ParseAttribute>&)>(a1, a2, a3);
    v75 = v100;
    if ((v76 & 1) == 0)
    {
      goto LABEL_67;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(a1, v74, a3);
    v9 = v74 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(v74 + 2, a2, a3))
    {
      a4 = -v100;
      a2 = v74;
      if (v77)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v100 + 1;
    if (!v77)
    {
LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*,false>(a1, v74, a3, -v100, a5 & 1);
      v9 = v74 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v75;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v8, a3);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          v18 = *v8;
          *v8 = 0;
          *(v8 + 8) = 0;
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            v12 = *(a1 + v10);
            *v11 = 0;
            *(v11 + 8) = 0;
            v13 = *(a1 + v10 + 24);
            *(v11 + 16) = v12;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (!v10)
            {
              break;
            }

            v14 = (*a3)(&v18, a1 + v10 - 16);
            v10 -= 16;
            if ((v14 & 1) == 0)
            {
              v15 = a1 + v10 + 16;
              goto LABEL_12;
            }
          }

          v15 = a1;
LABEL_12:
          v16 = v18;
          v18 = 0uLL;
          v17 = *(v15 + 8);
          *v15 = v16;
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (*(&v18 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
          }
        }

        v5 = (v8 + 16);
        v7 += 16;
      }

      while (v8 + 16 != a2);
    }
  }
}

void sub_1C65D50A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 1;
    if (a1 + 1 != a2)
    {
      v7 = a1 - 1;
      do
      {
        v8 = v4;
        v4 = v5;
        if ((*a3)(v5, v8))
        {
          v15 = *v4;
          *v4 = 0;
          *(v4 + 1) = 0;
          v9 = v7;
          do
          {
            v10 = v9[1];
            *(v9 + 2) = 0;
            *(v9 + 3) = 0;
            v11 = *(v9 + 5);
            v9[2] = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            v12 = (*a3)(&v15, v9--);
          }

          while ((v12 & 1) != 0);
          v13 = v15;
          v15 = 0uLL;
          v14 = *(v9 + 5);
          v9[2] = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (*(&v15 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
          }
        }

        v5 = v4 + 1;
        ++v7;
      }

      while (v4 + 1 != a2);
    }
  }
}

void sub_1C65D51A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::ParseAttribute> *,BOOL (*&)(std::shared_ptr<QP::ParseAttribute>&,std::shared_ptr<QP::ParseAttribute>&)>(__int128 *a1, void *a2, uint64_t (**a3)(__int128 *, void *))
{
  v4 = a2;
  v17 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  if ((*a3)(&v17, a2 - 2))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = v6[1];
    v6[1] = v4[1];
    v4[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  v11 = (v6 - 2);
  if (v6 - 2 != a1)
  {
    v12 = *v11;
    *v11 = 0;
    *(v6 - 1) = 0;
    v13 = *(a1 + 1);
    *a1 = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  v14 = v17;
  v17 = 0uLL;
  v15 = *(v6 - 1);
  *(v6 - 1) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }

  return v6;
}

void sub_1C65D5324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::ParseAttribute> *,BOOL (*&)(std::shared_ptr<QP::ParseAttribute>&,std::shared_ptr<QP::ParseAttribute>&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v19 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  do
  {
    v7 = (*a3)(&a1[++v6], &v19);
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v19));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      v12 = *(v9 + 1);
      *(v9 + 1) = *(v10 + 1);
      *(v10 + 1) = v12;
      do
      {
        ++v9;
      }

      while (((*a3)(v9, &v19) & 1) != 0);
      do
      {
        --v10;
      }

      while (!(*a3)(v10, &v19));
    }

    while (v9 < v10);
  }

  v13 = v9 - 1;
  if (v9 - 1 != a1)
  {
    v14 = *v13;
    *v13 = 0;
    *(v9 - 1) = 0;
    v15 = *(a1 + 1);
    *a1 = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v16 = v19;
  v19 = 0uLL;
  v17 = *(v9 - 1);
  *(v9 - 1) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  return v9 - 1;
}

void sub_1C65D54C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (*a3)(a1 + 2, a1);
      v15 = (*a3)(a2 - 2, a1 + 2);
      if (v14)
      {
        v17 = a1 + 1;
        v16 = *a1;
        if (v15)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v30 = *(a1 + 1);
          a1[3] = a1[1];
          v17 = a1 + 3;
          a1[2] = v16;
          *a1 = v30;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v16 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v16;
        v25 = a2 - 1;
      }

      else
      {
        if (!v15)
        {
          return 1;
        }

        v23 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v25 = a1 + 3;
        v24 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v24;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        v17 = a1 + 1;
      }

      v31 = *v17;
      *v17 = *v25;
      *v25 = v31;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)(a2 - 2, a1 + 6))
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v11 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v11;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v12 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v12;
              if ((*a3)(a1 + 2, a1))
              {
                v13 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 4;
  v19 = (*a3)(a1 + 2, a1);
  v20 = (*a3)(a1 + 4, a1 + 2);
  if (v19)
  {
    v22 = a1 + 1;
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[4];
    }

    else
    {
      v32 = *(a1 + 1);
      a1[3] = a1[1];
      v22 = a1 + 3;
      a1[2] = v21;
      *a1 = v32;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v21 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v21;
    v28 = a1 + 5;
    goto LABEL_34;
  }

  if (v20)
  {
    v27 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 2);
    *(a1 + 2) = v27;
    if ((*a3)(a1 + 2, a1))
    {
      v28 = a1 + 3;
      v29 = *a1;
      *a1 = a1[2];
      a1[2] = v29;
      v22 = a1 + 1;
LABEL_34:
      v33 = *v22;
      *v22 = *v28;
      *v28 = v33;
    }
  }

LABEL_35:
  v34 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ((*a3)(v34, v18))
    {
      v46 = *v34;
      *v34 = 0;
      v34[1] = 0;
      v37 = v35;
      while (1)
      {
        v38 = a1 + v37;
        v39 = *(a1 + v37 + 32);
        *(v38 + 4) = 0;
        *(v38 + 5) = 0;
        v40 = *(a1 + v37 + 56);
        *(v38 + 3) = v39;
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v37 == -32)
        {
          break;
        }

        v41 = (*a3)(&v46, (a1 + v37 + 16));
        v37 -= 16;
        if ((v41 & 1) == 0)
        {
          v42 = a1 + v37 + 48;
          goto LABEL_45;
        }
      }

      v42 = a1;
LABEL_45:
      v43 = v46;
      v46 = 0uLL;
      v44 = *(v42 + 8);
      *v42 = v43;
      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (*(&v46 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
      }

      if (++v36 == 8)
      {
        return v34 + 2 == a2;
      }
    }

    v18 = v34;
    v35 += 16;
    v34 += 2;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

void sub_1C65D5900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int (**a4)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(uint64_t a1, unsigned int (**a2)(__int128 *, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 1)))
      {
        ++v12;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v20 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        do
        {
          v14 = v12;
          v15 = *v12;
          *v12 = 0;
          *(v12 + 1) = 0;
          v16 = *(v5 + 1);
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)((a1 + 16 * v17), (v12 + 1)))
          {
            ++v12;
          }

          else
          {
            v11 = v17;
          }

          v5 = v14;
        }

        while (!(*a2)(v12, &v20));
        v18 = v20;
        v20 = 0uLL;
        v19 = *(v14 + 1);
        *v14 = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (*(&v20 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
        }
      }
    }
  }
}

void sub_1C65D5BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*>(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = *(v9 + 1);
      *v10 = v8;
      *(v10 + 1) = v7;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = *(v9 + 1);
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 1);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_1C65D5CB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::ParseAttribute> &,std::shared_ptr<QP::ParseAttribute> &),std::shared_ptr<QP::ParseAttribute>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8, (a2 - 16)))
    {
      v15 = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v12 = *(v9 + 1);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0uLL;
      v14 = *(v10 + 1);
      *v10 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (*(&v15 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
        }
      }
    }
  }
}

void sub_1C65D5DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__emplace_back_slow_path<std::vector<std::shared_ptr<QP::ParseAttribute>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::erase(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 3;
        v10 = v7;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v10);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *std::__shared_ptr_emplace<QP::ParseAttribute>::__shared_ptr_emplace[abi:ne200100]<CFRange &,CFRange &,unsigned short &,unsigned short &,std::allocator<QP::ParseAttribute>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int16 *a4, __int16 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F45E8950;
  QP::ParseAttribute::ParseAttribute((a1 + 3), *a2, a2[1], *a3, a3[1], *a4, *a5, 0);
  return a1;
}

uint64_t std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__emplace_back_slow_path<std::vector<std::shared_ptr<QP::ParseAttribute>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C65D6164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vdeallocate(a4);
      *a4 = *v5;
      a4[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<std::shared_ptr<QP::ParseAttribute>>*>,std::__wrap_iter<std::vector<std::shared_ptr<QP::ParseAttribute>>*>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__move_range(a1, a2, a1[1], &a2[3 * a5]);
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::shared_ptr<QP::ParseAttribute>>>,std::vector<std::shared_ptr<QP::ParseAttribute>>*,std::vector<std::shared_ptr<QP::ParseAttribute>>*,std::vector<std::shared_ptr<QP::ParseAttribute>>*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *>(&v27, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v30 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<CFRange>>>(a1, v15);
    }

    v27 = 0;
    v28 = 8 * (v13 >> 3);
    v29 = v28;
    std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<std::shared_ptr<QP::ParseAttribute>>*>>(&v27, a3, a5);
    v19 = v28;
    memcpy(v29, v5, a1[1] - v5);
    v20 = *a1;
    v21 = v28;
    *&v29 = v29 + a1[1] - v5;
    a1[1] = v5;
    v22 = v5 - v20;
    v23 = (v21 - (v5 - v20));
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::~__split_buffer(&v27);
    return v19;
  }

  return v5;
}

void *std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      v9 += 3;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *>(&v11, a2, v7, v6);
}

uint64_t std::__split_buffer<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__construct_at_end_with_size<std::__wrap_iter<std::vector<std::shared_ptr<QP::ParseAttribute>>*>>(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a3)
  {
    v6 = &v4[3 * a3];
    v7 = 24 * a3;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
      v4 += 3;
      a2 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::shared_ptr<QP::ParseAttribute>>>,std::vector<std::shared_ptr<QP::ParseAttribute>>*,std::vector<std::shared_ptr<QP::ParseAttribute>>*,std::vector<std::shared_ptr<QP::ParseAttribute>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::shared_ptr<QP::ParseAttribute>>::__init_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::shared_ptr<QP::ParseAttribute>>>,std::vector<std::shared_ptr<QP::ParseAttribute>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::shared_ptr<QP::ParseAttribute>>>,std::vector<std::shared_ptr<QP::ParseAttribute>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::shared_ptr<QP::ParseAttribute>>>,std::vector<std::shared_ptr<QP::ParseAttribute>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::shared_ptr<QP::ParseAttribute>>>,std::vector<std::shared_ptr<QP::ParseAttribute>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 24);
    v7 = a3;
    do
    {
      std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__vdeallocate(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *v6 = v8;
      v6[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v6 -= 3;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t **std::__copy_impl::operator()[abi:ne200100]<std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *,std::vector<std::shared_ptr<QP::ParseAttribute>> *>(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::shared_ptr<QP::ParseAttribute>>::__assign_with_size[abi:ne200100]<std::shared_ptr<QP::ParseAttribute>*,std::shared_ptr<QP::ParseAttribute>*>(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::vector<std::shared_ptr<QP::ParseAttribute>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *std::vector<std::shared_ptr<QP::Parse>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<QP::Parse>*>,std::__wrap_iter<std::shared_ptr<QP::Parse>*>>(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v17 = v10 - a2;
      v18 = (v10 - a2) >> 4;
      if (v18 >= a5)
      {
        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v19 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::Parse>>,std::shared_ptr<QP::Parse>*,std::shared_ptr<QP::Parse>*,std::shared_ptr<QP::Parse>*>(a1, (a3 + v17), a4, a1[1]);
        if (v18 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<QP::GraphStructureStack::Node>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v19 = (v7 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *,std::shared_ptr<QP::GraphStructureStack::Node> *>(v31, v7, v19, v5);
      return v5;
    }

    v11 = *a1;
    v31[0] = 0;
    v12 = a5 + ((v10 - v11) >> 4);
    if (v12 >> 60)
    {
      std::vector<QP::GeoLocation>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    v15 = v14 >> 3;
    if (v14 >> 3 <= v12)
    {
      v15 = v12;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>>(a1, v16);
    }

    v20 = 16 * (v13 >> 4);
    v32 = 0;
    v21 = (v20 + 16 * a5);
    v22 = v20;
    do
    {
      *v22 = *v7;
      v23 = v7[1];
      *(v22 + 1) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v22 += 16;
      v7 += 2;
    }

    while (v22 != v21);
    memcpy(v21, v5, a1[1] - v5);
    v24 = *a1;
    v25 = &v21[a1[1] - v5];
    a1[1] = v5;
    v26 = v5 - v24;
    v27 = (v20 - (v5 - v24));
    memcpy(v27, v24, v26);
    v28 = *a1;
    *a1 = v27;
    a1[1] = v25;
    v29 = a1[2];
    a1[2] = v32;
    v31[2] = v28;
    v32 = v29;
    v31[0] = v28;
    v31[1] = v28;
    std::__split_buffer<std::shared_ptr<QP::GraphStructureStack::Node>>::~__split_buffer(v31);
    return v20;
  }

  return v5;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<QP::Parse>>,std::shared_ptr<QP::Parse>*,std::shared_ptr<QP::Parse>*,std::shared_ptr<QP::Parse>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::Parse>>,std::shared_ptr<QP::Parse>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::Parse>>,std::shared_ptr<QP::Parse>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<QP::GraphStructureStack::Node>>,std::shared_ptr<QP::GraphStructureStack::Node>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*,false>(uint64_t *a1, __int128 *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 1);
  v95 = a2 - 1;
  v97 = (a2 - 3);
  v98 = (a2 - 2);
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if ((*a3)(v8, v9))
        {
          v88 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v88;
          v89 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v89;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v78 = (*a3)(v9 + 2, v9);
      v79 = (*a3)(v8, v9 + 2);
      if (v78)
      {
        v81 = v9 + 1;
        v80 = *v9;
        if (v79)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v93 = *(v9 + 1);
          v9[3] = v9[1];
          v81 = v9 + 3;
          v9[2] = v80;
          *v9 = v93;
          if (!(*a3)(v8, v9 + 2))
          {
            return;
          }

          v80 = v9[2];
          v9[2] = *(a2 - 2);
        }

        *(a2 - 2) = v80;
      }

      else
      {
        if (!v79)
        {
          return;
        }

        v90 = v9[2];
        v9[2] = *(a2 - 2);
        *(a2 - 2) = v90;
        v91 = v9[3];
        v95 = v9 + 3;
        v9[3] = *(a2 - 1);
        *(a2 - 1) = v91;
        if (!(*a3)(v9 + 2, v9))
        {
          return;
        }

        v92 = *v9;
        *v9 = v9[2];
        v9[2] = v92;
        v81 = v9 + 1;
      }

      v94 = *v81;
      *v81 = *v95;
      *v95 = v94;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a3);
      if ((*a3)(v8, v9 + 6))
      {
        v82 = v9[6];
        v9[6] = *(a2 - 2);
        *(a2 - 2) = v82;
        v83 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v83;
        if ((*a3)(v9 + 6, v9 + 4))
        {
          v84 = *(v9 + 2);
          *(v9 + 2) = *(v9 + 3);
          *(v9 + 3) = v84;
          if ((*a3)(v9 + 4, v9 + 2))
          {
            v85 = *(v9 + 1);
            *(v9 + 1) = *(v9 + 2);
            *(v9 + 2) = v85;
            if ((*a3)(v9 + 2, v9))
            {
              v86 = *v9;
              *v9 = *(v9 + 1);
              *(v9 + 1) = v86;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*,std::shared_ptr<QP::Parse>*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    v15 = *a3;
    v100 = v11;
    if (v12 >= 0x81)
    {
      v16 = v15(&v9[2 * (v12 >> 1)], v9);
      v17 = (*a3)(v8, v14);
      v96 = v13;
      if (v16)
      {
        v19 = a1 + 1;
        v18 = *a1;
        if (v17)
        {
          *a1 = *v8;
          goto LABEL_27;
        }

        v32 = a1[1];
        *a1 = *v14;
        v14[1] = v32;
        v19 = v14 + 1;
        *v14 = v18;
        if ((*a3)(v8, v14))
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_27:
          *v8 = v18;
          v26 = a2 - 1;
LABEL_28:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = v14 + 1;
        v25 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, a1))
        {
          v27 = *a1;
          *a1 = *v14;
          v19 = a1 + 1;
          *v14 = v27;
          goto LABEL_28;
        }
      }

      v34 = v14 - 2;
      v35 = (*a3)(v14 - 2, a1 + 2);
      v36 = (*a3)(v98, v14 - 2);
      if (v35)
      {
        v37 = a1[2];
        v38 = a1 + 3;
        if (v36)
        {
          a1[2] = *v98;
          *v98 = v37;
          v39 = a2 - 3;
          v40 = v96;
          goto LABEL_40;
        }

        v45 = *v38;
        *(a1 + 1) = *v34;
        *(v14 - 1) = v45;
        v38 = v14 - 1;
        *v34 = v37;
        v40 = v96;
        if ((*a3)(v98, v14 - 2))
        {
          v46 = *v34;
          *v34 = *v98;
          *v98 = v46;
          v39 = a2 - 3;
LABEL_40:
          v47 = *v38;
          *v38 = *v39;
          *v39 = v47;
        }
      }

      else
      {
        v40 = v96;
        if (v36)
        {
          v41 = *v34;
          *v34 = *(a2 - 4);
          *(a2 - 4) = v41;
          v39 = v14 - 1;
          v42 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v42;
          if ((*a3)(v14 - 2, a1 + 2))
          {
            v43 = a1[2];
            a1[2] = *v34;
            *v34 = v43;
            v38 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      v48 = v40 + 1;
      v49 = &a1[2 * v40 + 2];
      v50 = (*a3)(v49, a1 + 4);
      v51 = (*a3)(v97, v49);
      v52 = v8;
      if (v50)
      {
        v53 = a1[4];
        v54 = a1 + 5;
        if (v51)
        {
          v55 = a2 - 3;
          a1[4] = *v97;
          goto LABEL_49;
        }

        v60 = *v54;
        *(a1 + 2) = *v49;
        v49[1] = v60;
        v54 = v49 + 1;
        *v49 = v53;
        if ((*a3)(v97, v49))
        {
          v53 = *v49;
          v55 = a2 - 3;
          *v49 = *v97;
LABEL_49:
          *v55 = v53;
          v58 = a2 - 5;
LABEL_50:
          v61 = *v54;
          *v54 = *v58;
          *v58 = v61;
        }
      }

      else if (v51)
      {
        v56 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v56;
        v58 = v49 + 1;
        v57 = v49[1];
        v49[1] = *(a2 - 5);
        *(a2 - 5) = v57;
        if ((*a3)(v49, a1 + 4))
        {
          v59 = a1[4];
          a1[4] = *v49;
          *v49 = v59;
          v54 = a1 + 5;
          goto LABEL_50;
        }
      }

      v62 = (*a3)(v14, v14 - 2);
      v63 = (*a3)(v49, v14);
      if (v62)
      {
        v64 = *v34;
        v8 = v52;
        if (v63)
        {
          *v34 = *v49;
          *v49 = v64;
          v65 = v14 - 1;
          goto LABEL_59;
        }

        v68 = *v14;
        v14[1] = *(v14 - 1);
        *v14 = v64;
        *v34 = v68;
        if ((*a3)(v49, v14))
        {
          v69 = *v14;
          *v14 = *v49;
          *v49 = v69;
          v65 = v14 + 1;
LABEL_59:
          v70 = &a1[2 * v48];
          v71 = *v65;
          *v65 = v70[1];
          v70[1] = v71;
        }
      }

      else
      {
        v8 = v52;
        if (v63)
        {
          v66 = *v14;
          *v14 = *v49;
          *v49 = v66;
          if ((*a3)(v14, v14 - 2))
          {
            v67 = *v34;
            *v34 = *v14;
            v65 = v14 - 1;
            *v14 = v67;
            v48 = v96;
            goto LABEL_59;
          }
        }
      }

      v72 = *a1;
      *a1 = *v14;
      v23 = a1 + 1;
      *v14 = v72;
      v31 = v14 + 1;
LABEL_61:
      v73 = *v23;
      *v23 = *v31;
      *v31 = v73;
      goto LABEL_62;
    }

    v20 = v15(v9, &v9[2 * (v12 >> 1)]);
    v21 = (*a3)(v8, v9);
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v8;
LABEL_37:
        *v8 = v22;
        v31 = a2 - 1;
        goto LABEL_61;
      }

      v44 = v14[1];
      *v14 = *v9;
      v9[1] = v44;
      v23 = v9 + 1;
      *v9 = v22;
      if ((*a3)(v8, v9))
      {
        v22 = *v9;
        *v9 = *v8;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v28 = *v9;
      *v9 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v9, v14))
      {
        v30 = *v14;
        *v14 = *v9;
        *v9 = v30;
        v23 = v14 + 1;
        v31 = v9 + 1;
        goto LABEL_61;
      }
    }

LABEL_62:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 2, a1) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Parse> *,BOOL (*&)(std::shared_ptr<QP::Parse>&,std::shared_ptr<QP::Parse>&)>(a1, a2, a3);
      v75 = v100;
      goto LABEL_69;
    }

    v74 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<QP::Parse> *,BOOL (*&)(std::shared_ptr<QP::Parse>&,std::shared_ptr<QP::Parse>&)>(a1, a2, a3);
    v75 = v100;
    if ((v76 & 1) == 0)
    {
      goto LABEL_67;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(a1, v74, a3);
    v9 = v74 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*>(v74 + 2, a2, a3))
    {
      a4 = -v100;
      a2 = v74;
      if (v77)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v100 + 1;
    if (!v77)
    {
LABEL_67:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::Parse> &,std::shared_ptr<QP::Parse> &),std::shared_ptr<QP::Parse>*,false>(a1, v74, a3, -v100, a5 & 1);
      v9 = v74 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v75;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<QP::GraphStructureStack::Node> &,std::shared_ptr<QP::GraphStructureStack::Node> &),std::shared_ptr<QP::GraphStructureStack::Node>*,0>(v9, v9 + 2, v9 + 4, v8, a3);
}