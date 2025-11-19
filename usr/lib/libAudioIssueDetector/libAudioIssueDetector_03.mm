uint64_t std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[4]>(uint64_t result)
{
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & result;
  }

  v3 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
      {
        v5 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[3]>(uint64_t result)
{
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & result;
  }

  v3 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
      {
        v5 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__emplace_unique_key_args<rtaid::ClientID,rtaid::ClientID,char const(&)[5]>(uint64_t result)
{
  if (!*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetClientIDMap(void)::gClientIDMap) - 1) & result;
  }

  v3 = *(rtaid::GetClientIDMap(void)::gClientIDMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
      {
        v5 %= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<rtaid::ClientID,std::string>,std::__unordered_map_hasher<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::hash<rtaid::ClientID>,std::equal_to<rtaid::ClientID>,true>,std::__unordered_map_equal<rtaid::ClientID,std::__hash_value_type<rtaid::ClientID,std::string>,std::equal_to<rtaid::ClientID>,std::hash<rtaid::ClientID>,true>,std::allocator<std::__hash_value_type<rtaid::ClientID,std::string>>>::__rehash<true>(size_t __n)
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

  v2 = *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1);
  if (prime > *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1))
  {
    v3 = vcvtps_u32_f32(qword_2A18A54F0 / *&dword_2A18A54F8);
    if (*(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) < 3uLL || (v4 = vcnt_s8(*(&rtaid::GetClientIDMap(void)::gClientIDMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = rtaid::GetClientIDMap(void)::gClientIDMap;
      *&rtaid::GetClientIDMap(void)::gClientIDMap = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&rtaid::GetClientIDMap(void)::gClientIDMap + 1) = 0;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<rtaid::ClientID,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
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

void ___ZN5rtaid19GetClientUseCaseMapEv_block_invoke()
{
  if (!*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) || !*rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap || (v0 = **rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) == 0)
  {
LABEL_14:
    operator new();
  }

  v1 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  while (1)
  {
    v2 = v0[1];
    if (!v2)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v2 < *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
      {
        goto LABEL_14;
      }

      v3 = v2 % *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
    }

    else
    {
      v3 = v2 & (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1);
    }

    if (v3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v0 = *v0;
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  if (*(v0 + 8))
  {
    goto LABEL_13;
  }

  if (!*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) || ((v4 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL) ? (v5 = *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) != 1) : (v5 = (BYTE8(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) & 1) == 0), (v6 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v5)) == 0))
  {
LABEL_29:
    operator new();
  }

  do
  {
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_29;
      }

      v7 = v6[1];
      if (v7 == 1)
      {
        break;
      }

      if (v4.u32[0] > 1uLL)
      {
        if (v7 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v7 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v7 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v7 != v5)
      {
        goto LABEL_29;
      }
    }
  }

  while (*(v6 + 8) != 1);
  v8 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 2;
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) <= 2uLL)
    {
      v9 = 2u % WORD4(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap);
    }
  }

  else
  {
    v9 = (DWORD2(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) - 1) & 2;
  }

  v10 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_45:
    operator new();
  }

  while (2)
  {
    v12 = v11[1];
    if (v12 != 2)
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v12 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v12 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (*(v11 + 8) != 2)
    {
LABEL_44:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v13 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = 4;
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) <= 4uLL)
    {
      v14 = 4u % WORD4(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap);
    }
  }

  else
  {
    v14 = (DWORD2(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) - 1) & 4;
  }

  v15 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_61:
    operator new();
  }

  while (2)
  {
    v17 = v16[1];
    if (v17 != 4)
    {
      if (v13.u32[0] > 1uLL)
      {
        if (v17 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v17 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v17 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v17 != v14)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (*(v16 + 8) != 4)
    {
LABEL_60:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  v18 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8));
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = 13;
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) <= 0xDuLL)
    {
      v19 = 0xDu % WORD4(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap);
    }
  }

  else
  {
    v19 = (DWORD2(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap) - 1) & 0xDLL;
  }

  v20 = *(rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8 * v19);
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_77:
    operator new();
  }

  while (2)
  {
    v22 = v21[1];
    if (v22 != 13)
    {
      if (v18.u32[0] > 1uLL)
      {
        if (v22 >= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
        {
          v22 %= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
        }
      }

      else
      {
        v22 &= *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) - 1;
      }

      if (v22 != v19)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    if (*(v21 + 8) != 13)
    {
LABEL_76:
      v21 = *v21;
      if (!v21)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }
}

void std::__hash_table<std::__hash_value_type<AudioServiceType,std::string>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::string>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::string>>>::__rehash<true>(size_t __n)
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

  v2 = *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1);
  if (prime > *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1))
  {
    v3 = vcvtps_u32_f32(qword_2A18A5048 / *&dword_2A18A5050);
    if (*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) < 3uLL || (v4 = vcnt_s8(*(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap;
      *&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&rtaid::GetClientUseCaseMap(void)::gClientUseCaseMap + 1) = 0;
    }
  }
}

void rtaid::GetReporterTypeInterestedMap(rtaid *this)
{
  {
    rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap = 0u;
    *&qword_2A18A5010 = 0u;
    dword_2A18A5020 = 1065353216;
  }

  if (rtaid::GetReporterTypeInterestedMap(void)::onceToken != -1)
  {

    dispatch_once(&rtaid::GetReporterTypeInterestedMap(void)::onceToken, &__block_literal_global_20);
  }
}

void sub_296C74120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_296C741C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,std::__unordered_map_hasher<AudioServiceType,std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,std::hash<AudioServiceType>,std::equal_to<AudioServiceType>,true>,std::__unordered_map_equal<AudioServiceType,std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,std::equal_to<AudioServiceType>,std::hash<AudioServiceType>,true>,std::allocator<std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>>>::__emplace_unique_key_args<AudioServiceType,AudioServiceType,std::vector<rtaid::AnalyzerType>>(uint64_t result)
{
  if (!*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) <= result)
    {
      v2 = result % WORD4(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap) - 1) & result;
  }

  v3 = *(rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1))
      {
        v5 %= *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetReporterTypeInterestedMap(void)::gReporterTypeInterestedMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 8) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AudioServiceType,std::vector<rtaid::AnalyzerType>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t ___ZN5rtaid22GetAnalyzerToStringMapEv_block_invoke()
{
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) || !*rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap || (v0 = **rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) == 0)
  {
LABEL_14:
    operator new();
  }

  v1 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  while (1)
  {
    v2 = v0[1];
    if (!v2)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v2 < *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
      {
        goto LABEL_14;
      }

      v3 = v2 % *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
    }

    else
    {
      v3 = v2 & (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1);
    }

    if (v3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v0 = *v0;
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  if (*(v0 + 4))
  {
    goto LABEL_13;
  }

  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) || ((v4 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] >= 2uLL) ? (v5 = *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) != 1) : (v5 = (BYTE8(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) & 1) == 0), (v6 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v5)) == 0))
  {
LABEL_29:
    operator new();
  }

  do
  {
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_29;
      }

      v7 = v6[1];
      if (v7 == 1)
      {
        break;
      }

      if (v4.u32[0] > 1uLL)
      {
        if (v7 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v7 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v7 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v7 != v5)
      {
        goto LABEL_29;
      }
    }
  }

  while (*(v6 + 4) != 1);
  std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType,char const(&)[22]>(2);
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_47;
  }

  v8 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 3;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= 3uLL)
    {
      v9 = 3u % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v9 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & 3;
  }

  v10 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_47:
    operator new();
  }

  while (2)
  {
    v12 = v11[1];
    if (v12 != 3)
    {
      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v12 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v12 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (*(v11 + 4) != 3)
    {
LABEL_46:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  result = std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType,char const(&)[22]>(4);
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_65;
  }

  v14 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 5;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= 5uLL)
    {
      v15 = 5u % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v15 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & 5;
  }

  v16 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_65:
    operator new();
  }

  while (2)
  {
    v18 = v17[1];
    if (v18 != 5)
    {
      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v18 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v18 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (*(v17 + 4) != 5)
    {
LABEL_64:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_83;
  }

  v19 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = 6;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= 6uLL)
    {
      v20 = 6u % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v20 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & 6;
  }

  v21 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_83:
    operator new();
  }

  while (2)
  {
    v23 = v22[1];
    if (v23 != 6)
    {
      if (v19.u32[0] > 1uLL)
      {
        if (v23 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
        {
          v23 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
        }
      }

      else
      {
        v23 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
      }

      if (v23 != v20)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (*(v22 + 4) != 6)
    {
LABEL_82:
      v22 = *v22;
      if (!v22)
      {
        goto LABEL_83;
      }

      continue;
    }

    return result;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType,char const(&)[22]>(uint64_t result)
{
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    goto LABEL_18;
  }

  v1 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= result)
    {
      v2 = result % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & result;
  }

  v3 = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v5 = v4[1];
    if (v5 == result)
    {
      break;
    }

    if (v1.u32[0] > 1uLL)
    {
      if (v5 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
      {
        v5 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
      }
    }

    else
    {
      v5 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
    }

    if (v5 != v2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::__rehash<true>(size_t __n)
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

  v2 = *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
  if (prime > *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    v3 = vcvtps_u32_f32(qword_2A18A5488 / *&dword_2A18A5490);
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) < 3uLL || (v4 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap;
      *&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) = 0;
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_1213()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
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
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::__shared_ptr_emplace<ADAM::BufferNodeMsg>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1DEEB08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C260F00);
}

uint64_t ADAM::BufferNodeDescriptorSPL::BufferNodeDescriptorSPL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  *a1 = &unk_2A1DEEA98;
  v5 = (a1 + 8);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v8.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(v5, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    *(a1 + 32) = a3;
    *(a1 + 40) = 1;
    operator delete(v6);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v8.__r_.__value_.__l.__data_;
    *(a1 + 24) = *(&v8.__r_.__value_.__l + 2);
    *(a1 + 32) = a3;
    *(a1 + 40) = 1;
  }

  *a1 = &unk_2A1DEEA78;
  *(a1 + 44) = 1;
  return a1;
}

void std::vector<ADAM::Metadata>::resize(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
  if (v5 > 0xF)
  {
    if (v4 == 1280)
    {
      return;
    }

    v11 = v2 + 1280;
  }

  else
  {
    v6 = 16 - v5;
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 4) < v6)
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v2) >> 4);
      v9 = 2 * v8;
      if (2 * v8 <= 0x10)
      {
        v9 = 16;
      }

      if (v8 >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0x333333333333333)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(a1[1], 80 * ((1200 - v4) / 0x50uLL) + 80);
    v11 = v3 + 80 * ((1200 - v4) / 0x50uLL) + 80;
  }

  a1[1] = v11;
}

void ADAM::BufferNodeDescriptorSPL::~BufferNodeDescriptorSPL(void **this)
{
  *this = &unk_2A1DEEA98;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x29C260F00);
}

{
  *this = &unk_2A1DEEA98;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::~BufferNodeSPL(uint64_t a1)
{
  *a1 = &unk_2A1DEE9D8;
  ADAM::ADAMRingBuffer<ADAM::SPLData>::~ADAMRingBuffer((a1 + 112));
  *(a1 + 64) = &unk_2A1DEEA98;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *a1 = &unk_2A1DEEA28;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C260F00);
}

void *ADAM::ADAMRingBuffer<ADAM::SPLData>::~ADAMRingBuffer(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::~BufferNodeSPL(uint64_t a1)
{
  *a1 = &unk_2A1DEE9D8;
  ADAM::ADAMRingBuffer<ADAM::SPLData>::~ADAMRingBuffer((a1 + 112));
  *(a1 + 64) = &unk_2A1DEEA98;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *a1 = &unk_2A1DEEA28;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

_DWORD *ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::pop(_DWORD *result)
{
  if (result[30])
  {
    result[29] = (result[29] + 1) % result[44];
    atomic_fetch_add(result + 30, 0xFFFFFFFF);
  }

  return result;
}

uint64_t ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::read(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 116);
  v4 = *(a1 + 176);
  v5 = (a1 + 120);
  if (!atomic_load((a1 + 120)))
  {
    return 1701670945;
  }

  result = 0;
  v9 = (v3 + 1) % v4;
  v10 = *(a1 + 152) + 20 * v3;
  v11 = *v10;
  *(a2 + 16) = *(v10 + 16);
  *a2 = v11;
  v12 = (*(a1 + 128) + 80 * v3);
  *a3 = *v12;
  v13 = v12[1];
  v14 = v12[2];
  v15 = v12[4];
  a3[3] = v12[3];
  a3[4] = v15;
  a3[1] = v13;
  a3[2] = v14;
  *(a1 + 116) = v9;
  atomic_fetch_add(v5, 0xFFFFFFFF);
  return result;
}

uint64_t ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  *buf = *a2;
  *&buf[16] = *(a2 + 16);
  v4 = *(a1 + 112);
  v5 = *(a1 + 176);
  if (*(a1 + 120) == v5)
  {
    ++ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::err_cnt;
    v6 = ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
    v7 = ++ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
    if (v6)
    {
LABEL_18:
      if (v7 > 0xBB7)
      {
        v7 = 0;
      }

      ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v7;
      result = 1718971425;
      goto LABEL_21;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v8 = *ADAM::ADAMLogScope(void)::scope;
      if (!v8)
      {
LABEL_17:
        v7 = ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        goto LABEL_18;
      }
    }

    else
    {
      v8 = MEMORY[0x29EDCA988];
      v21 = MEMORY[0x29EDCA988];
    }

    v22 = v8;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 16);
      CAX4CCString::CAX4CCString(v25, 0x66756C21u);
      *buf = 136316162;
      *&buf[4] = "ADAMBufferNodes.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 155;
      *&buf[18] = 2048;
      v27 = v23;
      v28 = 2080;
      v29 = v25;
      v30 = 1024;
      v31 = ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::err_cnt;
      _os_log_impl(&dword_296C34000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %llx: Failed to process data, err code: %s, failed count: %u", buf, 0x2Cu);
    }

    goto LABEL_17;
  }

  v9 = (v4 + 1) % v5;
  v10 = *(a1 + 152) + 20 * v4;
  *v10 = *buf;
  *(v10 + 16) = *&buf[16];
  v11 = (*(a1 + 128) + 80 * v4);
  v13 = a3[3];
  v12 = a3[4];
  v14 = a3[2];
  v11[1] = a3[1];
  v11[2] = v14;
  v11[3] = v13;
  v11[4] = v12;
  *v11 = *a3;
  *(a1 + 112) = v9;
  atomic_fetch_add((a1 + 120), 1u);
  v15 = *(a1 + 32) + 24 * *(a1 + 56);
  *(v15 + 8) = *(a1 + 16);
  *(v15 + 16) = 4;
  ADAM::AudioDataAnalysisManager::instance(a1);
  v16 = qword_2A18A51E0[0];
  atomic_store(qword_2A18A51E0[0], v15);
  v17 = v16;
  atomic_compare_exchange_strong(qword_2A18A51E0, &v17, v15);
  if (v17 != v16)
  {
    v18 = v17;
    do
    {
      atomic_store(v17, v15);
      atomic_compare_exchange_strong(qword_2A18A51E0, &v18, v15);
      v19 = v18 == v17;
      v17 = v18;
    }

    while (!v19);
  }

  caulk::semaphore::signal(&unk_2A18A51C8);
  result = 0;
  *(a1 + 56) = (*(a1 + 56) + 1) % *(a1 + 176);
LABEL_21:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

void ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::reset(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a1 + 120))
  {
    v2 = -50500;
    while (1)
    {
      v2 += 500;
      if (!v2)
      {
        break;
      }

      usleep(0x1F4u);
      if (!*(a1 + 120))
      {
        goto LABEL_5;
      }
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v3 = *ADAM::ADAMLogScope(void)::scope;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x29EDCA988];
      v4 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 16);
      v7 = 136315650;
      v8 = "ADAMBufferNodes.hpp";
      v9 = 1024;
      v10 = 119;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Session: %llx Failed to flush ring buffer, Timedout", &v7, 0x1Cu);
    }
  }

  else
  {
LABEL_5:
    *(a1 + 112) = 0;
    *(a1 + 116) = 0;
    *(a1 + 120) = 0;
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
}

void ADAM::BufferNodeSPL<ADAM::SPLData,(ADAM::EndPointBitMask)65,16u>::initialize(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 8) & 1) == 0)
  {
    ADAM::AudioDataAnalysisManager::instance(a1);
    ADAM::Dispatcher::addWriter(qword_2A18A5230, *(a1 + 16), *(a1 + 96));
    *(a1 + 8) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v2 = *ADAM::ADAMLogScope(void)::scope;
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
      v3 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 16);
      v6 = 136315650;
      v7 = "ADAMBufferNodes.hpp";
      v8 = 1024;
      v9 = 108;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session: %llx initialized", &v6, 0x1Cu);
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
}

void ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::~BufferNodeSPL(uint64_t a1)
{
  *a1 = &unk_2A1DEEAB8;
  ADAM::ADAMRingBuffer<ADAM::SPLData>::~ADAMRingBuffer((a1 + 112));
  *(a1 + 64) = &unk_2A1DEEA98;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *a1 = &unk_2A1DEEA28;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C260F00);
}

uint64_t ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::~BufferNodeSPL(uint64_t a1)
{
  *a1 = &unk_2A1DEEAB8;
  ADAM::ADAMRingBuffer<ADAM::SPLData>::~ADAMRingBuffer((a1 + 112));
  *(a1 + 64) = &unk_2A1DEEA98;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *a1 = &unk_2A1DEEA28;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

_DWORD *ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::pop(_DWORD *result)
{
  if (result[30])
  {
    result[29] = (result[29] + 1) % result[44];
    atomic_fetch_add(result + 30, 0xFFFFFFFF);
  }

  return result;
}

uint64_t ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::read(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *(a1 + 116);
  v4 = *(a1 + 176);
  v5 = (a1 + 120);
  if (!atomic_load((a1 + 120)))
  {
    return 1701670945;
  }

  result = 0;
  v9 = (v3 + 1) % v4;
  *a2 = *(*(a1 + 152) + 8 * v3);
  v10 = (*(a1 + 128) + 80 * v3);
  *a3 = *v10;
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[4];
  a3[3] = v10[3];
  a3[4] = v13;
  a3[1] = v11;
  a3[2] = v12;
  *(a1 + 116) = v9;
  atomic_fetch_add(v5, 0xFFFFFFFF);
  return result;
}

uint64_t ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(uint64_t a1, void *a2, _OWORD *a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 112);
  v5 = *(a1 + 176);
  if (*(a1 + 120) == v5)
  {
    ++ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::err_cnt;
    v6 = ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
    v7 = ++ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
    if (v6)
    {
LABEL_18:
      if (v7 > 0xBB7)
      {
        v7 = 0;
      }

      ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v7;
      result = 1718971425;
      goto LABEL_21;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v8 = *ADAM::ADAMLogScope(void)::scope;
      if (!v8)
      {
LABEL_17:
        v7 = ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
        goto LABEL_18;
      }
    }

    else
    {
      v8 = MEMORY[0x29EDCA988];
      v20 = MEMORY[0x29EDCA988];
    }

    v21 = v8;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 16);
      CAX4CCString::CAX4CCString(v24, 0x66756C21u);
      *buf = 136316162;
      v26 = "ADAMBufferNodes.hpp";
      v27 = 1024;
      v28 = 155;
      v29 = 2048;
      v30 = v22;
      v31 = 2080;
      v32 = v24;
      v33 = 1024;
      v34 = ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::process(ADAM::UnionDataPtr,ADAM::Metadata const&)::err_cnt;
      _os_log_impl(&dword_296C34000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %llx: Failed to process data, err code: %s, failed count: %u", buf, 0x2Cu);
    }

    goto LABEL_17;
  }

  v9 = (v4 + 1) % v5;
  *(*(a1 + 152) + 8 * v4) = *a2;
  v10 = (*(a1 + 128) + 80 * v4);
  *v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[4];
  v10[3] = a3[3];
  v10[4] = v13;
  v10[1] = v11;
  v10[2] = v12;
  *(a1 + 112) = v9;
  atomic_fetch_add((a1 + 120), 1u);
  v14 = *(a1 + 32) + 24 * *(a1 + 56);
  *(v14 + 8) = *(a1 + 16);
  *(v14 + 16) = 4;
  ADAM::AudioDataAnalysisManager::instance(a1);
  v15 = qword_2A18A51E0[0];
  atomic_store(qword_2A18A51E0[0], v14);
  v16 = v15;
  atomic_compare_exchange_strong(qword_2A18A51E0, &v16, v14);
  if (v16 != v15)
  {
    v17 = v16;
    do
    {
      atomic_store(v16, v14);
      atomic_compare_exchange_strong(qword_2A18A51E0, &v17, v14);
      v18 = v17 == v16;
      v16 = v17;
    }

    while (!v18);
  }

  caulk::semaphore::signal(&unk_2A18A51C8);
  result = 0;
  *(a1 + 56) = (*(a1 + 56) + 1) % *(a1 + 176);
LABEL_21:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::reset(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*(a1 + 120))
  {
    v2 = -50500;
    while (1)
    {
      v2 += 500;
      if (!v2)
      {
        break;
      }

      usleep(0x1F4u);
      if (!*(a1 + 120))
      {
        goto LABEL_5;
      }
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v3 = *ADAM::ADAMLogScope(void)::scope;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x29EDCA988];
      v4 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 16);
      v7 = 136315650;
      v8 = "ADAMBufferNodes.hpp";
      v9 = 1024;
      v10 = 119;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Session: %llx Failed to flush ring buffer, Timedout", &v7, 0x1Cu);
    }
  }

  else
  {
LABEL_5:
    *(a1 + 112) = 0;
    *(a1 + 116) = 0;
    *(a1 + 120) = 0;
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
}

void ADAM::BufferNodeSPL<ADAM::EnergyDBData,(ADAM::EndPointBitMask)256,16u>::initialize(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 8) & 1) == 0)
  {
    ADAM::AudioDataAnalysisManager::instance(a1);
    ADAM::Dispatcher::addWriter(qword_2A18A5230, *(a1 + 16), *(a1 + 96));
    *(a1 + 8) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v2 = *ADAM::ADAMLogScope(void)::scope;
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
      v3 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 16);
      v6 = 136315650;
      v7 = "ADAMBufferNodes.hpp";
      v8 = 1024;
      v9 = 108;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_296C34000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Session: %llx initialized", &v6, 0x1Cu);
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
}

double ADAM::Analyzer::MediaExposureBuffer::reset(ADAM::Analyzer::MediaExposureBuffer *this)
{
  *(this + 112) = 0;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  return result;
}

uint64_t ADAM::Analyzer::MediaExposureBuffer::analyze(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v61 = *MEMORY[0x29EDCA608];
  ADAM::AudioDataAnalysisManager::instance(a1);
  v7 = qword_2A18A5240;
  std::mutex::lock((qword_2A18A5240 + 24));
  v8 = *(qword_2A18A5240 + 16);
  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:1751213428];
  v10 = [v8 objectForKey:v9];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v47 objects:buf count:16];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = *v48;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v48 != v13)
      {
        objc_enumerationMutation(v11);
      }

      if ([*(*(&v47 + 1) + 8 * i) isActive:1751213428])
      {

        std::mutex::unlock((v7 + 24));
        if (a3)
        {
          if (*a3 < 0.0 || *a3 >= 130.0 || *(a3 + 16) < 0.0)
          {
            if (ADAM::ADAMLogScope(void)::once != -1)
            {
              dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
            }

            v18 = 1684108321;
            if (ADAM::ADAMLogScope(void)::scope)
            {
              v19 = *ADAM::ADAMLogScope(void)::scope;
              if (!v19)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v19 = MEMORY[0x29EDCA988];
              v23 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v24 = *a3;
              v25 = *(a3 + 16);
              *buf = 136315906;
              v52 = "MediaExposureBuffer.cpp";
              v53 = 1024;
              v54 = 108;
              v55 = 2048;
              v56 = v24;
              v57 = 2048;
              v58 = v25;
              _os_log_impl(&dword_296C34000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid HAE data { dBA: %.2f, duration: %.2f }", buf, 0x26u);
            }

            goto LABEL_58;
          }

          v26 = *(a1 + 120);
          *(a1 + 32) = *a4;
          v27 = a4[1];
          v28 = a4[2];
          v29 = a4[3];
          *(a1 + 96) = a4[4];
          *(a1 + 80) = v29;
          *(a1 + 64) = v28;
          *(a1 + 48) = v27;
          v45 = *(a3 + 16);
          v46 = v26;
          v30.f64[0] = __exp10(*a3 * 0.1) * v45;
          v30.f64[1] = v45;
          v31 = vaddq_f64(v30, v46);
          *(a1 + 120) = v31;
          *(a1 + 148) = *(a3 + 12);
          v32 = v31.f64[1];
          if (v31.f64[1] < *(a1 + 160))
          {
            v18 = 0;
            goto LABEL_58;
          }

          v34 = log(v31.f64[0] / v31.f64[1]);
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
          *&v34 = v34 * 10.0 / 2.30258509;
          *(a1 + 136) = LODWORD(v34);
          *&v34 = v32;
          *(a1 + 152) = LODWORD(v34);
          *(a1 + 112) = 1;
          v35 = ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
          v36 = ++ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
          if (v35)
          {
LABEL_64:
            v18 = 0;
            if (v36 > 0x1D)
            {
              v36 = 0;
            }

            ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v36;
            goto LABEL_58;
          }

          if (ADAM::ADAMLogScope(void)::once != -1)
          {
            dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
          }

          if (ADAM::ADAMLogScope(void)::scope)
          {
            v37 = *ADAM::ADAMLogScope(void)::scope;
            if (!v37)
            {
LABEL_63:
              v36 = ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
              goto LABEL_64;
            }
          }

          else
          {
            v37 = MEMORY[0x29EDCA988];
            v41 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v42 = *(a1 + 136);
            v43 = *(a1 + 152);
            v44 = *(a1 + 148);
            *buf = 136316162;
            v52 = "MediaExposureBuffer.cpp";
            v53 = 1024;
            v54 = 55;
            v55 = 2048;
            v56 = v42;
            v57 = 2048;
            v58 = v43;
            v59 = 2048;
            v60 = v44;
            _os_log_impl(&dword_296C34000, v37, OS_LOG_TYPE_INFO, "%25s:%-5d MediaExposureBuffer: accumulated dose = %.2f (dBA), duration %.2f (sec) volume gain: %.2f", buf, 0x30u);
          }

          goto LABEL_63;
        }

        v20 = ADAM::Analyzer::MediaExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
        v21 = ++ADAM::Analyzer::MediaExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
        if (v20)
        {
LABEL_55:
          v18 = 1684108321;
          if (v21 > 0xBB7)
          {
            v21 = 0;
          }

          ADAM::Analyzer::MediaExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt = v21;
          goto LABEL_58;
        }

        if (ADAM::ADAMLogScope(void)::once != -1)
        {
          dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
        }

        if (ADAM::ADAMLogScope(void)::scope)
        {
          v22 = *ADAM::ADAMLogScope(void)::scope;
          if (!v22)
          {
LABEL_54:
            v21 = ADAM::Analyzer::MediaExposureBuffer::isDataValid(ADAM::UnionDataPtr)const::errCnt;
            goto LABEL_55;
          }
        }

        else
        {
          v22 = MEMORY[0x29EDCA988];
          v38 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v52 = "MediaExposureBuffer.cpp";
          v53 = 1024;
          v54 = 98;
          _os_log_impl(&dword_296C34000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d HAE SPL data ptr is null? (sampled every 3k)", buf, 0x12u);
        }

        goto LABEL_54;
      }
    }

    v12 = [v11 countByEnumeratingWithState:&v47 objects:buf count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_9:

  std::mutex::unlock((v7 + 24));
  v15 = ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
  v16 = ++ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
  if (!v15)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v17 = *ADAM::ADAMLogScope(void)::scope;
      if (!v17)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v17 = MEMORY[0x29EDCA988];
      v33 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "MediaExposureBuffer.cpp";
      v53 = 1024;
      v54 = 34;
      _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d MediaExposureBuffer: no delegates for HAE...", buf, 0x12u);
    }

LABEL_40:
    v16 = ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt;
  }

  v18 = 0;
  if (v16 > 0xBB7)
  {
    v16 = 0;
  }

  ADAM::Analyzer::MediaExposureBuffer::analyze(unsigned long long,ADAM::UnionDataPtr,ADAM::Metadata const&)::errCnt = v16;
LABEL_58:
  v39 = *MEMORY[0x29EDCA608];
  return v18;
}

void ADAM::Analyzer::MediaExposureBuffer::flush(ADAM::Analyzer::MediaExposureBuffer *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(this + 16);
  if (v1 > 0.0)
  {
    v3 = log(*(this + 15) / v1);
    *(this + 15) = 0;
    *(this + 16) = 0;
    *&v3 = v3 * 10.0 / 2.30258509;
    *(this + 34) = LODWORD(v3);
    *&v3 = v1;
    *(this + 38) = LODWORD(v3);
    *(this + 112) = 1;
    *(this + 13) = 1;
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v4 = *ADAM::ADAMLogScope(void)::scope;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = MEMORY[0x29EDCA988];
      v5 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "MediaExposureBuffer.cpp";
      v9 = 1024;
      v10 = 78;
      _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d LoudnessAnalyzer needs to be flushed", &v7, 0x12u);
    }
  }

LABEL_11:
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t *std::unique_ptr<rtaid::ConfigurationManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 72);
    if (v4)
    {
      *(v2 + 80) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 48);
    if (v5)
    {
      *(v2 + 56) = v5;
      operator delete(v5);
    }

    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*(v2 + 32));
    std::__tree<ADAM::EndPointBitMask>::destroy(*(v2 + 8));

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::~__hash_table()
{
  v0 = qword_2A18A5378;
  if (qword_2A18A5378)
  {
    do
    {
      v1 = *v0;
      v2 = v0[4];
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v3 = qword_2A18A5368;
  qword_2A18A5368 = 0;
  if (v3)
  {

    operator delete(v3);
  }
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1DEEBD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1DEEBD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x29C260F00);
}

void *std::__function::__func<rtaid::Manager::Manager(std::unique_ptr<rtaid::DependencyInjection> &&)::$_0,std::allocator<std::unique_ptr<rtaid::DependencyInjection> &&>,void ()(rtaid::IssueDictionary const&)>::~__func(void *a1)
{
  *a1 = &unk_2A1DEEBD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<rtaid::DependencyInjection  *>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1[5];
    v1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[4];
    v1[4] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    v1[3] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x29C260F00);
  }

  return result;
}

void std::__shared_ptr_pointer<rtaid::DependencyInjection  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C260F00);
}

void rtaid::Manager::Manager(uint64_t *a1)
{
  v1 = *MEMORY[0x29EDCA608];
  SingletonManagerInstance(void)::sInstance.__m_.__sig = 850045863;
  *SingletonManagerInstance(void)::sInstance.__m_.__opaque = 0u;
  *&SingletonManagerInstance(void)::sInstance.__m_.__opaque[16] = 0u;
  *&SingletonManagerInstance(void)::sInstance.__m_.__opaque[32] = 0u;
  *&SingletonManagerInstance(void)::sInstance.__m_.__opaque[48] = 0u;
  *&qword_2A18A5370 = 0u;
  qword_2A18A5380 = 0;
  dword_2A18A5388 = 1065353216;
  qword_2A18A5390 = 0;
  dword_2A18A5398 = 0;
  *(&qword_2A18A53C8 + 6) = 0;
  *&qword_2A18A53C0 = 0u;
  *&qword_2A18A53B0 = 0u;
  *&qword_2A18A53A0 = 0u;
  xmmword_2A18A53D8 = xmmword_296C799C0;
  dword_2A18A53E8 = -1024458752;
  LOBYTE(qword_2A18A53F0) = 0;
  byte_2A18A53F8 = 0;
  qword_2A18A5400 = 0;
  qword_2A18A5408 = *a1;
  if (qword_2A18A5408)
  {
    operator new();
  }

  qword_2A18A5410 = 0;
  _os_assert_log();
  _os_crash();
  __break(1u);
  std::string::__throw_length_error[abi:ne200100]();
}

void sub_296C77D74(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = *(v1 + 13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 9);
  if (v6)
  {
    *(v1 + 10) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 7) = v7;
    operator delete(v7);
  }

  rtaid::Configuration::~Configuration(v1);
  MEMORY[0x29C260F00]();
  if (qword_2A18A5410)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](qword_2A18A5410);
  }

  v8 = std::unique_ptr<rtaid::ConfigurationManager>::reset[abi:ne200100](&qword_2A18A5400, 0);
  if (byte_2A18A53F8 == 1)
  {
    rtaid::ManagerCallStateReporter::~ManagerCallStateReporter(v8);
  }

  if (qword_2A18A53C8)
  {
    std::__shared_weak_count::__release_weak(qword_2A18A53C8);
  }

  if (qword_2A18A53B8)
  {
    std::__shared_weak_count::__release_weak(qword_2A18A53B8);
  }

  if (qword_2A18A53A8)
  {
    std::__shared_weak_count::__release_weak(qword_2A18A53A8);
  }

  std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::~__hash_table();
  std::mutex::~mutex(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<rtaid::Detector  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C260F00);
}

uint64_t *std::__hash_table<std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::__unordered_map_hasher<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::hash<rtaid::AnalyzerType>,std::equal_to<rtaid::AnalyzerType>,true>,std::__unordered_map_equal<rtaid::AnalyzerType,std::__hash_value_type<rtaid::AnalyzerType,std::string>,std::equal_to<rtaid::AnalyzerType>,std::hash<rtaid::AnalyzerType>,true>,std::allocator<std::__hash_value_type<rtaid::AnalyzerType,std::string>>>::find<rtaid::AnalyzerType>(unsigned int a1)
{
  if (!*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) <= a1)
    {
      v2 = a1 % DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap);
    }
  }

  else
  {
    v2 = (DWORD2(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap) - 1) & a1;
  }

  i = *(rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1))
          {
            v4 %= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1);
          }
        }

        else
        {
          v4 &= *(&rtaid::GetAnalyzerToStringMap(void)::gAnalyzerToStringMap + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2A1C6FB20](this, a2);
}

{
  return MEMORY[0x2A1C6FB30](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE10]();
}

{
  return MEMORY[0x2A1C6FE50]();
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